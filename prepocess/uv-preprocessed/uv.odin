package uv

ptrdiff_t :: i64
size_t :: u64
wchar_t :: i32
max_align_t :: struct {
	__max_align_ll: i64,
	__max_align_ld: [16]byte,
}
__u_char :: u8
__u_short :: u16
__u_int :: u32
__u_long :: u64
__int8_t :: i8
__uint8_t :: u8
__int16_t :: i16
__uint16_t :: u16
__int32_t :: i32
__uint32_t :: u32
__int64_t :: i64
__uint64_t :: u64
__int_least8_t :: __int8_t
__uint_least8_t :: __uint8_t
__int_least16_t :: __int16_t
__uint_least16_t :: __uint16_t
__int_least32_t :: __int32_t
__uint_least32_t :: __uint32_t
__int_least64_t :: __int64_t
__uint_least64_t :: __uint64_t
__quad_t :: i64
__u_quad_t :: u64
__intmax_t :: i64
__uintmax_t :: u64
__dev_t :: u64
__uid_t :: u32
__gid_t :: u32
__ino_t :: u64
__ino64_t :: u64
__mode_t :: u32
__nlink_t :: u64
__off_t :: i64
__off64_t :: i64
__pid_t :: i32
__fsid_t :: struct {
	__val: [2]i32,
}
__clock_t :: i64
__rlim_t :: u64
__rlim64_t :: u64
__id_t :: u32
__time_t :: i64
__useconds_t :: u32
__suseconds_t :: i64
__suseconds64_t :: i64
__daddr_t :: i32
__key_t :: i32
__clockid_t :: i32
__timer_t :: rawptr
__blksize_t :: i64
__blkcnt_t :: i64
__blkcnt64_t :: i64
__fsblkcnt_t :: u64
__fsblkcnt64_t :: u64
__fsfilcnt_t :: u64
__fsfilcnt64_t :: u64
__fsword_t :: i64
__ssize_t :: i64
__syscall_slong_t :: i64
__syscall_ulong_t :: u64
__loff_t :: __off64_t
__caddr_t :: cstring
__intptr_t :: i64
__socklen_t :: u32
__sig_atomic_t :: i32
__value_union_anon_0 :: struct #raw_union {
	__wch:  u32,
	__wchb: [4]i8,
}
__mbstate_t :: struct {
	__count: i32,
	__value: __value_union_anon_0,
}
_G_fpos_t :: struct {
	__pos:   __off_t,
	__state: __mbstate_t,
}
__fpos_t :: _G_fpos_t
_G_fpos64_t :: struct {
	__pos:   __off64_t,
	__state: __mbstate_t,
}
__fpos64_t :: _G_fpos64_t
_IO_marker :: ^^^rawptr
_IO_lock_t :: ^^^rawptr
_IO_codecvt :: ^^^rawptr
_IO_wide_data :: ^^^rawptr
_IO_FILE :: struct {
	_flags:          i32,
	_IO_read_ptr:    cstring,
	_IO_read_end:    cstring,
	_IO_read_base:   cstring,
	_IO_write_base:  cstring,
	_IO_write_ptr:   cstring,
	_IO_write_end:   cstring,
	_IO_buf_base:    cstring,
	_IO_buf_end:     cstring,
	_IO_save_base:   cstring,
	_IO_backup_base: cstring,
	_IO_save_end:    cstring,
	_markers:        [^]_IO_marker,
	_chain:          ^_IO_FILE,
	_fileno:         i32,
	_flags2:         i32,
	_old_offset:     __off_t,
	_cur_column:     u16,
	_vtable_offset:  i8,
	_shortbuf:       [1]i8,
	_lock:           ^_IO_lock_t,
	_offset:         __off64_t,
	_codecvt:        ^_IO_codecvt,
	_wide_data:      ^_IO_wide_data,
	_freeres_list:   ^_IO_FILE,
	_freeres_buf:    rawptr,
	__pad5:          u64,
	_mode:           i32,
	_unused2:        [20]i8,
}
__FILE :: _IO_FILE
FILE :: _IO_FILE
cookie_read_function_t :: #type proc "c" (
	__cookie: rawptr,
	__buf: cstring,
	__nbytes: u64,
) -> __ssize_t
cookie_write_function_t :: #type proc "c" (
	__cookie: rawptr,
	__buf: cstring,
	__nbytes: u64,
) -> __ssize_t
cookie_seek_function_t :: #type proc "c" (__cookie: rawptr, __pos: [^]__off64_t, __w: i32) -> i32
cookie_close_function_t :: #type proc "c" (__cookie: rawptr) -> i32
_IO_cookie_io_functions_t :: struct {
	read:  ^cookie_read_function_t,
	write: ^cookie_write_function_t,
	seek:  ^cookie_seek_function_t,
	close: ^cookie_close_function_t,
}
cookie_io_functions_t :: _IO_cookie_io_functions_t
off_t :: __off_t
ssize_t :: __ssize_t
fpos_t :: __fpos_t
int8_t :: __int8_t
int16_t :: __int16_t
int32_t :: __int32_t
int64_t :: __int64_t
uint8_t :: __uint8_t
uint16_t :: __uint16_t
uint32_t :: __uint32_t
uint64_t :: __uint64_t
int_least8_t :: __int_least8_t
int_least16_t :: __int_least16_t
int_least32_t :: __int_least32_t
int_least64_t :: __int_least64_t
uint_least8_t :: __uint_least8_t
uint_least16_t :: __uint_least16_t
uint_least32_t :: __uint_least32_t
uint_least64_t :: __uint_least64_t
int_fast8_t :: i8
int_fast16_t :: i64
int_fast32_t :: i64
int_fast64_t :: i64
uint_fast8_t :: u8
uint_fast16_t :: u64
uint_fast32_t :: u64
uint_fast64_t :: u64
intptr_t :: i64
uintptr_t :: u64
intmax_t :: __intmax_t
uintmax_t :: __uintmax_t
uv__queue :: struct {
	next: ^uv__queue,
	prev: ^uv__queue,
}
u_char :: __u_char
u_short :: __u_short
u_int :: __u_int
u_long :: __u_long
quad_t :: __quad_t
u_quad_t :: __u_quad_t
fsid_t :: __fsid_t
loff_t :: __loff_t
ino_t :: __ino_t
dev_t :: __dev_t
gid_t :: __gid_t
mode_t :: __mode_t
nlink_t :: __nlink_t
uid_t :: __uid_t
pid_t :: __pid_t
id_t :: __id_t
daddr_t :: __daddr_t
caddr_t :: __caddr_t
key_t :: __key_t
clock_t :: __clock_t
clockid_t :: __clockid_t
time_t :: __time_t
timer_t :: __timer_t
ulong :: u64
ushort :: u16
uint_ :: u32
u_int8_t :: __uint8_t
u_int16_t :: __uint16_t
u_int32_t :: __uint32_t
u_int64_t :: __uint64_t
register_t :: i64
__sigset_t :: struct {
	__val: [16]u64,
}
sigset_t :: __sigset_t
timeval :: struct {
	tv_sec:  __time_t,
	tv_usec: __suseconds_t,
}
timespec :: struct {
	tv_sec:  __time_t,
	tv_nsec: __syscall_slong_t,
}
suseconds_t :: __suseconds_t
__fd_mask :: i64
fd_set :: struct {
	__fds_bits: [16]__fd_mask,
}
fd_mask :: __fd_mask
blksize_t :: __blksize_t
blkcnt_t :: __blkcnt_t
fsblkcnt_t :: __fsblkcnt_t
fsfilcnt_t :: __fsfilcnt_t
__value32_struct_anon_1 :: struct {
	__low:  u32,
	__high: u32,
}
__atomic_wide_counter :: struct #raw_union {
	__value64: u64,
	__value32: __value32_struct_anon_1,
}
__pthread_internal_list :: struct {
	__prev: ^__pthread_internal_list,
	__next: ^__pthread_internal_list,
}
__pthread_list_t :: __pthread_internal_list
__pthread_internal_slist :: struct {
	__next: ^__pthread_internal_slist,
}
__pthread_slist_t :: __pthread_internal_slist
__pthread_mutex_s :: struct {
	__lock:    i32,
	__count:   u32,
	__owner:   i32,
	__nusers:  u32,
	__kind:    i32,
	__spins:   i16,
	__elision: i16,
	__list:    __pthread_list_t,
}
__pthread_rwlock_arch_t :: struct {
	__readers:       u32,
	__writers:       u32,
	__wrphase_futex: u32,
	__writers_futex: u32,
	__pad3:          u32,
	__pad4:          u32,
	__cur_writer:    i32,
	__shared:        i32,
	__rwelision:     i8,
	__pad1:          [7]u8,
	__pad2:          u64,
	__flags:         u32,
}
__pthread_cond_s :: struct {
	__wseq:         __atomic_wide_counter,
	__g1_start:     __atomic_wide_counter,
	__g_refs:       [2]u32,
	__g_size:       [2]u32,
	__g1_orig_size: u32,
	__wrefs:        u32,
	__g_signals:    [2]u32,
}
__tss_t :: u32
__thrd_t :: u64
__once_flag :: struct {
	__data: i32,
}
pthread_t :: u64
pthread_mutexattr_t :: struct #raw_union {
	__size:  [4]i8,
	__align: i32,
}
pthread_condattr_t :: struct #raw_union {
	__size:  [4]i8,
	__align: i32,
}
pthread_key_t :: u32
pthread_once_t :: i32
pthread_attr_t :: struct #raw_union {
	__size:  [56]i8,
	__align: i64,
}
pthread_mutex_t :: struct #raw_union {
	__data:  __pthread_mutex_s,
	__size:  [40]i8,
	__align: i64,
}
pthread_cond_t :: struct #raw_union {
	__data:  __pthread_cond_s,
	__size:  [48]i8,
	__align: i64,
}
pthread_rwlock_t :: struct #raw_union {
	__data:  __pthread_rwlock_arch_t,
	__size:  [56]i8,
	__align: i64,
}
pthread_rwlockattr_t :: struct #raw_union {
	__size:  [8]i8,
	__align: i64,
}
pthread_spinlock_t :: i32
pthread_barrier_t :: struct #raw_union {
	__size:  [32]i8,
	__align: i64,
}
pthread_barrierattr_t :: struct #raw_union {
	__size:  [4]i8,
	__align: i32,
}
stat :: struct {
	st_dev:           __dev_t,
	st_ino:           __ino_t,
	st_nlink:         __nlink_t,
	st_mode:          __mode_t,
	st_uid:           __uid_t,
	st_gid:           __gid_t,
	__pad0:           i32,
	st_rdev:          __dev_t,
	st_size:          __off_t,
	st_blksize:       __blksize_t,
	st_blocks:        __blkcnt_t,
	st_atim:          timespec,
	st_mtim:          timespec,
	st_ctim:          timespec,
	__glibc_reserved: [3]__syscall_slong_t,
}
flock :: struct {
	l_type:   i16,
	l_whence: i16,
	l_start:  __off_t,
	l_len:    __off_t,
	l_pid:    __pid_t,
}
dirent :: struct {
	d_ino:    __ino_t,
	d_off:    __off_t,
	d_reclen: u16,
	d_type:   u8,
	d_name:   [256]i8,
}
__dirstream :: ^^^rawptr
DIR :: __dirstream
__selector_func_ptr_anon_2 :: #type proc "c" (param0: ^dirent) -> i32
__cmp_func_ptr_anon_3 :: #type proc "c" (param0: ^^dirent, param1: ^^dirent) -> i32
iovec :: struct {
	iov_base: rawptr,
	iov_len:  u64,
}
socklen_t :: __socklen_t
__socket_type :: enum u32 {
	SOCK_STREAM    = 1,
	SOCK_DGRAM     = 2,
	SOCK_RAW       = 3,
	SOCK_RDM       = 4,
	SOCK_SEQPACKET = 5,
	SOCK_DCCP      = 6,
	SOCK_PACKET    = 10,
	SOCK_CLOEXEC   = 524288,
	SOCK_NONBLOCK  = 2048,
}
sa_family_t :: u16
msghdr :: struct {
	msg_name:       rawptr,
	msg_namelen:    socklen_t,
	msg_iov:        ^iovec,
	msg_iovlen:     u64,
	msg_control:    rawptr,
	msg_controllen: u64,
	msg_flags:      i32,
}
cmsghdr :: struct {
	cmsg_len:    u64,
	cmsg_level:  i32,
	cmsg_type:   i32,
	__cmsg_data: [^]u8,
}
__kernel_fd_set :: struct {
	fds_bits: [16]u64,
}
__kernel_sighandler_t :: #type proc "c" (param0: i32)
__kernel_key_t :: i32
__kernel_mqd_t :: i32
__kernel_old_uid_t :: u16
__kernel_old_gid_t :: u16
__kernel_old_dev_t :: u64
__kernel_long_t :: i64
__kernel_ulong_t :: u64
__kernel_ino_t :: __kernel_ulong_t
__kernel_mode_t :: u32
__kernel_pid_t :: i32
__kernel_ipc_pid_t :: i32
__kernel_uid_t :: u32
__kernel_gid_t :: u32
__kernel_suseconds_t :: __kernel_long_t
__kernel_daddr_t :: i32
__kernel_uid32_t :: u32
__kernel_gid32_t :: u32
__kernel_size_t :: __kernel_ulong_t
__kernel_ssize_t :: __kernel_long_t
__kernel_ptrdiff_t :: __kernel_long_t
__kernel_fsid_t :: struct {
	val: [2]i32,
}
__kernel_off_t :: __kernel_long_t
__kernel_loff_t :: i64
__kernel_old_time_t :: __kernel_long_t
__kernel_time_t :: __kernel_long_t
__kernel_time64_t :: i64
__kernel_clock_t :: __kernel_long_t
__kernel_timer_t :: i32
__kernel_clockid_t :: i32
__kernel_caddr_t :: cstring
__kernel_uid16_t :: u16
__kernel_gid16_t :: u16
linger :: struct {
	l_onoff:  i32,
	l_linger: i32,
}
osockaddr :: struct {
	sa_family: u16,
	sa_data:   [14]u8,
}
in_addr_t :: u32
in_addr :: struct {
	s_addr: in_addr_t,
}
ip_opts :: struct {
	ip_dst:    in_addr,
	ip_opts_m: [40]i8,
}
in_pktinfo :: struct {
	ipi_ifindex:  i32,
	ipi_spec_dst: in_addr,
	ipi_addr:     in_addr,
}
in_port_t :: u16
__in6_u_union_anon_4 :: struct #raw_union {
	__u6_addr8:  [16]u8,
	__u6_addr16: [8]u16,
	__u6_addr32: [4]u32,
}
in6_addr :: struct {
	__in6_u: __in6_u_union_anon_4,
}
ip_mreq :: struct {
	imr_multiaddr: in_addr,
	imr_interface: in_addr,
}
ip_mreqn :: struct {
	imr_multiaddr: in_addr,
	imr_address:   in_addr,
	imr_ifindex:   i32,
}
ip_mreq_source :: struct {
	imr_multiaddr:  in_addr,
	imr_interface:  in_addr,
	imr_sourceaddr: in_addr,
}
ipv6_mreq :: struct {
	ipv6mr_multiaddr: in6_addr,
	ipv6mr_interface: u32,
}
ip_msfilter :: struct {
	imsf_multiaddr: in_addr,
	imsf_interface: in_addr,
	imsf_fmode:     u32,
	imsf_numsrc:    u32,
	imsf_slist:     [1]in_addr,
}
tcp_seq :: u32

