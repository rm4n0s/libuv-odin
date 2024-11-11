package main

import uv "../../../"
import "base:runtime"
import "core:fmt"
import "core:os"
import "core:strings"

loop: ^uv.uv_loop_t


run_command :: proc "c" (handle: ^uv.uv_fs_event_t, filename: cstring, events: i32, status: i32) {
	context = runtime.default_context()

	path: [1024]byte
	size: u64 = 1023
	uv.fs_event_getpath(handle, &path[0], &size)
	str := cstring(&path[0])
	fmt.println("change detected in ", str, events)
	if events == cast(i32)uv.uv_fs_event.RENAME {
		fmt.println("renamed")
	}
	if events == cast(i32)uv.uv_fs_event.CHANGE {
		fmt.println("changed")
	}
	fmt.println("filename: ", filename)
}


main :: proc() {
	if len(os.args) <= 1 {
		fmt.printf("Usage: %s <file1> [file2...]\n", os.args[0])
		return
	}

	loop = uv.default_loop()

	for i in 1 ..< len(os.args) {
		fmt.println("Adding watch on ", os.args[i])
		fs_event_req := new(uv.uv_fs_event_t)
		uv.fs_event_init(loop, fs_event_req)
		path := strings.clone_to_cstring(os.args[i])
		uv.fs_event_start(
			fs_event_req,
			run_command,
			path,
			cast(u32)uv.uv_fs_event_flags.FS_EVENT_RECURSIVE,
		)
	}
	uv.run(loop, .RUN_DEFAULT)
}
