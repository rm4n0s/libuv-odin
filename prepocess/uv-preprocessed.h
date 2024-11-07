# 0 "/usr/include/uv.h"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/usr/include/uv.h"
# 56 "/usr/include/uv.h"
# 1 "/usr/include/uv/errno.h" 1
# 25 "/usr/include/uv/errno.h"
# 1 "/usr/include/errno.h" 1 3 4
# 25 "/usr/include/errno.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 394 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 395 "/usr/include/features.h" 2 3 4
# 503 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 576 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 577 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 578 "/usr/include/sys/cdefs.h" 2 3 4
# 504 "/usr/include/features.h" 2 3 4
# 527 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 528 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/errno.h" 2 3 4

# 1 "/usr/include/bits/errno.h" 1 3 4
# 26 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4

# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 6 "/usr/include/asm-generic/errno.h" 2 3 4
# 2 "/usr/include/asm/errno.h" 2 3 4
# 2 "/usr/include/linux/errno.h" 2 3 4
# 27 "/usr/include/bits/errno.h" 2 3 4
# 29 "/usr/include/errno.h" 2 3 4

# 37 "/usr/include/errno.h" 3 4
extern int *__errno_location(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));
# 52 "/usr/include/errno.h" 3 4

# 26 "/usr/include/uv/errno.h" 2
# 57 "/usr/include/uv.h" 2
# 1 "/usr/include/uv/version.h" 1
# 58 "/usr/include/uv.h" 2
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 145 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 214 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 329 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 3 4
typedef int wchar_t;
# 425 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld
      __attribute__((__aligned__(__alignof__(long double))));
# 436 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 3 4
} max_align_t;
# 59 "/usr/include/uv.h" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 28 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 29 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 35 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 29 "/usr/include/bits/types.h" 2 3 4

typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;

typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;

typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;

typedef long int __quad_t;
typedef unsigned long int __u_quad_t;

typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 142 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/time64.h" 1 3 4
# 143 "/usr/include/bits/types.h" 2 3 4

typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct {
  int __val[2];
} __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;

typedef int __clockid_t;

typedef void *__timer_t;

typedef long int __blksize_t;

typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;

typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;

typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;

typedef long int __fsword_t;

typedef long int __ssize_t;

typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;

typedef __off64_t __loff_t;
typedef char *__caddr_t;

typedef long int __intptr_t;

typedef unsigned int __socklen_t;

typedef int __sig_atomic_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos_t.h" 1 3 4

# 1 "/usr/include/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/bits/types/__mbstate_t.h" 3 4
typedef struct {
  int __count;
  union {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/bits/types/__fpos_t.h" 2 3 4

typedef struct _G_fpos_t {
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t {
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__FILE.h" 1 3 4

struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/FILE.h" 1 3 4

struct _IO_FILE;

typedef struct _IO_FILE FILE;
# 44 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;

typedef void _IO_lock_t;

struct _IO_FILE {
  int _flags;

  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;

  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;

  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof(int) - 4 * sizeof(void *) - sizeof(size_t)];
};
# 45 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types/cookie_io_functions_t.h" 1 3 4
# 27 "/usr/include/bits/types/cookie_io_functions_t.h" 3 4
typedef __ssize_t cookie_read_function_t(void *__cookie, char *__buf,
                                         size_t __nbytes);

typedef __ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
                                          size_t __nbytes);

typedef int cookie_seek_function_t(void *__cookie, __off64_t *__pos, int __w);

typedef int cookie_close_function_t(void *__cookie);

typedef struct _IO_cookie_io_functions_t {
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
# 48 "/usr/include/stdio.h" 2 3 4

typedef __gnuc_va_list va_list;
# 64 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 78 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;

typedef __fpos_t fpos_t;
# 129 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 130 "/usr/include/stdio.h" 2 3 4
# 149 "/usr/include/stdio.h" 3 4
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;

extern int remove(const char *__filename)
    __attribute__((__nothrow__, __leaf__));

extern int rename(const char *__old, const char *__new)
    __attribute__((__nothrow__, __leaf__));

extern int renameat(int __oldfd, const char *__old, int __newfd,
                    const char *__new) __attribute__((__nothrow__, __leaf__));
# 184 "/usr/include/stdio.h" 3 4
extern int fclose(FILE *__stream) __attribute__((__nonnull__(1)));
# 194 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile(void) __attribute__((__malloc__))
__attribute__((__malloc__(fclose, 1)));
# 211 "/usr/include/stdio.h" 3 4
extern char *tmpnam(char[20]) __attribute__((__nothrow__, __leaf__));

extern char *tmpnam_r(char __s[20]) __attribute__((__nothrow__, __leaf__));
# 228 "/usr/include/stdio.h" 3 4
extern char *tempnam(const char *__dir, const char *__pfx)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(__builtin_free, 1)));

extern int fflush(FILE *__stream);
# 245 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked(FILE *__stream);
# 264 "/usr/include/stdio.h" 3 4
extern FILE *fopen(const char *__restrict __filename,
                   const char *__restrict __modes) __attribute__((__malloc__))
__attribute__((__malloc__(fclose, 1)));

extern FILE *freopen(const char *__restrict __filename,
                     const char *__restrict __modes, FILE *__restrict __stream)
    __attribute__((__nonnull__(3)));
# 299 "/usr/include/stdio.h" 3 4
extern FILE *fdopen(int __fd, const char *__modes)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)));

extern FILE *fopencookie(void *__restrict __magic_cookie,
                         const char *__restrict __modes,
                         cookie_io_functions_t __io_funcs)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)));

extern FILE *fmemopen(void *__s, size_t __len, const char *__modes)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)));

extern FILE *open_memstream(char **__bufloc, size_t *__sizeloc)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__malloc__))
    __attribute__((__malloc__(fclose, 1)));
