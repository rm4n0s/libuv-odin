# Reminder

```bash
dnf install libuv libuv-devel
whereis uv
whereis libuv.a


whereis uv.h
gcc -E /usr/include/uv.h > uv-preprocessed.h


runic rune.yml
```


delete 

```
struct (anonymous at /usr/include/netinet/tcp.h:97:5) :: ^^^rawptr
struct (anonymous at /usr/include/netinet/tcp.h:112:5) :: ^^^rawptr
union (anonymous at /usr/include/netinet/tcp.h:96:17) :: ^^^rawptr
```


delete all the functions that do not start with "uv_"


create an example that calls the library
when compiling the code it will return some errors
like these ones

```
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(149:12) Error: Undeclared name: __gnuc_va_list 
        va_list :: __gnuc_va_list 
                   ^~~~~~~~~~~~~^ 
 
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(1470:21) Error: Undeclared name: uv_getnameinfo_s 
        uv_getnameinfo_t :: uv_getnameinfo_s 
                            ^~~~~~~~~~~~~~~^ 
 
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(1501:18) Error: Undeclared name: uv_udp_send_s 
        uv_udp_send_t :: uv_udp_send_s 
                         ^~~~~~~~~~~~^ 
 
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(1634:15) Error: Undeclared name: address_union_anon_46 
        address:     address_union_anon_46, 
                     ^~~~~~~~~~~~~~~~~~~~^ 
 
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(1635:15) Error: Undeclared name: netmask_union_anon_47 
        netmask:     netmask_union_anon_47, 
                     ^~~~~~~~~~~~~~~~~~~~^ 
 
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(1892:15) Error: 'uv_udp_send_t' is not a type 
        udp_send:    uv_udp_send_t, 
                     ^~~~~~~~~~~~^ 
 
/home/rmanos/odin-projects/bindings/libuv-odin/prepocess/uv/uv.odin(1896:15) Error: 'uv_getnameinfo_t' is not a type 
        getnameinfo: uv_getnameinfo_t, 
                     ^~~~~~~~~~~~~~~^ 
```


These errors shows that runic didn't create all the types
The first type error " va_list :: __gnuc_va_list " is useless because we delete all the procedures without "uv_"

For the other types we have two options 
1) take one by one and recreate them by hand in uv.odin which is not much work to do
2) look for them in "uv-normal" folder, but check if the types correspond to the C header file.



```c
struct uv_udp_send_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
  uv_udp_t *handle;
  uv_udp_send_cb cb;
  struct uv__queue queue;
  struct sockaddr_storage addr;
  unsigned int nbufs;
  uv_buf_t *bufs;
  ssize_t status;
  uv_udp_send_cb send_cb;
  uv_buf_t bufsml[4];
};
```

```odin
uv_udp_send_s :: struct {
	data:     rawptr,
	type:     uv_req_type,
	reserved: [6]rawptr,
	handle:   ^uv_udp_t,
	cb:       uv_udp_send_cb,
	queue:    uv__queue,
	addr:     sockaddr_storage,
	nbufs:    u32,
	bufs:     [^]uv_buf_t,
	status:   i32,
	send_cb:  uv_udp_send_cb,
	bufsml:   [4]uv_buf_t,
}
```