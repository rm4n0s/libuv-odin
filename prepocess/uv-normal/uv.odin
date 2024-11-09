package uv

import "core:c/libc"
import "core:sys/linux"
import "core:sys/posix"

pthread_rwlock_t :: [56]i8
queue :: struct {
    next: ^queue,
    prev: ^queue,
}
errno_t :: enum i32 {E2BIG = -4093, EACCES = -4092, EADDRINUSE = -4091, EADDRNOTAVAIL = -4090, EAFNOSUPPORT = -4089, EAGAIN = -4088, EAI_ADDRFAMILY = -3000, EAI_AGAIN = -3001, EAI_BADFLAGS = -3002, EAI_BADHINTS = -3013, EAI_CANCELED = -3003, EAI_FAIL = -3004, EAI_FAMILY = -3005, EAI_MEMORY = -3006, EAI_NODATA = -3007, EAI_NONAME = -3008, EAI_OVERFLOW = -3009, EAI_PROTOCOL = -3014, EAI_SERVICE = -3010, EAI_SOCKTYPE = -3011, EALREADY = -4084, EBADF = -4083, EBUSY = -4082, ECANCELED = -4081, ECHARSET = -4080, ECONNABORTED = -4079, ECONNREFUSED = -4078, ECONNRESET = -4077, EDESTADDRREQ = -4076, EEXIST = -4075, EFAULT = -4074, EFBIG = -4036, EHOSTUNREACH = -4073, EINTR = -4072, EINVAL = -4071, EIO = -4070, EISCONN = -4069, EISDIR = -4068, ELOOP = -4067, EMFILE = -4066, EMSGSIZE = -4065, ENAMETOOLONG = -4064, ENETDOWN = -4063, ENETUNREACH = -4062, ENFILE = -4061, ENOBUFS = -4060, ENODEV = -4059, ENOENT = -4058, ENOMEM = -4057, ENONET = -4056, ENOPROTOOPT = -4035, ENOSPC = -4055, ENOSYS = -4054, ENOTCONN = -4053, ENOTDIR = -4052, ENOTEMPTY = -4051, ENOTSOCK = -4050, ENOTSUP = -4049, EOVERFLOW = -4026, EPERM = -4048, EPIPE = -4047, EPROTO = -4046, EPROTONOSUPPORT = -4045, EPROTOTYPE = -4044, ERANGE = -4034, EROFS = -4043, ESHUTDOWN = -4042, ESPIPE = -4041, ESRCH = -4040, ETIMEDOUT = -4039, ETXTBSY = -4038, EXDEV = -4037, UNKNOWN = -4094, EOF = -4095, ENXIO = -4033, EMLINK = -4032, EHOSTDOWN = -4031, EREMOTEIO = -4030, ENOTTY = -4029, EFTYPE = -4028, EILSEQ = -4027, ESOCKTNOSUPPORT = -4025, ENODATA = -4024, EUNATCH = -4023, ERRNO_MAX = -4096, }
handle_type :: enum u32 {UNKNOWN_HANDLE = 0, ASYNC = 1, CHECK = 2, FS_EVENT = 3, FS_POLL = 4, HANDLE = 5, IDLE = 6, NAMED_PIPE = 7, POLL = 8, PREPARE = 9, PROCESS = 10, STREAM = 11, TCP = 12, TIMER = 13, TTY = 14, UDP = 15, SIGNAL = 16, FILE = 17, HANDLE_TYPE_MAX = 18, }
req_type :: enum u32 {UNKNOWN_REQ = 0, REQ = 1, CONNECT = 2, WRITE = 3, SHUTDOWN = 4, UDP_SEND = 5, FS = 6, WORK = 7, GETADDRINFO = 8, GETNAMEINFO = 9, RANDOM = 10, REQ_TYPE_MAX = 11, }
loop_t :: loop_s
u_union_anon_0 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
handle_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_0,
    next_closing: ^handle_t,
    flags: u32,
}
handle_t :: handle_s
dirent_type_t :: enum u32 {DIRENT_UNKNOWN = 0, DIRENT_FILE = 1, DIRENT_DIR = 2, DIRENT_LINK = 3, DIRENT_FIFO = 4, DIRENT_SOCKET = 5, DIRENT_CHAR = 6, DIRENT_BLOCK = 7, }
dirent_s :: struct {
    name: cstring,
    type: dirent_type_t,
}
dirent_t :: dirent_s
dir_s :: struct {
    dirents: [^]dirent_t,
    nentries: u64,
    reserved: [4]rawptr,
    dir: ^posix.DIR,
}
dir_t :: dir_s
close_cb :: #type proc "c" (handle: ^handle_t)
u_union_anon_1 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
buf_t :: struct {
    base: cstring,
    len: u64,
}
alloc_cb :: #type proc "c" (handle: ^handle_t, suggested_size: u64, buf: ^buf_t)
io_t :: io_s
stream_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_1,
    next_closing: ^handle_t,
    flags: u32,
    write_queue_size: u64,
    alloc_cb_m: alloc_cb,
    read_cb_m: read_cb,
    connect_req: ^connect_t,
    shutdown_req: ^shutdown_t,
    io_watcher: io_t,
    write_queue: queue,
    write_completed_queue: queue,
    connection_cb_m: connection_cb,
    delayed_error: i32,
    accepted_fd: i32,
    queued_fds: rawptr,
}
stream_t :: stream_s
u_union_anon_2 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
read_cb :: #type proc "c" (stream: ^stream_t, nread: i64, buf: ^buf_t)
connect_t :: connect_s
shutdown_t :: shutdown_s
connection_cb :: #type proc "c" (server: ^stream_t, status: i32)
tcp_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_2,
    next_closing: ^handle_t,
    flags: u32,
    write_queue_size: u64,
    alloc_cb_m: alloc_cb,
    read_cb_m: read_cb,
    connect_req: ^connect_t,
    shutdown_req: ^shutdown_t,
    io_watcher: io_t,
    write_queue: queue,
    write_completed_queue: queue,
    connection_cb_m: connection_cb,
    delayed_error: i32,
    accepted_fd: i32,
    queued_fds: rawptr,
}
tcp_t :: tcp_s
u_union_anon_3 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
udp_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_3,
    next_closing: ^handle_t,
    flags: u32,
    send_queue_size: u64,
    send_queue_count: u64,
    alloc_cb_m: alloc_cb,
    recv_cb: udp_recv_cb,
    io_watcher: io_t,
    write_queue: queue,
    write_completed_queue: queue,
}
udp_t :: udp_s
u_union_anon_5 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
pipe_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_5,
    next_closing: ^handle_t,
    flags: u32,
    write_queue_size: u64,
    alloc_cb_m: alloc_cb,
    read_cb_m: read_cb,
    connect_req: ^connect_t,
    shutdown_req: ^shutdown_t,
    io_watcher: io_t,
    write_queue: queue,
    write_completed_queue: queue,
    connection_cb_m: connection_cb,
    delayed_error: i32,
    accepted_fd: i32,
    queued_fds: rawptr,
    ipc: i32,
    pipe_fname: cstring,
}
pipe_t :: pipe_s
u_union_anon_4 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
tty_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_4,
    next_closing: ^handle_t,
    flags: u32,
    write_queue_size: u64,
    alloc_cb_m: alloc_cb,
    read_cb_m: read_cb,
    connect_req: ^connect_t,
    shutdown_req: ^shutdown_t,
    io_watcher: io_t,
    write_queue: queue,
    write_completed_queue: queue,
    connection_cb_m: connection_cb,
    delayed_error: i32,
    accepted_fd: i32,
    queued_fds: rawptr,
    orig_termios: posix.termios,
    mode: i32,
}
tty_t :: tty_s
u_union_anon_6 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
poll_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_6,
    next_closing: ^handle_t,
    flags: u32,
    poll_cb_m: poll_cb,
    io_watcher: io_t,
}
poll_t :: poll_s
u_union_anon_11 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
node_union_anon_12 :: struct #raw_union {heap: [3]rawptr, queue_m: queue, }
timer_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_11,
    next_closing: ^handle_t,
    flags: u32,
    timer_cb_m: timer_cb,
    node: node_union_anon_12,
    timeout: u64,
    repeat: u64,
    start_id: u64,
}
timer_t :: timer_s
u_union_anon_7 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
prepare_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_7,
    next_closing: ^handle_t,
    flags: u32,
    prepare_cb_m: prepare_cb,
    queue_m: queue,
}
prepare_t :: prepare_s
u_union_anon_8 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
check_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_8,
    next_closing: ^handle_t,
    flags: u32,
    check_cb_m: check_cb,
    queue_m: queue,
}
check_t :: check_s
u_union_anon_9 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
idle_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_9,
    next_closing: ^handle_t,
    flags: u32,
    idle_cb_m: idle_cb,
    queue_m: queue,
}
idle_t :: idle_s
u_union_anon_10 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
async_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_10,
    next_closing: ^handle_t,
    flags: u32,
    async_cb_m: async_cb,
    queue_m: queue,
    pending: i32,
}
async_t :: async_s
u_union_anon_14 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
process_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_14,
    next_closing: ^handle_t,
    flags: u32,
    exit_cb_m: exit_cb,
    pid: i32,
    queue_m: queue,
    status: i32,
}
process_t :: process_s
u_union_anon_17 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
fs_event_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_17,
    next_closing: ^handle_t,
    flags: u32,
    path: cstring,
    cb: fs_event_cb,
    watchers: queue,
    wd: i32,
}
fs_event_t :: fs_event_s
u_union_anon_18 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
fs_poll_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_18,
    next_closing: ^handle_t,
    flags: u32,
    poll_ctx: rawptr,
}
fs_poll_t :: fs_poll_s
u_union_anon_19 :: struct #raw_union {fd: i32, reserved: [4]rawptr, }
signal_s :: struct {
    data: rawptr,
    loop: ^loop_t,
    type: handle_type,
    close_cb_m: close_cb,
    handle_queue: queue,
    u: u_union_anon_19,
    next_closing: ^handle_t,
    flags: u32,
    signal_cb_m: signal_cb,
    signum: i32,
    tree_entry: tree_entry_struct_anon_20,
    caught_signals: u32,
    dispatched_signals: u32,
}
signal_t :: signal_s
req_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
}
req_t :: req_s
active_reqs_union_anon_22 :: struct #raw_union {unused: rawptr, count: u32, }
mutex_t :: posix.pthread_mutex_t
rwlock_t :: pthread_rwlock_t
async_unused_func_ptr_anon_23 :: #type proc "c" ()
timer_heap_struct_anon_24 :: struct {
    min: rawptr,
    nelts: u32,
}
loop_s :: struct {
    data: rawptr,
    active_handles: u32,
    handle_queue: queue,
    active_reqs: active_reqs_union_anon_22,
    internal_fields: rawptr,
    stop_flag: u32,
    flags: u64,
    backend_fd: i32,
    pending_queue: queue,
    watcher_queue: queue,
    watchers: ^[^]io_t,
    nwatchers: u32,
    nfds: u32,
    wq: queue,
    wq_mutex: mutex_t,
    wq_async: async_t,
    cloexec_lock: rwlock_t,
    closing_handles: [^]handle_t,
    process_handles: queue,
    prepare_handles: queue,
    check_handles: queue,
    idle_handles: queue,
    async_handles: queue,
    async_unused: async_unused_func_ptr_anon_23,
    async_io_watcher: io_t,
    async_wfd: i32,
    timer_heap: timer_heap_struct_anon_24,
    timer_counter: u64,
    time: u64,
    signal_pipefd: [2]i32,
    signal_io_watcher: io_t,
    child_watcher: signal_t,
    emfile_fd: i32,
    inotify_read_watcher: io_t,
    inotify_watchers: rawptr,
    inotify_fd: i32,
}
work :: struct {
    work_m: work_func_ptr_anon_25,
    done: done_func_ptr_anon_26,
    loop: ^loop_s,
    wq: queue,
}
getaddrinfo_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    loop: ^loop_t,
    work_req: work,
    cb: getaddrinfo_cb,
    hints: [^]posix.addrinfo,
    hostname: cstring,
    service: cstring,
    addrinfo: ^posix.addrinfo,
    retcode: i32,
}
getaddrinfo_t :: getaddrinfo_s
getnameinfo_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    loop: ^loop_t,
    work_req: work,
    getnameinfo_cb_m: getnameinfo_cb,
    storage: posix.sockaddr_storage,
    flags: i32,
    host: [1025]i8,
    service: [32]i8,
    retcode: i32,
}
getnameinfo_t :: getnameinfo_s
shutdown_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    handle: ^stream_t,
    cb: shutdown_cb,
}
write_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    cb: write_cb,
    send_handle: ^stream_t,
    handle: ^stream_t,
    queue_m: queue,
    write_index: u32,
    bufs: [^]buf_t,
    nbufs: u32,
    error: i32,
    bufsml: [4]buf_t,
}
write_t :: write_s
connect_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    cb: connect_cb,
    handle: ^stream_t,
    queue_m: queue,
}
udp_send_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    handle: ^udp_t,
    cb: udp_send_cb,
    queue_m: queue,
    addr: posix.sockaddr_storage,
    nbufs: u32,
    bufs: [^]buf_t,
    status: i64,
    send_cb: udp_send_cb,
    bufsml: [4]buf_t,
}
udp_send_t :: udp_send_s
fs_type :: enum i32 {FS_UNKNOWN = -1, FS_CUSTOM = 0, FS_OPEN = 1, FS_CLOSE = 2, FS_READ = 3, FS_WRITE = 4, FS_SENDFILE = 5, FS_STAT = 6, FS_LSTAT = 7, FS_FSTAT = 8, FS_FTRUNCATE = 9, FS_UTIME = 10, FS_FUTIME = 11, FS_ACCESS = 12, FS_CHMOD = 13, FS_FCHMOD = 14, FS_FSYNC = 15, FS_FDATASYNC = 16, FS_UNLINK = 17, FS_RMDIR = 18, FS_MKDIR = 19, FS_MKDTEMP = 20, FS_RENAME = 21, FS_SCANDIR = 22, FS_LINK = 23, FS_SYMLINK = 24, FS_READLINK = 25, FS_CHOWN = 26, FS_FCHOWN = 27, FS_REALPATH = 28, FS_COPYFILE = 29, FS_LCHOWN = 30, FS_OPENDIR = 31, FS_READDIR = 32, FS_CLOSEDIR = 33, FS_STATFS = 34, FS_MKSTEMP = 35, FS_LUTIME = 36, }
timespec_t :: struct {
    tv_sec: i64,
    tv_nsec: i64,
}
stat_t :: struct {
    st_dev: u64,
    st_mode: u64,
    st_nlink: u64,
    st_uid: u64,
    st_gid: u64,
    st_rdev: u64,
    st_ino: u64,
    st_size: u64,
    st_blksize: u64,
    st_blocks: u64,
    st_flags: u64,
    st_gen: u64,
    st_atim: timespec_t,
    st_mtim: timespec_t,
    st_ctim: timespec_t,
    st_birthtim: timespec_t,
}
file :: i32
uid_t :: linux.Uid
gid_t :: linux.Gid
fs_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    fs_type_m: fs_type,
    loop: ^loop_t,
    cb: fs_cb,
    result: i64,
    ptr: rawptr,
    path: cstring,
    statbuf: stat_t,
    new_path: cstring,
    file_m: file,
    flags: i32,
    mode: posix.mode_t,
    nbufs: u32,
    bufs: [^]buf_t,
    off: posix.off_t,
    uid: uid_t,
    gid: gid_t,
    atime: f64,
    mtime: f64,
    work_req: work,
    bufsml: [4]buf_t,
}
fs_t :: fs_s
work_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    loop: ^loop_t,
    work_cb_m: work_cb,
    after_work_cb_m: after_work_cb,
    work_req: work,
}
work_t :: work_s
random_s :: struct {
    data: rawptr,
    type: req_type,
    reserved: [6]rawptr,
    loop: ^loop_t,
    status: i32,
    buf: rawptr,
    buflen: u64,
    cb: random_cb,
    work_req: work,
}
random_t :: random_s
env_item_s :: struct {
    name: cstring,
    value: cstring,
}
env_item_t :: env_item_s
cpu_times_s :: struct {
    user: u64,
    nice: u64,
    sys: u64,
    idle: u64,
    irq: u64,
}
cpu_info_s :: struct {
    model: cstring,
    speed: i32,
    cpu_times: cpu_times_s,
}
cpu_info_t :: cpu_info_s
address_union_anon_15 :: struct #raw_union {address4: posix.sockaddr_in, address6: posix.sockaddr_in6, }
netmask_union_anon_16 :: struct #raw_union {netmask4: posix.sockaddr_in, netmask6: posix.sockaddr_in6, }
interface_address_s :: struct {
    name: cstring,
    phys_addr: [6]i8,
    is_internal: i32,
    address: address_union_anon_15,
    netmask: netmask_union_anon_16,
}
interface_address_t :: interface_address_s
passwd_s :: struct {
    username: cstring,
    uid: u64,
    gid: u64,
    shell: cstring,
    homedir: cstring,
}
passwd_t :: passwd_s
group_s :: struct {
    groupname: cstring,
    gid: u64,
    members: [^]cstring,
}
group_t :: group_s
utsname_s :: struct {
    sysname: [256]i8,
    release: [256]i8,
    version: [256]i8,
    machine: [256]i8,
}
utsname_t :: utsname_s
statfs_s :: struct {
    f_type: u64,
    f_bsize: u64,
    f_blocks: u64,
    f_bfree: u64,
    f_bavail: u64,
    f_files: u64,
    f_ffree: u64,
    f_spare: [4]u64,
}
statfs_t :: statfs_s
metrics_s :: struct {
    loop_count: u64,
    events: u64,
    events_waiting: u64,
    reserved: ^[13]^u64,
}
metrics_t :: metrics_s
loop_option :: enum u32 {LOOP_BLOCK_SIGNAL = 0, METRICS_IDLE_TIME = 1, LOOP_USE_IO_URING_SQPOLL = 2, }
run_mode :: enum u32 {RUN_DEFAULT = 0, RUN_ONCE = 1, RUN_NOWAIT = 2, }
malloc_func :: #type proc "c" (size: u64) -> rawptr
realloc_func :: #type proc "c" (ptr: rawptr, size: u64) -> rawptr
calloc_func :: #type proc "c" (count: u64, size: u64) -> rawptr
free_func :: #type proc "c" (ptr: rawptr)
write_cb :: #type proc "c" (req: ^write_t, status: i32)
connect_cb :: #type proc "c" (req: ^connect_t, status: i32)
shutdown_cb :: #type proc "c" (req: ^shutdown_t, status: i32)
poll_cb :: #type proc "c" (handle: ^poll_t, status: i32, events: i32)
timer_cb :: #type proc "c" (handle: ^timer_t)
async_cb :: #type proc "c" (handle: ^async_t)
prepare_cb :: #type proc "c" (handle: ^prepare_t)
check_cb :: #type proc "c" (handle: ^check_t)
idle_cb :: #type proc "c" (handle: ^idle_t)
exit_cb :: #type proc "c" (param0: ^process_t, exit_status: i64, term_signal: i32)
walk_cb :: #type proc "c" (handle: ^handle_t, arg: rawptr)
fs_cb :: #type proc "c" (req: ^fs_t)
work_cb :: #type proc "c" (req: ^work_t)
after_work_cb :: #type proc "c" (req: ^work_t, status: i32)
getaddrinfo_cb :: #type proc "c" (req: ^getaddrinfo_t, status: i32, res: [^]posix.addrinfo)
getnameinfo_cb :: #type proc "c" (req: ^getnameinfo_t, status: i32, hostname: cstring, service: cstring)
random_cb :: #type proc "c" (req: ^random_t, status: i32, buf: rawptr, buflen: u64)
clock_id :: enum u32 {CLOCK_MONOTONIC = 0, CLOCK_REALTIME = 1, }
timespec64_t :: struct {
    tv_sec: i64,
    tv_nsec: i32,
}
timeval_t :: struct {
    tv_sec: i64,
    tv_usec: i64,
}
timeval64_t :: struct {
    tv_sec: i64,
    tv_usec: i32,
}
fs_event_cb :: #type proc "c" (handle: ^fs_event_t, filename: cstring, events: i32, status: i32)
fs_poll_cb :: #type proc "c" (handle: ^fs_poll_t, status: i32, prev: ^stat_t, curr: ^stat_t)
signal_cb :: #type proc "c" (handle: ^signal_t, signum: i32)
membership :: enum u32 {LEAVE_GROUP = 0, JOIN_GROUP = 1, }
tcp_flags :: enum u32 {TCP_IPV6ONLY = 1, TCP_REUSEPORT = 2, }
udp_flags :: enum u32 {UDP_IPV6ONLY = 1, UDP_PARTIAL = 2, UDP_REUSEADDR = 4, UDP_MMSG_CHUNK = 8, UDP_MMSG_FREE = 16, UDP_LINUX_RECVERR = 32, UDP_REUSEPORT = 64, UDP_RECVMMSG = 256, }
udp_send_cb :: #type proc "c" (req: ^udp_send_t, status: i32)
udp_recv_cb :: #type proc "c" (handle: ^udp_t, nread: i64, buf: ^buf_t, addr: ^posix.sockaddr, flags: u32)
tty_mode_t :: enum u32 {TTY_MODE_NORMAL = 0, TTY_MODE_RAW = 1, TTY_MODE_IO = 2, }
tty_vtermstate_t :: enum u32 {TTY_SUPPORTED = 0, TTY_UNSUPPORTED = 1, }
poll_event :: enum u32 {READABLE = 1, WRITABLE = 2, DISCONNECT = 4, PRIORITIZED = 8, }
stdio_flags :: enum u32 {IGNORE = 0, CREATE_PIPE = 1, INHERIT_FD = 2, INHERIT_STREAM = 4, READABLE_PIPE = 16, WRITABLE_PIPE = 32, NONBLOCK_PIPE = 64, OVERLAPPED_PIPE = 64, }
data_union_anon_13 :: struct #raw_union {stream: ^stream_t, fd: i32, }
stdio_container_s :: struct {
    flags: stdio_flags,
    data: data_union_anon_13,
}
stdio_container_t :: stdio_container_s
process_options_s :: struct {
    exit_cb_m: exit_cb,
    file_m: cstring,
    args: [^]cstring,
    env: ^cstring,
    cwd: cstring,
    flags: u32,
    stdio_count: i32,
    stdio: ^stdio_container_t,
    uid: uid_t,
    gid: gid_t,
}
process_options_t :: process_options_s
process_flags :: enum u32 {PROCESS_SETUID = 1, PROCESS_SETGID = 2, PROCESS_WINDOWS_VERBATIM_ARGUMENTS = 4, PROCESS_DETACHED = 8, PROCESS_WINDOWS_HIDE = 16, PROCESS_WINDOWS_HIDE_CONSOLE = 32, PROCESS_WINDOWS_HIDE_GUI = 64, PROCESS_WINDOWS_FILE_PATH_EXACT_NAME = 128, }
rusage_t :: struct {
    ru_utime: timeval_t,
    ru_stime: timeval_t,
    ru_maxrss: u64,
    ru_ixrss: u64,
    ru_idrss: u64,
    ru_isrss: u64,
    ru_minflt: u64,
    ru_majflt: u64,
    ru_nswap: u64,
    ru_inblock: u64,
    ru_oublock: u64,
    ru_msgsnd: u64,
    ru_msgrcv: u64,
    ru_nsignals: u64,
    ru_nvcsw: u64,
    ru_nivcsw: u64,
}
fs_event :: enum u32 {RENAME = 1, CHANGE = 2, }
tree_entry_struct_anon_20 :: struct {
    rbe_left: ^signal_s,
    rbe_right: ^signal_s,
    rbe_parent: ^signal_s,
    rbe_color: i32,
}
fs_event_flags :: enum u32 {FS_EVENT_WATCH_ENTRY = 1, FS_EVENT_STAT = 2, FS_EVENT_RECURSIVE = 4, }
callback_func_ptr_anon_21 :: #type proc "c" ()
thread_cb :: #type proc "c" (arg: rawptr)
thread_create_flags :: enum u32 {THREAD_NO_FLAGS = 0, THREAD_HAS_STACK_SIZE = 1, }
thread_options_s :: struct {
    flags: u32,
    stack_size: u64,
}
thread_options_t :: thread_options_s
any_handle :: struct #raw_union {async: async_t, check: check_t, fs_event_m: fs_event_t, fs_poll: fs_poll_t, handle: handle_t, idle: idle_t, pipe: pipe_t, poll: poll_t, prepare: prepare_t, process: process_t, stream: stream_t, tcp: tcp_t, timer: timer_t, tty: tty_t, udp: udp_t, signal: signal_t, }
any_req :: struct #raw_union {req: req_t, connect: connect_t, write: write_t, shutdown: shutdown_t, udp_send: udp_send_t, fs: fs_t, work_m: work_t, getaddrinfo: getaddrinfo_t, getnameinfo: getnameinfo_t, random: random_t, }
work_func_ptr_anon_25 :: #type proc "c" (w: ^work)
done_func_ptr_anon_26 :: #type proc "c" (w: ^work, status: i32)
os_fd_t :: i32
os_sock_t :: i32
pid_t :: linux.Pid
thread_t :: posix.pthread_t
lib_t :: struct {
    handle: rawptr,
    errmsg: cstring,
}
sem_t :: [32]u8
cond_t :: posix.pthread_cond_t
_uv_barrier :: struct {
    mutex: mutex_t,
    cond: cond_t,
    threshold: u32,
    in_m: u32,
    out: u32,
}
barrier_t :: struct {
    b: ^_uv_barrier,
}
key_t :: posix.pthread_key_t
io_s :: struct {
    cb: io_cb,
    pending_queue: queue,
    watcher_queue: queue,
    pevents: u32,
    events: u32,
    fd: i32,
}
io_cb :: #type proc "c" (loop: ^loop_s, w: ^io_s, events: u32)