# 334 "/usr/include/stdio.h" 3 4
extern void setbuf(FILE *__restrict __stream, char *__restrict __buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int setvbuf(FILE *__restrict __stream, char *__restrict __buf,
                   int __modes, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern void setbuffer(FILE *__restrict __stream, char *__restrict __buf,
                      size_t __size) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern void setlinebuf(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int fprintf(FILE *__restrict __stream, const char *__restrict __format,
                   ...) __attribute__((__nonnull__(1)));

extern int printf(const char *__restrict __format, ...);

extern int sprintf(char *__restrict __s, const char *__restrict __format, ...)
    __attribute__((__nothrow__));

extern int vfprintf(FILE *__restrict __s, const char *__restrict __format,
                    __gnuc_va_list __arg) __attribute__((__nonnull__(1)));

extern int vprintf(const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf(char *__restrict __s, const char *__restrict __format,
                    __gnuc_va_list __arg) __attribute__((__nothrow__));

extern int snprintf(char *__restrict __s, size_t __maxlen,
                    const char *__restrict __format, ...)
    __attribute__((__nothrow__)) __attribute__((__format__(__printf__, 3, 4)));

extern int vsnprintf(char *__restrict __s, size_t __maxlen,
                     const char *__restrict __format, __gnuc_va_list __arg)
    __attribute__((__nothrow__)) __attribute__((__format__(__printf__, 3, 0)));

extern int vasprintf(char **__restrict __ptr, const char *__restrict __f,
                     __gnuc_va_list __arg) __attribute__((__nothrow__))
__attribute__((__format__(__printf__, 2, 0)));
extern int __asprintf(char **__restrict __ptr, const char *__restrict __fmt,
                      ...) __attribute__((__nothrow__))
__attribute__((__format__(__printf__, 2, 3)));
extern int asprintf(char **__restrict __ptr, const char *__restrict __fmt, ...)
    __attribute__((__nothrow__)) __attribute__((__format__(__printf__, 2, 3)));

extern int vdprintf(int __fd, const char *__restrict __fmt,
                    __gnuc_va_list __arg)
    __attribute__((__format__(__printf__, 2, 0)));
extern int dprintf(int __fd, const char *__restrict __fmt, ...)
    __attribute__((__format__(__printf__, 2, 3)));

extern int fscanf(FILE *__restrict __stream, const char *__restrict __format,
                  ...) __attribute__((__nonnull__(1)));

extern int scanf(const char *__restrict __format, ...);

extern int sscanf(const char *__restrict __s, const char *__restrict __format,
                  ...) __attribute__((__nothrow__, __leaf__));

# 1 "/usr/include/bits/floatn.h" 1 3 4
# 119 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/bits/floatn-common.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 25 "/usr/include/bits/floatn-common.h" 2 3 4
# 120 "/usr/include/bits/floatn.h" 2 3 4
# 438 "/usr/include/stdio.h" 2 3 4
# 463 "/usr/include/stdio.h" 3 4
extern int fscanf(FILE *__restrict __stream, const char *__restrict __format,
                  ...) __asm__(""
                               "__isoc99_fscanf")

    __attribute__((__nonnull__(1)));
extern int scanf(const char *__restrict __format,
                 ...) __asm__(""
                              "__isoc99_scanf");
extern int sscanf(const char *__restrict __s, const char *__restrict __format,
                  ...) __asm__(""
                               "__isoc99_sscanf")
    __attribute__((__nothrow__, __leaf__))

    ;
# 490 "/usr/include/stdio.h" 3 4
extern int vfscanf(FILE *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg)
    __attribute__((__format__(__scanf__, 2, 0)))
    __attribute__((__nonnull__(1)));

extern int vscanf(const char *__restrict __format, __gnuc_va_list __arg)
    __attribute__((__format__(__scanf__, 1, 0)));

extern int vsscanf(const char *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg) __attribute__((__nothrow__, __leaf__))
__attribute__((__format__(__scanf__, 2, 0)));
# 540 "/usr/include/stdio.h" 3 4
extern int vfscanf(FILE *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg) __asm__(""
                                                 "__isoc99_vfscanf")

    __attribute__((__format__(__scanf__, 2, 0)))
    __attribute__((__nonnull__(1)));
extern int vscanf(const char *__restrict __format,
                  __gnuc_va_list __arg) __asm__(""
                                                "__isoc99_vscanf")

    __attribute__((__format__(__scanf__, 1, 0)));
extern int vsscanf(const char *__restrict __s, const char *__restrict __format,
                   __gnuc_va_list __arg) __asm__(""
                                                 "__isoc99_vsscanf")
    __attribute__((__nothrow__, __leaf__))

    __attribute__((__format__(__scanf__, 2, 0)));
# 575 "/usr/include/stdio.h" 3 4
extern int fgetc(FILE *__stream) __attribute__((__nonnull__(1)));
extern int getc(FILE *__stream) __attribute__((__nonnull__(1)));

extern int getchar(void);

extern int getc_unlocked(FILE *__stream) __attribute__((__nonnull__(1)));
extern int getchar_unlocked(void);
# 600 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked(FILE *__stream) __attribute__((__nonnull__(1)));
# 611 "/usr/include/stdio.h" 3 4
extern int fputc(int __c, FILE *__stream) __attribute__((__nonnull__(2)));
extern int putc(int __c, FILE *__stream) __attribute__((__nonnull__(2)));

extern int putchar(int __c);
# 627 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked(int __c, FILE *__stream)
    __attribute__((__nonnull__(2)));

extern int putc_unlocked(int __c, FILE *__stream)
    __attribute__((__nonnull__(2)));
extern int putchar_unlocked(int __c);

extern int getw(FILE *__stream) __attribute__((__nonnull__(1)));

extern int putw(int __w, FILE *__stream) __attribute__((__nonnull__(2)));

extern char *fgets(char *__restrict __s, int __n, FILE *__restrict __stream)
    __attribute__((__access__(__write_only__, 1, 2)))
    __attribute__((__nonnull__(3)));
# 694 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim(char **__restrict __lineptr, size_t *__restrict __n,
                            int __delimiter, FILE *__restrict __stream)
    __attribute__((__nonnull__(4)));
extern __ssize_t getdelim(char **__restrict __lineptr, size_t *__restrict __n,
                          int __delimiter, FILE *__restrict __stream)
    __attribute__((__nonnull__(4)));

extern __ssize_t getline(char **__restrict __lineptr, size_t *__restrict __n,
                         FILE *__restrict __stream)
    __attribute__((__nonnull__(3)));

extern int fputs(const char *__restrict __s, FILE *__restrict __stream)
    __attribute__((__nonnull__(2)));

extern int puts(const char *__s);

extern int ungetc(int __c, FILE *__stream) __attribute__((__nonnull__(2)));

extern size_t fread(void *__restrict __ptr, size_t __size, size_t __n,
                    FILE *__restrict __stream) __attribute__((__nonnull__(4)));

extern size_t fwrite(const void *__restrict __ptr, size_t __size, size_t __n,
                     FILE *__restrict __s) __attribute__((__nonnull__(4)));
# 766 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked(void *__restrict __ptr, size_t __size, size_t __n,
                             FILE *__restrict __stream)
    __attribute__((__nonnull__(4)));
extern size_t fwrite_unlocked(const void *__restrict __ptr, size_t __size,
                              size_t __n, FILE *__restrict __stream)
    __attribute__((__nonnull__(4)));

extern int fseek(FILE *__stream, long int __off, int __whence)
    __attribute__((__nonnull__(1)));

extern long int ftell(FILE *__stream) __attribute__((__nonnull__(1)));

extern void rewind(FILE *__stream) __attribute__((__nonnull__(1)));
# 803 "/usr/include/stdio.h" 3 4
extern int fseeko(FILE *__stream, __off_t __off, int __whence)
    __attribute__((__nonnull__(1)));

extern __off_t ftello(FILE *__stream) __attribute__((__nonnull__(1)));
# 829 "/usr/include/stdio.h" 3 4
extern int fgetpos(FILE *__restrict __stream, fpos_t *__restrict __pos)
    __attribute__((__nonnull__(1)));

extern int fsetpos(FILE *__stream, const fpos_t *__pos)
    __attribute__((__nonnull__(1)));
# 860 "/usr/include/stdio.h" 3 4
extern void clearerr(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int feof(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int ferror(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern void clearerr_unlocked(FILE *__stream)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
extern int feof_unlocked(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));
extern int ferror_unlocked(FILE *__stream)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern void perror(const char *__s) __attribute__((__cold__));

extern int fileno(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int fileno_unlocked(FILE *__stream)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 897 "/usr/include/stdio.h" 3 4
extern int pclose(FILE *__stream) __attribute__((__nonnull__(1)));

extern FILE *popen(const char *__command, const char *__modes)
    __attribute__((__malloc__)) __attribute__((__malloc__(pclose, 1)));

extern char *ctermid(char *__s) __attribute__((__nothrow__, __leaf__))
__attribute__((__access__(__write_only__, 1)));
# 941 "/usr/include/stdio.h" 3 4
extern void flockfile(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int ftrylockfile(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern void funlockfile(FILE *__stream) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));
# 959 "/usr/include/stdio.h" 3 4
extern int __uflow(FILE *);
extern int __overflow(FILE *, int);
# 983 "/usr/include/stdio.h" 3 4

# 60 "/usr/include/uv.h" 2
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/stdint-least.h" 1 3 4
# 25 "/usr/include/bits/stdint-least.h" 3 4
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;

typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
# 42 "/usr/include/stdint.h" 2 3 4

typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 60 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 76 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;

typedef unsigned long int uintptr_t;
# 90 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stdint.h" 2 3 4
# 61 "/usr/include/uv.h" 2

# 63 "/usr/include/uv.h"
struct uv__queue {
  struct uv__queue *next;
  struct uv__queue *prev;
};

# 1 "/usr/include/uv/unix.h" 1
# 25 "/usr/include/uv/unix.h"
# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4

# 33 "/usr/include/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;

typedef __loff_t loff_t;

typedef __ino_t ino_t;
# 59 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;

typedef __gid_t gid_t;

typedef __mode_t mode_t;

typedef __nlink_t nlink_t;

typedef __uid_t uid_t;
# 97 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;

typedef __id_t id_t;
# 114 "/usr/include/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;

typedef __key_t key_t;

# 1 "/usr/include/bits/types/clock_t.h" 1 3 4

typedef __clock_t clock_t;
# 127 "/usr/include/sys/types.h" 2 3 4

# 1 "/usr/include/bits/types/clockid_t.h" 1 3 4

typedef __clockid_t clockid_t;
# 129 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/time_t.h" 1 3 4
# 10 "/usr/include/bits/types/time_t.h" 3 4
typedef __time_t time_t;
# 130 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/timer_t.h" 1 3 4

typedef __timer_t timer_t;
# 131 "/usr/include/sys/types.h" 2 3 4
# 144 "/usr/include/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 145 "/usr/include/sys/types.h" 2 3 4

typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;

typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;

typedef int register_t __attribute__((__mode__(__word__)));
# 176 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 35 "/usr/include/bits/endian.h" 3 4
# 1 "/usr/include/bits/endianness.h" 1 3 4
# 36 "/usr/include/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 33 "/usr/include/bits/byteswap.h" 3 4
static __inline __uint16_t __bswap_16(__uint16_t __bsx) {

  return __builtin_bswap16(__bsx);
}

static __inline __uint32_t __bswap_32(__uint32_t __bsx) {

  return __builtin_bswap32(__bsx);
}
# 69 "/usr/include/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t __bswap_64(__uint64_t __bsx) {

  return __builtin_bswap64(__bsx);
}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/bits/uintn-identity.h" 3 4
static __inline __uint16_t __uint16_identity(__uint16_t __x) { return __x; }

static __inline __uint32_t __uint32_identity(__uint32_t __x) { return __x; }

static __inline __uint64_t __uint64_identity(__uint64_t __x) { return __x; }
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/sys/types.h" 2 3 4

# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 31 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/types/sigset_t.h" 1 3 4

# 1 "/usr/include/bits/types/__sigset_t.h" 1 3 4

typedef struct {
  unsigned long int __val[(1024 / (8 * sizeof(unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/bits/types/sigset_t.h" 2 3 4

typedef __sigset_t sigset_t;
# 34 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/types/struct_timeval.h" 1 3 4

struct timeval {

  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/types/struct_timespec.h" 1 3 4
# 11 "/usr/include/bits/types/struct_timespec.h" 3 4
struct timespec {

  __time_t tv_sec;

  __syscall_slong_t tv_nsec;
# 31 "/usr/include/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/sys/select.h" 2 3 4

typedef __suseconds_t suseconds_t;

typedef long int __fd_mask;
# 59 "/usr/include/sys/select.h" 3 4
typedef struct {

  __fd_mask __fds_bits[1024 / (8 * (int)sizeof(__fd_mask))];

} fd_set;

typedef __fd_mask fd_mask;
# 91 "/usr/include/sys/select.h" 3 4

# 102 "/usr/include/sys/select.h" 3 4
extern int select(int __nfds, fd_set *__restrict __readfds,
                  fd_set *__restrict __writefds, fd_set *__restrict __exceptfds,
                  struct timeval *__restrict __timeout);
# 127 "/usr/include/sys/select.h" 3 4
extern int pselect(int __nfds, fd_set *__restrict __readfds,
                   fd_set *__restrict __writefds,
                   fd_set *__restrict __exceptfds,
                   const struct timespec *__restrict __timeout,
                   const __sigset_t *__restrict __sigmask);
# 153 "/usr/include/sys/select.h" 3 4

# 180 "/usr/include/sys/types.h" 2 3 4

typedef __blksize_t blksize_t;

typedef __blkcnt_t blkcnt_t;

typedef __fsblkcnt_t fsblkcnt_t;

typedef __fsfilcnt_t fsfilcnt_t;
# 227 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/bits/thread-shared-types.h" 2 3 4

# 1 "/usr/include/bits/atomic_wide_counter.h" 1 3 4
# 25 "/usr/include/bits/atomic_wide_counter.h" 3 4
typedef union {
  __extension__ unsigned long long int __value64;
  struct {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
# 47 "/usr/include/bits/thread-shared-types.h" 2 3 4

typedef struct __pthread_internal_list {
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist {
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 76 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s {
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;

  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/bits/struct_mutex.h" 3 4
};
# 77 "/usr/include/bits/thread-shared-types.h" 2 3 4
# 89 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t {
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;

  unsigned char __pad1[7];

  unsigned long int __pad2;

  unsigned int __flags;
# 55 "/usr/include/bits/struct_rwlock.h" 3 4
};
# 90 "/usr/include/bits/thread-shared-types.h" 2 3 4

struct __pthread_cond_s {
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2];
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};

typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;

typedef struct {
  int __data;
} __once_flag;
# 24 "/usr/include/bits/pthreadtypes.h" 2 3 4

typedef unsigned long int pthread_t;

typedef union {
  char __size[4];
  int __align;
} pthread_mutexattr_t;

typedef union {
  char __size[4];
  int __align;
} pthread_condattr_t;

typedef unsigned int pthread_key_t;

typedef int pthread_once_t;

union pthread_attr_t {
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;

typedef union {
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union {
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union {
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union {
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;

typedef volatile int pthread_spinlock_t;

typedef union {
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union {
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/sys/types.h" 2 3 4

# 26 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/sys/stat.h" 1 3 4
# 99 "/usr/include/sys/stat.h" 3 4

# 1 "/usr/include/bits/stat.h" 1 3 4
# 25 "/usr/include/bits/stat.h" 3 4
# 1 "/usr/include/bits/struct_stat.h" 1 3 4
# 26 "/usr/include/bits/struct_stat.h" 3 4
struct stat {

  __dev_t st_dev;

  __ino_t st_ino;

  __nlink_t st_nlink;
  __mode_t st_mode;

  __uid_t st_uid;
  __gid_t st_gid;

  int __pad0;

  __dev_t st_rdev;

  __off_t st_size;

  __blksize_t st_blksize;

  __blkcnt_t st_blocks;
# 74 "/usr/include/bits/struct_stat.h" 3 4
  struct timespec st_atim;
  struct timespec st_mtim;
  struct timespec st_ctim;
# 89 "/usr/include/bits/struct_stat.h" 3 4
  __syscall_slong_t __glibc_reserved[3];
# 99 "/usr/include/bits/struct_stat.h" 3 4
};
# 26 "/usr/include/bits/stat.h" 2 3 4
# 102 "/usr/include/sys/stat.h" 2 3 4
# 205 "/usr/include/sys/stat.h" 3 4
extern int stat(const char *__restrict __file, struct stat *__restrict __buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int fstat(int __fd, struct stat *__buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));
# 264 "/usr/include/sys/stat.h" 3 4
extern int fstatat(int __fd, const char *__restrict __file,
                   struct stat *__restrict __buf, int __flag)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)));
# 313 "/usr/include/sys/stat.h" 3 4
extern int lstat(const char *__restrict __file, struct stat *__restrict __buf)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
# 352 "/usr/include/sys/stat.h" 3 4
extern int chmod(const char *__file, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int lchmod(const char *__file, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int fchmod(int __fd, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__));

extern int fchmodat(int __fd, const char *__file, __mode_t __mode, int __flag)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern __mode_t umask(__mode_t __mask) __attribute__((__nothrow__, __leaf__));
# 389 "/usr/include/sys/stat.h" 3 4
extern int mkdir(const char *__path, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int mkdirat(int __fd, const char *__path, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int mknod(const char *__path, __mode_t __mode, __dev_t __dev)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int mknodat(int __fd, const char *__path, __mode_t __mode, __dev_t __dev)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int mkfifo(const char *__path, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int mkfifoat(int __fd, const char *__path, __mode_t __mode)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int utimensat(int __fd, const char *__path,
                     const struct timespec __times[2], int __flags)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));
# 452 "/usr/include/sys/stat.h" 3 4
extern int futimens(int __fd, const struct timespec __times[2])
    __attribute__((__nothrow__, __leaf__));
# 468 "/usr/include/sys/stat.h" 3 4

# 27 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/fcntl.h" 1 3 4
# 28 "/usr/include/fcntl.h" 3 4

# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 35 "/usr/include/bits/fcntl.h" 3 4
struct flock {
  short int l_type;
  short int l_whence;

  __off_t l_start;
  __off_t l_len;

  __pid_t l_pid;
};
# 61 "/usr/include/bits/fcntl.h" 3 4
# 1 "/usr/include/bits/fcntl-linux.h" 1 3 4
# 382 "/usr/include/bits/fcntl-linux.h" 3 4

# 456 "/usr/include/bits/fcntl-linux.h" 3 4

# 62 "/usr/include/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 78 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
# 79 "/usr/include/fcntl.h" 2 3 4
# 177 "/usr/include/fcntl.h" 3 4
extern int fcntl(int __fd, int __cmd, ...);
# 209 "/usr/include/fcntl.h" 3 4
extern int open(const char *__file, int __oflag, ...)
    __attribute__((__nonnull__(1)));
# 233 "/usr/include/fcntl.h" 3 4
extern int openat(int __fd, const char *__file, int __oflag, ...)
    __attribute__((__nonnull__(2)));
# 255 "/usr/include/fcntl.h" 3 4
extern int creat(const char *__file, mode_t __mode)
    __attribute__((__nonnull__(1)));
# 284 "/usr/include/fcntl.h" 3 4
extern int lockf(int __fd, int __cmd, off_t __len);
# 301 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise(int __fd, off_t __offset, off_t __len, int __advise)
    __attribute__((__nothrow__, __leaf__));
# 323 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate(int __fd, off_t __offset, off_t __len);
# 345 "/usr/include/fcntl.h" 3 4

# 28 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/dirent.h" 1 3 4
# 27 "/usr/include/dirent.h" 3 4

# 61 "/usr/include/dirent.h" 3 4
# 1 "/usr/include/bits/dirent.h" 1 3 4
# 22 "/usr/include/bits/dirent.h" 3 4
struct dirent {

  __ino_t d_ino;
  __off_t d_off;

  unsigned short int d_reclen;
  unsigned char d_type;
  char d_name[256];
};
# 62 "/usr/include/dirent.h" 2 3 4
# 97 "/usr/include/dirent.h" 3 4
enum {
  DT_UNKNOWN = 0,

  DT_FIFO = 1,

  DT_CHR = 2,

  DT_DIR = 4,

  DT_BLK = 6,

  DT_REG = 8,

  DT_LNK = 10,

  DT_SOCK = 12,

  DT_WHT = 14

};
# 127 "/usr/include/dirent.h" 3 4
typedef struct __dirstream DIR;

extern int closedir(DIR *__dirp) __attribute__((__nonnull__(1)));

extern DIR *opendir(const char *__name) __attribute__((__nonnull__(1)))
__attribute__((__malloc__)) __attribute__((__malloc__(closedir, 1)));

extern DIR *fdopendir(int __fd) __attribute__((__malloc__))
__attribute__((__malloc__(closedir, 1)));
# 164 "/usr/include/dirent.h" 3 4
extern struct dirent *readdir(DIR *__dirp) __attribute__((__nonnull__(1)));
# 185 "/usr/include/dirent.h" 3 4
extern int readdir_r(DIR *__restrict __dirp, struct dirent *__restrict __entry,
                     struct dirent **__restrict __result)
    __attribute__((__nonnull__(1, 2, 3))) __attribute__((__deprecated__));
# 211 "/usr/include/dirent.h" 3 4
extern void rewinddir(DIR *__dirp) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern void seekdir(DIR *__dirp, long int __pos)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern long int telldir(DIR *__dirp) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int dirfd(DIR *__dirp) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));
# 235 "/usr/include/dirent.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 27 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/posix1_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 81 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/bits/pthread_stack_min-dynamic.h" 1 3 4
# 29 "/usr/include/bits/pthread_stack_min-dynamic.h" 3 4
# 1 "/usr/include/bits/pthread_stack_min.h" 1 3 4
# 30 "/usr/include/bits/pthread_stack_min-dynamic.h" 2 3 4
# 82 "/usr/include/bits/local_lim.h" 2 3 4
# 162 "/usr/include/bits/posix1_lim.h" 2 3 4
# 236 "/usr/include/dirent.h" 2 3 4
# 247 "/usr/include/dirent.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 248 "/usr/include/dirent.h" 2 3 4
# 257 "/usr/include/dirent.h" 3 4
extern int scandir(const char *__restrict __dir,
                   struct dirent ***__restrict __namelist,
                   int (*__selector)(const struct dirent *),
                   int (*__cmp)(const struct dirent **, const struct dirent **))
    __attribute__((__nonnull__(1, 2)));
# 327 "/usr/include/dirent.h" 3 4
extern int alphasort(const struct dirent **__e1, const struct dirent **__e2)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__pure__))
    __attribute__((__nonnull__(1, 2)));
# 355 "/usr/include/dirent.h" 3 4
extern __ssize_t getdirentries(int __fd, char *__restrict __buf,
                               size_t __nbytes, __off_t *__restrict __basep)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 4)));
# 404 "/usr/include/dirent.h" 3 4

# 1 "/usr/include/bits/dirent_ext.h" 1 3 4
# 23 "/usr/include/bits/dirent_ext.h" 3 4

# 33 "/usr/include/bits/dirent_ext.h" 3 4

# 407 "/usr/include/dirent.h" 2 3 4
# 29 "/usr/include/uv/unix.h" 2

# 1 "/usr/include/sys/socket.h" 1 3 4
# 24 "/usr/include/sys/socket.h" 3 4

# 1 "/usr/include/bits/types/struct_iovec.h" 1 3 4
# 23 "/usr/include/bits/types/struct_iovec.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 24 "/usr/include/bits/types/struct_iovec.h" 2 3 4

struct iovec {
  void *iov_base;
  size_t iov_len;
};
# 27 "/usr/include/sys/socket.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 29 "/usr/include/sys/socket.h" 2 3 4

# 1 "/usr/include/bits/socket.h" 1 3 4
# 27 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 28 "/usr/include/bits/socket.h" 2 3 4

typedef __socklen_t socklen_t;

# 1 "/usr/include/bits/socket_type.h" 1 3 4
# 24 "/usr/include/bits/socket_type.h" 3 4
enum __socket_type {
  SOCK_STREAM = 1,

  SOCK_DGRAM = 2,

  SOCK_RAW = 3,

  SOCK_RDM = 4,

  SOCK_SEQPACKET = 5,

  SOCK_DCCP = 6,

  SOCK_PACKET = 10,

  SOCK_CLOEXEC = 02000000,

  SOCK_NONBLOCK = 00004000

};
# 39 "/usr/include/bits/socket.h" 2 3 4
# 180 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/bits/sockaddr.h" 1 3 4
# 28 "/usr/include/bits/sockaddr.h" 3 4
typedef unsigned short int sa_family_t;
# 181 "/usr/include/bits/socket.h" 2 3 4

struct __attribute__((__may_alias__)) sockaddr {
  sa_family_t sa_family;
  char sa_data[14];
};
# 196 "/usr/include/bits/socket.h" 3 4
struct __attribute__((__may_alias__)) sockaddr_storage {
  sa_family_t ss_family;
  char __ss_padding[(128 - (sizeof(unsigned short int)) -
                     sizeof(unsigned long int))];
  unsigned long int __ss_align;
};

enum {
  MSG_OOB = 0x01,

  MSG_PEEK = 0x02,

  MSG_DONTROUTE = 0x04,

  MSG_CTRUNC = 0x08,

  MSG_PROXY = 0x10,

  MSG_TRUNC = 0x20,

  MSG_DONTWAIT = 0x40,

  MSG_EOR = 0x80,

  MSG_WAITALL = 0x100,

  MSG_FIN = 0x200,

  MSG_SYN = 0x400,

  MSG_CONFIRM = 0x800,

  MSG_RST = 0x1000,

  MSG_ERRQUEUE = 0x2000,

  MSG_NOSIGNAL = 0x4000,

  MSG_MORE = 0x8000,

  MSG_WAITFORONE = 0x10000,

  MSG_BATCH = 0x40000,

  MSG_ZEROCOPY = 0x4000000,

  MSG_FASTOPEN = 0x20000000,

  MSG_CMSG_CLOEXEC = 0x40000000

};

struct msghdr {
  void *msg_name;
  socklen_t msg_namelen;

  struct iovec *msg_iov;
  size_t msg_iovlen;

  void *msg_control;
  size_t msg_controllen;

  int msg_flags;
};

struct cmsghdr {
  size_t cmsg_len;

  int cmsg_level;
  int cmsg_type;

  __extension__ unsigned char __cmsg_data[];
};
# 316 "/usr/include/bits/socket.h" 3 4
extern struct cmsghdr *__cmsg_nxthdr(struct msghdr *__mhdr,
                                     struct cmsghdr *__cmsg)
    __attribute__((__nothrow__, __leaf__));
# 363 "/usr/include/bits/socket.h" 3 4
enum {
  SCM_RIGHTS = 0x01
# 375 "/usr/include/bits/socket.h" 3 4
};
# 389 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/asm/socket.h" 1 3 4
# 1 "/usr/include/asm-generic/socket.h" 1 3 4

# 1 "/usr/include/linux/posix_types.h" 1 3 4

# 1 "/usr/include/linux/stddef.h" 1 3 4
# 6 "/usr/include/linux/posix_types.h" 2 3 4
# 25 "/usr/include/linux/posix_types.h" 3 4
typedef struct {
  unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;

typedef void (*__kernel_sighandler_t)(int);

typedef int __kernel_key_t;
typedef int __kernel_mqd_t;

# 1 "/usr/include/asm/posix_types.h" 1 3 4

# 1 "/usr/include/asm/posix_types_64.h" 1 3 4
# 11 "/usr/include/asm/posix_types_64.h" 3 4
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;

typedef unsigned long __kernel_old_dev_t;

# 1 "/usr/include/asm-generic/posix_types.h" 1 3 4

# 1 "/usr/include/asm/bitsperlong.h" 1 3 4
# 11 "/usr/include/asm/bitsperlong.h" 3 4
# 1 "/usr/include/asm-generic/bitsperlong.h" 1 3 4
# 12 "/usr/include/asm/bitsperlong.h" 2 3 4
# 6 "/usr/include/asm-generic/posix_types.h" 2 3 4
# 15 "/usr/include/asm-generic/posix_types.h" 3 4
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;

typedef __kernel_ulong_t __kernel_ino_t;

typedef unsigned int __kernel_mode_t;

typedef int __kernel_pid_t;

typedef int __kernel_ipc_pid_t;

typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;

typedef __kernel_long_t __kernel_suseconds_t;

typedef int __kernel_daddr_t;

typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
# 72 "/usr/include/asm-generic/posix_types.h" 3 4
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;

typedef struct {
  int val[2];
} __kernel_fsid_t;

typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char *__kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
# 19 "/usr/include/asm/posix_types_64.h" 2 3 4
# 8 "/usr/include/asm/posix_types.h" 2 3 4
# 37 "/usr/include/linux/posix_types.h" 2 3 4
# 6 "/usr/include/asm-generic/socket.h" 2 3 4
# 1 "/usr/include/asm/sockios.h" 1 3 4
# 1 "/usr/include/asm-generic/sockios.h" 1 3 4
# 2 "/usr/include/asm/sockios.h" 2 3 4
# 7 "/usr/include/asm-generic/socket.h" 2 3 4
# 2 "/usr/include/asm/socket.h" 2 3 4
# 390 "/usr/include/bits/socket.h" 2 3 4

struct linger {
  int l_onoff;
  int l_linger;
};
# 34 "/usr/include/sys/socket.h" 2 3 4

# 1 "/usr/include/bits/types/struct_osockaddr.h" 1 3 4

struct osockaddr {
  unsigned short int sa_family;
  unsigned char sa_data[14];
};
# 37 "/usr/include/sys/socket.h" 2 3 4

enum {
  SHUT_RD = 0,

  SHUT_WR,

  SHUT_RDWR

};
# 102 "/usr/include/sys/socket.h" 3 4
extern int socket(int __domain, int __type, int __protocol)
    __attribute__((__nothrow__, __leaf__));

extern int socketpair(int __domain, int __type, int __protocol, int __fds[2])
    __attribute__((__nothrow__, __leaf__));

extern int bind(int __fd, const struct sockaddr *__addr, socklen_t __len)
    __attribute__((__nothrow__, __leaf__));

extern int getsockname(int __fd, struct sockaddr *__restrict __addr,
                       socklen_t *__restrict __len)
    __attribute__((__nothrow__, __leaf__));
# 126 "/usr/include/sys/socket.h" 3 4
extern int connect(int __fd, const struct sockaddr *__addr, socklen_t __len);

extern int getpeername(int __fd, struct sockaddr *__restrict __addr,
                       socklen_t *__restrict __len)
    __attribute__((__nothrow__, __leaf__));

extern ssize_t send(int __fd, const void *__buf, size_t __n, int __flags);

extern ssize_t recv(int __fd, void *__buf, size_t __n, int __flags);

extern ssize_t sendto(int __fd, const void *__buf, size_t __n, int __flags,
                      const struct sockaddr *__addr, socklen_t __addr_len);
# 163 "/usr/include/sys/socket.h" 3 4
extern ssize_t recvfrom(int __fd, void *__restrict __buf, size_t __n,
                        int __flags, struct sockaddr *__restrict __addr,
                        socklen_t *__restrict __addr_len);
# 174 "/usr/include/sys/socket.h" 3 4
extern ssize_t sendmsg(int __fd, const struct msghdr *__message, int __flags);
# 216 "/usr/include/sys/socket.h" 3 4
extern ssize_t recvmsg(int __fd, struct msghdr *__message, int __flags);
# 255 "/usr/include/sys/socket.h" 3 4
extern int getsockopt(int __fd, int __level, int __optname,
                      void *__restrict __optval, socklen_t *__restrict __optlen)
    __attribute__((__nothrow__, __leaf__));
# 277 "/usr/include/sys/socket.h" 3 4
extern int setsockopt(int __fd, int __level, int __optname,
                      const void *__optval, socklen_t __optlen)
    __attribute__((__nothrow__, __leaf__));
# 296 "/usr/include/sys/socket.h" 3 4
extern int listen(int __fd, int __n) __attribute__((__nothrow__, __leaf__));
# 306 "/usr/include/sys/socket.h" 3 4
extern int accept(int __fd, struct sockaddr *__restrict __addr,
                  socklen_t *__restrict __addr_len);
# 324 "/usr/include/sys/socket.h" 3 4
extern int shutdown(int __fd, int __how) __attribute__((__nothrow__, __leaf__));

extern int sockatmark(int __fd) __attribute__((__nothrow__, __leaf__));

extern int isfdtype(int __fd, int __fdtype)
    __attribute__((__nothrow__, __leaf__));
# 346 "/usr/include/sys/socket.h" 3 4

# 31 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/netinet/in.h" 1 3 4
# 27 "/usr/include/netinet/in.h" 3 4

typedef uint32_t in_addr_t;
struct in_addr {
  in_addr_t s_addr;
};

# 1 "/usr/include/bits/in.h" 1 3 4
# 145 "/usr/include/bits/in.h" 3 4
struct ip_opts {
  struct in_addr ip_dst;
  char ip_opts[40];
};

struct in_pktinfo {
  int ipi_ifindex;
  struct in_addr ipi_spec_dst;
  struct in_addr ipi_addr;
};
# 38 "/usr/include/netinet/in.h" 2 3 4

enum {
  IPPROTO_IP = 0,

  IPPROTO_ICMP = 1,

  IPPROTO_IGMP = 2,

  IPPROTO_IPIP = 4,

  IPPROTO_TCP = 6,

  IPPROTO_EGP = 8,

  IPPROTO_PUP = 12,

  IPPROTO_UDP = 17,

  IPPROTO_IDP = 22,

  IPPROTO_TP = 29,

  IPPROTO_DCCP = 33,

  IPPROTO_IPV6 = 41,

  IPPROTO_RSVP = 46,

  IPPROTO_GRE = 47,

  IPPROTO_ESP = 50,

  IPPROTO_AH = 51,

  IPPROTO_MTP = 92,

  IPPROTO_BEETPH = 94,

  IPPROTO_ENCAP = 98,

  IPPROTO_PIM = 103,

  IPPROTO_COMP = 108,

  IPPROTO_L2TP = 115,

  IPPROTO_SCTP = 132,

  IPPROTO_UDPLITE = 136,

  IPPROTO_MPLS = 137,

  IPPROTO_ETHERNET = 143,

  IPPROTO_RAW = 255,

  IPPROTO_MPTCP = 262,

  IPPROTO_MAX
};

enum {
  IPPROTO_HOPOPTS = 0,

  IPPROTO_ROUTING = 43,

  IPPROTO_FRAGMENT = 44,

  IPPROTO_ICMPV6 = 58,

  IPPROTO_NONE = 59,

  IPPROTO_DSTOPTS = 60,

  IPPROTO_MH = 135

};

typedef uint16_t in_port_t;

enum {
  IPPORT_ECHO = 7,
  IPPORT_DISCARD = 9,
  IPPORT_SYSTAT = 11,
  IPPORT_DAYTIME = 13,
  IPPORT_NETSTAT = 15,
  IPPORT_FTP = 21,
  IPPORT_TELNET = 23,
  IPPORT_SMTP = 25,
  IPPORT_TIMESERVER = 37,
  IPPORT_NAMESERVER = 42,
  IPPORT_WHOIS = 43,
  IPPORT_MTP = 57,

  IPPORT_TFTP = 69,
  IPPORT_RJE = 77,
  IPPORT_FINGER = 79,
  IPPORT_TTYLINK = 87,
  IPPORT_SUPDUP = 95,

  IPPORT_EXECSERVER = 512,
  IPPORT_LOGINSERVER = 513,
  IPPORT_CMDSERVER = 514,
  IPPORT_EFSSERVER = 520,

  IPPORT_BIFFUDP = 512,
  IPPORT_WHOSERVER = 513,
  IPPORT_ROUTESERVER = 520,

  IPPORT_RESERVED = 1024,

  IPPORT_USERRESERVED = 5000
};
# 221 "/usr/include/netinet/in.h" 3 4
struct in6_addr {
  union {
    uint8_t __u6_addr8[16];
    uint16_t __u6_addr16[8];
    uint32_t __u6_addr32[4];
  } __in6_u;
};

extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
# 247 "/usr/include/netinet/in.h" 3 4
struct __attribute__((__may_alias__)) sockaddr_in {
  sa_family_t sin_family;
  in_port_t sin_port;
  struct in_addr sin_addr;

  unsigned char sin_zero[sizeof(struct sockaddr) -
                         (sizeof(unsigned short int)) - sizeof(in_port_t) -
                         sizeof(struct in_addr)];
};

struct __attribute__((__may_alias__)) sockaddr_in6 {
  sa_family_t sin6_family;
  in_port_t sin6_port;
  uint32_t sin6_flowinfo;
  struct in6_addr sin6_addr;
  uint32_t sin6_scope_id;
};

struct ip_mreq {

  struct in_addr imr_multiaddr;

  struct in_addr imr_interface;
};

struct ip_mreqn {

  struct in_addr imr_multiaddr;

  struct in_addr imr_address;

  int imr_ifindex;
};

struct ip_mreq_source {

  struct in_addr imr_multiaddr;

  struct in_addr imr_interface;

  struct in_addr imr_sourceaddr;
};

struct ipv6_mreq {

  struct in6_addr ipv6mr_multiaddr;

  unsigned int ipv6mr_interface;
};

struct group_req {

  uint32_t gr_interface;

  struct sockaddr_storage gr_group;
};

struct group_source_req {

  uint32_t gsr_interface;

  struct sockaddr_storage gsr_group;

  struct sockaddr_storage gsr_source;
};

struct ip_msfilter {

  struct in_addr imsf_multiaddr;

  struct in_addr imsf_interface;

  uint32_t imsf_fmode;

  uint32_t imsf_numsrc;

  struct in_addr imsf_slist[1];
};

struct group_filter {

  uint32_t gf_interface;

  struct sockaddr_storage gf_group;

  uint32_t gf_fmode;

  uint32_t gf_numsrc;

  struct sockaddr_storage gf_slist[1];
};
# 399 "/usr/include/netinet/in.h" 3 4
extern uint32_t ntohl(uint32_t __netlong) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));
extern uint16_t ntohs(uint16_t __netshort)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__));
extern uint32_t htonl(uint32_t __hostlong)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__));
extern uint16_t htons(uint16_t __hostshort)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__));

# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 411 "/usr/include/netinet/in.h" 2 3 4
# 1 "/usr/include/bits/uintn-identity.h" 1 3 4
# 412 "/usr/include/netinet/in.h" 2 3 4
# 527 "/usr/include/netinet/in.h" 3 4
extern int bindresvport(int __sockfd, struct sockaddr_in *__sock_in)
    __attribute__((__nothrow__, __leaf__));

extern int bindresvport6(int __sockfd, struct sockaddr_in6 *__sock_in)
    __attribute__((__nothrow__, __leaf__));
# 655 "/usr/include/netinet/in.h" 3 4

# 32 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/netinet/tcp.h" 1 3 4
# 93 "/usr/include/netinet/tcp.h" 3 4
typedef uint32_t tcp_seq;

struct tcphdr {
  __extension__ union {
    struct {
      uint16_t th_sport;
      uint16_t th_dport;
      tcp_seq th_seq;
      tcp_seq th_ack;

      uint8_t th_x2 : 4;
      uint8_t th_off : 4;

      uint8_t th_flags;

      uint16_t th_win;
      uint16_t th_sum;
      uint16_t th_urp;
    };
    struct {
      uint16_t source;
      uint16_t dest;
      uint32_t seq;
      uint32_t ack_seq;

      uint16_t res1 : 4;
      uint16_t doff : 4;
      uint16_t fin : 1;
      uint16_t syn : 1;
      uint16_t rst : 1;
      uint16_t psh : 1;
      uint16_t ack : 1;
      uint16_t urg : 1;
      uint16_t res2 : 2;
# 156 "/usr/include/netinet/tcp.h" 3 4
      uint16_t window;
      uint16_t check;
      uint16_t urg_ptr;
    };
  };
};

enum {
  TCP_ESTABLISHED = 1,
  TCP_SYN_SENT,
  TCP_SYN_RECV,
  TCP_FIN_WAIT1,
  TCP_FIN_WAIT2,
  TCP_TIME_WAIT,
  TCP_CLOSE,
  TCP_CLOSE_WAIT,
  TCP_LAST_ACK,
  TCP_LISTEN,
  TCP_CLOSING
};
# 217 "/usr/include/netinet/tcp.h" 3 4
enum tcp_ca_state {
  TCP_CA_Open = 0,
  TCP_CA_Disorder = 1,
  TCP_CA_CWR = 2,
  TCP_CA_Recovery = 3,
  TCP_CA_Loss = 4
};

struct tcp_info {
  uint8_t tcpi_state;
  uint8_t tcpi_ca_state;
  uint8_t tcpi_retransmits;
  uint8_t tcpi_probes;
  uint8_t tcpi_backoff;
  uint8_t tcpi_options;
  uint8_t tcpi_snd_wscale : 4, tcpi_rcv_wscale : 4;

  uint32_t tcpi_rto;
  uint32_t tcpi_ato;
  uint32_t tcpi_snd_mss;
  uint32_t tcpi_rcv_mss;

  uint32_t tcpi_unacked;
  uint32_t tcpi_sacked;
  uint32_t tcpi_lost;
  uint32_t tcpi_retrans;
  uint32_t tcpi_fackets;

  uint32_t tcpi_last_data_sent;
  uint32_t tcpi_last_ack_sent;
  uint32_t tcpi_last_data_recv;
  uint32_t tcpi_last_ack_recv;

  uint32_t tcpi_pmtu;
  uint32_t tcpi_rcv_ssthresh;
  uint32_t tcpi_rtt;
  uint32_t tcpi_rttvar;
  uint32_t tcpi_snd_ssthresh;
  uint32_t tcpi_snd_cwnd;
  uint32_t tcpi_advmss;
  uint32_t tcpi_reordering;

  uint32_t tcpi_rcv_rtt;
  uint32_t tcpi_rcv_space;

  uint32_t tcpi_total_retrans;
};
# 277 "/usr/include/netinet/tcp.h" 3 4
struct tcp_md5sig {
  struct sockaddr_storage tcpm_addr;
  uint8_t tcpm_flags;
  uint8_t tcpm_prefixlen;
  uint16_t tcpm_keylen;
  int tcpm_ifindex;
  uint8_t tcpm_key[80];
};

struct tcp_repair_opt {
  uint32_t opt_code;
  uint32_t opt_val;
};

enum {
  TCP_NO_QUEUE,
  TCP_RECV_QUEUE,
  TCP_SEND_QUEUE,
  TCP_QUEUES_NR,
};
# 320 "/usr/include/netinet/tcp.h" 3 4
struct tcp_cookie_transactions {
  uint16_t tcpct_flags;
  uint8_t __tcpct_pad1;
  uint8_t tcpct_cookie_desired;
  uint16_t tcpct_s_data_desired;
  uint16_t tcpct_used;
  uint8_t tcpct_value[536U];
};

struct tcp_repair_window {
  uint32_t snd_wl1;
  uint32_t snd_wnd;
  uint32_t max_window;
  uint32_t rcv_wnd;
  uint32_t rcv_wup;
};

struct tcp_zerocopy_receive {
  uint64_t address;
  uint32_t length;
  uint32_t recv_skip_hint;
};
# 33 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/arpa/inet.h" 1 3 4
# 30 "/usr/include/arpa/inet.h" 3 4

extern in_addr_t inet_addr(const char *__cp)
    __attribute__((__nothrow__, __leaf__));

extern in_addr_t inet_lnaof(struct in_addr __in)
    __attribute__((__nothrow__, __leaf__));

extern struct in_addr inet_makeaddr(in_addr_t __net, in_addr_t __host)
    __attribute__((__nothrow__, __leaf__));

extern in_addr_t inet_netof(struct in_addr __in)
    __attribute__((__nothrow__, __leaf__));

extern in_addr_t inet_network(const char *__cp)
    __attribute__((__nothrow__, __leaf__));

extern char *inet_ntoa(struct in_addr __in)
    __attribute__((__nothrow__, __leaf__));

extern int inet_pton(int __af, const char *__restrict __cp,
                     void *__restrict __buf)
    __attribute__((__nothrow__, __leaf__));

extern const char *inet_ntop(int __af, const void *__restrict __cp,
                             char *__restrict __buf, socklen_t __len)
    __attribute__((__nothrow__, __leaf__));

extern int inet_aton(const char *__cp, struct in_addr *__inp)
    __attribute__((__nothrow__, __leaf__));

extern char *inet_neta(in_addr_t __net, char *__buf, size_t __len)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__deprecated__("Use inet_ntop instead")));

extern char *inet_net_ntop(int __af, const void *__cp, int __bits, char *__buf,
                           size_t __len) __attribute__((__nothrow__, __leaf__));

extern int inet_net_pton(int __af, const char *__cp, void *__buf, size_t __len)
    __attribute__((__nothrow__, __leaf__));

extern unsigned int inet_nsap_addr(const char *__cp, unsigned char *__buf,
                                   int __len)
    __attribute__((__nothrow__, __leaf__));

extern char *inet_nsap_ntoa(int __len, const unsigned char *__cp, char *__buf)
    __attribute__((__nothrow__, __leaf__));

# 34 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/netdb.h" 1 3 4
# 32 "/usr/include/netdb.h" 3 4
# 1 "/usr/include/rpc/netdb.h" 1 3 4
# 42 "/usr/include/rpc/netdb.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 43 "/usr/include/rpc/netdb.h" 2 3 4

struct rpcent {
  char *r_name;
  char **r_aliases;
  int r_number;
};

extern void setrpcent(int __stayopen) __attribute__((__nothrow__, __leaf__));
extern void endrpcent(void) __attribute__((__nothrow__, __leaf__));
extern struct rpcent *getrpcbyname(const char *__name)
    __attribute__((__nothrow__, __leaf__));
extern struct rpcent *getrpcbynumber(int __number)
    __attribute__((__nothrow__, __leaf__));
extern struct rpcent *getrpcent(void) __attribute__((__nothrow__, __leaf__));

extern int getrpcbyname_r(const char *__name, struct rpcent *__result_buf,
                          char *__buffer, size_t __buflen,
                          struct rpcent **__result)
    __attribute__((__nothrow__, __leaf__));

extern int getrpcbynumber_r(int __number, struct rpcent *__result_buf,
                            char *__buffer, size_t __buflen,
                            struct rpcent **__result)
    __attribute__((__nothrow__, __leaf__));

extern int getrpcent_r(struct rpcent *__result_buf, char *__buffer,
                       size_t __buflen, struct rpcent **__result)
    __attribute__((__nothrow__, __leaf__));

# 33 "/usr/include/netdb.h" 2 3 4

# 1 "/usr/include/bits/netdb.h" 1 3 4
# 26 "/usr/include/bits/netdb.h" 3 4
struct netent {
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};
# 41 "/usr/include/netdb.h" 2 3 4
# 51 "/usr/include/netdb.h" 3 4

extern int *__h_errno_location(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));
# 90 "/usr/include/netdb.h" 3 4
extern void herror(const char *__str) __attribute__((__nothrow__, __leaf__));

extern const char *hstrerror(int __err_num)
    __attribute__((__nothrow__, __leaf__));

struct hostent {
  char *h_name;
  char **h_aliases;
  int h_addrtype;
  int h_length;
  char **h_addr_list;
};

extern void sethostent(int __stay_open);

extern void endhostent(void);

extern struct hostent *gethostent(void);

extern struct hostent *gethostbyaddr(const void *__addr, __socklen_t __len,
                                     int __type);

extern struct hostent *gethostbyname(const char *__name);
# 153 "/usr/include/netdb.h" 3 4
extern struct hostent *gethostbyname2(const char *__name, int __af);
# 165 "/usr/include/netdb.h" 3 4
extern int gethostent_r(struct hostent *__restrict __result_buf,
                        char *__restrict __buf, size_t __buflen,
                        struct hostent **__restrict __result,
                        int *__restrict __h_errnop);

extern int gethostbyaddr_r(const void *__restrict __addr, __socklen_t __len,
                           int __type, struct hostent *__restrict __result_buf,
                           char *__restrict __buf, size_t __buflen,
                           struct hostent **__restrict __result,
                           int *__restrict __h_errnop);

extern int gethostbyname_r(const char *__restrict __name,
                           struct hostent *__restrict __result_buf,
                           char *__restrict __buf, size_t __buflen,
                           struct hostent **__restrict __result,
                           int *__restrict __h_errnop);

extern int gethostbyname2_r(const char *__restrict __name, int __af,
                            struct hostent *__restrict __result_buf,
                            char *__restrict __buf, size_t __buflen,
                            struct hostent **__restrict __result,
                            int *__restrict __h_errnop);
# 196 "/usr/include/netdb.h" 3 4
extern void setnetent(int __stay_open);

extern void endnetent(void);

extern struct netent *getnetent(void);

extern struct netent *getnetbyaddr(uint32_t __net, int __type);

extern struct netent *getnetbyname(const char *__name);
# 235 "/usr/include/netdb.h" 3 4
extern int getnetent_r(struct netent *__restrict __result_buf,
                       char *__restrict __buf, size_t __buflen,
                       struct netent **__restrict __result,
                       int *__restrict __h_errnop);

extern int getnetbyaddr_r(uint32_t __net, int __type,
                          struct netent *__restrict __result_buf,
                          char *__restrict __buf, size_t __buflen,
                          struct netent **__restrict __result,
                          int *__restrict __h_errnop);

extern int getnetbyname_r(const char *__restrict __name,
                          struct netent *__restrict __result_buf,
                          char *__restrict __buf, size_t __buflen,
                          struct netent **__restrict __result,
                          int *__restrict __h_errnop);

struct servent {
  char *s_name;
  char **s_aliases;
  int s_port;
  char *s_proto;
};

extern void setservent(int __stay_open);

extern void endservent(void);

extern struct servent *getservent(void);

extern struct servent *getservbyname(const char *__name, const char *__proto);

extern struct servent *getservbyport(int __port, const char *__proto);
# 306 "/usr/include/netdb.h" 3 4
extern int getservent_r(struct servent *__restrict __result_buf,
                        char *__restrict __buf, size_t __buflen,
                        struct servent **__restrict __result);

extern int getservbyname_r(const char *__restrict __name,
                           const char *__restrict __proto,
                           struct servent *__restrict __result_buf,
                           char *__restrict __buf, size_t __buflen,
                           struct servent **__restrict __result);

extern int getservbyport_r(int __port, const char *__restrict __proto,
                           struct servent *__restrict __result_buf,
                           char *__restrict __buf, size_t __buflen,
                           struct servent **__restrict __result);

struct protoent {
  char *p_name;
  char **p_aliases;
  int p_proto;
};

extern void setprotoent(int __stay_open);

extern void endprotoent(void);

extern struct protoent *getprotoent(void);

extern struct protoent *getprotobyname(const char *__name);

extern struct protoent *getprotobynumber(int __proto);
# 372 "/usr/include/netdb.h" 3 4
extern int getprotoent_r(struct protoent *__restrict __result_buf,
                         char *__restrict __buf, size_t __buflen,
                         struct protoent **__restrict __result);

extern int getprotobyname_r(const char *__restrict __name,
                            struct protoent *__restrict __result_buf,
                            char *__restrict __buf, size_t __buflen,
                            struct protoent **__restrict __result);

extern int getprotobynumber_r(int __proto,
                              struct protoent *__restrict __result_buf,
                              char *__restrict __buf, size_t __buflen,
                              struct protoent **__restrict __result);
# 393 "/usr/include/netdb.h" 3 4
extern int setnetgrent(const char *__netgroup);

extern void endnetgrent(void);
# 410 "/usr/include/netdb.h" 3 4
extern int getnetgrent(char **__restrict __hostp, char **__restrict __userp,
                       char **__restrict __domainp);
# 421 "/usr/include/netdb.h" 3 4
extern int innetgr(const char *__netgroup, const char *__host,
                   const char *__user, const char *__domain);

extern int getnetgrent_r(char **__restrict __hostp, char **__restrict __userp,
                         char **__restrict __domainp, char *__restrict __buffer,
                         size_t __buflen);
# 449 "/usr/include/netdb.h" 3 4
extern int rcmd(char **__restrict __ahost, unsigned short int __rport,
                const char *__restrict __locuser,
                const char *__restrict __remuser, const char *__restrict __cmd,
                int *__restrict __fd2p);
# 461 "/usr/include/netdb.h" 3 4
extern int rcmd_af(char **__restrict __ahost, unsigned short int __rport,
                   const char *__restrict __locuser,
                   const char *__restrict __remuser,
                   const char *__restrict __cmd, int *__restrict __fd2p,
                   sa_family_t __af);
# 477 "/usr/include/netdb.h" 3 4
extern int rexec(char **__restrict __ahost, int __rport,
                 const char *__restrict __name, const char *__restrict __pass,
                 const char *__restrict __cmd, int *__restrict __fd2p);
# 489 "/usr/include/netdb.h" 3 4
extern int rexec_af(char **__restrict __ahost, int __rport,
                    const char *__restrict __name,
                    const char *__restrict __pass, const char *__restrict __cmd,
                    int *__restrict __fd2p, sa_family_t __af);
# 503 "/usr/include/netdb.h" 3 4
extern int ruserok(const char *__rhost, int __suser, const char *__remuser,
                   const char *__locuser);
# 513 "/usr/include/netdb.h" 3 4
extern int ruserok_af(const char *__rhost, int __suser, const char *__remuser,
                      const char *__locuser, sa_family_t __af);
# 526 "/usr/include/netdb.h" 3 4
extern int iruserok(uint32_t __raddr, int __suser, const char *__remuser,
                    const char *__locuser);
# 537 "/usr/include/netdb.h" 3 4
extern int iruserok_af(const void *__raddr, int __suser, const char *__remuser,
                       const char *__locuser, sa_family_t __af);
# 549 "/usr/include/netdb.h" 3 4
extern int rresvport(int *__alport);
# 558 "/usr/include/netdb.h" 3 4
extern int rresvport_af(int *__alport, sa_family_t __af);

struct addrinfo {
  int ai_flags;
  int ai_family;
  int ai_socktype;
  int ai_protocol;
  socklen_t ai_addrlen;
  struct sockaddr *ai_addr;
  char *ai_canonname;
  struct addrinfo *ai_next;
};
# 660 "/usr/include/netdb.h" 3 4
extern int getaddrinfo(const char *__restrict __name,
                       const char *__restrict __service,
                       const struct addrinfo *__restrict __req,
                       struct addrinfo **__restrict __pai);

extern void freeaddrinfo(struct addrinfo *__ai)
    __attribute__((__nothrow__, __leaf__));

extern const char *gai_strerror(int __ecode)
    __attribute__((__nothrow__, __leaf__));

extern int getnameinfo(const struct sockaddr *__restrict __sa,
                       socklen_t __salen, char *__restrict __host,
                       socklen_t __hostlen, char *__restrict __serv,
                       socklen_t __servlen, int __flags);
# 722 "/usr/include/netdb.h" 3 4

# 35 "/usr/include/uv/unix.h" 2

# 1 "/usr/include/termios.h" 1 3 4
# 35 "/usr/include/termios.h" 3 4

# 1 "/usr/include/bits/termios.h" 1 3 4
# 23 "/usr/include/bits/termios.h" 3 4
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;

# 1 "/usr/include/bits/termios-struct.h" 1 3 4
# 24 "/usr/include/bits/termios-struct.h" 3 4
struct termios {
  tcflag_t c_iflag;
  tcflag_t c_oflag;
  tcflag_t c_cflag;
  tcflag_t c_lflag;
  cc_t c_line;
  cc_t c_cc[32];
  speed_t c_ispeed;
  speed_t c_ospeed;
};
# 28 "/usr/include/bits/termios.h" 2 3 4
# 1 "/usr/include/bits/termios-c_cc.h" 1 3 4
# 29 "/usr/include/bits/termios.h" 2 3 4
# 1 "/usr/include/bits/termios-c_iflag.h" 1 3 4
# 30 "/usr/include/bits/termios.h" 2 3 4
# 1 "/usr/include/bits/termios-c_oflag.h" 1 3 4
# 31 "/usr/include/bits/termios.h" 2 3 4
# 53 "/usr/include/bits/termios.h" 3 4
# 1 "/usr/include/bits/termios-baud.h" 1 3 4
# 54 "/usr/include/bits/termios.h" 2 3 4

# 1 "/usr/include/bits/termios-c_cflag.h" 1 3 4
# 56 "/usr/include/bits/termios.h" 2 3 4
# 1 "/usr/include/bits/termios-c_lflag.h" 1 3 4
# 57 "/usr/include/bits/termios.h" 2 3 4
# 74 "/usr/include/bits/termios.h" 3 4
# 1 "/usr/include/bits/termios-tcflow.h" 1 3 4
# 75 "/usr/include/bits/termios.h" 2 3 4

# 1 "/usr/include/bits/termios-misc.h" 1 3 4
# 77 "/usr/include/bits/termios.h" 2 3 4
# 40 "/usr/include/termios.h" 2 3 4
# 48 "/usr/include/termios.h" 3 4
extern speed_t cfgetospeed(const struct termios *__termios_p)
    __attribute__((__nothrow__, __leaf__));

extern speed_t cfgetispeed(const struct termios *__termios_p)
    __attribute__((__nothrow__, __leaf__));

extern int cfsetospeed(struct termios *__termios_p, speed_t __speed)
    __attribute__((__nothrow__, __leaf__));

extern int cfsetispeed(struct termios *__termios_p, speed_t __speed)
    __attribute__((__nothrow__, __leaf__));

extern int cfsetspeed(struct termios *__termios_p, speed_t __speed)
    __attribute__((__nothrow__, __leaf__));

extern int tcgetattr(int __fd, struct termios *__termios_p)
    __attribute__((__nothrow__, __leaf__));

extern int tcsetattr(int __fd, int __optional_actions,
                     const struct termios *__termios_p)
    __attribute__((__nothrow__, __leaf__));

extern void cfmakeraw(struct termios *__termios_p)
    __attribute__((__nothrow__, __leaf__));

extern int tcsendbreak(int __fd, int __duration)
    __attribute__((__nothrow__, __leaf__));

extern int tcdrain(int __fd);

extern int tcflush(int __fd, int __queue_selector)
    __attribute__((__nothrow__, __leaf__));

extern int tcflow(int __fd, int __action)
    __attribute__((__nothrow__, __leaf__));

extern __pid_t tcgetsid(int __fd) __attribute__((__nothrow__, __leaf__));

# 1 "/usr/include/sys/ttydefaults.h" 1 3 4
# 105 "/usr/include/termios.h" 2 3 4

# 37 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/pwd.h" 1 3 4
# 27 "/usr/include/pwd.h" 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 33 "/usr/include/pwd.h" 2 3 4
# 49 "/usr/include/pwd.h" 3 4
struct passwd {
  char *pw_name;
  char *pw_passwd;

  __uid_t pw_uid;
  __gid_t pw_gid;
  char *pw_gecos;
  char *pw_dir;
  char *pw_shell;
};
# 72 "/usr/include/pwd.h" 3 4
extern void setpwent(void);

extern void endpwent(void);

extern struct passwd *getpwent(void);
# 94 "/usr/include/pwd.h" 3 4
extern struct passwd *fgetpwent(FILE *__stream) __attribute__((__nonnull__(1)));

extern int putpwent(const struct passwd *__restrict __p, FILE *__restrict __f);

extern struct passwd *getpwuid(__uid_t __uid);

extern struct passwd *getpwnam(const char *__name)
    __attribute__((__nonnull__(1)));
# 139 "/usr/include/pwd.h" 3 4
extern int getpwent_r(struct passwd *__restrict __resultbuf,
                      char *__restrict __buffer, size_t __buflen,
                      struct passwd **__restrict __result)
    __attribute__((__nonnull__(1, 2, 4)))
    __attribute__((__access__(__write_only__, 2, 3)));

extern int getpwuid_r(__uid_t __uid, struct passwd *__restrict __resultbuf,
                      char *__restrict __buffer, size_t __buflen,
                      struct passwd **__restrict __result)
    __attribute__((__nonnull__(2, 3, 5)))
    __attribute__((__access__(__write_only__, 3, 4)));

extern int getpwnam_r(const char *__restrict __name,
                      struct passwd *__restrict __resultbuf,
                      char *__restrict __buffer, size_t __buflen,
                      struct passwd **__restrict __result)
    __attribute__((__nonnull__(1, 2, 3, 5)))
    __attribute__((__access__(__write_only__, 3, 4)));
# 169 "/usr/include/pwd.h" 3 4
extern int fgetpwent_r(FILE *__restrict __stream,
                       struct passwd *__restrict __resultbuf,
                       char *__restrict __buffer, size_t __buflen,
                       struct passwd **__restrict __result)
    __attribute__((__nonnull__(1, 2, 3, 5)))
    __attribute__((__access__(__write_only__, 3, 4)));
# 191 "/usr/include/pwd.h" 3 4

# 38 "/usr/include/uv/unix.h" 2

# 1 "/usr/include/semaphore.h" 1 3 4
# 28 "/usr/include/semaphore.h" 3 4
# 1 "/usr/include/bits/semaphore.h" 1 3 4
# 23 "/usr/include/bits/semaphore.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 24 "/usr/include/bits/semaphore.h" 2 3 4
# 35 "/usr/include/bits/semaphore.h" 3 4
typedef union {
  char __size[32];
  long int __align;
} sem_t;
# 29 "/usr/include/semaphore.h" 2 3 4

extern int sem_init(sem_t *__sem, int __pshared, unsigned int __value)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int sem_destroy(sem_t *__sem) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern sem_t *sem_open(const char *__name, int __oflag, ...)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int sem_close(sem_t *__sem) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sem_unlink(const char *__name) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sem_wait(sem_t *__sem) __attribute__((__nonnull__(1)));

extern int sem_timedwait(sem_t *__restrict __sem,
                         const struct timespec *__restrict __abstime)
    __attribute__((__nonnull__(1, 2)));
# 100 "/usr/include/semaphore.h" 3 4
extern int sem_trywait(sem_t *__sem) __attribute__((__nothrow__))
__attribute__((__nonnull__(1)));

extern int sem_post(sem_t *__sem) __attribute__((__nothrow__))
__attribute__((__nonnull__(1)));

extern int sem_getvalue(sem_t *__restrict __sem, int *__restrict __sval)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

# 41 "/usr/include/uv/unix.h" 2
# 1 "/usr/include/sys/param.h" 1 3 4
# 23 "/usr/include/sys/param.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 24 "/usr/include/sys/param.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-redhat-linux/14/include/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/syslimits.h" 1 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/limits.h" 1 3 4
# 210 "/usr/lib/gcc/x86_64-redhat-linux/14/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 199 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 200 "/usr/include/limits.h" 2 3 4
# 211 "/usr/lib/gcc/x86_64-redhat-linux/14/include/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-redhat-linux/14/include/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-redhat-linux/14/include/limits.h" 2 3 4
# 27 "/usr/include/sys/param.h" 2 3 4

# 1 "/usr/include/signal.h" 1 3 4
# 27 "/usr/include/signal.h" 3 4

# 1 "/usr/include/bits/signum-generic.h" 1 3 4
# 76 "/usr/include/bits/signum-generic.h" 3 4
# 1 "/usr/include/bits/signum-arch.h" 1 3 4
# 77 "/usr/include/bits/signum-generic.h" 2 3 4
# 31 "/usr/include/signal.h" 2 3 4

# 1 "/usr/include/bits/types/sig_atomic_t.h" 1 3 4

typedef __sig_atomic_t sig_atomic_t;
# 33 "/usr/include/signal.h" 2 3 4
# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/types/siginfo_t.h" 1 3 4

# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 5 "/usr/include/bits/types/siginfo_t.h" 2 3 4

# 1 "/usr/include/bits/types/__sigval_t.h" 1 3 4
# 24 "/usr/include/bits/types/__sigval_t.h" 3 4
union sigval {
  int sival_int;
  void *sival_ptr;
};

typedef union sigval __sigval_t;
# 7 "/usr/include/bits/types/siginfo_t.h" 2 3 4
# 16 "/usr/include/bits/types/siginfo_t.h" 3 4
# 1 "/usr/include/bits/siginfo-arch.h" 1 3 4
# 17 "/usr/include/bits/types/siginfo_t.h" 2 3 4
# 36 "/usr/include/bits/types/siginfo_t.h" 3 4
typedef struct {
  int si_signo;

  int si_errno;

  int si_code;

  int __pad0;

  union {
    int _pad[((128 / sizeof(int)) - 4)];

    struct {
      __pid_t si_pid;
      __uid_t si_uid;
    } _kill;

    struct {
      int si_tid;
      int si_overrun;
      __sigval_t si_sigval;
    } _timer;

    struct {
      __pid_t si_pid;
      __uid_t si_uid;
      __sigval_t si_sigval;
    } _rt;

    struct {
      __pid_t si_pid;
      __uid_t si_uid;
      int si_status;
      __clock_t si_utime;
      __clock_t si_stime;
    } _sigchld;

    struct {
      void *si_addr;

      short int si_addr_lsb;
      union {

        struct {
          void *_lower;
          void *_upper;
        } _addr_bnd;

        __uint32_t _pkey;
      } _bounds;
    } _sigfault;

    struct {
      long int si_band;
      int si_fd;
    } _sigpoll;

    struct {
      void *_call_addr;
      int _syscall;
      unsigned int _arch;
    } _sigsys;

  } _sifields;
} siginfo_t;
# 58 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/siginfo-consts.h" 1 3 4
# 35 "/usr/include/bits/siginfo-consts.h" 3 4
enum {
  SI_ASYNCNL = -60,
  SI_DETHREAD = -7,

  SI_TKILL,
  SI_SIGIO,

  SI_ASYNCIO,
  SI_MESGQ,
  SI_TIMER,

  SI_QUEUE,
  SI_USER,
  SI_KERNEL = 0x80
# 66 "/usr/include/bits/siginfo-consts.h" 3 4
};

enum {
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK,

  ILL_BADIADDR

};

enum {
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB,

  FPE_FLTUNK = 14,

  FPE_CONDTRAP

};

enum {
  SEGV_MAPERR = 1,

  SEGV_ACCERR,

  SEGV_BNDERR,

  SEGV_PKUERR,

  SEGV_ACCADI,

  SEGV_ADIDERR,

  SEGV_ADIPERR,

  SEGV_MTEAERR,

  SEGV_MTESERR,

  SEGV_CPERR

};

enum {
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR,

  BUS_MCEERR_AR,

  BUS_MCEERR_AO

};
# 178 "/usr/include/bits/siginfo-consts.h" 3 4
enum {
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};

enum {
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 59 "/usr/include/signal.h" 2 3 4

# 1 "/usr/include/bits/types/sigval_t.h" 1 3 4
# 16 "/usr/include/bits/types/sigval_t.h" 3 4
typedef __sigval_t sigval_t;
# 63 "/usr/include/signal.h" 2 3 4

# 1 "/usr/include/bits/types/sigevent_t.h" 1 3 4

# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 5 "/usr/include/bits/types/sigevent_t.h" 2 3 4
# 22 "/usr/include/bits/types/sigevent_t.h" 3 4
typedef struct sigevent {
  __sigval_t sigev_value;
  int sigev_signo;
  int sigev_notify;

  union {
    int _pad[((64 / sizeof(int)) - 4)];

    __pid_t _tid;

    struct {
      void (*_function)(__sigval_t);
      pthread_attr_t *_attribute;
    } _sigev_thread;
  } _sigev_un;
} sigevent_t;
# 67 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/sigevent-consts.h" 1 3 4
# 27 "/usr/include/bits/sigevent-consts.h" 3 4
enum {
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,

  SIGEV_THREAD_ID = 4

};
# 68 "/usr/include/signal.h" 2 3 4

typedef void (*__sighandler_t)(int);

extern __sighandler_t __sysv_signal(int __sig, __sighandler_t __handler)
    __attribute__((__nothrow__, __leaf__));
# 88 "/usr/include/signal.h" 3 4
extern __sighandler_t signal(int __sig, __sighandler_t __handler)
    __attribute__((__nothrow__, __leaf__));
# 112 "/usr/include/signal.h" 3 4
extern int kill(__pid_t __pid, int __sig)
    __attribute__((__nothrow__, __leaf__));

extern int killpg(__pid_t __pgrp, int __sig)
    __attribute__((__nothrow__, __leaf__));

extern int raise(int __sig) __attribute__((__nothrow__, __leaf__));

extern __sighandler_t ssignal(int __sig, __sighandler_t __handler)
    __attribute__((__nothrow__, __leaf__));
extern int gsignal(int __sig) __attribute__((__nothrow__, __leaf__));

extern void psignal(int __sig, const char *__s);

extern void psiginfo(const siginfo_t *__pinfo, const char *__s);
# 173 "/usr/include/signal.h" 3 4
extern int sigblock(int __mask) __attribute__((__nothrow__, __leaf__))
__attribute__((__deprecated__));

extern int sigsetmask(int __mask) __attribute__((__nothrow__, __leaf__))
__attribute__((__deprecated__));

extern int siggetmask(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__deprecated__));
# 193 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;

extern int sigemptyset(sigset_t *__set) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sigfillset(sigset_t *__set) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sigaddset(sigset_t *__set, int __signo)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int sigdelset(sigset_t *__set, int __signo)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int sigismember(const sigset_t *__set, int __signo)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 229 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 27 "/usr/include/bits/sigaction.h" 3 4
struct sigaction {

  union {

    __sighandler_t sa_handler;

    void (*sa_sigaction)(int, siginfo_t *, void *);
  } __sigaction_handler;

  __sigset_t sa_mask;

  int sa_flags;

  void (*sa_restorer)(void);
};
# 230 "/usr/include/signal.h" 2 3 4

extern int sigprocmask(int __how, const sigset_t *__restrict __set,
                       sigset_t *__restrict __oset)
    __attribute__((__nothrow__, __leaf__));

extern int sigsuspend(const sigset_t *__set) __attribute__((__nonnull__(1)));

extern int sigaction(int __sig, const struct sigaction *__restrict __act,
                     struct sigaction *__restrict __oact)
    __attribute__((__nothrow__, __leaf__));

extern int sigpending(sigset_t *__set) __attribute__((__nothrow__, __leaf__))
__attribute__((__nonnull__(1)));

extern int sigwait(const sigset_t *__restrict __set, int *__restrict __sig)
    __attribute__((__nonnull__(1, 2)));

extern int sigwaitinfo(const sigset_t *__restrict __set,
                       siginfo_t *__restrict __info)
    __attribute__((__nonnull__(1)));

extern int sigtimedwait(const sigset_t *__restrict __set,
                        siginfo_t *__restrict __info,
                        const struct timespec *__restrict __timeout)
    __attribute__((__nonnull__(1)));
# 292 "/usr/include/signal.h" 3 4
extern int sigqueue(__pid_t __pid, int __sig, const union sigval __val)
    __attribute__((__nothrow__, __leaf__));

# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 31 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes {
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t __glibc_reserved1[7];
};

struct _fpreg {
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg {
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short __glibc_reserved1[3];
};

struct _xmmreg {
  __uint32_t element[4];
};
# 123 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate {

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};

struct sigcontext {
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union {
    struct _fpstate *fpstate;
    __uint64_t __fpstate_word;
  };
  __uint64_t __reserved1[8];
};

struct _xsave_hdr {
  __uint64_t xstate_bv;
  __uint64_t __glibc_reserved1[2];
  __uint64_t __glibc_reserved2[5];
};

struct _ymmh_state {
  __uint32_t ymmh_space[64];
};

struct _xstate {
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 302 "/usr/include/signal.h" 2 3 4

extern int sigreturn(struct sigcontext *__scp)
    __attribute__((__nothrow__, __leaf__));

# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 312 "/usr/include/signal.h" 2 3 4

# 1 "/usr/include/bits/types/stack_t.h" 1 3 4
# 23 "/usr/include/bits/types/stack_t.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 24 "/usr/include/bits/types/stack_t.h" 2 3 4

typedef struct {
  void *ss_sp;
  int ss_flags;
  size_t ss_size;
} stack_t;
# 314 "/usr/include/signal.h" 2 3 4

# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 37 "/usr/include/sys/ucontext.h" 3 4
__extension__ typedef long long int greg_t;
# 46 "/usr/include/sys/ucontext.h" 3 4
typedef greg_t gregset_t[23];
# 101 "/usr/include/sys/ucontext.h" 3 4
struct _libc_fpxreg {
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int __glibc_reserved1[3];
};

struct _libc_xmmreg {
  __uint32_t element[4];
};

struct _libc_fpstate {

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};

typedef struct _libc_fpstate *fpregset_t;

typedef struct {
  gregset_t gregs;

  fpregset_t fpregs;
  __extension__ unsigned long long __reserved1[8];
} mcontext_t;

typedef struct ucontext_t {
  unsigned long int uc_flags;
  struct ucontext_t *uc_link;
  stack_t uc_stack;
  mcontext_t uc_mcontext;
  sigset_t uc_sigmask;
  struct _libc_fpstate __fpregs_mem;
  __extension__ unsigned long long int __ssp[4];
} ucontext_t;
# 317 "/usr/include/signal.h" 2 3 4

extern int siginterrupt(int __sig, int __interrupt)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__deprecated__("Use sigaction with SA_RESTART instead")));

# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 328 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/sigstksz.h" 1 3 4
# 329 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/ss_flags.h" 1 3 4
# 27 "/usr/include/bits/ss_flags.h" 3 4
enum {
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 330 "/usr/include/signal.h" 2 3 4

extern int sigaltstack(const stack_t *__restrict __ss,
                       stack_t *__restrict __oss)
    __attribute__((__nothrow__, __leaf__));

# 1 "/usr/include/bits/types/struct_sigstack.h" 1 3 4
# 23 "/usr/include/bits/types/struct_sigstack.h" 3 4
struct sigstack {
  void *ss_sp;
  int ss_onstack;
};
# 340 "/usr/include/signal.h" 2 3 4

extern int sigstack(struct sigstack *__ss, struct sigstack *__oss)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__deprecated__));
# 376 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 31 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask(int __how, const __sigset_t *__restrict __newmask,
                           __sigset_t *__restrict __oldmask)
    __attribute__((__nothrow__, __leaf__));

extern int pthread_kill(pthread_t __threadid, int __signo)
    __attribute__((__nothrow__, __leaf__));
# 377 "/usr/include/signal.h" 2 3 4

extern int __libc_current_sigrtmin(void) __attribute__((__nothrow__, __leaf__));

extern int __libc_current_sigrtmax(void) __attribute__((__nothrow__, __leaf__));

