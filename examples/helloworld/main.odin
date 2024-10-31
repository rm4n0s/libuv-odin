package main

import "../../uv"

// typedef void (*uv_read_cb)(uv_stream_t* stream,
//     ssize_t nread,
//     const uv_buf_t* buf);

// typedef void (*uv_udp_recv_cb)(uv_udp_t* handle,
//     ssize_t nread,
//     const uv_buf_t* buf,
//     const struct sockaddr* addr,
//     unsigned flags);

/* uv_fs_t is a subclass of uv_req_t. */
// struct uv_fs_s {
//     UV_REQ_FIELDS
//     uv_fs_type fs_type;
//     uv_loop_t* loop;
//     uv_fs_cb cb;
//     ssize_t result;
//     void* ptr;
//     const char* path;
//     uv_stat_t statbuf;  /* Stores the result of uv_fs_stat() and uv_fs_fstat(). */
//     UV_FS_PRIVATE_FIELDS
//   };


main :: proc() {

}

// #include <stdio.h>

// #include <stdlib.h>

// #include <uv.h>


// int main() {

//     uv_loop_t *loop = malloc(sizeof(uv_loop_t));

//     uv_loop_init(loop);


//     printf("Now quitting.\n");

//     uv_run(loop, UV_RUN_DEFAULT);


//     uv_loop_close(loop);

//     free(loop);

//     return 0;

// }
