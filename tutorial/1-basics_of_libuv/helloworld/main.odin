package main


import uv "../../../"

import "core:fmt"

main :: proc() {
	loop := new(uv.uv_loop_t)

	uv.loop_init(loop)

	fmt.println("Now quiting")

	uv.run(loop, uv.uv_run_mode.RUN_DEFAULT)

	uv.loop_close(loop)

	free(loop)
}