# 1 "/usr/include/bits/signal_ext.h" 1 3 4
# 392 "/usr/include/signal.h" 2 3 4

# 29 "/usr/include/sys/param.h" 2 3 4

# 1 "/usr/include/bits/param.h" 1 3 4
# 28 "/usr/include/bits/param.h" 3 4
# 1 "/usr/include/linux/param.h" 1 3 4

# 1 "/usr/include/asm/param.h" 1 3 4
# 1 "/usr/include/asm-generic/param.h" 1 3 4
# 2 "/usr/include/asm/param.h" 2 3 4
# 6 "/usr/include/linux/param.h" 2 3 4
# 29 "/usr/include/bits/param.h" 2 3 4
# 32 "/usr/include/sys/param.h" 2 3 4
# 42 "/usr/include/uv/unix.h" 2

# 1 "/usr/include/pthread.h" 1 3 4
# 22 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 29 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 30 "/usr/include/sched.h" 2 3 4
# 43 "/usr/include/sched.h" 3 4
# 1 "/usr/include/bits/sched.h" 1 3 4
# 80 "/usr/include/bits/sched.h" 3 4
# 1 "/usr/include/bits/types/struct_sched_param.h" 1 3 4
# 23 "/usr/include/bits/types/struct_sched_param.h" 3 4
struct sched_param {
  int sched_priority;
};
# 81 "/usr/include/bits/sched.h" 2 3 4

# 102 "/usr/include/bits/sched.h" 3 4

# 44 "/usr/include/sched.h" 2 3 4
# 1 "/usr/include/bits/cpu-set.h" 1 3 4
# 32 "/usr/include/bits/cpu-set.h" 3 4
typedef unsigned long int __cpu_mask;

typedef struct {
  __cpu_mask __bits[1024 / (8 * sizeof(__cpu_mask))];
} cpu_set_t;
# 115 "/usr/include/bits/cpu-set.h" 3 4

extern int __sched_cpucount(size_t __setsize, const cpu_set_t *__setp)
    __attribute__((__nothrow__, __leaf__));
extern cpu_set_t *__sched_cpualloc(size_t __count)
    __attribute__((__nothrow__, __leaf__));
extern void __sched_cpufree(cpu_set_t *__set)
    __attribute__((__nothrow__, __leaf__));

# 45 "/usr/include/sched.h" 2 3 4

extern int sched_setparam(__pid_t __pid, const struct sched_param *__param)
    __attribute__((__nothrow__, __leaf__));

extern int sched_getparam(__pid_t __pid, struct sched_param *__param)
    __attribute__((__nothrow__, __leaf__));

extern int sched_setscheduler(__pid_t __pid, int __policy,
                              const struct sched_param *__param)
    __attribute__((__nothrow__, __leaf__));

extern int sched_getscheduler(__pid_t __pid)
    __attribute__((__nothrow__, __leaf__));

extern int sched_yield(void) __attribute__((__nothrow__, __leaf__));

extern int sched_get_priority_max(int __algorithm)
    __attribute__((__nothrow__, __leaf__));

extern int sched_get_priority_min(int __algorithm)
    __attribute__((__nothrow__, __leaf__));

extern int sched_rr_get_interval(__pid_t __pid, struct timespec *__t)
    __attribute__((__nothrow__, __leaf__));
# 138 "/usr/include/sched.h" 3 4

# 23 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/14/include/stddef.h" 1 3 4
# 30 "/usr/include/time.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 34 "/usr/include/time.h" 2 3 4

# 1 "/usr/include/bits/types/struct_tm.h" 1 3 4

struct tm {
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;

  long int tm_gmtoff;
  const char *tm_zone;
};
# 40 "/usr/include/time.h" 2 3 4
# 48 "/usr/include/time.h" 3 4
# 1 "/usr/include/bits/types/struct_itimerspec.h" 1 3 4

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};
# 49 "/usr/include/time.h" 2 3 4
struct sigevent;
# 60 "/usr/include/time.h" 3 4
# 1 "/usr/include/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/bits/types/locale_t.h" 3 4
# 1 "/usr/include/bits/types/__locale_t.h" 1 3 4
# 27 "/usr/include/bits/types/__locale_t.h" 3 4
struct __locale_struct {

  struct __locale_data *__locales[13];

  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;

  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 61 "/usr/include/time.h" 2 3 4

extern clock_t clock(void) __attribute__((__nothrow__, __leaf__));

extern time_t time(time_t *__timer) __attribute__((__nothrow__, __leaf__));

extern double difftime(time_t __time1, time_t __time0)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__));

extern time_t mktime(struct tm *__tp) __attribute__((__nothrow__, __leaf__));
# 100 "/usr/include/time.h" 3 4
extern size_t strftime(char *__restrict __s, size_t __maxsize,
                       const char *__restrict __format,
                       const struct tm *__restrict __tp)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__nonnull__(1, 3, 4)));
# 117 "/usr/include/time.h" 3 4
extern size_t strftime_l(char *__restrict __s, size_t __maxsize,
                         const char *__restrict __format,
                         const struct tm *__restrict __tp, locale_t __loc)
    __attribute__((__nothrow__, __leaf__));
# 133 "/usr/include/time.h" 3 4
extern struct tm *gmtime(const time_t *__timer)
    __attribute__((__nothrow__, __leaf__));

