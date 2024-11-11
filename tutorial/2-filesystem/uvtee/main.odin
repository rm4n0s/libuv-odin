package main

import uv "../../../"
import "base:runtime"
import "core:os"
import "core:strings"

write_req_t :: struct {
	req: uv.uv_write_t,
	buf: uv.uv_buf_t,
}

loop: ^uv.uv_loop_t
stdin_pipe: uv.uv_pipe_t
stdout_pipe: uv.uv_pipe_t
file_pipe: uv.uv_pipe_t

free_write_req :: proc "c" (req: ^uv.uv_write_t) {
	context = runtime.default_context()
	wr := cast(^write_req_t)req
	free(wr.buf.base)
	free(wr)
}


on_stdout_write :: proc "c" (req: ^uv.uv_write_t, status: i32) {
	free_write_req(req)
}


on_file_write :: proc "c" (req: ^uv.uv_write_t, status: i32) {
	free_write_req(req)
}


alloc_buffer :: proc "c" (handle: ^uv.uv_handle_t, suggested_size: u64, buf: ^uv.uv_buf_t) {
	context = runtime.default_context()
	a := make([^]byte, suggested_size)
	buf^ = uv.buf_init(a, cast(u32)suggested_size)
}


write_data :: proc(dest: ^uv.uv_stream_t, size: i64, buf: uv.uv_buf_t, cb: uv.uv_write_cb) {
	req := new(write_req_t)
	b := make([^]byte, size)
	req.buf = uv.buf_init(b, cast(u32)size)
	copy(req.buf.base[:size], buf.base[:size])
	uv.write(cast(^uv.uv_write_t)req, cast(^uv.uv_stream_t)dest, &req.buf, 1, cb)
}


read_stdin :: proc "c" (stream: ^uv.uv_stream_t, nread: i64, buf: ^uv.uv_buf_t) {
	context = runtime.default_context()
	if nread < 0 {
		if nread == cast(i64)uv.uv_errno_t.EOF {
			uv.close(cast(^uv.uv_handle_t)&stdin_pipe, nil)
			uv.close(cast(^uv.uv_handle_t)&stdout_pipe, nil)
			uv.close(cast(^uv.uv_handle_t)&file_pipe, nil)
		}
	} else if nread > 0 {
		write_data(cast(^uv.uv_stream_t)&stdout_pipe, nread, buf^, on_stdout_write)
		write_data(cast(^uv.uv_stream_t)&file_pipe, nread, buf^, on_file_write)
	}

	if buf.base != nil {
		free(buf.base)
	}
}

main :: proc() {
	loop = uv.default_loop()
	uv.pipe_init(loop, &stdin_pipe, 0)
	uv.pipe_open(&stdin_pipe, 0)

	uv.pipe_init(loop, &stdout_pipe, 0)
	uv.pipe_open(&stdout_pipe, 1)


	file_req: uv.uv_fs_t
	fd := uv.fs_open(
		loop,
		&file_req,
		strings.clone_to_cstring(os.args[1]),
		os.O_CREATE | os.O_RDWR,
		755,
		nil,
	)
	uv.pipe_init(loop, &file_pipe, 0)
	uv.pipe_open(&file_pipe, fd)

	uv.read_start(cast(^uv.uv_stream_t)&stdin_pipe, alloc_buffer, read_stdin)

	uv.run(loop, .RUN_DEFAULT)
}
