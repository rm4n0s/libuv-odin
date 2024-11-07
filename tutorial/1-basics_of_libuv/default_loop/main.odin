package main

import uv "../../../"
import "core:fmt"

main :: proc() {
	loop := uv.default_loop()
	fmt.println("Default loop")
	uv.run(loop, .RUN_DEFAULT)
	uv.loop_close(loop)

}
