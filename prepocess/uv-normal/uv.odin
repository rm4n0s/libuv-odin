package uv

EXTERN :: `__attribute__((visibility(\"default\")))`

uv__queue :: struct {
	next: ^uv__queue,
	prev: ^uv__queue,
}
uv_errno_t :: enum i32 {
	E2BIG           = -4093,
	EACCES          = -4092,
	EADDRINUSE      = -4091,
	EADDRNOTAVAIL   = -4090,
	EAFNOSUPPORT    = -4089,
	EAGAIN          = -4088,
	EAI_ADDRFAMILY  = -3000,
	EAI_AGAIN       = -3001,
	EAI_BADFLAGS    = -3002,
	EAI_BADHINTS    = -3013,
	EAI_CANCELED    = -3003,
	EAI_FAIL        = -3004,
	EAI_FAMILY      = -3005,
	EAI_MEMORY      = -3006,
	EAI_NODATA      = -3007,
	EAI_NONAME      = -3008,
	EAI_OVERFLOW    = -3009,
	EAI_PROTOCOL    = -3014,
	EAI_SERVICE     = -3010,
	EAI_SOCKTYPE    = -3011,
	EALREADY        = -4084,
	EBADF           = -4083,
	EBUSY           = -4082,
	ECANCELED       = -4081,
	ECHARSET        = -4080,
	ECONNABORTED    = -4079,
	ECONNREFUSED    = -4078,
	ECONNRESET      = -4077,
	EDESTADDRREQ    = -4076,
	EEXIST          = -4075,
	EFAULT          = -4074,
	EFBIG           = -4036,
	EHOSTUNREACH    = -4073,
	EINTR           = -4072,
	EINVAL          = -4071,
	EIO             = -4070,
	EISCONN         = -4069,
	EISDIR          = -4068,
	ELOOP           = -4067,
	EMFILE          = -4066,
	EMSGSIZE        = -4065,
	ENAMETOOLONG    = -4064,
	ENETDOWN        = -4063,
	ENETUNREACH     = -4062,
	ENFILE          = -4061,
	ENOBUFS         = -4060,
	ENODEV          = -4059,
	ENOENT          = -4058,
	ENOMEM          = -4057,
	ENONET          = -4056,
	ENOPROTOOPT     = -4035,
	ENOSPC          = -4055,
	ENOSYS          = -4054,
	ENOTCONN        = -4053,
	ENOTDIR         = -4052,
	ENOTEMPTY       = -4051,
	ENOTSOCK        = -4050,
	ENOTSUP         = -4049,
	EOVERFLOW       = -4026,
	EPERM           = -4048,
	EPIPE           = -4047,
	EPROTO          = -4046,
	EPROTONOSUPPORT = -4045,
	EPROTOTYPE      = -4044,
	ERANGE          = -4034,
	EROFS           = -4043,
	ESHUTDOWN       = -4042,
	ESPIPE          = -4041,
	ESRCH           = -4040,
	ETIMEDOUT       = -4039,
	ETXTBSY         = -4038,
	EXDEV           = -4037,
	UNKNOWN         = -4094,
	EOF             = -4095,
	ENXIO           = -4033,
	EMLINK          = -4032,
	EHOSTDOWN       = -4031,
	EREMOTEIO       = -4030,
	ENOTTY          = -4029,
	EFTYPE          = -4028,
	EILSEQ          = -4027,
	ESOCKTNOSUPPORT = -4025,
	ENODATA         = -4024,
	EUNATCH         = -4023,
	ERRNO_MAX       = -4096,
}
uv_handle_type :: enum u32 {
	UNKNOWN_HANDLE  = 0,
	ASYNC           = 1,
	CHECK           = 2,
	FS_EVENT        = 3,
	FS_POLL         = 4,
	HANDLE          = 5,
	IDLE            = 6,
	NAMED_PIPE      = 7,
	POLL            = 8,
	PREPARE         = 9,
	PROCESS         = 10,
	STREAM          = 11,
	TCP             = 12,
	TIMER           = 13,
	TTY             = 14,
	UDP             = 15,
	SIGNAL          = 16,
	FILE            = 17,
	HANDLE_TYPE_MAX = 18,
}
uv_req_type :: enum u32 {
	UNKNOWN_REQ  = 0,
	REQ          = 1,
	CONNECT      = 2,
	WRITE        = 3,
	SHUTDOWN     = 4,
	UDP_SEND     = 5,
	FS           = 6,
	WORK         = 7,
	GETADDRINFO  = 8,
	GETNAMEINFO  = 9,
	RANDOM       = 10,
	REQ_TYPE_MAX = 11,
}
uv_loop_t :: uv_loop_s
u_union_anon_0 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_handle_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_0,
	next_closing: ^uv_handle_t,
	flags:        u32,
}
uv_handle_t :: uv_handle_s
uv_dirent_type_t :: enum u32 {
	DIRENT_UNKNOWN = 0,
	DIRENT_FILE    = 1,
	DIRENT_DIR     = 2,
	DIRENT_LINK    = 3,
	DIRENT_FIFO    = 4,
	DIRENT_SOCKET  = 5,
	DIRENT_CHAR    = 6,
	DIRENT_BLOCK   = 7,
}
uv_dirent_s :: struct {
	name: cstring,
	type: uv_dirent_type_t,
}
uv_dirent_t :: uv_dirent_s
uv_dir_s :: struct {
	dirents:  [^]uv_dirent_t,
	nentries: u64,
	reserved: [4]rawptr,
	dir:      ^i32,
}
uv_dir_t :: uv_dir_s
uv_close_cb :: #type proc "c" (handle: ^uv_handle_t)
u_union_anon_1 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_buf_t :: struct {
	base: cstring,
	len:  u64,
}
uv_alloc_cb :: #type proc "c" (handle: ^uv_handle_t, suggested_size: u64, buf: ^uv_buf_t)
uv__io_cb :: ^^^rawptr
uv__io_s :: struct {
	cb:            uv__io_cb,
	pending_queue: uv__queue,
	watcher_queue: uv__queue,
	pevents:       u32,
	events:        u32,
	fd:            i32,
}
uv__io_t :: uv__io_s
uv_stream_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_1,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      i32,
	alloc_cb:              uv_alloc_cb,
	read_cb:               uv_read_cb,
	connect_req:           ^uv_connect_t,
	shutdown_req:          ^uv_shutdown_t,
	io_watcher:            uv__io_t,
	write_queue:           uv__queue,
	write_completed_queue: uv__queue,
	connection_cb:         uv_connection_cb,
	delayed_error:         i32,
	accepted_fd:           i32,
	queued_fds:            rawptr,
}
uv_stream_t :: uv_stream_s
u_union_anon_2 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_connect_t :: uv_connect_s
uv_shutdown_t :: uv_shutdown_s
uv_connection_cb :: #type proc "c" (server: ^uv_stream_t, status: i32)
uv_tcp_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_2,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      i32,
	alloc_cb:              uv_alloc_cb,
	read_cb:               uv_read_cb,
	connect_req:           ^uv_connect_t,
	shutdown_req:          ^uv_shutdown_t,
	io_watcher:            uv__io_t,
	write_queue:           uv__queue,
	write_completed_queue: uv__queue,
	connection_cb:         uv_connection_cb,
	delayed_error:         i32,
	accepted_fd:           i32,
	queued_fds:            rawptr,
}
uv_tcp_t :: uv_tcp_s
u_union_anon_3 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_udp_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_3,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	send_queue_size:       u64,
	send_queue_count:      u64,
	alloc_cb:              uv_alloc_cb,
	recv_cb:               uv_udp_recv_cb,
	io_watcher:            uv__io_t,
	write_queue:           uv__queue,
	write_completed_queue: uv__queue,
}
uv_udp_t :: uv_udp_s
u_union_anon_5 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_pipe_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_5,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      i32,
	alloc_cb:              uv_alloc_cb,
	read_cb:               uv_read_cb,
	connect_req:           ^uv_connect_t,
	shutdown_req:          ^uv_shutdown_t,
	io_watcher:            uv__io_t,
	write_queue:           uv__queue,
	write_completed_queue: uv__queue,
	connection_cb:         uv_connection_cb,
	delayed_error:         i32,
	accepted_fd:           i32,
	queued_fds:            rawptr,
	ipc:                   i32,
	pipe_fname:            cstring,
}
uv_pipe_t :: uv_pipe_s
u_union_anon_4 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
termios :: ^^^rawptr
uv_tty_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_4,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      i32,
	alloc_cb:              uv_alloc_cb,
	read_cb:               uv_read_cb,
	connect_req:           ^uv_connect_t,
	shutdown_req:          ^uv_shutdown_t,
	io_watcher:            uv__io_t,
	write_queue:           uv__queue,
	write_completed_queue: uv__queue,
	connection_cb:         uv_connection_cb,
	delayed_error:         i32,
	accepted_fd:           i32,
	queued_fds:            rawptr,
	orig_termios:          termios,
	mode:                  i32,
}
uv_tty_t :: uv_tty_s
u_union_anon_6 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_poll_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_6,
	next_closing: ^uv_handle_t,
	flags:        u32,
	poll_cb:      uv_poll_cb,
	io_watcher:   uv__io_t,
}
uv_poll_t :: uv_poll_s
u_union_anon_11 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
node_union_anon_12 :: struct #raw_union {
	heap:  [3]rawptr,
	queue: uv__queue,
}
uv_timer_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_11,
	next_closing: ^uv_handle_t,
	flags:        u32,
	timer_cb:     uv_timer_cb,
	node:         node_union_anon_12,
	timeout:      u64,
	repeat:       u64,
	start_id:     u64,
}
uv_timer_t :: uv_timer_s
u_union_anon_7 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_prepare_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_7,
	next_closing: ^uv_handle_t,
	flags:        u32,
	prepare_cb:   uv_prepare_cb,
	queue:        uv__queue,
}
uv_prepare_t :: uv_prepare_s
u_union_anon_8 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_check_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_8,
	next_closing: ^uv_handle_t,
	flags:        u32,
	check_cb:     uv_check_cb,
	queue:        uv__queue,
}
uv_check_t :: uv_check_s
u_union_anon_9 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_idle_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_9,
	next_closing: ^uv_handle_t,
	flags:        u32,
	idle_cb:      uv_idle_cb,
	queue:        uv__queue,
}
uv_idle_t :: uv_idle_s
u_union_anon_10 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_async_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_10,
	next_closing: ^uv_handle_t,
	flags:        u32,
	async_cb:     uv_async_cb,
	queue:        uv__queue,
	pending:      i32,
}
uv_async_t :: uv_async_s
u_union_anon_14 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_process_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_14,
	next_closing: ^uv_handle_t,
	flags:        u32,
	exit_cb:      uv_exit_cb,
	pid:          i32,
	queue:        uv__queue,
	status:       i32,
}
uv_process_t :: uv_process_s
u_union_anon_17 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_fs_event_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_17,
	next_closing: ^uv_handle_t,
	flags:        u32,
	path:         cstring,
	cb:           uv_fs_event_cb,
}
uv_fs_event_t :: uv_fs_event_s
u_union_anon_18 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_fs_poll_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_18,
	next_closing: ^uv_handle_t,
	flags:        u32,
	poll_ctx:     rawptr,
}
uv_fs_poll_t :: uv_fs_poll_s
u_union_anon_19 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_signal_s :: struct {
	data:               rawptr,
	loop:               ^uv_loop_t,
	type:               uv_handle_type,
	close_cb:           uv_close_cb,
	handle_queue:       uv__queue,
	u:                  u_union_anon_19,
	next_closing:       ^uv_handle_t,
	flags:              u32,
	signal_cb:          uv_signal_cb,
	signum:             i32,
	tree_entry:         tree_entry_struct_anon_20,
	caught_signals:     u32,
	dispatched_signals: u32,
}
uv_signal_t :: uv_signal_s
uv_req_s :: struct {
	data:     rawptr,
	type:     uv_req_type,
	reserved: [6]rawptr,
}
uv_req_t :: uv_req_s
uv__work :: ^^^rawptr
addrinfo :: ^^^rawptr
uv_getaddrinfo_s :: struct {
	data:       rawptr,
	type:       uv_req_type,
	reserved:   [6]rawptr,
	loop:       ^uv_loop_t,
	work_req:   uv__work,
	cb:         uv_getaddrinfo_cb,
	hints:      [^]addrinfo,
	hostname:   cstring,
	service:    cstring,
	addrinfo_m: ^addrinfo,
	retcode:    i32,
}
uv_getaddrinfo_t :: uv_getaddrinfo_s
sockaddr_storage :: ^^^rawptr
uv_getnameinfo_s :: struct {
	data:           rawptr,
	type:           uv_req_type,
	reserved:       [6]rawptr,
	loop:           ^uv_loop_t,
	work_req:       uv__work,
	getnameinfo_cb: uv_getnameinfo_cb,
	storage:        sockaddr_storage,
	flags:          i32,
	host:           [1025]i8,
	service:        [32]i8,
	retcode:        i32,
}
uv_getnameinfo_t :: uv_getnameinfo_s
uv_shutdown_s :: struct {
	data:     rawptr,
	type:     uv_req_type,
	reserved: [6]rawptr,
	handle:   ^uv_stream_t,
	cb:       uv_shutdown_cb,
}
uv_write_s :: struct {
	data:        rawptr,
	type:        uv_req_type,
	reserved:    [6]rawptr,
	cb:          uv_write_cb,
	send_handle: ^uv_stream_t,
	handle:      ^uv_stream_t,
	queue:       uv__queue,
	write_index: u32,
	bufs:        [^]uv_buf_t,
	nbufs:       u32,
	error:       i32,
	bufsml:      [4]uv_buf_t,
}
uv_write_t :: uv_write_s
uv_connect_s :: struct {
	data:     rawptr,
	type:     uv_req_type,
	reserved: [6]rawptr,
	cb:       uv_connect_cb,
	handle:   ^uv_stream_t,
	queue:    uv__queue,
}
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
uv_udp_send_t :: uv_udp_send_s
uv_fs_type :: enum i32 {
	FS_UNKNOWN   = -1,
	FS_CUSTOM    = 0,
	FS_OPEN      = 1,
	FS_CLOSE     = 2,
	FS_READ      = 3,
	FS_WRITE     = 4,
	FS_SENDFILE  = 5,
	FS_STAT      = 6,
	FS_LSTAT     = 7,
	FS_FSTAT     = 8,
	FS_FTRUNCATE = 9,
	FS_UTIME     = 10,
	FS_FUTIME    = 11,
	FS_ACCESS    = 12,
	FS_CHMOD     = 13,
	FS_FCHMOD    = 14,
	FS_FSYNC     = 15,
	FS_FDATASYNC = 16,
	FS_UNLINK    = 17,
	FS_RMDIR     = 18,
	FS_MKDIR     = 19,
	FS_MKDTEMP   = 20,
	FS_RENAME    = 21,
	FS_SCANDIR   = 22,
	FS_LINK      = 23,
	FS_SYMLINK   = 24,
	FS_READLINK  = 25,
	FS_CHOWN     = 26,
	FS_FCHOWN    = 27,
	FS_REALPATH  = 28,
	FS_COPYFILE  = 29,
	FS_LCHOWN    = 30,
	FS_OPENDIR   = 31,
	FS_READDIR   = 32,
	FS_CLOSEDIR  = 33,
	FS_STATFS    = 34,
	FS_MKSTEMP   = 35,
	FS_LUTIME    = 36,
}
uv_timespec_t :: struct {
	tv_sec:  i64,
	tv_nsec: i64,
}
uv_stat_t :: struct {
	st_dev:      u64,
	st_mode:     u64,
	st_nlink:    u64,
	st_uid:      u64,
	st_gid:      u64,
	st_rdev:     u64,
	st_ino:      u64,
	st_size:     u64,
	st_blksize:  u64,
	st_blocks:   u64,
	st_flags:    u64,
	st_gen:      u64,
	st_atim:     uv_timespec_t,
	st_mtim:     uv_timespec_t,
	st_ctim:     uv_timespec_t,
	st_birthtim: uv_timespec_t,
}
uv_file :: i32
uv_uid_t :: i32
uv_gid_t :: i32
uv_fs_t :: uv_fs_s
uv_work_s :: struct {
	data:          rawptr,
	type:          uv_req_type,
	reserved:      [6]rawptr,
	loop:          ^uv_loop_t,
	work_cb:       uv_work_cb,
	after_work_cb: uv_after_work_cb,
	work_req:      uv__work,
}
uv_work_t :: uv_work_s
uv_random_s :: struct {
	data:     rawptr,
	type:     uv_req_type,
	reserved: [6]rawptr,
	loop:     ^uv_loop_t,
	status:   i32,
	buf:      rawptr,
	buflen:   u64,
	cb:       uv_random_cb,
	work_req: uv__work,
}
uv_random_t :: uv_random_s
uv_env_item_s :: struct {
	name:  cstring,
	value: cstring,
}
uv_env_item_t :: uv_env_item_s
uv_cpu_times_s :: struct {
	user: u64,
	nice: u64,
	sys:  u64,
	idle: u64,
	irq:  u64,
}
uv_cpu_info_s :: struct {
	model:     cstring,
	speed:     i32,
	cpu_times: uv_cpu_times_s,
}
uv_cpu_info_t :: uv_cpu_info_s
sockaddr_in :: ^^^rawptr
sockaddr_in6 :: ^^^rawptr
address_union_anon_15 :: struct #raw_union {
	address4: sockaddr_in,
	address6: sockaddr_in6,
}
netmask_union_anon_16 :: struct #raw_union {
	netmask4: sockaddr_in,
	netmask6: sockaddr_in6,
}
uv_interface_address_s :: struct {
	name:        cstring,
	phys_addr:   [6]i8,
	is_internal: i32,
	address:     address_union_anon_15,
	netmask:     netmask_union_anon_16,
}
uv_interface_address_t :: uv_interface_address_s
uv_passwd_s :: struct {
	username: cstring,
	uid:      u64,
	gid:      u64,
	shell:    cstring,
	homedir:  cstring,
}
uv_passwd_t :: uv_passwd_s
uv_group_s :: struct {
	groupname: cstring,
	gid:       u64,
	members:   [^]cstring,
}
uv_group_t :: uv_group_s
uv_utsname_s :: struct {
	sysname: [256]i8,
	release: [256]i8,
	version: [256]i8,
	machine: [256]i8,
}
uv_utsname_t :: uv_utsname_s
uv_statfs_s :: struct {
	f_type:   u64,
	f_bsize:  u64,
	f_blocks: u64,
	f_bfree:  u64,
	f_bavail: u64,
	f_files:  u64,
	f_ffree:  u64,
	f_spare:  [4]u64,
}
uv_statfs_t :: uv_statfs_s
uv_metrics_s :: struct {
	loop_count:     u64,
	events:         u64,
	events_waiting: u64,
	reserved:       ^[13]^u64,
}
uv_metrics_t :: uv_metrics_s
uv_loop_option :: enum u32 {
	LOOP_BLOCK_SIGNAL        = 0,
	METRICS_IDLE_TIME        = 1,
	LOOP_USE_IO_URING_SQPOLL = 2,
}
uv_run_mode :: enum u32 {
	RUN_DEFAULT = 0,
	RUN_ONCE    = 1,
	RUN_NOWAIT  = 2,
}
uv_malloc_func :: #type proc "c" (size: u64) -> rawptr
uv_realloc_func :: #type proc "c" (ptr: rawptr, size: u64) -> rawptr
uv_calloc_func :: #type proc "c" (count: u64, size: u64) -> rawptr
uv_free_func :: #type proc "c" (ptr: rawptr)
uv_write_cb :: #type proc "c" (req: ^uv_write_t, status: i32)
uv_connect_cb :: #type proc "c" (req: ^uv_connect_t, status: i32)
uv_shutdown_cb :: #type proc "c" (req: ^uv_shutdown_t, status: i32)
uv_poll_cb :: #type proc "c" (handle: ^uv_poll_t, status: i32, events: i32)
uv_timer_cb :: #type proc "c" (handle: ^uv_timer_t)
uv_async_cb :: #type proc "c" (handle: ^uv_async_t)
uv_prepare_cb :: #type proc "c" (handle: ^uv_prepare_t)
uv_check_cb :: #type proc "c" (handle: ^uv_check_t)
uv_idle_cb :: #type proc "c" (handle: ^uv_idle_t)
uv_exit_cb :: #type proc "c" (param0: ^uv_process_t, exit_status: i64, term_signal: i32)
uv_walk_cb :: #type proc "c" (handle: ^uv_handle_t, arg: rawptr)
uv_fs_cb :: #type proc "c" (req: ^uv_fs_t)
uv_work_cb :: #type proc "c" (req: ^uv_work_t)
uv_after_work_cb :: #type proc "c" (req: ^uv_work_t, status: i32)
uv_getaddrinfo_cb :: #type proc "c" (req: ^uv_getaddrinfo_t, status: i32, res: [^]addrinfo)
uv_getnameinfo_cb :: #type proc "c" (
	req: ^uv_getnameinfo_t,
	status: i32,
	hostname: cstring,
	service: cstring,
)
uv_random_cb :: #type proc "c" (req: ^uv_random_t, status: i32, buf: rawptr, buflen: u64)
uv_clock_id :: enum u32 {
	CLOCK_MONOTONIC = 0,
	CLOCK_REALTIME  = 1,
}
uv_timespec64_t :: struct {
	tv_sec:  i64,
	tv_nsec: i32,
}
uv_timeval_t :: struct {
	tv_sec:  i64,
	tv_usec: i64,
}
uv_timeval64_t :: struct {
	tv_sec:  i64,
	tv_usec: i32,
}
uv_fs_event_cb :: #type proc "c" (
	handle: ^uv_fs_event_t,
	filename: cstring,
	events: i32,
	status: i32,
)
uv_fs_poll_cb :: #type proc "c" (
	handle: ^uv_fs_poll_t,
	status: i32,
	prev: ^uv_stat_t,
	curr: ^uv_stat_t,
)
uv_signal_cb :: #type proc "c" (handle: ^uv_signal_t, signum: i32)
uv_membership :: enum u32 {
	LEAVE_GROUP = 0,
	JOIN_GROUP  = 1,
}
uv_tcp_flags :: enum u32 {
	TCP_IPV6ONLY  = 1,
	TCP_REUSEPORT = 2,
}
uv_udp_flags :: enum u32 {
	UDP_IPV6ONLY      = 1,
	UDP_PARTIAL       = 2,
	UDP_REUSEADDR     = 4,
	UDP_MMSG_CHUNK    = 8,
	UDP_MMSG_FREE     = 16,
	UDP_LINUX_RECVERR = 32,
	UDP_REUSEPORT     = 64,
	UDP_RECVMMSG      = 256,
}
uv_udp_send_cb :: #type proc "c" (req: ^uv_udp_send_t, status: i32)
sockaddr :: ^^^rawptr
uv_tty_mode_t :: enum u32 {
	TTY_MODE_NORMAL = 0,
	TTY_MODE_RAW    = 1,
	TTY_MODE_IO     = 2,
}
uv_tty_vtermstate_t :: enum u32 {
	TTY_SUPPORTED   = 0,
	TTY_UNSUPPORTED = 1,
}
uv_poll_event :: enum u32 {
	READABLE    = 1,
	WRITABLE    = 2,
	DISCONNECT  = 4,
	PRIORITIZED = 8,
}
uv_stdio_flags :: enum u32 {
	IGNORE          = 0,
	CREATE_PIPE     = 1,
	INHERIT_FD      = 2,
	INHERIT_STREAM  = 4,
	READABLE_PIPE   = 16,
	WRITABLE_PIPE   = 32,
	NONBLOCK_PIPE   = 64,
	OVERLAPPED_PIPE = 64,
}
data_union_anon_13 :: struct #raw_union {
	stream: ^uv_stream_t,
	fd:     i32,
}
uv_stdio_container_s :: struct {
	flags: uv_stdio_flags,
	data:  data_union_anon_13,
}
uv_stdio_container_t :: uv_stdio_container_s
uv_process_options_s :: struct {
	exit_cb:     uv_exit_cb,
	file:        cstring,
	args:        [^]cstring,
	env:         ^cstring,
	cwd:         cstring,
	flags:       u32,
	stdio_count: i32,
	stdio:       ^uv_stdio_container_t,
	uid:         uv_uid_t,
	gid:         uv_gid_t,
}
uv_process_options_t :: uv_process_options_s
uv_process_flags :: enum u32 {
	PROCESS_SETUID                       = 1,
	PROCESS_SETGID                       = 2,
	PROCESS_WINDOWS_VERBATIM_ARGUMENTS   = 4,
	PROCESS_DETACHED                     = 8,
	PROCESS_WINDOWS_HIDE                 = 16,
	PROCESS_WINDOWS_HIDE_CONSOLE         = 32,
	PROCESS_WINDOWS_HIDE_GUI             = 64,
	PROCESS_WINDOWS_FILE_PATH_EXACT_NAME = 128,
}
uv_rusage_t :: struct {
	ru_utime:    uv_timeval_t,
	ru_stime:    uv_timeval_t,
	ru_maxrss:   u64,
	ru_ixrss:    u64,
	ru_idrss:    u64,
	ru_isrss:    u64,
	ru_minflt:   u64,
	ru_majflt:   u64,
	ru_nswap:    u64,
	ru_inblock:  u64,
	ru_oublock:  u64,
	ru_msgsnd:   u64,
	ru_msgrcv:   u64,
	ru_nsignals: u64,
	ru_nvcsw:    u64,
	ru_nivcsw:   u64,
}
uv_fs_event :: enum u32 {
	RENAME = 1,
	CHANGE = 2,
}
tree_entry_struct_anon_20 :: struct {
	rbe_left:   ^uv_signal_s,
	rbe_right:  ^uv_signal_s,
	rbe_parent: ^uv_signal_s,
	rbe_color:  i32,
}
uv_fs_event_flags :: enum u32 {
	FS_EVENT_WATCH_ENTRY = 1,
	FS_EVENT_STAT        = 2,
	FS_EVENT_RECURSIVE   = 4,
}
callback_func_ptr_anon_21 :: #type proc "c" ()
uv_thread_cb :: #type proc "c" (arg: rawptr)
uv_thread_create_flags :: enum u32 {
	THREAD_NO_FLAGS       = 0,
	THREAD_HAS_STACK_SIZE = 1,
}
uv_thread_options_s :: struct {
	flags:      u32,
	stack_size: u64,
}
uv_thread_options_t :: uv_thread_options_s
uv_any_handle :: struct #raw_union {
	async:    uv_async_t,
	check:    uv_check_t,
	fs_event: uv_fs_event_t,
	fs_poll:  uv_fs_poll_t,
	handle:   uv_handle_t,
	idle:     uv_idle_t,
	pipe:     uv_pipe_t,
	poll:     uv_poll_t,
	prepare:  uv_prepare_t,
	process:  uv_process_t,
	stream:   uv_stream_t,
	tcp:      uv_tcp_t,
	timer:    uv_timer_t,
	tty:      uv_tty_t,
	udp:      uv_udp_t,
	signal:   uv_signal_t,
}
uv_any_req :: struct #raw_union {
	req:         uv_req_t,
	connect:     uv_connect_t,
	write:       uv_write_t,
	shutdown:    uv_shutdown_t,
	udp_send:    uv_udp_send_t,
	fs:          uv_fs_t,
	work:        uv_work_t,
	getaddrinfo: uv_getaddrinfo_t,
	getnameinfo: uv_getnameinfo_t,
	random:      uv_random_t,
}
active_reqs_union_anon_22 :: struct #raw_union {
	unused: rawptr,
	count:  u32,
}
async_unused_func_ptr_anon_23 :: #type proc "c" ()
timer_heap_struct_anon_24 :: struct {
	min:   rawptr,
	nelts: u32,
}
uv_mutex_t :: i32
uv_rwlock_t :: i32
uv_loop_s :: struct {
	data:              rawptr,
	active_handles:    u32,
	handle_queue:      uv__queue,
	active_reqs:       active_reqs_union_anon_22,
	internal_fields:   rawptr,
	stop_flag:         u32,
	flags:             u64,
	backend_fd:        i32,
	pending_queue:     uv__queue,
	watcher_queue:     uv__queue,
	watchers:          ^[^]uv__io_t,
	nwatchers:         u32,
	nfds:              u32,
	wq:                uv__queue,
	wq_mutex:          uv_mutex_t,
	wq_async:          uv_async_t,
	cloexec_lock:      uv_rwlock_t,
	closing_handles:   [^]uv_handle_t,
	process_handles:   uv__queue,
	prepare_handles:   uv__queue,
	check_handles:     uv__queue,
	idle_handles:      uv__queue,
	async_handles:     uv__queue,
	async_unused:      async_unused_func_ptr_anon_23,
	async_io_watcher:  uv__io_t,
	async_wfd:         i32,
	timer_heap:        timer_heap_struct_anon_24,
	timer_counter:     u64,
	time:              u64,
	signal_pipefd:     [2]i32,
	signal_io_watcher: uv__io_t,
	child_watcher:     uv_signal_t,
	emfile_fd:         i32,
}
_IO_marker :: ^^^rawptr
_IO_lock_t :: ^^^rawptr
_IO_codecvt :: ^^^rawptr
_IO_wide_data :: ^^^rawptr
FILE :: _IO_FILE
uv_os_fd_t :: i32
uv_os_sock_t :: i32
uv_pid_t :: i32
uv_thread_t :: i32
uv_lib_t :: struct {
	handle: rawptr,
	errmsg: cstring,
}
uv_sem_t :: i32
uv_cond_t :: i32
_uv_barrier :: struct {
	mutex:     uv_mutex_t,
	cond:      uv_cond_t,
	threshold: u32,
	in_m:      u32,
	out:       u32,
}
uv_barrier_t :: struct {
	b: ^_uv_barrier,
}
uv_once_t :: i32
uv_key_t :: i32