tcphdr :: ^^^rawptr
tcp_ca_state :: enum u32 {
	TCP_CA_Open     = 0,
	TCP_CA_Disorder = 1,
	TCP_CA_CWR      = 2,
	TCP_CA_Recovery = 3,
	TCP_CA_Loss     = 4,
}
tcp_info :: ^^^rawptr
tcp_repair_opt :: struct {
	opt_code: u32,
	opt_val:  u32,
}
tcp_cookie_transactions :: struct {
	tcpct_flags:          u16,
	__tcpct_pad1:         u8,
	tcpct_cookie_desired: u8,
	tcpct_s_data_desired: u16,
	tcpct_used:           u16,
	tcpct_value:          [536]u8,
}
tcp_repair_window :: struct {
	snd_wl1:    u32,
	snd_wnd:    u32,
	max_window: u32,
	rcv_wnd:    u32,
	rcv_wup:    u32,
}
tcp_zerocopy_receive :: struct {
	address:        u64,
	length:         u32,
	recv_skip_hint: u32,
}
rpcent :: struct {
	r_name:    cstring,
	r_aliases: [^]cstring,
	r_number:  i32,
}
netent :: struct {
	n_name:     cstring,
	n_aliases:  [^]cstring,
	n_addrtype: i32,
	n_net:      u32,
}
hostent :: struct {
	h_name:      cstring,
	h_aliases:   [^]cstring,
	h_addrtype:  i32,
	h_length:    i32,
	h_addr_list: ^cstring,
}
servent :: struct {
	s_name:    cstring,
	s_aliases: [^]cstring,
	s_port:    i32,
	s_proto:   cstring,
}
protoent :: struct {
	p_name:    cstring,
	p_aliases: [^]cstring,
	p_proto:   i32,
}
addrinfo :: struct {
	ai_flags:     i32,
	ai_family:    i32,
	ai_socktype:  i32,
	ai_protocol:  i32,
	ai_addrlen:   socklen_t,
	ai_addr:      rawptr,
	ai_canonname: cstring,
	ai_next:      ^addrinfo,
}
cc_t :: u8
speed_t :: u32
tcflag_t :: u32
termios :: struct {
	c_iflag:  tcflag_t,
	c_oflag:  tcflag_t,
	c_cflag:  tcflag_t,
	c_lflag:  tcflag_t,
	c_line:   cc_t,
	c_cc:     [32]cc_t,
	c_ispeed: speed_t,
	c_ospeed: speed_t,
}
passwd :: struct {
	pw_name:   cstring,
	pw_passwd: cstring,
	pw_uid:    __uid_t,
	pw_gid:    __gid_t,
	pw_gecos:  cstring,
	pw_dir:    cstring,
	pw_shell:  cstring,
}
sem_t :: struct #raw_union {
	__size:  [32]i8,
	__align: i64,
}
sig_atomic_t :: __sig_atomic_t
sigval :: struct #raw_union {
	sival_int: i32,
	sival_ptr: rawptr,
}
__sigval_t :: sigval
_kill_struct_anon_5 :: struct {
	si_pid: __pid_t,
	si_uid: __uid_t,
}
_timer_struct_anon_6 :: struct {
	si_tid:     i32,
	si_overrun: i32,
	si_sigval:  __sigval_t,
}
_rt_struct_anon_7 :: struct {
	si_pid:    __pid_t,
	si_uid:    __uid_t,
	si_sigval: __sigval_t,
}
_sigchld_struct_anon_8 :: struct {
	si_pid:    __pid_t,
	si_uid:    __uid_t,
	si_status: i32,
	si_utime:  __clock_t,
	si_stime:  __clock_t,
}
_addr_bnd_struct_anon_9 :: struct {
	_lower: rawptr,
	_upper: rawptr,
}
_bounds_union_anon_10 :: struct #raw_union {
	_addr_bnd: _addr_bnd_struct_anon_9,
	_pkey:     __uint32_t,
}
_sigfault_struct_anon_11 :: struct {
	si_addr:     rawptr,
	si_addr_lsb: i16,
	_bounds:     _bounds_union_anon_10,
}
_sigpoll_struct_anon_12 :: struct {
	si_band: i64,
	si_fd:   i32,
}
_sigsys_struct_anon_13 :: struct {
	_call_addr: rawptr,
	_syscall:   i32,
	_arch:      u32,
}
_sifields_union_anon_14 :: struct #raw_union {
	_pad:      [28]i32,
	_kill:     _kill_struct_anon_5,
	_timer:    _timer_struct_anon_6,
	_rt:       _rt_struct_anon_7,
	_sigchld:  _sigchld_struct_anon_8,
	_sigfault: _sigfault_struct_anon_11,
	_sigpoll:  _sigpoll_struct_anon_12,
	_sigsys:   _sigsys_struct_anon_13,
}
siginfo_t :: struct {
	si_signo:  i32,
	si_errno:  i32,
	si_code:   i32,
	__pad0:    i32,
	_sifields: _sifields_union_anon_14,
}
sigval_t :: __sigval_t
_function_func_ptr_anon_15 :: #type proc "c" (param0: __sigval_t)
_sigev_thread_struct_anon_16 :: struct {
	_function:  _function_func_ptr_anon_15,
	_attribute: ^pthread_attr_t,
}
_sigev_un_union_anon_17 :: struct #raw_union {
	_pad:          [12]i32,
	_tid:          __pid_t,
	_sigev_thread: _sigev_thread_struct_anon_16,
}
sigevent :: ^^^rawptr
sigevent_t :: sigevent
__sighandler_t :: #type proc "c" (param0: i32)
sig_t :: __sighandler_t
sa_sigaction_func_ptr_anon_18 :: #type proc "c" (param0: i32, param1: ^siginfo_t, param2: rawptr)
__sigaction_handler_union_anon_19 :: struct #raw_union {
	sa_handler:   __sighandler_t,
	sa_sigaction: sa_sigaction_func_ptr_anon_18,
}
sa_restorer_func_ptr_anon_20 :: #type proc "c" ()
sigaction :: struct {
	__sigaction_handler: __sigaction_handler_union_anon_19,
	sa_mask:             __sigset_t,
	sa_flags:            i32,
	sa_restorer:         sa_restorer_func_ptr_anon_20,
}
_fpx_sw_bytes :: struct {
	magic1:            __uint32_t,
	extended_size:     __uint32_t,
	xstate_bv:         __uint64_t,
	xstate_size:       __uint32_t,
	__glibc_reserved1: [7]__uint32_t,
}
_fpreg :: struct {
	significand: [4]u16,
	exponent:    u16,
}
_fpxreg :: struct {
	significand:       [4]u16,
	exponent:          u16,
	__glibc_reserved1: [3]u16,
}
_xmmreg :: struct {
	element: [4]__uint32_t,
}
_fpstate :: struct {
	cwd:               __uint16_t,
	swd:               __uint16_t,
	ftw:               __uint16_t,
	fop:               __uint16_t,
	rip:               __uint64_t,
	rdp:               __uint64_t,
	mxcsr:             __uint32_t,
	mxcr_mask:         __uint32_t,
	_st:               [8]_fpxreg,
	_xmm:              [16]_xmmreg,
	__glibc_reserved1: [24]__uint32_t,
}
sigcontext :: struct {
	r8:          __uint64_t,
	r9:          __uint64_t,
	r10:         __uint64_t,
	r11:         __uint64_t,
	r12:         __uint64_t,
	r13:         __uint64_t,
	r14:         __uint64_t,
	r15:         __uint64_t,
	rdi:         __uint64_t,
	rsi:         __uint64_t,
	rbp:         __uint64_t,
	rbx:         __uint64_t,
	rdx:         __uint64_t,
	rax:         __uint64_t,
	rcx:         __uint64_t,
	rsp:         __uint64_t,
	rip:         __uint64_t,
	eflags:      __uint64_t,
	cs:          u16,
	gs:          u16,
	fs:          u16,
	__pad0:      u16,
	err:         __uint64_t,
	trapno:      __uint64_t,
	oldmask:     __uint64_t,
	cr2:         __uint64_t,
	__reserved1: [8]__uint64_t,
}
_xsave_hdr :: struct {
	xstate_bv:         __uint64_t,
	__glibc_reserved1: [2]__uint64_t,
	__glibc_reserved2: [5]__uint64_t,
}
_ymmh_state :: struct {
	ymmh_space: [64]__uint32_t,
}
_xstate :: struct {
	fpstate:    _fpstate,
	xstate_hdr: _xsave_hdr,
	ymmh:       _ymmh_state,
}
stack_t :: struct {
	ss_sp:    rawptr,
	ss_flags: i32,
	ss_size:  u64,
}
greg_t :: i64
gregset_t :: [23]greg_t
_libc_fpxreg :: struct {
	significand:       [4]u16,
	exponent:          u16,
	__glibc_reserved1: [3]u16,
}
_libc_xmmreg :: struct {
	element: [4]__uint32_t,
}
_libc_fpstate :: struct {
	cwd:               __uint16_t,
	swd:               __uint16_t,
	ftw:               __uint16_t,
	fop:               __uint16_t,
	rip:               __uint64_t,
	rdp:               __uint64_t,
	mxcsr:             __uint32_t,
	mxcr_mask:         __uint32_t,
	_st:               [8]_libc_fpxreg,
	_xmm:              [16]_libc_xmmreg,
	__glibc_reserved1: [24]__uint32_t,
}
fpregset_t :: ^_libc_fpstate
mcontext_t :: struct {
	gregs:       gregset_t,
	fpregs:      fpregset_t,
	__reserved1: [8]u64,
}
ucontext_t :: struct {
	uc_flags:     u64,
	uc_link:      ^ucontext_t,
	uc_stack:     stack_t,
	uc_mcontext:  mcontext_t,
	uc_sigmask:   sigset_t,
	__fpregs_mem: _libc_fpstate,
	__ssp:        [4]u64,
}
sigstack :: struct {
	ss_sp:      rawptr,
	ss_onstack: i32,
}
sched_param :: struct {
	sched_priority: i32,
}
__cpu_mask :: u64
cpu_set_t :: struct {
	__bits: [16]__cpu_mask,
}
tm :: struct {
	tm_sec:    i32,
	tm_min:    i32,
	tm_hour:   i32,
	tm_mday:   i32,
	tm_mon:    i32,
	tm_year:   i32,
	tm_wday:   i32,
	tm_yday:   i32,
	tm_isdst:  i32,
	tm_gmtoff: i64,
	tm_zone:   cstring,
}
itimerspec :: struct {
	it_interval: timespec,
	it_value:    timespec,
}
__locale_data :: ^^^rawptr
__locale_struct :: struct {
	__locales:       ^[13][^]__locale_data,
	__ctype_b:       ^u16,
	__ctype_tolower: ^i32,
	__ctype_toupper: ^i32,
	__names:         [13]cstring,
}
__locale_t :: ^__locale_struct
locale_t :: __locale_t
__jmp_buf :: [8]i64
__jmp_buf_tag :: struct {
	__jmpbuf:         __jmp_buf,
	__mask_was_saved: i32,
	__saved_mask:     __sigset_t,
}
__routine_func_ptr_anon_21 :: #type proc "c" (param0: rawptr)
_pthread_cleanup_buffer :: struct {
	__routine:    __routine_func_ptr_anon_21,
	__arg:        rawptr,
	__canceltype: i32,
	__prev:       ^_pthread_cleanup_buffer,
}
__start_routine_func_ptr_anon_22 :: #type proc "c" (param0: rawptr) -> rawptr
__init_routine_func_ptr_anon_23 :: #type proc "c" ()
__cancel_jmp_buf_tag :: struct {
	__cancel_jmp_buf: __jmp_buf,
	__mask_was_saved: i32,
}
__pthread_unwind_buf_t :: struct {
	__cancel_jmp_buf: [1]__cancel_jmp_buf_tag,
	__pad:            [4]rawptr,
}
__cancel_routine_func_ptr_anon_24 :: #type proc "c" (param0: rawptr)
__pthread_cleanup_frame :: struct {
	__cancel_routine: __cancel_routine_func_ptr_anon_24,
	__cancel_arg:     rawptr,
	__do_it:          i32,
	__cancel_type:    i32,
}
__destr_function_func_ptr_anon_25 :: #type proc "c" (param0: rawptr)
__prepare_func_ptr_anon_26 :: #type proc "c" ()
__parent_func_ptr_anon_27 :: #type proc "c" ()
__child_func_ptr_anon_28 :: #type proc "c" ()
work_func_ptr_anon_29 :: #type proc "c" (w: ^uv__work)
done_func_ptr_anon_30 :: #type proc "c" (w: ^uv__work, status: i32)
active_reqs_union_anon_53 :: struct #raw_union {
	unused: rawptr,
	count:  u32,
}
uv_mutex_t :: pthread_mutex_t
uv_rwlock_t :: pthread_rwlock_t
async_unused_func_ptr_anon_54 :: #type proc "c" ()
timer_heap_struct_anon_55 :: struct {
	min:   rawptr,
	nelts: u32,
}
uv_loop_s :: struct {
	data:                 rawptr,
	active_handles:       u32,
	handle_queue:         uv__queue,
	active_reqs:          active_reqs_union_anon_53,
	internal_fields:      rawptr,
	stop_flag:            u32,
	flags:                u64,
	backend_fd:           i32,
	pending_queue:        uv__queue,
	watcher_queue:        uv__queue,
	watchers:             ^[^]uv__io_t,
	nwatchers:            u32,
	nfds:                 u32,
	wq:                   uv__queue,
	wq_mutex:             uv_mutex_t,
	wq_async:             uv_async_t,
	cloexec_lock:         uv_rwlock_t,
	closing_handles:      [^]uv_handle_t,
	process_handles:      uv__queue,
	prepare_handles:      uv__queue,
	check_handles:        uv__queue,
	idle_handles:         uv__queue,
	async_handles:        uv__queue,
	async_unused:         async_unused_func_ptr_anon_54,
	async_io_watcher:     uv__io_t,
	async_wfd:            i32,
	timer_heap:           timer_heap_struct_anon_55,
	timer_counter:        u64,
	time:                 u64,
	signal_pipefd:        [2]i32,
	signal_io_watcher:    uv__io_t,
	child_watcher:        uv_signal_t,
	emfile_fd:            i32,
	inotify_read_watcher: uv__io_t,
	inotify_watchers:     rawptr,
	inotify_fd:           i32,
}
uv__work :: struct {
	work: work_func_ptr_anon_29,
	done: done_func_ptr_anon_30,
	loop: ^uv_loop_s,
	wq:   uv__queue,
}
uv__io_s :: struct {
	cb:            uv__io_cb,
	pending_queue: uv__queue,
	watcher_queue: uv__queue,
	pevents:       u32,
	events:        u32,
	fd:            i32,
}
uv__io_cb :: #type proc "c" (loop: ^uv_loop_s, w: ^uv__io_s, events: u32)
uv__io_t :: uv__io_s
uv_buf_t :: struct {
	base: cstring,
	len:  u64,
}
uv_file :: i32
uv_os_sock_t :: i32
uv_os_fd_t :: i32
uv_pid_t :: pid_t
uv_once_t :: pthread_once_t
uv_thread_t :: pthread_t
uv_sem_t :: sem_t
uv_cond_t :: pthread_cond_t
uv_key_t :: pthread_key_t
uv_barrier_t :: pthread_barrier_t
uv_gid_t :: gid_t
uv_uid_t :: uid_t
uv__dirent_t :: dirent
uv_lib_t :: struct {
	handle: rawptr,
	errmsg: cstring,
}
uv_errno_t :: enum i32 {
	E2BIG           = -7,
	EACCES          = -13,
	EADDRINUSE      = -98,
	EADDRNOTAVAIL   = -99,
	EAFNOSUPPORT    = -97,
	EAGAIN          = -11,
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
	EALREADY        = -114,
	EBADF           = -9,
	EBUSY           = -16,
	ECANCELED       = -125,
	ECHARSET        = -4080,
	ECONNABORTED    = -103,
	ECONNREFUSED    = -111,
	ECONNRESET      = -104,
	EDESTADDRREQ    = -89,
	EEXIST          = -17,
	EFAULT          = -14,
	EFBIG           = -27,
	EHOSTUNREACH    = -113,
	EINTR           = -4,
	EINVAL          = -22,
	EIO             = -5,
	EISCONN         = -106,
	EISDIR          = -21,
	ELOOP           = -40,
	EMFILE          = -24,
	EMSGSIZE        = -90,
	ENAMETOOLONG    = -36,
	ENETDOWN        = -100,
	ENETUNREACH     = -101,
	ENFILE          = -23,
	ENOBUFS         = -105,
	ENODEV          = -19,
	ENOENT          = -2,
	ENOMEM          = -12,
	ENONET          = -64,
	ENOPROTOOPT     = -92,
	ENOSPC          = -28,
	ENOSYS          = -38,
	ENOTCONN        = -107,
	ENOTDIR         = -20,
	ENOTEMPTY       = -39,
	ENOTSOCK        = -88,
	ENOTSUP         = -95,
	EOVERFLOW       = -75,
	EPERM           = -1,
	EPIPE           = -32,
	EPROTO          = -71,
	EPROTONOSUPPORT = -93,
	EPROTOTYPE      = -91,
	ERANGE          = -34,
	EROFS           = -30,
	ESHUTDOWN       = -108,
	ESPIPE          = -29,
	ESRCH           = -3,
	ETIMEDOUT       = -110,
	ETXTBSY         = -26,
	EXDEV           = -18,
	UNKNOWN         = -4094,
	EOF             = -4095,
	ENXIO           = -6,
	EMLINK          = -31,
	EHOSTDOWN       = -112,
	EREMOTEIO       = -121,
	ENOTTY          = -25,
	EFTYPE          = -4028,
	EILSEQ          = -84,
	ESOCKTNOSUPPORT = -94,
	ENODATA         = -61,
	EUNATCH         = -49,
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
u_union_anon_31 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_handle_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_31,
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
	dir:      ^DIR,
}
uv_dir_t :: uv_dir_s
uv_close_cb :: #type proc "c" (handle: ^uv_handle_t)
u_union_anon_32 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_alloc_cb :: #type proc "c" (handle: ^uv_handle_t, suggested_size: u64, buf: ^uv_buf_t)
uv_stream_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_32,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      u64,
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
u_union_anon_33 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_read_cb :: #type proc "c" (stream: ^uv_stream_t, nread: ssize_t, buf: ^uv_buf_t)
uv_connect_t :: uv_connect_s
uv_shutdown_t :: uv_shutdown_s
uv_connection_cb :: #type proc "c" (server: ^uv_stream_t, status: i32)
uv_tcp_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_33,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      u64,
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
u_union_anon_34 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_udp_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_34,
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
u_union_anon_36 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_pipe_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_36,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      u64,
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
u_union_anon_35 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_tty_s :: struct {
	data:                  rawptr,
	loop:                  ^uv_loop_t,
	type:                  uv_handle_type,
	close_cb:              uv_close_cb,
	handle_queue:          uv__queue,
	u:                     u_union_anon_35,
	next_closing:          ^uv_handle_t,
	flags:                 u32,
	write_queue_size:      u64,
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
u_union_anon_37 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_poll_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_37,
	next_closing: ^uv_handle_t,
	flags:        u32,
	poll_cb:      uv_poll_cb,
	io_watcher:   uv__io_t,
}
uv_poll_t :: uv_poll_s
u_union_anon_42 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
node_union_anon_43 :: struct #raw_union {
	heap:  [3]rawptr,
	queue: uv__queue,
}
uv_timer_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_42,
	next_closing: ^uv_handle_t,
	flags:        u32,
	timer_cb:     uv_timer_cb,
	node:         node_union_anon_43,
	timeout:      u64,
	repeat:       u64,
	start_id:     u64,
}
uv_timer_t :: uv_timer_s
u_union_anon_38 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_prepare_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_38,
	next_closing: ^uv_handle_t,
	flags:        u32,
	prepare_cb:   uv_prepare_cb,
	queue:        uv__queue,
}
uv_prepare_t :: uv_prepare_s
u_union_anon_39 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_check_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_39,
	next_closing: ^uv_handle_t,
	flags:        u32,
	check_cb:     uv_check_cb,
	queue:        uv__queue,
}
uv_check_t :: uv_check_s
u_union_anon_40 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_idle_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_40,
	next_closing: ^uv_handle_t,
	flags:        u32,
	idle_cb:      uv_idle_cb,
	queue:        uv__queue,
}
uv_idle_t :: uv_idle_s
u_union_anon_41 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_async_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_41,
	next_closing: ^uv_handle_t,
	flags:        u32,
	async_cb:     uv_async_cb,
	queue:        uv__queue,
	pending:      i32,
}
uv_async_t :: uv_async_s
u_union_anon_45 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_process_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_45,
	next_closing: ^uv_handle_t,
	flags:        u32,
	exit_cb:      uv_exit_cb,
	pid:          i32,
	queue:        uv__queue,
	status:       i32,
}
uv_process_t :: uv_process_s
u_union_anon_48 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_fs_event_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_48,
	next_closing: ^uv_handle_t,
	flags:        u32,
	path:         cstring,
	cb:           uv_fs_event_cb,
	watchers:     uv__queue,
	wd:           i32,
}
uv_fs_event_t :: uv_fs_event_s
u_union_anon_49 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_fs_poll_s :: struct {
	data:         rawptr,
	loop:         ^uv_loop_t,
	type:         uv_handle_type,
	close_cb:     uv_close_cb,
	handle_queue: uv__queue,
	u:            u_union_anon_49,
	next_closing: ^uv_handle_t,
	flags:        u32,
	poll_ctx:     rawptr,
}
uv_fs_poll_t :: uv_fs_poll_s
u_union_anon_50 :: struct #raw_union {
	fd:       i32,
	reserved: [4]rawptr,
}
uv_signal_s :: struct {
	data:               rawptr,
	loop:               ^uv_loop_t,
	type:               uv_handle_type,
	close_cb:           uv_close_cb,
	handle_queue:       uv__queue,
	u:                  u_union_anon_50,
	next_closing:       ^uv_handle_t,
	flags:              u32,
	signal_cb:          uv_signal_cb,
	signum:             i32,
	tree_entry:         tree_entry_struct_anon_51,
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
uv_fs_s :: struct {
	data:     rawptr,
	type:     uv_req_type,
	reserved: [6]rawptr,
	fs_type:  uv_fs_type,
	loop:     ^uv_loop_t,
	cb:       uv_fs_cb,
	result:   ssize_t,
	ptr:      rawptr,
	path:     cstring,
	statbuf:  uv_stat_t,
	new_path: cstring,
	file:     uv_file,
	flags:    i32,
	mode:     mode_t,
	nbufs:    u32,
	bufs:     [^]uv_buf_t,
	off:      off_t,
	uid:      uv_uid_t,
	gid:      uv_gid_t,
	atime:    f64,
	mtime:    f64,
	work_req: uv__work,
	bufsml:   [4]uv_buf_t,
}
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
uv_udp_recv_cb :: #type proc "c" (
	handle: ^uv_udp_t,
	nread: ssize_t,
	buf: ^uv_buf_t,
	addr: rawptr,
	flags: u32,
)
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
data_union_anon_44 :: struct #raw_union {
	stream: ^uv_stream_t,
	fd:     i32,
}
uv_stdio_container_s :: struct {
	flags: uv_stdio_flags,
	data:  data_union_anon_44,
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
tree_entry_struct_anon_51 :: struct {
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
callback_func_ptr_anon_52 :: #type proc "c" ()
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
	loop_size :: proc() -> u64 ---

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
	handle_size :: proc(type: uv_handle_type) -> u64 ---

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
	req_size :: proc(type: uv_req_type) -> u64 ---

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
	stream_get_write_queue_size :: proc(stream: ^uv_stream_t) -> u64 ---

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
	tcp_bind :: proc(handle: ^uv_tcp_t, addr: rawptr, flags: u32) -> i32 ---

	@(link_name = "uv_tcp_getsockname")
	tcp_getsockname :: proc(handle: ^uv_tcp_t, name: rawptr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_tcp_getpeername")
	tcp_getpeername :: proc(handle: ^uv_tcp_t, name: rawptr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_tcp_close_reset")
	tcp_close_reset :: proc(handle: ^uv_tcp_t, close_cb: uv_close_cb) -> i32 ---

	@(link_name = "uv_tcp_connect")
	tcp_connect :: proc(req: ^uv_connect_t, handle: ^uv_tcp_t, addr: rawptr, cb: uv_connect_cb) -> i32 ---

	@(link_name = "uv_udp_init")
	udp_init :: proc(param0: ^uv_loop_t, handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_init_ex")
	udp_init_ex :: proc(param0: ^uv_loop_t, handle: ^uv_udp_t, flags: u32) -> i32 ---

	@(link_name = "uv_udp_open")
	udp_open :: proc(handle: ^uv_udp_t, sock: uv_os_sock_t) -> i32 ---

	@(link_name = "uv_udp_bind")
	udp_bind :: proc(handle: ^uv_udp_t, addr: rawptr, flags: u32) -> i32 ---

	@(link_name = "uv_udp_connect")
	udp_connect :: proc(handle: ^uv_udp_t, addr: rawptr) -> i32 ---

	@(link_name = "uv_udp_getpeername")
	udp_getpeername :: proc(handle: ^uv_udp_t, name: rawptr, namelen: ^i32) -> i32 ---

	@(link_name = "uv_udp_getsockname")
	udp_getsockname :: proc(handle: ^uv_udp_t, name: rawptr, namelen: ^i32) -> i32 ---

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
	udp_send :: proc(req: ^uv_udp_send_t, handle: ^uv_udp_t, bufs: [^]uv_buf_t, nbufs: u32, addr: rawptr, send_cb: uv_udp_send_cb) -> i32 ---

	@(link_name = "uv_udp_try_send")
	udp_try_send :: proc(handle: ^uv_udp_t, bufs: [^]uv_buf_t, nbufs: u32, addr: rawptr) -> i32 ---

	@(link_name = "uv_udp_recv_start")
	udp_recv_start :: proc(handle: ^uv_udp_t, alloc_cb: uv_alloc_cb, recv_cb: uv_udp_recv_cb) -> i32 ---

	@(link_name = "uv_udp_using_recvmmsg")
	udp_using_recvmmsg :: proc(handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_recv_stop")
	udp_recv_stop :: proc(handle: ^uv_udp_t) -> i32 ---

	@(link_name = "uv_udp_get_send_queue_size")
	udp_get_send_queue_size :: proc(handle: ^uv_udp_t) -> u64 ---

	@(link_name = "uv_udp_get_send_queue_count")
	udp_get_send_queue_count :: proc(handle: ^uv_udp_t) -> u64 ---

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
	getnameinfo :: proc(loop: ^uv_loop_t, req: ^uv_getnameinfo_t, getnameinfo_cb: uv_getnameinfo_cb, addr: rawptr, flags: i32) -> i32 ---

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
	fs_get_result :: proc(param0: ^uv_fs_t) -> ssize_t ---

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
	ip4_addr :: proc(ip: cstring, port: i32, addr: rawptr) -> i32 ---

	@(link_name = "uv_ip6_addr")
	ip6_addr :: proc(ip: cstring, port: i32, addr: rawptr) -> i32 ---

	@(link_name = "uv_ip4_name")
	ip4_name :: proc(src: rawptr, dst: cstring, size: u64) -> i32 ---

	@(link_name = "uv_ip6_name")
	ip6_name :: proc(src: rawptr, dst: cstring, size: u64) -> i32 ---

	@(link_name = "uv_ip_name")
	ip_name :: proc(src: rawptr, dst: cstring, size: u64) -> i32 ---

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
	once :: proc(guard: ^uv_once_t, callback: callback_func_ptr_anon_52) ---

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
	utf16_length_as_wtf8 :: proc(utf16: ^u16, utf16_len: ssize_t) -> u64 ---

	@(link_name = "uv_utf16_to_wtf8")
	utf16_to_wtf8 :: proc(utf16: ^u16, utf16_len: ssize_t, wtf8_ptr: ^cstring, wtf8_len_ptr: ^u64) -> i32 ---

	@(link_name = "uv_wtf8_length_as_utf16")
	wtf8_length_as_utf16 :: proc(wtf8: cstring) -> ssize_t ---

	@(link_name = "uv_wtf8_to_utf16")
	wtf8_to_utf16 :: proc(wtf8: cstring, utf16: ^u16, utf16_len: u64) ---

}