extern struct tm *localtime(const time_t *__timer)
    __attribute__((__nothrow__, __leaf__));
# 155 "/usr/include/time.h" 3 4
extern struct tm *gmtime_r(const time_t *__restrict __timer,
                           struct tm *__restrict __tp)
    __attribute__((__nothrow__, __leaf__));

extern struct tm *localtime_r(const time_t *__restrict __timer,
                              struct tm *__restrict __tp)
    __attribute__((__nothrow__, __leaf__));
# 180 "/usr/include/time.h" 3 4
extern char *asctime(const struct tm *__tp)
    __attribute__((__nothrow__, __leaf__));

extern char *ctime(const time_t *__timer)
    __attribute__((__nothrow__, __leaf__));
# 198 "/usr/include/time.h" 3 4
extern char *asctime_r(const struct tm *__restrict __tp, char *__restrict __buf)
    __attribute__((__nothrow__, __leaf__));

extern char *ctime_r(const time_t *__restrict __timer, char *__restrict __buf)
    __attribute__((__nothrow__, __leaf__));
# 218 "/usr/include/time.h" 3 4
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;

extern char *tzname[2];

extern void tzset(void) __attribute__((__nothrow__, __leaf__));

extern int daylight;
extern long int timezone;
# 247 "/usr/include/time.h" 3 4
extern time_t timegm(struct tm *__tp) __attribute__((__nothrow__, __leaf__));
# 264 "/usr/include/time.h" 3 4
extern time_t timelocal(struct tm *__tp) __attribute__((__nothrow__, __leaf__));

extern int dysize(int __year) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));
# 282 "/usr/include/time.h" 3 4
extern int nanosleep(const struct timespec *__requested_time,
                     struct timespec *__remaining);

extern int clock_getres(clockid_t __clock_id, struct timespec *__res)
    __attribute__((__nothrow__, __leaf__));

extern int clock_gettime(clockid_t __clock_id, struct timespec *__tp)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));

extern int clock_settime(clockid_t __clock_id, const struct timespec *__tp)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));
# 324 "/usr/include/time.h" 3 4
extern int clock_nanosleep(clockid_t __clock_id, int __flags,
                           const struct timespec *__req,
                           struct timespec *__rem);
# 339 "/usr/include/time.h" 3 4
extern int clock_getcpuclockid(pid_t __pid, clockid_t *__clock_id)
    __attribute__((__nothrow__, __leaf__));

extern int timer_create(clockid_t __clock_id, struct sigevent *__restrict __evp,
                        timer_t *__restrict __timerid)
    __attribute__((__nothrow__, __leaf__));

extern int timer_delete(timer_t __timerid)
    __attribute__((__nothrow__, __leaf__));

extern int timer_settime(timer_t __timerid, int __flags,
                         const struct itimerspec *__restrict __value,
                         struct itimerspec *__restrict __ovalue)
    __attribute__((__nothrow__, __leaf__));

extern int timer_gettime(timer_t __timerid, struct itimerspec *__value)
    __attribute__((__nothrow__, __leaf__));
# 377 "/usr/include/time.h" 3 4
extern int timer_getoverrun(timer_t __timerid)
    __attribute__((__nothrow__, __leaf__));

extern int timespec_get(struct timespec *__ts, int __base)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 453 "/usr/include/time.h" 3 4

# 24 "/usr/include/pthread.h" 2 3 4

# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4

typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4

# 1 "/usr/include/bits/types/struct___jmp_buf_tag.h" 1 3 4
# 26 "/usr/include/bits/types/struct___jmp_buf_tag.h" 3 4
struct __jmp_buf_tag {

  __jmp_buf __jmpbuf;
  int __mask_was_saved;
  __sigset_t __saved_mask;
};
# 32 "/usr/include/pthread.h" 2 3 4

enum {
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};

enum {
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL

};

enum {
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};

enum { PTHREAD_PRIO_NONE, PTHREAD_PRIO_INHERIT, PTHREAD_PRIO_PROTECT };
# 104 "/usr/include/pthread.h" 3 4
enum {
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 124 "/usr/include/pthread.h" 3 4
enum {
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};

enum {
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};

enum {
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 159 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer {
  void (*__routine)(void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};

enum {
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum {
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 197 "/usr/include/pthread.h" 3 4

extern int pthread_create(pthread_t *__restrict __newthread,
                          const pthread_attr_t *__restrict __attr,
                          void *(*__start_routine)(void *),
                          void *__restrict __arg) __attribute__((__nothrow__))
__attribute__((__nonnull__(1, 3)));

extern void pthread_exit(void *__retval) __attribute__((__noreturn__));

extern int pthread_join(pthread_t __th, void **__thread_return);
# 269 "/usr/include/pthread.h" 3 4
extern int pthread_detach(pthread_t __th)
    __attribute__((__nothrow__, __leaf__));

extern pthread_t pthread_self(void) __attribute__((__nothrow__, __leaf__))
__attribute__((__const__));

extern int pthread_equal(pthread_t __thread1, pthread_t __thread2)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__const__));

extern int pthread_attr_init(pthread_attr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_destroy(pthread_attr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getdetachstate(const pthread_attr_t *__attr,
                                       int *__detachstate)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_setdetachstate(pthread_attr_t *__attr,
                                       int __detachstate)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getguardsize(const pthread_attr_t *__attr,
                                     size_t *__guardsize)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_setguardsize(pthread_attr_t *__attr, size_t __guardsize)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getschedparam(const pthread_attr_t *__restrict __attr,
                                      struct sched_param *__restrict __param)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int
pthread_attr_setschedparam(pthread_attr_t *__restrict __attr,
                           const struct sched_param *__restrict __param)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_getschedpolicy(const pthread_attr_t *__restrict __attr,
                                       int *__restrict __policy)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_setschedpolicy(pthread_attr_t *__attr, int __policy)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getinheritsched(const pthread_attr_t *__restrict __attr,
                                        int *__restrict __inherit)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_setinheritsched(pthread_attr_t *__attr, int __inherit)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getscope(const pthread_attr_t *__restrict __attr,
                                 int *__restrict __scope)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_setscope(pthread_attr_t *__attr, int __scope)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getstackaddr(const pthread_attr_t *__restrict __attr,
                                     void **__restrict __stackaddr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)))
    __attribute__((__deprecated__));

extern int pthread_attr_setstackaddr(pthread_attr_t *__attr, void *__stackaddr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)))
    __attribute__((__deprecated__));

extern int pthread_attr_getstacksize(const pthread_attr_t *__restrict __attr,
                                     size_t *__restrict __stacksize)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_attr_setstacksize(pthread_attr_t *__attr, size_t __stacksize)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_attr_getstack(const pthread_attr_t *__restrict __attr,
                                 void **__restrict __stackaddr,
                                 size_t *__restrict __stacksize)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__nonnull__(1, 2, 3)));

extern int pthread_attr_setstack(pthread_attr_t *__attr, void *__stackaddr,
                                 size_t __stacksize)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 441 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam(pthread_t __target_thread, int __policy,
                                 const struct sched_param *__param)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(3)));

extern int pthread_getschedparam(pthread_t __target_thread,
                                 int *__restrict __policy,
                                 struct sched_param *__restrict __param)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2, 3)));

extern int pthread_setschedprio(pthread_t __target_thread, int __prio)
    __attribute__((__nothrow__, __leaf__));
# 509 "/usr/include/pthread.h" 3 4
extern int pthread_once(pthread_once_t *__once_control,
                        void (*__init_routine)(void))
    __attribute__((__nonnull__(1, 2)));
# 521 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate(int __state, int *__oldstate);

extern int pthread_setcanceltype(int __type, int *__oldtype);

extern int pthread_cancel(pthread_t __th);

extern void pthread_testcancel(void);

struct __cancel_jmp_buf_tag {
  __jmp_buf __cancel_jmp_buf;
  int __mask_was_saved;
};

typedef struct {
  struct __cancel_jmp_buf_tag __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__((__aligned__));
# 557 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame {
  void (*__cancel_routine)(void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 697 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel(__pthread_unwind_buf_t *__buf);
# 709 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel(__pthread_unwind_buf_t *__buf);
# 750 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next(__pthread_unwind_buf_t *__buf)
    __attribute__((__noreturn__))

    __attribute__((__weak__))

    ;
# 766 "/usr/include/pthread.h" 3 4
extern int __sigsetjmp_cancel(struct __cancel_jmp_buf_tag __env[1],
                              int __savemask) __asm__(""
                                                      "__sigsetjmp")
    __attribute__((__nothrow__))

    __attribute__((__returns_twice__));
# 781 "/usr/include/pthread.h" 3 4
extern int pthread_mutex_init(pthread_mutex_t *__mutex,
                              const pthread_mutexattr_t *__mutexattr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_mutex_destroy(pthread_mutex_t *__mutex)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_mutex_trylock(pthread_mutex_t *__mutex)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_mutex_lock(pthread_mutex_t *__mutex)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_mutex_timedlock(pthread_mutex_t *__restrict __mutex,
                                   const struct timespec *__restrict __abstime)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1, 2)));
# 835 "/usr/include/pthread.h" 3 4
extern int pthread_mutex_unlock(pthread_mutex_t *__mutex)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int
pthread_mutex_getprioceiling(const pthread_mutex_t *__restrict __mutex,
                             int *__restrict __prioceiling)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_mutex_setprioceiling(pthread_mutex_t *__restrict __mutex,
                                        int __prioceiling,
                                        int *__restrict __old_ceiling)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 3)));

extern int pthread_mutex_consistent(pthread_mutex_t *__mutex)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 874 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init(pthread_mutexattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_mutexattr_destroy(pthread_mutexattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_mutexattr_getpshared(const pthread_mutexattr_t *__restrict __attr,
                             int *__restrict __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_mutexattr_setpshared(pthread_mutexattr_t *__attr,
                                        int __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_mutexattr_gettype(const pthread_mutexattr_t *__restrict __attr,
                          int *__restrict __kind)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_mutexattr_settype(pthread_mutexattr_t *__attr, int __kind)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_mutexattr_getprotocol(const pthread_mutexattr_t *__restrict __attr,
                              int *__restrict __protocol)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_mutexattr_setprotocol(pthread_mutexattr_t *__attr,
                                         int __protocol)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_mutexattr_getprioceiling(const pthread_mutexattr_t *__restrict __attr,
                                 int *__restrict __prioceiling)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_mutexattr_setprioceiling(pthread_mutexattr_t *__attr,
                                            int __prioceiling)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_mutexattr_getrobust(const pthread_mutexattr_t *__attr,
                                       int *__robustness)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
# 946 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_setrobust(pthread_mutexattr_t *__attr,
                                       int __robustness)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 967 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init(pthread_rwlock_t *__restrict __rwlock,
                               const pthread_rwlockattr_t *__restrict __attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_rwlock_destroy(pthread_rwlock_t *__rwlock)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_rwlock_rdlock(pthread_rwlock_t *__rwlock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_rwlock_tryrdlock(pthread_rwlock_t *__rwlock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int
pthread_rwlock_timedrdlock(pthread_rwlock_t *__restrict __rwlock,
                           const struct timespec *__restrict __abstime)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1, 2)));
# 1023 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_wrlock(pthread_rwlock_t *__rwlock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_rwlock_trywrlock(pthread_rwlock_t *__rwlock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int
pthread_rwlock_timedwrlock(pthread_rwlock_t *__restrict __rwlock,
                           const struct timespec *__restrict __abstime)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1, 2)));