foreign import uv_runic "system:libuv.a"

@(default_calling_convention = "c")
foreign uv_runic {
	@(link_name = "uv_version")
	version :: proc() -> u32 ---

	@(link_name = "uv_version_string")
	version_string :: proc() -> cstring ---

	@(link_name = "uv_library_shutdown")
	library_shutdown :: proc() ---

	@(link_name = "uv_replace_allocator")
	replace_allocator :: proc(malloc_func: uv_malloc_func, realloc_func: uv_realloc_func, calloc_func: uv_calloc_func, free_func: uv_free_func) -> i32 ---

	@(link_name = "uv_default_loop")
	default_loop :: proc() -> ^uv_loop_t ---

	@(link_name = "uv_loop_init")
	loop_init :: proc(loop: ^uv_loop_t) -> i32 ---

	@(link_name = "uv_loop_close")
	loop_close :: proc(loop: ^uv_loop_t) -> i32 ---

	@(link_name = "uv_loop_new")
	loop_new :: proc() -> ^uv_loop_t ---

	@(link_name = "uv_loop_delete")
	loop_delete :: proc(param0: ^uv_loop_t) ---

	@(link_name = "uv_loop_size")
	loop_size :: proc() -> i32 ---

	@(link_name = "uv_loop_alive")
	loop_alive :: proc(loop: ^uv_loop_t) -> i32 ---

	@(link_name = "uv_loop_configure")
	loop_configure :: proc(loop: ^uv_loop_t, option: uv_loop_option) -> i32 ---

	@(link_name = "uv_loop_fork")
	loop_fork :: proc(loop: ^uv_loop_t) -> i32 ---

	@(link_name = "uv_run")
	run :: proc(param0: ^uv_loop_t, mode: uv_run_mode) -> i32 ---

	@(link_name = "uv_stop")
	stop :: proc(param0: ^uv_loop_t) ---

	@(link_name = "uv_ref")
	ref :: proc(param0: ^uv_handle_t) ---

	@(link_name = "uv_unref")
	unref :: proc(param0: ^uv_handle_t) ---

	@(link_name = "uv_has_ref")
	has_ref :: proc(param0: ^uv_handle_t) -> i32 ---

	@(link_name = "uv_update_time")
	update_time :: proc(param0: ^uv_loop_t) ---

	@(link_name = "uv_now")
	now :: proc(param0: ^uv_loop_t) -> u64 ---

	@(link_name = "uv_backend_fd")
	backend_fd :: proc(param0: ^uv_loop_t) -> i32 ---

	@(link_name = "uv_backend_timeout")
	backend_timeout :: proc(param0: ^uv_loop_t) -> i32 ---

	@(link_name = "uv_translate_sys_error")
	translate_sys_error :: proc(sys_errno: i32) -> i32 ---

	@(link_name = "uv_strerror")
	strerror :: proc(err: i32) -> cstring ---

	@(link_name = "uv_strerror_r")
	strerror_r :: proc(err: i32, buf: cstring, buflen: u64) -> cstring ---

	@(link_name = "uv_err_name")
	err_name :: proc(err: i32) -> cstring ---

	@(link_name = "uv_err_name_r")
	err_name_r :: proc(err: i32, buf: cstring, buflen: u64) -> cstring ---

	@(link_name = "uv_shutdown")
	shutdown :: proc(req: ^uv_shutdown_t, handle: ^uv_stream_t, cb: uv_shutdown_cb) -> i32 ---

	@(link_name = "uv_handle_size")
	handle_size :: proc(type: uv_handle_type) -> i32 ---

	@(link_name = "uv_handle_get_type")
	handle_get_type :: proc(handle: ^uv_handle_t) -> uv_handle_type ---

	@(link_name = "uv_handle_type_name")
	handle_type_name :: proc(type: uv_handle_type) -> cstring ---

	@(link_name = "uv_handle_get_data")
	handle_get_data :: proc(handle: ^uv_handle_t) -> rawptr ---

	@(link_name = "uv_handle_get_loop")
	handle_get_loop :: proc(handle: ^uv_handle_t) -> ^uv_loop_t ---

	@(link_name = "uv_handle_set_data")
	handle_set_data :: proc(handle: ^uv_handle_t, data: rawptr) ---

	@(link_name = "uv_req_size")
	req_size :: proc(type: uv_req_type) -> i32 ---

	@(link_name = "uv_req_get_data")
	req_get_data :: proc(req: ^uv_req_t) -> rawptr ---

	@(link_name = "uv_req_set_data")
	req_set_data :: proc(req: ^uv_req_t, data: rawptr) ---

	@(link_name = "uv_req_get_type")
	req_get_type :: proc(req: ^uv_req_t) -> uv_req_type ---

	@(link_name = "uv_req_type_name")
	req_type_name :: proc(type: uv_req_type) -> cstring ---

	@(link_name = "uv_is_active")
	is_active :: proc(handle: ^uv_handle_t) -> i32 ---

	@(link_name = "uv_walk")
	walk :: proc(loop: ^uv_loop_t, walk_cb: uv_walk_cb, arg: rawptr) ---

	@(link_name = "uv_print_all_handles")
	print_all_handles :: proc(loop: ^uv_loop_t, stream: ^FILE) ---

	@(link_name = "uv_print_active_handles")
	print_active_handles :: proc(loop: ^uv_loop_t, stream: ^FILE) ---

	@(link_name = "uv_close")
	close :: proc(handle: ^uv_handle_t, close_cb: uv_close_cb) ---

	@(link_name = "uv_send_buffer_size")
	send_buffer_size :: proc(handle: ^uv_handle_t, value: ^i32) -> i32 ---

	@(link_name = "uv_recv_buffer_size")
	recv_buffer_size :: proc(handle: ^uv_handle_t, value: ^i32) -> i32 ---

	@(link_name = "uv_fileno")
	fileno :: proc(handle: ^uv_handle_t, fd: ^uv_os_fd_t) -> i32 ---

	@(link_name = "uv_buf_init")
	buf_init :: proc(base: cstring, len: u32) -> uv_buf_t ---

	@(link_name = "uv_pipe")
	pipe :: proc(fds: [2]uv_file, read_flags: i32, write_flags: i32) -> i32 ---

	@(link_name = "uv_socketpair")
	socketpair :: proc(type: i32, protocol: i32, socket_vector: [2]uv_os_sock_t, flags0: i32, flags1: i32) -> i32 ---

	@(link_name = "uv_stream_get_write_queue_size")
	stream_get_write_queue_size :: proc(stream: ^uv_stream_t) -> i32 ---

	@(link_name = "uv_listen")
	listen :: proc(stream: ^uv_stream_t, backlog: i32, cb: uv_connection_cb) -> i32 ---

	@(link_name = "uv_accept")
	accept :: proc(server: ^uv_stream_t, client: ^uv_stream_t) -> i32 ---

	@(link_name = "uv_read_start")
	read_start :: proc(param0: ^uv_stream_t, alloc_cb: uv_alloc_cb, read_cb: uv_read_cb) -> i32 ---

	@(link_name = "uv_read_stop")
	read_stop :: proc(param0: ^uv_stream_t) -> i32 ---

	@(link_name = "uv_write")
	write :: proc(req: ^uv_write_t, handle: ^uv_stream_t, bufs: [^]uv_buf_t, nbufs: u32, cb: uv_write_cb) -> i32 ---

	@(link_name = "uv_write2")
	write2 :: proc(req: ^uv_write_t, handle: ^uv_stream_t, bufs: [^]uv_buf_t, nbufs: u32, send_handle: ^uv_stream_t, cb: uv_write_cb) -> i32 ---

	@(link_name = "uv_try_write")
	try_write :: proc(handle: ^uv_stream_t, bufs: [^]uv_buf_t, nbufs: u32) -> i32 ---

	@(link_name = "uv_try_write2")
	try_write2 :: proc(handle: ^uv_stream_t, bufs: [^]uv_buf_t, nbufs: u32, send_handle: ^uv_stream_t) -> i32 ---

	@(link_name = "uv_is_readable")
	is_readable :: proc(handle: ^uv_stream_t) -> i32 ---

	@(link_name = "uv_is_writable")
	is_writable :: proc(handle: ^uv_stream_t) -> i32 ---

	@(link_name = "uv_stream_set_blocking")
	stream_set_blocking :: proc(handle: ^uv_stream_t, blocking: i32) -> i32 ---

	@(link_name = "uv_is_closing")
	is_closing :: proc(handle: ^uv_handle_t) -> i32 ---

	@(link_name = "uv_tcp_init")
	tcp_init :: proc(param0: ^uv_loop_t, handle: ^uv_tcp_t) -> i32 ---

	@(link_name = "uv_tcp_init_ex")
	tcp_init_ex :: proc(param0: ^uv_loop_t, handle: ^uv_tcp_t, flags: u32) -> i32 ---

	@(link_name = "uv_tcp_open")
	tcp_open :: proc(handle: ^uv_tcp_t, sock: uv_os_sock_t) -> i32 ---

	@(link_name = "uv_tcp_nodelay")
	tcp_nodelay :: proc(handle: ^uv_tcp_t, enable: i32) -> i32 ---

	@(link_name = "uv_tcp_keepalive")
	tcp_keepalive :: proc(handle: ^uv_tcp_t, enable: i32, delay: u32) -> i32 ---

	@(link_name = "uv_tcp_simultaneous_accepts")
	tcp_simultaneous_accepts :: proc(handle: ^uv_tcp_t, enable: i32) -> i32 ---

	@(link_name = "uv_tcp_bind")
	tcp_bind :: proc(handle: ^uv_tcp_t, addr: ^sockaddr, flags: u32) -> i32 ---

	@(link_name = "uv_tcp_getsockname")
	tcp_getsockname :: proc(handle: ^uv_tcp_t, name: ^sockaddr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_tcp_getpeername")
	tcp_getpeername :: proc(handle: ^uv_tcp_t, name: ^sockaddr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_tcp_close_reset")
	tcp_close_reset :: proc(handle: ^uv_tcp_t, close_cb: uv_close_cb) -> i32 ---

	@(link_name = "uv_tcp_connect")
	tcp_connect :: proc(req: ^uv_connect_t, handle: ^uv_tcp_t, addr: ^sockaddr, cb: uv_connect_cb) -> i32 ---

	@(link_name = "uv_udp_init")
	udp_init :: proc(param0: ^uv_loop_t, handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_init_ex")
	udp_init_ex :: proc(param0: ^uv_loop_t, handle: ^uv_udp_t, flags: u32) -> i32 ---

	@(link_name = "uv_udp_open")
	udp_open :: proc(handle: ^uv_udp_t, sock: uv_os_sock_t) -> i32 ---

	@(link_name = "uv_udp_bind")
	udp_bind :: proc(handle: ^uv_udp_t, addr: ^sockaddr, flags: u32) -> i32 ---

	@(link_name = "uv_udp_connect")
	udp_connect :: proc(handle: ^uv_udp_t, addr: ^sockaddr) -> i32 ---

	@(link_name = "uv_udp_getpeername")
	udp_getpeername :: proc(handle: ^uv_udp_t, name: ^sockaddr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_udp_getsockname")
	udp_getsockname :: proc(handle: ^uv_udp_t, name: ^sockaddr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_udp_set_membership")
	udp_set_membership :: proc(handle: ^uv_udp_t, multicast_addr: cstring, interface_addr: cstring, membership: uv_membership) -> i32 ---

	@(link_name = "uv_udp_set_source_membership")
	udp_set_source_membership :: proc(handle: ^uv_udp_t, multicast_addr: cstring, interface_addr: cstring, source_addr: cstring, membership: uv_membership) -> i32 ---

	@(link_name = "uv_udp_set_multicast_loop")
	udp_set_multicast_loop :: proc(handle: ^uv_udp_t, on: i32) -> i32 ---

	@(link_name = "uv_udp_set_multicast_ttl")
	udp_set_multicast_ttl :: proc(handle: ^uv_udp_t, ttl: i32) -> i32 ---

	@(link_name = "uv_udp_set_multicast_interface")
	udp_set_multicast_interface :: proc(handle: ^uv_udp_t, interface_addr: cstring) -> i32 ---

	@(link_name = "uv_udp_set_broadcast")
	udp_set_broadcast :: proc(handle: ^uv_udp_t, on: i32) -> i32 ---

	@(link_name = "uv_udp_set_ttl")
	udp_set_ttl :: proc(handle: ^uv_udp_t, ttl: i32) -> i32 ---

	@(link_name = "uv_udp_send")
	udp_send :: proc(req: ^uv_udp_send_t, handle: ^uv_udp_t, bufs: [^]uv_buf_t, nbufs: u32, addr: ^sockaddr, send_cb: uv_udp_send_cb) -> i32 ---

	@(link_name = "uv_udp_try_send")
	udp_try_send :: proc(handle: ^uv_udp_t, bufs: [^]uv_buf_t, nbufs: u32, addr: ^sockaddr) -> i32 ---

	@(link_name = "uv_udp_recv_start")
	udp_recv_start :: proc(handle: ^uv_udp_t, alloc_cb: uv_alloc_cb, recv_cb: uv_udp_recv_cb) -> i32 ---

	@(link_name = "uv_udp_using_recvmmsg")
	udp_using_recvmmsg :: proc(handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_recv_stop")
	udp_recv_stop :: proc(handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_get_send_queue_size")
	udp_get_send_queue_size :: proc(handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_get_send_queue_count")
	udp_get_send_queue_count :: proc(handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_tty_init")
	tty_init :: proc(param0: ^uv_loop_t, param1: ^uv_tty_t, fd: uv_file, readable: i32) -> i32 ---

	@(link_name = "uv_tty_set_mode")
	tty_set_mode :: proc(param0: ^uv_tty_t, mode: uv_tty_mode_t) -> i32 ---

	@(link_name = "uv_tty_reset_mode")
	tty_reset_mode :: proc() -> i32 ---

	@(link_name = "uv_tty_get_winsize")
	tty_get_winsize :: proc(param0: ^uv_tty_t, width: ^i32, height: ^i32) -> i32 ---

	@(link_name = "uv_tty_set_vterm_state")
	tty_set_vterm_state :: proc(state: uv_tty_vtermstate_t) ---

	@(link_name = "uv_tty_get_vterm_state")
	tty_get_vterm_state :: proc(state: ^uv_tty_vtermstate_t) -> i32 ---

	@(link_name = "uv_guess_handle")
	guess_handle :: proc(file: uv_file) -> uv_handle_type ---

	@(link_name = "uv_pipe_init")
	pipe_init :: proc(param0: ^uv_loop_t, handle: ^uv_pipe_t, ipc: i32) -> i32 ---

	@(link_name = "uv_pipe_open")
	pipe_open :: proc(param0: ^uv_pipe_t, file: uv_file) -> i32 ---

	@(link_name = "uv_pipe_bind")
	pipe_bind :: proc(handle: ^uv_pipe_t, name: cstring) -> i32 ---

	@(link_name = "uv_pipe_bind2")
	pipe_bind2 :: proc(handle: ^uv_pipe_t, name: cstring, namelen: u64, flags: u32) -> i32 ---

	@(link_name = "uv_pipe_connect")
	pipe_connect :: proc(req: ^uv_connect_t, handle: ^uv_pipe_t, name: cstring, cb: uv_connect_cb) ---

	@(link_name = "uv_pipe_connect2")
	pipe_connect2 :: proc(req: ^uv_connect_t, handle: ^uv_pipe_t, name: cstring, namelen: u64, flags: u32, cb: uv_connect_cb) -> i32 ---

	@(link_name = "uv_pipe_getsockname")
	pipe_getsockname :: proc(handle: ^uv_pipe_t, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_pipe_getpeername")
	pipe_getpeername :: proc(handle: ^uv_pipe_t, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_pipe_pending_instances")
	pipe_pending_instances :: proc(handle: ^uv_pipe_t, count: i32) ---

	@(link_name = "uv_pipe_pending_count")
	pipe_pending_count :: proc(handle: ^uv_pipe_t) -> i32 ---

	@(link_name = "uv_pipe_pending_type")
	pipe_pending_type :: proc(handle: ^uv_pipe_t) -> uv_handle_type ---

	@(link_name = "uv_pipe_chmod")
	pipe_chmod :: proc(handle: ^uv_pipe_t, flags: i32) -> i32 ---

	@(link_name = "uv_poll_init")
	poll_init :: proc(loop: ^uv_loop_t, handle: ^uv_poll_t, fd: i32) -> i32 ---

	@(link_name = "uv_poll_init_socket")
	poll_init_socket :: proc(loop: ^uv_loop_t, handle: ^uv_poll_t, socket: uv_os_sock_t) -> i32 ---

	@(link_name = "uv_poll_start")
	poll_start :: proc(handle: ^uv_poll_t, events: i32, cb: uv_poll_cb) -> i32 ---

	@(link_name = "uv_poll_stop")
	poll_stop :: proc(handle: ^uv_poll_t) -> i32 ---

	@(link_name = "uv_prepare_init")
	prepare_init :: proc(param0: ^uv_loop_t, prepare: ^uv_prepare_t) -> i32 ---

	@(link_name = "uv_prepare_start")
	prepare_start :: proc(prepare: ^uv_prepare_t, cb: uv_prepare_cb) -> i32 ---

	@(link_name = "uv_prepare_stop")
	prepare_stop :: proc(prepare: ^uv_prepare_t) -> i32 ---

	@(link_name = "uv_check_init")
	check_init :: proc(param0: ^uv_loop_t, check: ^uv_check_t) -> i32 ---

	@(link_name = "uv_check_start")
	check_start :: proc(check: ^uv_check_t, cb: uv_check_cb) -> i32 ---

	@(link_name = "uv_check_stop")
	check_stop :: proc(check: ^uv_check_t) -> i32 ---

	@(link_name = "uv_idle_init")
	idle_init :: proc(param0: ^uv_loop_t, idle: ^uv_idle_t) -> i32 ---

	@(link_name = "uv_idle_start")
	idle_start :: proc(idle: ^uv_idle_t, cb: uv_idle_cb) -> i32 ---

	@(link_name = "uv_idle_stop")
	idle_stop :: proc(idle: ^uv_idle_t) -> i32 ---

	@(link_name = "uv_async_init")
	async_init :: proc(param0: ^uv_loop_t, async: ^uv_async_t, async_cb: uv_async_cb) -> i32 ---

	@(link_name = "uv_async_send")
	async_send :: proc(async: ^uv_async_t) -> i32 ---

	@(link_name = "uv_timer_init")
	timer_init :: proc(param0: ^uv_loop_t, handle: ^uv_timer_t) -> i32 ---

	@(link_name = "uv_timer_start")
	timer_start :: proc(handle: ^uv_timer_t, cb: uv_timer_cb, timeout: u64, repeat: u64) -> i32 ---

	@(link_name = "uv_timer_stop")
	timer_stop :: proc(handle: ^uv_timer_t) -> i32 ---

	@(link_name = "uv_timer_again")
	timer_again :: proc(handle: ^uv_timer_t) -> i32 ---

	@(link_name = "uv_timer_set_repeat")
	timer_set_repeat :: proc(handle: ^uv_timer_t, repeat: u64) ---

	@(link_name = "uv_timer_get_repeat")
	timer_get_repeat :: proc(handle: ^uv_timer_t) -> u64 ---

	@(link_name = "uv_timer_get_due_in")
	timer_get_due_in :: proc(handle: ^uv_timer_t) -> u64 ---

	@(link_name = "uv_getaddrinfo")
	getaddrinfo :: proc(loop: ^uv_loop_t, req: ^uv_getaddrinfo_t, getaddrinfo_cb: uv_getaddrinfo_cb, node: cstring, service: cstring, hints: [^]addrinfo) -> i32 ---

	@(link_name = "uv_freeaddrinfo")
	freeaddrinfo :: proc(ai: ^addrinfo) ---

	@(link_name = "uv_getnameinfo")
	getnameinfo :: proc(loop: ^uv_loop_t, req: ^uv_getnameinfo_t, getnameinfo_cb: uv_getnameinfo_cb, addr: ^sockaddr, flags: i32) -> i32 ---

	@(link_name = "uv_spawn")
	spawn :: proc(loop: ^uv_loop_t, handle: ^uv_process_t, options: [^]uv_process_options_t) -> i32 ---

	@(link_name = "uv_process_kill")
	process_kill :: proc(param0: ^uv_process_t, signum: i32) -> i32 ---

	@(link_name = "uv_kill")
	kill :: proc(pid: i32, signum: i32) -> i32 ---

	@(link_name = "uv_process_get_pid")
	process_get_pid :: proc(param0: ^uv_process_t) -> uv_pid_t ---

	@(link_name = "uv_queue_work")
	queue_work :: proc(loop: ^uv_loop_t, req: ^uv_work_t, work_cb: uv_work_cb, after_work_cb: uv_after_work_cb) -> i32 ---

	@(link_name = "uv_cancel")
	cancel :: proc(req: ^uv_req_t) -> i32 ---

	@(link_name = "uv_setup_args")
	setup_args :: proc(argc: i32, argv: ^cstring) -> ^cstring ---

	@(link_name = "uv_get_process_title")
	get_process_title :: proc(buffer: cstring, size: u64) -> i32 ---

	@(link_name = "uv_set_process_title")
	set_process_title :: proc(title: cstring) -> i32 ---

	@(link_name = "uv_resident_set_memory")
	resident_set_memory :: proc(rss: [^]u64) -> i32 ---

	@(link_name = "uv_uptime")
	uptime :: proc(uptime: ^f64) -> i32 ---

	@(link_name = "uv_get_osfhandle")
	get_osfhandle :: proc(fd: i32) -> uv_os_fd_t ---

	@(link_name = "uv_open_osfhandle")
	open_osfhandle :: proc(os_fd: uv_os_fd_t) -> i32 ---

	@(link_name = "uv_getrusage")
	getrusage :: proc(rusage: ^uv_rusage_t) -> i32 ---

	@(link_name = "uv_os_homedir")
	os_homedir :: proc(buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_os_tmpdir")
	os_tmpdir :: proc(buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_os_get_passwd")
	os_get_passwd :: proc(pwd: ^uv_passwd_t) -> i32 ---

	@(link_name = "uv_os_free_passwd")
	os_free_passwd :: proc(pwd: ^uv_passwd_t) ---

	@(link_name = "uv_os_get_passwd2")
	os_get_passwd2 :: proc(pwd: ^uv_passwd_t, uid: uv_uid_t) -> i32 ---

	@(link_name = "uv_os_get_group")
	os_get_group :: proc(grp: ^uv_group_t, gid: uv_uid_t) -> i32 ---

	@(link_name = "uv_os_free_group")
	os_free_group :: proc(grp: ^uv_group_t) ---

	@(link_name = "uv_os_getpid")
	os_getpid :: proc() -> uv_pid_t ---

	@(link_name = "uv_os_getppid")
	os_getppid :: proc() -> uv_pid_t ---

	@(link_name = "uv_os_getpriority")
	os_getpriority :: proc(pid: uv_pid_t, priority: ^i32) -> i32 ---

	@(link_name = "uv_os_setpriority")
	os_setpriority :: proc(pid: uv_pid_t, priority: i32) -> i32 ---

	@(link_name = "uv_thread_getpriority")
	thread_getpriority :: proc(tid: uv_thread_t, priority: ^i32) -> i32 ---

	@(link_name = "uv_thread_setpriority")
	thread_setpriority :: proc(tid: uv_thread_t, priority: i32) -> i32 ---

	@(link_name = "uv_available_parallelism")
	available_parallelism :: proc() -> u32 ---

	@(link_name = "uv_cpu_info")
	cpu_info :: proc(cpu_infos: ^[^]uv_cpu_info_t, count: ^i32) -> i32 ---

	@(link_name = "uv_free_cpu_info")
	free_cpu_info :: proc(cpu_infos: [^]uv_cpu_info_t, count: i32) ---

	@(link_name = "uv_cpumask_size")
	cpumask_size :: proc() -> i32 ---

	@(link_name = "uv_interface_addresses")
	interface_addresses :: proc(addresses: ^[^]uv_interface_address_t, count: ^i32) -> i32 ---

	@(link_name = "uv_free_interface_addresses")
	free_interface_addresses :: proc(addresses: [^]uv_interface_address_t, count: i32) ---

	@(link_name = "uv_os_environ")
	os_environ :: proc(envitems: ^[^]uv_env_item_t, count: ^i32) -> i32 ---

	@(link_name = "uv_os_free_environ")
	os_free_environ :: proc(envitems: [^]uv_env_item_t, count: i32) ---

	@(link_name = "uv_os_getenv")
	os_getenv :: proc(name: cstring, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_os_setenv")
	os_setenv :: proc(name: cstring, value: cstring) -> i32 ---

	@(link_name = "uv_os_unsetenv")
	os_unsetenv :: proc(name: cstring) -> i32 ---

	@(link_name = "uv_os_gethostname")
	os_gethostname :: proc(buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_os_uname")
	os_uname :: proc(buffer: ^uv_utsname_t) -> i32 ---

	@(link_name = "uv_metrics_info")
	metrics_info :: proc(loop: ^uv_loop_t, metrics: [^]uv_metrics_t) -> i32 ---

	@(link_name = "uv_metrics_idle_time")
	metrics_idle_time :: proc(loop: ^uv_loop_t) -> u64 ---

	@(link_name = "uv_fs_get_type")
	fs_get_type :: proc(param0: ^uv_fs_t) -> uv_fs_type ---

	@(link_name = "uv_fs_get_result")
	fs_get_result :: proc(param0: ^uv_fs_t) -> i32 ---

	@(link_name = "uv_fs_get_system_error")
	fs_get_system_error :: proc(param0: ^uv_fs_t) -> i32 ---

	@(link_name = "uv_fs_get_ptr")
	fs_get_ptr :: proc(param0: ^uv_fs_t) -> rawptr ---

	@(link_name = "uv_fs_get_path")
	fs_get_path :: proc(param0: ^uv_fs_t) -> cstring ---

	@(link_name = "uv_fs_get_statbuf")
	fs_get_statbuf :: proc(param0: ^uv_fs_t) -> ^uv_stat_t ---

	@(link_name = "uv_fs_req_cleanup")
	fs_req_cleanup :: proc(req: ^uv_fs_t) ---

	@(link_name = "uv_fs_close")
	fs_close :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_open")
	fs_open :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, flags: i32, mode: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_read")
	fs_read :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, bufs: [^]uv_buf_t, nbufs: u32, offset: i64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_unlink")
	fs_unlink :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_write")
	fs_write :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, bufs: [^]uv_buf_t, nbufs: u32, offset: i64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_copyfile")
	fs_copyfile :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, new_path: cstring, flags: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_mkdir")
	fs_mkdir :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, mode: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_mkdtemp")
	fs_mkdtemp :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, tpl: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_mkstemp")
	fs_mkstemp :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, tpl: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_rmdir")
	fs_rmdir :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_scandir")
	fs_scandir :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, flags: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_scandir_next")
	fs_scandir_next :: proc(req: ^uv_fs_t, ent: ^uv_dirent_t) -> i32 ---

	@(link_name = "uv_fs_opendir")
	fs_opendir :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_readdir")
	fs_readdir :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, dir: ^uv_dir_t, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_closedir")
	fs_closedir :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, dir: ^uv_dir_t, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_stat")
	fs_stat :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_fstat")
	fs_fstat :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_rename")
	fs_rename :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, new_path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_fsync")
	fs_fsync :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_fdatasync")
	fs_fdatasync :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_ftruncate")
	fs_ftruncate :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, offset: i64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_sendfile")
	fs_sendfile :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, out_fd: uv_file, in_fd: uv_file, in_offset: i64, length: u64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_access")
	fs_access :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, mode: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_chmod")
	fs_chmod :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, mode: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_utime")
	fs_utime :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, atime: f64, mtime: f64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_futime")
	fs_futime :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, atime: f64, mtime: f64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_lutime")
	fs_lutime :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, atime: f64, mtime: f64, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_lstat")
	fs_lstat :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_link")
	fs_link :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, new_path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_symlink")
	fs_symlink :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, new_path: cstring, flags: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_readlink")
	fs_readlink :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_realpath")
	fs_realpath :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_fchmod")
	fs_fchmod :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, mode: i32, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_chown")
	fs_chown :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, uid: uv_uid_t, gid: uv_gid_t, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_fchown")
	fs_fchown :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, file: uv_file, uid: uv_uid_t, gid: uv_gid_t, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_lchown")
	fs_lchown :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, uid: uv_uid_t, gid: uv_gid_t, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_statfs")
	fs_statfs :: proc(loop: ^uv_loop_t, req: ^uv_fs_t, path: cstring, cb: uv_fs_cb) -> i32 ---

	@(link_name = "uv_fs_poll_init")
	fs_poll_init :: proc(loop: ^uv_loop_t, handle: ^uv_fs_poll_t) -> i32 ---

	@(link_name = "uv_fs_poll_start")
	fs_poll_start :: proc(handle: ^uv_fs_poll_t, poll_cb: uv_fs_poll_cb, path: cstring, interval: u32) -> i32 ---

	@(link_name = "uv_fs_poll_stop")
	fs_poll_stop :: proc(handle: ^uv_fs_poll_t) -> i32 ---

	@(link_name = "uv_fs_poll_getpath")
	fs_poll_getpath :: proc(handle: ^uv_fs_poll_t, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_signal_init")
	signal_init :: proc(loop: ^uv_loop_t, handle: ^uv_signal_t) -> i32 ---

	@(link_name = "uv_signal_start")
	signal_start :: proc(handle: ^uv_signal_t, signal_cb: uv_signal_cb, signum: i32) -> i32 ---

	@(link_name = "uv_signal_start_oneshot")
	signal_start_oneshot :: proc(handle: ^uv_signal_t, signal_cb: uv_signal_cb, signum: i32) -> i32 ---

	@(link_name = "uv_signal_stop")
	signal_stop :: proc(handle: ^uv_signal_t) -> i32 ---

	@(link_name = "uv_loadavg")
	loadavg :: proc(avg: [3]f64) ---

	@(link_name = "uv_fs_event_init")
	fs_event_init :: proc(loop: ^uv_loop_t, handle: ^uv_fs_event_t) -> i32 ---

	@(link_name = "uv_fs_event_start")
	fs_event_start :: proc(handle: ^uv_fs_event_t, cb: uv_fs_event_cb, path: cstring, flags: u32) -> i32 ---

	@(link_name = "uv_fs_event_stop")
	fs_event_stop :: proc(handle: ^uv_fs_event_t) -> i32 ---

	@(link_name = "uv_fs_event_getpath")
	fs_event_getpath :: proc(handle: ^uv_fs_event_t, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_ip4_addr")
	ip4_addr :: proc(ip: cstring, port: i32, addr: ^sockaddr_in) -> i32 ---

	@(link_name = "uv_ip6_addr")
	ip6_addr :: proc(ip: cstring, port: i32, addr: ^sockaddr_in6) -> i32 ---

	@(link_name = "uv_ip4_name")
	ip4_name :: proc(src: ^sockaddr_in, dst: cstring, size: u64) -> i32 ---

	@(link_name = "uv_ip6_name")
	ip6_name :: proc(src: ^sockaddr_in6, dst: cstring, size: u64) -> i32 ---

	@(link_name = "uv_ip_name")
	ip_name :: proc(src: ^sockaddr, dst: cstring, size: u64) -> i32 ---

	@(link_name = "uv_inet_ntop")
	inet_ntop :: proc(af: i32, src: rawptr, dst: cstring, size: u64) -> i32 ---

	@(link_name = "uv_inet_pton")
	inet_pton :: proc(af: i32, src: cstring, dst: rawptr) -> i32 ---

	@(link_name = "uv_random")
	random :: proc(loop: ^uv_loop_t, req: ^uv_random_t, buf: rawptr, buflen: u64, flags: u32, cb: uv_random_cb) -> i32 ---

	@(link_name = "uv_if_indextoname")
	if_indextoname :: proc(ifindex: u32, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_if_indextoiid")
	if_indextoiid :: proc(ifindex: u32, buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_exepath")
	exepath :: proc(buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_cwd")
	cwd :: proc(buffer: cstring, size: ^u64) -> i32 ---

	@(link_name = "uv_chdir")
	chdir :: proc(dir: cstring) -> i32 ---

	@(link_name = "uv_get_free_memory")
	get_free_memory :: proc() -> u64 ---

	@(link_name = "uv_get_total_memory")
	get_total_memory :: proc() -> u64 ---

	@(link_name = "uv_get_constrained_memory")
	get_constrained_memory :: proc() -> u64 ---

	@(link_name = "uv_get_available_memory")
	get_available_memory :: proc() -> u64 ---

	@(link_name = "uv_clock_gettime")
	clock_gettime :: proc(clock_id: uv_clock_id, ts: [^]uv_timespec64_t) -> i32 ---

	@(link_name = "uv_hrtime")
	hrtime :: proc() -> u64 ---

	@(link_name = "uv_sleep")
	sleep :: proc(msec: u32) ---

	@(link_name = "uv_disable_stdio_inheritance")
	disable_stdio_inheritance :: proc() ---

	@(link_name = "uv_dlopen")
	dlopen :: proc(filename: cstring, lib: ^uv_lib_t) -> i32 ---

	@(link_name = "uv_dlclose")
	dlclose :: proc(lib: ^uv_lib_t) ---

	@(link_name = "uv_dlsym")
	dlsym :: proc(lib: ^uv_lib_t, name: cstring, ptr: ^rawptr) -> i32 ---

	@(link_name = "uv_dlerror")
	dlerror :: proc(lib: ^uv_lib_t) -> cstring ---

	@(link_name = "uv_mutex_init")
	mutex_init :: proc(handle: ^uv_mutex_t) -> i32 ---

	@(link_name = "uv_mutex_init_recursive")
	mutex_init_recursive :: proc(handle: ^uv_mutex_t) -> i32 ---

	@(link_name = "uv_mutex_destroy")
	mutex_destroy :: proc(handle: ^uv_mutex_t) ---

	@(link_name = "uv_mutex_lock")
	mutex_lock :: proc(handle: ^uv_mutex_t) ---

	@(link_name = "uv_mutex_trylock")
	mutex_trylock :: proc(handle: ^uv_mutex_t) -> i32 ---

	@(link_name = "uv_mutex_unlock")
	mutex_unlock :: proc(handle: ^uv_mutex_t) ---

	@(link_name = "uv_rwlock_init")
	rwlock_init :: proc(rwlock: ^uv_rwlock_t) -> i32 ---

	@(link_name = "uv_rwlock_destroy")
	rwlock_destroy :: proc(rwlock: ^uv_rwlock_t) ---

	@(link_name = "uv_rwlock_rdlock")
	rwlock_rdlock :: proc(rwlock: ^uv_rwlock_t) ---

	@(link_name = "uv_rwlock_tryrdlock")
	rwlock_tryrdlock :: proc(rwlock: ^uv_rwlock_t) -> i32 ---

	@(link_name = "uv_rwlock_rdunlock")
	rwlock_rdunlock :: proc(rwlock: ^uv_rwlock_t) ---

	@(link_name = "uv_rwlock_wrlock")
	rwlock_wrlock :: proc(rwlock: ^uv_rwlock_t) ---

	@(link_name = "uv_rwlock_trywrlock")
	rwlock_trywrlock :: proc(rwlock: ^uv_rwlock_t) -> i32 ---

	@(link_name = "uv_rwlock_wrunlock")
	rwlock_wrunlock :: proc(rwlock: ^uv_rwlock_t) ---

	@(link_name = "uv_sem_init")
	sem_init :: proc(sem: ^uv_sem_t, value: u32) -> i32 ---

	@(link_name = "uv_sem_destroy")
	sem_destroy :: proc(sem: ^uv_sem_t) ---

	@(link_name = "uv_sem_post")
	sem_post :: proc(sem: ^uv_sem_t) ---

	@(link_name = "uv_sem_wait")
	sem_wait :: proc(sem: ^uv_sem_t) ---

	@(link_name = "uv_sem_trywait")
	sem_trywait :: proc(sem: ^uv_sem_t) -> i32 ---

	@(link_name = "uv_cond_init")
	cond_init :: proc(cond: ^uv_cond_t) -> i32 ---

	@(link_name = "uv_cond_destroy")
	cond_destroy :: proc(cond: ^uv_cond_t) ---

	@(link_name = "uv_cond_signal")
	cond_signal :: proc(cond: ^uv_cond_t) ---

	@(link_name = "uv_cond_broadcast")
	cond_broadcast :: proc(cond: ^uv_cond_t) ---

	@(link_name = "uv_barrier_init")
	barrier_init :: proc(barrier: ^uv_barrier_t, count: u32) -> i32 ---

	@(link_name = "uv_barrier_destroy")
	barrier_destroy :: proc(barrier: ^uv_barrier_t) ---

	@(link_name = "uv_barrier_wait")
	barrier_wait :: proc(barrier: ^uv_barrier_t) -> i32 ---

	@(link_name = "uv_cond_wait")
	cond_wait :: proc(cond: ^uv_cond_t, mutex: ^uv_mutex_t) ---

	@(link_name = "uv_cond_timedwait")
	cond_timedwait :: proc(cond: ^uv_cond_t, mutex: ^uv_mutex_t, timeout: u64) -> i32 ---

	@(link_name = "uv_once")
	once :: proc(guard: ^uv_once_t, callback: callback_func_ptr_anon_21) ---

	@(link_name = "uv_key_create")
	key_create :: proc(key: ^uv_key_t) -> i32 ---

	@(link_name = "uv_key_delete")
	key_delete :: proc(key: ^uv_key_t) ---

	@(link_name = "uv_key_get")
	key_get :: proc(key: ^uv_key_t) -> rawptr ---

	@(link_name = "uv_key_set")
	key_set :: proc(key: ^uv_key_t, value: rawptr) ---

	@(link_name = "uv_gettimeofday")
	gettimeofday :: proc(tv: ^uv_timeval64_t) -> i32 ---

	@(link_name = "uv_thread_create")
	thread_create :: proc(tid: ^uv_thread_t, entry: uv_thread_cb, arg: rawptr) -> i32 ---

	@(link_name = "uv_thread_create_ex")
	thread_create_ex :: proc(tid: ^uv_thread_t, params: [^]uv_thread_options_t, entry: uv_thread_cb, arg: rawptr) -> i32 ---

	@(link_name = "uv_thread_setaffinity")
	thread_setaffinity :: proc(tid: ^uv_thread_t, cpumask: cstring, oldmask: cstring, mask_size: u64) -> i32 ---

	@(link_name = "uv_thread_getaffinity")
	thread_getaffinity :: proc(tid: ^uv_thread_t, cpumask: cstring, mask_size: u64) -> i32 ---

	@(link_name = "uv_thread_getcpu")
	thread_getcpu :: proc() -> i32 ---

	@(link_name = "uv_thread_self")
	thread_self :: proc() -> uv_thread_t ---

	@(link_name = "uv_thread_join")
	thread_join :: proc(tid: ^uv_thread_t) -> i32 ---

	@(link_name = "uv_thread_equal")
	thread_equal :: proc(t1: ^uv_thread_t, t2: ^uv_thread_t) -> i32 ---

	@(link_name = "uv_loop_get_data")
	loop_get_data :: proc(param0: ^uv_loop_t) -> rawptr ---

	@(link_name = "uv_loop_set_data")
	loop_set_data :: proc(param0: ^uv_loop_t, data: rawptr) ---

	@(link_name = "uv_utf16_length_as_wtf8")
	utf16_length_as_wtf8 :: proc(invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

	@(link_name = "uv_utf16_to_wtf8")
	utf16_to_wtf8 :: proc(invalid_procedure: ^^^rawptr, error_while_generating_procedure: ^^^^rawptr) ---

	@(link_name = "uv_wtf8_length_as_utf16")
	wtf8_length_as_utf16 :: proc(wtf8: cstring) -> i32 ---

	@(link_name = "uv_wtf8_to_utf16")
	wtf8_to_utf16 :: proc(wtf8: cstring, utf16: ^u16, utf16_len: u64) ---

}