when #config(UV_STATIC, false) {
    foreign import uv_runic "system:libuv.a"
} else {
    foreign import uv_runic "system:uv"
}

@(default_calling_convention = "c")
foreign uv_runic {
    @(link_name = "uv_version")
    version :: proc() -> u32 ---

    @(link_name = "uv_version_string")
    version_string :: proc() -> cstring ---

    @(link_name = "uv_library_shutdown")
    library_shutdown :: proc() ---

    @(link_name = "uv_replace_allocator")
    replace_allocator :: proc(malloc_func_p: malloc_func, realloc_func_p: realloc_func, calloc_func_p: calloc_func, free_func_p: free_func) -> i32 ---

    @(link_name = "uv_default_loop")
    default_loop :: proc() -> ^loop_t ---

    @(link_name = "uv_loop_init")
    loop_init :: proc(loop: ^loop_t) -> i32 ---

    @(link_name = "uv_loop_close")
    loop_close :: proc(loop: ^loop_t) -> i32 ---

    @(link_name = "uv_loop_new")
    loop_new :: proc() -> ^loop_t ---

    @(link_name = "uv_loop_delete")
    loop_delete :: proc(param0: ^loop_t) ---

    @(link_name = "uv_loop_size")
    loop_size :: proc() -> u64 ---

    @(link_name = "uv_loop_alive")
    loop_alive :: proc(loop: ^loop_t) -> i32 ---

    @(link_name = "uv_loop_configure")
    loop_configure :: proc(loop: ^loop_t, option: loop_option, #c_vararg var_args: ..any) -> i32 ---

    @(link_name = "uv_loop_fork")
    loop_fork :: proc(loop: ^loop_t) -> i32 ---

    @(link_name = "uv_run")
    run :: proc(param0: ^loop_t, mode: run_mode) -> i32 ---

    @(link_name = "uv_stop")
    stop :: proc(param0: ^loop_t) ---

    @(link_name = "uv_ref")
    ref :: proc(param0: ^handle_t) ---

    @(link_name = "uv_unref")
    unref :: proc(param0: ^handle_t) ---

    @(link_name = "uv_has_ref")
    has_ref :: proc(param0: ^handle_t) -> i32 ---

    @(link_name = "uv_update_time")
    update_time :: proc(param0: ^loop_t) ---

    @(link_name = "uv_now")
    now :: proc(param0: ^loop_t) -> u64 ---

    @(link_name = "uv_backend_fd")
    backend_fd :: proc(param0: ^loop_t) -> i32 ---

    @(link_name = "uv_backend_timeout")
    backend_timeout :: proc(param0: ^loop_t) -> i32 ---

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
    shutdown :: proc(req: ^shutdown_t, handle: ^stream_t, cb: shutdown_cb) -> i32 ---

    @(link_name = "uv_handle_size")
    handle_size :: proc(type: handle_type) -> u64 ---

    @(link_name = "uv_handle_get_type")
    handle_get_type :: proc(handle: ^handle_t) -> handle_type ---

    @(link_name = "uv_handle_type_name")
    handle_type_name :: proc(type: handle_type) -> cstring ---

    @(link_name = "uv_handle_get_data")
    handle_get_data :: proc(handle: ^handle_t) -> rawptr ---

    @(link_name = "uv_handle_get_loop")
    handle_get_loop :: proc(handle: ^handle_t) -> ^loop_t ---

    @(link_name = "uv_handle_set_data")
    handle_set_data :: proc(handle: ^handle_t, data: rawptr) ---

    @(link_name = "uv_req_size")
    req_size :: proc(type: req_type) -> u64 ---

    @(link_name = "uv_req_get_data")
    req_get_data :: proc(req: ^req_t) -> rawptr ---

    @(link_name = "uv_req_set_data")
    req_set_data :: proc(req: ^req_t, data: rawptr) ---

    @(link_name = "uv_req_get_type")
    req_get_type :: proc(req: ^req_t) -> req_type ---

    @(link_name = "uv_req_type_name")
    req_type_name :: proc(type: req_type) -> cstring ---

    @(link_name = "uv_is_active")
    is_active :: proc(handle: ^handle_t) -> i32 ---

    @(link_name = "uv_walk")
    walk :: proc(loop: ^loop_t, walk_cb_p: walk_cb, arg: rawptr) ---

    @(link_name = "uv_print_all_handles")
    print_all_handles :: proc(loop: ^loop_t, stream: ^libc.FILE) ---

    @(link_name = "uv_print_active_handles")
    print_active_handles :: proc(loop: ^loop_t, stream: ^libc.FILE) ---

    @(link_name = "uv_close")
    close :: proc(handle: ^handle_t, close_cb_p: close_cb) ---

    @(link_name = "uv_send_buffer_size")
    send_buffer_size :: proc(handle: ^handle_t, value: ^i32) -> i32 ---

    @(link_name = "uv_recv_buffer_size")
    recv_buffer_size :: proc(handle: ^handle_t, value: ^i32) -> i32 ---

    @(link_name = "uv_fileno")
    fileno :: proc(handle: ^handle_t, fd: ^os_fd_t) -> i32 ---

    @(link_name = "uv_buf_init")
    buf_init :: proc(base: cstring, len: u32) -> buf_t ---

    @(link_name = "uv_pipe")
    pipe :: proc(fds: [2]file, read_flags: i32, write_flags: i32) -> i32 ---

    @(link_name = "uv_socketpair")
    socketpair :: proc(type: i32, protocol: i32, socket_vector: [2]os_sock_t, flags0: i32, flags1: i32) -> i32 ---

    @(link_name = "uv_stream_get_write_queue_size")
    stream_get_write_queue_size :: proc(stream: ^stream_t) -> u64 ---

    @(link_name = "uv_listen")
    listen :: proc(stream: ^stream_t, backlog: i32, cb: connection_cb) -> i32 ---

    @(link_name = "uv_accept")
    accept :: proc(server: ^stream_t, client: ^stream_t) -> i32 ---

    @(link_name = "uv_read_start")
    read_start :: proc(param0: ^stream_t, alloc_cb_p: alloc_cb, read_cb_p: read_cb) -> i32 ---

    @(link_name = "uv_read_stop")
    read_stop :: proc(param0: ^stream_t) -> i32 ---

    @(link_name = "uv_write")
    write :: proc(req: ^write_t, handle: ^stream_t, bufs: [^]buf_t, nbufs: u32, cb: write_cb) -> i32 ---

    @(link_name = "uv_write2")
    write2 :: proc(req: ^write_t, handle: ^stream_t, bufs: [^]buf_t, nbufs: u32, send_handle: ^stream_t, cb: write_cb) -> i32 ---

    @(link_name = "uv_try_write")
    try_write :: proc(handle: ^stream_t, bufs: [^]buf_t, nbufs: u32) -> i32 ---

    @(link_name = "uv_try_write2")
    try_write2 :: proc(handle: ^stream_t, bufs: [^]buf_t, nbufs: u32, send_handle: ^stream_t) -> i32 ---

    @(link_name = "uv_is_readable")
    is_readable :: proc(handle: ^stream_t) -> i32 ---

    @(link_name = "uv_is_writable")
    is_writable :: proc(handle: ^stream_t) -> i32 ---

    @(link_name = "uv_stream_set_blocking")
    stream_set_blocking :: proc(handle: ^stream_t, blocking: i32) -> i32 ---

    @(link_name = "uv_is_closing")
    is_closing :: proc(handle: ^handle_t) -> i32 ---

    @(link_name = "uv_tcp_init")
    tcp_init :: proc(param0: ^loop_t, handle: ^tcp_t) -> i32 ---

    @(link_name = "uv_tcp_init_ex")
    tcp_init_ex :: proc(param0: ^loop_t, handle: ^tcp_t, flags: u32) -> i32 ---

    @(link_name = "uv_tcp_open")
    tcp_open :: proc(handle: ^tcp_t, sock: os_sock_t) -> i32 ---

    @(link_name = "uv_tcp_nodelay")
    tcp_nodelay :: proc(handle: ^tcp_t, enable: i32) -> i32 ---

    @(link_name = "uv_tcp_keepalive")
    tcp_keepalive :: proc(handle: ^tcp_t, enable: i32, delay: u32) -> i32 ---

    @(link_name = "uv_tcp_simultaneous_accepts")
    tcp_simultaneous_accepts :: proc(handle: ^tcp_t, enable: i32) -> i32 ---

    @(link_name = "uv_tcp_bind")
    tcp_bind :: proc(handle: ^tcp_t, addr: ^posix.sockaddr, flags: u32) -> i32 ---

    @(link_name = "uv_tcp_getsockname")
    tcp_getsockname :: proc(handle: ^tcp_t, name: ^posix.sockaddr, namelen: ^i32) -> i32 ---

    @(link_name = "uv_tcp_getpeername")
    tcp_getpeername :: proc(handle: ^tcp_t, name: ^posix.sockaddr, namelen: ^i32) -> i32 ---

    @(link_name = "uv_tcp_close_reset")
    tcp_close_reset :: proc(handle: ^tcp_t, close_cb_p: close_cb) -> i32 ---

    @(link_name = "uv_tcp_connect")
    tcp_connect :: proc(req: ^connect_t, handle: ^tcp_t, addr: ^posix.sockaddr, cb: connect_cb) -> i32 ---

    @(link_name = "uv_udp_init")
    udp_init :: proc(param0: ^loop_t, handle: ^udp_t) -> i32 ---

    @(link_name = "uv_udp_init_ex")
    udp_init_ex :: proc(param0: ^loop_t, handle: ^udp_t, flags: u32) -> i32 ---

    @(link_name = "uv_udp_open")
    udp_open :: proc(handle: ^udp_t, sock: os_sock_t) -> i32 ---

    @(link_name = "uv_udp_bind")
    udp_bind :: proc(handle: ^udp_t, addr: ^posix.sockaddr, flags: u32) -> i32 ---

    @(link_name = "uv_udp_connect")
    udp_connect :: proc(handle: ^udp_t, addr: ^posix.sockaddr) -> i32 ---

    @(link_name = "uv_udp_getpeername")
    udp_getpeername :: proc(handle: ^udp_t, name: ^posix.sockaddr, namelen: ^i32) -> i32 ---

    @(link_name = "uv_udp_getsockname")
    udp_getsockname :: proc(handle: ^udp_t, name: ^posix.sockaddr, namelen: ^i32) -> i32 ---

    @(link_name = "uv_udp_set_membership")
    udp_set_membership :: proc(handle: ^udp_t, multicast_addr: cstring, interface_addr: cstring, membership_p: membership) -> i32 ---

    @(link_name = "uv_udp_set_source_membership")
    udp_set_source_membership :: proc(handle: ^udp_t, multicast_addr: cstring, interface_addr: cstring, source_addr: cstring, membership_p: membership) -> i32 ---

    @(link_name = "uv_udp_set_multicast_loop")
    udp_set_multicast_loop :: proc(handle: ^udp_t, on: i32) -> i32 ---

    @(link_name = "uv_udp_set_multicast_ttl")
    udp_set_multicast_ttl :: proc(handle: ^udp_t, ttl: i32) -> i32 ---

    @(link_name = "uv_udp_set_multicast_interface")
    udp_set_multicast_interface :: proc(handle: ^udp_t, interface_addr: cstring) -> i32 ---

    @(link_name = "uv_udp_set_broadcast")
    udp_set_broadcast :: proc(handle: ^udp_t, on: i32) -> i32 ---

    @(link_name = "uv_udp_set_ttl")
    udp_set_ttl :: proc(handle: ^udp_t, ttl: i32) -> i32 ---

    @(link_name = "uv_udp_send")
    udp_send :: proc(req: ^udp_send_t, handle: ^udp_t, bufs: [^]buf_t, nbufs: u32, addr: ^posix.sockaddr, send_cb: udp_send_cb) -> i32 ---

    @(link_name = "uv_udp_try_send")
    udp_try_send :: proc(handle: ^udp_t, bufs: [^]buf_t, nbufs: u32, addr: ^posix.sockaddr) -> i32 ---

    @(link_name = "uv_udp_recv_start")
    udp_recv_start :: proc(handle: ^udp_t, alloc_cb_p: alloc_cb, recv_cb: udp_recv_cb) -> i32 ---

    @(link_name = "uv_udp_using_recvmmsg")
    udp_using_recvmmsg :: proc(handle: ^udp_t) -> i32 ---

    @(link_name = "uv_udp_recv_stop")
    udp_recv_stop :: proc(handle: ^udp_t) -> i32 ---

    @(link_name = "uv_udp_get_send_queue_size")
    udp_get_send_queue_size :: proc(handle: ^udp_t) -> u64 ---

    @(link_name = "uv_udp_get_send_queue_count")
    udp_get_send_queue_count :: proc(handle: ^udp_t) -> u64 ---

    @(link_name = "uv_tty_init")
    tty_init :: proc(param0: ^loop_t, param1: ^tty_t, fd: file, readable: i32) -> i32 ---

    @(link_name = "uv_tty_set_mode")
    tty_set_mode :: proc(param0: ^tty_t, mode: tty_mode_t) -> i32 ---

    @(link_name = "uv_tty_reset_mode")
    tty_reset_mode :: proc() -> i32 ---

    @(link_name = "uv_tty_get_winsize")
    tty_get_winsize :: proc(param0: ^tty_t, width: ^i32, height: ^i32) -> i32 ---

    @(link_name = "uv_tty_set_vterm_state")
    tty_set_vterm_state :: proc(state: tty_vtermstate_t) ---

    @(link_name = "uv_tty_get_vterm_state")
    tty_get_vterm_state :: proc(state: ^tty_vtermstate_t) -> i32 ---

    @(link_name = "uv_guess_handle")
    guess_handle :: proc(file_p: file) -> handle_type ---

    @(link_name = "uv_pipe_init")
    pipe_init :: proc(param0: ^loop_t, handle: ^pipe_t, ipc: i32) -> i32 ---

    @(link_name = "uv_pipe_open")
    pipe_open :: proc(param0: ^pipe_t, file_p: file) -> i32 ---

    @(link_name = "uv_pipe_bind")
    pipe_bind :: proc(handle: ^pipe_t, name: cstring) -> i32 ---

    @(link_name = "uv_pipe_bind2")
    pipe_bind2 :: proc(handle: ^pipe_t, name: cstring, namelen: u64, flags: u32) -> i32 ---

    @(link_name = "uv_pipe_connect")
    pipe_connect :: proc(req: ^connect_t, handle: ^pipe_t, name: cstring, cb: connect_cb) ---

    @(link_name = "uv_pipe_connect2")
    pipe_connect2 :: proc(req: ^connect_t, handle: ^pipe_t, name: cstring, namelen: u64, flags: u32, cb: connect_cb) -> i32 ---

    @(link_name = "uv_pipe_getsockname")
    pipe_getsockname :: proc(handle: ^pipe_t, buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_pipe_getpeername")
    pipe_getpeername :: proc(handle: ^pipe_t, buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_pipe_pending_instances")
    pipe_pending_instances :: proc(handle: ^pipe_t, count: i32) ---

    @(link_name = "uv_pipe_pending_count")
    pipe_pending_count :: proc(handle: ^pipe_t) -> i32 ---

    @(link_name = "uv_pipe_pending_type")
    pipe_pending_type :: proc(handle: ^pipe_t) -> handle_type ---

    @(link_name = "uv_pipe_chmod")
    pipe_chmod :: proc(handle: ^pipe_t, flags: i32) -> i32 ---

    @(link_name = "uv_poll_init")
    poll_init :: proc(loop: ^loop_t, handle: ^poll_t, fd: i32) -> i32 ---

    @(link_name = "uv_poll_init_socket")
    poll_init_socket :: proc(loop: ^loop_t, handle: ^poll_t, socket: os_sock_t) -> i32 ---

    @(link_name = "uv_poll_start")
    poll_start :: proc(handle: ^poll_t, events: i32, cb: poll_cb) -> i32 ---

    @(link_name = "uv_poll_stop")
    poll_stop :: proc(handle: ^poll_t) -> i32 ---

    @(link_name = "uv_prepare_init")
    prepare_init :: proc(param0: ^loop_t, prepare: ^prepare_t) -> i32 ---

    @(link_name = "uv_prepare_start")
    prepare_start :: proc(prepare: ^prepare_t, cb: prepare_cb) -> i32 ---

    @(link_name = "uv_prepare_stop")
    prepare_stop :: proc(prepare: ^prepare_t) -> i32 ---

    @(link_name = "uv_check_init")
    check_init :: proc(param0: ^loop_t, check: ^check_t) -> i32 ---

    @(link_name = "uv_check_start")
    check_start :: proc(check: ^check_t, cb: check_cb) -> i32 ---

    @(link_name = "uv_check_stop")
    check_stop :: proc(check: ^check_t) -> i32 ---

    @(link_name = "uv_idle_init")
    idle_init :: proc(param0: ^loop_t, idle: ^idle_t) -> i32 ---

    @(link_name = "uv_idle_start")
    idle_start :: proc(idle: ^idle_t, cb: idle_cb) -> i32 ---

    @(link_name = "uv_idle_stop")
    idle_stop :: proc(idle: ^idle_t) -> i32 ---

    @(link_name = "uv_async_init")
    async_init :: proc(param0: ^loop_t, async: ^async_t, async_cb_p: async_cb) -> i32 ---

    @(link_name = "uv_async_send")
    async_send :: proc(async: ^async_t) -> i32 ---

    @(link_name = "uv_timer_init")
    timer_init :: proc(param0: ^loop_t, handle: ^timer_t) -> i32 ---

    @(link_name = "uv_timer_start")
    timer_start :: proc(handle: ^timer_t, cb: timer_cb, timeout: u64, repeat: u64) -> i32 ---

    @(link_name = "uv_timer_stop")
    timer_stop :: proc(handle: ^timer_t) -> i32 ---

    @(link_name = "uv_timer_again")
    timer_again :: proc(handle: ^timer_t) -> i32 ---

    @(link_name = "uv_timer_set_repeat")
    timer_set_repeat :: proc(handle: ^timer_t, repeat: u64) ---

    @(link_name = "uv_timer_get_repeat")
    timer_get_repeat :: proc(handle: ^timer_t) -> u64 ---

    @(link_name = "uv_timer_get_due_in")
    timer_get_due_in :: proc(handle: ^timer_t) -> u64 ---

    @(link_name = "uv_getaddrinfo")
    getaddrinfo :: proc(loop: ^loop_t, req: ^getaddrinfo_t, getaddrinfo_cb_p: getaddrinfo_cb, node: cstring, service: cstring, hints: [^]posix.addrinfo) -> i32 ---

    @(link_name = "uv_freeaddrinfo")
    freeaddrinfo :: proc(ai: ^posix.addrinfo) ---

    @(link_name = "uv_getnameinfo")
    getnameinfo :: proc(loop: ^loop_t, req: ^getnameinfo_t, getnameinfo_cb_p: getnameinfo_cb, addr: ^posix.sockaddr, flags: i32) -> i32 ---

    @(link_name = "uv_spawn")
    spawn :: proc(loop: ^loop_t, handle: ^process_t, options: [^]process_options_t) -> i32 ---

    @(link_name = "uv_process_kill")
    process_kill :: proc(param0: ^process_t, signum: i32) -> i32 ---

    @(link_name = "uv_kill")
    kill :: proc(pid: i32, signum: i32) -> i32 ---

    @(link_name = "uv_process_get_pid")
    process_get_pid :: proc(param0: ^process_t) -> pid_t ---

    @(link_name = "uv_queue_work")
    queue_work :: proc(loop: ^loop_t, req: ^work_t, work_cb_p: work_cb, after_work_cb_p: after_work_cb) -> i32 ---

    @(link_name = "uv_cancel")
    cancel :: proc(req: ^req_t) -> i32 ---

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
    get_osfhandle :: proc(fd: i32) -> os_fd_t ---

    @(link_name = "uv_open_osfhandle")
    open_osfhandle :: proc(os_fd: os_fd_t) -> i32 ---

    @(link_name = "uv_getrusage")
    getrusage :: proc(rusage: ^rusage_t) -> i32 ---

    @(link_name = "uv_os_homedir")
    os_homedir :: proc(buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_os_tmpdir")
    os_tmpdir :: proc(buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_os_get_passwd")
    os_get_passwd :: proc(pwd: ^passwd_t) -> i32 ---

    @(link_name = "uv_os_free_passwd")
    os_free_passwd :: proc(pwd: ^passwd_t) ---

    @(link_name = "uv_os_get_passwd2")
    os_get_passwd2 :: proc(pwd: ^passwd_t, uid: uid_t) -> i32 ---

    @(link_name = "uv_os_get_group")
    os_get_group :: proc(grp: ^group_t, gid: uid_t) -> i32 ---

    @(link_name = "uv_os_free_group")
    os_free_group :: proc(grp: ^group_t) ---

    @(link_name = "uv_os_getpid")
    os_getpid :: proc() -> pid_t ---

    @(link_name = "uv_os_getppid")
    os_getppid :: proc() -> pid_t ---

    @(link_name = "uv_os_getpriority")
    os_getpriority :: proc(pid: pid_t, priority: ^i32) -> i32 ---

    @(link_name = "uv_os_setpriority")
    os_setpriority :: proc(pid: pid_t, priority: i32) -> i32 ---

    @(link_name = "uv_thread_getpriority")
    thread_getpriority :: proc(tid: thread_t, priority: ^i32) -> i32 ---

    @(link_name = "uv_thread_setpriority")
    thread_setpriority :: proc(tid: thread_t, priority: i32) -> i32 ---

    @(link_name = "uv_available_parallelism")
    available_parallelism :: proc() -> u32 ---

    @(link_name = "uv_cpu_info")
    cpu_info :: proc(cpu_infos: ^[^]cpu_info_t, count: ^i32) -> i32 ---

    @(link_name = "uv_free_cpu_info")
    free_cpu_info :: proc(cpu_infos: [^]cpu_info_t, count: i32) ---

    @(link_name = "uv_cpumask_size")
    cpumask_size :: proc() -> i32 ---

    @(link_name = "uv_interface_addresses")
    interface_addresses :: proc(addresses: ^[^]interface_address_t, count: ^i32) -> i32 ---

    @(link_name = "uv_free_interface_addresses")
    free_interface_addresses :: proc(addresses: [^]interface_address_t, count: i32) ---

    @(link_name = "uv_os_environ")
    os_environ :: proc(envitems: ^[^]env_item_t, count: ^i32) -> i32 ---

    @(link_name = "uv_os_free_environ")
    os_free_environ :: proc(envitems: [^]env_item_t, count: i32) ---

    @(link_name = "uv_os_getenv")
    os_getenv :: proc(name: cstring, buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_os_setenv")
    os_setenv :: proc(name: cstring, value: cstring) -> i32 ---

    @(link_name = "uv_os_unsetenv")
    os_unsetenv :: proc(name: cstring) -> i32 ---

    @(link_name = "uv_os_gethostname")
    os_gethostname :: proc(buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_os_uname")
    os_uname :: proc(buffer: ^utsname_t) -> i32 ---

    @(link_name = "uv_metrics_info")
    metrics_info :: proc(loop: ^loop_t, metrics: [^]metrics_t) -> i32 ---

    @(link_name = "uv_metrics_idle_time")
    metrics_idle_time :: proc(loop: ^loop_t) -> u64 ---

    @(link_name = "uv_fs_get_type")
    fs_get_type :: proc(param0: ^fs_t) -> fs_type ---

    @(link_name = "uv_fs_get_result")
    fs_get_result :: proc(param0: ^fs_t) -> i64 ---

    @(link_name = "uv_fs_get_system_error")
    fs_get_system_error :: proc(param0: ^fs_t) -> i32 ---

    @(link_name = "uv_fs_get_ptr")
    fs_get_ptr :: proc(param0: ^fs_t) -> rawptr ---

    @(link_name = "uv_fs_get_path")
    fs_get_path :: proc(param0: ^fs_t) -> cstring ---

    @(link_name = "uv_fs_get_statbuf")
    fs_get_statbuf :: proc(param0: ^fs_t) -> ^stat_t ---

    @(link_name = "uv_fs_req_cleanup")
    fs_req_cleanup :: proc(req: ^fs_t) ---

    @(link_name = "uv_fs_close")
    fs_close :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_open")
    fs_open :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, flags: i32, mode: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_read")
    fs_read :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, bufs: [^]buf_t, nbufs: u32, offset: i64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_unlink")
    fs_unlink :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_write")
    fs_write :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, bufs: [^]buf_t, nbufs: u32, offset: i64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_copyfile")
    fs_copyfile :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, new_path: cstring, flags: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_mkdir")
    fs_mkdir :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, mode: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_mkdtemp")
    fs_mkdtemp :: proc(loop: ^loop_t, req: ^fs_t, tpl: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_mkstemp")
    fs_mkstemp :: proc(loop: ^loop_t, req: ^fs_t, tpl: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_rmdir")
    fs_rmdir :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_scandir")
    fs_scandir :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, flags: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_scandir_next")
    fs_scandir_next :: proc(req: ^fs_t, ent: ^dirent_t) -> i32 ---

    @(link_name = "uv_fs_opendir")
    fs_opendir :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_readdir")
    fs_readdir :: proc(loop: ^loop_t, req: ^fs_t, dir: ^dir_t, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_closedir")
    fs_closedir :: proc(loop: ^loop_t, req: ^fs_t, dir: ^dir_t, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_stat")
    fs_stat :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_fstat")
    fs_fstat :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_rename")
    fs_rename :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, new_path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_fsync")
    fs_fsync :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_fdatasync")
    fs_fdatasync :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_ftruncate")
    fs_ftruncate :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, offset: i64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_sendfile")
    fs_sendfile :: proc(loop: ^loop_t, req: ^fs_t, out_fd: file, in_fd: file, in_offset: i64, length: u64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_access")
    fs_access :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, mode: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_chmod")
    fs_chmod :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, mode: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_utime")
    fs_utime :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, atime: f64, mtime: f64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_futime")
    fs_futime :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, atime: f64, mtime: f64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_lutime")
    fs_lutime :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, atime: f64, mtime: f64, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_lstat")
    fs_lstat :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_link")
    fs_link :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, new_path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_symlink")
    fs_symlink :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, new_path: cstring, flags: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_readlink")
    fs_readlink :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_realpath")
    fs_realpath :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_fchmod")
    fs_fchmod :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, mode: i32, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_chown")
    fs_chown :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, uid: uid_t, gid: gid_t, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_fchown")
    fs_fchown :: proc(loop: ^loop_t, req: ^fs_t, file_p: file, uid: uid_t, gid: gid_t, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_lchown")
    fs_lchown :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, uid: uid_t, gid: gid_t, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_statfs")
    fs_statfs :: proc(loop: ^loop_t, req: ^fs_t, path: cstring, cb: fs_cb) -> i32 ---

    @(link_name = "uv_fs_poll_init")
    fs_poll_init :: proc(loop: ^loop_t, handle: ^fs_poll_t) -> i32 ---

    @(link_name = "uv_fs_poll_start")
    fs_poll_start :: proc(handle: ^fs_poll_t, poll_cb_p: fs_poll_cb, path: cstring, interval: u32) -> i32 ---

    @(link_name = "uv_fs_poll_stop")
    fs_poll_stop :: proc(handle: ^fs_poll_t) -> i32 ---

    @(link_name = "uv_fs_poll_getpath")
    fs_poll_getpath :: proc(handle: ^fs_poll_t, buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_signal_init")
    signal_init :: proc(loop: ^loop_t, handle: ^signal_t) -> i32 ---

    @(link_name = "uv_signal_start")
    signal_start :: proc(handle: ^signal_t, signal_cb_p: signal_cb, signum: i32) -> i32 ---

    @(link_name = "uv_signal_start_oneshot")
    signal_start_oneshot :: proc(handle: ^signal_t, signal_cb_p: signal_cb, signum: i32) -> i32 ---

    @(link_name = "uv_signal_stop")
    signal_stop :: proc(handle: ^signal_t) -> i32 ---

    @(link_name = "uv_loadavg")
    loadavg :: proc(avg: [3]f64) ---

    @(link_name = "uv_fs_event_init")
    fs_event_init :: proc(loop: ^loop_t, handle: ^fs_event_t) -> i32 ---

    @(link_name = "uv_fs_event_start")
    fs_event_start :: proc(handle: ^fs_event_t, cb: fs_event_cb, path: cstring, flags: u32) -> i32 ---

    @(link_name = "uv_fs_event_stop")
    fs_event_stop :: proc(handle: ^fs_event_t) -> i32 ---

    @(link_name = "uv_fs_event_getpath")
    fs_event_getpath :: proc(handle: ^fs_event_t, buffer: cstring, size: ^u64) -> i32 ---

    @(link_name = "uv_ip4_addr")
    ip4_addr :: proc(ip: cstring, port: i32, addr: ^posix.sockaddr_in) -> i32 ---

    @(link_name = "uv_ip6_addr")
    ip6_addr :: proc(ip: cstring, port: i32, addr: ^posix.sockaddr_in6) -> i32 ---

    @(link_name = "uv_ip4_name")
    ip4_name :: proc(src: ^posix.sockaddr_in, dst: cstring, size: u64) -> i32 ---

    @(link_name = "uv_ip6_name")
    ip6_name :: proc(src: ^posix.sockaddr_in6, dst: cstring, size: u64) -> i32 ---

    @(link_name = "uv_ip_name")
    ip_name :: proc(src: ^posix.sockaddr, dst: cstring, size: u64) -> i32 ---

    @(link_name = "uv_inet_ntop")
    inet_ntop :: proc(af: i32, src: rawptr, dst: cstring, size: u64) -> i32 ---

    @(link_name = "uv_inet_pton")
    inet_pton :: proc(af: i32, src: cstring, dst: rawptr) -> i32 ---

    @(link_name = "uv_random")
    random :: proc(loop: ^loop_t, req: ^random_t, buf: rawptr, buflen: u64, flags: u32, cb: random_cb) -> i32 ---

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
    clock_gettime :: proc(clock_id_p: clock_id, ts: [^]timespec64_t) -> i32 ---

    @(link_name = "uv_hrtime")
    hrtime :: proc() -> u64 ---

    @(link_name = "uv_sleep")
    sleep :: proc(msec: u32) ---

    @(link_name = "uv_disable_stdio_inheritance")
    disable_stdio_inheritance :: proc() ---

    @(link_name = "uv_dlopen")
    dlopen :: proc(filename: cstring, lib: ^lib_t) -> i32 ---

    @(link_name = "uv_dlclose")
    dlclose :: proc(lib: ^lib_t) ---

    @(link_name = "uv_dlsym")
    dlsym :: proc(lib: ^lib_t, name: cstring, ptr: ^rawptr) -> i32 ---

    @(link_name = "uv_dlerror")
    dlerror :: proc(lib: ^lib_t) -> cstring ---

    @(link_name = "uv_mutex_init")
    mutex_init :: proc(handle: ^mutex_t) -> i32 ---

    @(link_name = "uv_mutex_init_recursive")
    mutex_init_recursive :: proc(handle: ^mutex_t) -> i32 ---

    @(link_name = "uv_mutex_destroy")
    mutex_destroy :: proc(handle: ^mutex_t) ---

    @(link_name = "uv_mutex_lock")
    mutex_lock :: proc(handle: ^mutex_t) ---

    @(link_name = "uv_mutex_trylock")
    mutex_trylock :: proc(handle: ^mutex_t) -> i32 ---

    @(link_name = "uv_mutex_unlock")
    mutex_unlock :: proc(handle: ^mutex_t) ---

    @(link_name = "uv_rwlock_init")
    rwlock_init :: proc(rwlock: ^rwlock_t) -> i32 ---

    @(link_name = "uv_rwlock_destroy")
    rwlock_destroy :: proc(rwlock: ^rwlock_t) ---

    @(link_name = "uv_rwlock_rdlock")
    rwlock_rdlock :: proc(rwlock: ^rwlock_t) ---

    @(link_name = "uv_rwlock_tryrdlock")
    rwlock_tryrdlock :: proc(rwlock: ^rwlock_t) -> i32 ---

    @(link_name = "uv_rwlock_rdunlock")
    rwlock_rdunlock :: proc(rwlock: ^rwlock_t) ---

    @(link_name = "uv_rwlock_wrlock")
    rwlock_wrlock :: proc(rwlock: ^rwlock_t) ---

    @(link_name = "uv_rwlock_trywrlock")
    rwlock_trywrlock :: proc(rwlock: ^rwlock_t) -> i32 ---

    @(link_name = "uv_rwlock_wrunlock")
    rwlock_wrunlock :: proc(rwlock: ^rwlock_t) ---

    @(link_name = "uv_sem_init")
    sem_init :: proc(sem: ^sem_t, value: u32) -> i32 ---

    @(link_name = "uv_sem_destroy")
    sem_destroy :: proc(sem: ^sem_t) ---

    @(link_name = "uv_sem_post")
    sem_post :: proc(sem: ^sem_t) ---

    @(link_name = "uv_sem_wait")
    sem_wait :: proc(sem: ^sem_t) ---

    @(link_name = "uv_sem_trywait")
    sem_trywait :: proc(sem: ^sem_t) -> i32 ---

    @(link_name = "uv_cond_init")
    cond_init :: proc(cond: ^cond_t) -> i32 ---

    @(link_name = "uv_cond_destroy")
    cond_destroy :: proc(cond: ^cond_t) ---

    @(link_name = "uv_cond_signal")
    cond_signal :: proc(cond: ^cond_t) ---

    @(link_name = "uv_cond_broadcast")
    cond_broadcast :: proc(cond: ^cond_t) ---

    @(link_name = "uv_barrier_init")
    barrier_init :: proc(barrier: ^barrier_t, count: u32) -> i32 ---

    @(link_name = "uv_barrier_destroy")
    barrier_destroy :: proc(barrier: ^barrier_t) ---

    @(link_name = "uv_barrier_wait")
    barrier_wait :: proc(barrier: ^barrier_t) -> i32 ---

    @(link_name = "uv_cond_wait")
    cond_wait :: proc(cond: ^cond_t, mutex: ^mutex_t) ---

    @(link_name = "uv_cond_timedwait")
    cond_timedwait :: proc(cond: ^cond_t, mutex: ^mutex_t, timeout: u64) -> i32 ---

    @(link_name = "uv_once")
    once :: proc(guard: rawptr, callback: callback_func_ptr_anon_21) ---

    @(link_name = "uv_key_create")
    key_create :: proc(key: ^key_t) -> i32 ---

    @(link_name = "uv_key_delete")
    key_delete :: proc(key: ^key_t) ---

    @(link_name = "uv_key_get")
    key_get :: proc(key: ^key_t) -> rawptr ---

    @(link_name = "uv_key_set")
    key_set :: proc(key: ^key_t, value: rawptr) ---

    @(link_name = "uv_gettimeofday")
    gettimeofday :: proc(tv: ^timeval64_t) -> i32 ---

    @(link_name = "uv_thread_create")
    thread_create :: proc(tid: ^thread_t, entry: thread_cb, arg: rawptr) -> i32 ---

    @(link_name = "uv_thread_create_ex")
    thread_create_ex :: proc(tid: ^thread_t, params: [^]thread_options_t, entry: thread_cb, arg: rawptr) -> i32 ---

    @(link_name = "uv_thread_setaffinity")
    thread_setaffinity :: proc(tid: ^thread_t, cpumask: cstring, oldmask: cstring, mask_size: u64) -> i32 ---

    @(link_name = "uv_thread_getaffinity")
    thread_getaffinity :: proc(tid: ^thread_t, cpumask: cstring, mask_size: u64) -> i32 ---

    @(link_name = "uv_thread_getcpu")
    thread_getcpu :: proc() -> i32 ---

    @(link_name = "uv_thread_self")
    thread_self :: proc() -> thread_t ---

    @(link_name = "uv_thread_join")
    thread_join :: proc(tid: ^thread_t) -> i32 ---

    @(link_name = "uv_thread_equal")
    thread_equal :: proc(t1: ^thread_t, t2: ^thread_t) -> i32 ---

    @(link_name = "uv_loop_get_data")
    loop_get_data :: proc(param0: ^loop_t) -> rawptr ---

    @(link_name = "uv_loop_set_data")
    loop_set_data :: proc(param0: ^loop_t, data: rawptr) ---

    @(link_name = "uv_utf16_length_as_wtf8")
    utf16_length_as_wtf8 :: proc(utf16: ^u16, utf16_len: i64) -> u64 ---

    @(link_name = "uv_utf16_to_wtf8")
    utf16_to_wtf8 :: proc(utf16: ^u16, utf16_len: i64, wtf8_ptr: ^cstring, wtf8_len_ptr: ^u64) -> i32 ---

    @(link_name = "uv_wtf8_length_as_utf16")
    wtf8_length_as_utf16 :: proc(wtf8: cstring) -> i64 ---

    @(link_name = "uv_wtf8_to_utf16")
    wtf8_to_utf16 :: proc(wtf8: cstring, utf16: ^u16, utf16_len: u64) ---

}