# 1071 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_unlock(pthread_rwlock_t *__rwlock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_rwlockattr_init(pthread_rwlockattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_rwlockattr_destroy(pthread_rwlockattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_rwlockattr_getpshared(const pthread_rwlockattr_t *__restrict __attr,
                              int *__restrict __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_rwlockattr_setpshared(pthread_rwlockattr_t *__attr,
                                         int __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_rwlockattr_getkind_np(const pthread_rwlockattr_t *__restrict __attr,
                              int *__restrict __pref)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_rwlockattr_setkind_np(pthread_rwlockattr_t *__attr,
                                         int __pref)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_cond_init(pthread_cond_t *__restrict __cond,
                             const pthread_condattr_t *__restrict __cond_attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_cond_destroy(pthread_cond_t *__cond)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_cond_signal(pthread_cond_t *__cond)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_cond_broadcast(pthread_cond_t *__cond)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_cond_wait(pthread_cond_t *__restrict __cond,
                             pthread_mutex_t *__restrict __mutex)
    __attribute__((__nonnull__(1, 2)));
# 1145 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait(pthread_cond_t *__restrict __cond,
                                  pthread_mutex_t *__restrict __mutex,
                                  const struct timespec *__restrict __abstime)
    __attribute__((__nonnull__(1, 2, 3)));
# 1194 "/usr/include/pthread.h" 3 4
extern int pthread_condattr_init(pthread_condattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_condattr_destroy(pthread_condattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_condattr_getpshared(const pthread_condattr_t *__restrict __attr,
                            int *__restrict __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_condattr_setpshared(pthread_condattr_t *__attr,
                                       int __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_condattr_getclock(const pthread_condattr_t *__restrict __attr,
                          __clockid_t *__restrict __clock_id)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_condattr_setclock(pthread_condattr_t *__attr,
                                     __clockid_t __clock_id)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 1230 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init(pthread_spinlock_t *__lock, int __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_spin_destroy(pthread_spinlock_t *__lock)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_spin_lock(pthread_spinlock_t *__lock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_spin_trylock(pthread_spinlock_t *__lock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_spin_unlock(pthread_spinlock_t *__lock)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_barrier_init(pthread_barrier_t *__restrict __barrier,
                                const pthread_barrierattr_t *__restrict __attr,
                                unsigned int __count)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_barrier_destroy(pthread_barrier_t *__barrier)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_barrier_wait(pthread_barrier_t *__barrier)
    __attribute__((__nothrow__)) __attribute__((__nonnull__(1)));

extern int pthread_barrierattr_init(pthread_barrierattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_barrierattr_destroy(pthread_barrierattr_t *__attr)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int
pthread_barrierattr_getpshared(const pthread_barrierattr_t *__restrict __attr,
                               int *__restrict __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));

extern int pthread_barrierattr_setpshared(pthread_barrierattr_t *__attr,
                                          int __pshared)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));
# 1297 "/usr/include/pthread.h" 3 4
extern int pthread_key_create(pthread_key_t *__key,
                              void (*__destr_function)(void *))
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

extern int pthread_key_delete(pthread_key_t __key)
    __attribute__((__nothrow__, __leaf__));

extern void *pthread_getspecific(pthread_key_t __key)
    __attribute__((__nothrow__, __leaf__));

extern int pthread_setspecific(pthread_key_t __key, const void *__pointer)
    __attribute__((__nothrow__, __leaf__))
    __attribute__((__access__(__none__, 2)));

extern int pthread_getcpuclockid(pthread_t __thread_id, __clockid_t *__clock_id)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(2)));
# 1332 "/usr/include/pthread.h" 3 4
extern int pthread_atfork(void (*__prepare)(void), void (*__parent)(void),
                          void (*__child)(void))
    __attribute__((__nothrow__, __leaf__));
# 1346 "/usr/include/pthread.h" 3 4

# 44 "/usr/include/uv/unix.h" 2

# 1 "/usr/include/uv/threadpool.h" 1 3 4
# 30 "/usr/include/uv/threadpool.h" 3 4
struct uv__work {
  void (*work)(struct uv__work *w);
  void (*done)(struct uv__work *w, int status);
  struct uv_loop_s *loop;
  struct uv__queue wq;
};
# 47 "/usr/include/uv/unix.h" 2

# 1 "/usr/include/uv/linux.h" 1 3 4
# 50 "/usr/include/uv/unix.h" 2
# 85 "/usr/include/uv/unix.h"

# 85 "/usr/include/uv/unix.h"
struct uv__io_s;
struct uv_loop_s;

typedef void (*uv__io_cb)(struct uv_loop_s *loop, struct uv__io_s *w,
                          unsigned int events);
typedef struct uv__io_s uv__io_t;

struct uv__io_s {
  uv__io_cb cb;
  struct uv__queue pending_queue;
  struct uv__queue watcher_queue;
  unsigned int pevents;
  unsigned int events;
  int fd;
};
# 120 "/usr/include/uv/unix.h"
typedef struct uv_buf_t {
  char *base;
  size_t len;
} uv_buf_t;

typedef int uv_file;
typedef int uv_os_sock_t;
typedef int uv_os_fd_t;
typedef pid_t uv_pid_t;

typedef pthread_once_t uv_once_t;
typedef pthread_t uv_thread_t;
typedef pthread_mutex_t uv_mutex_t;
typedef pthread_rwlock_t uv_rwlock_t;
typedef sem_t uv_sem_t;
typedef pthread_cond_t uv_cond_t;
typedef pthread_key_t uv_key_t;
# 161 "/usr/include/uv/unix.h"
typedef pthread_barrier_t uv_barrier_t;

typedef gid_t uv_gid_t;
typedef uid_t uv_uid_t;

typedef struct dirent uv__dirent_t;
# 215 "/usr/include/uv/unix.h"
typedef struct {
  void *handle;
  char *errmsg;
} uv_lib_t;
# 72 "/usr/include/uv.h" 2
# 191 "/usr/include/uv.h"
typedef enum {

  UV_E2BIG = (-(
# 193 "/usr/include/uv.h" 3 4
      7
# 193 "/usr/include/uv.h"
      )),
  UV_EACCES = (-(
# 193 "/usr/include/uv.h" 3 4
      13
# 193 "/usr/include/uv.h"
      )),
  UV_EADDRINUSE = (-(
# 193 "/usr/include/uv.h" 3 4
      98
# 193 "/usr/include/uv.h"
      )),
  UV_EADDRNOTAVAIL = (-(
# 193 "/usr/include/uv.h" 3 4
      99
# 193 "/usr/include/uv.h"
      )),
  UV_EAFNOSUPPORT = (-(
# 193 "/usr/include/uv.h" 3 4
      97
# 193 "/usr/include/uv.h"
      )),
  UV_EAGAIN = (-(
# 193 "/usr/include/uv.h" 3 4
      11
# 193 "/usr/include/uv.h"
      )),
  UV_EAI_ADDRFAMILY = (-3000),
  UV_EAI_AGAIN = (-3001),
  UV_EAI_BADFLAGS = (-3002),
  UV_EAI_BADHINTS = (-3013),
  UV_EAI_CANCELED = (-3003),
  UV_EAI_FAIL = (-3004),
  UV_EAI_FAMILY = (-3005),
  UV_EAI_MEMORY = (-3006),
  UV_EAI_NODATA = (-3007),
  UV_EAI_NONAME = (-3008),
  UV_EAI_OVERFLOW = (-3009),
  UV_EAI_PROTOCOL = (-3014),
  UV_EAI_SERVICE = (-3010),
  UV_EAI_SOCKTYPE = (-3011),
  UV_EALREADY = (-(
# 193 "/usr/include/uv.h" 3 4
      114
# 193 "/usr/include/uv.h"
      )),
  UV_EBADF = (-(
# 193 "/usr/include/uv.h" 3 4
      9
# 193 "/usr/include/uv.h"
      )),
  UV_EBUSY = (-(
# 193 "/usr/include/uv.h" 3 4
      16
# 193 "/usr/include/uv.h"
      )),
  UV_ECANCELED = (-(
# 193 "/usr/include/uv.h" 3 4
      125
# 193 "/usr/include/uv.h"
      )),
  UV_ECHARSET = (-4080),
  UV_ECONNABORTED = (-(
# 193 "/usr/include/uv.h" 3 4
      103
# 193 "/usr/include/uv.h"
      )),
  UV_ECONNREFUSED = (-(
# 193 "/usr/include/uv.h" 3 4
      111
# 193 "/usr/include/uv.h"
      )),
  UV_ECONNRESET = (-(
# 193 "/usr/include/uv.h" 3 4
      104
# 193 "/usr/include/uv.h"
      )),
  UV_EDESTADDRREQ = (-(
# 193 "/usr/include/uv.h" 3 4
      89
# 193 "/usr/include/uv.h"
      )),
  UV_EEXIST = (-(
# 193 "/usr/include/uv.h" 3 4
      17
# 193 "/usr/include/uv.h"
      )),
  UV_EFAULT = (-(
# 193 "/usr/include/uv.h" 3 4
      14
# 193 "/usr/include/uv.h"
      )),
  UV_EFBIG = (-(
# 193 "/usr/include/uv.h" 3 4
      27
# 193 "/usr/include/uv.h"
      )),
  UV_EHOSTUNREACH = (-(
# 193 "/usr/include/uv.h" 3 4
      113
# 193 "/usr/include/uv.h"
      )),
  UV_EINTR = (-(
# 193 "/usr/include/uv.h" 3 4
      4
# 193 "/usr/include/uv.h"
      )),
  UV_EINVAL = (-(
# 193 "/usr/include/uv.h" 3 4
      22
# 193 "/usr/include/uv.h"
      )),
  UV_EIO = (-(
# 193 "/usr/include/uv.h" 3 4
      5
# 193 "/usr/include/uv.h"
      )),
  UV_EISCONN = (-(
# 193 "/usr/include/uv.h" 3 4
      106
# 193 "/usr/include/uv.h"
      )),
  UV_EISDIR = (-(
# 193 "/usr/include/uv.h" 3 4
      21
# 193 "/usr/include/uv.h"
      )),
  UV_ELOOP = (-(
# 193 "/usr/include/uv.h" 3 4
      40
# 193 "/usr/include/uv.h"
      )),
  UV_EMFILE = (-(
# 193 "/usr/include/uv.h" 3 4
      24
# 193 "/usr/include/uv.h"
      )),
  UV_EMSGSIZE = (-(
# 193 "/usr/include/uv.h" 3 4
      90
# 193 "/usr/include/uv.h"
      )),
  UV_ENAMETOOLONG = (-(
# 193 "/usr/include/uv.h" 3 4
      36
# 193 "/usr/include/uv.h"
      )),
  UV_ENETDOWN = (-(
# 193 "/usr/include/uv.h" 3 4
      100
# 193 "/usr/include/uv.h"
      )),
  UV_ENETUNREACH = (-(
# 193 "/usr/include/uv.h" 3 4
      101
# 193 "/usr/include/uv.h"
      )),
  UV_ENFILE = (-(
# 193 "/usr/include/uv.h" 3 4
      23
# 193 "/usr/include/uv.h"
      )),
  UV_ENOBUFS = (-(
# 193 "/usr/include/uv.h" 3 4
      105
# 193 "/usr/include/uv.h"
      )),
  UV_ENODEV = (-(
# 193 "/usr/include/uv.h" 3 4
      19
# 193 "/usr/include/uv.h"
      )),
  UV_ENOENT = (-(
# 193 "/usr/include/uv.h" 3 4
      2
# 193 "/usr/include/uv.h"
      )),
  UV_ENOMEM = (-(
# 193 "/usr/include/uv.h" 3 4
      12
# 193 "/usr/include/uv.h"
      )),
  UV_ENONET = (-(
# 193 "/usr/include/uv.h" 3 4
      64
# 193 "/usr/include/uv.h"
      )),
  UV_ENOPROTOOPT = (-(
# 193 "/usr/include/uv.h" 3 4
      92
# 193 "/usr/include/uv.h"
      )),
  UV_ENOSPC = (-(
# 193 "/usr/include/uv.h" 3 4
      28
# 193 "/usr/include/uv.h"
      )),
  UV_ENOSYS = (-(
# 193 "/usr/include/uv.h" 3 4
      38
# 193 "/usr/include/uv.h"
      )),
  UV_ENOTCONN = (-(
# 193 "/usr/include/uv.h" 3 4
      107
# 193 "/usr/include/uv.h"
      )),
  UV_ENOTDIR = (-(
# 193 "/usr/include/uv.h" 3 4
      20
# 193 "/usr/include/uv.h"
      )),
  UV_ENOTEMPTY = (-(
# 193 "/usr/include/uv.h" 3 4
      39
# 193 "/usr/include/uv.h"
      )),
  UV_ENOTSOCK = (-(
# 193 "/usr/include/uv.h" 3 4
      88
# 193 "/usr/include/uv.h"
      )),
  UV_ENOTSUP = (-(
# 193 "/usr/include/uv.h" 3 4
      95
# 193 "/usr/include/uv.h"
      )),
  UV_EOVERFLOW = (-(
# 193 "/usr/include/uv.h" 3 4
      75
# 193 "/usr/include/uv.h"
      )),
  UV_EPERM = (-(
# 193 "/usr/include/uv.h" 3 4
      1
# 193 "/usr/include/uv.h"
      )),
  UV_EPIPE = (-(
# 193 "/usr/include/uv.h" 3 4
      32
# 193 "/usr/include/uv.h"
      )),
  UV_EPROTO = (-(
# 193 "/usr/include/uv.h" 3 4
      71
# 193 "/usr/include/uv.h"
      )),
  UV_EPROTONOSUPPORT = (-(
# 193 "/usr/include/uv.h" 3 4
      93
# 193 "/usr/include/uv.h"
      )),
  UV_EPROTOTYPE = (-(
# 193 "/usr/include/uv.h" 3 4
      91
# 193 "/usr/include/uv.h"
      )),
  UV_ERANGE = (-(
# 193 "/usr/include/uv.h" 3 4
      34
# 193 "/usr/include/uv.h"
      )),
  UV_EROFS = (-(
# 193 "/usr/include/uv.h" 3 4
      30
# 193 "/usr/include/uv.h"
      )),
  UV_ESHUTDOWN = (-(
# 193 "/usr/include/uv.h" 3 4
      108
# 193 "/usr/include/uv.h"
      )),
  UV_ESPIPE = (-(
# 193 "/usr/include/uv.h" 3 4
      29
# 193 "/usr/include/uv.h"
      )),
  UV_ESRCH = (-(
# 193 "/usr/include/uv.h" 3 4
      3
# 193 "/usr/include/uv.h"
      )),
  UV_ETIMEDOUT = (-(
# 193 "/usr/include/uv.h" 3 4
      110
# 193 "/usr/include/uv.h"
      )),
  UV_ETXTBSY = (-(
# 193 "/usr/include/uv.h" 3 4
      26
# 193 "/usr/include/uv.h"
      )),
  UV_EXDEV = (-(
# 193 "/usr/include/uv.h" 3 4
      18
# 193 "/usr/include/uv.h"
      )),
  UV_UNKNOWN = (-4094),
  UV_EOF = (-4095),
  UV_ENXIO = (-(
# 193 "/usr/include/uv.h" 3 4
      6
# 193 "/usr/include/uv.h"
      )),
  UV_EMLINK = (-(
# 193 "/usr/include/uv.h" 3 4
      31
# 193 "/usr/include/uv.h"
      )),
  UV_EHOSTDOWN = (-(
# 193 "/usr/include/uv.h" 3 4
      112
# 193 "/usr/include/uv.h"
      )),
  UV_EREMOTEIO = (-(
# 193 "/usr/include/uv.h" 3 4
      121
# 193 "/usr/include/uv.h"
      )),
  UV_ENOTTY = (-(
# 193 "/usr/include/uv.h" 3 4
      25
# 193 "/usr/include/uv.h"
      )),
  UV_EFTYPE = (-4028),
  UV_EILSEQ = (-(
# 193 "/usr/include/uv.h" 3 4
      84
# 193 "/usr/include/uv.h"
      )),
  UV_ESOCKTNOSUPPORT = (-(
# 193 "/usr/include/uv.h" 3 4
      94
# 193 "/usr/include/uv.h"
      )),
  UV_ENODATA = (-(
# 193 "/usr/include/uv.h" 3 4
      61
# 193 "/usr/include/uv.h"
      )),
  UV_EUNATCH = (-(
# 193 "/usr/include/uv.h" 3 4
      49
# 193 "/usr/include/uv.h"
      )),

  UV_ERRNO_MAX = (-4095) - 1
} uv_errno_t;

typedef enum {
  UV_UNKNOWN_HANDLE = 0,

  UV_ASYNC,
  UV_CHECK,
  UV_FS_EVENT,
  UV_FS_POLL,
  UV_HANDLE,
  UV_IDLE,
  UV_NAMED_PIPE,
  UV_POLL,
  UV_PREPARE,
  UV_PROCESS,
  UV_STREAM,
  UV_TCP,
  UV_TIMER,
  UV_TTY,
  UV_UDP,
  UV_SIGNAL,

  UV_FILE,
  UV_HANDLE_TYPE_MAX
} uv_handle_type;

typedef enum {
  UV_UNKNOWN_REQ = 0,

  UV_REQ,
  UV_CONNECT,
  UV_WRITE,
  UV_SHUTDOWN,
  UV_UDP_SEND,
  UV_FS,
  UV_WORK,
  UV_GETADDRINFO,
  UV_GETNAMEINFO,
  UV_RANDOM,

  UV_REQ_TYPE_MAX
} uv_req_type;

typedef struct uv_loop_s uv_loop_t;
typedef struct uv_handle_s uv_handle_t;
typedef struct uv_dir_s uv_dir_t;
typedef struct uv_stream_s uv_stream_t;
typedef struct uv_tcp_s uv_tcp_t;
typedef struct uv_udp_s uv_udp_t;
typedef struct uv_pipe_s uv_pipe_t;
typedef struct uv_tty_s uv_tty_t;
typedef struct uv_poll_s uv_poll_t;
typedef struct uv_timer_s uv_timer_t;
typedef struct uv_prepare_s uv_prepare_t;
typedef struct uv_check_s uv_check_t;
typedef struct uv_idle_s uv_idle_t;
typedef struct uv_async_s uv_async_t;
typedef struct uv_process_s uv_process_t;
typedef struct uv_fs_event_s uv_fs_event_t;
typedef struct uv_fs_poll_s uv_fs_poll_t;
typedef struct uv_signal_s uv_signal_t;

typedef struct uv_req_s uv_req_t;
typedef struct uv_getaddrinfo_s uv_getaddrinfo_t;
typedef struct uv_getnameinfo_s uv_getnameinfo_t;
typedef struct uv_shutdown_s uv_shutdown_t;
typedef struct uv_write_s uv_write_t;
typedef struct uv_connect_s uv_connect_t;
typedef struct uv_udp_send_s uv_udp_send_t;
typedef struct uv_fs_s uv_fs_t;
typedef struct uv_work_s uv_work_t;
typedef struct uv_random_s uv_random_t;

typedef struct uv_env_item_s uv_env_item_t;
typedef struct uv_cpu_info_s uv_cpu_info_t;
typedef struct uv_interface_address_s uv_interface_address_t;
typedef struct uv_dirent_s uv_dirent_t;
typedef struct uv_passwd_s uv_passwd_t;
typedef struct uv_group_s uv_group_t;
typedef struct uv_utsname_s uv_utsname_t;
typedef struct uv_statfs_s uv_statfs_t;

typedef struct uv_metrics_s uv_metrics_t;

typedef enum {
  UV_LOOP_BLOCK_SIGNAL = 0,
  UV_METRICS_IDLE_TIME,
  UV_LOOP_USE_IO_URING_SQPOLL

} uv_loop_option;

typedef enum { UV_RUN_DEFAULT = 0, UV_RUN_ONCE, UV_RUN_NOWAIT } uv_run_mode;

__attribute__((visibility("default"))) unsigned int uv_version(void);
__attribute__((visibility("default"))) const char *uv_version_string(void);

typedef void *(*uv_malloc_func)(size_t size);
typedef void *(*uv_realloc_func)(void *ptr, size_t size);
typedef void *(*uv_calloc_func)(size_t count, size_t size);
typedef void (*uv_free_func)(void *ptr);

__attribute__((visibility("default"))) void uv_library_shutdown(void);

__attribute__((visibility("default"))) int
uv_replace_allocator(uv_malloc_func malloc_func, uv_realloc_func realloc_func,
                     uv_calloc_func calloc_func, uv_free_func free_func);

__attribute__((visibility("default"))) uv_loop_t *uv_default_loop(void);
__attribute__((visibility("default"))) int uv_loop_init(uv_loop_t *loop);
__attribute__((visibility("default"))) int uv_loop_close(uv_loop_t *loop);

__attribute__((visibility("default"))) uv_loop_t *uv_loop_new(void);

__attribute__((visibility("default"))) void uv_loop_delete(uv_loop_t *);
__attribute__((visibility("default"))) size_t uv_loop_size(void);
__attribute__((visibility("default"))) int uv_loop_alive(const uv_loop_t *loop);
__attribute__((visibility("default"))) int
uv_loop_configure(uv_loop_t *loop, uv_loop_option option, ...);
__attribute__((visibility("default"))) int uv_loop_fork(uv_loop_t *loop);

__attribute__((visibility("default"))) int uv_run(uv_loop_t *,
                                                  uv_run_mode mode);
__attribute__((visibility("default"))) void uv_stop(uv_loop_t *);

__attribute__((visibility("default"))) void uv_ref(uv_handle_t *);
__attribute__((visibility("default"))) void uv_unref(uv_handle_t *);
__attribute__((visibility("default"))) int uv_has_ref(const uv_handle_t *);

__attribute__((visibility("default"))) void uv_update_time(uv_loop_t *);
__attribute__((visibility("default"))) uint64_t uv_now(const uv_loop_t *);

__attribute__((visibility("default"))) int uv_backend_fd(const uv_loop_t *);
__attribute__((visibility("default"))) int
uv_backend_timeout(const uv_loop_t *);

typedef void (*uv_alloc_cb)(uv_handle_t *handle, size_t suggested_size,
                            uv_buf_t *buf);
typedef void (*uv_read_cb)(uv_stream_t *stream, ssize_t nread,
                           const uv_buf_t *buf);
typedef void (*uv_write_cb)(uv_write_t *req, int status);
typedef void (*uv_connect_cb)(uv_connect_t *req, int status);
typedef void (*uv_shutdown_cb)(uv_shutdown_t *req, int status);
typedef void (*uv_connection_cb)(uv_stream_t *server, int status);
typedef void (*uv_close_cb)(uv_handle_t *handle);
typedef void (*uv_poll_cb)(uv_poll_t *handle, int status, int events);
typedef void (*uv_timer_cb)(uv_timer_t *handle);
typedef void (*uv_async_cb)(uv_async_t *handle);
typedef void (*uv_prepare_cb)(uv_prepare_t *handle);
typedef void (*uv_check_cb)(uv_check_t *handle);
typedef void (*uv_idle_cb)(uv_idle_t *handle);
typedef void (*uv_exit_cb)(uv_process_t *, int64_t exit_status,
                           int term_signal);
typedef void (*uv_walk_cb)(uv_handle_t *handle, void *arg);
typedef void (*uv_fs_cb)(uv_fs_t *req);
typedef void (*uv_work_cb)(uv_work_t *req);
typedef void (*uv_after_work_cb)(uv_work_t *req, int status);
typedef void (*uv_getaddrinfo_cb)(uv_getaddrinfo_t *req, int status,
                                  struct addrinfo *res);
typedef void (*uv_getnameinfo_cb)(uv_getnameinfo_t *req, int status,
                                  const char *hostname, const char *service);
typedef void (*uv_random_cb)(uv_random_t *req, int status, void *buf,
                             size_t buflen);

typedef enum { UV_CLOCK_MONOTONIC, UV_CLOCK_REALTIME } uv_clock_id;

typedef struct {
  long tv_sec;
  long tv_nsec;
} uv_timespec_t;

typedef struct {
  int64_t tv_sec;
  int32_t tv_nsec;
} uv_timespec64_t;

typedef struct {
  long tv_sec;
  long tv_usec;
} uv_timeval_t;

typedef struct {
  int64_t tv_sec;
  int32_t tv_usec;
} uv_timeval64_t;

typedef struct {
  uint64_t st_dev;
  uint64_t st_mode;
  uint64_t st_nlink;
  uint64_t st_uid;
  uint64_t st_gid;
  uint64_t st_rdev;
  uint64_t st_ino;
  uint64_t st_size;
  uint64_t st_blksize;
  uint64_t st_blocks;
  uint64_t st_flags;
  uint64_t st_gen;
  uv_timespec_t st_atim;
  uv_timespec_t st_mtim;
  uv_timespec_t st_ctim;
  uv_timespec_t st_birthtim;
} uv_stat_t;

typedef void (*uv_fs_event_cb)(uv_fs_event_t *handle, const char *filename,
                               int events, int status);

typedef void (*uv_fs_poll_cb)(uv_fs_poll_t *handle, int status,
                              const uv_stat_t *prev, const uv_stat_t *curr);

typedef void (*uv_signal_cb)(uv_signal_t *handle, int signum);

typedef enum { UV_LEAVE_GROUP = 0, UV_JOIN_GROUP } uv_membership;

__attribute__((visibility("default"))) int
uv_translate_sys_error(int sys_errno);

__attribute__((visibility("default"))) const char *uv_strerror(int err);
__attribute__((visibility("default"))) char *uv_strerror_r(int err, char *buf,
                                                           size_t buflen);

__attribute__((visibility("default"))) const char *uv_err_name(int err);
__attribute__((visibility("default"))) char *uv_err_name_r(int err, char *buf,
                                                           size_t buflen);
# 442 "/usr/include/uv.h"
struct uv_req_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
};

__attribute__((visibility("default"))) int
uv_shutdown(uv_shutdown_t *req, uv_stream_t *handle, uv_shutdown_cb cb);

struct uv_shutdown_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
  uv_stream_t *handle;
  uv_shutdown_cb cb;
};
# 479 "/usr/include/uv.h"
struct uv_handle_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
};

__attribute__((visibility("default"))) size_t
uv_handle_size(uv_handle_type type);
__attribute__((visibility("default"))) uv_handle_type
uv_handle_get_type(const uv_handle_t *handle);
__attribute__((visibility("default"))) const char *
uv_handle_type_name(uv_handle_type type);
__attribute__((visibility("default"))) void *
uv_handle_get_data(const uv_handle_t *handle);
__attribute__((visibility("default"))) uv_loop_t *
uv_handle_get_loop(const uv_handle_t *handle);
__attribute__((visibility("default"))) void
uv_handle_set_data(uv_handle_t *handle, void *data);

__attribute__((visibility("default"))) size_t uv_req_size(uv_req_type type);
__attribute__((visibility("default"))) void *
uv_req_get_data(const uv_req_t *req);
__attribute__((visibility("default"))) void uv_req_set_data(uv_req_t *req,
                                                            void *data);
__attribute__((visibility("default"))) uv_req_type
uv_req_get_type(const uv_req_t *req);
__attribute__((visibility("default"))) const char *
uv_req_type_name(uv_req_type type);

__attribute__((visibility("default"))) int
uv_is_active(const uv_handle_t *handle);

__attribute__((visibility("default"))) void
uv_walk(uv_loop_t *loop, uv_walk_cb walk_cb, void *arg);

__attribute__((visibility("default"))) void
uv_print_all_handles(uv_loop_t *loop, FILE *stream);
__attribute__((visibility("default"))) void
uv_print_active_handles(uv_loop_t *loop, FILE *stream);

__attribute__((visibility("default"))) void uv_close(uv_handle_t *handle,
                                                     uv_close_cb close_cb);

__attribute__((visibility("default"))) int
uv_send_buffer_size(uv_handle_t *handle, int *value);
__attribute__((visibility("default"))) int
uv_recv_buffer_size(uv_handle_t *handle, int *value);

__attribute__((visibility("default"))) int uv_fileno(const uv_handle_t *handle,
                                                     uv_os_fd_t *fd);

__attribute__((visibility("default"))) uv_buf_t uv_buf_init(char *base,
                                                            unsigned int len);

__attribute__((visibility("default"))) int
uv_pipe(uv_file fds[2], int read_flags, int write_flags);
__attribute__((visibility("default"))) int
uv_socketpair(int type, int protocol, uv_os_sock_t socket_vector[2], int flags0,
              int flags1);
# 535 "/usr/include/uv.h"
struct uv_stream_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  size_t write_queue_size;
  uv_alloc_cb alloc_cb;
  uv_read_cb read_cb;
  uv_connect_t *connect_req;
  uv_shutdown_t *shutdown_req;
  uv__io_t io_watcher;
  struct uv__queue write_queue;
  struct uv__queue write_completed_queue;
  uv_connection_cb connection_cb;
  int delayed_error;
  int accepted_fd;
  void *queued_fds;
};

__attribute__((visibility("default"))) size_t
uv_stream_get_write_queue_size(const uv_stream_t *stream);

__attribute__((visibility("default"))) int
uv_listen(uv_stream_t *stream, int backlog, uv_connection_cb cb);
__attribute__((visibility("default"))) int uv_accept(uv_stream_t *server,
                                                     uv_stream_t *client);

__attribute__((visibility("default"))) int
uv_read_start(uv_stream_t *, uv_alloc_cb alloc_cb, uv_read_cb read_cb);
__attribute__((visibility("default"))) int uv_read_stop(uv_stream_t *);

__attribute__((visibility("default"))) int
uv_write(uv_write_t *req, uv_stream_t *handle, const uv_buf_t bufs[],
         unsigned int nbufs, uv_write_cb cb);
__attribute__((visibility("default"))) int
uv_write2(uv_write_t *req, uv_stream_t *handle, const uv_buf_t bufs[],
          unsigned int nbufs, uv_stream_t *send_handle, uv_write_cb cb);
__attribute__((visibility("default"))) int
uv_try_write(uv_stream_t *handle, const uv_buf_t bufs[], unsigned int nbufs);
__attribute__((visibility("default"))) int
uv_try_write2(uv_stream_t *handle, const uv_buf_t bufs[], unsigned int nbufs,
              uv_stream_t *send_handle);

struct uv_write_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
  uv_write_cb cb;
  uv_stream_t *send_handle;
  uv_stream_t *handle;
  struct uv__queue queue;
  unsigned int write_index;
  uv_buf_t *bufs;
  unsigned int nbufs;
  int error;
  uv_buf_t bufsml[4];
};

__attribute__((visibility("default"))) int
uv_is_readable(const uv_stream_t *handle);
__attribute__((visibility("default"))) int
uv_is_writable(const uv_stream_t *handle);

__attribute__((visibility("default"))) int
uv_stream_set_blocking(uv_stream_t *handle, int blocking);

__attribute__((visibility("default"))) int
uv_is_closing(const uv_handle_t *handle);

struct uv_tcp_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  size_t write_queue_size;
  uv_alloc_cb alloc_cb;
  uv_read_cb read_cb;
  uv_connect_t *connect_req;
  uv_shutdown_t *shutdown_req;
  uv__io_t io_watcher;
  struct uv__queue write_queue;
  struct uv__queue write_completed_queue;
  uv_connection_cb connection_cb;
  int delayed_error;
  int accepted_fd;
  void *queued_fds;
};

__attribute__((visibility("default"))) int uv_tcp_init(uv_loop_t *,
                                                       uv_tcp_t *handle);
__attribute__((visibility("default"))) int
uv_tcp_init_ex(uv_loop_t *, uv_tcp_t *handle, unsigned int flags);
__attribute__((visibility("default"))) int uv_tcp_open(uv_tcp_t *handle,
                                                       uv_os_sock_t sock);
