package main

import uv "../../../"
import "core:fmt"

counter: i64 = 0

wait_for_a_while :: proc "c" (handle: ^uv.uv_idle_t) {
	counter += 1
	if counter >= 10e6 {
		uv.idle_stop(handle)
	}
}


main :: proc() {
	loop := uv.default_loop()
	idler: uv.uv_idle_t

	uv.idle_init(loop, &idler)
	uv.idle_start(&idler, wait_for_a_while)
	fmt.println("idling ...")
	uv.run(loop, .RUN_DEFAULT)

	uv.loop_close(loop)

}
