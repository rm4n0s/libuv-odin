package main

import "base:runtime"
import "core:c"
import "core:fmt"
import "core:os"
import "core:strings"
import "uv"


open_req: uv.uv_fs_t
read_req: uv.uv_fs_t
write_req: uv.uv_fs_t

iov: uv.uv_buf_t
buffer: [1024]c.char

on_read :: proc "c" (req: ^uv.uv_fs_t) {
	context = runtime.default_context()
	if req.result < 0 {
		fmt.println("Error read error: ", uv.strerror(cast(i32)req.result))
	} else if (req.result == 0) {
		close_req: uv.uv_fs_t
		uv.fs_close(uv.default_loop(), &close_req, cast(i32)open_req.result, nil)
	} else if (req.result > 0) {
		iov.len = cast(u64)req.result
		uv.fs_write(uv.default_loop(), &write_req, 1, &iov, 1, -1, on_write)
	}
}

on_write :: proc "c" (req: ^uv.uv_fs_t) {
	context = runtime.default_context()
	if req.result < 0 {
		fmt.println("Error write error: ", uv.strerror(cast(i32)req.result))
		//         fprintf(stderr, "Write error: %s\n", uv_strerror((int)req->result));
	} else {
		uv.fs_read(uv.default_loop(), &read_req, cast(i32)open_req.result, &iov, 1, -1, on_read)
		//         uv_fs_read(uv_default_loop(), &read_req, open_req.result, &iov, 1, -1, on_read);
	}
}

on_open :: proc "c" (req: ^uv.uv_fs_t) {
	context = runtime.default_context()
	// assert(req == open_req)
	if req.result >= 0 {
		iov = uv.buf_init(cstring(&buffer[0]), size_of(buffer))
		nerr := uv.fs_read(uv.default_loop(), &read_req, cast(i32)req.result, &iov, 1, -1, on_read)
		fmt.println("end fs read", nerr)
		if nerr < 0 {
			fmt.println("Error reading file: ", uv.strerror(nerr))
		}

	} else {
		fmt.println("Error openning file: ", uv.strerror(cast(i32)req.result))
	}
}


main :: proc() {
	my_pointer: ^int
	assert(my_pointer == nil)
	fmt.println(size_of(uv.uv_stat_t))
	nerr := uv.fs_open(
		uv.default_loop(),
		&open_req,
		strings.clone_to_cstring(os.args[1]),
		os.O_RDONLY,
		0,
		on_open,
	)
	if nerr < 0 {
		fmt.println("Error reading file: ", uv.strerror(nerr))
	}
	uv.run(uv.default_loop(), .RUN_DEFAULT)
	uv.fs_req_cleanup(&open_req)
	uv.fs_req_cleanup(&read_req)
	uv.fs_req_cleanup(&write_req)
}