__attribute__((visibility("default"))) int uv_tcp_nodelay(uv_tcp_t *handle,
                                                          int enable);
__attribute__((visibility("default"))) int
uv_tcp_keepalive(uv_tcp_t *handle, int enable, unsigned int delay);
__attribute__((visibility("default"))) int
uv_tcp_simultaneous_accepts(uv_tcp_t *handle, int enable);

enum uv_tcp_flags {

  UV_TCP_IPV6ONLY = 1,
# 620 "/usr/include/uv.h"
  UV_TCP_REUSEPORT = 2,
};

__attribute__((visibility("default"))) int
uv_tcp_bind(uv_tcp_t *handle, const struct sockaddr *addr, unsigned int flags);
__attribute__((visibility("default"))) int
uv_tcp_getsockname(const uv_tcp_t *handle, struct sockaddr *name, int *namelen);
__attribute__((visibility("default"))) int
uv_tcp_getpeername(const uv_tcp_t *handle, struct sockaddr *name, int *namelen);
__attribute__((visibility("default"))) int
uv_tcp_close_reset(uv_tcp_t *handle, uv_close_cb close_cb);
__attribute__((visibility("default"))) int
uv_tcp_connect(uv_connect_t *req, uv_tcp_t *handle, const struct sockaddr *addr,
               uv_connect_cb cb);

struct uv_connect_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
  uv_connect_cb cb;
  uv_stream_t *handle;
  struct uv__queue queue;
};

enum uv_udp_flags {

  UV_UDP_IPV6ONLY = 1,

  UV_UDP_PARTIAL = 2,
# 670 "/usr/include/uv.h"
  UV_UDP_REUSEADDR = 4,

  UV_UDP_MMSG_CHUNK = 8,

  UV_UDP_MMSG_FREE = 16,

  UV_UDP_LINUX_RECVERR = 32,
# 701 "/usr/include/uv.h"
  UV_UDP_REUSEPORT = 64,

  UV_UDP_RECVMMSG = 256
};

typedef void (*uv_udp_send_cb)(uv_udp_send_t *req, int status);
typedef void (*uv_udp_recv_cb)(uv_udp_t *handle, ssize_t nread,
                               const uv_buf_t *buf, const struct sockaddr *addr,
                               unsigned flags);

struct uv_udp_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;

  size_t send_queue_size;

  size_t send_queue_count;
  uv_alloc_cb alloc_cb;
  uv_udp_recv_cb recv_cb;
  uv__io_t io_watcher;
  struct uv__queue write_queue;
  struct uv__queue write_completed_queue;
};

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

__attribute__((visibility("default"))) int uv_udp_init(uv_loop_t *,
                                                       uv_udp_t *handle);
__attribute__((visibility("default"))) int
uv_udp_init_ex(uv_loop_t *, uv_udp_t *handle, unsigned int flags);
__attribute__((visibility("default"))) int uv_udp_open(uv_udp_t *handle,
                                                       uv_os_sock_t sock);
__attribute__((visibility("default"))) int
uv_udp_bind(uv_udp_t *handle, const struct sockaddr *addr, unsigned int flags);
__attribute__((visibility("default"))) int
uv_udp_connect(uv_udp_t *handle, const struct sockaddr *addr);

__attribute__((visibility("default"))) int
uv_udp_getpeername(const uv_udp_t *handle, struct sockaddr *name, int *namelen);
__attribute__((visibility("default"))) int
uv_udp_getsockname(const uv_udp_t *handle, struct sockaddr *name, int *namelen);
__attribute__((visibility("default"))) int
uv_udp_set_membership(uv_udp_t *handle, const char *multicast_addr,
                      const char *interface_addr, uv_membership membership);
__attribute__((visibility("default"))) int
uv_udp_set_source_membership(uv_udp_t *handle, const char *multicast_addr,
                             const char *interface_addr,
                             const char *source_addr, uv_membership membership);
__attribute__((visibility("default"))) int
uv_udp_set_multicast_loop(uv_udp_t *handle, int on);
__attribute__((visibility("default"))) int
uv_udp_set_multicast_ttl(uv_udp_t *handle, int ttl);
__attribute__((visibility("default"))) int
uv_udp_set_multicast_interface(uv_udp_t *handle, const char *interface_addr);
__attribute__((visibility("default"))) int
uv_udp_set_broadcast(uv_udp_t *handle, int on);
__attribute__((visibility("default"))) int uv_udp_set_ttl(uv_udp_t *handle,
                                                          int ttl);
__attribute__((visibility("default"))) int
uv_udp_send(uv_udp_send_t *req, uv_udp_t *handle, const uv_buf_t bufs[],
            unsigned int nbufs, const struct sockaddr *addr,
            uv_udp_send_cb send_cb);
__attribute__((visibility("default"))) int
uv_udp_try_send(uv_udp_t *handle, const uv_buf_t bufs[], unsigned int nbufs,
                const struct sockaddr *addr);
__attribute__((visibility("default"))) int
uv_udp_recv_start(uv_udp_t *handle, uv_alloc_cb alloc_cb,
                  uv_udp_recv_cb recv_cb);
__attribute__((visibility("default"))) int
uv_udp_using_recvmmsg(const uv_udp_t *handle);
__attribute__((visibility("default"))) int uv_udp_recv_stop(uv_udp_t *handle);
__attribute__((visibility("default"))) size_t
uv_udp_get_send_queue_size(const uv_udp_t *handle);
__attribute__((visibility("default"))) size_t
uv_udp_get_send_queue_count(const uv_udp_t *handle);

struct uv_tty_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  size_t write_queue_size;
  uv_alloc_cb alloc_cb;
  uv_read_cb read_cb;
  uv_connect_t *connect_req;
  uv_shutdown_t *shutdown_req;
  uv__io_t io_watcher;
  struct uv__queue write_queue;
  struct uv__queue write_completed_queue;
  uv_connection_cb connection_cb;
  int delayed_error;
  int accepted_fd;
  void *queued_fds;
  struct termios orig_termios;
  int mode;
};

typedef enum {

  UV_TTY_MODE_NORMAL,

  UV_TTY_MODE_RAW,

  UV_TTY_MODE_IO
} uv_tty_mode_t;

typedef enum {

  UV_TTY_SUPPORTED,

  UV_TTY_UNSUPPORTED
} uv_tty_vtermstate_t;

__attribute__((visibility("default"))) int
uv_tty_init(uv_loop_t *, uv_tty_t *, uv_file fd, int readable);
__attribute__((visibility("default"))) int uv_tty_set_mode(uv_tty_t *,
                                                           uv_tty_mode_t mode);
__attribute__((visibility("default"))) int uv_tty_reset_mode(void);
__attribute__((visibility("default"))) int
uv_tty_get_winsize(uv_tty_t *, int *width, int *height);
__attribute__((visibility("default"))) void
uv_tty_set_vterm_state(uv_tty_vtermstate_t state);
__attribute__((visibility("default"))) int
uv_tty_get_vterm_state(uv_tty_vtermstate_t *state);
# 837 "/usr/include/uv.h"
__attribute__((visibility("default"))) uv_handle_type
uv_guess_handle(uv_file file);

enum { UV_PIPE_NO_TRUNCATE = 1u << 0 };

struct uv_pipe_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  size_t write_queue_size;
  uv_alloc_cb alloc_cb;
  uv_read_cb read_cb;
  uv_connect_t *connect_req;
  uv_shutdown_t *shutdown_req;
  uv__io_t io_watcher;
  struct uv__queue write_queue;
  struct uv__queue write_completed_queue;
  uv_connection_cb connection_cb;
  int delayed_error;
  int accepted_fd;
  void *queued_fds;
  int ipc;
  const char *pipe_fname;
};

__attribute__((visibility("default"))) int
uv_pipe_init(uv_loop_t *, uv_pipe_t *handle, int ipc);
__attribute__((visibility("default"))) int uv_pipe_open(uv_pipe_t *,
                                                        uv_file file);
__attribute__((visibility("default"))) int uv_pipe_bind(uv_pipe_t *handle,
                                                        const char *name);
__attribute__((visibility("default"))) int uv_pipe_bind2(uv_pipe_t *handle,
                                                         const char *name,
                                                         size_t namelen,
                                                         unsigned int flags);
__attribute__((visibility("default"))) void uv_pipe_connect(uv_connect_t *req,
                                                            uv_pipe_t *handle,
                                                            const char *name,
                                                            uv_connect_cb cb);
__attribute__((visibility("default"))) int
uv_pipe_connect2(uv_connect_t *req, uv_pipe_t *handle, const char *name,
                 size_t namelen, unsigned int flags, uv_connect_cb cb);
__attribute__((visibility("default"))) int
uv_pipe_getsockname(const uv_pipe_t *handle, char *buffer, size_t *size);
__attribute__((visibility("default"))) int
uv_pipe_getpeername(const uv_pipe_t *handle, char *buffer, size_t *size);
__attribute__((visibility("default"))) void
uv_pipe_pending_instances(uv_pipe_t *handle, int count);
__attribute__((visibility("default"))) int
uv_pipe_pending_count(uv_pipe_t *handle);
__attribute__((visibility("default"))) uv_handle_type
uv_pipe_pending_type(uv_pipe_t *handle);
__attribute__((visibility("default"))) int uv_pipe_chmod(uv_pipe_t *handle,
                                                         int flags);

struct uv_poll_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_poll_cb poll_cb;
  uv__io_t io_watcher;
};

enum uv_poll_event {
  UV_READABLE = 1,
  UV_WRITABLE = 2,
  UV_DISCONNECT = 4,
  UV_PRIORITIZED = 8
};

__attribute__((visibility("default"))) int
uv_poll_init(uv_loop_t *loop, uv_poll_t *handle, int fd);
__attribute__((visibility("default"))) int
uv_poll_init_socket(uv_loop_t *loop, uv_poll_t *handle, uv_os_sock_t socket);
__attribute__((visibility("default"))) int
uv_poll_start(uv_poll_t *handle, int events, uv_poll_cb cb);
__attribute__((visibility("default"))) int uv_poll_stop(uv_poll_t *handle);

struct uv_prepare_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_prepare_cb prepare_cb;
  struct uv__queue queue;
};

__attribute__((visibility("default"))) int
uv_prepare_init(uv_loop_t *, uv_prepare_t *prepare);
__attribute__((visibility("default"))) int
uv_prepare_start(uv_prepare_t *prepare, uv_prepare_cb cb);
__attribute__((visibility("default"))) int
uv_prepare_stop(uv_prepare_t *prepare);

struct uv_check_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_check_cb check_cb;
  struct uv__queue queue;
};

__attribute__((visibility("default"))) int uv_check_init(uv_loop_t *,
                                                         uv_check_t *check);
__attribute__((visibility("default"))) int uv_check_start(uv_check_t *check,
                                                          uv_check_cb cb);
__attribute__((visibility("default"))) int uv_check_stop(uv_check_t *check);

struct uv_idle_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_idle_cb idle_cb;
  struct uv__queue queue;
};

__attribute__((visibility("default"))) int uv_idle_init(uv_loop_t *,
                                                        uv_idle_t *idle);
__attribute__((visibility("default"))) int uv_idle_start(uv_idle_t *idle,
                                                         uv_idle_cb cb);
__attribute__((visibility("default"))) int uv_idle_stop(uv_idle_t *idle);

struct uv_async_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_async_cb async_cb;
  struct uv__queue queue;
  int pending;
};

__attribute__((visibility("default"))) int
uv_async_init(uv_loop_t *, uv_async_t *async, uv_async_cb async_cb);
__attribute__((visibility("default"))) int uv_async_send(uv_async_t *async);

struct uv_timer_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_timer_cb timer_cb;
  union {
    void *heap[3];
    struct uv__queue queue;
  } node;
  uint64_t timeout;
  uint64_t repeat;
  uint64_t start_id;
};

__attribute__((visibility("default"))) int uv_timer_init(uv_loop_t *,
                                                         uv_timer_t *handle);
__attribute__((visibility("default"))) int uv_timer_start(uv_timer_t *handle,
                                                          uv_timer_cb cb,
                                                          uint64_t timeout,
                                                          uint64_t repeat);
__attribute__((visibility("default"))) int uv_timer_stop(uv_timer_t *handle);
__attribute__((visibility("default"))) int uv_timer_again(uv_timer_t *handle);
__attribute__((visibility("default"))) void
uv_timer_set_repeat(uv_timer_t *handle, uint64_t repeat);
__attribute__((visibility("default"))) uint64_t
uv_timer_get_repeat(const uv_timer_t *handle);
__attribute__((visibility("default"))) uint64_t
uv_timer_get_due_in(const uv_timer_t *handle);

struct uv_getaddrinfo_s {
  void *data;
  uv_req_type type;
  void *reserved[6];

  uv_loop_t *loop;

  struct uv__work work_req;
  uv_getaddrinfo_cb cb;
  struct addrinfo *hints;
  char *hostname;
  char *service;
  struct addrinfo *addrinfo;
  int retcode;
};

__attribute__((visibility("default"))) int
uv_getaddrinfo(uv_loop_t *loop, uv_getaddrinfo_t *req,
               uv_getaddrinfo_cb getaddrinfo_cb, const char *node,
               const char *service, const struct addrinfo *hints);
__attribute__((visibility("default"))) void
uv_freeaddrinfo(struct addrinfo *ai);

struct uv_getnameinfo_s {
  void *data;
  uv_req_type type;
  void *reserved[6];

  uv_loop_t *loop;

  struct uv__work work_req;
  uv_getnameinfo_cb getnameinfo_cb;
  struct sockaddr_storage storage;
  int flags;
  char host[
# 1002 "/usr/include/uv.h" 3 4
      1025
# 1002 "/usr/include/uv.h"
  ];
  char service[
# 1002 "/usr/include/uv.h" 3 4
      32
# 1002 "/usr/include/uv.h"
  ];
  int retcode;
};

__attribute__((visibility("default"))) int
uv_getnameinfo(uv_loop_t *loop, uv_getnameinfo_t *req,
               uv_getnameinfo_cb getnameinfo_cb, const struct sockaddr *addr,
               int flags);

typedef enum {
  UV_IGNORE = 0x00,
  UV_CREATE_PIPE = 0x01,
  UV_INHERIT_FD = 0x02,
  UV_INHERIT_STREAM = 0x04,

  UV_READABLE_PIPE = 0x10,
  UV_WRITABLE_PIPE = 0x20,

  UV_NONBLOCK_PIPE = 0x40,
  UV_OVERLAPPED_PIPE = 0x40
} uv_stdio_flags;

typedef struct uv_stdio_container_s {
  uv_stdio_flags flags;

  union {
    uv_stream_t *stream;
    int fd;
  } data;
} uv_stdio_container_t;

typedef struct uv_process_options_s {
  uv_exit_cb exit_cb;
  const char *file;

  char **args;

  char **env;

  const char *cwd;

  unsigned int flags;
# 1080 "/usr/include/uv.h"
  int stdio_count;
  uv_stdio_container_t *stdio;

  uv_uid_t uid;
  uv_gid_t gid;
} uv_process_options_t;

enum uv_process_flags {

  UV_PROCESS_SETUID = (1 << 0),

  UV_PROCESS_SETGID = (1 << 1),

  UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS = (1 << 2),

  UV_PROCESS_DETACHED = (1 << 3),

  UV_PROCESS_WINDOWS_HIDE = (1 << 4),

  UV_PROCESS_WINDOWS_HIDE_CONSOLE = (1 << 5),

  UV_PROCESS_WINDOWS_HIDE_GUI = (1 << 6),

  UV_PROCESS_WINDOWS_FILE_PATH_EXACT_NAME = (1 << 7)
};

struct uv_process_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_exit_cb exit_cb;
  int pid;
  struct uv__queue queue;
  int status;
};

__attribute__((visibility("default"))) int
uv_spawn(uv_loop_t *loop, uv_process_t *handle,
         const uv_process_options_t *options);
__attribute__((visibility("default"))) int uv_process_kill(uv_process_t *,
                                                           int signum);
__attribute__((visibility("default"))) int uv_kill(int pid, int signum);
__attribute__((visibility("default"))) uv_pid_t
uv_process_get_pid(const uv_process_t *);

struct uv_work_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
  uv_loop_t *loop;
  uv_work_cb work_cb;
  uv_after_work_cb after_work_cb;
  struct uv__work work_req;
};

__attribute__((visibility("default"))) int
uv_queue_work(uv_loop_t *loop, uv_work_t *req, uv_work_cb work_cb,
              uv_after_work_cb after_work_cb);

__attribute__((visibility("default"))) int uv_cancel(uv_req_t *req);

struct uv_cpu_times_s {
  uint64_t user;
  uint64_t nice;
  uint64_t sys;
  uint64_t idle;
  uint64_t irq;
};

struct uv_cpu_info_s {
  char *model;
  int speed;
  struct uv_cpu_times_s cpu_times;
};

struct uv_interface_address_s {
  char *name;
  char phys_addr[6];
  int is_internal;
  union {
    struct sockaddr_in address4;
    struct sockaddr_in6 address6;
  } address;
  union {
    struct sockaddr_in netmask4;
    struct sockaddr_in6 netmask6;
  } netmask;
};

struct uv_passwd_s {
  char *username;
  unsigned long uid;
  unsigned long gid;
  char *shell;
  char *homedir;
};

struct uv_group_s {
  char *groupname;
  unsigned long gid;
  char **members;
};

struct uv_utsname_s {
  char sysname[256];
  char release[256];
  char version[256];
  char machine[256];
};

struct uv_statfs_s {
  uint64_t f_type;
  uint64_t f_bsize;
  uint64_t f_blocks;
  uint64_t f_bfree;
  uint64_t f_bavail;
  uint64_t f_files;
  uint64_t f_ffree;
  uint64_t f_spare[4];
};

typedef enum {
  UV_DIRENT_UNKNOWN,
  UV_DIRENT_FILE,
  UV_DIRENT_DIR,
  UV_DIRENT_LINK,
  UV_DIRENT_FIFO,
  UV_DIRENT_SOCKET,
  UV_DIRENT_CHAR,
  UV_DIRENT_BLOCK
} uv_dirent_type_t;

struct uv_dirent_s {
  const char *name;
  uv_dirent_type_t type;
};

__attribute__((visibility("default"))) char **uv_setup_args(int argc,
                                                            char **argv);
__attribute__((visibility("default"))) int uv_get_process_title(char *buffer,
                                                                size_t size);
__attribute__((visibility("default"))) int
uv_set_process_title(const char *title);
__attribute__((visibility("default"))) int uv_resident_set_memory(size_t *rss);
__attribute__((visibility("default"))) int uv_uptime(double *uptime);
__attribute__((visibility("default"))) uv_os_fd_t uv_get_osfhandle(int fd);
__attribute__((visibility("default"))) int uv_open_osfhandle(uv_os_fd_t os_fd);

typedef struct {
  uv_timeval_t ru_utime;
  uv_timeval_t ru_stime;
  uint64_t ru_maxrss;
  uint64_t ru_ixrss;
  uint64_t ru_idrss;
  uint64_t ru_isrss;
  uint64_t ru_minflt;
  uint64_t ru_majflt;
  uint64_t ru_nswap;
  uint64_t ru_inblock;
  uint64_t ru_oublock;
  uint64_t ru_msgsnd;
  uint64_t ru_msgrcv;
  uint64_t ru_nsignals;
  uint64_t ru_nvcsw;
  uint64_t ru_nivcsw;
} uv_rusage_t;

__attribute__((visibility("default"))) int uv_getrusage(uv_rusage_t *rusage);

__attribute__((visibility("default"))) int uv_os_homedir(char *buffer,
                                                         size_t *size);
__attribute__((visibility("default"))) int uv_os_tmpdir(char *buffer,
                                                        size_t *size);
__attribute__((visibility("default"))) int uv_os_get_passwd(uv_passwd_t *pwd);
__attribute__((visibility("default"))) void uv_os_free_passwd(uv_passwd_t *pwd);
__attribute__((visibility("default"))) int uv_os_get_passwd2(uv_passwd_t *pwd,
                                                             uv_uid_t uid);
__attribute__((visibility("default"))) int uv_os_get_group(uv_group_t *grp,
                                                           uv_uid_t gid);
__attribute__((visibility("default"))) void uv_os_free_group(uv_group_t *grp);
__attribute__((visibility("default"))) uv_pid_t uv_os_getpid(void);
__attribute__((visibility("default"))) uv_pid_t uv_os_getppid(void);
# 1319 "/usr/include/uv.h"
__attribute__((visibility("default"))) int uv_os_getpriority(uv_pid_t pid,
                                                             int *priority);
__attribute__((visibility("default"))) int uv_os_setpriority(uv_pid_t pid,
                                                             int priority);

enum {
  UV_THREAD_PRIORITY_HIGHEST = 2,
  UV_THREAD_PRIORITY_ABOVE_NORMAL = 1,
  UV_THREAD_PRIORITY_NORMAL = 0,
  UV_THREAD_PRIORITY_BELOW_NORMAL = -1,
  UV_THREAD_PRIORITY_LOWEST = -2,
};

__attribute__((visibility("default"))) int
uv_thread_getpriority(uv_thread_t tid, int *priority);
__attribute__((visibility("default"))) int
uv_thread_setpriority(uv_thread_t tid, int priority);

__attribute__((visibility("default"))) unsigned int
uv_available_parallelism(void);
__attribute__((visibility("default"))) int
uv_cpu_info(uv_cpu_info_t **cpu_infos, int *count);
__attribute__((visibility("default"))) void
uv_free_cpu_info(uv_cpu_info_t *cpu_infos, int count);
__attribute__((visibility("default"))) int uv_cpumask_size(void);

__attribute__((visibility("default"))) int
uv_interface_addresses(uv_interface_address_t **addresses, int *count);
__attribute__((visibility("default"))) void
uv_free_interface_addresses(uv_interface_address_t *addresses, int count);

struct uv_env_item_s {
  char *name;
  char *value;
};

__attribute__((visibility("default"))) int
uv_os_environ(uv_env_item_t **envitems, int *count);
__attribute__((visibility("default"))) void
uv_os_free_environ(uv_env_item_t *envitems, int count);
__attribute__((visibility("default"))) int
uv_os_getenv(const char *name, char *buffer, size_t *size);
__attribute__((visibility("default"))) int uv_os_setenv(const char *name,
                                                        const char *value);
__attribute__((visibility("default"))) int uv_os_unsetenv(const char *name);
# 1365 "/usr/include/uv.h"
__attribute__((visibility("default"))) int uv_os_gethostname(char *buffer,
                                                             size_t *size);

__attribute__((visibility("default"))) int uv_os_uname(uv_utsname_t *buffer);

struct uv_metrics_s {
  uint64_t loop_count;
  uint64_t events;
  uint64_t events_waiting;

  uint64_t *reserved[13];
};

__attribute__((visibility("default"))) int
uv_metrics_info(uv_loop_t *loop, uv_metrics_t *metrics);
__attribute__((visibility("default"))) uint64_t
uv_metrics_idle_time(uv_loop_t *loop);

typedef enum {
  UV_FS_UNKNOWN = -1,
  UV_FS_CUSTOM,
  UV_FS_OPEN,
  UV_FS_CLOSE,
  UV_FS_READ,
  UV_FS_WRITE,
  UV_FS_SENDFILE,
  UV_FS_STAT,
  UV_FS_LSTAT,
  UV_FS_FSTAT,
  UV_FS_FTRUNCATE,
  UV_FS_UTIME,
  UV_FS_FUTIME,
  UV_FS_ACCESS,
  UV_FS_CHMOD,
  UV_FS_FCHMOD,
  UV_FS_FSYNC,
  UV_FS_FDATASYNC,
  UV_FS_UNLINK,
  UV_FS_RMDIR,
  UV_FS_MKDIR,
  UV_FS_MKDTEMP,
  UV_FS_RENAME,
  UV_FS_SCANDIR,
  UV_FS_LINK,
  UV_FS_SYMLINK,
  UV_FS_READLINK,
  UV_FS_CHOWN,
  UV_FS_FCHOWN,
  UV_FS_REALPATH,
  UV_FS_COPYFILE,
  UV_FS_LCHOWN,
  UV_FS_OPENDIR,
  UV_FS_READDIR,
  UV_FS_CLOSEDIR,
  UV_FS_STATFS,
  UV_FS_MKSTEMP,
  UV_FS_LUTIME
} uv_fs_type;

struct uv_dir_s {
  uv_dirent_t *dirents;
  size_t nentries;
  void *reserved[4];
  DIR *dir;
};

struct uv_fs_s {
  void *data;
  uv_req_type type;
  void *reserved[6];
  uv_fs_type fs_type;
  uv_loop_t *loop;
  uv_fs_cb cb;
  ssize_t result;
  void *ptr;
  const char *path;
  uv_stat_t statbuf;
  const char *new_path;
  uv_file file;
  int flags;
  mode_t mode;
  unsigned int nbufs;
  uv_buf_t *bufs;
  off_t off;
  uv_uid_t uid;
  uv_gid_t gid;
  double atime;
  double mtime;
  struct uv__work work_req;
  uv_buf_t bufsml[4];
};

__attribute__((visibility("default"))) uv_fs_type
uv_fs_get_type(const uv_fs_t *);
__attribute__((visibility("default"))) ssize_t
uv_fs_get_result(const uv_fs_t *);
__attribute__((visibility("default"))) int
uv_fs_get_system_error(const uv_fs_t *);
__attribute__((visibility("default"))) void *uv_fs_get_ptr(const uv_fs_t *);
__attribute__((visibility("default"))) const char *
uv_fs_get_path(const uv_fs_t *);
__attribute__((visibility("default"))) uv_stat_t *uv_fs_get_statbuf(uv_fs_t *);

__attribute__((visibility("default"))) void uv_fs_req_cleanup(uv_fs_t *req);
__attribute__((visibility("default"))) int
uv_fs_close(uv_loop_t *loop, uv_fs_t *req, uv_file file, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_open(uv_loop_t *loop, uv_fs_t *req, const char *path, int flags, int mode,
           uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_read(uv_loop_t *loop, uv_fs_t *req, uv_file file, const uv_buf_t bufs[],
           unsigned int nbufs, int64_t offset, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_unlink(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_write(uv_loop_t *loop, uv_fs_t *req, uv_file file, const uv_buf_t bufs[],
            unsigned int nbufs, int64_t offset, uv_fs_cb cb);
# 1495 "/usr/include/uv.h"
__attribute__((visibility("default"))) int
uv_fs_copyfile(uv_loop_t *loop, uv_fs_t *req, const char *path,
               const char *new_path, int flags, uv_fs_cb cb);
__attribute__((visibility("default"))) int uv_fs_mkdir(uv_loop_t *loop,
                                                       uv_fs_t *req,
                                                       const char *path,
                                                       int mode, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_mkdtemp(uv_loop_t *loop, uv_fs_t *req, const char *tpl, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_mkstemp(uv_loop_t *loop, uv_fs_t *req, const char *tpl, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_rmdir(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_scandir(uv_loop_t *loop, uv_fs_t *req, const char *path, int flags,
              uv_fs_cb cb);
__attribute__((visibility("default"))) int uv_fs_scandir_next(uv_fs_t *req,
                                                              uv_dirent_t *ent);
__attribute__((visibility("default"))) int
uv_fs_opendir(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_readdir(uv_loop_t *loop, uv_fs_t *req, uv_dir_t *dir, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_closedir(uv_loop_t *loop, uv_fs_t *req, uv_dir_t *dir, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_stat(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_fstat(uv_loop_t *loop, uv_fs_t *req, uv_file file, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_rename(uv_loop_t *loop, uv_fs_t *req, const char *path,
             const char *new_path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_fsync(uv_loop_t *loop, uv_fs_t *req, uv_file file, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_fdatasync(uv_loop_t *loop, uv_fs_t *req, uv_file file, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_ftruncate(uv_loop_t *loop, uv_fs_t *req, uv_file file, int64_t offset,
                uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_sendfile(uv_loop_t *loop, uv_fs_t *req, uv_file out_fd, uv_file in_fd,
               int64_t in_offset, size_t length, uv_fs_cb cb);
__attribute__((visibility("default"))) int uv_fs_access(uv_loop_t *loop,
                                                        uv_fs_t *req,
                                                        const char *path,
                                                        int mode, uv_fs_cb cb);
__attribute__((visibility("default"))) int uv_fs_chmod(uv_loop_t *loop,
                                                       uv_fs_t *req,
                                                       const char *path,
                                                       int mode, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_utime(uv_loop_t *loop, uv_fs_t *req, const char *path, double atime,
            double mtime, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_futime(uv_loop_t *loop, uv_fs_t *req, uv_file file, double atime,
             double mtime, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_lutime(uv_loop_t *loop, uv_fs_t *req, const char *path, double atime,
             double mtime, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_lstat(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_link(uv_loop_t *loop, uv_fs_t *req, const char *path,
           const char *new_path, uv_fs_cb cb);
# 1620 "/usr/include/uv.h"
__attribute__((visibility("default"))) int
uv_fs_symlink(uv_loop_t *loop, uv_fs_t *req, const char *path,
              const char *new_path, int flags, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_readlink(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_realpath(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);
__attribute__((visibility("default"))) int uv_fs_fchmod(uv_loop_t *loop,
                                                        uv_fs_t *req,
                                                        uv_file file, int mode,
                                                        uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_chown(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_uid_t uid,
            uv_gid_t gid, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_fchown(uv_loop_t *loop, uv_fs_t *req, uv_file file, uv_uid_t uid,
             uv_gid_t gid, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_lchown(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_uid_t uid,
             uv_gid_t gid, uv_fs_cb cb);
__attribute__((visibility("default"))) int
uv_fs_statfs(uv_loop_t *loop, uv_fs_t *req, const char *path, uv_fs_cb cb);

enum uv_fs_event { UV_RENAME = 1, UV_CHANGE = 2 };

struct uv_fs_event_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;

  char *path;
  uv_fs_event_cb cb;
# 1673 "/usr/include/uv.h" 3 4
  struct uv__queue watchers;
  int wd;

# 1674 "/usr/include/uv.h"
};

struct uv_fs_poll_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;

  void *poll_ctx;
};

__attribute__((visibility("default"))) int
uv_fs_poll_init(uv_loop_t *loop, uv_fs_poll_t *handle);
__attribute__((visibility("default"))) int
uv_fs_poll_start(uv_fs_poll_t *handle, uv_fs_poll_cb poll_cb, const char *path,
                 unsigned int interval);
__attribute__((visibility("default"))) int
uv_fs_poll_stop(uv_fs_poll_t *handle);
__attribute__((visibility("default"))) int
uv_fs_poll_getpath(uv_fs_poll_t *handle, char *buffer, size_t *size);

struct uv_signal_s {
  void *data;
  uv_loop_t *loop;
  uv_handle_type type;
  uv_close_cb close_cb;
  struct uv__queue handle_queue;
  union {
    int fd;
    void *reserved[4];
  } u;
  uv_handle_t *next_closing;
  unsigned int flags;
  uv_signal_cb signal_cb;
  int signum;
  struct {
    struct uv_signal_s *rbe_left;
    struct uv_signal_s *rbe_right;
    struct uv_signal_s *rbe_parent;
    int rbe_color;
  } tree_entry;
  unsigned int caught_signals;
  unsigned int dispatched_signals;
};

__attribute__((visibility("default"))) int uv_signal_init(uv_loop_t *loop,
                                                          uv_signal_t *handle);
__attribute__((visibility("default"))) int
uv_signal_start(uv_signal_t *handle, uv_signal_cb signal_cb, int signum);
__attribute__((visibility("default"))) int
uv_signal_start_oneshot(uv_signal_t *handle, uv_signal_cb signal_cb,
                        int signum);
__attribute__((visibility("default"))) int uv_signal_stop(uv_signal_t *handle);

__attribute__((visibility("default"))) void uv_loadavg(double avg[3]);

enum uv_fs_event_flags {

  UV_FS_EVENT_WATCH_ENTRY = 1,
# 1736 "/usr/include/uv.h"
  UV_FS_EVENT_STAT = 2,

  UV_FS_EVENT_RECURSIVE = 4
};

__attribute__((visibility("default"))) int
uv_fs_event_init(uv_loop_t *loop, uv_fs_event_t *handle);
__attribute__((visibility("default"))) int
uv_fs_event_start(uv_fs_event_t *handle, uv_fs_event_cb cb, const char *path,
                  unsigned int flags);
__attribute__((visibility("default"))) int
uv_fs_event_stop(uv_fs_event_t *handle);
__attribute__((visibility("default"))) int
uv_fs_event_getpath(uv_fs_event_t *handle, char *buffer, size_t *size);

__attribute__((visibility("default"))) int
uv_ip4_addr(const char *ip, int port, struct sockaddr_in *addr);
__attribute__((visibility("default"))) int
uv_ip6_addr(const char *ip, int port, struct sockaddr_in6 *addr);

__attribute__((visibility("default"))) int
uv_ip4_name(const struct sockaddr_in *src, char *dst, size_t size);
__attribute__((visibility("default"))) int
uv_ip6_name(const struct sockaddr_in6 *src, char *dst, size_t size);
__attribute__((visibility("default"))) int
uv_ip_name(const struct sockaddr *src, char *dst, size_t size);

__attribute__((visibility("default"))) int uv_inet_ntop(int af, const void *src,
                                                        char *dst, size_t size);
__attribute__((visibility("default"))) int uv_inet_pton(int af, const char *src,
                                                        void *dst);

struct uv_random_s {
  void *data;
  uv_req_type type;
  void *reserved[6];

  uv_loop_t *loop;

  int status;
  void *buf;
  size_t buflen;
  uv_random_cb cb;
  struct uv__work work_req;
};

__attribute__((visibility("default"))) int
uv_random(uv_loop_t *loop, uv_random_t *req, void *buf, size_t buflen,
          unsigned flags, uv_random_cb cb);
# 1795 "/usr/include/uv.h"
__attribute__((visibility("default"))) int
uv_if_indextoname(unsigned int ifindex, char *buffer, size_t *size);
__attribute__((visibility("default"))) int
uv_if_indextoiid(unsigned int ifindex, char *buffer, size_t *size);

__attribute__((visibility("default"))) int uv_exepath(char *buffer,
                                                      size_t *size);

__attribute__((visibility("default"))) int uv_cwd(char *buffer, size_t *size);

__attribute__((visibility("default"))) int uv_chdir(const char *dir);

__attribute__((visibility("default"))) uint64_t uv_get_free_memory(void);
__attribute__((visibility("default"))) uint64_t uv_get_total_memory(void);
__attribute__((visibility("default"))) uint64_t uv_get_constrained_memory(void);
__attribute__((visibility("default"))) uint64_t uv_get_available_memory(void);

__attribute__((visibility("default"))) int
uv_clock_gettime(uv_clock_id clock_id, uv_timespec64_t *ts);
__attribute__((visibility("default"))) uint64_t uv_hrtime(void);
__attribute__((visibility("default"))) void uv_sleep(unsigned int msec);

__attribute__((visibility("default"))) void uv_disable_stdio_inheritance(void);

__attribute__((visibility("default"))) int uv_dlopen(const char *filename,
                                                     uv_lib_t *lib);
__attribute__((visibility("default"))) void uv_dlclose(uv_lib_t *lib);
__attribute__((visibility("default"))) int
uv_dlsym(uv_lib_t *lib, const char *name, void **ptr);
__attribute__((visibility("default"))) const char *
uv_dlerror(const uv_lib_t *lib);

__attribute__((visibility("default"))) int uv_mutex_init(uv_mutex_t *handle);
__attribute__((visibility("default"))) int
uv_mutex_init_recursive(uv_mutex_t *handle);
__attribute__((visibility("default"))) void
uv_mutex_destroy(uv_mutex_t *handle);
__attribute__((visibility("default"))) void uv_mutex_lock(uv_mutex_t *handle);
__attribute__((visibility("default"))) int uv_mutex_trylock(uv_mutex_t *handle);
__attribute__((visibility("default"))) void uv_mutex_unlock(uv_mutex_t *handle);

__attribute__((visibility("default"))) int uv_rwlock_init(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) void
uv_rwlock_destroy(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) void
uv_rwlock_rdlock(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) int
uv_rwlock_tryrdlock(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) void
uv_rwlock_rdunlock(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) void
uv_rwlock_wrlock(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) int
uv_rwlock_trywrlock(uv_rwlock_t *rwlock);
__attribute__((visibility("default"))) void
uv_rwlock_wrunlock(uv_rwlock_t *rwlock);

__attribute__((visibility("default"))) int uv_sem_init(uv_sem_t *sem,
                                                       unsigned int value);
__attribute__((visibility("default"))) void uv_sem_destroy(uv_sem_t *sem);
__attribute__((visibility("default"))) void uv_sem_post(uv_sem_t *sem);
__attribute__((visibility("default"))) void uv_sem_wait(uv_sem_t *sem);
__attribute__((visibility("default"))) int uv_sem_trywait(uv_sem_t *sem);

__attribute__((visibility("default"))) int uv_cond_init(uv_cond_t *cond);
__attribute__((visibility("default"))) void uv_cond_destroy(uv_cond_t *cond);
__attribute__((visibility("default"))) void uv_cond_signal(uv_cond_t *cond);
__attribute__((visibility("default"))) void uv_cond_broadcast(uv_cond_t *cond);

__attribute__((visibility("default"))) int
uv_barrier_init(uv_barrier_t *barrier, unsigned int count);
__attribute__((visibility("default"))) void
uv_barrier_destroy(uv_barrier_t *barrier);
__attribute__((visibility("default"))) int
uv_barrier_wait(uv_barrier_t *barrier);

__attribute__((visibility("default"))) void uv_cond_wait(uv_cond_t *cond,
                                                         uv_mutex_t *mutex);
__attribute__((visibility("default"))) int
uv_cond_timedwait(uv_cond_t *cond, uv_mutex_t *mutex, uint64_t timeout);

__attribute__((visibility("default"))) void uv_once(uv_once_t *guard,
                                                    void (*callback)(void));

__attribute__((visibility("default"))) int uv_key_create(uv_key_t *key);
__attribute__((visibility("default"))) void uv_key_delete(uv_key_t *key);
__attribute__((visibility("default"))) void *uv_key_get(uv_key_t *key);
__attribute__((visibility("default"))) void uv_key_set(uv_key_t *key,
                                                       void *value);

__attribute__((visibility("default"))) int uv_gettimeofday(uv_timeval64_t *tv);

typedef void (*uv_thread_cb)(void *arg);

__attribute__((visibility("default"))) int
uv_thread_create(uv_thread_t *tid, uv_thread_cb entry, void *arg);

typedef enum {
  UV_THREAD_NO_FLAGS = 0x00,
  UV_THREAD_HAS_STACK_SIZE = 0x01
} uv_thread_create_flags;

struct uv_thread_options_s {
  unsigned int flags;
  size_t stack_size;
};

typedef struct uv_thread_options_s uv_thread_options_t;

__attribute__((visibility("default"))) int
uv_thread_create_ex(uv_thread_t *tid, const uv_thread_options_t *params,
                    uv_thread_cb entry, void *arg);
__attribute__((visibility("default"))) int
uv_thread_setaffinity(uv_thread_t *tid, char *cpumask, char *oldmask,
                      size_t mask_size);
__attribute__((visibility("default"))) int
uv_thread_getaffinity(uv_thread_t *tid, char *cpumask, size_t mask_size);
__attribute__((visibility("default"))) int uv_thread_getcpu(void);
__attribute__((visibility("default"))) uv_thread_t uv_thread_self(void);
__attribute__((visibility("default"))) int uv_thread_join(uv_thread_t *tid);
__attribute__((visibility("default"))) int
uv_thread_equal(const uv_thread_t *t1, const uv_thread_t *t2);

union uv_any_handle {
  uv_async_t async;
  uv_check_t check;
  uv_fs_event_t fs_event;
  uv_fs_poll_t fs_poll;
  uv_handle_t handle;
  uv_idle_t idle;
  uv_pipe_t pipe;
  uv_poll_t poll;
  uv_prepare_t prepare;
  uv_process_t process;
  uv_stream_t stream;
  uv_tcp_t tcp;
  uv_timer_t timer;
  uv_tty_t tty;
  uv_udp_t udp;
  uv_signal_t signal;
};

union uv_any_req {
  uv_req_t req;
  uv_connect_t connect;
  uv_write_t write;
  uv_shutdown_t shutdown;
  uv_udp_send_t udp_send;
  uv_fs_t fs;
  uv_work_t work;
  uv_getaddrinfo_t getaddrinfo;
  uv_getnameinfo_t getnameinfo;
  uv_random_t random;
};

struct uv_loop_s {

  void *data;

  unsigned int active_handles;
  struct uv__queue handle_queue;
  union {
    void *unused;
    unsigned int count;
  } active_reqs;

  void *internal_fields;

  unsigned int stop_flag;
  unsigned long flags;
  int backend_fd;
  struct uv__queue pending_queue;
  struct uv__queue watcher_queue;
  uv__io_t **watchers;
  unsigned int nwatchers;
  unsigned int nfds;
  struct uv__queue wq;
  uv_mutex_t wq_mutex;
  uv_async_t wq_async;
  uv_rwlock_t cloexec_lock;
  uv_handle_t *closing_handles;
  struct uv__queue process_handles;
  struct uv__queue prepare_handles;
  struct uv__queue check_handles;
  struct uv__queue idle_handles;
  struct uv__queue async_handles;
  void (*async_unused)(void);
  uv__io_t async_io_watcher;
  int async_wfd;
  struct {
    void *min;
    unsigned int nelts;
  } timer_heap;
  uint64_t timer_counter;
  uint64_t time;
  int signal_pipefd[2];
  uv__io_t signal_io_watcher;
  uv_signal_t child_watcher;
  int emfile_fd;
# 1928 "/usr/include/uv.h" 3 4
  uv__io_t inotify_read_watcher;
  void *inotify_watchers;
  int inotify_fd;

# 1929 "/usr/include/uv.h"
};

__attribute__((visibility("default"))) void *
uv_loop_get_data(const uv_loop_t *);
__attribute__((visibility("default"))) void uv_loop_set_data(uv_loop_t *,
                                                             void *data);

__attribute__((visibility("default"))) size_t
uv_utf16_length_as_wtf8(const uint16_t *utf16, ssize_t utf16_len);
__attribute__((visibility("default"))) int
uv_utf16_to_wtf8(const uint16_t *utf16, ssize_t utf16_len, char **wtf8_ptr,
                 size_t *wtf8_len_ptr);
__attribute__((visibility("default"))) ssize_t
uv_wtf8_length_as_utf16(const char *wtf8);
__attribute__((visibility("default"))) void
uv_wtf8_to_utf16(const char *wtf8, uint16_t *utf16, size_t utf16_len);
