; ModuleID = 'socket_cp_l1_klee_annotated_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat64* }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.dirent.12 = type { i64, i64, i16, i8, [256 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.fd_set = type { [16 x i64] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timezone = type { i32, i32 }
%struct.tms = type { i64, i64, i64, i64 }
%struct.utmpx = type opaque
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon.8, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon.8 = type { i32, i32 }
%struct.utimbuf = type { i64, i64 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12, %union.anon.13, %union.anon.14, %union.anon.15, %union.anon.16, %union.anon.17, %union.anon.18, %union.anon.19, %union.anon.20, %unio
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.22 = type { i64 }
%struct.siginfo_t = type { i32, i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3, [80 x i8] }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.__acl_ext = type opaque
%struct.rlimit = type { i64, i64 }
%struct.rlimit64 = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str6 = private unnamed_addr constant [30 x i8] c"socket_cp_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str7 = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str11 = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 1
@.str22 = private unnamed_addr constant [44 x i8] c"symbolic file descriptor, ignoring (ENOENT)\00", align 1
@close.n_calls = internal unnamed_addr global i32 0, align 4
@read.n_calls = internal unnamed_addr global i32 0, align 4
@.str33 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@.str44 = private unnamed_addr constant [35 x i8] c"/home/user/klee/runtime/POSIX/fd.c\00", align 1
@__PRETTY_FUNCTION__.read = private unnamed_addr constant [34 x i8] c"ssize_t read(int, void *, size_t)\00", align 1
@write.n_calls = internal unnamed_addr global i32 0, align 4
@.str55 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.write = private unnamed_addr constant [41 x i8] c"ssize_t write(int, const void *, size_t)\00", align 1
@.str66 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str77 = private unnamed_addr constant [24 x i8] c"write() ignores bytes.\0A\00", align 1
@.str88 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.__fd_lseek = private unnamed_addr constant [38 x i8] c"off64_t __fd_lseek(int, off64_t, int)\00", align 1
@.str9 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 1
@chmod.n_calls = internal unnamed_addr global i32 0, align 4
@fchmod.n_calls = internal unnamed_addr global i32 0, align 4
@__fd_ftruncate.n_calls = internal unnamed_addr global i32 0, align 4
@.str10 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str119 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"s != (off64_t) -1\00", align 1
@__PRETTY_FUNCTION__.__fd_getdents = private unnamed_addr constant [65 x i8] c"int __fd_getdents(unsigned int, struct dirent64 *, unsigned int)\00", align 1
@.str13 = private unnamed_addr constant [41 x i8] c"(TCGETS) symbolic file, incomplete model\00", align 1
@.str14 = private unnamed_addr constant [42 x i8] c"(TCSETS) symbolic file, silently ignoring\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"(TCSETSW) symbolic file, silently ignoring\00", align 1
@.str16 = private unnamed_addr constant [43 x i8] c"(TCSETSF) symbolic file, silently ignoring\00", align 1
@.str17 = private unnamed_addr constant [45 x i8] c"(TIOCGWINSZ) symbolic file, incomplete model\00", align 1
@.str18 = private unnamed_addr constant [46 x i8] c"(TIOCSWINSZ) symbolic file, ignoring (EINVAL)\00", align 1
@.str19 = private unnamed_addr constant [43 x i8] c"(FIONREAD) symbolic file, incomplete model\00", align 1
@.str20 = private unnamed_addr constant [44 x i8] c"(MTIOCGET) symbolic file, ignoring (EINVAL)\00", align 1
@.str21 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EBADF)\00", align 1
@.str2210 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@getcwd.n_calls = internal unnamed_addr global i32 0, align 4
@.str23 = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1
@.str24 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EPERM)\00", align 1
@__exe_env = global { [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] } { [32 x %struct.exe_file_t] [%struct.exe_file_t { i32 0, i32 5, i64 0, %struct.exe_disk_file_t* null }, %struct.exe_file_t { i32 1, i32 9, i64 0, %struct.exe_disk_file_t* null }, 
@klee_init_fds.name = private unnamed_addr constant [7 x i8] c"?-data\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__exe_fs = common global %struct.exe_file_system_t zeroinitializer, align 8
@.str128 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str229 = private unnamed_addr constant [10 x i8] c"read_fail\00", align 1
@.str330 = private unnamed_addr constant [11 x i8] c"write_fail\00", align 1
@.str431 = private unnamed_addr constant [11 x i8] c"close_fail\00", align 1
@.str532 = private unnamed_addr constant [15 x i8] c"ftruncate_fail\00", align 1
@.str633 = private unnamed_addr constant [12 x i8] c"getcwd_fail\00", align 1
@.str734 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str835 = private unnamed_addr constant [14 x i8] c"model_version\00", align 1
@.str936 = private unnamed_addr constant [6 x i8] c"-stat\00", align 1
@.str1037 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str1138 = private unnamed_addr constant [40 x i8] c"/home/user/klee/runtime/POSIX/fd_init.c\00", align 1
@__PRETTY_FUNCTION__.__create_new_dfile = private unnamed_addr constant [88 x i8] c"void __create_new_dfile(exe_disk_file_t *, unsigned int, const char *, struct stat64 *)\00", align 1
@.str39 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str140 = private unnamed_addr constant [9 x i8] c"ignoring\00", align 1
@.str241 = private unnamed_addr constant [40 x i8] c"/home/user/klee/runtime/POSIX/illegal.c\00", align 1
@.str342 = private unnamed_addr constant [20 x i8] c"longjmp unsupported\00", align 1
@.str443 = private unnamed_addr constant [8 x i8] c"xxx.err\00", align 1
@.str544 = private unnamed_addr constant [18 x i8] c"ignoring (EACCES)\00", align 1
@.str645 = private unnamed_addr constant [18 x i8] c"ignoring (ENOMEM)\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str149 = private unnamed_addr constant [964 x i8] c"klee_init_env\0A\0Ausage: (klee_init_env) [options] [program arguments]\0A  -sym-arg <N>              - Replace by a symbolic argument with length N\0A  -sym-args <MIN> <MAX> <N> - Replace by at least
@.str250 = private unnamed_addr constant [10 x i8] c"--sym-arg\00", align 1
@.str351 = private unnamed_addr constant [9 x i8] c"-sym-arg\00", align 1
@.str452 = private unnamed_addr constant [48 x i8] c"--sym-arg expects an integer argument <max-len>\00", align 1
@.str553 = private unnamed_addr constant [11 x i8] c"--sym-args\00", align 1
@.str654 = private unnamed_addr constant [10 x i8] c"-sym-args\00", align 1
@.str755 = private unnamed_addr constant [77 x i8] c"--sym-args expects three integer arguments <min-argvs> <max-argvs> <max-len>\00", align 1
@.str856 = private unnamed_addr constant [7 x i8] c"n_args\00", align 1
@.str957 = private unnamed_addr constant [12 x i8] c"--sym-files\00", align 1
@.str1058 = private unnamed_addr constant [11 x i8] c"-sym-files\00", align 1
@.str1159 = private unnamed_addr constant [72 x i8] c"--sym-files expects two integer arguments <no-sym-files> <sym-file-len>\00", align 1
@.str1260 = private unnamed_addr constant [12 x i8] c"--sym-stdin\00", align 1
@.str1361 = private unnamed_addr constant [11 x i8] c"-sym-stdin\00", align 1
@.str1462 = private unnamed_addr constant [57 x i8] c"--sym-stdin expects one integer argument <sym-stdin-len>\00", align 1
@.str1563 = private unnamed_addr constant [13 x i8] c"--sym-stdout\00", align 1
@.str1664 = private unnamed_addr constant [12 x i8] c"-sym-stdout\00", align 1
@.str1765 = private unnamed_addr constant [18 x i8] c"--save-all-writes\00", align 1
@.str1866 = private unnamed_addr constant [17 x i8] c"-save-all-writes\00", align 1
@.str1967 = private unnamed_addr constant [10 x i8] c"--fd-fail\00", align 1
@.str2068 = private unnamed_addr constant [9 x i8] c"-fd-fail\00", align 1
@.str2169 = private unnamed_addr constant [11 x i8] c"--max-fail\00", align 1
@.str2270 = private unnamed_addr constant [10 x i8] c"-max-fail\00", align 1
@.str2371 = private unnamed_addr constant [54 x i8] c"--max-fail expects an integer argument <max-failures>\00", align 1
@.str2472 = private unnamed_addr constant [37 x i8] c"too many arguments for klee_init_env\00", align 1
@.str2573 = private unnamed_addr constant [46 x i8] c"/home/user/klee/runtime/POSIX/klee_init_env.c\00", align 1
@.str26 = private unnamed_addr constant [9 x i8] c"user.err\00", align 1
@.str76 = private unnamed_addr constant [18 x i8] c"silently ignoring\00", align 1
@.str177 = private unnamed_addr constant [24 x i8] c"ignoring (EAFNOSUPPORT)\00", align 1
@.str278 = private unnamed_addr constant [15 x i8] c"ignoring (EIO)\00", align 1
@.str379 = private unnamed_addr constant [18 x i8] c"ignoring (ENFILE)\00", align 1
@.str480 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str581 = private unnamed_addr constant [13 x i8] c"returning 0\0A\00", align 1
@.str682 = private unnamed_addr constant [40 x i8] c"setting all times to 0 and returning 0\0A\00", align 1
@.str783 = private unnamed_addr constant [17 x i8] c"ignoring (EBADF)\00", align 1
@.str884 = private unnamed_addr constant [21 x i8] c"ignoring (-1 result)\00", align 1
@.str985 = private unnamed_addr constant [18 x i8] c"ignoring (ECHILD)\00", align 1
@.str1086 = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1
@.str1187 = private unnamed_addr constant [18 x i8] c"ignoring (EINVAL)\00", align 1
@.str1288 = private unnamed_addr constant [18 x i8] c"ignoring (ENOMEM)\00", align 1
@.str1389 = private unnamed_addr constant [19 x i8] c"ignoring (ENONMEM)\00", align 1
@.str1490 = private unnamed_addr constant [32 x i8] c"silently ignoring (returning 0)\00", align 1
@switch.table = private unnamed_addr constant [5 x i32] [i32 0, i32 3073, i32 2048, i32 1024, i32 3072]
@.str95 = private unnamed_addr constant [56 x i8] c"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str196 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str297 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str398 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1499 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25100 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6101 = private unnamed_addr constant [47 x i8] c"/home/user/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17102 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str9103 = private unnamed_addr constant [59 x i8] c"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c\00", align 1
@.str110 = private unnamed_addr constant [22 x i8] c"Invalid rounding mode\00", align 1
@.str211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

@__getdents64 = alias i32 (i32, %struct.dirent.12*, i32)* @getdents64

; Function Attrs: nounwind uwtable
define i32 @server() #0 {
entry:
  %retval = alloca i32, align 4
  %server_sockfd = alloca i32, align 4
  %client_sockfd = alloca i32, align 4
  %server_len = alloca i32, align 4
  %client_len = alloca i32, align 4
  %server_address = alloca %struct.sockaddr_in, align 4
  %client_address = alloca %struct.sockaddr_in, align 4
  %btye = alloca i32, align 4
  %char_recv = alloca i8, align 1
  %char_send = alloca i8, align 1
  %sin_family = getelementptr inbounds %struct.sockaddr_in* %server_address, i32 0, i32 0, !dbg !2104
  store i16 2, i16* %sin_family, align 2, !dbg !2104
  %call = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)) #10, !dbg !2105
  %sin_addr = getelementptr inbounds %struct.sockaddr_in* %server_address, i32 0, i32 2, !dbg !2105
  %s_addr = getelementptr inbounds %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !2105
  store i32 %call, i32* %s_addr, align 4, !dbg !2105
  %sin_port = getelementptr inbounds %struct.sockaddr_in* %server_address, i32 0, i32 1, !dbg !2106
  store i16 19991, i16* %sin_port, align 2, !dbg !2106
  store i32 16, i32* %server_len, align 4, !dbg !2107
  %call1 = call i32 @socket(i32 2, i32 1, i32 0) #10, !dbg !2108
  store i32 %call1, i32* %server_sockfd, align 4, !dbg !2108
  %0 = load i32* %server_sockfd, align 4, !dbg !2109
  %1 = bitcast %struct.sockaddr_in* %server_address to %struct.sockaddr*, !dbg !2109
  %2 = load i32* %server_len, align 4, !dbg !2109
  %call2 = call i32 @bind(i32 %0, %struct.sockaddr* %1, i32 %2) #10, !dbg !2109
  %3 = load i32* %server_sockfd, align 4, !dbg !2110
  %call3 = call i32 @listen(i32 %3, i32 5) #10, !dbg !2110
  store i32 16, i32* %client_len, align 4, !dbg !2111
  %4 = load i32* %server_sockfd, align 4, !dbg !2112
  %5 = bitcast %struct.sockaddr_in* %client_address to %struct.sockaddr*, !dbg !2112
  %call4 = call i32 @accept(i32 %4, %struct.sockaddr* %5, i32* %client_len), !dbg !2112
  store i32 %call4, i32* %client_sockfd, align 4, !dbg !2112
  %6 = load i32* %client_sockfd, align 4, !dbg !2113
  %call5 = call i64 @recv(i32 %6, i8* %char_recv, i64 1, i32 0), !dbg !2113
  %cmp = icmp eq i64 %call5, -1, !dbg !2113
  %conv = zext i1 %cmp to i32, !dbg !2113
  store i32 %conv, i32* %btye, align 4, !dbg !2113
  br i1 %cmp, label %if.then, label %if.end, !dbg !2113

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0)), !dbg !2115
  call void @exit(i32 1) #20, !dbg !2117
  unreachable, !dbg !2117

if.end:                                           ; preds = %entry
  %7 = load i8* %char_recv, align 1, !dbg !2118
  store i8 %7, i8* %char_send, align 1, !dbg !2118
  %8 = load i32* %client_sockfd, align 4, !dbg !2119
  %call6 = call i64 @send(i32 %8, i8* %char_send, i64 1, i32 0), !dbg !2119
  %cmp7 = icmp eq i64 %call6, -1, !dbg !2119
  %conv8 = zext i1 %cmp7 to i32, !dbg !2119
  store i32 %conv8, i32* %btye, align 4, !dbg !2119
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2119

if.then9:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0)), !dbg !2121
  call void @exit(i32 1) #20, !dbg !2123
  unreachable, !dbg !2123

if.end10:                                         ; preds = %if.end
  %9 = load i32* %client_sockfd, align 4, !dbg !2124
  %call11 = call i32 @close(i32 %9), !dbg !2124
  %10 = load i32* %server_sockfd, align 4, !dbg !2125
  %call12 = call i32 @close(i32 %10), !dbg !2125
  %11 = load i32* %retval, !dbg !2126
  ret i32 %11, !dbg !2126
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #2

declare i32 @accept(i32, %struct.sockaddr*, i32*) #3

declare i64 @recv(i32, i8*, i64, i32) #3

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: nounwind uwtable
define i32 @client_send(i8 signext %char_send) #0 {
entry:
  %char_send.addr = alloca i8, align 1
  %sockfd = alloca i32, align 4
  %len = alloca i32, align 4
  %address = alloca %struct.sockaddr_in, align 4
  %result = alloca i32, align 4
  %byte = alloca i32, align 4
  %char_recv = alloca i8, align 1
  %ret = alloca i32, align 4
  store i8 %char_send, i8* %char_send.addr, align 1
  %call = call i32 @socket(i32 2, i32 1, i32 0) #10, !dbg !2127
  store i32 %call, i32* %sockfd, align 4, !dbg !2127
  %cmp = icmp eq i32 %call, -1, !dbg !2127
  br i1 %cmp, label %if.then, label %if.end, !dbg !2127

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0)), !dbg !2129
  call void @exit(i32 -1) #20, !dbg !2131
  unreachable, !dbg !2131

if.end:                                           ; preds = %entry
  %sin_family = getelementptr inbounds %struct.sockaddr_in* %address, i32 0, i32 0, !dbg !2132
  store i16 2, i16* %sin_family, align 2, !dbg !2132
  %call1 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)) #10, !dbg !2133
  %sin_addr = getelementptr inbounds %struct.sockaddr_in* %address, i32 0, i32 2, !dbg !2133
  %s_addr = getelementptr inbounds %struct.in_addr* %sin_addr, i32 0, i32 0, !dbg !2133
  store i32 %call1, i32* %s_addr, align 4, !dbg !2133
  %sin_port = getelementptr inbounds %struct.sockaddr_in* %address, i32 0, i32 1, !dbg !2134
  store i16 19991, i16* %sin_port, align 2, !dbg !2134
  store i32 16, i32* %len, align 4, !dbg !2135
  %0 = load i32* %sockfd, align 4, !dbg !2136
  %1 = bitcast %struct.sockaddr_in* %address to %struct.sockaddr*, !dbg !2136
  %2 = load i32* %len, align 4, !dbg !2136
  %call2 = call i32 @connect(i32 %0, %struct.sockaddr* %1, i32 %2), !dbg !2136
  store i32 %call2, i32* %result, align 4, !dbg !2136
  %cmp3 = icmp eq i32 %call2, -1, !dbg !2136
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2136

if.then4:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0)), !dbg !2138
  call void @exit(i32 -1) #20, !dbg !2140
  unreachable, !dbg !2140

if.end5:                                          ; preds = %if.end
  %3 = load i32* %sockfd, align 4, !dbg !2141
  %call6 = call i64 @send(i32 %3, i8* %char_send.addr, i64 1, i32 0), !dbg !2141
  %cmp7 = icmp eq i64 %call6, -1, !dbg !2141
  %conv = zext i1 %cmp7 to i32, !dbg !2141
  store i32 %conv, i32* %byte, align 4, !dbg !2141
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2141

if.then8:                                         ; preds = %if.end5
  call void @perror(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0)), !dbg !2143
  call void @exit(i32 -1) #20, !dbg !2145
  unreachable, !dbg !2145

if.end9:                                          ; preds = %if.end5
  %4 = load i32* %sockfd, align 4, !dbg !2146
  %call10 = call i64 @recv(i32 %4, i8* %char_recv, i64 1, i32 0), !dbg !2146
  %cmp11 = icmp eq i64 %call10, -1, !dbg !2146
  %conv12 = zext i1 %cmp11 to i32, !dbg !2146
  store i32 %conv12, i32* %byte, align 4, !dbg !2146
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2146

if.then13:                                        ; preds = %if.end9
  call void @perror(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0)), !dbg !2148
  call void @exit(i32 -1) #20, !dbg !2150
  unreachable, !dbg !2150

if.end14:                                         ; preds = %if.end9
  %5 = load i8* %char_recv, align 1, !dbg !2151
  %conv15 = sext i8 %5 to i32, !dbg !2151
  %sub = sub nsw i32 %conv15, 48, !dbg !2151
  store i32 %sub, i32* %ret, align 4, !dbg !2151
  %6 = load i32* %sockfd, align 4, !dbg !2152
  %call16 = call i32 @close(i32 %6), !dbg !2152
  %7 = load i32* %ret, align 4, !dbg !2153
  ret i32 %7, !dbg !2153
}

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %pid1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4, !dbg !2154
  %call = call i32 @fork() #10, !dbg !2155
  store i32 %call, i32* %pid1, align 4, !dbg !2155
  %0 = load i32* %pid1, align 4, !dbg !2156
  %cmp = icmp slt i32 %0, 0, !dbg !2156
  br i1 %cmp, label %if.then, label %if.else, !dbg !2156

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str6, i32 0, i32 0), i32 88, i8* g
  br label %if.end15, !dbg !2160

if.else:                                          ; preds = %entry
  %1 = load i32* %pid1, align 4, !dbg !2161
  %cmp2 = icmp eq i32 %1, 0, !dbg !2161
  br i1 %cmp2, label %if.then3, label %if.else6, !dbg !2161

if.then3:                                         ; preds = %if.else
  %call4 = call i32 @server(), !dbg !2163
  %call5 = call i32 (i8*, ...)* bitcast (i32 (i32, i32*, i32)* @waitpid to i32 (i8*, ...)*)(i8* null), !dbg !2165
  call void @exit(i32 0) #20, !dbg !2166
  unreachable, !dbg !2166

if.else6:                                         ; preds = %if.else
  %call7 = call i32 @sleep(i32 5), !dbg !2167
  %2 = load i8** %s.addr, align 8, !dbg !2169
  %arrayidx = getelementptr inbounds i8* %2, i64 0, !dbg !2169
  %3 = load i8* %arrayidx, align 1, !dbg !2169
  %call8 = call i32 @client_send(i8 signext %3), !dbg !2169
  store i32 %call8, i32* %i, align 4, !dbg !2169
  %4 = load i32* %i, align 4, !dbg !2170
  %cmp9 = icmp eq i32 %4, 7, !dbg !2170
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !2170

if.then10:                                        ; preds = %if.else6
  %call11 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str6, i32 0, i32 0), i32 98, i8* 
  br label %if.end15, !dbg !2174

if.else12:                                        ; preds = %if.else6
  %call13 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str6, i32 0, i32 0), i32 100, i8*
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then10, %if.then
  %5 = load i32* %retval, !dbg !2177
  ret i32 %5, !dbg !2177
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare i32 @sleep(i32) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argcPtr = alloca i32
  %argvPtr = alloca i8**
  store i32 %argc, i32* %argcPtr
  store i8** %argv, i8*** %argvPtr
  call void @klee_init_env(i32* %argcPtr, i8*** %argvPtr)
  %newArgc = load i32* %argcPtr
  %newArgv = load i8*** %argvPtr
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [17 x i8], align 16
  store i32 0, i32* %retval
  store i32 %newArgc, i32* %argc.addr, align 4
  store i8** %newArgv, i8*** %argv.addr, align 8
  %0 = bitcast [17 x i8]* %s to i8*, !dbg !2178
  call void @klee_make_symbolic(i8* %0, i64 17, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0)), !dbg !2178
  %arrayidx = getelementptr inbounds [17 x i8]* %s, i32 0, i64 16, !dbg !2179
  %1 = load i8* %arrayidx, align 1, !dbg !2179
  %conv = sext i8 %1 to i32, !dbg !2179
  %cmp = icmp eq i32 %conv, 0, !dbg !2179
  %conv1 = zext i1 %cmp to i32, !dbg !2179
  %conv2 = sext i32 %conv1 to i64, !dbg !2179
  call void @klee_assume(i64 %conv2), !dbg !2179
  %arraydecay = getelementptr inbounds [17 x i8]* %s, i32 0, i32 0, !dbg !2180
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !2180
  ret i32 %call, !dbg !2180
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_assume(i64) #3

; Function Attrs: nounwind uwtable
define i32 @access(i8* %pathname, i32 %mode) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2181, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2186
  %cmp.i = icmp eq i8 %0, 0, !dbg !2186
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2186

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2186
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2186, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2186
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2186

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2188, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2188
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2188

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2188
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2188

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2193
  %sext.i = shl i32 %i.027.i, 24, !dbg !2193
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2193
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2193
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2193
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2193
  %inc.i = add i32 %i.027.i, 1, !dbg !2188
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2193

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2194
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2194, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2196
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2196, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2196
  %5 = load i64* %st_ino.i, align 8, !dbg !2196, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2196
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2194
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2204
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2196
  br i1 %or.cond, label %if.else, label %return, !dbg !2196

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %pathname to i64, !dbg !2205
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #10, !dbg !2205
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2205
  %cmp.i.i = icmp eq i8* %7, %pathname, !dbg !2208
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2208
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2208
  br label %for.cond.i9, !dbg !2209

for.cond.i9:                                      ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i11, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2210, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2211
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2211
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2211
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2211

if.then.i:                                        ; preds = %for.cond.i9
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2212

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2215, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2217

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2218
  store i8 47, i8* %sc.0.i, align 1, !dbg !2218, !tbaa !2183
  br label %for.inc.i, !dbg !2221

if.else7.i:                                       ; preds = %for.cond.i9
  %conv8.i = sext i8 %8 to i64, !dbg !2222
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2222
  %conv10.i10 = trunc i64 %call9.i to i8, !dbg !2222
  %cmp13.i = icmp eq i8 %conv10.i10, %8, !dbg !2223
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2223
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2223
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2224
  store i8 %conv10.i10, i8* %sc.0.i, align 1, !dbg !2224, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i10, 0, !dbg !2225
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2225

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i11 = add i32 %i.0.i, 1, !dbg !2209
  br label %for.cond.i9, !dbg !2209

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 21, i8* %pathname, i32 %mode) #10, !dbg !2207
  %conv = trunc i64 %call2 to i32, !dbg !2207
  %cmp = icmp eq i32 %conv, -1, !dbg !2227
  br i1 %cmp, label %if.then4, label %return, !dbg !2227

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #10, !dbg !2229
  %call6 = tail call i32* @__errno_location() #1, !dbg !2229
  store i32 %call5, i32* %call6, align 4, !dbg !2229, !tbaa !2230
  br label %return, !dbg !2229

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then13.i
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then13.i ]
  ret i32 %retval.0, !dbg !2231
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #7

declare i32 @klee_get_errno() #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: nounwind uwtable
define i32 @umask(i32 %mask) #6 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !2232, !tbaa !2233
  %and = and i32 %mask, 511, !dbg !2235
  store i32 %and, i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !2235, !tbaa !2233
  ret i32 %0, !dbg !2236
}

; Function Attrs: nounwind uwtable
define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) #6 {
entry:
  br label %for.body, !dbg !2237

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !2237
  %cmp = icmp slt i32 %0, 32, !dbg !2237
  br i1 %cmp, label %for.body, label %for.end, !dbg !2237

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %fd.0110 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %flags1 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2239
  %1 = load i32* %flags1, align 4, !dbg !2239, !tbaa !2241
  %and = and i32 %1, 1, !dbg !2239
  %tobool = icmp eq i32 %and, 0, !dbg !2239
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2237
  %inc = add nsw i32 %fd.0110, 1, !dbg !2237
  br i1 %tobool, label %for.end, label %for.cond, !dbg !2239

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.0110, %for.body ], [ %inc, %for.cond ]
  %cmp2 = icmp eq i32 %fd.0.lcssa, 32, !dbg !2243
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2243

if.then3:                                         ; preds = %for.end
  %call = tail call i32* @__errno_location() #1, !dbg !2245
  store i32 24, i32* %call, align 4, !dbg !2245, !tbaa !2230
  br label %return, !dbg !2247

if.end4:                                          ; preds = %for.end
  %idxprom5 = sext i32 %fd.0.lcssa to i64, !dbg !2248
  %arrayidx6 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, !dbg !2248
  %2 = bitcast %struct.exe_file_t* %arrayidx6 to i8*, !dbg !2249
  %3 = call i8* @memset(i8* %2, i32 0, i64 24)
  %4 = load i8* %pathname, align 1, !dbg !2250, !tbaa !2183
  %conv.i = sext i8 %4 to i32, !dbg !2252
  %cmp.i = icmp eq i8 %4, 0, !dbg !2252
  br i1 %cmp.i, label %if.else45, label %lor.lhs.false.i, !dbg !2252

lor.lhs.false.i:                                  ; preds = %if.end4
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2252
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2252, !tbaa !2183
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2252
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else45, !dbg !2252

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2253, !tbaa !2189
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2253
  br i1 %cmp626.i, label %if.else45, label %for.body.i, !dbg !2253

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %6, !dbg !2253
  br i1 %cmp6.i, label %for.body.i, label %if.else45, !dbg !2253

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2254
  %sext.i = shl i32 %i.027.i, 24, !dbg !2254
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2254
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2254
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2254
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2254
  %inc.i = add i32 %i.027.i, 1, !dbg !2253
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2254

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2255
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2255, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i, i32 2, !dbg !2256
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !2256, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !2256
  %9 = load i64* %st_ino.i, align 8, !dbg !2256, !tbaa !2200
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2256
  br i1 %cmp15.i, label %if.else45, label %__get_sym_file.exit, !dbg !2256

__get_sym_file.exit:                              ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i, !dbg !2255
  %tobool8 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2257
  br i1 %tobool8, label %if.else45, label %if.then9, !dbg !2257

if.then9:                                         ; preds = %__get_sym_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 3, !dbg !2258
  store %struct.exe_disk_file_t* %arrayidx14.i, %struct.exe_disk_file_t** %dfile, align 8, !dbg !2258, !tbaa !2260
  %10 = and i32 %flags, 192, !dbg !2261
  switch i32 %10, label %if.end32 [
    i32 192, label %if.then14
    i32 128, label %if.then30
  ], !dbg !2261

if.then14:                                        ; preds = %if.then9
  %call15 = tail call i32* @__errno_location() #1, !dbg !2263
  store i32 17, i32* %call15, align 4, !dbg !2263, !tbaa !2230
  br label %return, !dbg !2265

if.then30:                                        ; preds = %if.then9
  tail call void @klee_warning(i8* getelementptr inbounds ([47 x i8]* @.str11, i64 0, i64 0)) #10, !dbg !2266
  %call31 = tail call i32* @__errno_location() #1, !dbg !2269
  store i32 13, i32* %call31, align 4, !dbg !2269, !tbaa !2230
  br label %return, !dbg !2270

if.end32:                                         ; preds = %if.then9
  %st_mode.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2271
  %11 = load i32* %st_mode.i, align 4, !dbg !2271, !tbaa !2274
  %and1.i = and i32 %flags, 2, !dbg !2275
  %tobool2.i = icmp eq i32 %and1.i, 0, !dbg !2275
  %or15.i = and i32 %11, 292, !dbg !2277
  %tobool16.i = icmp eq i32 %or15.i, 0, !dbg !2277
  %or.cond37.i = or i1 %tobool2.i, %tobool16.i, !dbg !2277
  br i1 %or.cond37.i, label %has_permission.exit, label %if.then35, !dbg !2277

has_permission.exit:                              ; preds = %if.end32
  %12 = and i32 %flags, 3, !dbg !2279
  %not..i = icmp ne i32 %12, 0, !dbg !2279
  %or25.i = and i32 %11, 146, !dbg !2281
  %tobool26.i = icmp eq i32 %or25.i, 0, !dbg !2281
  %or.cond38.i = and i1 %not..i, %tobool26.i, !dbg !2281
  br i1 %or.cond38.i, label %if.then35, label %if.else, !dbg !2272

if.then35:                                        ; preds = %has_permission.exit, %if.end32
  %call36 = tail call i32* @__errno_location() #1, !dbg !2283
  store i32 13, i32* %call36, align 4, !dbg !2283, !tbaa !2230
  br label %return, !dbg !2285

if.else:                                          ; preds = %has_permission.exit
  %and39 = and i32 %11, -512, !dbg !2286
  %13 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !2286, !tbaa !2233
  %neg = xor i32 %13, -1, !dbg !2286
  %and40 = and i32 %neg, %mode, !dbg !2286
  %or = or i32 %and40, %and39, !dbg !2286
  store i32 %or, i32* %st_mode.i, align 4, !dbg !2286, !tbaa !2274
  br label %if.end55, !dbg !2287

if.else45:                                        ; preds = %__get_sym_file.exit, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %if.end4
  %14 = ptrtoint i8* %pathname to i64, !dbg !2288
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #10, !dbg !2288
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !2288
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !2291
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2291
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2291
  br label %for.cond.i101, !dbg !2292

for.cond.i101:                                    ; preds = %for.inc.i, %if.else45
  %i.0.i = phi i32 [ 0, %if.else45 ], [ %inc.i103, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.else45 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !2293, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2294
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2294
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2294
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2294

if.then.i:                                        ; preds = %for.cond.i101
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2295

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2296, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2297

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2298
  store i8 47, i8* %sc.0.i, align 1, !dbg !2298, !tbaa !2183
  br label %for.inc.i, !dbg !2299

if.else7.i:                                       ; preds = %for.cond.i101
  %conv8.i = sext i8 %16 to i64, !dbg !2300
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2300
  %conv10.i102 = trunc i64 %call9.i to i8, !dbg !2300
  %cmp13.i = icmp eq i8 %conv10.i102, %16, !dbg !2301
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2301
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2301
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2302
  store i8 %conv10.i102, i8* %sc.0.i, align 1, !dbg !2302, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i102, 0, !dbg !2303
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2303

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i103 = add i32 %i.0.i, 1, !dbg !2292
  br label %for.cond.i101, !dbg !2292

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call47 = tail call i64 (i64, ...)* @syscall(i64 2, i8* %pathname, i32 %flags, i32 %mode) #10, !dbg !2290
  %conv = trunc i64 %call47 to i32, !dbg !2290
  %cmp48 = icmp eq i32 %conv, -1, !dbg !2304
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !2304

if.then50:                                        ; preds = %__concretize_string.exit
  %call51 = tail call i32 @klee_get_errno() #10, !dbg !2306
  %call52 = tail call i32* @__errno_location() #1, !dbg !2306
  store i32 %call51, i32* %call52, align 4, !dbg !2306, !tbaa !2230
  br label %return, !dbg !2308

if.end53:                                         ; preds = %__concretize_string.exit
  %fd54 = getelementptr inbounds %struct.exe_file_t* %arrayidx6, i64 0, i32 0, !dbg !2309
  store i32 %conv, i32* %fd54, align 8, !dbg !2309, !tbaa !2310
  %and57.pre = and i32 %flags, 3, !dbg !2311
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.else
  %and57.pre-phi = phi i32 [ %and57.pre, %if.end53 ], [ %12, %if.else ], !dbg !2311
  %flags56 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 1, !dbg !2313
  store i32 1, i32* %flags56, align 4, !dbg !2313, !tbaa !2241
  switch i32 %and57.pre-phi, label %if.else70 [
    i32 0, label %if.then60
    i32 1, label %if.then67
  ], !dbg !2311

if.then60:                                        ; preds = %if.end55
  store i32 5, i32* %flags56, align 4, !dbg !2314, !tbaa !2241
  br label %return, !dbg !2316

if.then67:                                        ; preds = %if.end55
  store i32 9, i32* %flags56, align 4, !dbg !2317, !tbaa !2241
  br label %return, !dbg !2320

if.else70:                                        ; preds = %if.end55
  store i32 13, i32* %flags56, align 4, !dbg !2321, !tbaa !2241
  br label %return

return:                                           ; preds = %if.else70, %if.then67, %if.then60, %if.then50, %if.then35, %if.then30, %if.then14, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then14 ], [ -1, %if.then35 ], [ -1, %if.then30 ], [ -1, %if.then50 ], [ %fd.0.lcssa, %if.then67 ], [ %fd.0.lcssa, %if.else70 ], [ %fd.0.lcssa, %if.then60 ]
  ret i32 %retval.0, !dbg !2323
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #10

declare void @klee_warning(i8*) #8

; Function Attrs: nounwind uwtable
define i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) #6 {
entry:
  %cmp = icmp eq i32 %basefd, -100, !dbg !2324
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2324

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %basefd, 32, !dbg !2325
  br i1 %0, label %if.then.i, label %if.then1, !dbg !2325

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %basefd to i64, !dbg !2327
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2328
  %1 = load i32* %flags.i, align 4, !dbg !2328, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2328
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2328
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !2328

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2327
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2330
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2330

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !2332
  store i32 9, i32* %call2, align 4, !dbg !2332, !tbaa !2230
  br label %return, !dbg !2334

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2335
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2335, !tbaa !2260
  %tobool3 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2335
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2335

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str22, i64 0, i64 0)) #10, !dbg !2337
  %call5 = tail call i32* @__errno_location() #1, !dbg !2339
  store i32 2, i32* %call5, align 4, !dbg !2339, !tbaa !2230
  br label %return, !dbg !2340

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2341
  %3 = load i32* %fd7, align 8, !dbg !2341, !tbaa !2310
  %phitmp = sext i32 %3 to i64, !dbg !2342
  br label %if.end8, !dbg !2342

if.end8:                                          ; preds = %if.end6, %entry
  %basefd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %pathname, align 1, !dbg !2343, !tbaa !2183
  %conv.i = sext i8 %4 to i32, !dbg !2346
  %cmp.i = icmp eq i8 %4, 0, !dbg !2346
  br i1 %cmp.i, label %for.body, label %lor.lhs.false.i, !dbg !2346

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2346
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2346, !tbaa !2183
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2346
  br i1 %cmp4.i, label %for.cond.preheader.i, label %for.body, !dbg !2346

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2347, !tbaa !2189
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2347
  br i1 %cmp626.i, label %for.body, label %for.body.i, !dbg !2347

for.cond.i78:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i80, %6, !dbg !2347
  br i1 %cmp6.i, label %for.body.i, label %for.body, !dbg !2347

for.body.i:                                       ; preds = %for.cond.i78, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i80, %for.cond.i78 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2348
  %sext.i = shl i32 %i.027.i, 24, !dbg !2348
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2348
  %conv10.i79 = ashr exact i32 %sext.i, 24, !dbg !2348
  %add.i = add nsw i32 %conv10.i79, 65, !dbg !2348
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2348
  %inc.i80 = add i32 %i.027.i, 1, !dbg !2347
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i78, !dbg !2348

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i81 = zext i32 %i.027.i to i64, !dbg !2349
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2349, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i81, i32 2, !dbg !2350
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !2350, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !2350
  %9 = load i64* %st_ino.i, align 8, !dbg !2350, !tbaa !2200
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2350
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i81, !dbg !2349
  %tobool10 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2344
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !2350
  br i1 %or.cond, label %for.body, label %if.then11, !dbg !2350

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode), !dbg !2351
  br label %return, !dbg !2351

for.cond:                                         ; preds = %for.body
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !2353
  %cmp14 = icmp slt i32 %10, 32, !dbg !2353
  br i1 %cmp14, label %for.body, label %for.end, !dbg !2353

for.body:                                         ; preds = %for.cond, %if.then13.i, %for.cond.i78, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %fd.086 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %flags15 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2355
  %11 = load i32* %flags15, align 4, !dbg !2355, !tbaa !2241
  %and = and i32 %11, 1, !dbg !2355
  %tobool16 = icmp eq i32 %and, 0, !dbg !2355
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2353
  %inc = add nsw i32 %fd.086, 1, !dbg !2353
  br i1 %tobool16, label %for.end, label %for.cond, !dbg !2355

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.086, %for.body ], [ %inc, %for.cond ]
  %cmp19 = icmp eq i32 %fd.0.lcssa, 32, !dbg !2357
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2357

if.then20:                                        ; preds = %for.end
  %call21 = tail call i32* @__errno_location() #1, !dbg !2359
  store i32 24, i32* %call21, align 4, !dbg !2359, !tbaa !2230
  br label %return, !dbg !2361

if.end22:                                         ; preds = %for.end
  %idxprom23 = sext i32 %fd.0.lcssa to i64, !dbg !2362
  %arrayidx24 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, !dbg !2362
  %12 = bitcast %struct.exe_file_t* %arrayidx24 to i8*, !dbg !2363
  %13 = call i8* @memset(i8* %12, i32 0, i64 24)
  %14 = ptrtoint i8* %pathname to i64, !dbg !2364
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #10, !dbg !2364
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !2364
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !2367
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2367
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2367
  br label %for.cond.i, !dbg !2368

for.cond.i:                                       ; preds = %for.inc.i, %if.end22
  %i.0.i = phi i32 [ 0, %if.end22 ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.end22 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !2369, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2370
  %and.i74 = and i32 %sub.i, %i.0.i, !dbg !2370
  %tobool.i75 = icmp eq i32 %and.i74, 0, !dbg !2370
  br i1 %tobool.i75, label %if.then.i76, label %if.else7.i, !dbg !2370

if.then.i76:                                      ; preds = %for.cond.i
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i77
    i8 47, label %if.then4.i
  ], !dbg !2371

if.then2.i77:                                     ; preds = %if.then.i76
  store i8 0, i8* %sc.0.i, align 1, !dbg !2372, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2373

if.then4.i:                                       ; preds = %if.then.i76
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2374
  store i8 47, i8* %sc.0.i, align 1, !dbg !2374, !tbaa !2183
  br label %for.inc.i, !dbg !2375

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %16 to i64, !dbg !2376
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2376
  %conv10.i = trunc i64 %call9.i to i8, !dbg !2376
  %cmp13.i = icmp eq i8 %conv10.i, %16, !dbg !2377
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2377
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2377
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2378
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !2378, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !2379
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2379

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i76
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i76 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !2368
  br label %for.cond.i, !dbg !2368

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i77
  %conv26 = sext i32 %flags to i64, !dbg !2366
  %call27 = tail call i64 (i64, ...)* @syscall(i64 257, i64 %basefd.addr.0, i8* %pathname, i64 %conv26, i32 %mode) #10, !dbg !2366
  %conv28 = trunc i64 %call27 to i32, !dbg !2366
  %cmp29 = icmp eq i32 %conv28, -1, !dbg !2380
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !2380

if.then31:                                        ; preds = %__concretize_string.exit
  %call32 = tail call i32 @klee_get_errno() #10, !dbg !2382
  %call33 = tail call i32* @__errno_location() #1, !dbg !2382
  store i32 %call32, i32* %call33, align 4, !dbg !2382, !tbaa !2230
  br label %return, !dbg !2384

if.end34:                                         ; preds = %__concretize_string.exit
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx24, i64 0, i32 0, !dbg !2385
  store i32 %conv28, i32* %fd35, align 8, !dbg !2385, !tbaa !2310
  %flags36 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, i32 1, !dbg !2386
  store i32 1, i32* %flags36, align 4, !dbg !2386, !tbaa !2241
  %and37 = and i32 %flags, 3, !dbg !2387
  switch i32 %and37, label %if.else49 [
    i32 0, label %if.then40
    i32 1, label %if.then46
  ], !dbg !2387

if.then40:                                        ; preds = %if.end34
  store i32 5, i32* %flags36, align 4, !dbg !2389, !tbaa !2241
  br label %return, !dbg !2391

if.then46:                                        ; preds = %if.end34
  store i32 9, i32* %flags36, align 4, !dbg !2392, !tbaa !2241
  br label %return, !dbg !2395

if.else49:                                        ; preds = %if.end34
  store i32 13, i32* %flags36, align 4, !dbg !2396, !tbaa !2241
  br label %return

return:                                           ; preds = %if.else49, %if.then46, %if.then40, %if.then31, %if.then20, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then20 ], [ -1, %if.then31 ], [ -1, %if.then1 ], [ %fd.0.lcssa, %if.then46 ], [ %fd.0.lcssa, %if.else49 ], [ %fd.0.lcssa, %if.then40 ]
  ret i32 %retval.0, !dbg !2398
}

; Function Attrs: nounwind uwtable
define i32 @utimes(i8* %path, %struct.timeval* %times) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2399, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2401
  %cmp.i = icmp eq i8 %0, 0, !dbg !2401
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2401

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2401
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2401, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2401
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2401

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2402, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2402
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2402

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2402
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2402

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2403
  %sext.i = shl i32 %i.027.i, 24, !dbg !2403
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2403
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2403
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2403
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2403
  %inc.i = add i32 %i.027.i, 1, !dbg !2402
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2403

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2404
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2404, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2405
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2405, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2405
  %5 = load i64* %st_ino.i, align 8, !dbg !2405, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2405
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2404
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2406
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2405
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2405

if.then:                                          ; preds = %if.then13.i
  %tv_sec = getelementptr inbounds %struct.timeval* %times, i64 0, i32 0, !dbg !2408
  %6 = load i64* %tv_sec, align 8, !dbg !2408, !tbaa !2410
  %tv_sec1 = getelementptr inbounds %struct.stat64* %4, i64 0, i32 11, i32 0, !dbg !2408
  store i64 %6, i64* %tv_sec1, align 8, !dbg !2408, !tbaa !2412
  %tv_sec3 = getelementptr inbounds %struct.timeval* %times, i64 1, i32 0, !dbg !2413
  %7 = load i64* %tv_sec3, align 8, !dbg !2413, !tbaa !2410
  %tv_sec5 = getelementptr inbounds %struct.stat64* %4, i64 0, i32 12, i32 0, !dbg !2413
  store i64 %7, i64* %tv_sec5, align 8, !dbg !2413, !tbaa !2414
  br label %return, !dbg !2415

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %8 = ptrtoint i8* %path to i64, !dbg !2416
  %call.i.i = tail call i64 @klee_get_valuel(i64 %8) #10, !dbg !2416
  %9 = inttoptr i64 %call.i.i to i8*, !dbg !2416
  %cmp.i.i = icmp eq i8* %9, %path, !dbg !2419
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2419
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2419
  br label %for.cond.i19, !dbg !2420

for.cond.i19:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i21, %for.inc.i ]
  %sc.0.i = phi i8* [ %9, %if.end ], [ %sc.1.i, %for.inc.i ]
  %10 = load i8* %sc.0.i, align 1, !dbg !2421, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2422
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2422
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2422
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2422

if.then.i:                                        ; preds = %for.cond.i19
  switch i8 %10, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2423

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2424, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2425

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2426
  store i8 47, i8* %sc.0.i, align 1, !dbg !2426, !tbaa !2183
  br label %for.inc.i, !dbg !2427

if.else7.i:                                       ; preds = %for.cond.i19
  %conv8.i = sext i8 %10 to i64, !dbg !2428
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2428
  %conv10.i20 = trunc i64 %call9.i to i8, !dbg !2428
  %cmp13.i = icmp eq i8 %conv10.i20, %10, !dbg !2429
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2429
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2429
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2430
  store i8 %conv10.i20, i8* %sc.0.i, align 1, !dbg !2430, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i20, 0, !dbg !2431
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2431

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i21 = add i32 %i.0.i, 1, !dbg !2420
  br label %for.cond.i19, !dbg !2420

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call7 = tail call i64 (i64, ...)* @syscall(i64 235, i8* %path, %struct.timeval* %times) #10, !dbg !2418
  %conv = trunc i64 %call7 to i32, !dbg !2418
  %cmp = icmp eq i32 %conv, -1, !dbg !2432
  br i1 %cmp, label %if.then9, label %return, !dbg !2432

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #10, !dbg !2434
  %call11 = tail call i32* @__errno_location() #1, !dbg !2434
  store i32 %call10, i32* %call11, align 4, !dbg !2434, !tbaa !2230
  br label %return, !dbg !2434

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2435
}

; Function Attrs: nounwind uwtable
define i32 @futimesat(i32 %fd, i8* %path, %struct.timeval* %times) #6 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !2436
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2436

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !2437
  br i1 %0, label %if.then.i, label %if.then1, !dbg !2437

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !2439
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2440
  %1 = load i32* %flags.i, align 4, !dbg !2440, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2440
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2440
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !2440

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2439
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2441
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2441

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !2443
  store i32 9, i32* %call2, align 4, !dbg !2443, !tbaa !2230
  br label %return, !dbg !2445

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2446
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2446, !tbaa !2260
  %tobool3 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2446
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2446

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str22, i64 0, i64 0)) #10, !dbg !2448
  %call5 = tail call i32* @__errno_location() #1, !dbg !2450
  store i32 2, i32* %call5, align 4, !dbg !2450, !tbaa !2230
  br label %return, !dbg !2451

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2452
  %3 = load i32* %fd7, align 8, !dbg !2452, !tbaa !2310
  %phitmp = sext i32 %3 to i64, !dbg !2453
  br label %if.end8, !dbg !2453

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !2454, !tbaa !2183
  %conv.i = sext i8 %4 to i32, !dbg !2457
  %cmp.i = icmp eq i8 %4, 0, !dbg !2457
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !2457

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2457
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2457, !tbaa !2183
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2457
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !2457

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2458, !tbaa !2189
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2458
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !2458

for.cond.i37:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i39, %6, !dbg !2458
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !2458

for.body.i:                                       ; preds = %for.cond.i37, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i39, %for.cond.i37 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2459
  %sext.i = shl i32 %i.027.i, 24, !dbg !2459
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2459
  %conv10.i38 = ashr exact i32 %sext.i, 24, !dbg !2459
  %add.i = add nsw i32 %conv10.i38, 65, !dbg !2459
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2459
  %inc.i39 = add i32 %i.027.i, 1, !dbg !2458
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i37, !dbg !2459

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i40 = zext i32 %i.027.i to i64, !dbg !2460
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2460, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i40, i32 2, !dbg !2461
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !2461, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !2461
  %9 = load i64* %st_ino.i, align 8, !dbg !2461, !tbaa !2200
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2461
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i40, !dbg !2460
  %tobool10 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2455
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !2461
  br i1 %or.cond, label %if.end13, label %if.then11, !dbg !2461

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @utimes(i8* %path, %struct.timeval* %times), !dbg !2462
  br label %return, !dbg !2462

if.end13:                                         ; preds = %if.then13.i, %for.cond.i37, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !2464
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !2464

cond.true:                                        ; preds = %if.end13
  %10 = ptrtoint i8* %path to i64, !dbg !2465
  %call.i.i = tail call i64 @klee_get_valuel(i64 %10) #10, !dbg !2465
  %11 = inttoptr i64 %call.i.i to i8*, !dbg !2465
  %cmp.i.i = icmp eq i8* %11, %path, !dbg !2468
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2468
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2468
  br label %for.cond.i, !dbg !2469

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %11, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %12 = load i8* %sc.0.i, align 1, !dbg !2470, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2471
  %and.i33 = and i32 %sub.i, %i.0.i, !dbg !2471
  %tobool.i34 = icmp eq i32 %and.i33, 0, !dbg !2471
  br i1 %tobool.i34, label %if.then.i35, label %if.else7.i, !dbg !2471

if.then.i35:                                      ; preds = %for.cond.i
  switch i8 %12, label %for.inc.i [
    i8 0, label %if.then2.i36
    i8 47, label %if.then4.i
  ], !dbg !2472

if.then2.i36:                                     ; preds = %if.then.i35
  store i8 0, i8* %sc.0.i, align 1, !dbg !2473, !tbaa !2183
  br label %cond.end, !dbg !2474

if.then4.i:                                       ; preds = %if.then.i35
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2475
  store i8 47, i8* %sc.0.i, align 1, !dbg !2475, !tbaa !2183
  br label %for.inc.i, !dbg !2476

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %12 to i64, !dbg !2477
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2477
  %conv10.i = trunc i64 %call9.i to i8, !dbg !2477
  %cmp13.i = icmp eq i8 %conv10.i, %12, !dbg !2478
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2478
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2478
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2479
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !2479, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !2480
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !2480

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i35
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i35 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !2469
  br label %for.cond.i, !dbg !2469

cond.end:                                         ; preds = %if.else7.i, %if.then2.i36, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i36 ], [ %path, %if.else7.i ], !dbg !2467
  %call16 = tail call i64 (i64, ...)* @syscall(i64 261, i64 %fd.addr.0, i8* %cond, %struct.timeval* %times) #10, !dbg !2464
  %conv17 = trunc i64 %call16 to i32, !dbg !2464
  %cmp18 = icmp eq i32 %conv17, -1, !dbg !2481
  br i1 %cmp18, label %if.then20, label %return, !dbg !2481

if.then20:                                        ; preds = %cond.end
  %call21 = tail call i32 @klee_get_errno() #10, !dbg !2483
  %call22 = tail call i32* @__errno_location() #1, !dbg !2483
  store i32 %call21, i32* %call22, align 4, !dbg !2483, !tbaa !2230
  br label %return, !dbg !2483

return:                                           ; preds = %if.then20, %cond.end, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then1 ], [ -1, %if.then20 ], [ %conv17, %cond.end ]
  ret i32 %retval.0, !dbg !2484
}

; Function Attrs: nounwind uwtable
define i32 @close(i32 %fd) #6 {
entry:
  %0 = load i32* @close.n_calls, align 4, !dbg !2485, !tbaa !2230
  %inc = add nsw i32 %0, 1, !dbg !2485
  store i32 %inc, i32* @close.n_calls, align 4, !dbg !2485, !tbaa !2230
  %1 = icmp ult i32 %fd, 32, !dbg !2486
  br i1 %1, label %if.then.i, label %if.then, !dbg !2486

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2488
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2489
  %2 = load i32* %flags.i, align 4, !dbg !2489, !tbaa !2241
  %and.i = and i32 %2, 1, !dbg !2489
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2489
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2489

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2488
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2490
  br i1 %tobool, label %if.then, label %if.end, !dbg !2490

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2492
  store i32 9, i32* %call1, align 4, !dbg !2492, !tbaa !2230
  br label %return, !dbg !2494

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2495, !tbaa !2497
  %tobool2 = icmp eq i32 %3, 0, !dbg !2495
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2495

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !2495, !tbaa !2498
  %5 = load i32* %4, align 4, !dbg !2495, !tbaa !2230
  %cmp = icmp eq i32 %5, %inc, !dbg !2495
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2495

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2499
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2499, !tbaa !2497
  %call4 = tail call i32* @__errno_location() #1, !dbg !2501
  store i32 5, i32* %call4, align 4, !dbg !2501, !tbaa !2230
  br label %return, !dbg !2502

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %6 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !2503
  %7 = call i8* @memset(i8* %6, i32 0, i64 24)
  br label %return, !dbg !2504

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end5 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2505
}

; Function Attrs: nounwind uwtable
define i64 @read(i32 %fd, i8* %buf, i64 %count) #6 {
entry:
  %0 = load i32* @read.n_calls, align 4, !dbg !2506, !tbaa !2230
  %inc = add nsw i32 %0, 1, !dbg !2506
  store i32 %inc, i32* @read.n_calls, align 4, !dbg !2506, !tbaa !2230
  %cmp = icmp eq i64 %count, 0, !dbg !2507
  br i1 %cmp, label %return, label %if.end, !dbg !2507

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %buf, null, !dbg !2509
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2509

if.then2:                                         ; preds = %if.end
  %call = tail call i32* @__errno_location() #1, !dbg !2511
  store i32 14, i32* %call, align 4, !dbg !2511, !tbaa !2230
  br label %return, !dbg !2513

if.end3:                                          ; preds = %if.end
  %1 = icmp ult i32 %fd, 32, !dbg !2514
  br i1 %1, label %if.then.i, label %if.then5, !dbg !2514

if.then.i:                                        ; preds = %if.end3
  %idxprom.i = sext i32 %fd to i64, !dbg !2516
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2517
  %2 = load i32* %flags.i, align 4, !dbg !2517, !tbaa !2241
  %and.i = and i32 %2, 1, !dbg !2517
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2517
  br i1 %tobool.i, label %if.then5, label %__get_file.exit, !dbg !2517

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2516
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2518
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !2518

if.then5:                                         ; preds = %__get_file.exit, %if.then.i, %if.end3
  %call6 = tail call i32* @__errno_location() #1, !dbg !2520
  store i32 9, i32* %call6, align 4, !dbg !2520, !tbaa !2230
  br label %return, !dbg !2522

if.end7:                                          ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2523, !tbaa !2497
  %tobool8 = icmp eq i32 %3, 0, !dbg !2523
  br i1 %tobool8, label %if.end12, label %land.lhs.true, !dbg !2523

land.lhs.true:                                    ; preds = %if.end7
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !2523, !tbaa !2525
  %5 = load i32* %4, align 4, !dbg !2523, !tbaa !2230
  %cmp9 = icmp eq i32 %5, %inc, !dbg !2523
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2523

if.then10:                                        ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2526
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2526, !tbaa !2497
  %call11 = tail call i32* @__errno_location() #1, !dbg !2528
  store i32 5, i32* %call11, align 4, !dbg !2528, !tbaa !2230
  br label %return, !dbg !2529

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2530
  %6 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2530, !tbaa !2260
  %tobool13 = icmp eq %struct.exe_disk_file_t* %6, null, !dbg !2530
  br i1 %tobool13, label %if.then14, label %if.else40, !dbg !2530

if.then14:                                        ; preds = %if.end12
  %7 = ptrtoint i8* %buf to i64, !dbg !2531
  %call.i98 = tail call i64 @klee_get_valuel(i64 %7) #10, !dbg !2531
  %8 = inttoptr i64 %call.i98 to i8*, !dbg !2531
  %cmp.i99 = icmp eq i8* %8, %buf, !dbg !2533
  %conv1.i100 = zext i1 %cmp.i99 to i64, !dbg !2533
  tail call void @klee_assume(i64 %conv1.i100) #10, !dbg !2533
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #10, !dbg !2534
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !2536
  %conv1.i = zext i1 %cmp.i to i64, !dbg !2536
  tail call void @klee_assume(i64 %conv1.i) #10, !dbg !2536
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #10, !dbg !2537
  %fd17 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2538
  %9 = load i32* %fd17, align 8, !dbg !2538, !tbaa !2310
  %cmp18 = icmp eq i32 %9, 0, !dbg !2538
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !2538

if.then19:                                        ; preds = %if.then14
  %call21 = tail call i64 (i64, ...)* @syscall(i64 0, i32 0, i8* %8, i64 %call.i) #10, !dbg !2540
  br label %if.end25, !dbg !2540

if.else:                                          ; preds = %if.then14
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2541
  %10 = load i64* %off, align 8, !dbg !2541, !tbaa !2542
  %call23 = tail call i64 (i64, ...)* @syscall(i64 17, i32 %9, i8* %8, i64 %call.i, i64 %10) #10, !dbg !2541
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %r.0.in = phi i64 [ %call21, %if.then19 ], [ %call23, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !2540
  %cmp26 = icmp eq i32 %r.0, -1, !dbg !2543
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !2543

if.then28:                                        ; preds = %if.end25
  %call29 = tail call i32 @klee_get_errno() #10, !dbg !2545
  %call30 = tail call i32* @__errno_location() #1, !dbg !2545
  store i32 %call29, i32* %call30, align 4, !dbg !2545, !tbaa !2230
  br label %return, !dbg !2547

if.end31:                                         ; preds = %if.end25
  %11 = load i32* %fd17, align 8, !dbg !2548, !tbaa !2310
  %cmp33 = icmp eq i32 %11, 0, !dbg !2548
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !2550
  %sext.pre = shl i64 %r.0.in, 32, !dbg !2550
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !2550
  %conv39.pre = ashr exact i64 %sext.pre, 32, !dbg !2550
  br i1 %cmp33, label %return, label %if.then35, !dbg !2548

if.then35:                                        ; preds = %if.end31
  %off37 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2551
  %12 = load i64* %off37, align 8, !dbg !2551, !tbaa !2542
  %add = add nsw i64 %12, %conv39.pre, !dbg !2551
  store i64 %add, i64* %off37, align 8, !dbg !2551, !tbaa !2542
  br label %return, !dbg !2551

if.else40:                                        ; preds = %if.end12
  %off41 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2552
  %13 = load i64* %off41, align 8, !dbg !2552, !tbaa !2542
  %cmp42 = icmp sgt i64 %13, -1, !dbg !2552
  br i1 %cmp42, label %cond.end, label %cond.false, !dbg !2552

cond.false:                                       ; preds = %if.else40
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str44, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([34 x i8
  unreachable, !dbg !2552

cond.end:                                         ; preds = %if.else40
  %size = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 0, !dbg !2554
  %14 = load i32* %size, align 4, !dbg !2554, !tbaa !2556
  %conv45 = zext i32 %14 to i64, !dbg !2554
  %cmp47 = icmp slt i64 %conv45, %13, !dbg !2554
  br i1 %cmp47, label %return, label %if.end50, !dbg !2554

if.end50:                                         ; preds = %cond.end
  %add52 = add i64 %13, %count, !dbg !2557
  %cmp56 = icmp ugt i64 %add52, %conv45, !dbg !2557
  %sub = sub nsw i64 %conv45, %13, !dbg !2559
  %sub.count = select i1 %cmp56, i64 %sub, i64 %count, !dbg !2557
  %contents = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 1, !dbg !2561
  %15 = load i8** %contents, align 8, !dbg !2561, !tbaa !2562
  %add.ptr = getelementptr inbounds i8* %15, i64 %13, !dbg !2561
  %16 = call i8* @memcpy(i8* %buf, i8* %add.ptr, i64 %sub.count)
  %17 = load i64* %off41, align 8, !dbg !2563, !tbaa !2542
  %add67 = add i64 %17, %sub.count, !dbg !2563
  store i64 %add67, i64* %off41, align 8, !dbg !2563, !tbaa !2542
  br label %return, !dbg !2564

return:                                           ; preds = %if.end50, %cond.end, %if.then35, %if.end31, %if.then28, %if.then10, %if.then5, %if.then2, %entry
  %retval.0 = phi i64 [ -1, %if.then2 ], [ -1, %if.then10 ], [ %sub.count, %if.end50 ], [ -1, %if.then28 ], [ -1, %if.then5 ], [ 0, %entry ], [ 0, %cond.end ], [ %conv39.pre, %if.then35 ], [ %conv39.pre, %if.end31 ]
  ret i64 %retval.0, !dbg !2565
}

declare void @klee_check_memory_access(i8*, i64) #8

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind uwtable
define i64 @write(i32 %fd, i8* %buf, i64 %count) #6 {
entry:
  %0 = load i32* @write.n_calls, align 4, !dbg !2566, !tbaa !2230
  %inc = add nsw i32 %0, 1, !dbg !2566
  store i32 %inc, i32* @write.n_calls, align 4, !dbg !2566, !tbaa !2230
  %1 = icmp ult i32 %fd, 32, !dbg !2567
  br i1 %1, label %if.then.i, label %if.then, !dbg !2567

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2569
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2570
  %2 = load i32* %flags.i, align 4, !dbg !2570, !tbaa !2241
  %and.i = and i32 %2, 1, !dbg !2570
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2570
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2570

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2569
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2571
  br i1 %tobool, label %if.then, label %if.end, !dbg !2571

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2573
  store i32 9, i32* %call1, align 4, !dbg !2573, !tbaa !2230
  br label %return, !dbg !2575

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2576, !tbaa !2497
  %tobool2 = icmp eq i32 %3, 0, !dbg !2576
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2576

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !2576, !tbaa !2578
  %5 = load i32* %4, align 4, !dbg !2576, !tbaa !2230
  %cmp = icmp eq i32 %5, %inc, !dbg !2576
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2576

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2579
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2579, !tbaa !2497
  %call4 = tail call i32* @__errno_location() #1, !dbg !2581
  store i32 5, i32* %call4, align 4, !dbg !2581, !tbaa !2230
  br label %return, !dbg !2582

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2583
  %6 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2583, !tbaa !2260
  %tobool6 = icmp eq %struct.exe_disk_file_t* %6, null, !dbg !2583
  br i1 %tobool6, label %if.then7, label %if.else41, !dbg !2583

if.then7:                                         ; preds = %if.end5
  %7 = ptrtoint i8* %buf to i64, !dbg !2584
  %call.i126 = tail call i64 @klee_get_valuel(i64 %7) #10, !dbg !2584
  %8 = inttoptr i64 %call.i126 to i8*, !dbg !2584
  %cmp.i127 = icmp eq i8* %8, %buf, !dbg !2586
  %conv1.i128 = zext i1 %cmp.i127 to i64, !dbg !2586
  tail call void @klee_assume(i64 %conv1.i128) #10, !dbg !2586
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #10, !dbg !2587
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !2589
  %conv1.i = zext i1 %cmp.i to i64, !dbg !2589
  tail call void @klee_assume(i64 %conv1.i) #10, !dbg !2589
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #10, !dbg !2590
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2591
  %9 = load i32* %fd10, align 8, !dbg !2591, !tbaa !2310
  %.off = add i32 %9, -1, !dbg !2591
  %switch = icmp ult i32 %.off, 2, !dbg !2591
  br i1 %switch, label %if.then14, label %if.else, !dbg !2591

if.then14:                                        ; preds = %if.then7
  %call16 = tail call i64 (i64, ...)* @syscall(i64 1, i32 %9, i8* %8, i64 %call.i) #10, !dbg !2593
  br label %if.end20, !dbg !2593

if.else:                                          ; preds = %if.then7
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2594
  %10 = load i64* %off, align 8, !dbg !2594, !tbaa !2542
  %call18 = tail call i64 (i64, ...)* @syscall(i64 18, i32 %9, i8* %8, i64 %call.i, i64 %10) #10, !dbg !2594
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %r.0.in = phi i64 [ %call16, %if.then14 ], [ %call18, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !2593
  %cmp21 = icmp eq i32 %r.0, -1, !dbg !2595
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !2595

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @klee_get_errno() #10, !dbg !2597
  %call25 = tail call i32* @__errno_location() #1, !dbg !2597
  store i32 %call24, i32* %call25, align 4, !dbg !2597, !tbaa !2230
  br label %return, !dbg !2599

if.end26:                                         ; preds = %if.end20
  %cmp27 = icmp sgt i32 %r.0, -1, !dbg !2600
  br i1 %cmp27, label %cond.end, label %cond.false, !dbg !2600

cond.false:                                       ; preds = %if.end26
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str44, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([41 x i8]
  unreachable, !dbg !2600

cond.end:                                         ; preds = %if.end26
  %11 = load i32* %fd10, align 8, !dbg !2601, !tbaa !2310
  %.off124 = add i32 %11, -1, !dbg !2601
  %switch125 = icmp ult i32 %.off124, 2, !dbg !2601
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !2603
  %sext.pre = shl i64 %r.0.in, 32, !dbg !2603
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !2603
  %conv40.pre = ashr exact i64 %sext.pre, 32, !dbg !2603
  br i1 %switch125, label %return, label %if.then36, !dbg !2601

if.then36:                                        ; preds = %cond.end
  %off38 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2604
  %12 = load i64* %off38, align 8, !dbg !2604, !tbaa !2542
  %add = add nsw i64 %12, %conv40.pre, !dbg !2604
  store i64 %add, i64* %off38, align 8, !dbg !2604, !tbaa !2542
  br label %return, !dbg !2604

if.else41:                                        ; preds = %if.end5
  %off42 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2605
  %13 = load i64* %off42, align 8, !dbg !2605, !tbaa !2542
  %add43 = add i64 %13, %count, !dbg !2605
  %size = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 0, !dbg !2605
  %14 = load i32* %size, align 4, !dbg !2605, !tbaa !2556
  %conv45 = zext i32 %14 to i64, !dbg !2605
  %cmp46 = icmp ugt i64 %add43, %conv45, !dbg !2605
  br i1 %cmp46, label %if.else49, label %if.end66, !dbg !2605

if.else49:                                        ; preds = %if.else41
  %15 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 3), align 8, !dbg !2607, !tbaa !2610
  %tobool50 = icmp eq i32 %15, 0, !dbg !2607
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !2607

if.then51:                                        ; preds = %if.else49
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([2 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str44, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([41 x i8]
  unreachable, !dbg !2611

if.else52:                                        ; preds = %if.else49
  %cmp57 = icmp sgt i64 %conv45, %13, !dbg !2612
  %sub = sub nsw i64 %conv45, %13, !dbg !2615
  br i1 %cmp57, label %if.end66, label %if.end71

if.end66:                                         ; preds = %if.else52, %if.else41
  %actual_count.0 = phi i64 [ %count, %if.else41 ], [ %sub, %if.else52 ]
  %tobool67 = icmp eq i64 %actual_count.0, 0, !dbg !2616
  br i1 %tobool67, label %if.end71, label %if.then68, !dbg !2616

if.then68:                                        ; preds = %if.end66
  %contents = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 1, !dbg !2618
  %16 = load i8** %contents, align 8, !dbg !2618, !tbaa !2562
  %add.ptr = getelementptr inbounds i8* %16, i64 %13, !dbg !2618
  %17 = call i8* @memcpy(i8* %add.ptr, i8* %buf, i64 %actual_count.0)
  br label %if.end71, !dbg !2618

if.end71:                                         ; preds = %if.then68, %if.end66, %if.else52
  %actual_count.0131 = phi i64 [ 0, %if.end66 ], [ %actual_count.0, %if.then68 ], [ 0, %if.else52 ]
  %cmp72 = icmp eq i64 %actual_count.0131, %count, !dbg !2619
  br i1 %cmp72, label %if.end75, label %if.then74, !dbg !2619

if.then74:                                        ; preds = %if.end71
  tail call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str77, i64 0, i64 0)) #10, !dbg !2621
  br label %if.end75, !dbg !2621

if.end75:                                         ; preds = %if.then74, %if.end71
  %18 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2622, !tbaa !2260
  %19 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !2622, !tbaa !2624
  %cmp77 = icmp eq %struct.exe_disk_file_t* %18, %19, !dbg !2622
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !2622

if.then79:                                        ; preds = %if.end75
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !2625, !tbaa !2626
  %conv80 = zext i32 %20 to i64, !dbg !2625
  %add81 = add i64 %conv80, %actual_count.0131, !dbg !2625
  %conv82 = trunc i64 %add81 to i32, !dbg !2625
  store i32 %conv82, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !2625, !tbaa !2626
  br label %if.end83, !dbg !2625

if.end83:                                         ; preds = %if.then79, %if.end75
  %21 = load i64* %off42, align 8, !dbg !2627, !tbaa !2542
  %add85 = add i64 %21, %count, !dbg !2627
  store i64 %add85, i64* %off42, align 8, !dbg !2627, !tbaa !2542
  br label %return, !dbg !2628

return:                                           ; preds = %if.end83, %if.then36, %cond.end, %if.then23, %if.then3, %if.then
  %retval.0 = phi i64 [ -1, %if.then3 ], [ %count, %if.end83 ], [ -1, %if.then23 ], [ -1, %if.then ], [ %conv40.pre, %if.then36 ], [ %conv40.pre, %cond.end ]
  ret i64 %retval.0, !dbg !2629
}

; Function Attrs: nounwind uwtable
define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2630
  br i1 %0, label %if.then.i, label %if.then, !dbg !2630

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2632
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2633
  %1 = load i32* %flags.i, align 4, !dbg !2633, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2633
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2633
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2633

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2632
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2634
  br i1 %tobool, label %if.then, label %if.end, !dbg !2634

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2636
  store i32 9, i32* %call1, align 4, !dbg !2636, !tbaa !2230
  br label %return, !dbg !2638

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2639
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2639, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2639
  br i1 %tobool2, label %if.then3, label %if.end23, !dbg !2639

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq i32 %whence, 0, !dbg !2641
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2644
  %3 = load i32* %fd5, align 8, !dbg !2644, !tbaa !2310
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2641

if.then4:                                         ; preds = %if.then3
  %call6 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %offset, i32 0) #10, !dbg !2644
  br label %if.end16, !dbg !2646

if.else:                                          ; preds = %if.then3
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2647
  %4 = load i64* %off, align 8, !dbg !2647, !tbaa !2542
  %call8 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %4, i32 0) #10, !dbg !2647
  %cmp9 = icmp eq i64 %call8, -1, !dbg !2649
  br i1 %cmp9, label %if.then18, label %if.then10, !dbg !2649

if.then10:                                        ; preds = %if.else
  %5 = load i64* %off, align 8, !dbg !2651, !tbaa !2542
  %cmp12 = icmp eq i64 %call8, %5, !dbg !2651
  br i1 %cmp12, label %cond.end, label %cond.false, !dbg !2651

cond.false:                                       ; preds = %if.then10
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str44, i64 0, i64 0), i32 499, i8* getelementptr inbounds ([38 x i8
  unreachable, !dbg !2651

cond.end:                                         ; preds = %if.then10
  %6 = load i32* %fd5, align 8, !dbg !2653, !tbaa !2310
  %call14 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %6, i64 %offset, i32 %whence) #10, !dbg !2653
  br label %if.end16, !dbg !2654

if.end16:                                         ; preds = %cond.end, %if.then4
  %new_off.0 = phi i64 [ %call6, %if.then4 ], [ %call14, %cond.end ]
  %cmp17 = icmp eq i64 %new_off.0, -1, !dbg !2655
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !2655

if.then18:                                        ; preds = %if.end16, %if.else
  %call19 = tail call i32 @klee_get_errno() #10, !dbg !2657
  %call20 = tail call i32* @__errno_location() #1, !dbg !2657
  store i32 %call19, i32* %call20, align 4, !dbg !2657, !tbaa !2230
  br label %return, !dbg !2659

if.end21:                                         ; preds = %if.end16
  %off22 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2660
  store i64 %new_off.0, i64* %off22, align 8, !dbg !2660, !tbaa !2542
  br label %return, !dbg !2661

if.end23:                                         ; preds = %if.end
  switch i32 %whence, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb24
    i32 2, label %sw.bb26
  ], !dbg !2662

sw.bb24:                                          ; preds = %if.end23
  %off25 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2663
  %7 = load i64* %off25, align 8, !dbg !2663, !tbaa !2542
  %add = add nsw i64 %7, %offset, !dbg !2663
  br label %sw.epilog, !dbg !2663

sw.bb26:                                          ; preds = %if.end23
  %size = getelementptr inbounds %struct.exe_disk_file_t* %2, i64 0, i32 0, !dbg !2665
  %8 = load i32* %size, align 4, !dbg !2665, !tbaa !2556
  %conv = zext i32 %8 to i64, !dbg !2665
  %add28 = add nsw i64 %conv, %offset, !dbg !2665
  br label %sw.epilog, !dbg !2665

sw.default:                                       ; preds = %if.end23
  %call29 = tail call i32* @__errno_location() #1, !dbg !2666
  store i32 22, i32* %call29, align 4, !dbg !2666, !tbaa !2230
  br label %return, !dbg !2668

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb24, %if.end23
  %new_off.1 = phi i64 [ %add28, %sw.bb26 ], [ %add, %sw.bb24 ], [ %offset, %if.end23 ]
  %cmp30 = icmp slt i64 %new_off.1, 0, !dbg !2669
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !2669

if.then32:                                        ; preds = %sw.epilog
  %call33 = tail call i32* @__errno_location() #1, !dbg !2671
  store i32 22, i32* %call33, align 4, !dbg !2671, !tbaa !2230
  br label %return, !dbg !2673

if.end34:                                         ; preds = %sw.epilog
  %off35 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2674
  store i64 %new_off.1, i64* %off35, align 8, !dbg !2674, !tbaa !2542
  br label %return, !dbg !2675

return:                                           ; preds = %if.end34, %if.then32, %sw.default, %if.end21, %if.then18, %if.then
  %retval.0 = phi i64 [ -1, %sw.default ], [ -1, %if.then32 ], [ %new_off.1, %if.end34 ], [ -1, %if.then18 ], [ %new_off.0, %if.end21 ], [ -1, %if.then ]
  ret i64 %retval.0, !dbg !2676
}

; Function Attrs: nounwind uwtable
define i32 @__fd_stat(i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2677, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2679
  %cmp.i = icmp eq i8 %0, 0, !dbg !2679
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2679

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2679
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2679, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2679
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2679

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2680, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2680
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2680

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2680
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2680

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2681
  %sext.i = shl i32 %i.027.i, 24, !dbg !2681
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2681
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2681
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2681
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2681
  %inc.i = add i32 %i.027.i, 1, !dbg !2680
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2681

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2682
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2682, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2683
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2683, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2683
  %5 = load i64* %st_ino.i, align 8, !dbg !2683, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2683
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2682
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2684
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2683
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2683

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64* %buf to i8*, !dbg !2686
  %7 = bitcast %struct.stat64* %4 to i8*, !dbg !2686
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2688

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2689
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #10, !dbg !2689
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2689
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2692
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2692
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2692
  br label %for.cond.i12, !dbg !2693

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2694, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2695
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2695
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2695
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2695

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2696

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2697, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2698

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2699
  store i8 47, i8* %sc.0.i, align 1, !dbg !2699, !tbaa !2183
  br label %for.inc.i, !dbg !2700

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2701
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2701
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2701
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2702
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2702
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2702
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2703
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2703, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2704
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2704

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2693
  br label %for.cond.i12, !dbg !2693

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 4, i8* %path, %struct.stat64* %buf) #10, !dbg !2691
  %conv = trunc i64 %call2 to i32, !dbg !2691
  %cmp = icmp eq i32 %conv, -1, !dbg !2705
  br i1 %cmp, label %if.then4, label %return, !dbg !2705

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #10, !dbg !2707
  %call6 = tail call i32* @__errno_location() #1, !dbg !2707
  store i32 %call5, i32* %call6, align 4, !dbg !2707, !tbaa !2230
  br label %return, !dbg !2707

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2708
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstatat(i32 %fd, i8* %path, %struct.stat* %buf, i32 %flags) #11 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !2709
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2709

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !2710
  br i1 %0, label %if.then.i, label %if.then1, !dbg !2710

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !2712
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2713
  %1 = load i32* %flags.i, align 4, !dbg !2713, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2713
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2713
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !2713

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2712
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2714
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2714

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !2716
  store i32 9, i32* %call2, align 4, !dbg !2716, !tbaa !2230
  br label %return, !dbg !2718

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2719
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2719, !tbaa !2260
  %tobool3 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2719
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2719

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str22, i64 0, i64 0)) #10, !dbg !2721
  %call5 = tail call i32* @__errno_location() #1, !dbg !2723
  store i32 2, i32* %call5, align 4, !dbg !2723, !tbaa !2230
  br label %return, !dbg !2724

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2725
  %3 = load i32* %fd7, align 8, !dbg !2725, !tbaa !2310
  %phitmp = sext i32 %3 to i64, !dbg !2726
  br label %if.end8, !dbg !2726

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !2727, !tbaa !2183
  %conv.i = sext i8 %4 to i32, !dbg !2729
  %cmp.i = icmp eq i8 %4, 0, !dbg !2729
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !2729

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2729
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2729, !tbaa !2183
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2729
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !2729

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2730, !tbaa !2189
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2730
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !2730

for.cond.i38:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i40, %6, !dbg !2730
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !2730

for.body.i:                                       ; preds = %for.cond.i38, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i40, %for.cond.i38 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2731
  %sext.i = shl i32 %i.027.i, 24, !dbg !2731
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2731
  %conv10.i39 = ashr exact i32 %sext.i, 24, !dbg !2731
  %add.i = add nsw i32 %conv10.i39, 65, !dbg !2731
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2731
  %inc.i40 = add i32 %i.027.i, 1, !dbg !2730
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i38, !dbg !2731

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i41 = zext i32 %i.027.i to i64, !dbg !2732
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2732, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i41, i32 2, !dbg !2733
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !2733, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !2733
  %9 = load i64* %st_ino.i, align 8, !dbg !2733, !tbaa !2200
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2733
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i41, !dbg !2732
  %tobool11 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2734
  %or.cond = or i1 %cmp15.i, %tobool11, !dbg !2733
  br i1 %or.cond, label %if.end13, label %if.then12, !dbg !2733

if.then12:                                        ; preds = %if.then13.i
  %10 = bitcast %struct.stat* %buf to i8*, !dbg !2736
  %11 = bitcast %struct.stat64* %8 to i8*, !dbg !2736
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 144)
  br label %return, !dbg !2738

if.end13:                                         ; preds = %if.then13.i, %for.cond.i38, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !2739
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !2739

cond.true:                                        ; preds = %if.end13
  %13 = ptrtoint i8* %path to i64, !dbg !2740
  %call.i.i = tail call i64 @klee_get_valuel(i64 %13) #10, !dbg !2740
  %14 = inttoptr i64 %call.i.i to i8*, !dbg !2740
  %cmp.i.i = icmp eq i8* %14, %path, !dbg !2743
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2743
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2743
  br label %for.cond.i, !dbg !2744

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %14, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %15 = load i8* %sc.0.i, align 1, !dbg !2745, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2746
  %and.i34 = and i32 %sub.i, %i.0.i, !dbg !2746
  %tobool.i35 = icmp eq i32 %and.i34, 0, !dbg !2746
  br i1 %tobool.i35, label %if.then.i36, label %if.else7.i, !dbg !2746

if.then.i36:                                      ; preds = %for.cond.i
  switch i8 %15, label %for.inc.i [
    i8 0, label %if.then2.i37
    i8 47, label %if.then4.i
  ], !dbg !2747

if.then2.i37:                                     ; preds = %if.then.i36
  store i8 0, i8* %sc.0.i, align 1, !dbg !2748, !tbaa !2183
  br label %cond.end, !dbg !2749

if.then4.i:                                       ; preds = %if.then.i36
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2750
  store i8 47, i8* %sc.0.i, align 1, !dbg !2750, !tbaa !2183
  br label %for.inc.i, !dbg !2751

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %15 to i64, !dbg !2752
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2752
  %conv10.i = trunc i64 %call9.i to i8, !dbg !2752
  %cmp13.i = icmp eq i8 %conv10.i, %15, !dbg !2753
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2753
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2753
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2754
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !2754, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !2755
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !2755

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i36
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i36 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !2744
  br label %for.cond.i, !dbg !2744

cond.end:                                         ; preds = %if.else7.i, %if.then2.i37, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i37 ], [ %path, %if.else7.i ], !dbg !2742
  %conv16 = sext i32 %flags to i64, !dbg !2739
  %call17 = tail call i64 (i64, ...)* @syscall(i64 262, i64 %fd.addr.0, i8* %cond, %struct.stat* %buf, i64 %conv16) #10, !dbg !2739
  %conv18 = trunc i64 %call17 to i32, !dbg !2739
  %cmp19 = icmp eq i32 %conv18, -1, !dbg !2756
  br i1 %cmp19, label %if.then21, label %return, !dbg !2756

if.then21:                                        ; preds = %cond.end
  %call22 = tail call i32 @klee_get_errno() #10, !dbg !2758
  %call23 = tail call i32* @__errno_location() #1, !dbg !2758
  store i32 %call22, i32* %call23, align 4, !dbg !2758, !tbaa !2230
  br label %return, !dbg !2758

return:                                           ; preds = %if.then21, %cond.end, %if.then12, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 0, %if.then12 ], [ -1, %if.then1 ], [ -1, %if.then21 ], [ %conv18, %cond.end ]
  ret i32 %retval.0, !dbg !2759
}

; Function Attrs: nounwind uwtable
define i32 @__fd_lstat(i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2760, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2762
  %cmp.i = icmp eq i8 %0, 0, !dbg !2762
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2762

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2762
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2762, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2762
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2762

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2763, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2763
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2763

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2763
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2763

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2764
  %sext.i = shl i32 %i.027.i, 24, !dbg !2764
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2764
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2764
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2764
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2764
  %inc.i = add i32 %i.027.i, 1, !dbg !2763
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2764

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2765
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2765, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2766
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2766, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2766
  %5 = load i64* %st_ino.i, align 8, !dbg !2766, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2766
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2765
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2767
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2766
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2766

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64* %buf to i8*, !dbg !2769
  %7 = bitcast %struct.stat64* %4 to i8*, !dbg !2769
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2771

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2772
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #10, !dbg !2772
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2772
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2775
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2775
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2775
  br label %for.cond.i12, !dbg !2776

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2777, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2778
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2778
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2778
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2778

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2779

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2780, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2781

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2782
  store i8 47, i8* %sc.0.i, align 1, !dbg !2782, !tbaa !2183
  br label %for.inc.i, !dbg !2783

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2784
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2784
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2784
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2785
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2785
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2785
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2786
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2786, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2787
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2787

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2776
  br label %for.cond.i12, !dbg !2776

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 6, i8* %path, %struct.stat64* %buf) #10, !dbg !2774
  %conv = trunc i64 %call2 to i32, !dbg !2774
  %cmp = icmp eq i32 %conv, -1, !dbg !2788
  br i1 %cmp, label %if.then4, label %return, !dbg !2788

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #10, !dbg !2790
  %call6 = tail call i32* @__errno_location() #1, !dbg !2790
  store i32 %call5, i32* %call6, align 4, !dbg !2790, !tbaa !2230
  br label %return, !dbg !2790

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2791
}

; Function Attrs: nounwind uwtable
define i32 @chdir(i8* %path) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2792, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2794
  %cmp.i = icmp eq i8 %0, 0, !dbg !2794
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2794

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2794
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2794, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2794
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2794

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2795, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2795
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2795

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2795
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2795

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2796
  %sext.i = shl i32 %i.027.i, 24, !dbg !2796
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2796
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2796
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2796
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2796
  %inc.i = add i32 %i.027.i, 1, !dbg !2795
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2796

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2797
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2797, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2798
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2798, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2798
  %5 = load i64* %st_ino.i, align 8, !dbg !2798, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2798
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2797
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2799
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2798
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2798

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #10, !dbg !2801
  %call1 = tail call i32* @__errno_location() #1, !dbg !2803
  store i32 2, i32* %call1, align 4, !dbg !2803, !tbaa !2230
  br label %return, !dbg !2804

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2805
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #10, !dbg !2805
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2805
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2808
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2808
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2808
  br label %for.cond.i11, !dbg !2809

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2810, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2811
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2811
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2811
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2811

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2812

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2813, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2814

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2815
  store i8 47, i8* %sc.0.i, align 1, !dbg !2815, !tbaa !2183
  br label %for.inc.i, !dbg !2816

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2817
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2817
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2817
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2818
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2818
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2818
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2819
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2819, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2820
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2820

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2809
  br label %for.cond.i11, !dbg !2809

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 80, i8* %path) #10, !dbg !2807
  %conv = trunc i64 %call3 to i32, !dbg !2807
  %cmp = icmp eq i32 %conv, -1, !dbg !2821
  br i1 %cmp, label %if.then5, label %return, !dbg !2821

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #10, !dbg !2823
  %call7 = tail call i32* @__errno_location() #1, !dbg !2823
  store i32 %call6, i32* %call7, align 4, !dbg !2823, !tbaa !2230
  br label %return, !dbg !2823

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2824
}

; Function Attrs: nounwind uwtable
define i32 @fchdir(i32 %fd) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2825
  br i1 %0, label %if.then.i, label %if.then, !dbg !2825

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2827
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2828
  %1 = load i32* %flags.i, align 4, !dbg !2828, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2828
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2828
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2828

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2827
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2829
  br i1 %tobool, label %if.then, label %if.end, !dbg !2829

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2831
  store i32 9, i32* %call1, align 4, !dbg !2831, !tbaa !2230
  br label %return, !dbg !2833

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2834
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2834, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2834
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2834

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #10, !dbg !2835
  %call4 = tail call i32* @__errno_location() #1, !dbg !2837
  store i32 2, i32* %call4, align 4, !dbg !2837, !tbaa !2230
  br label %return, !dbg !2838

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2839
  %3 = load i32* %fd5, align 8, !dbg !2839, !tbaa !2310
  %call6 = tail call i64 (i64, ...)* @syscall(i64 81, i32 %3) #10, !dbg !2839
  %conv = trunc i64 %call6 to i32, !dbg !2839
  %cmp = icmp eq i32 %conv, -1, !dbg !2840
  br i1 %cmp, label %if.then8, label %return, !dbg !2840

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #10, !dbg !2842
  %call10 = tail call i32* @__errno_location() #1, !dbg !2842
  store i32 %call9, i32* %call10, align 4, !dbg !2842, !tbaa !2230
  br label %return, !dbg !2842

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2843
}

; Function Attrs: nounwind uwtable
define i32 @chmod(i8* %path, i32 %mode) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2844, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2846
  %cmp.i = icmp eq i8 %0, 0, !dbg !2846
  br i1 %cmp.i, label %__get_sym_file.exit, label %lor.lhs.false.i, !dbg !2846

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2846
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2846, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2846
  br i1 %cmp4.i, label %for.cond.preheader.i, label %__get_sym_file.exit, !dbg !2846

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2847, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2847
  br i1 %cmp626.i, label %__get_sym_file.exit, label %for.body.i, !dbg !2847

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2847
  br i1 %cmp6.i, label %for.body.i, label %__get_sym_file.exit, !dbg !2847

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2848
  %sext.i = shl i32 %i.027.i, 24, !dbg !2848
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2848
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2848
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2848
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2848
  %inc.i = add i32 %i.027.i, 1, !dbg !2847
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2848

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2849
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2849, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2850
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2850, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2850
  %5 = load i64* %st_ino.i, align 8, !dbg !2850, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2850
  br i1 %cmp15.i, label %__get_sym_file.exit, label %if.end18.i, !dbg !2850

if.end18.i:                                       ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2849
  br label %__get_sym_file.exit, !dbg !2851

__get_sym_file.exit:                              ; preds = %if.end18.i, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %retval.0.i = phi %struct.exe_disk_file_t* [ %arrayidx14.i, %if.end18.i ], [ null, %lor.lhs.false.i ], [ null, %entry ], [ null, %if.then13.i ], [ null, %for.cond.preheader.i ], [ null, %for.cond.i ]
  %6 = load i32* @chmod.n_calls, align 4, !dbg !2852, !tbaa !2230
  %inc = add nsw i32 %6, 1, !dbg !2852
  store i32 %inc, i32* @chmod.n_calls, align 4, !dbg !2852, !tbaa !2230
  %7 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2853, !tbaa !2497
  %tobool = icmp eq i32 %7, 0, !dbg !2853
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2853

land.lhs.true:                                    ; preds = %__get_sym_file.exit
  %8 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !2853, !tbaa !2855
  %9 = load i32* %8, align 4, !dbg !2853, !tbaa !2230
  %cmp = icmp eq i32 %9, %inc, !dbg !2853
  br i1 %cmp, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %7, -1, !dbg !2856
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2856, !tbaa !2497
  %call1 = tail call i32* @__errno_location() #1, !dbg !2858
  store i32 5, i32* %call1, align 4, !dbg !2858, !tbaa !2230
  br label %return, !dbg !2859

if.end:                                           ; preds = %land.lhs.true, %__get_sym_file.exit
  %tobool2 = icmp eq %struct.exe_disk_file_t* %retval.0.i, null, !dbg !2860
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2860

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @geteuid() #10, !dbg !2861
  %stat.i20 = getelementptr inbounds %struct.exe_disk_file_t* %retval.0.i, i64 0, i32 2, !dbg !2861
  %10 = load %struct.stat64** %stat.i20, align 8, !dbg !2861, !tbaa !2198
  %st_uid.i = getelementptr inbounds %struct.stat64* %10, i64 0, i32 4, !dbg !2861
  %11 = load i32* %st_uid.i, align 4, !dbg !2861, !tbaa !2865
  %cmp.i21 = icmp eq i32 %call.i, %11, !dbg !2861
  br i1 %cmp.i21, label %if.then.i23, label %if.else.i, !dbg !2861

if.then.i23:                                      ; preds = %if.then3
  %call1.i = tail call i32 @getgid() #10, !dbg !2866
  %12 = load %struct.stat64** %stat.i20, align 8, !dbg !2866, !tbaa !2198
  %st_gid.i = getelementptr inbounds %struct.stat64* %12, i64 0, i32 5, !dbg !2866
  %13 = load i32* %st_gid.i, align 4, !dbg !2866, !tbaa !2869
  %cmp3.i = icmp eq i32 %call1.i, %13, !dbg !2866
  %and.i22 = and i32 %mode, 3071, !dbg !2870
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2866
  %st_mode.i = getelementptr inbounds %struct.stat64* %12, i64 0, i32 3, !dbg !2871
  %14 = load i32* %st_mode.i, align 4, !dbg !2871, !tbaa !2274
  %and6.i = and i32 %14, -4096, !dbg !2871
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2871
  %or.i = or i32 %and7.i, %and6.i, !dbg !2871
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2871, !tbaa !2274
  br label %return, !dbg !2872

if.else.i:                                        ; preds = %if.then3
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2873
  store i32 1, i32* %call10.i, align 4, !dbg !2873, !tbaa !2230
  br label %return, !dbg !2875

if.else:                                          ; preds = %if.end
  %15 = ptrtoint i8* %path to i64, !dbg !2876
  %call.i.i = tail call i64 @klee_get_valuel(i64 %15) #10, !dbg !2876
  %16 = inttoptr i64 %call.i.i to i8*, !dbg !2876
  %cmp.i.i = icmp eq i8* %16, %path, !dbg !2879
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2879
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2879
  br label %for.cond.i17, !dbg !2880

for.cond.i17:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i19, %for.inc.i ]
  %sc.0.i = phi i8* [ %16, %if.else ], [ %sc.1.i, %for.inc.i ]
  %17 = load i8* %sc.0.i, align 1, !dbg !2881, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2882
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2882
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2882
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2882

if.then.i:                                        ; preds = %for.cond.i17
  switch i8 %17, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2883

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2884, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2885

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2886
  store i8 47, i8* %sc.0.i, align 1, !dbg !2886, !tbaa !2183
  br label %for.inc.i, !dbg !2887

if.else7.i:                                       ; preds = %for.cond.i17
  %conv8.i = sext i8 %17 to i64, !dbg !2888
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2888
  %conv10.i18 = trunc i64 %call9.i to i8, !dbg !2888
  %cmp13.i = icmp eq i8 %conv10.i18, %17, !dbg !2889
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2889
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2889
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2890
  store i8 %conv10.i18, i8* %sc.0.i, align 1, !dbg !2890, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i18, 0, !dbg !2891
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2891

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i19 = add i32 %i.0.i, 1, !dbg !2880
  br label %for.cond.i17, !dbg !2880

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call6 = tail call i64 (i64, ...)* @syscall(i64 90, i8* %path, i32 %mode) #10, !dbg !2878
  %conv = trunc i64 %call6 to i32, !dbg !2878
  %cmp7 = icmp eq i32 %conv, -1, !dbg !2892
  br i1 %cmp7, label %if.then9, label %return, !dbg !2892

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #10, !dbg !2894
  %call11 = tail call i32* @__errno_location() #1, !dbg !2894
  store i32 %call10, i32* %call11, align 4, !dbg !2894, !tbaa !2230
  br label %return, !dbg !2894

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.else.i, %if.then.i23, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2895
}

; Function Attrs: nounwind uwtable
define i32 @fchmod(i32 %fd, i32 %mode) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2896
  br i1 %0, label %if.then.i, label %if.then, !dbg !2896

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2898
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2899
  %1 = load i32* %flags.i, align 4, !dbg !2899, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2899
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2899
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2899

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2898
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2900
  br i1 %tobool, label %if.then, label %if.end, !dbg !2900

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2902
  store i32 9, i32* %call1, align 4, !dbg !2902, !tbaa !2230
  br label %return, !dbg !2904

if.end:                                           ; preds = %__get_file.exit
  %2 = load i32* @fchmod.n_calls, align 4, !dbg !2905, !tbaa !2230
  %inc = add nsw i32 %2, 1, !dbg !2905
  store i32 %inc, i32* @fchmod.n_calls, align 4, !dbg !2905, !tbaa !2230
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2906, !tbaa !2497
  %tobool2 = icmp eq i32 %3, 0, !dbg !2906
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2906

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 8, !dbg !2906, !tbaa !2908
  %5 = load i32* %4, align 4, !dbg !2906, !tbaa !2230
  %cmp = icmp eq i32 %5, %inc, !dbg !2906
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2906

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2909
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2909, !tbaa !2497
  %call4 = tail call i32* @__errno_location() #1, !dbg !2911
  store i32 5, i32* %call4, align 4, !dbg !2911, !tbaa !2230
  br label %return, !dbg !2912

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2913
  %6 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2913, !tbaa !2260
  %tobool6 = icmp eq %struct.exe_disk_file_t* %6, null, !dbg !2913
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2913

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @geteuid() #10, !dbg !2914
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 2, !dbg !2914
  %7 = load %struct.stat64** %stat.i, align 8, !dbg !2914, !tbaa !2198
  %st_uid.i = getelementptr inbounds %struct.stat64* %7, i64 0, i32 4, !dbg !2914
  %8 = load i32* %st_uid.i, align 4, !dbg !2914, !tbaa !2865
  %cmp.i = icmp eq i32 %call.i, %8, !dbg !2914
  br i1 %cmp.i, label %if.then.i23, label %if.else.i, !dbg !2914

if.then.i23:                                      ; preds = %if.then7
  %call1.i = tail call i32 @getgid() #10, !dbg !2917
  %9 = load %struct.stat64** %stat.i, align 8, !dbg !2917, !tbaa !2198
  %st_gid.i = getelementptr inbounds %struct.stat64* %9, i64 0, i32 5, !dbg !2917
  %10 = load i32* %st_gid.i, align 4, !dbg !2917, !tbaa !2869
  %cmp3.i = icmp eq i32 %call1.i, %10, !dbg !2917
  %and.i22 = and i32 %mode, 3071, !dbg !2918
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2917
  %st_mode.i = getelementptr inbounds %struct.stat64* %9, i64 0, i32 3, !dbg !2919
  %11 = load i32* %st_mode.i, align 4, !dbg !2919, !tbaa !2274
  %and6.i = and i32 %11, -4096, !dbg !2919
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2919
  %or.i = or i32 %and7.i, %and6.i, !dbg !2919
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2919, !tbaa !2274
  br label %return, !dbg !2920

if.else.i:                                        ; preds = %if.then7
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2921
  store i32 1, i32* %call10.i, align 4, !dbg !2921, !tbaa !2230
  br label %return, !dbg !2922

if.else:                                          ; preds = %if.end5
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2923
  %12 = load i32* %fd10, align 8, !dbg !2923, !tbaa !2310
  %call11 = tail call i64 (i64, ...)* @syscall(i64 91, i32 %12, i32 %mode) #10, !dbg !2923
  %conv = trunc i64 %call11 to i32, !dbg !2923
  %cmp12 = icmp eq i32 %conv, -1, !dbg !2924
  br i1 %cmp12, label %if.then14, label %return, !dbg !2924

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 @klee_get_errno() #10, !dbg !2926
  %call16 = tail call i32* @__errno_location() #1, !dbg !2926
  store i32 %call15, i32* %call16, align 4, !dbg !2926, !tbaa !2230
  br label %return, !dbg !2926

return:                                           ; preds = %if.then14, %if.else, %if.else.i, %if.then.i23, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then14 ], [ %conv, %if.else ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2927
}

; Function Attrs: nounwind uwtable
define i32 @chown(i8* %path, i32 %owner, i32 %group) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2928, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2930
  %cmp.i = icmp eq i8 %0, 0, !dbg !2930
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2930

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2930
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2930, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2930
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2930

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2931, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2931
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2931

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2931
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2931

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2932
  %sext.i = shl i32 %i.027.i, 24, !dbg !2932
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2932
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2932
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2932
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2932
  %inc.i = add i32 %i.027.i, 1, !dbg !2931
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2932

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2933
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2933, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2934
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2934, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2934
  %5 = load i64* %st_ino.i, align 8, !dbg !2934, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2934
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2933
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2935
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2934
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2934

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str24, i64 0, i64 0)) #10, !dbg !2936
  %call.i = tail call i32* @__errno_location() #1, !dbg !2939
  store i32 1, i32* %call.i, align 4, !dbg !2939, !tbaa !2230
  br label %return, !dbg !2937

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2940
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #10, !dbg !2940
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2940
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2943
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2943
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2943
  br label %for.cond.i13, !dbg !2944

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2945, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2946
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2946
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2946
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2946

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2947

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2948, !tbaa !2183
  br label %__concretize_string.exit, !dbg !2949

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2950
  store i8 47, i8* %sc.0.i, align 1, !dbg !2950, !tbaa !2183
  br label %for.inc.i, !dbg !2951

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2952
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !2952
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2952
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2953
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2953
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !2953
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2954
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2954, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2955
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2955

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2944
  br label %for.cond.i13, !dbg !2944

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #10, !dbg !2942
  %conv = trunc i64 %call3 to i32, !dbg !2942
  %cmp = icmp eq i32 %conv, -1, !dbg !2956
  br i1 %cmp, label %if.then5, label %return, !dbg !2956

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #10, !dbg !2958
  %call7 = tail call i32* @__errno_location() #1, !dbg !2958
  store i32 %call6, i32* %call7, align 4, !dbg !2958, !tbaa !2230
  br label %return, !dbg !2958

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2959
}

; Function Attrs: nounwind uwtable
define i32 @fchown(i32 %fd, i32 %owner, i32 %group) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2960
  br i1 %0, label %if.then.i, label %if.then, !dbg !2960

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2962
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2963
  %1 = load i32* %flags.i, align 4, !dbg !2963, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !2963
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2963
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2962
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2964
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2963
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2963

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2966
  store i32 9, i32* %call1, align 4, !dbg !2966, !tbaa !2230
  br label %return, !dbg !2968

if.end:                                           ; preds = %if.then.i
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2969
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2969, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2969
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2969

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str24, i64 0, i64 0)) #10, !dbg !2970
  %call.i = tail call i32* @__errno_location() #1, !dbg !2973
  store i32 1, i32* %call.i, align 4, !dbg !2973, !tbaa !2230
  br label %return, !dbg !2971

if.else:                                          ; preds = %if.end
  %call6 = tail call i64 (i64, ...)* @syscall(i64 93, i32 %fd, i32 %owner, i32 %group) #10, !dbg !2974
  %conv = trunc i64 %call6 to i32, !dbg !2974
  %cmp = icmp eq i32 %conv, -1, !dbg !2975
  br i1 %cmp, label %if.then8, label %return, !dbg !2975

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #10, !dbg !2977
  %call10 = tail call i32* @__errno_location() #1, !dbg !2977
  store i32 %call9, i32* %call10, align 4, !dbg !2977, !tbaa !2230
  br label %return, !dbg !2977

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2978
}

; Function Attrs: nounwind uwtable
define i32 @lchown(i8* %path, i32 %owner, i32 %group) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2979, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !2981
  %cmp.i = icmp eq i8 %0, 0, !dbg !2981
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2981

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2981
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2981, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2981
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2981

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2982, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2982
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2982

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2982
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2982

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2983
  %sext.i = shl i32 %i.027.i, 24, !dbg !2983
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2983
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2983
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2983
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2983
  %inc.i = add i32 %i.027.i, 1, !dbg !2982
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2983

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2984
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2984, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2985
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2985, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2985
  %5 = load i64* %st_ino.i, align 8, !dbg !2985, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2985
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2984
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2986
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2985
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2985

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str24, i64 0, i64 0)) #10, !dbg !2987
  %call.i = tail call i32* @__errno_location() #1, !dbg !2990
  store i32 1, i32* %call.i, align 4, !dbg !2990, !tbaa !2230
  br label %return, !dbg !2988

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2991
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #10, !dbg !2991
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2991
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2994
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2994
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !2994
  br label %for.cond.i13, !dbg !2995

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2996, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !2997
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2997
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2997
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2997

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2998

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2999, !tbaa !2183
  br label %__concretize_string.exit, !dbg !3000

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !3001
  store i8 47, i8* %sc.0.i, align 1, !dbg !3001, !tbaa !2183
  br label %for.inc.i, !dbg !3002

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !3003
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !3003
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !3003
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !3004
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !3004
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !3004
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !3005
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !3005, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !3006
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !3006

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2995
  br label %for.cond.i13, !dbg !2995

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #10, !dbg !2993
  %conv = trunc i64 %call3 to i32, !dbg !2993
  %cmp = icmp eq i32 %conv, -1, !dbg !3007
  br i1 %cmp, label %if.then5, label %return, !dbg !3007

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #10, !dbg !3009
  %call7 = tail call i32* @__errno_location() #1, !dbg !3009
  store i32 %call6, i32* %call7, align 4, !dbg !3009, !tbaa !2230
  br label %return, !dbg !3009

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !3010
}

; Function Attrs: nounwind uwtable
define i32 @__fd_fstat(i32 %fd, %struct.stat64* %buf) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !3011
  br i1 %0, label %if.then.i, label %if.then, !dbg !3011

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3013
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3014
  %1 = load i32* %flags.i, align 4, !dbg !3014, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3014
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3014
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3014

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3013
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3015
  br i1 %tobool, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !3017
  store i32 9, i32* %call1, align 4, !dbg !3017, !tbaa !2230
  br label %return, !dbg !3019

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3020
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3020, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !3020
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !3020

if.then3:                                         ; preds = %if.end
  %fd4 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3021
  %3 = load i32* %fd4, align 8, !dbg !3021, !tbaa !2310
  %call5 = tail call i64 (i64, ...)* @syscall(i64 5, i32 %3, %struct.stat64* %buf) #10, !dbg !3021
  %conv = trunc i64 %call5 to i32, !dbg !3021
  %cmp = icmp eq i32 %conv, -1, !dbg !3022
  br i1 %cmp, label %if.then7, label %return, !dbg !3022

if.then7:                                         ; preds = %if.then3
  %call8 = tail call i32 @klee_get_errno() #10, !dbg !3024
  %call9 = tail call i32* @__errno_location() #1, !dbg !3024
  store i32 %call8, i32* %call9, align 4, !dbg !3024, !tbaa !2230
  br label %return, !dbg !3024

if.end11:                                         ; preds = %if.end
  %4 = bitcast %struct.stat64* %buf to i8*, !dbg !3025
  %stat = getelementptr inbounds %struct.exe_disk_file_t* %2, i64 0, i32 2, !dbg !3025
  %5 = load %struct.stat64** %stat, align 8, !dbg !3025, !tbaa !2198
  %6 = bitcast %struct.stat64* %5 to i8*, !dbg !3025
  %7 = call i8* @memcpy(i8* %4, i8* %6, i64 144)
  br label %return, !dbg !3026

return:                                           ; preds = %if.end11, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %if.then ], [ -1, %if.then7 ], [ %conv, %if.then3 ]
  ret i32 %retval.0, !dbg !3027
}

; Function Attrs: nounwind uwtable
define i32 @__fd_ftruncate(i32 %fd, i64 %length) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !3028
  br i1 %0, label %if.then.i, label %__get_file.exit.thread, !dbg !3028

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3030
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3031
  %1 = load i32* %flags.i, align 4, !dbg !3031, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3031
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3031
  br i1 %tobool.i, label %__get_file.exit.thread, label %__get_file.exit, !dbg !3031

__get_file.exit.thread:                           ; preds = %if.then.i, %entry
  %2 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !3032, !tbaa !2230
  %inc20 = add nsw i32 %2, 1, !dbg !3032
  store i32 %inc20, i32* @__fd_ftruncate.n_calls, align 4, !dbg !3032, !tbaa !2230
  br label %if.then, !dbg !3033

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3030
  %3 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !3032, !tbaa !2230
  %inc = add nsw i32 %3, 1, !dbg !3032
  store i32 %inc, i32* @__fd_ftruncate.n_calls, align 4, !dbg !3032, !tbaa !2230
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3033
  br i1 %tobool, label %if.then, label %if.end, !dbg !3033

if.then:                                          ; preds = %__get_file.exit, %__get_file.exit.thread
  %call1 = tail call i32* @__errno_location() #1, !dbg !3035
  store i32 9, i32* %call1, align 4, !dbg !3035, !tbaa !2230
  br label %return, !dbg !3037

if.end:                                           ; preds = %__get_file.exit
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3038, !tbaa !2497
  %tobool2 = icmp eq i32 %4, 0, !dbg !3038
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !3038

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !3038, !tbaa !3040
  %6 = load i32* %5, align 4, !dbg !3038, !tbaa !2230
  %cmp = icmp eq i32 %6, %inc, !dbg !3038
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3038

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %4, -1, !dbg !3041
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3041, !tbaa !2497
  %call4 = tail call i32* @__errno_location() #1, !dbg !3043
  store i32 5, i32* %call4, align 4, !dbg !3043, !tbaa !2230
  br label %return, !dbg !3044

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3045
  %7 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3045, !tbaa !2260
  %tobool6 = icmp eq %struct.exe_disk_file_t* %7, null, !dbg !3045
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !3045

if.then7:                                         ; preds = %if.end5
  tail call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0)) #10, !dbg !3046
  %call8 = tail call i32* @__errno_location() #1, !dbg !3048
  store i32 5, i32* %call8, align 4, !dbg !3048, !tbaa !2230
  br label %return, !dbg !3049

if.else:                                          ; preds = %if.end5
  %fd9 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3050
  %8 = load i32* %fd9, align 8, !dbg !3050, !tbaa !2310
  %call10 = tail call i64 (i64, ...)* @syscall(i64 77, i32 %8, i64 %length) #10, !dbg !3050
  %conv = trunc i64 %call10 to i32, !dbg !3050
  %cmp11 = icmp eq i32 %conv, -1, !dbg !3051
  br i1 %cmp11, label %if.then13, label %return, !dbg !3051

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 @klee_get_errno() #10, !dbg !3053
  %call15 = tail call i32* @__errno_location() #1, !dbg !3053
  store i32 %call14, i32* %call15, align 4, !dbg !3053, !tbaa !2230
  br label %return, !dbg !3053

return:                                           ; preds = %if.then13, %if.else, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then7 ], [ -1, %if.then ], [ -1, %if.then13 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !3054
}

; Function Attrs: nounwind uwtable
define i32 @__fd_getdents(i32 %fd, %struct.dirent64* %dirp, i32 %count) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !3055
  br i1 %0, label %if.then.i, label %if.then, !dbg !3055

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3057
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3058
  %1 = load i32* %flags.i, align 4, !dbg !3058, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3058
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3058
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3058

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3057
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3059
  br i1 %tobool, label %if.then, label %if.end, !dbg !3059

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !3061
  store i32 9, i32* %call1, align 4, !dbg !3061, !tbaa !2230
  br label %return, !dbg !3063

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3064
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3064, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !3064
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3064

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str119, i64 0, i64 0)) #10, !dbg !3065
  %call4 = tail call i32* @__errno_location() #1, !dbg !3067
  store i32 22, i32* %call4, align 4, !dbg !3067, !tbaa !2230
  br label %return, !dbg !3068

if.else:                                          ; preds = %if.end
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !3069
  %3 = load i64* %off, align 8, !dbg !3069, !tbaa !2542
  %cmp = icmp ult i64 %3, 4096, !dbg !3069
  br i1 %cmp, label %if.then5, label %if.else43, !dbg !3069

if.then5:                                         ; preds = %if.else
  %int_cast_to_i64 = bitcast i64 280 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !3070
  %div = udiv i64 %3, 280, !dbg !3070
  %mul = mul i64 %div, 280, !dbg !3071
  %cmp8 = icmp eq i64 %mul, %3, !dbg !3071
  br i1 %cmp8, label %lor.lhs.false, label %if.then11, !dbg !3071

lor.lhs.false:                                    ; preds = %if.then5
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3071, !tbaa !2189
  %conv = zext i32 %4 to i64, !dbg !3071
  %cmp9 = icmp ugt i64 %div, %conv, !dbg !3071
  br i1 %cmp9, label %if.then11, label %for.cond.preheader, !dbg !3071

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp15123 = icmp ult i64 %div, %conv, !dbg !3073
  br i1 %cmp15123, label %for.body, label %for.end, !dbg !3073

if.then11:                                        ; preds = %lor.lhs.false, %if.then5
  %call12 = tail call i32* @__errno_location() #1, !dbg !3074
  store i32 22, i32* %call12, align 4, !dbg !3074, !tbaa !2230
  br label %return, !dbg !3076

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0126 = phi %struct.dirent64* [ %incdec.ptr, %for.body ], [ %dirp, %for.cond.preheader ]
  %i.0125 = phi i64 [ %add23, %for.body ], [ %div, %for.cond.preheader ]
  %bytes.0124 = phi i64 [ %add27, %for.body ], [ 0, %for.cond.preheader ]
  %5 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3077, !tbaa !2195
  %stat = getelementptr inbounds %struct.exe_disk_file_t* %5, i64 %i.0125, i32 2, !dbg !3078
  %6 = load %struct.stat64** %stat, align 8, !dbg !3078, !tbaa !2198
  %st_ino = getelementptr inbounds %struct.stat64* %6, i64 0, i32 1, !dbg !3078
  %7 = load i64* %st_ino, align 8, !dbg !3078, !tbaa !2200
  %d_ino = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 0, !dbg !3078
  store i64 %7, i64* %d_ino, align 8, !dbg !3078, !tbaa !3079
  %d_reclen = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 2, !dbg !3082
  store i16 280, i16* %d_reclen, align 2, !dbg !3082, !tbaa !3083
  %st_mode = getelementptr inbounds %struct.stat64* %6, i64 0, i32 3, !dbg !3084
  %8 = load i32* %st_mode, align 4, !dbg !3084, !tbaa !2274
  %int_cast_to_i641 = zext i32 12 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !3084
  %and = lshr i32 %8, 12, !dbg !3084
  %and.tr = trunc i32 %and to i8, !dbg !3084
  %conv18 = and i8 %and.tr, 15, !dbg !3084
  %d_type = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 3, !dbg !3084
  store i8 %conv18, i8* %d_type, align 1, !dbg !3084, !tbaa !3085
  %add = add nsw i64 %i.0125, 65, !dbg !3086
  %conv19 = trunc i64 %add to i8, !dbg !3086
  %arrayidx20 = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 4, i64 0, !dbg !3086
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !3086, !tbaa !2183
  %arrayidx22 = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 4, i64 1, !dbg !3087
  store i8 0, i8* %arrayidx22, align 1, !dbg !3087, !tbaa !2183
  %add23 = add nsw i64 %i.0125, 1, !dbg !3088
  %mul24 = mul i64 %add23, 280, !dbg !3088
  %d_off = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 1, !dbg !3088
  store i64 %mul24, i64* %d_off, align 8, !dbg !3088, !tbaa !3089
  %add27 = add nsw i64 %bytes.0124, 280, !dbg !3090
  %incdec.ptr = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 1, !dbg !3091
  %9 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3073, !tbaa !2189
  %conv14 = zext i32 %9 to i64, !dbg !3073
  %cmp15 = icmp slt i64 %add23, %conv14, !dbg !3073
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3073

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0.lcssa = phi %struct.dirent64* [ %dirp, %for.cond.preheader ], [ %incdec.ptr, %for.body ]
  %bytes.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add27, %for.body ]
  %cmp28 = icmp ult i32 %count, 4096, !dbg !3092
  %10 = zext i32 %count to i64, !dbg !3092
  %conv30 = select i1 %cmp28, i64 %10, i64 4096, !dbg !3092
  %d_ino31 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 0, !dbg !3093
  store i64 0, i64* %d_ino31, align 8, !dbg !3093, !tbaa !3079
  %sub = sub nsw i64 %conv30, %bytes.0.lcssa, !dbg !3094
  %conv32 = trunc i64 %sub to i16, !dbg !3094
  %d_reclen33 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 2, !dbg !3094
  store i16 %conv32, i16* %d_reclen33, align 2, !dbg !3094, !tbaa !3083
  %d_type34 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 3, !dbg !3095
  store i8 0, i8* %d_type34, align 1, !dbg !3095, !tbaa !3085
  %arrayidx36 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 4, i64 0, !dbg !3096
  store i8 0, i8* %arrayidx36, align 1, !dbg !3096, !tbaa !2183
  %d_off37 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 1, !dbg !3097
  store i64 4096, i64* %d_off37, align 8, !dbg !3097, !tbaa !3089
  %conv39 = and i64 %sub, 65535, !dbg !3098
  %add40 = add nsw i64 %conv39, %bytes.0.lcssa, !dbg !3098
  store i64 %conv30, i64* %off, align 8, !dbg !3099, !tbaa !2542
  %conv42 = trunc i64 %add40 to i32, !dbg !3100
  br label %return, !dbg !3100

if.else43:                                        ; preds = %if.else
  %sub45 = add nsw i64 %3, -4096, !dbg !3101
  %11 = bitcast %struct.dirent64* %dirp to i8*, !dbg !3102
  %conv46 = zext i32 %count to i64, !dbg !3102
  %12 = call i8* @memset(i8* %11, i32 0, i64 %conv46)
  %fd47 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3103
  %13 = load i32* %fd47, align 8, !dbg !3103, !tbaa !2310
  %call48 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %13, i64 %sub45, i32 0) #10, !dbg !3103
  %cmp49 = icmp eq i64 %call48, -1, !dbg !3104
  br i1 %cmp49, label %cond.false52, label %cond.end53, !dbg !3104

cond.false52:                                     ; preds = %if.else43
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str44, i64 0, i64 0), i32 875, i8* getelementptr inbounds ([65 x i8
  unreachable, !dbg !3104

cond.end53:                                       ; preds = %if.else43
  %14 = load i32* %fd47, align 8, !dbg !3105, !tbaa !2310
  %call55 = tail call i64 (i64, ...)* @syscall(i64 217, i32 %14, %struct.dirent64* %dirp, i32 %count) #10, !dbg !3105
  %conv56 = trunc i64 %call55 to i32, !dbg !3105
  %cmp57 = icmp eq i32 %conv56, -1, !dbg !3106
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !3106

if.then59:                                        ; preds = %cond.end53
  %call60 = tail call i32 @klee_get_errno() #10, !dbg !3107
  %call61 = tail call i32* @__errno_location() #1, !dbg !3107
  store i32 %call60, i32* %call61, align 4, !dbg !3107, !tbaa !2230
  br label %return, !dbg !3109

if.else62:                                        ; preds = %cond.end53
  %15 = load i32* %fd47, align 8, !dbg !3110, !tbaa !2310
  %call64 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %15, i32 0, i32 1) #10, !dbg !3110
  %add65 = add nsw i64 %call64, 4096, !dbg !3110
  store i64 %add65, i64* %off, align 8, !dbg !3110, !tbaa !2542
  %cmp67128 = icmp sgt i32 %conv56, 0, !dbg !3111
  br i1 %cmp67128, label %while.body, label %return, !dbg !3111

while.body:                                       ; preds = %while.body, %if.else62
  %pos.0129 = phi i32 [ %add73, %while.body ], [ 0, %if.else62 ]
  %idx.ext = sext i32 %pos.0129 to i64, !dbg !3112
  %add.ptr.sum = add i64 %idx.ext, 8, !dbg !3113
  %d_off69 = getelementptr inbounds i8* %11, i64 %add.ptr.sum, !dbg !3113
  %16 = bitcast i8* %d_off69 to i64*, !dbg !3113
  %17 = load i64* %16, align 8, !dbg !3113, !tbaa !3089
  %add70 = add nsw i64 %17, 4096, !dbg !3113
  store i64 %add70, i64* %16, align 8, !dbg !3113, !tbaa !3089
  %add.ptr.sum120 = add i64 %idx.ext, 16, !dbg !3114
  %d_reclen71 = getelementptr inbounds i8* %11, i64 %add.ptr.sum120, !dbg !3114
  %18 = bitcast i8* %d_reclen71 to i16*, !dbg !3114
  %19 = load i16* %18, align 2, !dbg !3114, !tbaa !3083
  %conv72 = zext i16 %19 to i32, !dbg !3114
  %add73 = add nsw i32 %conv72, %pos.0129, !dbg !3114
  %cmp67 = icmp slt i32 %add73, %conv56, !dbg !3111
  br i1 %cmp67, label %while.body, label %return, !dbg !3111

return:                                           ; preds = %while.body, %if.else62, %if.then59, %for.end, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then11 ], [ %conv42, %for.end ], [ -1, %if.then ], [ -1, %if.then59 ], [ %conv56, %if.else62 ], [ %conv56, %while.body ]
  ret i32 %retval.0, !dbg !3115
}

; Function Attrs: nounwind uwtable
define i32 @ioctl(i32 %fd, i64 %request, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !3116
  br i1 %0, label %if.then.i, label %if.then, !dbg !3116

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3118
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3119
  %1 = load i32* %flags.i, align 4, !dbg !3119, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3119
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3119
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3119

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3118
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3120
  br i1 %tobool, label %if.then, label %if.end, !dbg !3120

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !3122
  store i32 9, i32* %call1, align 4, !dbg !3122, !tbaa !2230
  br label %return, !dbg !3124

if.end:                                           ; preds = %__get_file.exit
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !3125
  call void @llvm.va_start(i8* %arraydecay2), !dbg !3125
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !3126
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !3126
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !3126
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3126

vaarg.in_reg:                                     ; preds = %if.end
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !3126
  %reg_save_area = load i8** %2, align 16, !dbg !3126
  %3 = sext i32 %gp_offset to i64, !dbg !3126
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !3126
  %5 = add i32 %gp_offset, 8, !dbg !3126
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !3126
  br label %vaarg.end, !dbg !3126

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !3126
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !3126
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !3126
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3126
  br label %vaarg.end, !dbg !3126

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !3126
  %6 = load i8** %vaarg.addr, align 8, !dbg !3126
  call void @llvm.va_end(i8* %arraydecay2), !dbg !3127
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3128
  %7 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3128, !tbaa !2260
  %tobool6 = icmp eq %struct.exe_disk_file_t* %7, null, !dbg !3128
  br i1 %tobool6, label %if.else103, label %if.then7, !dbg !3128

if.then7:                                         ; preds = %vaarg.end
  %stat9 = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 0, i32 2, !dbg !3129
  %8 = load %struct.stat64** %stat9, align 8, !dbg !3129, !tbaa !2198
  switch i64 %request, label %sw.default [
    i64 21505, label %sw.bb
    i64 21506, label %sw.bb48
    i64 21507, label %sw.bb55
    i64 21508, label %sw.bb60
    i64 21523, label %sw.bb67
    i64 21524, label %sw.bb74
    i64 21531, label %sw.bb82
    i64 2150657282, label %sw.bb100
  ], !dbg !3130

sw.bb:                                            ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str13, i64 0, i64 0)) #10, !dbg !3131
  %9 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !3132
  %10 = load i32* %9, align 4, !dbg !3132, !tbaa !3134
  %and = and i32 %10, 61440, !dbg !3132
  %cmp = icmp eq i32 %and, 8192, !dbg !3132
  br i1 %cmp, label %if.then10, label %if.else, !dbg !3132

if.then10:                                        ; preds = %sw.bb
  %c_iflag = bitcast i8* %6 to i32*, !dbg !3136
  store i32 27906, i32* %c_iflag, align 4, !dbg !3136, !tbaa !3138
  %c_oflag = getelementptr inbounds i8* %6, i64 4, !dbg !3140
  %11 = bitcast i8* %c_oflag to i32*, !dbg !3140
  store i32 5, i32* %11, align 4, !dbg !3140, !tbaa !3141
  %c_cflag = getelementptr inbounds i8* %6, i64 8, !dbg !3142
  %12 = bitcast i8* %c_cflag to i32*, !dbg !3142
  store i32 1215, i32* %12, align 4, !dbg !3142, !tbaa !3143
  %c_lflag = getelementptr inbounds i8* %6, i64 12, !dbg !3144
  %13 = bitcast i8* %c_lflag to i32*, !dbg !3144
  store i32 35287, i32* %13, align 4, !dbg !3144, !tbaa !3145
  %14 = getelementptr inbounds i8* %6, i64 16, !dbg !3146
  store i8 0, i8* %14, align 1, !dbg !3146, !tbaa !3147
  %c_cc = getelementptr inbounds i8* %6, i64 17, !dbg !3148
  store i8 3, i8* %c_cc, align 1, !dbg !3148, !tbaa !2183
  %arrayidx12 = getelementptr inbounds i8* %6, i64 18, !dbg !3149
  store i8 28, i8* %arrayidx12, align 1, !dbg !3149, !tbaa !2183
  %arrayidx14 = getelementptr inbounds i8* %6, i64 19, !dbg !3150
  store i8 127, i8* %arrayidx14, align 1, !dbg !3150, !tbaa !2183
  %arrayidx16 = getelementptr inbounds i8* %6, i64 20, !dbg !3151
  store i8 21, i8* %arrayidx16, align 1, !dbg !3151, !tbaa !2183
  %arrayidx18 = getelementptr inbounds i8* %6, i64 21, !dbg !3152
  store i8 4, i8* %arrayidx18, align 1, !dbg !3152, !tbaa !2183
  %arrayidx20 = getelementptr inbounds i8* %6, i64 22, !dbg !3153
  store i8 0, i8* %arrayidx20, align 1, !dbg !3153, !tbaa !2183
  %arrayidx22 = getelementptr inbounds i8* %6, i64 23, !dbg !3154
  store i8 1, i8* %arrayidx22, align 1, !dbg !3154, !tbaa !2183
  %arrayidx24 = getelementptr inbounds i8* %6, i64 24, !dbg !3155
  store i8 -1, i8* %arrayidx24, align 1, !dbg !3155, !tbaa !2183
  %arrayidx26 = getelementptr inbounds i8* %6, i64 25, !dbg !3156
  store i8 17, i8* %arrayidx26, align 1, !dbg !3156, !tbaa !2183
  %arrayidx28 = getelementptr inbounds i8* %6, i64 26, !dbg !3157
  store i8 19, i8* %arrayidx28, align 1, !dbg !3157, !tbaa !2183
  %arrayidx30 = getelementptr inbounds i8* %6, i64 27, !dbg !3158
  store i8 26, i8* %arrayidx30, align 1, !dbg !3158, !tbaa !2183
  %arrayidx32 = getelementptr inbounds i8* %6, i64 28, !dbg !3159
  store i8 -1, i8* %arrayidx32, align 1, !dbg !3159, !tbaa !2183
  %arrayidx34 = getelementptr inbounds i8* %6, i64 29, !dbg !3160
  store i8 18, i8* %arrayidx34, align 1, !dbg !3160, !tbaa !2183
  %arrayidx36 = getelementptr inbounds i8* %6, i64 30, !dbg !3161
  store i8 15, i8* %arrayidx36, align 1, !dbg !3161, !tbaa !2183
  %arrayidx38 = getelementptr inbounds i8* %6, i64 31, !dbg !3162
  store i8 23, i8* %arrayidx38, align 1, !dbg !3162, !tbaa !2183
  %arrayidx40 = getelementptr inbounds i8* %6, i64 32, !dbg !3163
  store i8 22, i8* %arrayidx40, align 1, !dbg !3163, !tbaa !2183
  %arrayidx42 = getelementptr inbounds i8* %6, i64 33, !dbg !3164
  store i8 -1, i8* %arrayidx42, align 1, !dbg !3164, !tbaa !2183
  %arrayidx44 = getelementptr inbounds i8* %6, i64 34, !dbg !3165
  store i8 0, i8* %arrayidx44, align 1, !dbg !3165, !tbaa !2183
  %arrayidx46 = getelementptr inbounds i8* %6, i64 35, !dbg !3166
  store i8 0, i8* %arrayidx46, align 1, !dbg !3166, !tbaa !2183
  br label %return, !dbg !3167

if.else:                                          ; preds = %sw.bb
  %call47 = call i32* @__errno_location() #1, !dbg !3168
  store i32 25, i32* %call47, align 4, !dbg !3168, !tbaa !2230
  br label %return, !dbg !3170

sw.bb48:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0)) #10, !dbg !3171
  %15 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !3173
  %16 = load i32* %15, align 4, !dbg !3173, !tbaa !3134
  %and50 = and i32 %16, 61440, !dbg !3173
  %cmp51 = icmp eq i32 %and50, 8192, !dbg !3173
  br i1 %cmp51, label %return, label %if.else53, !dbg !3173

if.else53:                                        ; preds = %sw.bb48
  %call54 = call i32* @__errno_location() #1, !dbg !3175
  store i32 25, i32* %call54, align 4, !dbg !3175, !tbaa !2230
  br label %return, !dbg !3177

sw.bb55:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0)) #10, !dbg !3178
  %cmp56 = icmp eq i32 %fd, 0, !dbg !3180
  br i1 %cmp56, label %return, label %if.else58, !dbg !3180

if.else58:                                        ; preds = %sw.bb55
  %call59 = call i32* @__errno_location() #1, !dbg !3182
  store i32 25, i32* %call59, align 4, !dbg !3182, !tbaa !2230
  br label %return, !dbg !3184

sw.bb60:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str16, i64 0, i64 0)) #10, !dbg !3185
  %17 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !3187
  %18 = load i32* %17, align 4, !dbg !3187, !tbaa !3134
  %and62 = and i32 %18, 61440, !dbg !3187
  %cmp63 = icmp eq i32 %and62, 8192, !dbg !3187
  br i1 %cmp63, label %return, label %if.else65, !dbg !3187

if.else65:                                        ; preds = %sw.bb60
  %call66 = call i32* @__errno_location() #1, !dbg !3189
  store i32 25, i32* %call66, align 4, !dbg !3189, !tbaa !2230
  br label %return, !dbg !3191

sw.bb67:                                          ; preds = %if.then7
  %ws_row = bitcast i8* %6 to i16*, !dbg !3192
  store i16 24, i16* %ws_row, align 2, !dbg !3192, !tbaa !3193
  %ws_col = getelementptr inbounds i8* %6, i64 2, !dbg !3195
  %19 = bitcast i8* %ws_col to i16*, !dbg !3195
  store i16 80, i16* %19, align 2, !dbg !3195, !tbaa !3196
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str17, i64 0, i64 0)) #10, !dbg !3197
  %20 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !3198
  %21 = load i32* %20, align 4, !dbg !3198, !tbaa !3134
  %and69 = and i32 %21, 61440, !dbg !3198
  %cmp70 = icmp eq i32 %and69, 8192, !dbg !3198
  br i1 %cmp70, label %return, label %if.else72, !dbg !3198

if.else72:                                        ; preds = %sw.bb67
  %call73 = call i32* @__errno_location() #1, !dbg !3200
  store i32 25, i32* %call73, align 4, !dbg !3200, !tbaa !2230
  br label %return, !dbg !3202

sw.bb74:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0)) #10, !dbg !3203
  %22 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !3205
  %23 = load i32* %22, align 4, !dbg !3205, !tbaa !3134
  %and76 = and i32 %23, 61440, !dbg !3205
  %cmp77 = icmp eq i32 %and76, 8192, !dbg !3205
  %call79 = call i32* @__errno_location() #1, !dbg !3207
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !3205

if.then78:                                        ; preds = %sw.bb74
  store i32 22, i32* %call79, align 4, !dbg !3207, !tbaa !2230
  br label %return, !dbg !3209

if.else80:                                        ; preds = %sw.bb74
  store i32 25, i32* %call79, align 4, !dbg !3210, !tbaa !2230
  br label %return, !dbg !3212

sw.bb82:                                          ; preds = %if.then7
  %24 = bitcast i8* %6 to i32*, !dbg !3213
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str19, i64 0, i64 0)) #10, !dbg !3214
  %25 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !3215
  %26 = load i32* %25, align 4, !dbg !3215, !tbaa !3134
  %and84 = and i32 %26, 61440, !dbg !3215
  %cmp85 = icmp eq i32 %and84, 8192, !dbg !3215
  br i1 %cmp85, label %if.then86, label %if.else98, !dbg !3215

if.then86:                                        ; preds = %sw.bb82
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !3217
  %27 = load i64* %off, align 8, !dbg !3217, !tbaa !2542
  %28 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3217, !tbaa !2260
  %size = getelementptr inbounds %struct.exe_disk_file_t* %28, i64 0, i32 0, !dbg !3217
  %29 = load i32* %size, align 4, !dbg !3217, !tbaa !2556
  %conv = zext i32 %29 to i64, !dbg !3217
  %cmp88 = icmp sgt i64 %conv, %27, !dbg !3217
  br i1 %cmp88, label %if.then90, label %if.end97, !dbg !3217

if.then90:                                        ; preds = %if.then86
  %sub = sub nsw i64 %conv, %27, !dbg !3220
  %conv95 = trunc i64 %sub to i32, !dbg !3220
  br label %if.end97, !dbg !3222

if.end97:                                         ; preds = %if.then90, %if.then86
  %storemerge = phi i32 [ %conv95, %if.then90 ], [ 0, %if.then86 ]
  store i32 %storemerge, i32* %24, align 4, !dbg !3220, !tbaa !2230
  br label %return, !dbg !3223

if.else98:                                        ; preds = %sw.bb82
  %call99 = call i32* @__errno_location() #1, !dbg !3224
  store i32 25, i32* %call99, align 4, !dbg !3224, !tbaa !2230
  br label %return, !dbg !3226

sw.bb100:                                         ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str20, i64 0, i64 0)) #10, !dbg !3227
  %call101 = call i32* @__errno_location() #1, !dbg !3229
  store i32 22, i32* %call101, align 4, !dbg !3229, !tbaa !2230
  br label %return, !dbg !3230

sw.default:                                       ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str119, i64 0, i64 0)) #10, !dbg !3231
  %call102 = call i32* @__errno_location() #1, !dbg !3232
  store i32 22, i32* %call102, align 4, !dbg !3232, !tbaa !2230
  br label %return, !dbg !3233

if.else103:                                       ; preds = %vaarg.end
  %fd104 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3234
  %30 = load i32* %fd104, align 8, !dbg !3234, !tbaa !2310
  %call105 = call i64 (i64, ...)* @syscall(i64 16, i32 %30, i64 %request, i8* %6) #10, !dbg !3234
  %conv106 = trunc i64 %call105 to i32, !dbg !3234
  %cmp107 = icmp eq i32 %conv106, -1, !dbg !3235
  br i1 %cmp107, label %if.then109, label %return, !dbg !3235

if.then109:                                       ; preds = %if.else103
  %call110 = call i32 @klee_get_errno() #10, !dbg !3237
  %call111 = call i32* @__errno_location() #1, !dbg !3237
  store i32 %call110, i32* %call111, align 4, !dbg !3237, !tbaa !2230
  br label %return, !dbg !3237

return:                                           ; preds = %if.then109, %if.else103, %sw.default, %sw.bb100, %if.else98, %if.end97, %if.else80, %if.then78, %if.else72, %sw.bb67, %if.else65, %sw.bb60, %if.else58, %sw.bb55, %if.else53, %sw.bb48, %if.else,
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %sw.bb100 ], [ 0, %if.end97 ], [ -1, %if.else98 ], [ -1, %if.then78 ], [ -1, %if.else80 ], [ -1, %if.else72 ], [ -1, %if.else65 ], [ -1, %if.else58 ], [ -1, %if.else53 ], [ 0, %if.then10 ], [ -1, %if.else 
  ret i32 %retval.0, !dbg !3238
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

declare void @klee_warning_once(i8*) #8

; Function Attrs: nounwind uwtable
define i32 @fcntl(i32 %fd, i32 %cmd, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !3239
  br i1 %0, label %if.then.i, label %if.then, !dbg !3239

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3241
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3242
  %1 = load i32* %flags.i, align 4, !dbg !3242, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3242
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3242
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3242

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3241
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3243
  br i1 %tobool, label %if.then, label %if.end, !dbg !3243

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !3245
  store i32 9, i32* %call1, align 4, !dbg !3245, !tbaa !2230
  br label %return, !dbg !3247

if.end:                                           ; preds = %__get_file.exit
  switch i32 %cmd, label %if.else [
    i32 1026, label %if.end16
    i32 1025, label %if.end16
    i32 11, label %if.end16
    i32 9, label %if.end16
    i32 3, label %if.end16
    i32 1, label %if.end16
  ], !dbg !3248

if.else:                                          ; preds = %if.end
  %arraydecay12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !3250
  call void @llvm.va_start(i8* %arraydecay12), !dbg !3250
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !3252
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !3252
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !3252
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3252

vaarg.in_reg:                                     ; preds = %if.else
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !3252
  %reg_save_area = load i8** %2, align 16, !dbg !3252
  %3 = sext i32 %gp_offset to i64, !dbg !3252
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !3252
  %5 = add i32 %gp_offset, 8, !dbg !3252
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !3252
  br label %vaarg.end, !dbg !3252

vaarg.in_mem:                                     ; preds = %if.else
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !3252
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !3252
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !3252
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3252
  br label %vaarg.end, !dbg !3252

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !3252
  %6 = load i32* %vaarg.addr, align 4, !dbg !3252
  call void @llvm.va_end(i8* %arraydecay12), !dbg !3253
  br label %if.end16

if.end16:                                         ; preds = %vaarg.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arg.0 = phi i32 [ %6, %vaarg.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ]
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3254
  %7 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3254, !tbaa !2260
  %tobool17 = icmp eq %struct.exe_disk_file_t* %7, null, !dbg !3254
  br i1 %tobool17, label %if.else34, label %if.then18, !dbg !3254

if.then18:                                        ; preds = %if.end16
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %return
  ], !dbg !3255

sw.bb:                                            ; preds = %if.then18
  %8 = load i32* %flags.i, align 4, !dbg !3256, !tbaa !2241
  %int_cast_to_i64 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3256
  %and = lshr i32 %8, 1, !dbg !3256
  %and.lobit = and i32 %and, 1, !dbg !3256
  br label %return, !dbg !3258

sw.bb23:                                          ; preds = %if.then18
  %9 = load i32* %flags.i, align 4, !dbg !3259, !tbaa !2241
  %and25 = and i32 %9, -3, !dbg !3259
  %and26 = and i32 %arg.0, 1, !dbg !3261
  %tobool27 = icmp eq i32 %and26, 0, !dbg !3261
  %or30 = or i32 %9, 2, !dbg !3263
  %and25.or30 = select i1 %tobool27, i32 %and25, i32 %or30, !dbg !3261
  store i32 %and25.or30, i32* %flags.i, align 4, !dbg !3259, !tbaa !2241
  br label %return, !dbg !3264

sw.default:                                       ; preds = %if.then18
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str119, i64 0, i64 0)) #10, !dbg !3265
  %call33 = call i32* @__errno_location() #1, !dbg !3266
  store i32 22, i32* %call33, align 4, !dbg !3266, !tbaa !2230
  br label %return, !dbg !3267

if.else34:                                        ; preds = %if.end16
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3268
  %10 = load i32* %fd35, align 8, !dbg !3268, !tbaa !2310
  %call36 = call i64 (i64, ...)* @syscall(i64 72, i32 %10, i32 %cmd, i32 %arg.0) #10, !dbg !3268
  %conv = trunc i64 %call36 to i32, !dbg !3268
  %cmp37 = icmp eq i32 %conv, -1, !dbg !3269
  br i1 %cmp37, label %if.then39, label %return, !dbg !3269

if.then39:                                        ; preds = %if.else34
  %call40 = call i32 @klee_get_errno() #10, !dbg !3271
  %call41 = call i32* @__errno_location() #1, !dbg !3271
  store i32 %call40, i32* %call41, align 4, !dbg !3271, !tbaa !2230
  br label %return, !dbg !3271

return:                                           ; preds = %if.then39, %if.else34, %sw.default, %sw.bb23, %sw.bb, %if.then18, %if.then
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb23 ], [ %and.lobit, %sw.bb ], [ -1, %if.then ], [ 0, %if.then18 ], [ -1, %if.then39 ], [ %conv, %if.else34 ]
  ret i32 %retval.0, !dbg !3272
}

; Function Attrs: nounwind uwtable
define i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !3273, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !3275
  %cmp.i = icmp eq i8 %0, 0, !dbg !3275
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !3275

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !3275
  %1 = load i8* %arrayidx2.i, align 1, !dbg !3275, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !3275
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !3275

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3276, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !3276
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !3276

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !3276
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !3276

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3277
  %sext.i = shl i32 %i.027.i, 24, !dbg !3277
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !3277
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !3277
  %add.i = add nsw i32 %conv10.i, 65, !dbg !3277
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !3277
  %inc.i = add i32 %i.027.i, 1, !dbg !3276
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !3277

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !3278
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3278, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !3279
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !3279, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !3279
  %5 = load i64* %st_ino.i, align 8, !dbg !3279, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !3279
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !3278
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !3280
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !3279
  br i1 %or.cond, label %if.end, label %if.then, !dbg !3279

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #10, !dbg !3282
  %call1 = tail call i32* @__errno_location() #1, !dbg !3284
  store i32 2, i32* %call1, align 4, !dbg !3284, !tbaa !2230
  br label %return, !dbg !3285

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !3286
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #10, !dbg !3286
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !3286
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !3289
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !3289
  tail call void @klee_assume(i64 %conv1.i.i) #10, !dbg !3289
  br label %for.cond.i11, !dbg !3290

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !3291, !tbaa !2183
  %sub.i = add i32 %i.0.i, -1, !dbg !3292
  %and.i = and i32 %sub.i, %i.0.i, !dbg !3292
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3292
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !3292

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !3293

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !3294, !tbaa !2183
  br label %__concretize_string.exit, !dbg !3295

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !3296
  store i8 47, i8* %sc.0.i, align 1, !dbg !3296, !tbaa !2183
  br label %for.inc.i, !dbg !3297

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !3298
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #10, !dbg !3298
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !3298
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !3299
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !3299
  tail call void @klee_assume(i64 %conv15.i) #10, !dbg !3299
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !3300
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !3300, !tbaa !2183
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !3301
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !3301

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !3290
  br label %for.cond.i11, !dbg !3290

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 137, i8* %path, %struct.statfs* %buf) #10, !dbg !3288
  %conv = trunc i64 %call3 to i32, !dbg !3288
  %cmp = icmp eq i32 %conv, -1, !dbg !3302
  br i1 %cmp, label %if.then5, label %return, !dbg !3302

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #10, !dbg !3304
  %call7 = tail call i32* @__errno_location() #1, !dbg !3304
  store i32 %call6, i32* %call7, align 4, !dbg !3304, !tbaa !2230
  br label %return, !dbg !3304

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !3305
}

; Function Attrs: nounwind uwtable
define i32 @fstatfs(i32 %fd, %struct.statfs* %buf) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !3306
  br i1 %0, label %if.then.i, label %if.then, !dbg !3306

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3308
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3309
  %1 = load i32* %flags.i, align 4, !dbg !3309, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3309
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3309
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3309

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3308
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3310
  br i1 %tobool, label %if.then, label %if.end, !dbg !3310

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !3312
  store i32 9, i32* %call1, align 4, !dbg !3312, !tbaa !2230
  br label %return, !dbg !3314

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3315
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3315, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !3315
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3315

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !3316
  %call4 = tail call i32* @__errno_location() #1, !dbg !3318
  store i32 9, i32* %call4, align 4, !dbg !3318, !tbaa !2230
  br label %return, !dbg !3319

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3320
  %3 = load i32* %fd5, align 8, !dbg !3320, !tbaa !2310
  %call6 = tail call i64 (i64, ...)* @syscall(i64 138, i32 %3, %struct.statfs* %buf) #10, !dbg !3320
  %conv = trunc i64 %call6 to i32, !dbg !3320
  %cmp = icmp eq i32 %conv, -1, !dbg !3321
  br i1 %cmp, label %if.then8, label %return, !dbg !3321

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #10, !dbg !3323
  %call10 = tail call i32* @__errno_location() #1, !dbg !3323
  store i32 %call9, i32* %call10, align 4, !dbg !3323, !tbaa !2230
  br label %return, !dbg !3323

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !3324
}

; Function Attrs: nounwind uwtable
define i32 @fsync(i32 %fd) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !3325
  br i1 %0, label %if.then.i, label %if.then, !dbg !3325

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !3327
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3328
  %1 = load i32* %flags.i, align 4, !dbg !3328, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3328
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3328
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3328

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3327
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3329
  br i1 %tobool, label %if.then, label %if.else, !dbg !3329

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !3330
  store i32 9, i32* %call1, align 4, !dbg !3330, !tbaa !2230
  br label %return, !dbg !3332

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !3333
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3333, !tbaa !2260
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !3333
  br i1 %tobool2, label %if.else4, label %return, !dbg !3333

if.else4:                                         ; preds = %if.else
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3334
  %3 = load i32* %fd5, align 8, !dbg !3334, !tbaa !2310
  %call6 = tail call i64 (i64, ...)* @syscall(i64 74, i32 %3) #10, !dbg !3334
  %conv = trunc i64 %call6 to i32, !dbg !3334
  %cmp = icmp eq i32 %conv, -1, !dbg !3335
  br i1 %cmp, label %if.then8, label %return, !dbg !3335

if.then8:                                         ; preds = %if.else4
  %call9 = tail call i32 @klee_get_errno() #10, !dbg !3337
  %call10 = tail call i32* @__errno_location() #1, !dbg !3337
  store i32 %call9, i32* %call10, align 4, !dbg !3337, !tbaa !2230
  br label %return, !dbg !3337

return:                                           ; preds = %if.then8, %if.else4, %if.else, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.else ], [ -1, %if.then8 ], [ %conv, %if.else4 ]
  ret i32 %retval.0, !dbg !3338
}

; Function Attrs: nounwind uwtable
define i32 @dup2(i32 %oldfd, i32 %newfd) #6 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !3339
  br i1 %0, label %if.then.i, label %if.then, !dbg !3339

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !3341
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3342
  %1 = load i32* %flags.i, align 4, !dbg !3342, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3342
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3342
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !3342

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3341
  %tobool = icmp ne %struct.exe_file_t* %arrayidx.i, null, !dbg !3343
  %cmp = icmp sgt i32 %newfd, -1, !dbg !3343
  %or.cond = and i1 %tobool, %cmp, !dbg !3343
  %cmp1 = icmp slt i32 %newfd, 32, !dbg !3343
  %or.cond8 = and i1 %or.cond, %cmp1, !dbg !3343
  br i1 %or.cond8, label %if.else, label %if.then, !dbg !3343

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call2 = tail call i32* @__errno_location() #1, !dbg !3344
  store i32 9, i32* %call2, align 4, !dbg !3344, !tbaa !2230
  br label %return, !dbg !3346

if.else:                                          ; preds = %__get_file.exit
  %idxprom = sext i32 %newfd to i64, !dbg !3347
  %arrayidx = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, !dbg !3347
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, i32 1, !dbg !3348
  %2 = load i32* %flags, align 4, !dbg !3348, !tbaa !2241
  %and = and i32 %2, 1, !dbg !3348
  %tobool3 = icmp eq i32 %and, 0, !dbg !3348
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !3348

if.then4:                                         ; preds = %if.else
  %3 = load i32* @close.n_calls, align 4, !dbg !3350, !tbaa !2230
  %inc.i = add nsw i32 %3, 1, !dbg !3350
  store i32 %inc.i, i32* @close.n_calls, align 4, !dbg !3350, !tbaa !2230
  %4 = icmp ugt i32 %newfd, 31, !dbg !3351
  %tobool.i16 = icmp eq %struct.exe_file_t* %arrayidx, null, !dbg !3353
  %or.cond25 = or i1 %4, %tobool.i16, !dbg !3351
  br i1 %or.cond25, label %if.then.i17, label %if.end.i, !dbg !3351

if.then.i17:                                      ; preds = %if.then4
  %call1.i = tail call i32* @__errno_location() #1, !dbg !3354
  store i32 9, i32* %call1.i, align 4, !dbg !3354, !tbaa !2230
  br label %if.end, !dbg !3355

if.end.i:                                         ; preds = %if.then4
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3356, !tbaa !2497
  %tobool2.i = icmp eq i32 %5, 0, !dbg !3356
  br i1 %tobool2.i, label %if.end5.i, label %land.lhs.true.i, !dbg !3356

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !3356, !tbaa !2498
  %7 = load i32* %6, align 4, !dbg !3356, !tbaa !2230
  %cmp.i = icmp eq i32 %7, %inc.i, !dbg !3356
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i, !dbg !3356

if.then3.i:                                       ; preds = %land.lhs.true.i
  %dec.i = add i32 %5, -1, !dbg !3357
  store i32 %dec.i, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3357, !tbaa !2497
  %call4.i = tail call i32* @__errno_location() #1, !dbg !3358
  store i32 5, i32* %call4.i, align 4, !dbg !3358, !tbaa !2230
  br label %if.end, !dbg !3359

if.end5.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %8 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !3360
  %9 = call i8* @memset(i8* %8, i32 0, i64 24)
  br label %if.end, !dbg !3361

if.end:                                           ; preds = %if.end5.i, %if.then3.i, %if.then.i17, %if.else
  %10 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !3362
  %11 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !3362
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 24)
  %13 = load i32* %flags, align 4, !dbg !3363, !tbaa !2241
  %and7 = and i32 %13, -3, !dbg !3363
  store i32 %and7, i32* %flags, align 4, !dbg !3363, !tbaa !2241
  br label %return, !dbg !3364

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %newfd, %if.end ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !3365
}

; Function Attrs: nounwind uwtable
define i32 @dup(i32 %oldfd) #6 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !3366
  br i1 %0, label %if.then.i, label %if.then, !dbg !3366

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !3368
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !3369
  %1 = load i32* %flags.i, align 4, !dbg !3369, !tbaa !2241
  %and.i = and i32 %1, 1, !dbg !3369
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3369
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !3368
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3370
  %or.cond = or i1 %tobool.i, %tobool, !dbg !3369
  br i1 %or.cond, label %if.then, label %for.body, !dbg !3369

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !3371
  store i32 9, i32* %call1, align 4, !dbg !3371, !tbaa !2230
  br label %return, !dbg !3373

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !3374
  %cmp = icmp slt i32 %2, 32, !dbg !3374
  br i1 %cmp, label %for.body, label %for.end, !dbg !3374

for.body:                                         ; preds = %for.cond, %if.then.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then.i ]
  %fd.015 = phi i32 [ %inc, %for.cond ], [ 0, %if.then.i ]
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !3376
  %3 = load i32* %flags, align 4, !dbg !3376, !tbaa !2241
  %and = and i32 %3, 1, !dbg !3376
  %tobool2 = icmp eq i32 %and, 0, !dbg !3376
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3374
  %inc = add nsw i32 %fd.015, 1, !dbg !3374
  br i1 %tobool2, label %for.end, label %for.cond, !dbg !3376

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.015, %for.body ], [ %inc, %for.cond ]
  %cmp4 = icmp eq i32 %fd.0.lcssa, 32, !dbg !3378
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !3378

if.then5:                                         ; preds = %for.end
  %call6 = tail call i32* @__errno_location() #1, !dbg !3380
  store i32 24, i32* %call6, align 4, !dbg !3380, !tbaa !2230
  br label %return, !dbg !3382

if.else7:                                         ; preds = %for.end
  %call8 = tail call i32 @dup2(i32 %oldfd, i32 %fd.0.lcssa) #10, !dbg !3383
  br label %return, !dbg !3383

return:                                           ; preds = %if.else7, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %call8, %if.else7 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !3385
}

; Function Attrs: nounwind uwtable
define i32 @rmdir(i8* nocapture readonly %pathname) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !3386, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !3388
  %cmp.i = icmp eq i8 %0, 0, !dbg !3388
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !3388

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !3388
  %1 = load i8* %arrayidx2.i, align 1, !dbg !3388, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !3388
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !3388

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3389, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !3389
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !3389

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !3389
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !3389

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3390
  %sext.i = shl i32 %i.027.i, 24, !dbg !3390
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !3390
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !3390
  %add.i = add nsw i32 %conv10.i, 65, !dbg !3390
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !3390
  %inc.i = add i32 %i.027.i, 1, !dbg !3389
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !3390

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !3391
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3391, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !3392
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !3392, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !3392
  %5 = load i64* %st_ino.i, align 8, !dbg !3392, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !3392
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !3391
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !3393
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !3392
  br i1 %or.cond, label %if.end, label %if.then, !dbg !3392

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !3395
  %6 = load i32* %st_mode, align 4, !dbg !3395, !tbaa !2274
  %and = and i32 %6, 61440, !dbg !3395
  %cmp = icmp eq i32 %and, 16384, !dbg !3395
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3395

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !3398, !tbaa !2200
  br label %return, !dbg !3400

if.else:                                          ; preds = %if.then
  %call3 = tail call i32* @__errno_location() #1, !dbg !3401
  store i32 20, i32* %call3, align 4, !dbg !3401, !tbaa !2230
  br label %return, !dbg !3403

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2210, i64 0, i64 0)) #10, !dbg !3404
  %call4 = tail call i32* @__errno_location() #1, !dbg !3405
  store i32 1, i32* %call4, align 4, !dbg !3405, !tbaa !2230
  br label %return, !dbg !3406

return:                                           ; preds = %if.end, %if.else, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !3407
}

; Function Attrs: nounwind uwtable
define i32 @unlink(i8* nocapture readonly %pathname) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !3408, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !3410
  %cmp.i = icmp eq i8 %0, 0, !dbg !3410
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !3410

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !3410
  %1 = load i8* %arrayidx2.i, align 1, !dbg !3410, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !3410
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !3410

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3411, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !3411
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !3411

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !3411
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !3411

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3412
  %sext.i = shl i32 %i.027.i, 24, !dbg !3412
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !3412
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !3412
  %add.i = add nsw i32 %conv10.i, 65, !dbg !3412
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !3412
  %inc.i = add i32 %i.027.i, 1, !dbg !3411
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !3412

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !3413
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3413, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !3414
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !3414, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !3414
  %5 = load i64* %st_ino.i, align 8, !dbg !3414, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !3414
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !3413
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !3415
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !3414
  br i1 %or.cond, label %if.end, label %if.then, !dbg !3414

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !3417
  %6 = load i32* %st_mode, align 4, !dbg !3417, !tbaa !2274
  %and = and i32 %6, 61440, !dbg !3417
  %cmp = icmp eq i32 %and, 32768, !dbg !3417
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3417

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !3420, !tbaa !2200
  br label %return, !dbg !3422

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !3423
  %call8 = tail call i32* @__errno_location() #1, !dbg !3425
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !3423

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !3425, !tbaa !2230
  br label %return, !dbg !3427

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !3428, !tbaa !2230
  br label %return, !dbg !3430

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2210, i64 0, i64 0)) #10, !dbg !3431
  %call11 = tail call i32* @__errno_location() #1, !dbg !3432
  store i32 1, i32* %call11, align 4, !dbg !3432, !tbaa !2230
  br label %return, !dbg !3433

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !3434
}

; Function Attrs: nounwind uwtable
define i32 @unlinkat(i32 %dirfd, i8* nocapture readonly %pathname, i32 %flags) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !3435, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !3437
  %cmp.i = icmp eq i8 %0, 0, !dbg !3437
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !3437

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !3437
  %1 = load i8* %arrayidx2.i, align 1, !dbg !3437, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !3437
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !3437

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3438, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !3438
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !3438

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !3438
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !3438

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3439
  %sext.i = shl i32 %i.027.i, 24, !dbg !3439
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !3439
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !3439
  %add.i = add nsw i32 %conv10.i, 65, !dbg !3439
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !3439
  %inc.i = add i32 %i.027.i, 1, !dbg !3438
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !3439

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !3440
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3440, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !3441
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !3441, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !3441
  %5 = load i64* %st_ino.i, align 8, !dbg !3441, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !3441
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !3440
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !3442
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !3441
  br i1 %or.cond, label %if.end, label %if.then, !dbg !3441

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !3444
  %6 = load i32* %st_mode, align 4, !dbg !3444, !tbaa !2274
  %and = and i32 %6, 61440, !dbg !3444
  %cmp = icmp eq i32 %and, 32768, !dbg !3444
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3444

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !3447, !tbaa !2200
  br label %return, !dbg !3449

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !3450
  %call8 = tail call i32* @__errno_location() #1, !dbg !3452
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !3450

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !3452, !tbaa !2230
  br label %return, !dbg !3454

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !3455, !tbaa !2230
  br label %return, !dbg !3457

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2210, i64 0, i64 0)) #10, !dbg !3458
  %call11 = tail call i32* @__errno_location() #1, !dbg !3459
  store i32 1, i32* %call11, align 4, !dbg !3459, !tbaa !2230
  br label %return, !dbg !3460

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !3461
}

; Function Attrs: nounwind uwtable
define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !3462, !tbaa !2183
  %conv.i = sext i8 %0 to i32, !dbg !3464
  %cmp.i = icmp eq i8 %0, 0, !dbg !3464
  br i1 %cmp.i, label %if.else20, label %lor.lhs.false.i, !dbg !3464

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !3464
  %1 = load i8* %arrayidx2.i, align 1, !dbg !3464, !tbaa !2183
  %cmp4.i = icmp eq i8 %1, 0, !dbg !3464
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else20, !dbg !3464

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3465, !tbaa !2189
  %cmp626.i = icmp eq i32 %2, 0, !dbg !3465
  br i1 %cmp626.i, label %if.else20, label %for.body.i, !dbg !3465

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !3465
  br i1 %cmp6.i, label %for.body.i, label %if.else20, !dbg !3465

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3466
  %sext.i = shl i32 %i.027.i, 24, !dbg !3466
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !3466
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !3466
  %add.i = add nsw i32 %conv10.i, 65, !dbg !3466
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !3466
  %inc.i = add i32 %i.027.i, 1, !dbg !3465
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !3466

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !3467
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3467, !tbaa !2195
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !3468
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !3468, !tbaa !2198
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !3468
  %5 = load i64* %st_ino.i, align 8, !dbg !3468, !tbaa !2200
  %cmp15.i = icmp eq i64 %5, 0, !dbg !3468
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !3467
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !3469
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !3468
  br i1 %or.cond, label %if.else20, label %if.then, !dbg !3468

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !3470
  %6 = load i32* %st_mode, align 4, !dbg !3470, !tbaa !2274
  %and = and i32 %6, 61440, !dbg !3470
  %cmp = icmp eq i32 %and, 40960, !dbg !3470
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3470

if.then1:                                         ; preds = %if.then
  store i8 %0, i8* %buf, align 1, !dbg !3473, !tbaa !2183
  %cmp3 = icmp ugt i64 %bufsize, 1, !dbg !3475
  br i1 %cmp3, label %if.end, label %if.end17, !dbg !3475

if.end:                                           ; preds = %if.then1
  %arrayidx5 = getelementptr inbounds i8* %buf, i64 1, !dbg !3475
  store i8 46, i8* %arrayidx5, align 1, !dbg !3475, !tbaa !2183
  %cmp6 = icmp ugt i64 %bufsize, 2, !dbg !3477
  br i1 %cmp6, label %if.end9, label %if.end17, !dbg !3477

if.end9:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8* %buf, i64 2, !dbg !3477
  store i8 108, i8* %arrayidx8, align 1, !dbg !3477, !tbaa !2183
  %cmp10 = icmp ugt i64 %bufsize, 3, !dbg !3479
  br i1 %cmp10, label %if.end13, label %if.end17, !dbg !3479

if.end13:                                         ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds i8* %buf, i64 3, !dbg !3479
  store i8 110, i8* %arrayidx12, align 1, !dbg !3479, !tbaa !2183
  %cmp14 = icmp ugt i64 %bufsize, 4, !dbg !3481
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !3481

if.then15:                                        ; preds = %if.end13
  %arrayidx16 = getelementptr inbounds i8* %buf, i64 4, !dbg !3481
  store i8 107, i8* %arrayidx16, align 1, !dbg !3481, !tbaa !2183
  br label %if.end17, !dbg !3481

if.end17:                                         ; preds = %if.then15, %if.end13, %if.end9, %if.end, %if.then1
  %cmp18 = icmp ugt i64 %bufsize, 5, !dbg !3483
  %cond = select i1 %cmp18, i64 5, i64 %bufsize, !dbg !3483
  br label %return, !dbg !3483

if.else:                                          ; preds = %if.then
  %call19 = tail call i32* @__errno_location() #1, !dbg !3484
  store i32 22, i32* %call19, align 4, !dbg !3484, !tbaa !2230
  br label %return, !dbg !3486

if.else20:                                        ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %call21 = tail call i64 (i64, ...)* @syscall(i64 89, i8* %path, i8* %buf, i64 %bufsize) #10, !dbg !3487
  %conv = trunc i64 %call21 to i32, !dbg !3487
  %cmp22 = icmp eq i32 %conv, -1, !dbg !3488
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !3488

if.then24:                                        ; preds = %if.else20
  %call25 = tail call i32 @klee_get_errno() #10, !dbg !3490
  %call26 = tail call i32* @__errno_location() #1, !dbg !3490
  store i32 %call25, i32* %call26, align 4, !dbg !3490, !tbaa !2230
  br label %if.end27, !dbg !3490

if.end27:                                         ; preds = %if.then24, %if.else20
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !3491
  %sext = shl i64 %call21, 32, !dbg !3491
  %int_cast_to_i643 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i643), !dbg !3491
  %conv28 = ashr exact i64 %sext, 32, !dbg !3491
  br label %return, !dbg !3491

return:                                           ; preds = %if.end27, %if.else, %if.end17
  %retval.0 = phi i64 [ %cond, %if.end17 ], [ -1, %if.else ], [ %conv28, %if.end27 ]
  ret i64 %retval.0, !dbg !3492
}

; Function Attrs: nounwind uwtable
define i32 @select(i32 %nfds, %struct.fd_set* %read, %struct.fd_set* %write, %struct.fd_set* %except, %struct.timeval* nocapture readnone %timeout) #6 {
entry:
  %in_read = alloca %struct.fd_set, align 8
  %in_write = alloca %struct.fd_set, align 8
  %in_except = alloca %struct.fd_set, align 8
  %os_read = alloca %struct.fd_set, align 8
  %os_write = alloca %struct.fd_set, align 8
  %os_except = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.fd_set* %in_read to i8*, !dbg !3493
  %1 = bitcast %struct.fd_set* %in_write to i8*, !dbg !3493
  %2 = bitcast %struct.fd_set* %in_except to i8*, !dbg !3493
  %3 = bitcast %struct.fd_set* %os_read to i8*, !dbg !3493
  %4 = bitcast %struct.fd_set* %os_write to i8*, !dbg !3493
  %5 = bitcast %struct.fd_set* %os_except to i8*, !dbg !3493
  %tobool = icmp ne %struct.fd_set* %read, null, !dbg !3494
  br i1 %tobool, label %if.then, label %if.else, !dbg !3494

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.fd_set* %read to i8*, !dbg !3496
  %7 = call i8* @memcpy(i8* %0, i8* %6, i64 128)
  %8 = call i8* @memset(i8* %6, i32 0, i64 128)
  br label %if.end, !dbg !3498

if.else:                                          ; preds = %entry
  %9 = call i8* @memset(i8* %0, i32 0, i64 128)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool1 = icmp ne %struct.fd_set* %write, null, !dbg !3499
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !3499

if.then2:                                         ; preds = %if.end
  %10 = bitcast %struct.fd_set* %write to i8*, !dbg !3501
  %11 = call i8* @memcpy(i8* %1, i8* %10, i64 128)
  %12 = call i8* @memset(i8* %10, i32 0, i64 128)
  br label %if.end4, !dbg !3503

if.else3:                                         ; preds = %if.end
  %13 = call i8* @memset(i8* %1, i32 0, i64 128)
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %tobool5 = icmp ne %struct.fd_set* %except, null, !dbg !3504
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !3504

if.then6:                                         ; preds = %if.end4
  %14 = bitcast %struct.fd_set* %except to i8*, !dbg !3506
  %15 = call i8* @memcpy(i8* %2, i8* %14, i64 128)
  %16 = call i8* @memset(i8* %14, i32 0, i64 128)
  br label %if.end8, !dbg !3508

if.else7:                                         ; preds = %if.end4
  %17 = call i8* @memset(i8* %2, i32 0, i64 128)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %18 = call i8* @memset(i8* %3, i32 0, i64 128)
  %19 = call i8* @memset(i8* %4, i32 0, i64 128)
  %20 = call i8* @memset(i8* %5, i32 0, i64 128)
  %cmp367 = icmp sgt i32 %nfds, 0, !dbg !3509
  br i1 %cmp367, label %for.body, label %cleanup, !dbg !3509

for.body:                                         ; preds = %for.inc, %if.end8
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %for.inc ], [ 0, %if.end8 ]
  %count.0369 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end8 ]
  %os_nfds.0368 = phi i32 [ %os_nfds.1, %for.inc ], [ 0, %if.end8 ]
  %21 = trunc i64 %indvars.iv373 to i32, !dbg !3510
  %int_cast_to_i64 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !3510
  %div = sdiv i32 %21, 64, !dbg !3510
  %idxprom = sext i32 %div to i64, !dbg !3510
  %arrayidx = getelementptr inbounds %struct.fd_set* %in_read, i64 0, i32 0, i64 %idxprom, !dbg !3510
  %22 = load i64* %arrayidx, align 8, !dbg !3510, !tbaa !3511
  %rem347 = and i32 %21, 63, !dbg !3510
  %int_cast_to_i6410 = zext i32 %rem347 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6410), !dbg !3510
  %shl = shl i32 1, %rem347, !dbg !3510
  %conv = sext i32 %shl to i64, !dbg !3510
  %and = and i64 %22, %conv, !dbg !3510
  %tobool9 = icmp eq i64 %and, 0, !dbg !3510
  br i1 %tobool9, label %lor.lhs.false, label %if.then29, !dbg !3510

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx13 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !3510
  %23 = load i64* %arrayidx13, align 8, !dbg !3510, !tbaa !3511
  %and17 = and i64 %23, %conv, !dbg !3510
  %tobool18 = icmp eq i64 %and17, 0, !dbg !3510
  br i1 %tobool18, label %lor.lhs.false19, label %if.then29, !dbg !3510

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %arrayidx23 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !3510
  %24 = load i64* %arrayidx23, align 8, !dbg !3510, !tbaa !3511
  %and27 = and i64 %24, %conv, !dbg !3510
  %tobool28 = icmp eq i64 %and27, 0, !dbg !3510
  br i1 %tobool28, label %for.inc, label %if.then29, !dbg !3510

if.then29:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %for.body
  %25 = icmp ult i32 %21, 32, !dbg !3512
  br i1 %25, label %if.then.i, label %if.then31, !dbg !3512

if.then.i:                                        ; preds = %if.then29
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 1, !dbg !3514
  %26 = load i32* %flags.i, align 4, !dbg !3514, !tbaa !2241
  %and.i = and i32 %26, 1, !dbg !3514
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !3514
  br i1 %tobool.i, label %if.then31, label %__get_file.exit, !dbg !3514

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, !dbg !3515
  %tobool30 = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !3516
  br i1 %tobool30, label %if.then31, label %if.else33, !dbg !3516

if.then31:                                        ; preds = %__get_file.exit, %if.then.i, %if.then29
  %call32 = call i32* @__errno_location() #1, !dbg !3518
  store i32 9, i32* %call32, align 4, !dbg !3518, !tbaa !2230
  br label %cleanup, !dbg !3520

if.else33:                                        ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 3, !dbg !3521
  %27 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !3521, !tbaa !2260
  %tobool34 = icmp eq %struct.exe_disk_file_t* %27, null, !dbg !3521
  %tobool44 = icmp ne i64 %and, 0, !dbg !3523
  br i1 %tobool34, label %if.else92, label %if.then35, !dbg !3521

if.then35:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then45, label %if.end53, !dbg !3523

if.then45:                                        ; preds = %if.then35
  %arrayidx52 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom, !dbg !3523
  %28 = load i64* %arrayidx52, align 8, !dbg !3523, !tbaa !3511
  %or = or i64 %28, %conv, !dbg !3523
  store i64 %or, i64* %arrayidx52, align 8, !dbg !3523, !tbaa !3511
  br label %if.end53, !dbg !3523

if.end53:                                         ; preds = %if.then45, %if.then35
  %arrayidx57 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !3526
  %29 = load i64* %arrayidx57, align 8, !dbg !3526, !tbaa !3511
  %and61 = and i64 %29, %conv, !dbg !3526
  %tobool62 = icmp eq i64 %and61, 0, !dbg !3526
  br i1 %tobool62, label %if.end72, label %if.then63, !dbg !3526

if.then63:                                        ; preds = %if.end53
  %arrayidx70 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom, !dbg !3526
  %30 = load i64* %arrayidx70, align 8, !dbg !3526, !tbaa !3511
  %or71 = or i64 %30, %conv, !dbg !3526
  store i64 %or71, i64* %arrayidx70, align 8, !dbg !3526, !tbaa !3511
  br label %if.end72, !dbg !3526

if.end72:                                         ; preds = %if.then63, %if.end53
  %arrayidx76 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !3528
  %31 = load i64* %arrayidx76, align 8, !dbg !3528, !tbaa !3511
  %and80 = and i64 %31, %conv, !dbg !3528
  %tobool81 = icmp eq i64 %and80, 0, !dbg !3528
  br i1 %tobool81, label %if.end91, label %if.then82, !dbg !3528

if.then82:                                        ; preds = %if.end72
  %arrayidx89 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom, !dbg !3528
  %32 = load i64* %arrayidx89, align 8, !dbg !3528, !tbaa !3511
  %or90 = or i64 %32, %conv, !dbg !3528
  store i64 %or90, i64* %arrayidx89, align 8, !dbg !3528, !tbaa !3511
  br label %if.end91, !dbg !3528

if.end91:                                         ; preds = %if.then82, %if.end72
  %inc = add nsw i32 %count.0369, 1, !dbg !3530
  br label %for.inc, !dbg !3531

if.else92:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then102, label %if.end112, !dbg !3532

if.then102:                                       ; preds = %if.else92
  %fd = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3532
  %33 = load i32* %fd, align 8, !dbg !3532, !tbaa !2310
  %rem103350 = and i32 %33, 63, !dbg !3532
  %int_cast_to_i6411 = zext i32 %rem103350 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6411), !dbg !3532
  %shl104 = shl i32 1, %rem103350, !dbg !3532
  %conv105 = sext i32 %shl104 to i64, !dbg !3532
  %int_cast_to_i641 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !3532
  %div107 = sdiv i32 %33, 64, !dbg !3532
  %idxprom108 = sext i32 %div107 to i64, !dbg !3532
  %arrayidx110 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom108, !dbg !3532
  %34 = load i64* %arrayidx110, align 8, !dbg !3532, !tbaa !3511
  %or111 = or i64 %conv105, %34, !dbg !3532
  store i64 %or111, i64* %arrayidx110, align 8, !dbg !3532, !tbaa !3511
  br label %if.end112, !dbg !3532

if.end112:                                        ; preds = %if.then102, %if.else92
  %arrayidx116 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !3535
  %35 = load i64* %arrayidx116, align 8, !dbg !3535, !tbaa !3511
  %and120 = and i64 %35, %conv, !dbg !3535
  %tobool121 = icmp eq i64 %and120, 0, !dbg !3535
  br i1 %tobool121, label %if.end133, label %if.then122, !dbg !3535

if.then122:                                       ; preds = %if.end112
  %fd123 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !3535
  %36 = load i32* %fd123, align 8, !dbg !3535, !tbaa !2310
  %rem124349 = and i32 %36, 63, !dbg !3535
  %int_cast_to_i6412 = zext i32 %rem124349 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6412), !dbg !3535
  %shl125 = shl i32 1, %rem124349, !dbg !3535
  %conv126 = sext i32 %shl125 to i64, !dbg !3535
  %int_cast_to_i642 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !3535
  %div128 = sdiv i32 %36, 64, !dbg !3535
  %idxprom129 = sext i32 %div128 to i64, !dbg !3535
  %arrayidx131 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom129, !dbg !3535
  %37 = load i64* %arrayidx131, align 8, !dbg !3535, !tbaa !3511
  %or132 = or i64 %conv126, %37, !dbg !3535
  store i64 %or132, i64* %arrayidx131, align 8, !dbg !3535, !tbaa !3511
  br label %if.end133, !dbg !3535

if.end133:                                        ; preds = %if.then122, %if.end112
  %arrayidx137 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !3537
  %38 = load i64* %arrayidx137, align 8, !dbg !3537, !tbaa !3511
  %and141 = and i64 %38, %conv, !dbg !3537
  %tobool142 = icmp eq i64 %and141, 0, !dbg !3537
  %fd155.phi.trans.insert = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0
  %.pre = load i32* %fd155.phi.trans.insert, align 8, !dbg !3539, !tbaa !2310
  br i1 %tobool142, label %if.end154, label %if.then143, !dbg !3537

if.then143:                                       ; preds = %if.end133
  %rem145348 = and i32 %.pre, 63, !dbg !3537
  %int_cast_to_i6413 = zext i32 %rem145348 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6413), !dbg !3537
  %shl146 = shl i32 1, %rem145348, !dbg !3537
  %conv147 = sext i32 %shl146 to i64, !dbg !3537
  %int_cast_to_i643 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !3537
  %div149 = sdiv i32 %.pre, 64, !dbg !3537
  %idxprom150 = sext i32 %div149 to i64, !dbg !3537
  %arrayidx152 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom150, !dbg !3537
  %39 = load i64* %arrayidx152, align 8, !dbg !3537, !tbaa !3511
  %or153 = or i64 %conv147, %39, !dbg !3537
  store i64 %or153, i64* %arrayidx152, align 8, !dbg !3537, !tbaa !3511
  br label %if.end154, !dbg !3537

if.end154:                                        ; preds = %if.then143, %if.end133
  %cmp156 = icmp slt i32 %.pre, %os_nfds.0368, !dbg !3539
  %add = add nsw i32 %.pre, 1, !dbg !3539
  %os_nfds.0.add = select i1 %cmp156, i32 %os_nfds.0368, i32 %add, !dbg !3539
  br label %for.inc, !dbg !3539

for.inc:                                          ; preds = %if.end154, %if.end91, %lor.lhs.false19
  %os_nfds.1 = phi i32 [ %os_nfds.0368, %if.end91 ], [ %os_nfds.0368, %lor.lhs.false19 ], [ %os_nfds.0.add, %if.end154 ]
  %count.1 = phi i32 [ %inc, %if.end91 ], [ %count.0369, %lor.lhs.false19 ], [ %count.0369, %if.end154 ]
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1, !dbg !3509
  %40 = trunc i64 %indvars.iv.next374 to i32, !dbg !3509
  %cmp = icmp slt i32 %40, %nfds, !dbg !3509
  br i1 %cmp, label %for.body, label %for.end, !dbg !3509

for.end:                                          ; preds = %for.inc
  %cmp165 = icmp sgt i32 %os_nfds.1, 0, !dbg !3541
  br i1 %cmp165, label %if.then167, label %cleanup, !dbg !3541

if.then167:                                       ; preds = %for.end
  %41 = bitcast %struct.timeval* %tv to i8*, !dbg !3542
  %42 = call i8* @memset(i8* %41, i32 0, i64 16)
  %call168 = call i64 (i64, ...)* @syscall(i64 23, i32 %os_nfds.1, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timeval* %tv) #10, !dbg !3543
  %conv169 = trunc i64 %call168 to i32, !dbg !3543
  %cmp170 = icmp eq i32 %conv169, -1, !dbg !3544
  br i1 %cmp170, label %if.then172, label %if.else178, !dbg !3544

if.then172:                                       ; preds = %if.then167
  %tobool173 = icmp eq i32 %count.1, 0, !dbg !3545
  br i1 %tobool173, label %if.then174, label %cleanup, !dbg !3545

if.then174:                                       ; preds = %if.then172
  %call175 = call i32 @klee_get_errno() #10, !dbg !3548
  %call176 = call i32* @__errno_location() #1, !dbg !3548
  store i32 %call175, i32* %call176, align 4, !dbg !3548, !tbaa !2230
  br label %cleanup, !dbg !3550

if.else178:                                       ; preds = %if.then167
  %add179 = add nsw i32 %conv169, %count.1, !dbg !3551
  br i1 %cmp367, label %for.body183, label %cleanup, !dbg !3552

for.body183:                                      ; preds = %for.inc260, %if.else178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc260 ], [ 0, %if.else178 ]
  %43 = trunc i64 %indvars.iv to i32, !dbg !3553
  %44 = icmp ult i32 %43, 32, !dbg !3553
  br i1 %44, label %if.then.i355, label %for.inc260, !dbg !3553

if.then.i355:                                     ; preds = %for.body183
  %flags.i352 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !3555
  %45 = load i32* %flags.i352, align 4, !dbg !3555, !tbaa !2241
  %and.i353 = and i32 %45, 1, !dbg !3555
  %tobool.i354 = icmp eq i32 %and.i353, 0, !dbg !3555
  br i1 %tobool.i354, label %for.inc260, label %__get_file.exit359, !dbg !3555

__get_file.exit359:                               ; preds = %if.then.i355
  %arrayidx.i356 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, !dbg !3556
  %tobool186 = icmp eq %struct.exe_file_t* %arrayidx.i356, null, !dbg !3557
  br i1 %tobool186, label %for.inc260, label %land.lhs.true, !dbg !3557

land.lhs.true:                                    ; preds = %__get_file.exit359
  %dfile187 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 3, !dbg !3557
  %46 = load %struct.exe_disk_file_t** %dfile187, align 8, !dbg !3557, !tbaa !2260
  %tobool188 = icmp eq %struct.exe_disk_file_t* %46, null, !dbg !3557
  br i1 %tobool188, label %if.then189, label %for.inc260, !dbg !3557

if.then189:                                       ; preds = %land.lhs.true
  br i1 %tobool, label %land.lhs.true191, label %if.end212, !dbg !3559

land.lhs.true191:                                 ; preds = %if.then189
  %fd192 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !3559
  %47 = load i32* %fd192, align 8, !dbg !3559, !tbaa !2310
  %int_cast_to_i644 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !3559
  %div193 = sdiv i32 %47, 64, !dbg !3559
  %idxprom194 = sext i32 %div193 to i64, !dbg !3559
  %arrayidx196 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom194, !dbg !3559
  %48 = load i64* %arrayidx196, align 8, !dbg !3559, !tbaa !3511
  %rem198345 = and i32 %47, 63, !dbg !3559
  %int_cast_to_i6414 = zext i32 %rem198345 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6414), !dbg !3559
  %shl199 = shl i32 1, %rem198345, !dbg !3559
  %conv200 = sext i32 %shl199 to i64, !dbg !3559
  %and201 = and i64 %conv200, %48, !dbg !3559
  %tobool202 = icmp eq i64 %and201, 0, !dbg !3559
  br i1 %tobool202, label %if.end212, label %if.then203, !dbg !3559

if.then203:                                       ; preds = %land.lhs.true191
  %rem204346 = and i32 %43, 63, !dbg !3559
  %int_cast_to_i6415 = zext i32 %rem204346 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6415), !dbg !3559
  %shl205 = shl i32 1, %rem204346, !dbg !3559
  %conv206 = sext i32 %shl205 to i64, !dbg !3559
  %int_cast_to_i645 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !3559
  %div207 = sdiv i32 %43, 64, !dbg !3559
  %idxprom208 = sext i32 %div207 to i64, !dbg !3559
  %arrayidx210 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom208, !dbg !3559
  %49 = load i64* %arrayidx210, align 8, !dbg !3559, !tbaa !3511
  %or211 = or i64 %49, %conv206, !dbg !3559
  store i64 %or211, i64* %arrayidx210, align 8, !dbg !3559, !tbaa !3511
  br label %if.end212, !dbg !3559

if.end212:                                        ; preds = %if.then203, %land.lhs.true191, %if.then189
  br i1 %tobool1, label %land.lhs.true214, label %if.end235, !dbg !3562

land.lhs.true214:                                 ; preds = %if.end212
  %fd215 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !3562
  %50 = load i32* %fd215, align 8, !dbg !3562, !tbaa !2310
  %int_cast_to_i646 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !3562
  %div216 = sdiv i32 %50, 64, !dbg !3562
  %idxprom217 = sext i32 %div216 to i64, !dbg !3562
  %arrayidx219 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom217, !dbg !3562
  %51 = load i64* %arrayidx219, align 8, !dbg !3562, !tbaa !3511
  %rem221343 = and i32 %50, 63, !dbg !3562
  %int_cast_to_i6416 = zext i32 %rem221343 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6416), !dbg !3562
  %shl222 = shl i32 1, %rem221343, !dbg !3562
  %conv223 = sext i32 %shl222 to i64, !dbg !3562
  %and224 = and i64 %conv223, %51, !dbg !3562
  %tobool225 = icmp eq i64 %and224, 0, !dbg !3562
  br i1 %tobool225, label %if.end235, label %if.then226, !dbg !3562

if.then226:                                       ; preds = %land.lhs.true214
  %rem227344 = and i32 %43, 63, !dbg !3562
  %int_cast_to_i6417 = zext i32 %rem227344 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6417), !dbg !3562
  %shl228 = shl i32 1, %rem227344, !dbg !3562
  %conv229 = sext i32 %shl228 to i64, !dbg !3562
  %int_cast_to_i647 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !3562
  %div230 = sdiv i32 %43, 64, !dbg !3562
  %idxprom231 = sext i32 %div230 to i64, !dbg !3562
  %arrayidx233 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom231, !dbg !3562
  %52 = load i64* %arrayidx233, align 8, !dbg !3562, !tbaa !3511
  %or234 = or i64 %52, %conv229, !dbg !3562
  store i64 %or234, i64* %arrayidx233, align 8, !dbg !3562, !tbaa !3511
  br label %if.end235, !dbg !3562

if.end235:                                        ; preds = %if.then226, %land.lhs.true214, %if.end212
  br i1 %tobool5, label %land.lhs.true237, label %for.inc260, !dbg !3564

land.lhs.true237:                                 ; preds = %if.end235
  %fd238 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !3564
  %53 = load i32* %fd238, align 8, !dbg !3564, !tbaa !2310
  %int_cast_to_i648 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !3564
  %div239 = sdiv i32 %53, 64, !dbg !3564
  %idxprom240 = sext i32 %div239 to i64, !dbg !3564
  %arrayidx242 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom240, !dbg !3564
  %54 = load i64* %arrayidx242, align 8, !dbg !3564, !tbaa !3511
  %rem244341 = and i32 %53, 63, !dbg !3564
  %int_cast_to_i6418 = zext i32 %rem244341 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6418), !dbg !3564
  %shl245 = shl i32 1, %rem244341, !dbg !3564
  %conv246 = sext i32 %shl245 to i64, !dbg !3564
  %and247 = and i64 %conv246, %54, !dbg !3564
  %tobool248 = icmp eq i64 %and247, 0, !dbg !3564
  br i1 %tobool248, label %for.inc260, label %if.then249, !dbg !3564

if.then249:                                       ; preds = %land.lhs.true237
  %rem250342 = and i32 %43, 63, !dbg !3564
  %int_cast_to_i6419 = zext i32 %rem250342 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6419), !dbg !3564
  %shl251 = shl i32 1, %rem250342, !dbg !3564
  %conv252 = sext i32 %shl251 to i64, !dbg !3564
  %int_cast_to_i649 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i649), !dbg !3564
  %div253 = sdiv i32 %43, 64, !dbg !3564
  %idxprom254 = sext i32 %div253 to i64, !dbg !3564
  %arrayidx256 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom254, !dbg !3564
  %55 = load i64* %arrayidx256, align 8, !dbg !3564, !tbaa !3511
  %or257 = or i64 %55, %conv252, !dbg !3564
  store i64 %or257, i64* %arrayidx256, align 8, !dbg !3564, !tbaa !3511
  br label %for.inc260, !dbg !3564

for.inc260:                                       ; preds = %if.then249, %land.lhs.true237, %if.end235, %land.lhs.true, %__get_file.exit359, %if.then.i355, %for.body183
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3552
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3552
  %exitcond = icmp eq i32 %lftr.wideiv, %nfds, !dbg !3552
  br i1 %exitcond, label %cleanup, label %for.body183, !dbg !3552

cleanup:                                          ; preds = %for.inc260, %if.else178, %if.then174, %if.then172, %for.end, %if.then31, %if.end8
  %retval.0 = phi i32 [ -1, %if.then31 ], [ -1, %if.then174 ], [ %count.1, %if.then172 ], [ %count.1, %for.end ], [ %add179, %if.else178 ], [ 0, %if.end8 ], [ %add179, %for.inc260 ]
  ret i32 %retval.0, !dbg !3566
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #10

; Function Attrs: nounwind uwtable
define i8* @getcwd(i8* %buf, i64 %size) #6 {
entry:
  %0 = load i32* @getcwd.n_calls, align 4, !dbg !3567, !tbaa !2230
  %inc = add nsw i32 %0, 1, !dbg !3567
  store i32 %inc, i32* @getcwd.n_calls, align 4, !dbg !3567, !tbaa !2230
  %1 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3568, !tbaa !2497
  %tobool = icmp eq i32 %1, 0, !dbg !3568
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3568

land.lhs.true:                                    ; preds = %entry
  %2 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !3568, !tbaa !3570
  %3 = load i32* %2, align 4, !dbg !3568, !tbaa !2230
  %cmp = icmp eq i32 %3, %inc, !dbg !3568
  br i1 %cmp, label %if.then, label %if.end, !dbg !3568

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %1, -1, !dbg !3571
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3571, !tbaa !2497
  %call = tail call i32* @__errno_location() #1, !dbg !3573
  store i32 34, i32* %call, align 4, !dbg !3573, !tbaa !2230
  br label %return, !dbg !3574

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool1 = icmp eq i8* %buf, null, !dbg !3575
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3575

if.then2:                                         ; preds = %if.end
  %tobool3 = icmp eq i64 %size, 0, !dbg !3577
  %.size = select i1 %tobool3, i64 1024, i64 %size, !dbg !3577
  %call6 = tail call noalias i8* @malloc(i64 %.size) #10, !dbg !3580
  br label %if.end7, !dbg !3581

if.end7:                                          ; preds = %if.then2, %if.end
  %buf.addr.0 = phi i8* [ %buf, %if.end ], [ %call6, %if.then2 ]
  %size.addr.1 = phi i64 [ %size, %if.end ], [ %.size, %if.then2 ]
  %4 = ptrtoint i8* %buf.addr.0 to i64, !dbg !3582
  %call.i = tail call i64 @klee_get_valuel(i64 %4) #10, !dbg !3582
  %5 = inttoptr i64 %call.i to i8*, !dbg !3582
  %cmp.i = icmp eq i8* %5, %buf.addr.0, !dbg !3584
  %conv1.i = zext i1 %cmp.i to i64, !dbg !3584
  tail call void @klee_assume(i64 %conv1.i) #10, !dbg !3584
  %call.i25 = tail call i64 @klee_get_valuel(i64 %size.addr.1) #10, !dbg !3585
  %cmp.i26 = icmp eq i64 %call.i25, %size.addr.1, !dbg !3587
  %conv1.i27 = zext i1 %cmp.i26 to i64, !dbg !3587
  tail call void @klee_assume(i64 %conv1.i27) #10, !dbg !3587
  tail call void @klee_check_memory_access(i8* %5, i64 %call.i25) #10, !dbg !3588
  %call10 = tail call i64 (i64, ...)* @syscall(i64 79, i8* %5, i64 %call.i25) #10, !dbg !3589
  %conv = trunc i64 %call10 to i32, !dbg !3589
  %cmp11 = icmp eq i32 %conv, -1, !dbg !3590
  br i1 %cmp11, label %if.then13, label %return, !dbg !3590

if.then13:                                        ; preds = %if.end7
  %call14 = tail call i32 @klee_get_errno() #10, !dbg !3592
  %call15 = tail call i32* @__errno_location() #1, !dbg !3592
  store i32 %call14, i32* %call15, align 4, !dbg !3592, !tbaa !2230
  br label %return, !dbg !3594

return:                                           ; preds = %if.then13, %if.end7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then13 ], [ %5, %if.end7 ]
  ret i8* %retval.0, !dbg !3595
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #7

; Function Attrs: nounwind uwtable
define i32 @chroot(i8* nocapture readonly %path) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !3596, !tbaa !2183
  switch i8 %0, label %if.end11 [
    i8 0, label %if.then
    i8 47, label %land.lhs.true
  ], !dbg !3596

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #1, !dbg !3598
  store i32 2, i32* %call, align 4, !dbg !3598, !tbaa !2230
  br label %return, !dbg !3600

land.lhs.true:                                    ; preds = %entry
  %arrayidx6 = getelementptr inbounds i8* %path, i64 1, !dbg !3601
  %1 = load i8* %arrayidx6, align 1, !dbg !3601, !tbaa !2183
  %cmp8 = icmp eq i8 %1, 0, !dbg !3601
  br i1 %cmp8, label %return, label %if.end11, !dbg !3601

if.end11:                                         ; preds = %land.lhs.true, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0)) #10, !dbg !3603
  %call12 = tail call i32* @__errno_location() #1, !dbg !3604
  store i32 2, i32* %call12, align 4, !dbg !3604, !tbaa !2230
  br label %return, !dbg !3605

return:                                           ; preds = %if.end11, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.end11 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !3606
}

declare i64 @klee_get_valuel(i64) #8

; Function Attrs: nounwind
declare i32 @geteuid() #7

; Function Attrs: nounwind
declare i32 @getgid() #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %stdin_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) #6 {
entry:
  %x.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %s = alloca %struct.stat64, align 8
  %0 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !3607
  %1 = call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([7 x i8]* @klee_init_fds.name, i64 0, i64 0), i64 7)
  %2 = bitcast %struct.stat64* %s to i8*, !dbg !3608
  %call.i = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), %struct.stat64* %s) #10, !dbg !3609
  store i32 %n_files, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3612, !tbaa !2189
  %conv = zext i32 %n_files to i64, !dbg !3613
  %mul = mul i64 %conv, 24, !dbg !3613
  %call1 = call noalias i8* @malloc(i64 %mul) #10, !dbg !3613
  %3 = bitcast i8* %call1 to %struct.exe_disk_file_t*, !dbg !3613
  store %struct.exe_disk_file_t* %3, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3613, !tbaa !2195
  %cmp29 = icmp eq i32 %n_files, 0, !dbg !3614
  br i1 %cmp29, label %for.end, label %for.body, !dbg !3614

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %4 = phi %struct.exe_disk_file_t* [ %.pre, %for.body.for.body_crit_edge ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %5 = trunc i64 %indvars.iv to i8, !dbg !3616
  %add = add i8 %5, 65, !dbg !3616
  store i8 %add, i8* %0, align 1, !dbg !3616, !tbaa !2183
  %arrayidx4 = getelementptr inbounds %struct.exe_disk_file_t* %4, i64 %indvars.iv, !dbg !3618
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %arrayidx4, i32 %file_length, i8* %0, %struct.stat64* %s), !dbg !3618
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3614
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3614
  %exitcond = icmp eq i32 %lftr.wideiv, %n_files, !dbg !3614
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !3614

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3618, !tbaa !2195
  br label %for.body, !dbg !3614

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %stdin_length, 0, !dbg !3619
  br i1 %tobool, label %if.else, label %if.then, !dbg !3619

if.then:                                          ; preds = %for.end
  %call5 = call noalias i8* @malloc(i64 24) #10, !dbg !3621
  %6 = bitcast i8* %call5 to %struct.exe_disk_file_t*, !dbg !3621
  store %struct.exe_disk_file_t* %6, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !3621, !tbaa !3623
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %6, i32 %stdin_length, i8* getelementptr inbounds ([6 x i8]* @.str128, i64 0, i64 0), %struct.stat64* %s), !dbg !3624
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !3625, !tbaa !3623
  store %struct.exe_disk_file_t* %7, %struct.exe_disk_file_t** getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 8, !dbg !3625, !tbaa !2260
  br label %if.end, !dbg !3626

if.else:                                          ; preds = %for.end
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !3627, !tbaa !3623
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 %max_failures, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3628, !tbaa !2497
  %tobool6 = icmp eq i32 %max_failures, 0, !dbg !3629
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !3629

if.then7:                                         ; preds = %if.end
  %call8 = call noalias i8* @malloc(i64 4) #10, !dbg !3631
  %8 = bitcast i8* %call8 to i32*, !dbg !3631
  store i32* %8, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !3631, !tbaa !2525
  %call9 = call noalias i8* @malloc(i64 4) #10, !dbg !3633
  %9 = bitcast i8* %call9 to i32*, !dbg !3633
  store i32* %9, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !3633, !tbaa !2578
  %call10 = call noalias i8* @malloc(i64 4) #10, !dbg !3634
  %10 = bitcast i8* %call10 to i32*, !dbg !3634
  store i32* %10, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !3634, !tbaa !2498
  %call11 = call noalias i8* @malloc(i64 4) #10, !dbg !3635
  %11 = bitcast i8* %call11 to i32*, !dbg !3635
  store i32* %11, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !3635, !tbaa !3040
  %call12 = call noalias i8* @malloc(i64 4) #10, !dbg !3636
  %12 = bitcast i8* %call12 to i32*, !dbg !3636
  store i32* %12, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !3636, !tbaa !3570
  call void @klee_make_symbolic(i8* %call8, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str229, i64 0, i64 0)) #10, !dbg !3637
  %13 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !3638, !tbaa !2578
  %14 = bitcast i32* %13 to i8*, !dbg !3638
  call void @klee_make_symbolic(i8* %14, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str330, i64 0, i64 0)) #10, !dbg !3638
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !3639, !tbaa !2498
  %16 = bitcast i32* %15 to i8*, !dbg !3639
  call void @klee_make_symbolic(i8* %16, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str431, i64 0, i64 0)) #10, !dbg !3639
  %17 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !3640, !tbaa !3040
  %18 = bitcast i32* %17 to i8*, !dbg !3640
  call void @klee_make_symbolic(i8* %18, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str532, i64 0, i64 0)) #10, !dbg !3640
  %19 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !3641, !tbaa !3570
  %20 = bitcast i32* %19 to i8*, !dbg !3641
  call void @klee_make_symbolic(i8* %20, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str633, i64 0, i64 0)) #10, !dbg !3641
  br label %if.end13, !dbg !3642

if.end13:                                         ; preds = %if.then7, %if.end
  %tobool14 = icmp eq i32 %sym_stdout_flag, 0, !dbg !3643
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !3643

if.then15:                                        ; preds = %if.end13
  %call16 = call noalias i8* @malloc(i64 24) #10, !dbg !3645
  %21 = bitcast i8* %call16 to %struct.exe_disk_file_t*, !dbg !3645
  store %struct.exe_disk_file_t* %21, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !3645, !tbaa !2624
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %21, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str734, i64 0, i64 0), %struct.stat64* %s), !dbg !3647
  %22 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !3648, !tbaa !2624
  store %struct.exe_disk_file_t* %22, %struct.exe_disk_file_t** getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !3648, !tbaa !2260
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !3649, !tbaa !2626
  br label %if.end18, !dbg !3650

if.else17:                                        ; preds = %if.end13
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !3651, !tbaa !2624
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  store i32 %save_all_writes_flag, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 3), align 8, !dbg !3652, !tbaa !2610
  %23 = bitcast i32* %x.i to i8*, !dbg !3653
  call void @klee_make_symbolic(i8* %23, i64 4, i8* getelementptr inbounds ([14 x i8]* @.str835, i64 0, i64 0)) #10, !dbg !3655
  %24 = load i32* %x.i, align 4, !dbg !3656, !tbaa !2230
  store i32 %24, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 2), align 4, !dbg !3654, !tbaa !3657
  %cmp20 = icmp eq i32 %24, 1, !dbg !3658
  %conv22 = zext i1 %cmp20 to i64, !dbg !3658
  call void @klee_assume(i64 %conv22) #10, !dbg !3658
  ret void, !dbg !3659
}

declare i32 @klee_is_symbolic(i64) #8

declare void @klee_posix_prefer_cex(i8*, i64) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @__create_new_dfile(%struct.exe_disk_file_t* nocapture %dfile, i32 %size, i8* %name, %struct.stat64* nocapture readonly %defaults) #6 {
entry:
  %sname = alloca [64 x i8], align 16
  %call = call noalias i8* @malloc(i64 144) #10, !dbg !3660
  %0 = bitcast i8* %call to %struct.stat64*, !dbg !3660
  %1 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 0, !dbg !3661
  %2 = load i8* %name, align 1, !dbg !3662, !tbaa !2183
  %tobool148 = icmp eq i8 %2, 0, !dbg !3662
  %sub.ptr.rhs.cast2 = ptrtoint i8* %name to i64, !dbg !3664
  br i1 %tobool148, label %for.end, label %for.body, !dbg !3662

for.body:                                         ; preds = %for.body, %entry
  %arrayidx4152 = phi i8* [ %arrayidx4, %for.body ], [ %1, %entry ]
  %3 = phi i8 [ %4, %for.body ], [ %2, %entry ]
  %sp.0151 = phi i8* [ %incdec.ptr, %for.body ], [ %name, %entry ]
  store i8 %3, i8* %arrayidx4152, align 1, !dbg !3665, !tbaa !2183
  %incdec.ptr = getelementptr inbounds i8* %sp.0151, i64 1, !dbg !3662
  %4 = load i8* %incdec.ptr, align 1, !dbg !3662, !tbaa !2183
  %tobool = icmp eq i8 %4, 0, !dbg !3662
  %sub.ptr.lhs.cast1 = ptrtoint i8* %incdec.ptr to i64, !dbg !3664
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2, !dbg !3664
  %arrayidx4 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %sub.ptr.sub3, !dbg !3664
  br i1 %tobool, label %for.end, label %for.body, !dbg !3662

for.end:                                          ; preds = %for.body, %entry
  %arrayidx4.lcssa = phi i8* [ %1, %entry ], [ %arrayidx4, %for.body ]
  %5 = call i8* @memcpy(i8* %arrayidx4.lcssa, i8* getelementptr inbounds ([6 x i8]* @.str936, i64 0, i64 0), i64 6)
  %tobool5 = icmp eq i32 %size, 0, !dbg !3666
  br i1 %tobool5, label %cond.false, label %cond.end, !dbg !3666

cond.false:                                       ; preds = %for.end
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str1037, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str1138, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([88 x i8]* 
  unreachable, !dbg !3666

cond.end:                                         ; preds = %for.end
  %size6 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 0, !dbg !3667
  store i32 %size, i32* %size6, align 4, !dbg !3667, !tbaa !2556
  %conv = zext i32 %size to i64, !dbg !3668
  %call8 = call noalias i8* @malloc(i64 %conv) #10, !dbg !3668
  %contents = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !3668
  store i8* %call8, i8** %contents, align 8, !dbg !3668, !tbaa !2562
  call void @klee_make_symbolic(i8* %call8, i64 %conv, i8* %name) #10, !dbg !3669
  call void @klee_make_symbolic(i8* %call, i64 144, i8* %1) #10, !dbg !3670
  %st_ino = getelementptr inbounds i8* %call, i64 8, !dbg !3671
  %6 = bitcast i8* %st_ino to i64*, !dbg !3671
  %7 = load i64* %6, align 8, !dbg !3671, !tbaa !2200
  %call12 = call i32 @klee_is_symbolic(i64 %7) #10, !dbg !3671
  %tobool13 = icmp eq i32 %call12, 0, !dbg !3671
  %8 = load i64* %6, align 8, !dbg !3671, !tbaa !2200
  %and = and i64 %8, 2147483647, !dbg !3671
  %cmp = icmp eq i64 %and, 0, !dbg !3671
  %or.cond = and i1 %tobool13, %cmp, !dbg !3671
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3671

if.then:                                          ; preds = %cond.end
  %st_ino16 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 1, !dbg !3673
  %9 = load i64* %st_ino16, align 8, !dbg !3673, !tbaa !2200
  store i64 %9, i64* %6, align 8, !dbg !3673, !tbaa !2200
  br label %if.end, !dbg !3673

if.end:                                           ; preds = %if.then, %cond.end
  %10 = phi i64 [ %9, %if.then ], [ %8, %cond.end ]
  %and19 = and i64 %10, 2147483647, !dbg !3674
  %cmp20 = icmp ne i64 %and19, 0, !dbg !3674
  %conv22 = zext i1 %cmp20 to i64, !dbg !3674
  call void @klee_assume(i64 %conv22) #10, !dbg !3674
  %st_blksize = getelementptr inbounds i8* %call, i64 56, !dbg !3675
  %11 = bitcast i8* %st_blksize to i64*, !dbg !3675
  %12 = load i64* %11, align 8, !dbg !3675, !tbaa !3676
  %cmp24 = icmp ult i64 %12, 65536, !dbg !3675
  %conv26 = zext i1 %cmp24 to i64, !dbg !3675
  call void @klee_assume(i64 %conv26) #10, !dbg !3675
  %st_mode = getelementptr inbounds i8* %call, i64 24, !dbg !3677
  %13 = bitcast i8* %st_mode to i32*, !dbg !3677
  %14 = load i32* %13, align 4, !dbg !3677, !tbaa !2274
  %and27 = and i32 %14, -61952, !dbg !3677
  %lnot = icmp eq i32 %and27, 0, !dbg !3677
  %conv29 = zext i1 %lnot to i64, !dbg !3677
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv29) #10, !dbg !3677
  %st_dev = bitcast i8* %call to i64*, !dbg !3678
  %15 = load i64* %st_dev, align 8, !dbg !3678, !tbaa !3679
  %st_dev30 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 0, !dbg !3678
  %16 = load i64* %st_dev30, align 8, !dbg !3678, !tbaa !3679
  %cmp31 = icmp eq i64 %15, %16, !dbg !3678
  %conv33 = zext i1 %cmp31 to i64, !dbg !3678
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv33) #10, !dbg !3678
  %st_rdev = getelementptr inbounds i8* %call, i64 40, !dbg !3680
  %17 = bitcast i8* %st_rdev to i64*, !dbg !3680
  %18 = load i64* %17, align 8, !dbg !3680, !tbaa !3681
  %st_rdev34 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 7, !dbg !3680
  %19 = load i64* %st_rdev34, align 8, !dbg !3680, !tbaa !3681
  %cmp35 = icmp eq i64 %18, %19, !dbg !3680
  %conv37 = zext i1 %cmp35 to i64, !dbg !3680
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv37) #10, !dbg !3680
  %20 = load i32* %13, align 4, !dbg !3682, !tbaa !2274
  %and39 = and i32 %20, 448, !dbg !3682
  %cmp40 = icmp eq i32 %and39, 384, !dbg !3682
  %conv42 = zext i1 %cmp40 to i64, !dbg !3682
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv42) #10, !dbg !3682
  %21 = load i32* %13, align 4, !dbg !3683, !tbaa !2274
  %and44 = and i32 %21, 56, !dbg !3683
  %cmp45 = icmp eq i32 %and44, 32, !dbg !3683
  %conv47 = zext i1 %cmp45 to i64, !dbg !3683
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv47) #10, !dbg !3683
  %22 = load i32* %13, align 4, !dbg !3684, !tbaa !2274
  %and49 = and i32 %22, 7, !dbg !3684
  %cmp50 = icmp eq i32 %and49, 4, !dbg !3684
  %conv52 = zext i1 %cmp50 to i64, !dbg !3684
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv52) #10, !dbg !3684
  %23 = load i32* %13, align 4, !dbg !3685, !tbaa !2274
  %and54 = and i32 %23, 61440, !dbg !3685
  %cmp55 = icmp eq i32 %and54, 32768, !dbg !3685
  %conv57 = zext i1 %cmp55 to i64, !dbg !3685
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv57) #10, !dbg !3685
  %st_nlink = getelementptr inbounds i8* %call, i64 16, !dbg !3686
  %24 = bitcast i8* %st_nlink to i64*, !dbg !3686
  %25 = load i64* %24, align 8, !dbg !3686, !tbaa !3687
  %cmp58 = icmp eq i64 %25, 1, !dbg !3686
  %conv60 = zext i1 %cmp58 to i64, !dbg !3686
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv60) #10, !dbg !3686
  %st_uid = getelementptr inbounds i8* %call, i64 28, !dbg !3688
  %26 = bitcast i8* %st_uid to i32*, !dbg !3688
  %27 = load i32* %26, align 4, !dbg !3688, !tbaa !2865
  %st_uid61 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 4, !dbg !3688
  %28 = load i32* %st_uid61, align 4, !dbg !3688, !tbaa !2865
  %cmp62 = icmp eq i32 %27, %28, !dbg !3688
  %conv64 = zext i1 %cmp62 to i64, !dbg !3688
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv64) #10, !dbg !3688
  %st_gid = getelementptr inbounds i8* %call, i64 32, !dbg !3689
  %29 = bitcast i8* %st_gid to i32*, !dbg !3689
  %30 = load i32* %29, align 4, !dbg !3689, !tbaa !2869
  %st_gid65 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 5, !dbg !3689
  %31 = load i32* %st_gid65, align 4, !dbg !3689, !tbaa !2869
  %cmp66 = icmp eq i32 %30, %31, !dbg !3689
  %conv68 = zext i1 %cmp66 to i64, !dbg !3689
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv68) #10, !dbg !3689
  %32 = load i64* %11, align 8, !dbg !3690, !tbaa !3676
  %cmp70 = icmp eq i64 %32, 4096, !dbg !3690
  %conv72 = zext i1 %cmp70 to i64, !dbg !3690
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv72) #10, !dbg !3690
  %st_atim = getelementptr inbounds i8* %call, i64 72, !dbg !3691
  %tv_sec = bitcast i8* %st_atim to i64*, !dbg !3691
  %33 = load i64* %tv_sec, align 8, !dbg !3691, !tbaa !2412
  %tv_sec74 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 11, i32 0, !dbg !3691
  %34 = load i64* %tv_sec74, align 8, !dbg !3691, !tbaa !2412
  %cmp75 = icmp eq i64 %33, %34, !dbg !3691
  %conv77 = zext i1 %cmp75 to i64, !dbg !3691
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv77) #10, !dbg !3691
  %st_mtim = getelementptr inbounds i8* %call, i64 88, !dbg !3692
  %tv_sec78 = bitcast i8* %st_mtim to i64*, !dbg !3692
  %35 = load i64* %tv_sec78, align 8, !dbg !3692, !tbaa !2414
  %tv_sec80 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 12, i32 0, !dbg !3692
  %36 = load i64* %tv_sec80, align 8, !dbg !3692, !tbaa !2414
  %cmp81 = icmp eq i64 %35, %36, !dbg !3692
  %conv83 = zext i1 %cmp81 to i64, !dbg !3692
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv83) #10, !dbg !3692
  %st_ctim = getelementptr inbounds i8* %call, i64 104, !dbg !3693
  %tv_sec84 = bitcast i8* %st_ctim to i64*, !dbg !3693
  %37 = load i64* %tv_sec84, align 8, !dbg !3693, !tbaa !3694
  %tv_sec86 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 13, i32 0, !dbg !3693
  %38 = load i64* %tv_sec86, align 8, !dbg !3693, !tbaa !3694
  %cmp87 = icmp eq i64 %37, %38, !dbg !3693
  %conv89 = zext i1 %cmp87 to i64, !dbg !3693
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv89) #10, !dbg !3693
  %39 = load i32* %size6, align 4, !dbg !3695, !tbaa !2556
  %conv91 = zext i32 %39 to i64, !dbg !3695
  %st_size = getelementptr inbounds i8* %call, i64 48, !dbg !3695
  %40 = bitcast i8* %st_size to i64*, !dbg !3695
  store i64 %conv91, i64* %40, align 8, !dbg !3695, !tbaa !3696
  %st_blocks = getelementptr inbounds i8* %call, i64 64, !dbg !3697
  %41 = bitcast i8* %st_blocks to i64*, !dbg !3697
  store i64 8, i64* %41, align 8, !dbg !3697, !tbaa !3698
  %stat = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 2, !dbg !3699
  store %struct.stat64* %0, %struct.stat64** %stat, align 8, !dbg !3699, !tbaa !2198
  ret void, !dbg !3700
}

; Function Attrs: nounwind uwtable
define i32 @kill(i32 %pid, i32 %sig) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str39, i64 0, i64 0)) #10, !dbg !3701
  %call = tail call i32* @__errno_location() #1, !dbg !3702
  store i32 1, i32* %call, align 4, !dbg !3702, !tbaa !2230
  ret i32 -1, !dbg !3703
}

; Function Attrs: nounwind returns_twice uwtable
define weak i32 @_setjmp(%struct.__jmp_buf_tag* %__env) #12 {
entry:
  tail call void @klee_warning_once(i8* getelementptr inbounds ([9 x i8]* @.str140, i64 0, i64 0)) #10, !dbg !3704
  ret i32 0, !dbg !3705
}

; Function Attrs: noreturn nounwind uwtable
define void @longjmp(%struct.__jmp_buf_tag* nocapture readnone %env, i32 %val) #13 {
entry:
  tail call void @klee_report_error(i8* getelementptr inbounds ([40 x i8]* @.str241, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([20 x i8]* @.str342, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str443, i64 0, i64 0)) #20, !dbg !3706
  unreachable, !dbg !3706
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #14

; Function Attrs: nounwind uwtable
define weak i32 @execl(i8* %path, i8* %arg, ...) #6 {
entry:
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str544, i64 0, i64 0)) #10, !dbg !3707
  %call = call i32* @__errno_location() #1, !dbg !3707
  store i32 13, i32* %call, align 4, !dbg !3707, !tbaa !2230
  ret i32 -1, !dbg !3707
}

; Function Attrs: nounwind uwtable
define weak i32 @execlp(i8* %file, i8* %arg, ...) #6 {
entry:
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str544, i64 0, i64 0)) #10, !dbg !3708
  %call = call i32* @__errno_location() #1, !dbg !3708
  store i32 13, i32* %call, align 4, !dbg !3708, !tbaa !2230
  ret i32 -1, !dbg !3708
}

; Function Attrs: nounwind uwtable
define weak i32 @execle(i8* %path, i8* %arg, ...) #6 {
entry:
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str544, i64 0, i64 0)) #10, !dbg !3709
  %call = call i32* @__errno_location() #1, !dbg !3709
  store i32 13, i32* %call, align 4, !dbg !3709, !tbaa !2230
  ret i32 -1, !dbg !3709
}

; Function Attrs: nounwind uwtable
define weak i32 @execv(i8* %path, i8** %argv) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str544, i64 0, i64 0)) #10, !dbg !3710
  %call = tail call i32* @__errno_location() #1, !dbg !3710
  store i32 13, i32* %call, align 4, !dbg !3710, !tbaa !2230
  ret i32 -1, !dbg !3710
}

; Function Attrs: nounwind uwtable
define weak i32 @execvp(i8* %file, i8** %argv) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str544, i64 0, i64 0)) #10, !dbg !3711
  %call = tail call i32* @__errno_location() #1, !dbg !3711
  store i32 13, i32* %call, align 4, !dbg !3711, !tbaa !2230
  ret i32 -1, !dbg !3711
}

; Function Attrs: nounwind uwtable
define weak i32 @execve(i8* %file, i8** %argv, i8** %envp) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str544, i64 0, i64 0)) #10, !dbg !3712
  %call = tail call i32* @__errno_location() #1, !dbg !3712
  store i32 13, i32* %call, align 4, !dbg !3712, !tbaa !2230
  ret i32 -1, !dbg !3712
}

; Function Attrs: nounwind uwtable
define i32 @fork() #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str645, i64 0, i64 0)) #10, !dbg !3713
  %call = tail call i32* @__errno_location() #1, !dbg !3714
  store i32 12, i32* %call, align 4, !dbg !3714, !tbaa !2230
  ret i32 -1, !dbg !3715
}

; Function Attrs: nounwind returns_twice uwtable
define i32 @vfork() #12 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str645, i64 0, i64 0)) #10, !dbg !3716
  %call.i = tail call i32* @__errno_location() #1, !dbg !3718
  store i32 12, i32* %call.i, align 4, !dbg !3718, !tbaa !2230
  ret i32 -1, !dbg !3717
}

; Function Attrs: nounwind uwtable
define void @klee_init_env(i32* nocapture %argcPtr, i8*** nocapture %argvPtr) #6 {
entry:
  %new_argv = alloca [1024 x i8*], align 16
  %sym_arg_name = alloca [5 x i8], align 4
  %0 = load i32* %argcPtr, align 4, !dbg !3719, !tbaa !2230
  %1 = load i8*** %argvPtr, align 8, !dbg !3720, !tbaa !3721
  %2 = bitcast [1024 x i8*]* %new_argv to i8*, !dbg !3722
  %3 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 0, !dbg !3723
  %4 = bitcast [5 x i8]* %sym_arg_name to i32*, !dbg !3723
  store i32 6779489, i32* %4, align 4, !dbg !3723
  %arrayidx = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !3724
  store i8 0, i8* %arrayidx, align 4, !dbg !3724, !tbaa !2183
  %cmp = icmp eq i32 %0, 2, !dbg !3725
  br i1 %cmp, label %land.lhs.true, label %while.cond.preheader, !dbg !3725

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8** %1, i64 1, !dbg !3725
  %5 = load i8** %arrayidx1, align 8, !dbg !3725, !tbaa !3721
  %6 = load i8* %5, align 1, !dbg !3727, !tbaa !2183
  %cmp7.i = icmp eq i8 %6, 45, !dbg !3727
  br i1 %cmp7.i, label %while.body.i, label %while.body.lr.ph, !dbg !3727

while.body.i:                                     ; preds = %if.end.i, %land.lhs.true
  %7 = phi i8 [ %8, %if.end.i ], [ 45, %land.lhs.true ]
  %b.addr.09.i = phi i8* [ %incdec.ptr3.i, %if.end.i ], [ getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0), %land.lhs.true ]
  %a.addr.08.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %5, %land.lhs.true ]
  %tobool.i = icmp eq i8 %7, 0, !dbg !3728
  br i1 %tobool.i, label %if.then, label %if.end.i, !dbg !3728

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8* %a.addr.08.i, i64 1, !dbg !3731
  %incdec.ptr3.i = getelementptr inbounds i8* %b.addr.09.i, i64 1, !dbg !3732
  %8 = load i8* %incdec.ptr.i, align 1, !dbg !3727, !tbaa !2183
  %9 = load i8* %incdec.ptr3.i, align 1, !dbg !3727, !tbaa !2183
  %cmp.i = icmp eq i8 %8, %9, !dbg !3727
  br i1 %cmp.i, label %while.body.i, label %while.cond.preheader, !dbg !3727

while.cond.preheader:                             ; preds = %if.end.i, %entry
  %cmp2817 = icmp sgt i32 %0, 0, !dbg !3733
  br i1 %cmp2817, label %while.body.lr.ph, label %while.end, !dbg !3733

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %land.lhs.true
  %arrayidx20 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !3734
  br label %while.body, !dbg !3733

if.then:                                          ; preds = %while.body.i
  call fastcc void @__emit_error(i8* getelementptr inbounds ([964 x i8]* @.str149, i64 0, i64 0)), !dbg !3735
  unreachable

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %sym_files.0875 = phi i32 [ 0, %while.body.lr.ph ], [ %sym_files.0.be, %while.cond.backedge ]
  %sym_file_len.0867 = phi i32 [ 0, %while.body.lr.ph ], [ %sym_file_len.0.be, %while.cond.backedge ]
  %sym_stdin_len.0859 = phi i32 [ 0, %while.body.lr.ph ], [ %sym_stdin_len.0.be, %while.cond.backedge ]
  %sym_stdout_flag.0851 = phi i32 [ 0, %while.body.lr.ph ], [ %sym_stdout_flag.0.be, %while.cond.backedge ]
  %k.0842 = phi i32 [ 0, %while.body.lr.ph ], [ %k.0.be, %while.cond.backedge ]
  %sym_arg_num.0833 = phi i32 [ 0, %while.body.lr.ph ], [ %sym_arg_num.0.be, %while.cond.backedge ]
  %save_all_writes_flag.0825 = phi i32 [ 0, %while.body.lr.ph ], [ %save_all_writes_flag.0.be, %while.cond.backedge ]
  %fd_fail.0818 = phi i32 [ 0, %while.body.lr.ph ], [ %fd_fail.0.be, %while.cond.backedge ]
  %10 = phi i32 [ 0, %while.body.lr.ph ], [ %.be, %while.cond.backedge ]
  %idxprom = sext i32 %k.0842 to i64, !dbg !3737
  %arrayidx3 = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !3737
  %11 = load i8** %arrayidx3, align 8, !dbg !3737, !tbaa !3721
  %12 = load i8* %11, align 1, !dbg !3738, !tbaa !2183
  %cmp7.i279 = icmp eq i8 %12, 45, !dbg !3738
  br i1 %cmp7.i279, label %while.body.i283, label %if.else175, !dbg !3738

while.body.i283:                                  ; preds = %if.end.i287, %while.body
  %13 = phi i8 [ %14, %if.end.i287 ], [ 45, %while.body ]
  %b.addr.09.i280 = phi i8* [ %incdec.ptr3.i285, %if.end.i287 ], [ getelementptr inbounds ([10 x i8]* @.str250, i64 0, i64 0), %while.body ]
  %a.addr.08.i281 = phi i8* [ %incdec.ptr.i284, %if.end.i287 ], [ %11, %while.body ]
  %tobool.i282 = icmp eq i8 %13, 0, !dbg !3739
  br i1 %tobool.i282, label %if.then10, label %if.end.i287, !dbg !3739

if.end.i287:                                      ; preds = %while.body.i283
  %incdec.ptr.i284 = getelementptr inbounds i8* %a.addr.08.i281, i64 1, !dbg !3740
  %incdec.ptr3.i285 = getelementptr inbounds i8* %b.addr.09.i280, i64 1, !dbg !3741
  %14 = load i8* %incdec.ptr.i284, align 1, !dbg !3738, !tbaa !2183
  %15 = load i8* %incdec.ptr3.i285, align 1, !dbg !3738, !tbaa !2183
  %cmp.i286 = icmp eq i8 %14, %15, !dbg !3738
  br i1 %cmp.i286, label %while.body.i283, label %lor.lhs.false, !dbg !3738

lor.lhs.false:                                    ; preds = %if.end.i287
  br i1 %cmp7.i279, label %while.body.i297, label %if.else175, !dbg !3738

while.body.i297:                                  ; preds = %if.end.i301, %lor.lhs.false
  %16 = phi i8 [ %17, %if.end.i301 ], [ 45, %lor.lhs.false ]
  %b.addr.09.i294 = phi i8* [ %incdec.ptr3.i299, %if.end.i301 ], [ getelementptr inbounds ([9 x i8]* @.str351, i64 0, i64 0), %lor.lhs.false ]
  %a.addr.08.i295 = phi i8* [ %incdec.ptr.i298, %if.end.i301 ], [ %11, %lor.lhs.false ]
  %tobool.i296 = icmp eq i8 %16, 0, !dbg !3739
  br i1 %tobool.i296, label %if.then10, label %if.end.i301, !dbg !3739

if.end.i301:                                      ; preds = %while.body.i297
  %incdec.ptr.i298 = getelementptr inbounds i8* %a.addr.08.i295, i64 1, !dbg !3740
  %incdec.ptr3.i299 = getelementptr inbounds i8* %b.addr.09.i294, i64 1, !dbg !3741
  %17 = load i8* %incdec.ptr.i298, align 1, !dbg !3738, !tbaa !2183
  %18 = load i8* %incdec.ptr3.i299, align 1, !dbg !3738, !tbaa !2183
  %cmp.i300 = icmp eq i8 %17, %18, !dbg !3738
  br i1 %cmp.i300, label %while.body.i297, label %if.else, !dbg !3738

if.then10:                                        ; preds = %while.body.i297, %while.body.i283
  %inc = add nsw i32 %k.0842, 1, !dbg !3742
  %cmp11 = icmp eq i32 %inc, %0, !dbg !3742
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !3742

if.then12:                                        ; preds = %if.then10
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str452, i64 0, i64 0)), !dbg !3744
  unreachable

if.end13:                                         ; preds = %if.then10
  %inc14 = add nsw i32 %k.0842, 2, !dbg !3745
  %idxprom15 = sext i32 %inc to i64, !dbg !3745
  %arrayidx16 = getelementptr inbounds i8** %1, i64 %idxprom15, !dbg !3745
  %19 = load i8** %arrayidx16, align 8, !dbg !3745, !tbaa !3721
  %20 = load i8* %19, align 1, !dbg !3746, !tbaa !2183
  %tobool.i304 = icmp eq i8 %20, 0, !dbg !3746
  br i1 %tobool.i304, label %if.then.i305, label %while.body.i310, !dbg !3746

if.then.i305:                                     ; preds = %if.end13
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str452, i64 0, i64 0)) #10, !dbg !3746
  unreachable

while.body.i310:                                  ; preds = %if.then10.i316, %if.end13
  %21 = phi i8 [ %23, %if.then10.i316 ], [ %20, %if.end13 ]
  %s.pn.i306 = phi i8* [ %incdec.ptr26.i308, %if.then10.i316 ], [ %19, %if.end13 ]
  %res.025.i307 = phi i64 [ %add.i314, %if.then10.i316 ], [ 0, %if.end13 ]
  %incdec.ptr26.i308 = getelementptr inbounds i8* %s.pn.i306, i64 1, !dbg !3748
  %.off.i309 = add i8 %21, -48, !dbg !3749
  %22 = icmp ult i8 %.off.i309, 10, !dbg !3749
  br i1 %22, label %if.then10.i316, label %if.else13.i317, !dbg !3749

if.then10.i316:                                   ; preds = %while.body.i310
  %conv.i311 = sext i8 %21 to i64, !dbg !3753
  %mul.i312 = mul nsw i64 %res.025.i307, 10, !dbg !3754
  %sub.i313 = add i64 %conv.i311, -48, !dbg !3754
  %add.i314 = add i64 %sub.i313, %mul.i312, !dbg !3754
  %23 = load i8* %incdec.ptr26.i308, align 1, !dbg !3748, !tbaa !2183
  %tobool1.i315 = icmp eq i8 %23, 0, !dbg !3748
  br i1 %tobool1.i315, label %__str_to_int.exit318, label %while.body.i310, !dbg !3748

if.else13.i317:                                   ; preds = %while.body.i310
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str452, i64 0, i64 0)) #10, !dbg !3756
  unreachable

__str_to_int.exit318:                             ; preds = %if.then10.i316
  %conv = trunc i64 %add.i314 to i32, !dbg !3745
  %add = add i32 %sym_arg_num.0833, 48, !dbg !3734
  %conv19 = trunc i32 %add to i8, !dbg !3734
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !3734, !tbaa !2183
  %call22 = call fastcc i8* @__get_sym_str(i32 %conv, i8* %3), !dbg !3758
  %cmp.i319 = icmp eq i32 %10, 1024, !dbg !3759
  br i1 %cmp.i319, label %if.then.i320, label %__add_arg.exit325, !dbg !3759

if.then.i320:                                     ; preds = %__str_to_int.exit318
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str2472, i64 0, i64 0)) #10, !dbg !3762
  unreachable

__add_arg.exit325:                                ; preds = %__str_to_int.exit318
  %inc18 = add i32 %sym_arg_num.0833, 1, !dbg !3734
  %idxprom.i321 = sext i32 %10 to i64, !dbg !3764
  %arrayidx.i322 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i321, !dbg !3764
  store i8* %call22, i8** %arrayidx.i322, align 8, !dbg !3764, !tbaa !3721
  %inc.i323 = add nsw i32 %10, 1, !dbg !3766
  br label %while.cond.backedge, !dbg !3767

if.else:                                          ; preds = %if.end.i301
  br i1 %cmp7.i279, label %while.body.i330, label %if.else175, !dbg !3768

while.body.i330:                                  ; preds = %if.end.i334, %if.else
  %24 = phi i8 [ %25, %if.end.i334 ], [ 45, %if.else ]
  %b.addr.09.i327 = phi i8* [ %incdec.ptr3.i332, %if.end.i334 ], [ getelementptr inbounds ([11 x i8]* @.str553, i64 0, i64 0), %if.else ]
  %a.addr.08.i328 = phi i8* [ %incdec.ptr.i331, %if.end.i334 ], [ %11, %if.else ]
  %tobool.i329 = icmp eq i8 %24, 0, !dbg !3770
  br i1 %tobool.i329, label %if.then32, label %if.end.i334, !dbg !3770

if.end.i334:                                      ; preds = %while.body.i330
  %incdec.ptr.i331 = getelementptr inbounds i8* %a.addr.08.i328, i64 1, !dbg !3771
  %incdec.ptr3.i332 = getelementptr inbounds i8* %b.addr.09.i327, i64 1, !dbg !3772
  %25 = load i8* %incdec.ptr.i331, align 1, !dbg !3768, !tbaa !2183
  %26 = load i8* %incdec.ptr3.i332, align 1, !dbg !3768, !tbaa !2183
  %cmp.i333 = icmp eq i8 %25, %26, !dbg !3768
  br i1 %cmp.i333, label %while.body.i330, label %lor.lhs.false27, !dbg !3768

lor.lhs.false27:                                  ; preds = %if.end.i334
  br i1 %cmp7.i279, label %while.body.i341, label %if.else175, !dbg !3768

while.body.i341:                                  ; preds = %if.end.i345, %lor.lhs.false27
  %27 = phi i8 [ %28, %if.end.i345 ], [ 45, %lor.lhs.false27 ]
  %b.addr.09.i338 = phi i8* [ %incdec.ptr3.i343, %if.end.i345 ], [ getelementptr inbounds ([10 x i8]* @.str654, i64 0, i64 0), %lor.lhs.false27 ]
  %a.addr.08.i339 = phi i8* [ %incdec.ptr.i342, %if.end.i345 ], [ %11, %lor.lhs.false27 ]
  %tobool.i340 = icmp eq i8 %27, 0, !dbg !3770
  br i1 %tobool.i340, label %if.then32, label %if.end.i345, !dbg !3770

if.end.i345:                                      ; preds = %while.body.i341
  %incdec.ptr.i342 = getelementptr inbounds i8* %a.addr.08.i339, i64 1, !dbg !3771
  %incdec.ptr3.i343 = getelementptr inbounds i8* %b.addr.09.i338, i64 1, !dbg !3772
  %28 = load i8* %incdec.ptr.i342, align 1, !dbg !3768, !tbaa !2183
  %29 = load i8* %incdec.ptr3.i343, align 1, !dbg !3768, !tbaa !2183
  %cmp.i344 = icmp eq i8 %28, %29, !dbg !3768
  br i1 %cmp.i344, label %while.body.i341, label %if.else67, !dbg !3768

if.then32:                                        ; preds = %while.body.i341, %while.body.i330
  %add34 = add nsw i32 %k.0842, 3, !dbg !3773
  %cmp35 = icmp slt i32 %add34, %0, !dbg !3773
  br i1 %cmp35, label %if.end38, label %if.then37, !dbg !3773

if.then37:                                        ; preds = %if.then32
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)), !dbg !3775
  unreachable

if.end38:                                         ; preds = %if.then32
  %inc39 = add nsw i32 %k.0842, 1, !dbg !3776
  %inc40 = add nsw i32 %k.0842, 2, !dbg !3777
  %idxprom41 = sext i32 %inc39 to i64, !dbg !3777
  %arrayidx42 = getelementptr inbounds i8** %1, i64 %idxprom41, !dbg !3777
  %30 = load i8** %arrayidx42, align 8, !dbg !3777, !tbaa !3721
  %31 = load i8* %30, align 1, !dbg !3778, !tbaa !2183
  %tobool.i348 = icmp eq i8 %31, 0, !dbg !3778
  br i1 %tobool.i348, label %if.then.i349, label %while.body.i354, !dbg !3778

if.then.i349:                                     ; preds = %if.end38
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)) #10, !dbg !3778
  unreachable

while.body.i354:                                  ; preds = %if.then10.i360, %if.end38
  %32 = phi i8 [ %34, %if.then10.i360 ], [ %31, %if.end38 ]
  %s.pn.i350 = phi i8* [ %incdec.ptr26.i352, %if.then10.i360 ], [ %30, %if.end38 ]
  %res.025.i351 = phi i64 [ %add.i358, %if.then10.i360 ], [ 0, %if.end38 ]
  %incdec.ptr26.i352 = getelementptr inbounds i8* %s.pn.i350, i64 1, !dbg !3779
  %.off.i353 = add i8 %32, -48, !dbg !3780
  %33 = icmp ult i8 %.off.i353, 10, !dbg !3780
  br i1 %33, label %if.then10.i360, label %if.else13.i361, !dbg !3780

if.then10.i360:                                   ; preds = %while.body.i354
  %conv.i355 = sext i8 %32 to i64, !dbg !3781
  %mul.i356 = mul nsw i64 %res.025.i351, 10, !dbg !3782
  %sub.i357 = add i64 %conv.i355, -48, !dbg !3782
  %add.i358 = add i64 %sub.i357, %mul.i356, !dbg !3782
  %34 = load i8* %incdec.ptr26.i352, align 1, !dbg !3779, !tbaa !2183
  %tobool1.i359 = icmp eq i8 %34, 0, !dbg !3779
  br i1 %tobool1.i359, label %__str_to_int.exit362, label %while.body.i354, !dbg !3779

if.else13.i361:                                   ; preds = %while.body.i354
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)) #10, !dbg !3783
  unreachable

__str_to_int.exit362:                             ; preds = %if.then10.i360
  %conv44 = trunc i64 %add.i358 to i32, !dbg !3777
  %idxprom46 = sext i32 %inc40 to i64, !dbg !3784
  %arrayidx47 = getelementptr inbounds i8** %1, i64 %idxprom46, !dbg !3784
  %35 = load i8** %arrayidx47, align 8, !dbg !3784, !tbaa !3721
  %36 = load i8* %35, align 1, !dbg !3785, !tbaa !2183
  %tobool.i363 = icmp eq i8 %36, 0, !dbg !3785
  br i1 %tobool.i363, label %if.then.i364, label %while.body.i369, !dbg !3785

if.then.i364:                                     ; preds = %__str_to_int.exit362
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)) #10, !dbg !3785
  unreachable

while.body.i369:                                  ; preds = %if.then10.i375, %__str_to_int.exit362
  %37 = phi i8 [ %39, %if.then10.i375 ], [ %36, %__str_to_int.exit362 ]
  %s.pn.i365 = phi i8* [ %incdec.ptr26.i367, %if.then10.i375 ], [ %35, %__str_to_int.exit362 ]
  %res.025.i366 = phi i64 [ %add.i373, %if.then10.i375 ], [ 0, %__str_to_int.exit362 ]
  %incdec.ptr26.i367 = getelementptr inbounds i8* %s.pn.i365, i64 1, !dbg !3786
  %.off.i368 = add i8 %37, -48, !dbg !3787
  %38 = icmp ult i8 %.off.i368, 10, !dbg !3787
  br i1 %38, label %if.then10.i375, label %if.else13.i376, !dbg !3787

if.then10.i375:                                   ; preds = %while.body.i369
  %conv.i370 = sext i8 %37 to i64, !dbg !3788
  %mul.i371 = mul nsw i64 %res.025.i366, 10, !dbg !3789
  %sub.i372 = add i64 %conv.i370, -48, !dbg !3789
  %add.i373 = add i64 %sub.i372, %mul.i371, !dbg !3789
  %39 = load i8* %incdec.ptr26.i367, align 1, !dbg !3786, !tbaa !2183
  %tobool1.i374 = icmp eq i8 %39, 0, !dbg !3786
  br i1 %tobool1.i374, label %__str_to_int.exit377, label %while.body.i369, !dbg !3786

if.else13.i376:                                   ; preds = %while.body.i369
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)) #10, !dbg !3790
  unreachable

__str_to_int.exit377:                             ; preds = %if.then10.i375
  %conv49 = trunc i64 %add.i373 to i32, !dbg !3784
  %inc50 = add nsw i32 %k.0842, 4, !dbg !3791
  %idxprom51 = sext i32 %add34 to i64, !dbg !3791
  %arrayidx52 = getelementptr inbounds i8** %1, i64 %idxprom51, !dbg !3791
  %40 = load i8** %arrayidx52, align 8, !dbg !3791, !tbaa !3721
  %41 = load i8* %40, align 1, !dbg !3792, !tbaa !2183
  %tobool.i378 = icmp eq i8 %41, 0, !dbg !3792
  br i1 %tobool.i378, label %if.then.i379, label %while.body.i384, !dbg !3792

if.then.i379:                                     ; preds = %__str_to_int.exit377
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)) #10, !dbg !3792
  unreachable

while.body.i384:                                  ; preds = %if.then10.i390, %__str_to_int.exit377
  %42 = phi i8 [ %44, %if.then10.i390 ], [ %41, %__str_to_int.exit377 ]
  %s.pn.i380 = phi i8* [ %incdec.ptr26.i382, %if.then10.i390 ], [ %40, %__str_to_int.exit377 ]
  %res.025.i381 = phi i64 [ %add.i388, %if.then10.i390 ], [ 0, %__str_to_int.exit377 ]
  %incdec.ptr26.i382 = getelementptr inbounds i8* %s.pn.i380, i64 1, !dbg !3793
  %.off.i383 = add i8 %42, -48, !dbg !3794
  %43 = icmp ult i8 %.off.i383, 10, !dbg !3794
  br i1 %43, label %if.then10.i390, label %if.else13.i391, !dbg !3794

if.then10.i390:                                   ; preds = %while.body.i384
  %conv.i385 = sext i8 %42 to i64, !dbg !3795
  %mul.i386 = mul nsw i64 %res.025.i381, 10, !dbg !3796
  %sub.i387 = add i64 %conv.i385, -48, !dbg !3796
  %add.i388 = add i64 %sub.i387, %mul.i386, !dbg !3796
  %44 = load i8* %incdec.ptr26.i382, align 1, !dbg !3793, !tbaa !2183
  %tobool1.i389 = icmp eq i8 %44, 0, !dbg !3793
  br i1 %tobool1.i389, label %__str_to_int.exit392, label %while.body.i384, !dbg !3793

if.else13.i391:                                   ; preds = %while.body.i384
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str755, i64 0, i64 0)) #10, !dbg !3797
  unreachable

__str_to_int.exit392:                             ; preds = %if.then10.i390
  %conv54 = trunc i64 %add.i388 to i32, !dbg !3791
  %add55 = add i32 %conv49, 1, !dbg !3798
  %call56 = call i32 @klee_range(i32 %conv44, i32 %add55, i8* getelementptr inbounds ([7 x i8]* @.str856, i64 0, i64 0)) #10, !dbg !3798
  %cmp57644 = icmp sgt i32 %call56, 0, !dbg !3799
  br i1 %cmp57644, label %for.body.lr.ph, label %while.cond.backedge, !dbg !3799

for.body.lr.ph:                                   ; preds = %__str_to_int.exit392
  %45 = sext i32 %10 to i64
  br label %for.body, !dbg !3799

for.body:                                         ; preds = %__add_arg.exit399, %for.body.lr.ph
  %indvars.iv = phi i64 [ %45, %for.body.lr.ph ], [ %indvars.iv.next, %__add_arg.exit399 ]
  %i.0646 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %__add_arg.exit399 ]
  %sym_arg_num.1645 = phi i32 [ %sym_arg_num.0833, %for.body.lr.ph ], [ %inc59, %__add_arg.exit399 ]
  %46 = phi i32 [ %10, %for.body.lr.ph ], [ %inc.i397, %__add_arg.exit399 ]
  %add60 = add i32 %sym_arg_num.1645, 48, !dbg !3801
  %conv61 = trunc i32 %add60 to i8, !dbg !3801
  store i8 %conv61, i8* %arrayidx20, align 1, !dbg !3801, !tbaa !2183
  %call65 = call fastcc i8* @__get_sym_str(i32 %conv54, i8* %3), !dbg !3803
  %47 = trunc i64 %indvars.iv to i32, !dbg !3804
  %cmp.i393 = icmp eq i32 %47, 1024, !dbg !3804
  br i1 %cmp.i393, label %if.then.i394, label %__add_arg.exit399, !dbg !3804

if.then.i394:                                     ; preds = %for.body
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str2472, i64 0, i64 0)) #10, !dbg !3806
  unreachable

__add_arg.exit399:                                ; preds = %for.body
  %inc59 = add i32 %sym_arg_num.1645, 1, !dbg !3801
  %arrayidx.i396 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %indvars.iv, !dbg !3807
  store i8* %call65, i8** %arrayidx.i396, align 8, !dbg !3807, !tbaa !3721
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3799
  %inc.i397 = add nsw i32 %46, 1, !dbg !3808
  %inc66 = add nsw i32 %i.0646, 1, !dbg !3799
  %cmp57 = icmp slt i32 %inc66, %call56, !dbg !3799
  br i1 %cmp57, label %for.body, label %while.cond.backedge, !dbg !3799

if.else67:                                        ; preds = %if.end.i345
  br i1 %cmp7.i279, label %while.body.i404, label %if.else175, !dbg !3809

while.body.i404:                                  ; preds = %if.end.i408, %if.else67
  %48 = phi i8 [ %49, %if.end.i408 ], [ 45, %if.else67 ]
  %b.addr.09.i401 = phi i8* [ %incdec.ptr3.i406, %if.end.i408 ], [ getelementptr inbounds ([12 x i8]* @.str957, i64 0, i64 0), %if.else67 ]
  %a.addr.08.i402 = phi i8* [ %incdec.ptr.i405, %if.end.i408 ], [ %11, %if.else67 ]
  %tobool.i403 = icmp eq i8 %48, 0, !dbg !3811
  br i1 %tobool.i403, label %if.then77, label %if.end.i408, !dbg !3811

if.end.i408:                                      ; preds = %while.body.i404
  %incdec.ptr.i405 = getelementptr inbounds i8* %a.addr.08.i402, i64 1, !dbg !3812
  %incdec.ptr3.i406 = getelementptr inbounds i8* %b.addr.09.i401, i64 1, !dbg !3813
  %49 = load i8* %incdec.ptr.i405, align 1, !dbg !3809, !tbaa !2183
  %50 = load i8* %incdec.ptr3.i406, align 1, !dbg !3809, !tbaa !2183
  %cmp.i407 = icmp eq i8 %49, %50, !dbg !3809
  br i1 %cmp.i407, label %while.body.i404, label %lor.lhs.false72, !dbg !3809

lor.lhs.false72:                                  ; preds = %if.end.i408
  br i1 %cmp7.i279, label %while.body.i415, label %if.else175, !dbg !3809

while.body.i415:                                  ; preds = %if.end.i419, %lor.lhs.false72
  %51 = phi i8 [ %52, %if.end.i419 ], [ 45, %lor.lhs.false72 ]
  %b.addr.09.i412 = phi i8* [ %incdec.ptr3.i417, %if.end.i419 ], [ getelementptr inbounds ([11 x i8]* @.str1058, i64 0, i64 0), %lor.lhs.false72 ]
  %a.addr.08.i413 = phi i8* [ %incdec.ptr.i416, %if.end.i419 ], [ %11, %lor.lhs.false72 ]
  %tobool.i414 = icmp eq i8 %51, 0, !dbg !3811
  br i1 %tobool.i414, label %if.then77, label %if.end.i419, !dbg !3811

if.end.i419:                                      ; preds = %while.body.i415
  %incdec.ptr.i416 = getelementptr inbounds i8* %a.addr.08.i413, i64 1, !dbg !3812
  %incdec.ptr3.i417 = getelementptr inbounds i8* %b.addr.09.i412, i64 1, !dbg !3813
  %52 = load i8* %incdec.ptr.i416, align 1, !dbg !3809, !tbaa !2183
  %53 = load i8* %incdec.ptr3.i417, align 1, !dbg !3809, !tbaa !2183
  %cmp.i418 = icmp eq i8 %52, %53, !dbg !3809
  br i1 %cmp.i418, label %while.body.i415, label %if.else95, !dbg !3809

if.then77:                                        ; preds = %while.body.i415, %while.body.i404
  %add79 = add nsw i32 %k.0842, 2, !dbg !3814
  %cmp80 = icmp slt i32 %add79, %0, !dbg !3814
  br i1 %cmp80, label %if.end83, label %if.then82, !dbg !3814

if.then82:                                        ; preds = %if.then77
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1159, i64 0, i64 0)), !dbg !3816
  unreachable

if.end83:                                         ; preds = %if.then77
  %inc84 = add nsw i32 %k.0842, 1, !dbg !3817
  %idxprom86 = sext i32 %inc84 to i64, !dbg !3818
  %arrayidx87 = getelementptr inbounds i8** %1, i64 %idxprom86, !dbg !3818
  %54 = load i8** %arrayidx87, align 8, !dbg !3818, !tbaa !3721
  %55 = load i8* %54, align 1, !dbg !3819, !tbaa !2183
  %tobool.i422 = icmp eq i8 %55, 0, !dbg !3819
  br i1 %tobool.i422, label %if.then.i423, label %while.body.i428, !dbg !3819

if.then.i423:                                     ; preds = %if.end83
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1159, i64 0, i64 0)) #10, !dbg !3819
  unreachable

while.body.i428:                                  ; preds = %if.then10.i434, %if.end83
  %56 = phi i8 [ %58, %if.then10.i434 ], [ %55, %if.end83 ]
  %s.pn.i424 = phi i8* [ %incdec.ptr26.i426, %if.then10.i434 ], [ %54, %if.end83 ]
  %res.025.i425 = phi i64 [ %add.i432, %if.then10.i434 ], [ 0, %if.end83 ]
  %incdec.ptr26.i426 = getelementptr inbounds i8* %s.pn.i424, i64 1, !dbg !3820
  %.off.i427 = add i8 %56, -48, !dbg !3821
  %57 = icmp ult i8 %.off.i427, 10, !dbg !3821
  br i1 %57, label %if.then10.i434, label %if.else13.i435, !dbg !3821

if.then10.i434:                                   ; preds = %while.body.i428
  %conv.i429 = sext i8 %56 to i64, !dbg !3822
  %mul.i430 = mul nsw i64 %res.025.i425, 10, !dbg !3823
  %sub.i431 = add i64 %conv.i429, -48, !dbg !3823
  %add.i432 = add i64 %sub.i431, %mul.i430, !dbg !3823
  %58 = load i8* %incdec.ptr26.i426, align 1, !dbg !3820, !tbaa !2183
  %tobool1.i433 = icmp eq i8 %58, 0, !dbg !3820
  br i1 %tobool1.i433, label %__str_to_int.exit436, label %while.body.i428, !dbg !3820

if.else13.i435:                                   ; preds = %while.body.i428
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1159, i64 0, i64 0)) #10, !dbg !3824
  unreachable

__str_to_int.exit436:                             ; preds = %if.then10.i434
  %conv89 = trunc i64 %add.i432 to i32, !dbg !3818
  %inc90 = add nsw i32 %k.0842, 3, !dbg !3825
  %idxprom91 = sext i32 %add79 to i64, !dbg !3825
  %arrayidx92 = getelementptr inbounds i8** %1, i64 %idxprom91, !dbg !3825
  %59 = load i8** %arrayidx92, align 8, !dbg !3825, !tbaa !3721
  %60 = load i8* %59, align 1, !dbg !3826, !tbaa !2183
  %tobool.i437 = icmp eq i8 %60, 0, !dbg !3826
  br i1 %tobool.i437, label %if.then.i438, label %while.body.i443, !dbg !3826

if.then.i438:                                     ; preds = %__str_to_int.exit436
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1159, i64 0, i64 0)) #10, !dbg !3826
  unreachable

while.body.i443:                                  ; preds = %if.then10.i449, %__str_to_int.exit436
  %61 = phi i8 [ %63, %if.then10.i449 ], [ %60, %__str_to_int.exit436 ]
  %s.pn.i439 = phi i8* [ %incdec.ptr26.i441, %if.then10.i449 ], [ %59, %__str_to_int.exit436 ]
  %res.025.i440 = phi i64 [ %add.i447, %if.then10.i449 ], [ 0, %__str_to_int.exit436 ]
  %incdec.ptr26.i441 = getelementptr inbounds i8* %s.pn.i439, i64 1, !dbg !3827
  %.off.i442 = add i8 %61, -48, !dbg !3828
  %62 = icmp ult i8 %.off.i442, 10, !dbg !3828
  br i1 %62, label %if.then10.i449, label %if.else13.i450, !dbg !3828

if.then10.i449:                                   ; preds = %while.body.i443
  %conv.i444 = sext i8 %61 to i64, !dbg !3829
  %mul.i445 = mul nsw i64 %res.025.i440, 10, !dbg !3830
  %sub.i446 = add i64 %conv.i444, -48, !dbg !3830
  %add.i447 = add i64 %sub.i446, %mul.i445, !dbg !3830
  %63 = load i8* %incdec.ptr26.i441, align 1, !dbg !3827, !tbaa !2183
  %tobool1.i448 = icmp eq i8 %63, 0, !dbg !3827
  br i1 %tobool1.i448, label %__str_to_int.exit451, label %while.body.i443, !dbg !3827

if.else13.i450:                                   ; preds = %while.body.i443
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1159, i64 0, i64 0)) #10, !dbg !3831
  unreachable

__str_to_int.exit451:                             ; preds = %if.then10.i449
  %conv94 = trunc i64 %add.i447 to i32, !dbg !3825
  br label %while.cond.backedge, !dbg !3832

if.else95:                                        ; preds = %if.end.i419
  br i1 %cmp7.i279, label %while.body.i456, label %if.else175, !dbg !3833

while.body.i456:                                  ; preds = %if.end.i460, %if.else95
  %64 = phi i8 [ %65, %if.end.i460 ], [ 45, %if.else95 ]
  %b.addr.09.i453 = phi i8* [ %incdec.ptr3.i458, %if.end.i460 ], [ getelementptr inbounds ([12 x i8]* @.str1260, i64 0, i64 0), %if.else95 ]
  %a.addr.08.i454 = phi i8* [ %incdec.ptr.i457, %if.end.i460 ], [ %11, %if.else95 ]
  %tobool.i455 = icmp eq i8 %64, 0, !dbg !3835
  br i1 %tobool.i455, label %if.then105, label %if.end.i460, !dbg !3835

if.end.i460:                                      ; preds = %while.body.i456
  %incdec.ptr.i457 = getelementptr inbounds i8* %a.addr.08.i454, i64 1, !dbg !3836
  %incdec.ptr3.i458 = getelementptr inbounds i8* %b.addr.09.i453, i64 1, !dbg !3837
  %65 = load i8* %incdec.ptr.i457, align 1, !dbg !3833, !tbaa !2183
  %66 = load i8* %incdec.ptr3.i458, align 1, !dbg !3833, !tbaa !2183
  %cmp.i459 = icmp eq i8 %65, %66, !dbg !3833
  br i1 %cmp.i459, label %while.body.i456, label %lor.lhs.false100, !dbg !3833

lor.lhs.false100:                                 ; preds = %if.end.i460
  br i1 %cmp7.i279, label %while.body.i467, label %if.else175, !dbg !3838

while.body.i467:                                  ; preds = %if.end.i471, %lor.lhs.false100
  %67 = phi i8 [ %68, %if.end.i471 ], [ 45, %lor.lhs.false100 ]
  %b.addr.09.i464 = phi i8* [ %incdec.ptr3.i469, %if.end.i471 ], [ getelementptr inbounds ([11 x i8]* @.str1361, i64 0, i64 0), %lor.lhs.false100 ]
  %a.addr.08.i465 = phi i8* [ %incdec.ptr.i468, %if.end.i471 ], [ %11, %lor.lhs.false100 ]
  %tobool.i466 = icmp eq i8 %67, 0, !dbg !3840
  br i1 %tobool.i466, label %if.then105, label %if.end.i471, !dbg !3840

if.end.i471:                                      ; preds = %while.body.i467
  %incdec.ptr.i468 = getelementptr inbounds i8* %a.addr.08.i465, i64 1, !dbg !3841
  %incdec.ptr3.i469 = getelementptr inbounds i8* %b.addr.09.i464, i64 1, !dbg !3842
  %68 = load i8* %incdec.ptr.i468, align 1, !dbg !3838, !tbaa !2183
  %69 = load i8* %incdec.ptr3.i469, align 1, !dbg !3838, !tbaa !2183
  %cmp.i470 = icmp eq i8 %68, %69, !dbg !3838
  br i1 %cmp.i470, label %while.body.i467, label %if.else117, !dbg !3838

if.then105:                                       ; preds = %while.body.i467, %while.body.i456
  %inc107 = add nsw i32 %k.0842, 1, !dbg !3843
  %cmp108 = icmp eq i32 %inc107, %0, !dbg !3843
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !3843

if.then110:                                       ; preds = %if.then105
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str1462, i64 0, i64 0)), !dbg !3845
  unreachable

if.end111:                                        ; preds = %if.then105
  %inc112 = add nsw i32 %k.0842, 2, !dbg !3846
  %idxprom113 = sext i32 %inc107 to i64, !dbg !3846
  %arrayidx114 = getelementptr inbounds i8** %1, i64 %idxprom113, !dbg !3846
  %70 = load i8** %arrayidx114, align 8, !dbg !3846, !tbaa !3721
  %71 = load i8* %70, align 1, !dbg !3847, !tbaa !2183
  %tobool.i474 = icmp eq i8 %71, 0, !dbg !3847
  br i1 %tobool.i474, label %if.then.i475, label %while.body.i480, !dbg !3847

if.then.i475:                                     ; preds = %if.end111
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str1462, i64 0, i64 0)) #10, !dbg !3847
  unreachable

while.body.i480:                                  ; preds = %if.then10.i486, %if.end111
  %72 = phi i8 [ %74, %if.then10.i486 ], [ %71, %if.end111 ]
  %s.pn.i476 = phi i8* [ %incdec.ptr26.i478, %if.then10.i486 ], [ %70, %if.end111 ]
  %res.025.i477 = phi i64 [ %add.i484, %if.then10.i486 ], [ 0, %if.end111 ]
  %incdec.ptr26.i478 = getelementptr inbounds i8* %s.pn.i476, i64 1, !dbg !3848
  %.off.i479 = add i8 %72, -48, !dbg !3849
  %73 = icmp ult i8 %.off.i479, 10, !dbg !3849
  br i1 %73, label %if.then10.i486, label %if.else13.i487, !dbg !3849

if.then10.i486:                                   ; preds = %while.body.i480
  %conv.i481 = sext i8 %72 to i64, !dbg !3850
  %mul.i482 = mul nsw i64 %res.025.i477, 10, !dbg !3851
  %sub.i483 = add i64 %conv.i481, -48, !dbg !3851
  %add.i484 = add i64 %sub.i483, %mul.i482, !dbg !3851
  %74 = load i8* %incdec.ptr26.i478, align 1, !dbg !3848, !tbaa !2183
  %tobool1.i485 = icmp eq i8 %74, 0, !dbg !3848
  br i1 %tobool1.i485, label %__str_to_int.exit488, label %while.body.i480, !dbg !3848

if.else13.i487:                                   ; preds = %while.body.i480
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str1462, i64 0, i64 0)) #10, !dbg !3852
  unreachable

__str_to_int.exit488:                             ; preds = %if.then10.i486
  %conv116 = trunc i64 %add.i484 to i32, !dbg !3846
  br label %while.cond.backedge, !dbg !3853

while.cond.backedge:                              ; preds = %__add_arg.exit, %__str_to_int.exit, %if.then151, %if.then139, %if.then127, %__str_to_int.exit488, %__str_to_int.exit451, %__add_arg.exit399, %__str_to_int.exit392, %__add_arg.exit325
  %.be = phi i32 [ %inc.i323, %__add_arg.exit325 ], [ %10, %__str_to_int.exit451 ], [ %10, %__str_to_int.exit488 ], [ %10, %if.then127 ], [ %10, %if.then139 ], [ %10, %if.then151 ], [ %10, %__str_to_int.exit ], [ %inc.i, %__add_arg.exit ], [ %10, %__str_
  %fd_fail.0.be = phi i32 [ %fd_fail.0818, %__add_arg.exit325 ], [ %fd_fail.0818, %__str_to_int.exit451 ], [ %fd_fail.0818, %__str_to_int.exit488 ], [ %fd_fail.0818, %if.then127 ], [ %fd_fail.0818, %if.then139 ], [ 1, %if.then151 ], [ %conv174, %__str_to
  %save_all_writes_flag.0.be = phi i32 [ %save_all_writes_flag.0825, %__add_arg.exit325 ], [ %save_all_writes_flag.0825, %__str_to_int.exit451 ], [ %save_all_writes_flag.0825, %__str_to_int.exit488 ], [ %save_all_writes_flag.0825, %if.then127 ], [ 1, %if
  %sym_arg_num.0.be = phi i32 [ %inc18, %__add_arg.exit325 ], [ %sym_arg_num.0833, %__str_to_int.exit451 ], [ %sym_arg_num.0833, %__str_to_int.exit488 ], [ %sym_arg_num.0833, %if.then127 ], [ %sym_arg_num.0833, %if.then139 ], [ %sym_arg_num.0833, %if.the
  %k.0.be = phi i32 [ %inc14, %__add_arg.exit325 ], [ %inc90, %__str_to_int.exit451 ], [ %inc112, %__str_to_int.exit488 ], [ %inc128, %if.then127 ], [ %inc140, %if.then139 ], [ %inc152, %if.then151 ], [ %inc170, %__str_to_int.exit ], [ %inc177, %__add_ar
  %sym_stdout_flag.0.be = phi i32 [ %sym_stdout_flag.0851, %__add_arg.exit325 ], [ %sym_stdout_flag.0851, %__str_to_int.exit451 ], [ %sym_stdout_flag.0851, %__str_to_int.exit488 ], [ 1, %if.then127 ], [ %sym_stdout_flag.0851, %if.then139 ], [ %sym_stdout
  %sym_stdin_len.0.be = phi i32 [ %sym_stdin_len.0859, %__add_arg.exit325 ], [ %sym_stdin_len.0859, %__str_to_int.exit451 ], [ %conv116, %__str_to_int.exit488 ], [ %sym_stdin_len.0859, %if.then127 ], [ %sym_stdin_len.0859, %if.then139 ], [ %sym_stdin_len
  %sym_file_len.0.be = phi i32 [ %sym_file_len.0867, %__add_arg.exit325 ], [ %conv94, %__str_to_int.exit451 ], [ %sym_file_len.0867, %__str_to_int.exit488 ], [ %sym_file_len.0867, %if.then127 ], [ %sym_file_len.0867, %if.then139 ], [ %sym_file_len.0867, 
  %sym_files.0.be = phi i32 [ %sym_files.0875, %__add_arg.exit325 ], [ %conv89, %__str_to_int.exit451 ], [ %sym_files.0875, %__str_to_int.exit488 ], [ %sym_files.0875, %if.then127 ], [ %sym_files.0875, %if.then139 ], [ %sym_files.0875, %if.then151 ], [ %
  %cmp2 = icmp slt i32 %k.0.be, %0, !dbg !3733
  br i1 %cmp2, label %while.body, label %while.end, !dbg !3733

if.else117:                                       ; preds = %if.end.i471
  br i1 %cmp7.i279, label %while.body.i493, label %if.else175, !dbg !3854

while.body.i493:                                  ; preds = %if.end.i497, %if.else117
  %75 = phi i8 [ %76, %if.end.i497 ], [ 45, %if.else117 ]
  %b.addr.09.i490 = phi i8* [ %incdec.ptr3.i495, %if.end.i497 ], [ getelementptr inbounds ([13 x i8]* @.str1563, i64 0, i64 0), %if.else117 ]
  %a.addr.08.i491 = phi i8* [ %incdec.ptr.i494, %if.end.i497 ], [ %11, %if.else117 ]
  %tobool.i492 = icmp eq i8 %75, 0, !dbg !3856
  br i1 %tobool.i492, label %if.then127, label %if.end.i497, !dbg !3856

if.end.i497:                                      ; preds = %while.body.i493
  %incdec.ptr.i494 = getelementptr inbounds i8* %a.addr.08.i491, i64 1, !dbg !3857
  %incdec.ptr3.i495 = getelementptr inbounds i8* %b.addr.09.i490, i64 1, !dbg !3858
  %76 = load i8* %incdec.ptr.i494, align 1, !dbg !3854, !tbaa !2183
  %77 = load i8* %incdec.ptr3.i495, align 1, !dbg !3854, !tbaa !2183
  %cmp.i496 = icmp eq i8 %76, %77, !dbg !3854
  br i1 %cmp.i496, label %while.body.i493, label %lor.lhs.false122, !dbg !3854

lor.lhs.false122:                                 ; preds = %if.end.i497
  br i1 %cmp7.i279, label %while.body.i504, label %if.else175, !dbg !3859

while.body.i504:                                  ; preds = %if.end.i508, %lor.lhs.false122
  %78 = phi i8 [ %79, %if.end.i508 ], [ 45, %lor.lhs.false122 ]
  %b.addr.09.i501 = phi i8* [ %incdec.ptr3.i506, %if.end.i508 ], [ getelementptr inbounds ([12 x i8]* @.str1664, i64 0, i64 0), %lor.lhs.false122 ]
  %a.addr.08.i502 = phi i8* [ %incdec.ptr.i505, %if.end.i508 ], [ %11, %lor.lhs.false122 ]
  %tobool.i503 = icmp eq i8 %78, 0, !dbg !3861
  br i1 %tobool.i503, label %if.then127, label %if.end.i508, !dbg !3861

if.end.i508:                                      ; preds = %while.body.i504
  %incdec.ptr.i505 = getelementptr inbounds i8* %a.addr.08.i502, i64 1, !dbg !3862
  %incdec.ptr3.i506 = getelementptr inbounds i8* %b.addr.09.i501, i64 1, !dbg !3863
  %79 = load i8* %incdec.ptr.i505, align 1, !dbg !3859, !tbaa !2183
  %80 = load i8* %incdec.ptr3.i506, align 1, !dbg !3859, !tbaa !2183
  %cmp.i507 = icmp eq i8 %79, %80, !dbg !3859
  br i1 %cmp.i507, label %while.body.i504, label %if.else129, !dbg !3859

if.then127:                                       ; preds = %while.body.i504, %while.body.i493
  %inc128 = add nsw i32 %k.0842, 1, !dbg !3864
  br label %while.cond.backedge, !dbg !3866

if.else129:                                       ; preds = %if.end.i508
  br i1 %cmp7.i279, label %while.body.i515, label %if.else175, !dbg !3867

while.body.i515:                                  ; preds = %if.end.i519, %if.else129
  %81 = phi i8 [ %82, %if.end.i519 ], [ 45, %if.else129 ]
  %b.addr.09.i512 = phi i8* [ %incdec.ptr3.i517, %if.end.i519 ], [ getelementptr inbounds ([18 x i8]* @.str1765, i64 0, i64 0), %if.else129 ]
  %a.addr.08.i513 = phi i8* [ %incdec.ptr.i516, %if.end.i519 ], [ %11, %if.else129 ]
  %tobool.i514 = icmp eq i8 %81, 0, !dbg !3869
  br i1 %tobool.i514, label %if.then139, label %if.end.i519, !dbg !3869

if.end.i519:                                      ; preds = %while.body.i515
  %incdec.ptr.i516 = getelementptr inbounds i8* %a.addr.08.i513, i64 1, !dbg !3870
  %incdec.ptr3.i517 = getelementptr inbounds i8* %b.addr.09.i512, i64 1, !dbg !3871
  %82 = load i8* %incdec.ptr.i516, align 1, !dbg !3867, !tbaa !2183
  %83 = load i8* %incdec.ptr3.i517, align 1, !dbg !3867, !tbaa !2183
  %cmp.i518 = icmp eq i8 %82, %83, !dbg !3867
  br i1 %cmp.i518, label %while.body.i515, label %lor.lhs.false134, !dbg !3867

lor.lhs.false134:                                 ; preds = %if.end.i519
  br i1 %cmp7.i279, label %while.body.i570, label %if.else175, !dbg !3867

while.body.i570:                                  ; preds = %if.end.i574, %lor.lhs.false134
  %84 = phi i8 [ %85, %if.end.i574 ], [ 45, %lor.lhs.false134 ]
  %b.addr.09.i567 = phi i8* [ %incdec.ptr3.i572, %if.end.i574 ], [ getelementptr inbounds ([17 x i8]* @.str1866, i64 0, i64 0), %lor.lhs.false134 ]
  %a.addr.08.i568 = phi i8* [ %incdec.ptr.i571, %if.end.i574 ], [ %11, %lor.lhs.false134 ]
  %tobool.i569 = icmp eq i8 %84, 0, !dbg !3869
  br i1 %tobool.i569, label %if.then139, label %if.end.i574, !dbg !3869

if.end.i574:                                      ; preds = %while.body.i570
  %incdec.ptr.i571 = getelementptr inbounds i8* %a.addr.08.i568, i64 1, !dbg !3870
  %incdec.ptr3.i572 = getelementptr inbounds i8* %b.addr.09.i567, i64 1, !dbg !3871
  %85 = load i8* %incdec.ptr.i571, align 1, !dbg !3867, !tbaa !2183
  %86 = load i8* %incdec.ptr3.i572, align 1, !dbg !3867, !tbaa !2183
  %cmp.i573 = icmp eq i8 %85, %86, !dbg !3867
  br i1 %cmp.i573, label %while.body.i570, label %if.else141, !dbg !3867

if.then139:                                       ; preds = %while.body.i570, %while.body.i515
  %inc140 = add nsw i32 %k.0842, 1, !dbg !3872
  br label %while.cond.backedge, !dbg !3874

if.else141:                                       ; preds = %if.end.i574
  br i1 %cmp7.i279, label %while.body.i559, label %if.else175, !dbg !3875

while.body.i559:                                  ; preds = %if.end.i563, %if.else141
  %87 = phi i8 [ %88, %if.end.i563 ], [ 45, %if.else141 ]
  %b.addr.09.i556 = phi i8* [ %incdec.ptr3.i561, %if.end.i563 ], [ getelementptr inbounds ([10 x i8]* @.str1967, i64 0, i64 0), %if.else141 ]
  %a.addr.08.i557 = phi i8* [ %incdec.ptr.i560, %if.end.i563 ], [ %11, %if.else141 ]
  %tobool.i558 = icmp eq i8 %87, 0, !dbg !3877
  br i1 %tobool.i558, label %if.then151, label %if.end.i563, !dbg !3877

if.end.i563:                                      ; preds = %while.body.i559
  %incdec.ptr.i560 = getelementptr inbounds i8* %a.addr.08.i557, i64 1, !dbg !3878
  %incdec.ptr3.i561 = getelementptr inbounds i8* %b.addr.09.i556, i64 1, !dbg !3879
  %88 = load i8* %incdec.ptr.i560, align 1, !dbg !3875, !tbaa !2183
  %89 = load i8* %incdec.ptr3.i561, align 1, !dbg !3875, !tbaa !2183
  %cmp.i562 = icmp eq i8 %88, %89, !dbg !3875
  br i1 %cmp.i562, label %while.body.i559, label %lor.lhs.false146, !dbg !3875

lor.lhs.false146:                                 ; preds = %if.end.i563
  br i1 %cmp7.i279, label %while.body.i548, label %if.else175, !dbg !3875

while.body.i548:                                  ; preds = %if.end.i552, %lor.lhs.false146
  %90 = phi i8 [ %91, %if.end.i552 ], [ 45, %lor.lhs.false146 ]
  %b.addr.09.i545 = phi i8* [ %incdec.ptr3.i550, %if.end.i552 ], [ getelementptr inbounds ([9 x i8]* @.str2068, i64 0, i64 0), %lor.lhs.false146 ]
  %a.addr.08.i546 = phi i8* [ %incdec.ptr.i549, %if.end.i552 ], [ %11, %lor.lhs.false146 ]
  %tobool.i547 = icmp eq i8 %90, 0, !dbg !3877
  br i1 %tobool.i547, label %if.then151, label %if.end.i552, !dbg !3877

if.end.i552:                                      ; preds = %while.body.i548
  %incdec.ptr.i549 = getelementptr inbounds i8* %a.addr.08.i546, i64 1, !dbg !3878
  %incdec.ptr3.i550 = getelementptr inbounds i8* %b.addr.09.i545, i64 1, !dbg !3879
  %91 = load i8* %incdec.ptr.i549, align 1, !dbg !3875, !tbaa !2183
  %92 = load i8* %incdec.ptr3.i550, align 1, !dbg !3875, !tbaa !2183
  %cmp.i551 = icmp eq i8 %91, %92, !dbg !3875
  br i1 %cmp.i551, label %while.body.i548, label %if.else153, !dbg !3875

if.then151:                                       ; preds = %while.body.i548, %while.body.i559
  %inc152 = add nsw i32 %k.0842, 1, !dbg !3880
  br label %while.cond.backedge, !dbg !3882

if.else153:                                       ; preds = %if.end.i552
  br i1 %cmp7.i279, label %while.body.i537, label %if.else175, !dbg !3883

while.body.i537:                                  ; preds = %if.end.i541, %if.else153
  %93 = phi i8 [ %94, %if.end.i541 ], [ 45, %if.else153 ]
  %b.addr.09.i534 = phi i8* [ %incdec.ptr3.i539, %if.end.i541 ], [ getelementptr inbounds ([11 x i8]* @.str2169, i64 0, i64 0), %if.else153 ]
  %a.addr.08.i535 = phi i8* [ %incdec.ptr.i538, %if.end.i541 ], [ %11, %if.else153 ]
  %tobool.i536 = icmp eq i8 %93, 0, !dbg !3885
  br i1 %tobool.i536, label %if.then163, label %if.end.i541, !dbg !3885

if.end.i541:                                      ; preds = %while.body.i537
  %incdec.ptr.i538 = getelementptr inbounds i8* %a.addr.08.i535, i64 1, !dbg !3886
  %incdec.ptr3.i539 = getelementptr inbounds i8* %b.addr.09.i534, i64 1, !dbg !3887
  %94 = load i8* %incdec.ptr.i538, align 1, !dbg !3883, !tbaa !2183
  %95 = load i8* %incdec.ptr3.i539, align 1, !dbg !3883, !tbaa !2183
  %cmp.i540 = icmp eq i8 %94, %95, !dbg !3883
  br i1 %cmp.i540, label %while.body.i537, label %lor.lhs.false158, !dbg !3883

lor.lhs.false158:                                 ; preds = %if.end.i541
  br i1 %cmp7.i279, label %while.body.i526, label %if.else175, !dbg !3883

while.body.i526:                                  ; preds = %if.end.i530, %lor.lhs.false158
  %96 = phi i8 [ %97, %if.end.i530 ], [ 45, %lor.lhs.false158 ]
  %b.addr.09.i523 = phi i8* [ %incdec.ptr3.i528, %if.end.i530 ], [ getelementptr inbounds ([10 x i8]* @.str2270, i64 0, i64 0), %lor.lhs.false158 ]
  %a.addr.08.i524 = phi i8* [ %incdec.ptr.i527, %if.end.i530 ], [ %11, %lor.lhs.false158 ]
  %tobool.i525 = icmp eq i8 %96, 0, !dbg !3885
  br i1 %tobool.i525, label %if.then163, label %if.end.i530, !dbg !3885

if.end.i530:                                      ; preds = %while.body.i526
  %incdec.ptr.i527 = getelementptr inbounds i8* %a.addr.08.i524, i64 1, !dbg !3886
  %incdec.ptr3.i528 = getelementptr inbounds i8* %b.addr.09.i523, i64 1, !dbg !3887
  %97 = load i8* %incdec.ptr.i527, align 1, !dbg !3883, !tbaa !2183
  %98 = load i8* %incdec.ptr3.i528, align 1, !dbg !3883, !tbaa !2183
  %cmp.i529 = icmp eq i8 %97, %98, !dbg !3883
  br i1 %cmp.i529, label %while.body.i526, label %if.else175, !dbg !3883

if.then163:                                       ; preds = %while.body.i526, %while.body.i537
  %inc165 = add nsw i32 %k.0842, 1, !dbg !3888
  %cmp166 = icmp eq i32 %inc165, %0, !dbg !3888
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !3888

if.then168:                                       ; preds = %if.then163
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str2371, i64 0, i64 0)), !dbg !3890
  unreachable

if.end169:                                        ; preds = %if.then163
  %inc170 = add nsw i32 %k.0842, 2, !dbg !3891
  %idxprom171 = sext i32 %inc165 to i64, !dbg !3891
  %arrayidx172 = getelementptr inbounds i8** %1, i64 %idxprom171, !dbg !3891
  %99 = load i8** %arrayidx172, align 8, !dbg !3891, !tbaa !3721
  %100 = load i8* %99, align 1, !dbg !3892, !tbaa !2183
  %tobool.i290 = icmp eq i8 %100, 0, !dbg !3892
  br i1 %tobool.i290, label %if.then.i291, label %while.body.i292, !dbg !3892

if.then.i291:                                     ; preds = %if.end169
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str2371, i64 0, i64 0)) #10, !dbg !3892
  unreachable

while.body.i292:                                  ; preds = %if.then10.i, %if.end169
  %101 = phi i8 [ %103, %if.then10.i ], [ %100, %if.end169 ]
  %s.pn.i = phi i8* [ %incdec.ptr26.i, %if.then10.i ], [ %99, %if.end169 ]
  %res.025.i = phi i64 [ %add.i, %if.then10.i ], [ 0, %if.end169 ]
  %incdec.ptr26.i = getelementptr inbounds i8* %s.pn.i, i64 1, !dbg !3893
  %.off.i = add i8 %101, -48, !dbg !3894
  %102 = icmp ult i8 %.off.i, 10, !dbg !3894
  br i1 %102, label %if.then10.i, label %if.else13.i, !dbg !3894

if.then10.i:                                      ; preds = %while.body.i292
  %conv.i = sext i8 %101 to i64, !dbg !3895
  %mul.i = mul nsw i64 %res.025.i, 10, !dbg !3896
  %sub.i = add i64 %conv.i, -48, !dbg !3896
  %add.i = add i64 %sub.i, %mul.i, !dbg !3896
  %103 = load i8* %incdec.ptr26.i, align 1, !dbg !3893, !tbaa !2183
  %tobool1.i = icmp eq i8 %103, 0, !dbg !3893
  br i1 %tobool1.i, label %__str_to_int.exit, label %while.body.i292, !dbg !3893

if.else13.i:                                      ; preds = %while.body.i292
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str2371, i64 0, i64 0)) #10, !dbg !3897
  unreachable

__str_to_int.exit:                                ; preds = %if.then10.i
  %conv174 = trunc i64 %add.i to i32, !dbg !3891
  br label %while.cond.backedge, !dbg !3898

if.else175:                                       ; preds = %if.end.i530, %lor.lhs.false158, %if.else153, %lor.lhs.false146, %if.else141, %lor.lhs.false134, %if.else129, %lor.lhs.false122, %if.else117, %lor.lhs.false100, %if.else95, %lor.lhs.false72, %if
  %cmp.i277 = icmp eq i32 %10, 1024, !dbg !3899
  br i1 %cmp.i277, label %if.then.i, label %__add_arg.exit, !dbg !3899

if.then.i:                                        ; preds = %if.else175
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str2472, i64 0, i64 0)) #10, !dbg !3902
  unreachable

__add_arg.exit:                                   ; preds = %if.else175
  %inc177 = add nsw i32 %k.0842, 1, !dbg !3900
  %idxprom.i = sext i32 %10 to i64, !dbg !3903
  %arrayidx.i = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i, !dbg !3903
  store i8* %11, i8** %arrayidx.i, align 8, !dbg !3903, !tbaa !3721
  %inc.i = add nsw i32 %10, 1, !dbg !3904
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %sym_files.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_files.0.be, %while.cond.backedge ]
  %sym_file_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_file_len.0.be, %while.cond.backedge ]
  %sym_stdin_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdin_len.0.be, %while.cond.backedge ]
  %sym_stdout_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdout_flag.0.be, %while.cond.backedge ]
  %save_all_writes_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %save_all_writes_flag.0.be, %while.cond.backedge ]
  %fd_fail.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %fd_fail.0.be, %while.cond.backedge ]
  %.lcssa648 = phi i32 [ 0, %while.cond.preheader ], [ %.be, %while.cond.backedge ]
  %add188 = add nsw i32 %.lcssa648, 1, !dbg !3905
  %conv189 = sext i32 %add188 to i64, !dbg !3905
  %int_cast_to_i64 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !3905
  %mul = shl nsw i64 %conv189, 3, !dbg !3905
  %call190 = call noalias i8* @malloc(i64 %mul) #10, !dbg !3905
  %104 = bitcast i8* %call190 to i8**, !dbg !3905
  call void @klee_mark_global(i8* %call190) #10, !dbg !3906
  %conv191 = sext i32 %.lcssa648 to i64, !dbg !3907
  %int_cast_to_i641 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !3907
  %mul192 = shl nsw i64 %conv191, 3, !dbg !3907
  %105 = call i8* @memcpy(i8* %call190, i8* %2, i64 %mul192)
  %arrayidx194 = getelementptr inbounds i8** %104, i64 %conv191, !dbg !3908
  store i8* null, i8** %arrayidx194, align 8, !dbg !3908, !tbaa !3721
  store i32 %.lcssa648, i32* %argcPtr, align 4, !dbg !3909, !tbaa !2230
  store i8** %104, i8*** %argvPtr, align 8, !dbg !3910, !tbaa !3721
  call void @klee_init_fds(i32 %sym_files.0.lcssa, i32 %sym_file_len.0.lcssa, i32 %sym_stdin_len.0.lcssa, i32 %sym_stdout_flag.0.lcssa, i32 %save_all_writes_flag.0.lcssa, i32 %fd_fail.0.lcssa) #10, !dbg !3911
  ret void, !dbg !3912
}

declare void @klee_mark_global(i8*) #8

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @__emit_error(i8* %msg) #13 {
entry:
  tail call void @klee_report_error(i8* getelementptr inbounds ([46 x i8]* @.str2573, i64 0, i64 0), i32 24, i8* %msg, i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0)) #20, !dbg !3913
  unreachable, !dbg !3913
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @__get_sym_str(i32 %numChars, i8* %name) #6 {
entry:
  %add = add nsw i32 %numChars, 1, !dbg !3914
  %conv = sext i32 %add to i64, !dbg !3914
  %call = tail call noalias i8* @malloc(i64 %conv) #10, !dbg !3914
  tail call void @klee_mark_global(i8* %call) #10, !dbg !3915
  tail call void @klee_make_symbolic(i8* %call, i64 %conv, i8* %name) #10, !dbg !3916
  %cmp18 = icmp sgt i32 %numChars, 0, !dbg !3917
  br i1 %cmp18, label %for.body, label %for.end, !dbg !3917

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !3919
  %0 = load i8* %arrayidx, align 1, !dbg !3919, !tbaa !2183
  %cmp.i = icmp sgt i8 %0, 31, !dbg !3920
  %cmp3.i = icmp ne i8 %0, 127, !dbg !3920
  %cmp3..i = and i1 %cmp.i, %cmp3.i, !dbg !3920
  %conv5 = zext i1 %cmp3..i to i64, !dbg !3919
  tail call void @klee_posix_prefer_cex(i8* %call, i64 %conv5) #10, !dbg !3919
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3917
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3917
  %exitcond = icmp eq i32 %lftr.wideiv, %numChars, !dbg !3917
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3917

for.end:                                          ; preds = %for.body, %entry
  %idxprom6 = sext i32 %numChars to i64, !dbg !3921
  %arrayidx7 = getelementptr inbounds i8* %call, i64 %idxprom6, !dbg !3921
  store i8 0, i8* %arrayidx7, align 1, !dbg !3921, !tbaa !2183
  ret i8* %call, !dbg !3922
}

; Function Attrs: nounwind uwtable
define weak i32 @__syscall_rt_sigaction(i32 %signum, %struct.sigaction* %act, %struct.sigaction* %oldact, i64 %_something) #6 {
entry:
  tail call void @klee_warning_once(i8* getelementptr inbounds ([18 x i8]* @.str76, i64 0, i64 0)) #10, !dbg !3923
  ret i32 0, !dbg !3924
}

; Function Attrs: nounwind uwtable
define weak i32 @sigaction(i32 %signum, %struct.sigaction* %act, %struct.sigaction* %oldact) #6 {
entry:
  tail call void @klee_warning_once(i8* getelementptr inbounds ([18 x i8]* @.str76, i64 0, i64 0)) #10, !dbg !3925
  ret i32 0, !dbg !3926
}

; Function Attrs: nounwind uwtable
define weak i32 @sigprocmask(i32 %how, %struct.__sigset_t* %set, %struct.__sigset_t* %oldset) #6 {
entry:
  tail call void @klee_warning_once(i8* getelementptr inbounds ([18 x i8]* @.str76, i64 0, i64 0)) #10, !dbg !3927
  ret i32 0, !dbg !3928
}

; Function Attrs: nounwind uwtable
define weak i32 @fdatasync(i32 %fd) #6 {
entry:
  ret i32 0, !dbg !3929
}

; Function Attrs: nounwind uwtable
define weak void @sync() #6 {
entry:
  ret void, !dbg !3930
}

; Function Attrs: nounwind uwtable
define weak i32 @__socketcall(i32 %type, i32* %args) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str177, i64 0, i64 0)) #10, !dbg !3931
  %call = tail call i32* @__errno_location() #1, !dbg !3932
  store i32 97, i32* %call, align 4, !dbg !3932, !tbaa !2230
  ret i32 -1, !dbg !3933
}

; Function Attrs: nounwind uwtable
define weak i32 @_IO_getc(%struct._IO_FILE* %f) #6 {
entry:
  %call = tail call i32 @__fgetc_unlocked(%struct._IO_FILE* %f) #10, !dbg !3934
  ret i32 %call, !dbg !3934
}

declare i32 @__fgetc_unlocked(%struct._IO_FILE*) #8

; Function Attrs: nounwind uwtable
define weak i32 @_IO_putc(i32 %c, %struct._IO_FILE* %f) #6 {
entry:
  %call = tail call i32 @__fputc_unlocked(i32 %c, %struct._IO_FILE* %f) #10, !dbg !3935
  ret i32 %call, !dbg !3935
}

declare i32 @__fputc_unlocked(i32, %struct._IO_FILE*) #8

; Function Attrs: nounwind uwtable
define weak i32 @mkdir(i8* %pathname, i32 %mode) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([15 x i8]* @.str278, i64 0, i64 0)) #10, !dbg !3936
  %call = tail call i32* @__errno_location() #1, !dbg !3937
  store i32 5, i32* %call, align 4, !dbg !3937, !tbaa !2230
  ret i32 -1, !dbg !3938
}

; Function Attrs: nounwind uwtable
define weak i32 @mkfifo(i8* %pathname, i32 %mode) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([15 x i8]* @.str278, i64 0, i64 0)) #10, !dbg !3939
  %call = tail call i32* @__errno_location() #1, !dbg !3940
  store i32 5, i32* %call, align 4, !dbg !3940, !tbaa !2230
  ret i32 -1, !dbg !3941
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @mknod(i8* nocapture readnone %pathname, i32 %mode, i64 %dev) #11 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([15 x i8]* @.str278, i64 0, i64 0)) #10, !dbg !3942
  %call = tail call i32* @__errno_location() #1, !dbg !3943
  store i32 5, i32* %call, align 4, !dbg !3943, !tbaa !2230
  ret i32 -1, !dbg !3944
}

; Function Attrs: nounwind uwtable
define weak i32 @pipe(i32* %filedes) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str379, i64 0, i64 0)) #10, !dbg !3945
  %call = tail call i32* @__errno_location() #1, !dbg !3946
  store i32 23, i32* %call, align 4, !dbg !3946, !tbaa !2230
  ret i32 -1, !dbg !3947
}

; Function Attrs: nounwind uwtable
define weak i32 @link(i8* %oldpath, i8* %newpath) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !3948
  %call = tail call i32* @__errno_location() #1, !dbg !3949
  store i32 1, i32* %call, align 4, !dbg !3949, !tbaa !2230
  ret i32 -1, !dbg !3950
}

; Function Attrs: nounwind uwtable
define weak i32 @symlink(i8* %oldpath, i8* %newpath) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !3951
  %call = tail call i32* @__errno_location() #1, !dbg !3952
  store i32 1, i32* %call, align 4, !dbg !3952, !tbaa !2230
  ret i32 -1, !dbg !3953
}

; Function Attrs: nounwind uwtable
define weak i32 @rename(i8* %oldpath, i8* %newpath) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !3954
  %call = tail call i32* @__errno_location() #1, !dbg !3955
  store i32 1, i32* %call, align 4, !dbg !3955, !tbaa !2230
  ret i32 -1, !dbg !3956
}

; Function Attrs: nounwind uwtable
define weak i32 @nanosleep(%struct.timespec* %req, %struct.timespec* %rem) #6 {
entry:
  ret i32 0, !dbg !3957
}

; Function Attrs: nounwind uwtable
define weak i32 @clock_gettime(i32 %clk_id, %struct.timespec* %res) #6 {
entry:
  %tv = alloca %struct.timeval, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #10, !dbg !3958
  %tv_sec = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !dbg !3959
  %0 = load i64* %tv_sec, align 8, !dbg !3959, !tbaa !2410
  %tv_sec1 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 0, !dbg !3959
  store i64 %0, i64* %tv_sec1, align 8, !dbg !3959, !tbaa !3960
  %tv_usec = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !dbg !3961
  %1 = load i64* %tv_usec, align 8, !dbg !3961, !tbaa !3962
  %mul = mul nsw i64 %1, 1000, !dbg !3961
  %tv_nsec = getelementptr inbounds %struct.timespec* %res, i64 0, i32 1, !dbg !3961
  store i64 %mul, i64* %tv_nsec, align 8, !dbg !3961, !tbaa !3963
  ret i32 0, !dbg !3964
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #7

; Function Attrs: nounwind uwtable
define weak i32 @clock_settime(i32 %clk_id, %struct.timespec* %res) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !3965
  %call = tail call i32* @__errno_location() #1, !dbg !3966
  store i32 1, i32* %call, align 4, !dbg !3966, !tbaa !2230
  ret i32 -1, !dbg !3967
}

; Function Attrs: nounwind uwtable
define i64 @time(i64* %t) #6 {
entry:
  %tv = alloca %struct.timeval, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #10, !dbg !3968
  %tobool = icmp eq i64* %t, null, !dbg !3969
  %tv_sec1.phi.trans.insert = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0
  %.pre = load i64* %tv_sec1.phi.trans.insert, align 8, !dbg !3971, !tbaa !2410
  br i1 %tobool, label %if.end, label %if.then, !dbg !3969

if.then:                                          ; preds = %entry
  store i64 %.pre, i64* %t, align 8, !dbg !3972, !tbaa !3511
  br label %if.end, !dbg !3972

if.end:                                           ; preds = %if.then, %entry
  ret i64 %.pre, !dbg !3971
}

; Function Attrs: nounwind uwtable
define i64 @times(%struct.tms* %buf) #6 {
entry:
  %tobool = icmp eq %struct.tms* %buf, null, !dbg !3973
  br i1 %tobool, label %if.then, label %if.else, !dbg !3973

if.then:                                          ; preds = %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([13 x i8]* @.str581, i64 0, i64 0)) #10, !dbg !3975
  br label %if.end, !dbg !3975

if.else:                                          ; preds = %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([40 x i8]* @.str682, i64 0, i64 0)) #10, !dbg !3976
  %0 = bitcast %struct.tms* %buf to i8*
  %1 = call i8* @memset(i8* %0, i32 0, i64 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i64 0, !dbg !3978
}

; Function Attrs: nounwind uwtable
define weak %struct.utmpx* @getutxent() #6 {
entry:
  %call = tail call %struct.utmp* @getutent() #10, !dbg !3979
  %0 = bitcast %struct.utmp* %call to %struct.utmpx*, !dbg !3979
  ret %struct.utmpx* %0, !dbg !3979
}

; Function Attrs: nounwind
declare %struct.utmp* @getutent() #7

; Function Attrs: nounwind uwtable
define weak void @setutxent() #6 {
entry:
  tail call void @setutent() #10, !dbg !3980
  ret void, !dbg !3981
}

; Function Attrs: nounwind
declare void @setutent() #7

; Function Attrs: nounwind uwtable
define weak void @endutxent() #6 {
entry:
  tail call void @endutent() #10, !dbg !3982
  ret void, !dbg !3983
}

; Function Attrs: nounwind
declare void @endutent() #7

; Function Attrs: nounwind uwtable
define weak i32 @utmpxname(i8* %file) #6 {
entry:
  %call = tail call i32 @utmpname(i8* %file) #10, !dbg !3984
  ret i32 0, !dbg !3985
}

; Function Attrs: nounwind
declare i32 @utmpname(i8*) #7

; Function Attrs: nounwind uwtable
define weak i32 @euidaccess(i8* %pathname, i32 %mode) #6 {
entry:
  %call = tail call i32 @access(i8* %pathname, i32 %mode) #10, !dbg !3986
  ret i32 %call, !dbg !3986
}

; Function Attrs: nounwind uwtable
define weak i32 @eaccess(i8* %pathname, i32 %mode) #6 {
entry:
  %call = tail call i32 @euidaccess(i8* %pathname, i32 %mode) #10, !dbg !3987
  ret i32 %call, !dbg !3987
}

; Function Attrs: nounwind uwtable
define weak i32 @group_member(i32 %__gid) #6 {
entry:
  %call = tail call i32 @getgid() #10, !dbg !3988
  %cmp = icmp eq i32 %call, %__gid, !dbg !3988
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3988

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @getegid() #10, !dbg !3988
  %cmp2 = icmp eq i32 %call1, %__gid, !dbg !3988
  br label %lor.end, !dbg !3988

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32, !dbg !3988
  ret i32 %lor.ext, !dbg !3988
}

; Function Attrs: nounwind
declare i32 @getegid() #7

; Function Attrs: nounwind uwtable
define weak i32 @utime(i8* %filename, %struct.utimbuf* %buf) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !3989
  %call = tail call i32* @__errno_location() #1, !dbg !3990
  store i32 1, i32* %call, align 4, !dbg !3990, !tbaa !2230
  ret i32 -1, !dbg !3991
}

; Function Attrs: nounwind uwtable
define weak i32 @futimes(i32 %fd, %struct.timeval* %times) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str783, i64 0, i64 0)) #10, !dbg !3992
  %call = tail call i32* @__errno_location() #1, !dbg !3993
  store i32 9, i32* %call, align 4, !dbg !3993, !tbaa !2230
  ret i32 -1, !dbg !3994
}

; Function Attrs: nounwind readonly uwtable
define i32 @strverscmp(i8* nocapture readonly %__s1, i8* nocapture readonly %__s2) #15 {
entry:
  %call = tail call i32 @strcmp(i8* %__s1, i8* %__s2) #10, !dbg !3995
  ret i32 %call, !dbg !3995
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #16

; Function Attrs: inlinehint nounwind readnone uwtable
define i32 @gnu_dev_major(i64 %__dev) #17 {
entry:
  %int_cast_to_i64 = bitcast i64 8 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !3996
  %shr = lshr i64 %__dev, 8, !dbg !3996
  %and = and i64 %shr, 4095, !dbg !3996
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !3996
  %shr1 = lshr i64 %__dev, 32, !dbg !3996
  %and2 = and i64 %shr1, 4294963200, !dbg !3996
  %or = or i64 %and, %and2, !dbg !3996
  %conv4 = trunc i64 %or to i32, !dbg !3996
  ret i32 %conv4, !dbg !3996
}

; Function Attrs: inlinehint nounwind readnone uwtable
define i32 @gnu_dev_minor(i64 %__dev) #17 {
entry:
  %and = and i64 %__dev, 255, !dbg !3997
  %int_cast_to_i64 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !3997
  %shr = lshr i64 %__dev, 12, !dbg !3997
  %and1 = and i64 %shr, 4294967040, !dbg !3997
  %or = or i64 %and1, %and, !dbg !3997
  %conv3 = trunc i64 %or to i32, !dbg !3997
  ret i32 %conv3, !dbg !3997
}

; Function Attrs: inlinehint nounwind readnone uwtable
define i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #17 {
entry:
  %and = and i32 %__minor, 255, !dbg !3998
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !3998
  %and1 = shl i32 %__major, 8, !dbg !3998
  %shl = and i32 %and1, 1048320, !dbg !3998
  %or = or i32 %and, %shl, !dbg !3998
  %conv = zext i32 %or to i64, !dbg !3998
  %and2 = and i32 %__minor, -256, !dbg !3998
  %conv3 = zext i32 %and2 to i64, !dbg !3998
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !3998
  %shl4 = shl nuw nsw i64 %conv3, 12, !dbg !3998
  %and6 = and i32 %__major, -4096, !dbg !3998
  %conv7 = zext i32 %and6 to i64, !dbg !3998
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !3998
  %shl8 = shl nuw i64 %conv7, 32, !dbg !3998
  %or5 = or i64 %shl4, %shl8, !dbg !3998
  %or9 = or i64 %or5, %conv, !dbg !3998
  ret i64 %or9, !dbg !3998
}

; Function Attrs: nounwind uwtable
define weak i8* @canonicalize_file_name(i8* %name) #6 {
entry:
  %call = tail call i8* @realpath(i8* %name, i8* null) #10, !dbg !3999
  ret i8* %call, !dbg !3999
}

; Function Attrs: nounwind
declare i8* @realpath(i8* nocapture readonly, i8*) #7

; Function Attrs: nounwind uwtable
define weak i32 @getloadavg(double* %loadavg, i32 %nelem) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([21 x i8]* @.str884, i64 0, i64 0)) #10, !dbg !4000
  ret i32 -1, !dbg !4001
}

; Function Attrs: nounwind uwtable
define weak i32 @wait(i32* %status) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str985, i64 0, i64 0)) #10, !dbg !4002
  %call = tail call i32* @__errno_location() #1, !dbg !4003
  store i32 10, i32* %call, align 4, !dbg !4003, !tbaa !2230
  ret i32 -1, !dbg !4004
}

; Function Attrs: nounwind uwtable
define weak i32 @wait3(i32* %status, i32 %options, %struct.rusage* %rusage) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str985, i64 0, i64 0)) #10, !dbg !4005
  %call = tail call i32* @__errno_location() #1, !dbg !4006
  store i32 10, i32* %call, align 4, !dbg !4006, !tbaa !2230
  ret i32 -1, !dbg !4007
}

; Function Attrs: nounwind uwtable
define weak i32 @wait4(i32 %pid, i32* %status, i32 %options, %struct.rusage* %rusage) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str985, i64 0, i64 0)) #10, !dbg !4008
  %call = tail call i32* @__errno_location() #1, !dbg !4009
  store i32 10, i32* %call, align 4, !dbg !4009, !tbaa !2230
  ret i32 -1, !dbg !4010
}

; Function Attrs: nounwind uwtable
define weak i32 @waitpid(i32 %pid, i32* %status, i32 %options) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str985, i64 0, i64 0)) #10, !dbg !4011
  %call = tail call i32* @__errno_location() #1, !dbg !4012
  store i32 10, i32* %call, align 4, !dbg !4012, !tbaa !2230
  ret i32 -1, !dbg !4013
}

; Function Attrs: nounwind uwtable
define weak i32 @waitid(i32 %idtype, i32 %id, %struct.siginfo_t* %infop, i32 %options) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str985, i64 0, i64 0)) #10, !dbg !4014
  %call = tail call i32* @__errno_location() #1, !dbg !4015
  store i32 10, i32* %call, align 4, !dbg !4015, !tbaa !2230
  ret i32 -1, !dbg !4016
}

; Function Attrs: nounwind uwtable
define weak i32 @acl_delete_def_file(i8* %path_p) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4017
  %call = tail call i32* @__errno_location() #1, !dbg !4018
  store i32 1, i32* %call, align 4, !dbg !4018, !tbaa !2230
  ret i32 -1, !dbg !4019
}

; Function Attrs: nounwind uwtable
define weak i32 @acl_extended_file(i8 signext %path_p) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str1086, i64 0, i64 0)) #10, !dbg !4020
  %call = tail call i32* @__errno_location() #1, !dbg !4021
  store i32 2, i32* %call, align 4, !dbg !4021, !tbaa !2230
  ret i32 -1, !dbg !4022
}

; Function Attrs: nounwind uwtable
define weak i32 @acl_entries(%struct.__acl_ext* %acl) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str1187, i64 0, i64 0)) #10, !dbg !4023
  %call = tail call i32* @__errno_location() #1, !dbg !4024
  store i32 22, i32* %call, align 4, !dbg !4024, !tbaa !2230
  ret i32 -1, !dbg !4025
}

; Function Attrs: nounwind uwtable
define weak %struct.__acl_ext* @acl_from_mode(i32 %mode) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str1288, i64 0, i64 0)) #10, !dbg !4026
  %call = tail call i32* @__errno_location() #1, !dbg !4027
  store i32 12, i32* %call, align 4, !dbg !4027, !tbaa !2230
  ret %struct.__acl_ext* null, !dbg !4028
}

; Function Attrs: nounwind uwtable
define weak %struct.__acl_ext* @acl_get_fd(i32 %fd) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str1288, i64 0, i64 0)) #10, !dbg !4029
  %call = tail call i32* @__errno_location() #1, !dbg !4030
  store i32 12, i32* %call, align 4, !dbg !4030, !tbaa !2230
  ret %struct.__acl_ext* null, !dbg !4031
}

; Function Attrs: nounwind uwtable
define weak %struct.__acl_ext* @acl_get_file(i8* %pathname, i32 %type) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([19 x i8]* @.str1389, i64 0, i64 0)) #10, !dbg !4032
  %call = tail call i32* @__errno_location() #1, !dbg !4033
  store i32 12, i32* %call, align 4, !dbg !4033, !tbaa !2230
  ret %struct.__acl_ext* null, !dbg !4034
}

; Function Attrs: nounwind uwtable
define weak i32 @acl_set_fd(i32 %fd, %struct.__acl_ext* %acl) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4035
  %call = tail call i32* @__errno_location() #1, !dbg !4036
  store i32 1, i32* %call, align 4, !dbg !4036, !tbaa !2230
  ret i32 -1, !dbg !4037
}

; Function Attrs: nounwind uwtable
define weak i32 @acl_set_file(i8* %path_p, i32 %type, %struct.__acl_ext* %acl) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4038
  %call = tail call i32* @__errno_location() #1, !dbg !4039
  store i32 1, i32* %call, align 4, !dbg !4039, !tbaa !2230
  ret i32 -1, !dbg !4040
}

; Function Attrs: nounwind uwtable
define weak i32 @acl_free(i8* %obj_p) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str1187, i64 0, i64 0)) #10, !dbg !4041
  %call = tail call i32* @__errno_location() #1, !dbg !4042
  store i32 22, i32* %call, align 4, !dbg !4042, !tbaa !2230
  ret i32 -1, !dbg !4043
}

; Function Attrs: nounwind uwtable
define weak i32 @mount(i8* %source, i8* %target, i8* %filesystemtype, i64 %mountflags, i8* %data) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4044
  %call = tail call i32* @__errno_location() #1, !dbg !4045
  store i32 1, i32* %call, align 4, !dbg !4045, !tbaa !2230
  ret i32 -1, !dbg !4046
}

; Function Attrs: nounwind uwtable
define weak i32 @umount(i8* %target) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4047
  %call = tail call i32* @__errno_location() #1, !dbg !4048
  store i32 1, i32* %call, align 4, !dbg !4048, !tbaa !2230
  ret i32 -1, !dbg !4049
}

; Function Attrs: nounwind uwtable
define weak i32 @umount2(i8* %target, i32 %flags) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4050
  %call = tail call i32* @__errno_location() #1, !dbg !4051
  store i32 1, i32* %call, align 4, !dbg !4051, !tbaa !2230
  ret i32 -1, !dbg !4052
}

; Function Attrs: nounwind uwtable
define weak i32 @swapon(i8* %path, i32 %swapflags) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4053
  %call = tail call i32* @__errno_location() #1, !dbg !4054
  store i32 1, i32* %call, align 4, !dbg !4054, !tbaa !2230
  ret i32 -1, !dbg !4055
}

; Function Attrs: nounwind uwtable
define weak i32 @swapoff(i8* %path) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4056
  %call = tail call i32* @__errno_location() #1, !dbg !4057
  store i32 1, i32* %call, align 4, !dbg !4057, !tbaa !2230
  ret i32 -1, !dbg !4058
}

; Function Attrs: nounwind uwtable
define weak i32 @setgid(i32 %gid) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str1490, i64 0, i64 0)) #10, !dbg !4059
  ret i32 0, !dbg !4060
}

; Function Attrs: nounwind uwtable
define weak i32 @setgroups(i64 %size, i32* %list) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4061
  %call = tail call i32* @__errno_location() #1, !dbg !4062
  store i32 1, i32* %call, align 4, !dbg !4062, !tbaa !2230
  ret i32 -1, !dbg !4063
}

; Function Attrs: nounwind uwtable
define weak i32 @sethostname(i8* %name, i64 %len) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4064
  %call = tail call i32* @__errno_location() #1, !dbg !4065
  store i32 1, i32* %call, align 4, !dbg !4065, !tbaa !2230
  ret i32 -1, !dbg !4066
}

; Function Attrs: nounwind uwtable
define weak i32 @setpgid(i32 %pid, i32 %pgid) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4067
  %call = tail call i32* @__errno_location() #1, !dbg !4068
  store i32 1, i32* %call, align 4, !dbg !4068, !tbaa !2230
  ret i32 -1, !dbg !4069
}

; Function Attrs: nounwind uwtable
define weak i32 @setpgrp() #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4070
  %call = tail call i32* @__errno_location() #1, !dbg !4071
  store i32 1, i32* %call, align 4, !dbg !4071, !tbaa !2230
  ret i32 -1, !dbg !4072
}

; Function Attrs: nounwind uwtable
define weak i32 @setpriority(i32 %which, i32 %who, i32 %prio) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4073
  %call = tail call i32* @__errno_location() #1, !dbg !4074
  store i32 1, i32* %call, align 4, !dbg !4074, !tbaa !2230
  ret i32 -1, !dbg !4075
}

; Function Attrs: nounwind uwtable
define weak i32 @setresgid(i32 %rgid, i32 %egid, i32 %sgid) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4076
  %call = tail call i32* @__errno_location() #1, !dbg !4077
  store i32 1, i32* %call, align 4, !dbg !4077, !tbaa !2230
  ret i32 -1, !dbg !4078
}

; Function Attrs: nounwind uwtable
define weak i32 @setresuid(i32 %ruid, i32 %euid, i32 %suid) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4079
  %call = tail call i32* @__errno_location() #1, !dbg !4080
  store i32 1, i32* %call, align 4, !dbg !4080, !tbaa !2230
  ret i32 -1, !dbg !4081
}

; Function Attrs: nounwind uwtable
define weak i32 @setrlimit(i32 %resource, %struct.rlimit* %rlim) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4082
  %call = tail call i32* @__errno_location() #1, !dbg !4083
  store i32 1, i32* %call, align 4, !dbg !4083, !tbaa !2230
  ret i32 -1, !dbg !4084
}

; Function Attrs: nounwind uwtable
define weak i32 @setrlimit64(i32 %resource, %struct.rlimit64* %rlim) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4085
  %call = tail call i32* @__errno_location() #1, !dbg !4086
  store i32 1, i32* %call, align 4, !dbg !4086, !tbaa !2230
  ret i32 -1, !dbg !4087
}

; Function Attrs: nounwind uwtable
define weak i32 @setsid() #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4088
  %call = tail call i32* @__errno_location() #1, !dbg !4089
  store i32 1, i32* %call, align 4, !dbg !4089, !tbaa !2230
  ret i32 -1, !dbg !4090
}

; Function Attrs: nounwind uwtable
define weak i32 @settimeofday(%struct.timeval* %tv, %struct.timezone* %tz) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4091
  %call = tail call i32* @__errno_location() #1, !dbg !4092
  store i32 1, i32* %call, align 4, !dbg !4092, !tbaa !2230
  ret i32 -1, !dbg !4093
}

; Function Attrs: nounwind uwtable
define weak i32 @setuid(i32 %uid) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str1490, i64 0, i64 0)) #10, !dbg !4094
  ret i32 0, !dbg !4095
}

; Function Attrs: nounwind uwtable
define weak i32 @reboot(i32 %flag) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4096
  %call = tail call i32* @__errno_location() #1, !dbg !4097
  store i32 1, i32* %call, align 4, !dbg !4097, !tbaa !2230
  ret i32 -1, !dbg !4098
}

; Function Attrs: nounwind uwtable
define weak i32 @mlock(i8* %addr, i64 %len) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4099
  %call = tail call i32* @__errno_location() #1, !dbg !4100
  store i32 1, i32* %call, align 4, !dbg !4100, !tbaa !2230
  ret i32 -1, !dbg !4101
}

; Function Attrs: nounwind uwtable
define weak i32 @munlock(i8* %addr, i64 %len) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4102
  %call = tail call i32* @__errno_location() #1, !dbg !4103
  store i32 1, i32* %call, align 4, !dbg !4103, !tbaa !2230
  ret i32 -1, !dbg !4104
}

; Function Attrs: nounwind uwtable
define weak i32 @pause() #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4105
  %call = tail call i32* @__errno_location() #1, !dbg !4106
  store i32 1, i32* %call, align 4, !dbg !4106, !tbaa !2230
  ret i32 -1, !dbg !4107
}

; Function Attrs: nounwind uwtable
define weak i64 @readahead(i32 %fd, i64* %offset, i64 %count) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4108
  %call = tail call i32* @__errno_location() #1, !dbg !4109
  store i32 1, i32* %call, align 4, !dbg !4109, !tbaa !2230
  ret i64 -1, !dbg !4110
}

; Function Attrs: nounwind uwtable
define weak i8* @mmap(i8* %start, i64 %length, i32 %prot, i32 %flags, i32 %fd, i64 %offset) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4111
  %call = tail call i32* @__errno_location() #1, !dbg !4112
  store i32 1, i32* %call, align 4, !dbg !4112, !tbaa !2230
  ret i8* inttoptr (i64 -1 to i8*), !dbg !4113
}

; Function Attrs: nounwind uwtable
define weak i8* @mmap64(i8* %start, i64 %length, i32 %prot, i32 %flags, i32 %fd, i64 %offset) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4114
  %call = tail call i32* @__errno_location() #1, !dbg !4115
  store i32 1, i32* %call, align 4, !dbg !4115, !tbaa !2230
  ret i8* inttoptr (i64 -1 to i8*), !dbg !4116
}

; Function Attrs: nounwind uwtable
define weak i32 @munmap(i8* %start, i64 %length) #6 {
entry:
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str480, i64 0, i64 0)) #10, !dbg !4117
  %call = tail call i32* @__errno_location() #1, !dbg !4118
  store i32 1, i32* %call, align 4, !dbg !4118, !tbaa !2230
  ret i32 -1, !dbg !4119
}

; Function Attrs: nounwind uwtable
define i32 @open64(i8* %pathname, i32 %flags, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %and = and i32 %flags, 64, !dbg !4120
  %tobool = icmp eq i32 %and, 0, !dbg !4120
  br i1 %tobool, label %if.end, label %if.then, !dbg !4120

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !4121
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4121
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !4122
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !4122
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !4122
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !4122

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !4122
  %reg_save_area = load i8** %0, align 16, !dbg !4122
  %1 = sext i32 %gp_offset to i64, !dbg !4122
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !4122
  %3 = add i32 %gp_offset, 8, !dbg !4122
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !4122
  br label %vaarg.end, !dbg !4122

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !4122
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !4122
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !4122
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !4122
  br label %vaarg.end, !dbg !4122

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !4122
  %4 = load i32* %vaarg.addr, align 4, !dbg !4122
  call void @llvm.va_end(i8* %arraydecay1), !dbg !4123
  br label %if.end, !dbg !4124

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) #10, !dbg !4125
  ret i32 %call, !dbg !4125
}

; Function Attrs: nounwind uwtable
define i32 @openat64(i32 %fd, i8* %pathname, i32 %flags, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %and = and i32 %flags, 64, !dbg !4126
  %tobool = icmp eq i32 %and, 0, !dbg !4126
  br i1 %tobool, label %if.end, label %if.then, !dbg !4126

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !4127
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4127
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !4128
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !4128
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !4128
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !4128

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !4128
  %reg_save_area = load i8** %0, align 16, !dbg !4128
  %1 = sext i32 %gp_offset to i64, !dbg !4128
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !4128
  %3 = add i32 %gp_offset, 8, !dbg !4128
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !4128
  br label %vaarg.end, !dbg !4128

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !4128
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !4128
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !4128
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !4128
  br label %vaarg.end, !dbg !4128

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !4128
  %4 = load i32* %vaarg.addr, align 4, !dbg !4128
  call void @llvm.va_end(i8* %arraydecay1), !dbg !4129
  br label %if.end, !dbg !4130

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_openat(i32 %fd, i8* %pathname, i32 %flags, i32 %mode.0) #10, !dbg !4131
  ret i32 %call, !dbg !4131
}

; Function Attrs: nounwind uwtable
define i64 @lseek64(i32 %fd, i64 %offset, i32 %whence) #6 {
entry:
  %call = tail call i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #10, !dbg !4132
  ret i64 %call, !dbg !4132
}

; Function Attrs: nounwind uwtable
define i32 @__xstat64(i32 %vers, i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !4133
  %call = tail call i32 @__fd_stat(i8* %path, %struct.stat64* %0) #10, !dbg !4133
  ret i32 %call, !dbg !4133
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @stat64(i8* %path, %struct.stat64* %buf) #11 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !4134
  %call = tail call i32 @__fd_stat(i8* %path, %struct.stat64* %0) #10, !dbg !4134
  ret i32 %call, !dbg !4134
}

; Function Attrs: nounwind uwtable
define i32 @__lxstat64(i32 %vers, i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !4135
  %call = tail call i32 @__fd_lstat(i8* %path, %struct.stat64* %0) #10, !dbg !4135
  ret i32 %call, !dbg !4135
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @lstat64(i8* %path, %struct.stat64* %buf) #11 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !4136
  %call = tail call i32 @__fd_lstat(i8* %path, %struct.stat64* %0) #10, !dbg !4136
  ret i32 %call, !dbg !4136
}

; Function Attrs: nounwind uwtable
define i32 @__fxstat64(i32 %vers, i32 %fd, %struct.stat64* %buf) #6 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !4137
  %call = tail call i32 @__fd_fstat(i32 %fd, %struct.stat64* %0) #10, !dbg !4137
  ret i32 %call, !dbg !4137
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstat64(i32 %fd, %struct.stat64* %buf) #11 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !4138
  %call = tail call i32 @__fd_fstat(i32 %fd, %struct.stat64* %0) #10, !dbg !4138
  ret i32 %call, !dbg !4138
}

; Function Attrs: nounwind uwtable
define i32 @ftruncate64(i32 %fd, i64 %length) #6 {
entry:
  %call = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) #10, !dbg !4139
  ret i32 %call, !dbg !4139
}

; Function Attrs: nounwind uwtable
define weak i32 @statfs64(i8* %path, %struct.statfs* %buf) #6 {
entry:
  %call = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) #10, !dbg !4140
  ret i32 %call, !dbg !4140
}

; Function Attrs: nounwind uwtable
define i32 @getdents64(i32 %fd, %struct.dirent.12* %dirp, i32 %count) #6 {
entry:
  %0 = bitcast %struct.dirent.12* %dirp to %struct.dirent64*, !dbg !4141
  %call = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent64* %0, i32 %count) #10, !dbg !4141
  ret i32 %call, !dbg !4141
}

declare zeroext i1 @klee_is_infinite_float(float) #8

declare zeroext i1 @klee_is_infinite_double(double) #8

declare zeroext i1 @klee_is_infinite_long_double(x86_fp80) #8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinff(float %f) #18 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_float(float %f) #21
  %cmp = fcmp ogt float %f, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinf(double %d) #18 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_double(double %d) #21
  %cmp = fcmp ogt double %d, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline optnone
define i32 @klee_internal_isinfl(x86_fp80 %d) #19 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %d) #21
  %cmp = fcmp ogt x86_fp80 %d, 0xK00000000000000000000
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: nounwind uwtable
define double @klee_internal_fabs(double %d) #6 {
entry:
  %call = tail call double @klee_abs_double(double %d) #21, !dbg !4142
  ret double %call, !dbg !4142
}

declare double @klee_abs_double(double) #8

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #6 {
entry:
  %call = tail call float @klee_abs_float(float %f) #21, !dbg !4143
  ret float %call, !dbg !4143
}

declare float @klee_abs_float(float) #8

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #6 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #21, !dbg !4144
  ret x86_fp80 %call, !dbg !4144
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #6 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #21, !dbg !4145
  %0 = icmp ult i32 %call, 5, !dbg !4146
  br i1 %0, label %switch.lookup, label %return, !dbg !4146

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !4146
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !4146
  %switch.load = load i32* %switch.gep, align 4, !dbg !4146
  ret i32 %switch.load, !dbg !4146

return:                                           ; preds = %entry
  ret i32 -1, !dbg !4147
}

declare i32 @klee_get_rounding_mode(...) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fesetround(i32 %rm) #6 {
entry:
  switch i32 %rm, label %return [
    i32 0, label %sw.bb
    i32 2048, label %sw.bb1
    i32 1024, label %sw.bb2
    i32 3072, label %sw.bb3
  ], !dbg !4148

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #21, !dbg !4149
  br label %return, !dbg !4151

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #21, !dbg !4152
  br label %return, !dbg !4153

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #21, !dbg !4154
  br label %return, !dbg !4155

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #21, !dbg !4156
  br label %return, !dbg !4157

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !4158
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #21, !dbg !4159
  %conv = zext i1 %call to i32, !dbg !4159
  ret i32 %conv, !dbg !4159
}

declare zeroext i1 @klee_is_nan_float(float) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #21, !dbg !4160
  %conv = zext i1 %call to i32, !dbg !4160
  ret i32 %conv, !dbg !4160
}

declare zeroext i1 @klee_is_nan_double(double) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #21, !dbg !4161
  %conv = zext i1 %call to i32, !dbg !4161
  ret i32 %conv, !dbg !4161
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #21, !dbg !4162
  br i1 %call, label %return, label %if.else, !dbg !4162

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #21, !dbg !4164
  br i1 %call1, label %return, label %if.else3, !dbg !4164

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !4166
  br i1 %cmp, label %return, label %if.else5, !dbg !4166

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #21, !dbg !4168
  %. = select i1 %call6, i32 4, i32 3, !dbg !4170
  br label %return, !dbg !4170

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !4172
}

declare zeroext i1 @klee_is_normal_float(float) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #21, !dbg !4173
  br i1 %call, label %return, label %if.else, !dbg !4173

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #21, !dbg !4175
  br i1 %call1, label %return, label %if.else3, !dbg !4175

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !4177
  br i1 %cmp, label %return, label %if.else5, !dbg !4177

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #21, !dbg !4179
  %. = select i1 %call6, i32 4, i32 3, !dbg !4181
  br label %return, !dbg !4181

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !4183
}

declare zeroext i1 @klee_is_normal_double(double) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #21, !dbg !4184
  br i1 %call, label %return, label %if.else, !dbg !4184

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #21, !dbg !4186
  br i1 %call1, label %return, label %if.else3, !dbg !4186

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !4188
  br i1 %cmp, label %return, label %if.else5, !dbg !4188

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #21, !dbg !4190
  %. = select i1 %call6, i32 4, i32 3, !dbg !4192
  br label %return, !dbg !4192

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !4194
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #21, !dbg !4195
  %0 = zext i1 %call to i32, !dbg !4195
  %lnot.ext = xor i32 %0, 1, !dbg !4195
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #21, !dbg !4195
  %1 = zext i1 %call1 to i32, !dbg !4195
  %lnot.ext3 = xor i32 %1, 1, !dbg !4195
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !4195
  ret i32 %and, !dbg !4195
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #21, !dbg !4196
  %0 = zext i1 %call to i32, !dbg !4196
  %lnot.ext = xor i32 %0, 1, !dbg !4196
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #21, !dbg !4196
  %1 = zext i1 %call1 to i32, !dbg !4196
  %lnot.ext3 = xor i32 %1, 1, !dbg !4196
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !4196
  ret i32 %and, !dbg !4196
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #21, !dbg !4197
  %0 = zext i1 %call to i32, !dbg !4197
  %lnot.ext = xor i32 %0, 1, !dbg !4197
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #21, !dbg !4197
  %1 = zext i1 %call1 to i32, !dbg !4197
  %lnot.ext3 = xor i32 %1, 1, !dbg !4197
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !4197
  ret i32 %and, !dbg !4197
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #6 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !4198
  br i1 %cmp, label %if.then, label %if.end, !dbg !4198

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str95, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str196, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str297, i64 0, i64 0)) #22, !dbg !4200
  unreachable, !dbg !4200

if.end:                                           ; preds = %entry
  ret void, !dbg !4201
}

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #6 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !4202
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #21, !dbg !4202
  %1 = load i32* %x, align 4, !dbg !4203, !tbaa !2230
  ret i32 %1, !dbg !4203
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #6 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !4204
  br i1 %cmp, label %if.end, label %if.then, !dbg !4204

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str398, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1499, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25100, i64 0, i64 0)) #22, !dbg !4206
  unreachable, !dbg !4206

if.end:                                           ; preds = %entry
  ret void, !dbg !4208
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #6 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !4209
  br i1 %cmp, label %if.end, label %if.then, !dbg !4209

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str6101, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17102, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #22, !dbg !4211
  unreachable, !dbg !4211

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !4212
  %cmp1 = icmp eq i32 %add, %end, !dbg !4212
  br i1 %cmp1, label %return, label %if.else, !dbg !4212

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !4214
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #21, !dbg !4214
  %cmp3 = icmp eq i32 %start, 0, !dbg !4216
  %1 = load i32* %x, align 4, !dbg !4218, !tbaa !2230
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !4216

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !4218
  %conv6 = zext i1 %cmp5 to i64, !dbg !4218
  call void @klee_assume(i64 %conv6) #21, !dbg !4218
  br label %if.end14, !dbg !4220

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !4221
  %conv10 = zext i1 %cmp8 to i64, !dbg !4221
  call void @klee_assume(i64 %conv10) #21, !dbg !4221
  %2 = load i32* %x, align 4, !dbg !4223, !tbaa !2230
  %cmp11 = icmp slt i32 %2, %end, !dbg !4223
  %conv13 = zext i1 %cmp11 to i64, !dbg !4223
  call void @klee_assume(i64 %conv13) #21, !dbg !4223
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !4224, !tbaa !2230
  br label %return, !dbg !4224

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !4225
}

; Function Attrs: nounwind uwtable
define void @klee_set_rounding_mode(i32 %rm) #6 {
entry:
  switch i32 %rm, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !4226

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #21, !dbg !4227
  br label %sw.epilog, !dbg !4227

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #21, !dbg !4229
  br label %sw.epilog, !dbg !4229

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #21, !dbg !4230
  br label %sw.epilog, !dbg !4230

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #21, !dbg !4231
  br label %sw.epilog, !dbg !4231

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #21, !dbg !4232
  br label %sw.epilog, !dbg !4232

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str9103, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #22, !dbg !4233
  unreachable, !dbg !4233

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !4234
}

declare void @klee_set_rounding_mode_internal(i32) #8

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !4235
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !4235

while.body.preheader:                             ; preds = %entry
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %0 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %scevgep7 = getelementptr i8* %srcaddr, i64 %0
  %scevgep = getelementptr i8* %destaddr, i64 %0
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep7, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end9 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep106 = getelementptr i8* %destaddr, i64 %index
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !4236
  %wide.load = load <16 x i8>* %1, align 1, !dbg !4236
  %next.gep.sum282 = or i64 %index, 16, !dbg !4236
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !4236
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !4236
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !4236
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !4236
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !4236
  %next.gep106.sum299 = or i64 %index, 16, !dbg !4236
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !4236
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !4236
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !4236
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !4237

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %while.body.preheader
  %resume.val = phi i8* [ %srcaddr, %while.body.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val8 = phi i8* [ %destaddr, %while.body.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end9, %vector.body ]
  %resume.val10 = phi i64 [ %len, %while.body.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %middle.block
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val, %middle.block ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %resume.val8, %middle.block ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %resume.val10, %middle.block ]
  %dec = add i64 %len.addr.04, -1, !dbg !4235
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !4236
  %8 = load i8* %src.06, align 1, !dbg !4236, !tbaa !2183
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !4236
  store i8 %8, i8* %dest.05, align 1, !dbg !4236, !tbaa !2183
  %cmp = icmp eq i64 %dec, 0, !dbg !4235
  br i1 %cmp, label %while.end, label %while.body, !dbg !4235, !llvm.loop !4240

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !4241
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #6 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !4242
  br i1 %cmp, label %return, label %if.end, !dbg !4242

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !4244
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !4244

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !4246
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !4246

while.body.preheader:                             ; preds = %while.cond.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %0 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %scevgep37 = getelementptr i8* %src, i64 %0
  %scevgep = getelementptr i8* %dst, i64 %0
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep37, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end39 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep136 = getelementptr i8* %dst, i64 %index
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !4246
  %wide.load = load <16 x i8>* %1, align 1, !dbg !4246
  %next.gep.sum610 = or i64 %index, 16, !dbg !4246
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !4246
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !4246
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !4246
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !4246
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !4246
  %next.gep136.sum627 = or i64 %index, 16, !dbg !4246
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !4246
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !4246
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !4246
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !4248

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %while.body.preheader
  %resume.val = phi i8* [ %src, %while.body.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val38 = phi i8* [ %dst, %while.body.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end39, %vector.body ]
  %resume.val40 = phi i64 [ %count, %while.body.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %return, label %while.body

while.body:                                       ; preds = %while.body, %middle.block
  %b.030 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val, %middle.block ]
  %a.029 = phi i8* [ %incdec.ptr3, %while.body ], [ %resume.val38, %middle.block ]
  %count.addr.028 = phi i64 [ %dec, %while.body ], [ %resume.val40, %middle.block ]
  %dec = add i64 %count.addr.028, -1, !dbg !4246
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !4246
  %8 = load i8* %b.030, align 1, !dbg !4246, !tbaa !2183
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !4246
  store i8 %8, i8* %a.029, align 1, !dbg !4246, !tbaa !2183
  %tobool = icmp eq i64 %dec, 0, !dbg !4246
  br i1 %tobool, label %return, label %while.body, !dbg !4246, !llvm.loop !4249

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !4250
  %tobool832 = icmp eq i64 %count, 0, !dbg !4252
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !4252

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !4253
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !4250
  %n.vec241 = and i64 %count, -32
  %cmp.zero243 = icmp eq i64 %n.vec241, 0
  %9 = add i64 %count, -1
  br i1 %cmp.zero243, label %middle.block236, label %vector.memcheck250

vector.memcheck250:                               ; preds = %while.body9.lr.ph
  %scevgep245 = getelementptr i8* %src, i64 %9
  %scevgep244 = getelementptr i8* %dst, i64 %9
  %bound1247 = icmp ule i8* %scevgep245, %dst
  %bound0246 = icmp ule i8* %scevgep244, %src
  %memcheck.conflict249 = and i1 %bound0246, %bound1247
  %add.ptr5.sum = sub i64 %sub, %n.vec241
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %add.ptr5.sum
  %add.ptr.sum = sub i64 %sub, %n.vec241
  %rev.ptr.ind.end255 = getelementptr i8* %dst, i64 %add.ptr.sum
  %rev.ind.end257 = sub i64 %count, %n.vec241
  br i1 %memcheck.conflict249, label %middle.block236, label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.memcheck250
  %index238 = phi i64 [ %index.next260, %vector.body235 ], [ 0, %vector.memcheck250 ]
  %add.ptr5.sum465 = sub i64 %sub, %index238
  %add.ptr.sum497 = sub i64 %sub, %index238
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !4252
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !4252
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !4252
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !4252
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4252
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !4252
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !4252
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !4252
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !4252
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4252
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4252
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !4252
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !4252
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !4252
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !4252
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4252
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !4252
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !4252
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !4252
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !4252
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !4254

middle.block236:                                  ; preds = %vector.body235, %vector.memcheck250, %while.body9.lr.ph
  %resume.val251 = phi i8* [ %add.ptr5, %while.body9.lr.ph ], [ %add.ptr5, %vector.memcheck250 ], [ %rev.ptr.ind.end, %vector.body235 ]
  %resume.val253 = phi i8* [ %add.ptr, %while.body9.lr.ph ], [ %add.ptr, %vector.memcheck250 ], [ %rev.ptr.ind.end255, %vector.body235 ]
  %resume.val256 = phi i64 [ %count, %while.body9.lr.ph ], [ %count, %vector.memcheck250 ], [ %rev.ind.end257, %vector.body235 ]
  %new.indc.resume.val258 = phi i64 [ 0, %while.body9.lr.ph ], [ 0, %vector.memcheck250 ], [ %n.vec241, %vector.body235 ]
  %cmp.n259 = icmp eq i64 %new.indc.resume.val258, %count
  br i1 %cmp.n259, label %return, label %while.body9

while.body9:                                      ; preds = %while.body9, %middle.block236
  %b.135 = phi i8* [ %incdec.ptr10, %while.body9 ], [ %resume.val251, %middle.block236 ]
  %a.134 = phi i8* [ %incdec.ptr11, %while.body9 ], [ %resume.val253, %middle.block236 ]
  %count.addr.133 = phi i64 [ %dec7, %while.body9 ], [ %resume.val256, %middle.block236 ]
  %dec7 = add i64 %count.addr.133, -1, !dbg !4252
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !4252
  %19 = load i8* %b.135, align 1, !dbg !4252, !tbaa !2183
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !4252
  store i8 %19, i8* %a.134, align 1, !dbg !4252, !tbaa !2183
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !4252
  br i1 %tobool8, label %return, label %while.body9, !dbg !4252, !llvm.loop !4255

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !4256
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !4257
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !4257

while.body.preheader:                             ; preds = %entry
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %0 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %scevgep8 = getelementptr i8* %srcaddr, i64 %0
  %scevgep7 = getelementptr i8* %destaddr, i64 %0
  %bound1 = icmp uge i8* %scevgep7, %srcaddr
  %bound0 = icmp uge i8* %scevgep8, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end10 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep107 = getelementptr i8* %destaddr, i64 %index
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !4258
  %wide.load = load <16 x i8>* %1, align 1, !dbg !4258
  %next.gep.sum283 = or i64 %index, 16, !dbg !4258
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !4258
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !4258
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !4258
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !4258
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !4258
  %next.gep107.sum300 = or i64 %index, 16, !dbg !4258
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !4258
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !4258
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !4258
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !4259

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %while.body.preheader
  %resume.val = phi i8* [ %srcaddr, %while.body.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val9 = phi i8* [ %destaddr, %while.body.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end10, %vector.body ]
  %resume.val11 = phi i64 [ %len, %while.body.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %while.cond.while.end_crit_edge, label %while.body

while.body:                                       ; preds = %while.body, %middle.block
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val, %middle.block ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %resume.val9, %middle.block ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %resume.val11, %middle.block ]
  %dec = add i64 %len.addr.04, -1, !dbg !4257
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !4258
  %8 = load i8* %src.06, align 1, !dbg !4258, !tbaa !2183
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !4258
  store i8 %8, i8* %dest.05, align 1, !dbg !4258, !tbaa !2183
  %cmp = icmp eq i64 %dec, 0, !dbg !4257
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !4257, !llvm.loop !4260

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !4257

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !4261
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #6 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !4262
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !4262

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !4263
  br label %while.body, !dbg !4262

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !4262
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !4263
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !4263, !tbaa !2183
  %cmp = icmp eq i64 %dec, 0, !dbg !4262
  br i1 %cmp, label %while.end, label %while.body, !dbg !4262

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !4264
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #6 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #21, !dbg !4265
  ret double %call, !dbg !4265
}

declare double @klee_sqrt_double(double) #8

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #6 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #21, !dbg !4266
  ret float %call, !dbg !4266
}

declare float @klee_sqrt_float(float) #8

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #6 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #21, !dbg !4267
  ret x86_fp80 %call, !dbg !4267
}

declare x86_fp80 @klee_sqrt_long_double(x86_fp80) #8

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #6 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind returns_twice uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inlinehint nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { noinline nounwind optnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { noinline optnone }
attributes #20 = { noreturn nounwind }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !34, !715, !827, !904, !997, !1739, !1888, !1909, !1936, !1981, !1991, !1999, !2009, !2021, !2031, !2045, !2059, !2073, !2088}
!llvm.module.flags = !{!2101, !2102}
!llvm.ident = !{!2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103, !2103}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"socket_cp_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/covert_propogation"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"__socket_type", i32 24, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [__socket_type] [line 24, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/usr/include/bits/socket_type.h", metadata !"/home/klee/logic_bombs/src/covert_propogation"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!6 = metadata !{i32 786472, metadata !"SOCK_STREAM", i64 1} ; [ DW_TAG_enumerator ] [SOCK_STREAM :: 1]
!7 = metadata !{i32 786472, metadata !"SOCK_DGRAM", i64 2} ; [ DW_TAG_enumerator ] [SOCK_DGRAM :: 2]
!8 = metadata !{i32 786472, metadata !"SOCK_RAW", i64 3} ; [ DW_TAG_enumerator ] [SOCK_RAW :: 3]
!9 = metadata !{i32 786472, metadata !"SOCK_RDM", i64 4} ; [ DW_TAG_enumerator ] [SOCK_RDM :: 4]
!10 = metadata !{i32 786472, metadata !"SOCK_SEQPACKET", i64 5} ; [ DW_TAG_enumerator ] [SOCK_SEQPACKET :: 5]
!11 = metadata !{i32 786472, metadata !"SOCK_DCCP", i64 6} ; [ DW_TAG_enumerator ] [SOCK_DCCP :: 6]
!12 = metadata !{i32 786472, metadata !"SOCK_PACKET", i64 10} ; [ DW_TAG_enumerator ] [SOCK_PACKET :: 10]
!13 = metadata !{i32 786472, metadata !"SOCK_CLOEXEC", i64 524288} ; [ DW_TAG_enumerator ] [SOCK_CLOEXEC :: 524288]
!14 = metadata !{i32 786472, metadata !"SOCK_NONBLOCK", i64 2048} ; [ DW_TAG_enumerator ] [SOCK_NONBLOCK :: 2048]
!15 = metadata !{i32 0}
!16 = metadata !{metadata !17, metadata !22, metadata !26, metadata !30}
!17 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"server", metadata !"server", metadata !"", i32 9, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @server, null, null, metadata !15, i32 9} ; [ DW_TAG_subpro
!18 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"client_send", metadata !"client_send", metadata !"", i32 48, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8)* @client_send, null, null, metadata !15, i32 
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !21, metadata !25}
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 84, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !15, i32 84
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !21, metadata !29}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!30 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"main", metadata !"main", metadata !"", i32 105, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !15, i32 105} ; [ DW_T
!31 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{metadata !21, metadata !21, metadata !33}
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786449, metadata !35, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!35 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!36 = metadata !{metadata !37, metadata !44}
!37 = metadata !{i32 786436, metadata !38, null, metadata !"", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 26, size 32, align 32, offset 0] [def] [from ]
!38 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786472, metadata !"eOpen", i64 1} ; [ DW_TAG_enumerator ] [eOpen :: 1]
!41 = metadata !{i32 786472, metadata !"eCloseOnExec", i64 2} ; [ DW_TAG_enumerator ] [eCloseOnExec :: 2]
!42 = metadata !{i32 786472, metadata !"eReadable", i64 4} ; [ DW_TAG_enumerator ] [eReadable :: 4]
!43 = metadata !{i32 786472, metadata !"eWriteable", i64 8} ; [ DW_TAG_enumerator ] [eWriteable :: 8]
!44 = metadata !{i32 786436, metadata !45, null, metadata !"", i32 97, i64 32, i64 32, i32 0, i32 0, null, metadata !46, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 97, size 32, align 32, offset 0] [def] [from ]
!45 = metadata !{metadata !"/usr/include/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!47 = metadata !{i32 786472, metadata !"DT_UNKNOWN", i64 0} ; [ DW_TAG_enumerator ] [DT_UNKNOWN :: 0]
!48 = metadata !{i32 786472, metadata !"DT_FIFO", i64 1} ; [ DW_TAG_enumerator ] [DT_FIFO :: 1]
!49 = metadata !{i32 786472, metadata !"DT_CHR", i64 2} ; [ DW_TAG_enumerator ] [DT_CHR :: 2]
!50 = metadata !{i32 786472, metadata !"DT_DIR", i64 4} ; [ DW_TAG_enumerator ] [DT_DIR :: 4]
!51 = metadata !{i32 786472, metadata !"DT_BLK", i64 6} ; [ DW_TAG_enumerator ] [DT_BLK :: 6]
!52 = metadata !{i32 786472, metadata !"DT_REG", i64 8} ; [ DW_TAG_enumerator ] [DT_REG :: 8]
!53 = metadata !{i32 786472, metadata !"DT_LNK", i64 10} ; [ DW_TAG_enumerator ] [DT_LNK :: 10]
!54 = metadata !{i32 786472, metadata !"DT_SOCK", i64 12} ; [ DW_TAG_enumerator ] [DT_SOCK :: 12]
!55 = metadata !{i32 786472, metadata !"DT_WHT", i64 14} ; [ DW_TAG_enumerator ] [DT_WHT :: 14]
!56 = metadata !{metadata !57, metadata !118, metadata !125, metadata !148, metadata !162, metadata !178, metadata !189, metadata !196, metadata !211, metadata !226, metadata !235, metadata !244, metadata !277, metadata !284, metadata !292, metadata !299
!57 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"access", metadata !"access", metadata !"", i32 73, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @access, null, null, metadata !63, i32 73} ; [ D
!58 = metadata !{i32 786473, metadata !35}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!59 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !21, metadata !61, metadata !21}
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !115}
!64 = metadata !{i32 786689, metadata !57, metadata !"pathname", metadata !58, i32 16777289, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 73]
!65 = metadata !{i32 786689, metadata !57, metadata !"mode", metadata !58, i32 33554505, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 73]
!66 = metadata !{i32 786688, metadata !57, metadata !"dfile", metadata !58, i32 74, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 74]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!68 = metadata !{i32 786454, metadata !35, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!69 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !70, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!70 = metadata !{metadata !71, metadata !73, metadata !74}
!71 = metadata !{i32 786445, metadata !38, metadata !69, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!72 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786445, metadata !38, metadata !69, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!74 = metadata !{i32 786445, metadata !38, metadata !69, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!76 = metadata !{i32 786451, metadata !77, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!77 = metadata !{metadata !"/usr/include/bits/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!78 = metadata !{metadata !79, metadata !82, metadata !84, metadata !86, metadata !88, metadata !90, metadata !92, metadata !93, metadata !94, metadata !97, metadata !99, metadata !101, metadata !109, metadata !110, metadata !111}
!79 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!80 = metadata !{i32 786454, metadata !77, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!81 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!82 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!83 = metadata !{i32 786454, metadata !77, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!84 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!85 = metadata !{i32 786454, metadata !77, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!86 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!87 = metadata !{i32 786454, metadata !77, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!88 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !89} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!89 = metadata !{i32 786454, metadata !77, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!90 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!91 = metadata !{i32 786454, metadata !77, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!92 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!93 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!94 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !95} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!95 = metadata !{i32 786454, metadata !77, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!96 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!97 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !98} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!98 = metadata !{i32 786454, metadata !77, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!99 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !100} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!100 = metadata !{i32 786454, metadata !77, null, metadata !"__blkcnt64_t", i32 159, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 159, size 0, align 0, offset 0] [from long int]
!101 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !102} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!102 = metadata !{i32 786451, metadata !103, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!103 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!104 = metadata !{metadata !105, metadata !107}
!105 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!106 = metadata !{i32 786454, metadata !103, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!107 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!108 = metadata !{i32 786454, metadata !103, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!109 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !102} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!110 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !102} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!111 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !112} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !108, metadata !113, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!115 = metadata !{i32 786688, metadata !116, metadata !"r", metadata !58, i32 81, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 81]
!116 = metadata !{i32 786443, metadata !35, metadata !117, i32 80, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!117 = metadata !{i32 786443, metadata !35, metadata !57, i32 76, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!118 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"umask", metadata !"umask", metadata !"", i32 88, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @umask, null, null, metadata !122, i32 88} ; [ DW_TAG
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !87, metadata !121}
!121 = metadata !{i32 786454, metadata !35, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786689, metadata !118, metadata !"mask", metadata !58, i32 16777304, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 88]
!124 = metadata !{i32 786688, metadata !118, metadata !"r", metadata !58, i32 89, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 89]
!125 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_open", metadata !"__fd_open", metadata !"", i32 128, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @__fd_open, null, null, metadata !
!126 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{metadata !21, metadata !61, metadata !21, metadata !121}
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !144, metadata !145}
!129 = metadata !{i32 786689, metadata !125, metadata !"pathname", metadata !58, i32 16777344, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 128]
!130 = metadata !{i32 786689, metadata !125, metadata !"flags", metadata !58, i32 33554560, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 128]
!131 = metadata !{i32 786689, metadata !125, metadata !"mode", metadata !58, i32 50331776, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 128]
!132 = metadata !{i32 786688, metadata !125, metadata !"df", metadata !58, i32 129, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 129]
!133 = metadata !{i32 786688, metadata !125, metadata !"f", metadata !58, i32 130, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 130]
!134 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_file_t]
!135 = metadata !{i32 786454, metadata !35, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!136 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !143}
!138 = metadata !{i32 786445, metadata !38, metadata !136, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!139 = metadata !{i32 786445, metadata !38, metadata !136, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!140 = metadata !{i32 786445, metadata !38, metadata !136, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!141 = metadata !{i32 786454, metadata !38, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!142 = metadata !{i32 786454, metadata !38, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!143 = metadata !{i32 786445, metadata !38, metadata !136, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!144 = metadata !{i32 786688, metadata !125, metadata !"fd", metadata !58, i32 131, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 131]
!145 = metadata !{i32 786688, metadata !146, metadata !"os_fd", metadata !58, i32 181, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 181]
!146 = metadata !{i32 786443, metadata !35, metadata !147, i32 180, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!147 = metadata !{i32 786443, metadata !35, metadata !125, i32 147, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!148 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_openat", metadata !"__fd_openat", metadata !"", i32 201, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, i32)* @__fd_openat, null, null,
!149 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{metadata !21, metadata !21, metadata !61, metadata !21, metadata !121}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !161}
!152 = metadata !{i32 786689, metadata !148, metadata !"basefd", metadata !58, i32 16777417, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [basefd] [line 201]
!153 = metadata !{i32 786689, metadata !148, metadata !"pathname", metadata !58, i32 33554633, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 201]
!154 = metadata !{i32 786689, metadata !148, metadata !"flags", metadata !58, i32 50331849, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 201]
!155 = metadata !{i32 786689, metadata !148, metadata !"mode", metadata !58, i32 67109065, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 201]
!156 = metadata !{i32 786688, metadata !148, metadata !"f", metadata !58, i32 202, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 202]
!157 = metadata !{i32 786688, metadata !148, metadata !"fd", metadata !58, i32 203, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 203]
!158 = metadata !{i32 786688, metadata !159, metadata !"bf", metadata !58, i32 205, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bf] [line 205]
!159 = metadata !{i32 786443, metadata !35, metadata !160, i32 204, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!160 = metadata !{i32 786443, metadata !35, metadata !148, i32 204, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!161 = metadata !{i32 786688, metadata !148, metadata !"os_fd", metadata !58, i32 236, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 236]
!162 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"utimes", metadata !"utimes", metadata !"", i32 256, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.timeval*)* @utimes, null, null, metadata !1
!163 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !21, metadata !61, metadata !165}
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!166 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timeval]
!167 = metadata !{i32 786451, metadata !168, null, metadata !"timeval", i32 30, i64 128, i64 64, i32 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timeval] [line 30, size 128, align 64, offset 0] [def] [from ]
!168 = metadata !{metadata !"/usr/include/bits/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!169 = metadata !{metadata !170, metadata !171}
!170 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"tv_sec", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [tv_sec] [line 32, size 64, align 64, offset 0] [from __time_t]
!171 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"tv_usec", i32 33, i64 64, i64 64, i64 64, i32 0, metadata !172} ; [ DW_TAG_member ] [tv_usec] [line 33, size 64, align 64, offset 64] [from __suseconds_t]
!172 = metadata !{i32 786454, metadata !168, null, metadata !"__suseconds_t", i32 141, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__suseconds_t] [line 141, size 0, align 0, offset 0] [from long int]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177}
!174 = metadata !{i32 786689, metadata !162, metadata !"path", metadata !58, i32 16777472, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 256]
!175 = metadata !{i32 786689, metadata !162, metadata !"times", metadata !58, i32 33554688, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 256]
!176 = metadata !{i32 786688, metadata !162, metadata !"dfile", metadata !58, i32 257, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 257]
!177 = metadata !{i32 786688, metadata !162, metadata !"r", metadata !58, i32 269, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 269]
!178 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"futimesat", metadata !"futimesat", metadata !"", i32 277, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.timeval*)* @futimesat, null, nul
!179 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !21, metadata !21, metadata !61, metadata !165}
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !188}
!182 = metadata !{i32 786689, metadata !178, metadata !"fd", metadata !58, i32 16777493, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 277]
!183 = metadata !{i32 786689, metadata !178, metadata !"path", metadata !58, i32 33554709, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 277]
!184 = metadata !{i32 786689, metadata !178, metadata !"times", metadata !58, i32 50331925, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 277]
!185 = metadata !{i32 786688, metadata !186, metadata !"f", metadata !58, i32 279, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 279]
!186 = metadata !{i32 786443, metadata !35, metadata !187, i32 278, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!187 = metadata !{i32 786443, metadata !35, metadata !178, i32 278, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!188 = metadata !{i32 786688, metadata !178, metadata !"r", metadata !58, i32 295, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 295]
!189 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"close", metadata !"close", metadata !"", i32 303, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @close, null, null, metadata !192, i32 303} ; [ DW_T
!190 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{metadata !21, metadata !21}
!192 = metadata !{metadata !193, metadata !194, metadata !195}
!193 = metadata !{i32 786689, metadata !189, metadata !"fd", metadata !58, i32 16777519, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 303]
!194 = metadata !{i32 786688, metadata !189, metadata !"f", metadata !58, i32 305, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 305]
!195 = metadata !{i32 786688, metadata !189, metadata !"r", metadata !58, i32 306, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 306]
!196 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"read", metadata !"read", metadata !"", i32 335, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @read, null, null, metadata !203, i32 335} ;
!197 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !199, metadata !21, metadata !201, metadata !202}
!199 = metadata !{i32 786454, metadata !35, null, metadata !"ssize_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [ssize_t] [line 109, size 0, align 0, offset 0] [from __ssize_t]
!200 = metadata !{i32 786454, metadata !35, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!202 = metadata !{i32 786454, metadata !35, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!204 = metadata !{i32 786689, metadata !196, metadata !"fd", metadata !58, i32 16777551, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 335]
!205 = metadata !{i32 786689, metadata !196, metadata !"buf", metadata !58, i32 33554767, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 335]
!206 = metadata !{i32 786689, metadata !196, metadata !"count", metadata !58, i32 50331983, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 335]
!207 = metadata !{i32 786688, metadata !196, metadata !"f", metadata !58, i32 337, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 337]
!208 = metadata !{i32 786688, metadata !209, metadata !"r", metadata !58, i32 364, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 364]
!209 = metadata !{i32 786443, metadata !35, metadata !210, i32 362, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!210 = metadata !{i32 786443, metadata !35, metadata !196, i32 362, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!211 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"write", metadata !"write", metadata !"", i32 403, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @write, null, null, metadata !216, i32 403
!212 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !199, metadata !21, metadata !214, metadata !202}
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !224}
!217 = metadata !{i32 786689, metadata !211, metadata !"fd", metadata !58, i32 16777619, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 403]
!218 = metadata !{i32 786689, metadata !211, metadata !"buf", metadata !58, i32 33554835, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 403]
!219 = metadata !{i32 786689, metadata !211, metadata !"count", metadata !58, i32 50332051, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 403]
!220 = metadata !{i32 786688, metadata !211, metadata !"f", metadata !58, i32 405, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 405]
!221 = metadata !{i32 786688, metadata !222, metadata !"r", metadata !58, i32 423, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 423]
!222 = metadata !{i32 786443, metadata !35, metadata !223, i32 422, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!223 = metadata !{i32 786443, metadata !35, metadata !211, i32 422, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!224 = metadata !{i32 786688, metadata !225, metadata !"actual_count", metadata !58, i32 448, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [actual_count] [line 448]
!225 = metadata !{i32 786443, metadata !35, metadata !223, i32 446, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!226 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"", i32 475, metadata !227, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @__fd_lseek, null, null, metadat
!227 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!228 = metadata !{metadata !141, metadata !21, metadata !141, metadata !21}
!229 = metadata !{metadata !230, metadata !231, metadata !232, metadata !233, metadata !234}
!230 = metadata !{i32 786689, metadata !226, metadata !"fd", metadata !58, i32 16777691, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 475]
!231 = metadata !{i32 786689, metadata !226, metadata !"offset", metadata !58, i32 33554907, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 475]
!232 = metadata !{i32 786689, metadata !226, metadata !"whence", metadata !58, i32 50332123, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 475]
!233 = metadata !{i32 786688, metadata !226, metadata !"new_off", metadata !58, i32 476, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_off] [line 476]
!234 = metadata !{i32 786688, metadata !226, metadata !"f", metadata !58, i32 477, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 477]
!235 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"", i32 532, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @__fd_stat, null, null, met
!236 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !21, metadata !61, metadata !75}
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242}
!239 = metadata !{i32 786689, metadata !235, metadata !"path", metadata !58, i32 16777748, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 532]
!240 = metadata !{i32 786689, metadata !235, metadata !"buf", metadata !58, i32 33554964, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 532]
!241 = metadata !{i32 786688, metadata !235, metadata !"dfile", metadata !58, i32 533, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 533]
!242 = metadata !{i32 786688, metadata !243, metadata !"r", metadata !58, i32 541, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 541]
!243 = metadata !{i32 786443, metadata !35, metadata !235, i32 539, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!244 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fstatat", metadata !"fstatat", metadata !"", i32 551, metadata !245, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*, i32)* @fstatat, null, null, m
!245 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!246 = metadata !{metadata !21, metadata !21, metadata !61, metadata !247, metadata !21}
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!248 = metadata !{i32 786451, metadata !77, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !249, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!249 = metadata !{metadata !250, metadata !251, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !263, metadata !264, metadata !265, metadata !266}
!250 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!251 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!252 = metadata !{i32 786454, metadata !77, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!253 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!254 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!255 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !89} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!256 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!257 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!258 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!259 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !95} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!260 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !98} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!261 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !262} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!262 = metadata !{i32 786454, metadata !77, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!263 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !102} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!264 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !102} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!265 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !102} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!266 = metadata !{i32 786445, metadata !77, metadata !248, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !112} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!267 = metadata !{metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !275, metadata !276}
!268 = metadata !{i32 786689, metadata !244, metadata !"fd", metadata !58, i32 16777767, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 551]
!269 = metadata !{i32 786689, metadata !244, metadata !"path", metadata !58, i32 33554983, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 551]
!270 = metadata !{i32 786689, metadata !244, metadata !"buf", metadata !58, i32 50332199, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 551]
!271 = metadata !{i32 786689, metadata !244, metadata !"flags", metadata !58, i32 67109415, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 551]
!272 = metadata !{i32 786688, metadata !273, metadata !"f", metadata !58, i32 553, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 553]
!273 = metadata !{i32 786443, metadata !35, metadata !274, i32 552, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!274 = metadata !{i32 786443, metadata !35, metadata !244, i32 552, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!275 = metadata !{i32 786688, metadata !244, metadata !"dfile", metadata !58, i32 565, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 565]
!276 = metadata !{i32 786688, metadata !244, metadata !"r", metadata !58, i32 572, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 572]
!277 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"", i32 587, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @__fd_lstat, null, null, 
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282}
!279 = metadata !{i32 786689, metadata !277, metadata !"path", metadata !58, i32 16777803, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 587]
!280 = metadata !{i32 786689, metadata !277, metadata !"buf", metadata !58, i32 33555019, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 587]
!281 = metadata !{i32 786688, metadata !277, metadata !"dfile", metadata !58, i32 588, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 588]
!282 = metadata !{i32 786688, metadata !283, metadata !"r", metadata !58, i32 596, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 596]
!283 = metadata !{i32 786443, metadata !35, metadata !277, i32 594, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!284 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"chdir", metadata !"chdir", metadata !"", i32 606, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chdir, null, null, metadata !287, i32 606} ; [ DW_T
!285 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{metadata !21, metadata !61}
!287 = metadata !{metadata !288, metadata !289, metadata !290}
!288 = metadata !{i32 786689, metadata !284, metadata !"path", metadata !58, i32 16777822, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 606]
!289 = metadata !{i32 786688, metadata !284, metadata !"dfile", metadata !58, i32 607, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 607]
!290 = metadata !{i32 786688, metadata !291, metadata !"r", metadata !58, i32 617, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 617]
!291 = metadata !{i32 786443, metadata !35, metadata !284, i32 616, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!292 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fchdir", metadata !"fchdir", metadata !"", i32 624, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fchdir, null, null, metadata !293, i32 624} ; [ D
!293 = metadata !{metadata !294, metadata !295, metadata !296}
!294 = metadata !{i32 786689, metadata !292, metadata !"fd", metadata !58, i32 16777840, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 624]
!295 = metadata !{i32 786688, metadata !292, metadata !"f", metadata !58, i32 625, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 625]
!296 = metadata !{i32 786688, metadata !297, metadata !"r", metadata !58, i32 637, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 637]
!297 = metadata !{i32 786443, metadata !35, metadata !298, i32 636, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!298 = metadata !{i32 786443, metadata !35, metadata !292, i32 632, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!299 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"chmod", metadata !"chmod", metadata !"", i32 658, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @chmod, null, null, metadata !302, i32 658} ; [
!300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !21, metadata !61, metadata !121}
!302 = metadata !{metadata !303, metadata !304, metadata !305, metadata !306}
!303 = metadata !{i32 786689, metadata !299, metadata !"path", metadata !58, i32 16777874, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 658]
!304 = metadata !{i32 786689, metadata !299, metadata !"mode", metadata !58, i32 33555090, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 658]
!305 = metadata !{i32 786688, metadata !299, metadata !"dfile", metadata !58, i32 661, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 661]
!306 = metadata !{i32 786688, metadata !307, metadata !"r", metadata !58, i32 673, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 673]
!307 = metadata !{i32 786443, metadata !35, metadata !308, i32 672, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!308 = metadata !{i32 786443, metadata !35, metadata !299, i32 670, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!309 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fchmod", metadata !"fchmod", metadata !"", i32 680, metadata !310, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @fchmod, null, null, metadata !312, i32 680} 
!310 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!311 = metadata !{metadata !21, metadata !21, metadata !121}
!312 = metadata !{metadata !313, metadata !314, metadata !315, metadata !316}
!313 = metadata !{i32 786689, metadata !309, metadata !"fd", metadata !58, i32 16777896, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 680]
!314 = metadata !{i32 786689, metadata !309, metadata !"mode", metadata !58, i32 33555112, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 680]
!315 = metadata !{i32 786688, metadata !309, metadata !"f", metadata !58, i32 683, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 683]
!316 = metadata !{i32 786688, metadata !317, metadata !"r", metadata !58, i32 700, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 700]
!317 = metadata !{i32 786443, metadata !35, metadata !318, i32 699, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!318 = metadata !{i32 786443, metadata !35, metadata !309, i32 697, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!319 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"chown", metadata !"chown", metadata !"", i32 713, metadata !320, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @chown, null, null, metadata !324, i32 713
!320 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!321 = metadata !{metadata !21, metadata !61, metadata !322, metadata !323}
!322 = metadata !{i32 786454, metadata !35, null, metadata !"uid_t", i32 80, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [uid_t] [line 80, size 0, align 0, offset 0] [from __uid_t]
!323 = metadata !{i32 786454, metadata !35, null, metadata !"gid_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [gid_t] [line 65, size 0, align 0, offset 0] [from __gid_t]
!324 = metadata !{metadata !325, metadata !326, metadata !327, metadata !328, metadata !329}
!325 = metadata !{i32 786689, metadata !319, metadata !"path", metadata !58, i32 16777929, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 713]
!326 = metadata !{i32 786689, metadata !319, metadata !"owner", metadata !58, i32 33555145, metadata !322, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 713]
!327 = metadata !{i32 786689, metadata !319, metadata !"group", metadata !58, i32 50332361, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 713]
!328 = metadata !{i32 786688, metadata !319, metadata !"df", metadata !58, i32 714, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 714]
!329 = metadata !{i32 786688, metadata !330, metadata !"r", metadata !58, i32 719, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 719]
!330 = metadata !{i32 786443, metadata !35, metadata !331, i32 718, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!331 = metadata !{i32 786443, metadata !35, metadata !319, i32 716, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!332 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fchown", metadata !"fchown", metadata !"", i32 726, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @fchown, null, null, metadata !335, i32 
!333 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !21, metadata !21, metadata !322, metadata !323}
!335 = metadata !{metadata !336, metadata !337, metadata !338, metadata !339, metadata !340}
!336 = metadata !{i32 786689, metadata !332, metadata !"fd", metadata !58, i32 16777942, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 726]
!337 = metadata !{i32 786689, metadata !332, metadata !"owner", metadata !58, i32 33555158, metadata !322, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 726]
!338 = metadata !{i32 786689, metadata !332, metadata !"group", metadata !58, i32 50332374, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 726]
!339 = metadata !{i32 786688, metadata !332, metadata !"f", metadata !58, i32 727, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 727]
!340 = metadata !{i32 786688, metadata !341, metadata !"r", metadata !58, i32 737, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 737]
!341 = metadata !{i32 786443, metadata !35, metadata !342, i32 736, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!342 = metadata !{i32 786443, metadata !35, metadata !332, i32 734, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!343 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"lchown", metadata !"lchown", metadata !"", i32 744, metadata !320, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @lchown, null, null, metadata !344, i32 
!344 = metadata !{metadata !345, metadata !346, metadata !347, metadata !348, metadata !349}
!345 = metadata !{i32 786689, metadata !343, metadata !"path", metadata !58, i32 16777960, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 744]
!346 = metadata !{i32 786689, metadata !343, metadata !"owner", metadata !58, i32 33555176, metadata !322, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 744]
!347 = metadata !{i32 786689, metadata !343, metadata !"group", metadata !58, i32 50332392, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 744]
!348 = metadata !{i32 786688, metadata !343, metadata !"df", metadata !58, i32 746, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 746]
!349 = metadata !{i32 786688, metadata !350, metadata !"r", metadata !58, i32 751, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 751]
!350 = metadata !{i32 786443, metadata !35, metadata !351, i32 750, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!351 = metadata !{i32 786443, metadata !35, metadata !343, i32 748, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!352 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"", i32 758, metadata !353, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64*)* @__fd_fstat, null, null, 
!353 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{metadata !21, metadata !21, metadata !75}
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359}
!356 = metadata !{i32 786689, metadata !352, metadata !"fd", metadata !58, i32 16777974, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 758]
!357 = metadata !{i32 786689, metadata !352, metadata !"buf", metadata !58, i32 33555190, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 758]
!358 = metadata !{i32 786688, metadata !352, metadata !"f", metadata !58, i32 759, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 759]
!359 = metadata !{i32 786688, metadata !360, metadata !"r", metadata !58, i32 768, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 768]
!360 = metadata !{i32 786443, metadata !35, metadata !361, i32 766, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!361 = metadata !{i32 786443, metadata !35, metadata !352, i32 766, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!362 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"", i32 781, metadata !363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @__fd_ftruncate, null, null, 
!363 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!364 = metadata !{metadata !21, metadata !21, metadata !141}
!365 = metadata !{metadata !366, metadata !367, metadata !368, metadata !369}
!366 = metadata !{i32 786689, metadata !362, metadata !"fd", metadata !58, i32 16777997, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 781]
!367 = metadata !{i32 786689, metadata !362, metadata !"length", metadata !58, i32 33555213, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 781]
!368 = metadata !{i32 786688, metadata !362, metadata !"f", metadata !58, i32 783, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 783]
!369 = metadata !{i32 786688, metadata !370, metadata !"r", metadata !58, i32 804, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 804]
!370 = metadata !{i32 786443, metadata !35, metadata !371, i32 802, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!371 = metadata !{i32 786443, metadata !35, metadata !362, i32 798, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!372 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"", i32 814, metadata !373, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent64*, i32)* @__fd_getden
!373 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!374 = metadata !{metadata !21, metadata !72, metadata !375, metadata !72}
!375 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !376} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent64]
!376 = metadata !{i32 786451, metadata !377, null, metadata !"dirent64", i32 37, i64 2240, i64 64, i32 0, i32 0, null, metadata !378, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent64] [line 37, size 2240, align 64, offset 0] [def] [from ]
!377 = metadata !{metadata !"/usr/include/bits/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!378 = metadata !{metadata !379, metadata !380, metadata !381, metadata !383, metadata !385}
!379 = metadata !{i32 786445, metadata !377, metadata !376, metadata !"d_ino", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [d_ino] [line 39, size 64, align 64, offset 0] [from __ino64_t]
!380 = metadata !{i32 786445, metadata !377, metadata !376, metadata !"d_off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !142} ; [ DW_TAG_member ] [d_off] [line 40, size 64, align 64, offset 64] [from __off64_t]
!381 = metadata !{i32 786445, metadata !377, metadata !376, metadata !"d_reclen", i32 41, i64 16, i64 16, i64 128, i32 0, metadata !382} ; [ DW_TAG_member ] [d_reclen] [line 41, size 16, align 16, offset 128] [from unsigned short]
!382 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!383 = metadata !{i32 786445, metadata !377, metadata !376, metadata !"d_type", i32 42, i64 8, i64 8, i64 144, i32 0, metadata !384} ; [ DW_TAG_member ] [d_type] [line 42, size 8, align 8, offset 144] [from unsigned char]
!384 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!385 = metadata !{i32 786445, metadata !377, metadata !376, metadata !"d_name", i32 43, i64 2048, i64 8, i64 152, i32 0, metadata !386} ; [ DW_TAG_member ] [d_name] [line 43, size 2048, align 8, offset 152] [from ]
!386 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !25, metadata !387, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!387 = metadata !{metadata !388}
!388 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!389 = metadata !{metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !399, metadata !400, metadata !401, metadata !404, metadata !406, metadata !407, metadata !408, metadata !411}
!390 = metadata !{i32 786689, metadata !372, metadata !"fd", metadata !58, i32 16778030, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 814]
!391 = metadata !{i32 786689, metadata !372, metadata !"dirp", metadata !58, i32 33555246, metadata !375, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 814]
!392 = metadata !{i32 786689, metadata !372, metadata !"count", metadata !58, i32 50332462, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 814]
!393 = metadata !{i32 786688, metadata !372, metadata !"f", metadata !58, i32 815, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 815]
!394 = metadata !{i32 786688, metadata !395, metadata !"i", metadata !58, i32 829, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 829]
!395 = metadata !{i32 786443, metadata !35, metadata !396, i32 827, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!396 = metadata !{i32 786443, metadata !35, metadata !397, i32 827, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!397 = metadata !{i32 786443, metadata !35, metadata !398, i32 826, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!398 = metadata !{i32 786443, metadata !35, metadata !372, i32 822, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!399 = metadata !{i32 786688, metadata !395, metadata !"pad", metadata !58, i32 829, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pad] [line 829]
!400 = metadata !{i32 786688, metadata !395, metadata !"bytes", metadata !58, i32 829, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 829]
!401 = metadata !{i32 786688, metadata !402, metadata !"df", metadata !58, i32 839, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 839]
!402 = metadata !{i32 786443, metadata !35, metadata !403, i32 838, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!403 = metadata !{i32 786443, metadata !35, metadata !395, i32 838, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!404 = metadata !{i32 786688, metadata !405, metadata !"os_pos", metadata !58, i32 862, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_pos] [line 862]
!405 = metadata !{i32 786443, metadata !35, metadata !396, i32 861, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!406 = metadata !{i32 786688, metadata !405, metadata !"res", metadata !58, i32 863, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 863]
!407 = metadata !{i32 786688, metadata !405, metadata !"s", metadata !58, i32 864, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 864]
!408 = metadata !{i32 786688, metadata !409, metadata !"pos", metadata !58, i32 880, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 880]
!409 = metadata !{i32 786443, metadata !35, metadata !410, i32 879, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!410 = metadata !{i32 786443, metadata !35, metadata !405, i32 877, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!411 = metadata !{i32 786688, metadata !412, metadata !"dp", metadata !58, i32 886, metadata !375, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 886]
!412 = metadata !{i32 786443, metadata !35, metadata !409, i32 885, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!413 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"ioctl", metadata !"ioctl", metadata !"", i32 898, metadata !414, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64, ...)* @ioctl, null, null, metadata !416, i32 898
!414 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!415 = metadata !{metadata !21, metadata !21, metadata !81}
!416 = metadata !{metadata !417, metadata !418, metadata !419, metadata !420, metadata !434, metadata !435, metadata !438, metadata !459, metadata !469, metadata !472}
!417 = metadata !{i32 786689, metadata !413, metadata !"fd", metadata !58, i32 16778114, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 898]
!418 = metadata !{i32 786689, metadata !413, metadata !"request", metadata !58, i32 33555330, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [request] [line 898]
!419 = metadata !{i32 786688, metadata !413, metadata !"f", metadata !58, i32 902, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 902]
!420 = metadata !{i32 786688, metadata !413, metadata !"ap", metadata !58, i32 903, metadata !421, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 903]
!421 = metadata !{i32 786454, metadata !35, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !422} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!422 = metadata !{i32 786454, metadata !35, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !423} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!423 = metadata !{i32 786454, metadata !35, null, metadata !"__builtin_va_list", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !424} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 903, size 0, align 0, offset 0] [from ]
!424 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !425, metadata !432, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!425 = metadata !{i32 786454, metadata !35, null, metadata !"__va_list_tag", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !426} ; [ DW_TAG_typedef ] [__va_list_tag] [line 903, size 0, align 0, offset 0] [from __va_list_tag]
!426 = metadata !{i32 786451, metadata !35, null, metadata !"__va_list_tag", i32 903, i64 192, i64 64, i32 0, i32 0, null, metadata !427, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 903, size 192, align 64, offset 0] [def] 
!427 = metadata !{metadata !428, metadata !429, metadata !430, metadata !431}
!428 = metadata !{i32 786445, metadata !35, metadata !426, metadata !"gp_offset", i32 903, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [gp_offset] [line 903, size 32, align 32, offset 0] [from unsigned int]
!429 = metadata !{i32 786445, metadata !35, metadata !426, metadata !"fp_offset", i32 903, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [fp_offset] [line 903, size 32, align 32, offset 32] [from unsigned int]
!430 = metadata !{i32 786445, metadata !35, metadata !426, metadata !"overflow_arg_area", i32 903, i64 64, i64 64, i64 64, i32 0, metadata !201} ; [ DW_TAG_member ] [overflow_arg_area] [line 903, size 64, align 64, offset 64] [from ]
!431 = metadata !{i32 786445, metadata !35, metadata !426, metadata !"reg_save_area", i32 903, i64 64, i64 64, i64 128, i32 0, metadata !201} ; [ DW_TAG_member ] [reg_save_area] [line 903, size 64, align 64, offset 128] [from ]
!432 = metadata !{metadata !433}
!433 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!434 = metadata !{i32 786688, metadata !413, metadata !"buf", metadata !58, i32 904, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 904]
!435 = metadata !{i32 786688, metadata !436, metadata !"stat", metadata !58, i32 920, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 920]
!436 = metadata !{i32 786443, metadata !35, metadata !437, i32 919, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!437 = metadata !{i32 786443, metadata !35, metadata !413, i32 919, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!438 = metadata !{i32 786688, metadata !439, metadata !"ts", metadata !58, i32 924, metadata !441, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 924]
!439 = metadata !{i32 786443, metadata !35, metadata !440, i32 923, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!440 = metadata !{i32 786443, metadata !35, metadata !436, i32 922, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!441 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !442} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!442 = metadata !{i32 786451, metadata !443, null, metadata !"termios", i32 28, i64 480, i64 32, i32 0, i32 0, null, metadata !444, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 28, size 480, align 32, offset 0] [def] [from ]
!443 = metadata !{metadata !"/usr/include/bits/termios.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!444 = metadata !{metadata !445, metadata !447, metadata !448, metadata !449, metadata !450, metadata !452, metadata !456, metadata !458}
!445 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_iflag", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !446} ; [ DW_TAG_member ] [c_iflag] [line 30, size 32, align 32, offset 0] [from tcflag_t]
!446 = metadata !{i32 786454, metadata !443, null, metadata !"tcflag_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [tcflag_t] [line 25, size 0, align 0, offset 0] [from unsigned int]
!447 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_oflag", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !446} ; [ DW_TAG_member ] [c_oflag] [line 31, size 32, align 32, offset 32] [from tcflag_t]
!448 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_cflag", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !446} ; [ DW_TAG_member ] [c_cflag] [line 32, size 32, align 32, offset 64] [from tcflag_t]
!449 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_lflag", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !446} ; [ DW_TAG_member ] [c_lflag] [line 33, size 32, align 32, offset 96] [from tcflag_t]
!450 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_line", i32 34, i64 8, i64 8, i64 128, i32 0, metadata !451} ; [ DW_TAG_member ] [c_line] [line 34, size 8, align 8, offset 128] [from cc_t]
!451 = metadata !{i32 786454, metadata !443, null, metadata !"cc_t", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ] [cc_t] [line 23, size 0, align 0, offset 0] [from unsigned char]
!452 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_cc", i32 35, i64 256, i64 8, i64 136, i32 0, metadata !453} ; [ DW_TAG_member ] [c_cc] [line 35, size 256, align 8, offset 136] [from ]
!453 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !451, metadata !454, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!454 = metadata !{metadata !455}
!455 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!456 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_ispeed", i32 36, i64 32, i64 32, i64 416, i32 0, metadata !457} ; [ DW_TAG_member ] [c_ispeed] [line 36, size 32, align 32, offset 416] [from speed_t]
!457 = metadata !{i32 786454, metadata !443, null, metadata !"speed_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [speed_t] [line 24, size 0, align 0, offset 0] [from unsigned int]
!458 = metadata !{i32 786445, metadata !443, metadata !442, metadata !"c_ospeed", i32 37, i64 32, i64 32, i64 448, i32 0, metadata !457} ; [ DW_TAG_member ] [c_ospeed] [line 37, size 32, align 32, offset 448] [from speed_t]
!459 = metadata !{i32 786688, metadata !460, metadata !"ws", metadata !58, i32 993, metadata !461, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ws] [line 993]
!460 = metadata !{i32 786443, metadata !35, metadata !440, i32 992, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!461 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !462} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from winsize]
!462 = metadata !{i32 786451, metadata !463, null, metadata !"winsize", i32 27, i64 64, i64 16, i32 0, i32 0, null, metadata !464, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [winsize] [line 27, size 64, align 16, offset 0] [def] [from ]
!463 = metadata !{metadata !"/usr/include/bits/ioctl-types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!464 = metadata !{metadata !465, metadata !466, metadata !467, metadata !468}
!465 = metadata !{i32 786445, metadata !463, metadata !462, metadata !"ws_row", i32 29, i64 16, i64 16, i64 0, i32 0, metadata !382} ; [ DW_TAG_member ] [ws_row] [line 29, size 16, align 16, offset 0] [from unsigned short]
!466 = metadata !{i32 786445, metadata !463, metadata !462, metadata !"ws_col", i32 30, i64 16, i64 16, i64 16, i32 0, metadata !382} ; [ DW_TAG_member ] [ws_col] [line 30, size 16, align 16, offset 16] [from unsigned short]
!467 = metadata !{i32 786445, metadata !463, metadata !462, metadata !"ws_xpixel", i32 31, i64 16, i64 16, i64 32, i32 0, metadata !382} ; [ DW_TAG_member ] [ws_xpixel] [line 31, size 16, align 16, offset 32] [from unsigned short]
!468 = metadata !{i32 786445, metadata !463, metadata !462, metadata !"ws_ypixel", i32 32, i64 16, i64 16, i64 48, i32 0, metadata !382} ; [ DW_TAG_member ] [ws_ypixel] [line 32, size 16, align 16, offset 48] [from unsigned short]
!469 = metadata !{i32 786688, metadata !470, metadata !"res", metadata !58, i32 1016, metadata !471, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1016]
!470 = metadata !{i32 786443, metadata !35, metadata !440, i32 1015, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!471 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!472 = metadata !{i32 786688, metadata !473, metadata !"r", metadata !58, i32 1041, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1041]
!473 = metadata !{i32 786443, metadata !35, metadata !437, i32 1040, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!474 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fcntl", metadata !"fcntl", metadata !"", i32 1048, metadata !475, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @fcntl, null, null, metadata !477, i32 10
!475 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!476 = metadata !{metadata !21, metadata !21, metadata !21}
!477 = metadata !{metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !488}
!478 = metadata !{i32 786689, metadata !474, metadata !"fd", metadata !58, i32 16778264, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1048]
!479 = metadata !{i32 786689, metadata !474, metadata !"cmd", metadata !58, i32 33555480, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1048]
!480 = metadata !{i32 786688, metadata !474, metadata !"f", metadata !58, i32 1049, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1049]
!481 = metadata !{i32 786688, metadata !474, metadata !"ap", metadata !58, i32 1050, metadata !421, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1050]
!482 = metadata !{i32 786688, metadata !474, metadata !"arg", metadata !58, i32 1051, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1051]
!483 = metadata !{i32 786688, metadata !484, metadata !"flags", metadata !58, i32 1070, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 1070]
!484 = metadata !{i32 786443, metadata !35, metadata !485, i32 1069, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!485 = metadata !{i32 786443, metadata !35, metadata !486, i32 1068, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!486 = metadata !{i32 786443, metadata !35, metadata !487, i32 1067, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!487 = metadata !{i32 786443, metadata !35, metadata !474, i32 1067, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!488 = metadata !{i32 786688, metadata !489, metadata !"r", metadata !58, i32 1096, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1096]
!489 = metadata !{i32 786443, metadata !35, metadata !487, i32 1095, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!490 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"", i32 1103, metadata !491, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @__fd_statfs, null, nu
!491 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!492 = metadata !{metadata !21, metadata !61, metadata !493}
!493 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !494} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!494 = metadata !{i32 786451, metadata !495, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !496, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!495 = metadata !{metadata !"/usr/include/bits/statfs.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!496 = metadata !{metadata !497, metadata !499, metadata !500, metadata !502, metadata !503, metadata !504, metadata !506, metadata !507, metadata !516, metadata !517, metadata !518, metadata !519}
!497 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !498} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!498 = metadata !{i32 786454, metadata !495, null, metadata !"__fsword_t", i32 170, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__fsword_t] [line 170, size 0, align 0, offset 0] [from long int]
!499 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !498} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!500 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_blocks", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !501} ; [ DW_TAG_member ] [f_blocks] [line 29, size 64, align 64, offset 128] [from __fsblkcnt_t]
!501 = metadata !{i32 786454, metadata !495, null, metadata !"__fsblkcnt_t", i32 162, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__fsblkcnt_t] [line 162, size 0, align 0, offset 0] [from long unsigned int]
!502 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_bfree", i32 30, i64 64, i64 64, i64 192, i32 0, metadata !501} ; [ DW_TAG_member ] [f_bfree] [line 30, size 64, align 64, offset 192] [from __fsblkcnt_t]
!503 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_bavail", i32 31, i64 64, i64 64, i64 256, i32 0, metadata !501} ; [ DW_TAG_member ] [f_bavail] [line 31, size 64, align 64, offset 256] [from __fsblkcnt_t]
!504 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_files", i32 32, i64 64, i64 64, i64 320, i32 0, metadata !505} ; [ DW_TAG_member ] [f_files] [line 32, size 64, align 64, offset 320] [from __fsfilcnt_t]
!505 = metadata !{i32 786454, metadata !495, null, metadata !"__fsfilcnt_t", i32 166, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__fsfilcnt_t] [line 166, size 0, align 0, offset 0] [from long unsigned int]
!506 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_ffree", i32 33, i64 64, i64 64, i64 384, i32 0, metadata !505} ; [ DW_TAG_member ] [f_ffree] [line 33, size 64, align 64, offset 384] [from __fsfilcnt_t]
!507 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !508} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!508 = metadata !{i32 786454, metadata !495, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!509 = metadata !{i32 786451, metadata !510, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !511, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!510 = metadata !{metadata !"/usr/include/bits/types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!511 = metadata !{metadata !512}
!512 = metadata !{i32 786445, metadata !510, metadata !509, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !513} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!513 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !21, metadata !514, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!514 = metadata !{metadata !515}
!515 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!516 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !498} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!517 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !498} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!518 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !498} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!519 = metadata !{i32 786445, metadata !495, metadata !494, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !520} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!520 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !498, metadata !521, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from __fsword_t]
!521 = metadata !{metadata !522}
!522 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!523 = metadata !{metadata !524, metadata !525, metadata !526, metadata !527}
!524 = metadata !{i32 786689, metadata !490, metadata !"path", metadata !58, i32 16778319, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1103]
!525 = metadata !{i32 786689, metadata !490, metadata !"buf", metadata !58, i32 33555535, metadata !493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1103]
!526 = metadata !{i32 786688, metadata !490, metadata !"dfile", metadata !58, i32 1104, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1104]
!527 = metadata !{i32 786688, metadata !528, metadata !"r", metadata !58, i32 1113, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1113]
!528 = metadata !{i32 786443, metadata !35, metadata !490, i32 1112, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!529 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fstatfs", metadata !"fstatfs", metadata !"", i32 1120, metadata !530, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.statfs*)* @fstatfs, null, null, metadata
!530 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!531 = metadata !{metadata !21, metadata !21, metadata !493}
!532 = metadata !{metadata !533, metadata !534, metadata !535, metadata !536}
!533 = metadata !{i32 786689, metadata !529, metadata !"fd", metadata !58, i32 16778336, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1120]
!534 = metadata !{i32 786689, metadata !529, metadata !"buf", metadata !58, i32 33555552, metadata !493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1120]
!535 = metadata !{i32 786688, metadata !529, metadata !"f", metadata !58, i32 1121, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1121]
!536 = metadata !{i32 786688, metadata !537, metadata !"r", metadata !58, i32 1133, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1133]
!537 = metadata !{i32 786443, metadata !35, metadata !538, i32 1132, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!538 = metadata !{i32 786443, metadata !35, metadata !529, i32 1128, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!539 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"fsync", metadata !"fsync", metadata !"", i32 1140, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fsync, null, null, metadata !540, i32 1140} ; [ DW
!540 = metadata !{metadata !541, metadata !542, metadata !543}
!541 = metadata !{i32 786689, metadata !539, metadata !"fd", metadata !58, i32 16778356, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1140]
!542 = metadata !{i32 786688, metadata !539, metadata !"f", metadata !58, i32 1141, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1141]
!543 = metadata !{i32 786688, metadata !544, metadata !"r", metadata !58, i32 1149, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1149]
!544 = metadata !{i32 786443, metadata !35, metadata !545, i32 1148, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!545 = metadata !{i32 786443, metadata !35, metadata !546, i32 1146, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!546 = metadata !{i32 786443, metadata !35, metadata !539, i32 1143, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!547 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"dup2", metadata !"dup2", metadata !"", i32 1156, metadata !475, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dup2, null, null, metadata !548, i32 1156} ; [ 
!548 = metadata !{metadata !549, metadata !550, metadata !551, metadata !552}
!549 = metadata !{i32 786689, metadata !547, metadata !"oldfd", metadata !58, i32 16778372, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1156]
!550 = metadata !{i32 786689, metadata !547, metadata !"newfd", metadata !58, i32 33555588, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newfd] [line 1156]
!551 = metadata !{i32 786688, metadata !547, metadata !"f", metadata !58, i32 1157, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1157]
!552 = metadata !{i32 786688, metadata !553, metadata !"f2", metadata !58, i32 1163, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 1163]
!553 = metadata !{i32 786443, metadata !35, metadata !554, i32 1162, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!554 = metadata !{i32 786443, metadata !35, metadata !547, i32 1159, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!555 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"dup", metadata !"dup", metadata !"", i32 1181, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dup, null, null, metadata !556, i32 1181} ; [ DW_TAG_s
!556 = metadata !{metadata !557, metadata !558, metadata !559}
!557 = metadata !{i32 786689, metadata !555, metadata !"oldfd", metadata !58, i32 16778397, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1181]
!558 = metadata !{i32 786688, metadata !555, metadata !"f", metadata !58, i32 1182, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1182]
!559 = metadata !{i32 786688, metadata !560, metadata !"fd", metadata !58, i32 1187, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 1187]
!560 = metadata !{i32 786443, metadata !35, metadata !561, i32 1186, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!561 = metadata !{i32 786443, metadata !35, metadata !555, i32 1183, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!562 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"rmdir", metadata !"rmdir", metadata !"", i32 1200, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @rmdir, null, null, metadata !563, i32 1200} ; [ DW
!563 = metadata !{metadata !564, metadata !565}
!564 = metadata !{i32 786689, metadata !562, metadata !"pathname", metadata !58, i32 16778416, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1200]
!565 = metadata !{i32 786688, metadata !562, metadata !"dfile", metadata !58, i32 1201, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1201]
!566 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"unlink", metadata !"unlink", metadata !"", i32 1218, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @unlink, null, null, metadata !567, i32 1218} ; [
!567 = metadata !{metadata !568, metadata !569}
!568 = metadata !{i32 786689, metadata !566, metadata !"pathname", metadata !58, i32 16778434, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1218]
!569 = metadata !{i32 786688, metadata !566, metadata !"dfile", metadata !58, i32 1219, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1219]
!570 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"unlinkat", metadata !"unlinkat", metadata !"", i32 1239, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @unlinkat, null, null, metadata !57
!571 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!572 = metadata !{metadata !21, metadata !21, metadata !61, metadata !21}
!573 = metadata !{metadata !574, metadata !575, metadata !576, metadata !577}
!574 = metadata !{i32 786689, metadata !570, metadata !"dirfd", metadata !58, i32 16778455, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirfd] [line 1239]
!575 = metadata !{i32 786689, metadata !570, metadata !"pathname", metadata !58, i32 33555671, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1239]
!576 = metadata !{i32 786689, metadata !570, metadata !"flags", metadata !58, i32 50332887, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 1239]
!577 = metadata !{i32 786688, metadata !570, metadata !"dfile", metadata !58, i32 1242, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1242]
!578 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"readlink", metadata !"readlink", metadata !"", i32 1262, metadata !579, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i8*, i64)* @readlink, null, null, metadata !58
!579 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!580 = metadata !{metadata !199, metadata !61, metadata !29, metadata !202}
!581 = metadata !{metadata !582, metadata !583, metadata !584, metadata !585, metadata !586}
!582 = metadata !{i32 786689, metadata !578, metadata !"path", metadata !58, i32 16778478, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1262]
!583 = metadata !{i32 786689, metadata !578, metadata !"buf", metadata !58, i32 33555694, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1262]
!584 = metadata !{i32 786689, metadata !578, metadata !"bufsize", metadata !58, i32 50332910, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 1262]
!585 = metadata !{i32 786688, metadata !578, metadata !"dfile", metadata !58, i32 1263, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1263]
!586 = metadata !{i32 786688, metadata !587, metadata !"r", metadata !58, i32 1279, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1279]
!587 = metadata !{i32 786443, metadata !35, metadata !588, i32 1278, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!588 = metadata !{i32 786443, metadata !35, metadata !578, i32 1264, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!589 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"select", metadata !"select", metadata !"", i32 1294, metadata !590, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*,
!590 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!591 = metadata !{metadata !21, metadata !21, metadata !592, metadata !592, metadata !592, metadata !602}
!592 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !593} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fd_set]
!593 = metadata !{i32 786454, metadata !35, null, metadata !"fd_set", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !594} ; [ DW_TAG_typedef ] [fd_set] [line 77, size 0, align 0, offset 0] [from ]
!594 = metadata !{i32 786451, metadata !595, null, metadata !"", i32 66, i64 1024, i64 64, i32 0, i32 0, null, metadata !596, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 66, size 1024, align 64, offset 0] [def] [from ]
!595 = metadata !{metadata !"/usr/include/sys/select.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!596 = metadata !{metadata !597}
!597 = metadata !{i32 786445, metadata !595, metadata !594, metadata !"fds_bits", i32 71, i64 1024, i64 64, i64 0, i32 0, metadata !598} ; [ DW_TAG_member ] [fds_bits] [line 71, size 1024, align 64, offset 0] [from ]
!598 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !599, metadata !600, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from __fd_mask]
!599 = metadata !{i32 786454, metadata !595, null, metadata !"__fd_mask", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__fd_mask] [line 56, size 0, align 0, offset 0] [from long int]
!600 = metadata !{metadata !601}
!601 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!602 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from timeval]
!603 = metadata !{metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !6
!604 = metadata !{i32 786689, metadata !589, metadata !"nfds", metadata !58, i32 16778510, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfds] [line 1294]
!605 = metadata !{i32 786689, metadata !589, metadata !"read", metadata !58, i32 33555726, metadata !592, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [read] [line 1294]
!606 = metadata !{i32 786689, metadata !589, metadata !"write", metadata !58, i32 50332942, metadata !592, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [write] [line 1294]
!607 = metadata !{i32 786689, metadata !589, metadata !"except", metadata !58, i32 67110159, metadata !592, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [except] [line 1295]
!608 = metadata !{i32 786689, metadata !589, metadata !"timeout", metadata !58, i32 83887375, metadata !602, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timeout] [line 1295]
!609 = metadata !{i32 786688, metadata !589, metadata !"in_read", metadata !58, i32 1296, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_read] [line 1296]
!610 = metadata !{i32 786688, metadata !589, metadata !"in_write", metadata !58, i32 1296, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_write] [line 1296]
!611 = metadata !{i32 786688, metadata !589, metadata !"in_except", metadata !58, i32 1296, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_except] [line 1296]
!612 = metadata !{i32 786688, metadata !589, metadata !"os_read", metadata !58, i32 1296, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_read] [line 1296]
!613 = metadata !{i32 786688, metadata !589, metadata !"os_write", metadata !58, i32 1296, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_write] [line 1296]
!614 = metadata !{i32 786688, metadata !589, metadata !"os_except", metadata !58, i32 1296, metadata !593, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_except] [line 1296]
!615 = metadata !{i32 786688, metadata !589, metadata !"i", metadata !58, i32 1297, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1297]
!616 = metadata !{i32 786688, metadata !589, metadata !"count", metadata !58, i32 1297, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 1297]
!617 = metadata !{i32 786688, metadata !589, metadata !"os_nfds", metadata !58, i32 1297, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_nfds] [line 1297]
!618 = metadata !{i32 786688, metadata !619, metadata !"f", metadata !58, i32 1327, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1327]
!619 = metadata !{i32 786443, metadata !35, metadata !620, i32 1326, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!620 = metadata !{i32 786443, metadata !35, metadata !621, i32 1326, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!621 = metadata !{i32 786443, metadata !35, metadata !622, i32 1325, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!622 = metadata !{i32 786443, metadata !35, metadata !589, i32 1325, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!623 = metadata !{i32 786688, metadata !624, metadata !"tv", metadata !58, i32 1349, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 1349]
!624 = metadata !{i32 786443, metadata !35, metadata !625, i32 1346, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!625 = metadata !{i32 786443, metadata !35, metadata !589, i32 1346, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!626 = metadata !{i32 786688, metadata !624, metadata !"r", metadata !58, i32 1350, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1350]
!627 = metadata !{i32 786688, metadata !628, metadata !"f", metadata !58, i32 1365, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1365]
!628 = metadata !{i32 786443, metadata !35, metadata !629, i32 1364, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!629 = metadata !{i32 786443, metadata !35, metadata !630, i32 1364, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!630 = metadata !{i32 786443, metadata !35, metadata !631, i32 1360, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!631 = metadata !{i32 786443, metadata !35, metadata !624, i32 1353, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!632 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"getcwd", metadata !"getcwd", metadata !"", i32 1380, metadata !633, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64)* @getcwd, null, null, metadata !635, i32 1380
!633 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !634, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!634 = metadata !{metadata !29, metadata !29, metadata !202}
!635 = metadata !{metadata !636, metadata !637, metadata !638}
!636 = metadata !{i32 786689, metadata !632, metadata !"buf", metadata !58, i32 16778596, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1380]
!637 = metadata !{i32 786689, metadata !632, metadata !"size", metadata !58, i32 33555812, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1380]
!638 = metadata !{i32 786688, metadata !632, metadata !"r", metadata !58, i32 1382, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1382]
!639 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"chroot", metadata !"chroot", metadata !"", i32 1457, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chroot, null, null, metadata !640, i32 1457} ; [
!640 = metadata !{metadata !641}
!641 = metadata !{i32 786689, metadata !639, metadata !"path", metadata !58, i32 16778673, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1457]
!642 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", i32 1428, metadata !643, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !645, i3
!643 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!644 = metadata !{metadata !61, metadata !61}
!645 = metadata !{metadata !646, metadata !647, metadata !648, metadata !649, metadata !652}
!646 = metadata !{i32 786689, metadata !642, metadata !"s", metadata !58, i32 16778644, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1428]
!647 = metadata !{i32 786688, metadata !642, metadata !"sc", metadata !58, i32 1429, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1429]
!648 = metadata !{i32 786688, metadata !642, metadata !"i", metadata !58, i32 1430, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1430]
!649 = metadata !{i32 786688, metadata !650, metadata !"c", metadata !58, i32 1433, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1433]
!650 = metadata !{i32 786443, metadata !35, metadata !651, i32 1432, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!651 = metadata !{i32 786443, metadata !35, metadata !642, i32 1432, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!652 = metadata !{i32 786688, metadata !653, metadata !"cc", metadata !58, i32 1442, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 1442]
!653 = metadata !{i32 786443, metadata !35, metadata !654, i32 1441, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!654 = metadata !{i32 786443, metadata !35, metadata !650, i32 1434, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!655 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", i32 1422, metadata !656, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !658, i32 14
!656 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !657, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!657 = metadata !{metadata !202, metadata !202}
!658 = metadata !{metadata !659, metadata !660}
!659 = metadata !{i32 786689, metadata !655, metadata !"s", metadata !58, i32 16778638, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1422]
!660 = metadata !{i32 786688, metadata !655, metadata !"sc", metadata !58, i32 1423, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1423]
!661 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", i32 1415, metadata !662, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !664, i32 1415
!662 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!663 = metadata !{metadata !201, metadata !214}
!664 = metadata !{metadata !665, metadata !666}
!665 = metadata !{i32 786689, metadata !661, metadata !"p", metadata !58, i32 16778631, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1415]
!666 = metadata !{i32 786688, metadata !661, metadata !"pc", metadata !58, i32 1417, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 1417]
!667 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__df_chown", metadata !"__df_chown", metadata !"", i32 707, metadata !668, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !670, i32 707} ; [ DW_TAG_s
!668 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!669 = metadata !{metadata !21, metadata !67, metadata !322, metadata !323}
!670 = metadata !{metadata !671, metadata !672, metadata !673}
!671 = metadata !{i32 786689, metadata !667, metadata !"df", metadata !58, i32 16777923, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 707]
!672 = metadata !{i32 786689, metadata !667, metadata !"owner", metadata !58, i32 33555139, metadata !322, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 707]
!673 = metadata !{i32 786689, metadata !667, metadata !"group", metadata !58, i32 50332355, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 707]
!674 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", i32 645, metadata !675, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !677, i32 645} ; [ DW_TAG_s
!675 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !676, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!676 = metadata !{metadata !21, metadata !67, metadata !121}
!677 = metadata !{metadata !678, metadata !679}
!678 = metadata !{i32 786689, metadata !674, metadata !"df", metadata !58, i32 16777861, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 645]
!679 = metadata !{i32 786689, metadata !674, metadata !"mode", metadata !58, i32 33555077, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 645]
!680 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__get_file", metadata !"__get_file", metadata !"", i32 63, metadata !681, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !683, i32 63} ; [ DW_TAG_sub
!681 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!682 = metadata !{metadata !134, metadata !21}
!683 = metadata !{metadata !684, metadata !685}
!684 = metadata !{i32 786689, metadata !680, metadata !"fd", metadata !58, i32 16777279, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 63]
!685 = metadata !{i32 786688, metadata !686, metadata !"f", metadata !58, i32 65, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 65]
!686 = metadata !{i32 786443, metadata !35, metadata !687, i32 64, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!687 = metadata !{i32 786443, metadata !35, metadata !680, i32 64, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!688 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"has_permission", metadata !"has_permission", metadata !"", i32 97, metadata !353, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !689, i32 97} ; [ DW
!689 = metadata !{metadata !690, metadata !691, metadata !692, metadata !693, metadata !694}
!690 = metadata !{i32 786689, metadata !688, metadata !"flags", metadata !58, i32 16777313, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 97]
!691 = metadata !{i32 786689, metadata !688, metadata !"s", metadata !58, i32 33554529, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 97]
!692 = metadata !{i32 786688, metadata !688, metadata !"write_access", metadata !58, i32 98, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_access] [line 98]
!693 = metadata !{i32 786688, metadata !688, metadata !"read_access", metadata !58, i32 98, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [read_access] [line 98]
!694 = metadata !{i32 786688, metadata !688, metadata !"mode", metadata !58, i32 99, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 99]
!695 = metadata !{i32 786478, metadata !35, metadata !58, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", i32 39, metadata !696, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !698, i32 39} ; [ DW
!696 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !697, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!697 = metadata !{metadata !67, metadata !61}
!698 = metadata !{metadata !699, metadata !700, metadata !701, metadata !702}
!699 = metadata !{i32 786689, metadata !695, metadata !"pathname", metadata !58, i32 16777255, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 39]
!700 = metadata !{i32 786688, metadata !695, metadata !"c", metadata !58, i32 40, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 40]
!701 = metadata !{i32 786688, metadata !695, metadata !"i", metadata !58, i32 41, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!702 = metadata !{i32 786688, metadata !703, metadata !"df", metadata !58, i32 48, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 48]
!703 = metadata !{i32 786443, metadata !35, metadata !704, i32 47, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!704 = metadata !{i32 786443, metadata !35, metadata !705, i32 47, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!705 = metadata !{i32 786443, metadata !35, metadata !706, i32 46, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!706 = metadata !{i32 786443, metadata !35, metadata !695, i32 46, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!707 = metadata !{metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714}
!708 = metadata !{i32 786484, i32 0, metadata !189, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 304, metadata !21, i32 1, i32 1, i32* @close.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 304] [local] [def]
!709 = metadata !{i32 786484, i32 0, metadata !196, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 336, metadata !21, i32 1, i32 1, i32* @read.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 336] [local] [def]
!710 = metadata !{i32 786484, i32 0, metadata !211, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 404, metadata !21, i32 1, i32 1, i32* @write.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 404] [local] [def]
!711 = metadata !{i32 786484, i32 0, metadata !299, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 659, metadata !21, i32 1, i32 1, i32* @chmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 659] [local] [def]
!712 = metadata !{i32 786484, i32 0, metadata !309, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 681, metadata !21, i32 1, i32 1, i32* @fchmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 681] [local] [def]
!713 = metadata !{i32 786484, i32 0, metadata !362, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 782, metadata !21, i32 1, i32 1, i32* @__fd_ftruncate.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 782] [local] [def]
!714 = metadata !{i32 786484, i32 0, metadata !632, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !58, i32 1381, metadata !21, i32 1, i32 1, i32* @getcwd.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 1381] [local] [def]
!715 = metadata !{i32 786449, metadata !716, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!716 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_init.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!717 = metadata !{metadata !718, metadata !756, metadata !762, metadata !784}
!718 = metadata !{i32 786478, metadata !716, metadata !719, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"", i32 110, metadata !720, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32)* @klee_in
!719 = metadata !{i32 786473, metadata !716}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!720 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !721, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!721 = metadata !{null, metadata !72, metadata !72, metadata !72, metadata !21, metadata !21, metadata !72}
!722 = metadata !{metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !734}
!723 = metadata !{i32 786689, metadata !718, metadata !"n_files", metadata !719, i32 16777326, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_files] [line 110]
!724 = metadata !{i32 786689, metadata !718, metadata !"file_length", metadata !719, i32 33554542, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file_length] [line 110]
!725 = metadata !{i32 786689, metadata !718, metadata !"stdin_length", metadata !719, i32 50331759, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stdin_length] [line 111]
!726 = metadata !{i32 786689, metadata !718, metadata !"sym_stdout_flag", metadata !719, i32 67108975, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym_stdout_flag] [line 111]
!727 = metadata !{i32 786689, metadata !718, metadata !"save_all_writes_flag", metadata !719, i32 83886192, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [save_all_writes_flag] [line 112]
!728 = metadata !{i32 786689, metadata !718, metadata !"max_failures", metadata !719, i32 100663408, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_failures] [line 112]
!729 = metadata !{i32 786688, metadata !718, metadata !"k", metadata !719, i32 113, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 113]
!730 = metadata !{i32 786688, metadata !718, metadata !"name", metadata !719, i32 114, metadata !731, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 114]
!731 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !25, metadata !732, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!732 = metadata !{metadata !733}
!733 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!734 = metadata !{i32 786688, metadata !718, metadata !"s", metadata !719, i32 115, metadata !735, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 115]
!735 = metadata !{i32 786451, metadata !77, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !736, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!736 = metadata !{metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !753, metadata !754, metadata !755}
!737 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!738 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!739 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!740 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!741 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !89} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!742 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!743 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!744 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!745 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !95} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!746 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !98} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!747 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !100} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!748 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !749} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!749 = metadata !{i32 786451, metadata !103, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !750, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!750 = metadata !{metadata !751, metadata !752}
!751 = metadata !{i32 786445, metadata !103, metadata !749, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!752 = metadata !{i32 786445, metadata !103, metadata !749, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!753 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !749} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!754 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !749} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!755 = metadata !{i32 786445, metadata !77, metadata !735, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !112} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!756 = metadata !{i32 786478, metadata !716, metadata !719, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", i32 97, metadata !757, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !759, i32 97} ; [ DW_T
!757 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !758, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!758 = metadata !{metadata !72, metadata !61}
!759 = metadata !{metadata !760, metadata !761}
!760 = metadata !{i32 786689, metadata !756, metadata !"name", metadata !719, i32 16777313, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 97]
!761 = metadata !{i32 786688, metadata !756, metadata !"x", metadata !719, i32 98, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 98]
!762 = metadata !{i32 786478, metadata !716, metadata !719, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", i32 46, metadata !763, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t*, i32, 
!763 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!764 = metadata !{null, metadata !765, metadata !72, metadata !61, metadata !772}
!765 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !766} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!766 = metadata !{i32 786454, metadata !38, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !767} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!767 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !768, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!768 = metadata !{metadata !769, metadata !770, metadata !771}
!769 = metadata !{i32 786445, metadata !38, metadata !767, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!770 = metadata !{i32 786445, metadata !38, metadata !767, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!771 = metadata !{i32 786445, metadata !38, metadata !767, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !772} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!772 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !735} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!773 = metadata !{metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780}
!774 = metadata !{i32 786689, metadata !762, metadata !"dfile", metadata !719, i32 16777262, metadata !765, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dfile] [line 46]
!775 = metadata !{i32 786689, metadata !762, metadata !"size", metadata !719, i32 33554478, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 46]
!776 = metadata !{i32 786689, metadata !762, metadata !"name", metadata !719, i32 50331695, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 47]
!777 = metadata !{i32 786689, metadata !762, metadata !"defaults", metadata !719, i32 67108911, metadata !772, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defaults] [line 47]
!778 = metadata !{i32 786688, metadata !762, metadata !"s", metadata !719, i32 48, metadata !772, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 48]
!779 = metadata !{i32 786688, metadata !762, metadata !"sp", metadata !719, i32 49, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sp] [line 49]
!780 = metadata !{i32 786688, metadata !762, metadata !"sname", metadata !719, i32 50, metadata !781, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname] [line 50]
!781 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !25, metadata !782, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!782 = metadata !{metadata !783}
!783 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!784 = metadata !{i32 786478, metadata !785, metadata !786, metadata !"stat64", metadata !"stat64", metadata !"", i32 501, metadata !787, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !789, i32 502} ; [ DW_TAG_subpro
!785 = metadata !{metadata !"/usr/include/sys/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!786 = metadata !{i32 786473, metadata !785}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!787 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !788, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!788 = metadata !{metadata !21, metadata !61, metadata !772}
!789 = metadata !{metadata !790, metadata !791}
!790 = metadata !{i32 786689, metadata !784, metadata !"__path", metadata !786, i32 16777717, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__path] [line 501]
!791 = metadata !{i32 786689, metadata !784, metadata !"__statbuf", metadata !786, i32 33554933, metadata !772, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 501]
!792 = metadata !{metadata !793, metadata !810}
!793 = metadata !{i32 786484, i32 0, null, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !719, i32 37, metadata !794, i32 0, i32 1, { [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, null} ; [ DW_TAG_variable ] [__
!794 = metadata !{i32 786454, metadata !716, null, metadata !"exe_sym_env_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !795} ; [ DW_TAG_typedef ] [exe_sym_env_t] [line 69, size 0, align 0, offset 0] [from ]
!795 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 61, i64 6272, i64 64, i32 0, i32 0, null, metadata !796, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 61, size 6272, align 64, offset 0] [def] [from ]
!796 = metadata !{metadata !797, metadata !806, metadata !808, metadata !809}
!797 = metadata !{i32 786445, metadata !38, metadata !795, metadata !"fds", i32 62, i64 6144, i64 64, i64 0, i32 0, metadata !798} ; [ DW_TAG_member ] [fds] [line 62, size 6144, align 64, offset 0] [from ]
!798 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 64, i32 0, i32 0, metadata !799, metadata !454, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6144, align 64, offset 0] [from exe_file_t]
!799 = metadata !{i32 786454, metadata !38, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !800} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!800 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !801, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!801 = metadata !{metadata !802, metadata !803, metadata !804, metadata !805}
!802 = metadata !{i32 786445, metadata !38, metadata !800, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!803 = metadata !{i32 786445, metadata !38, metadata !800, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!804 = metadata !{i32 786445, metadata !38, metadata !800, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!805 = metadata !{i32 786445, metadata !38, metadata !800, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !765} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!806 = metadata !{i32 786445, metadata !38, metadata !795, metadata !"umask", i32 63, i64 32, i64 32, i64 6144, i32 0, metadata !807} ; [ DW_TAG_member ] [umask] [line 63, size 32, align 32, offset 6144] [from mode_t]
!807 = metadata !{i32 786454, metadata !38, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!808 = metadata !{i32 786445, metadata !38, metadata !795, metadata !"version", i32 64, i64 32, i64 32, i64 6176, i32 0, metadata !72} ; [ DW_TAG_member ] [version] [line 64, size 32, align 32, offset 6176] [from unsigned int]
!809 = metadata !{i32 786445, metadata !38, metadata !795, metadata !"save_all_writes", i32 68, i64 32, i64 32, i64 6208, i32 0, metadata !21} ; [ DW_TAG_member ] [save_all_writes] [line 68, size 32, align 32, offset 6208] [from int]
!810 = metadata !{i32 786484, i32 0, null, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !719, i32 24, metadata !811, i32 0, i32 1, %struct.exe_file_system_t* @__exe_fs, null} ; [ DW_TAG_variable ] [__exe_fs] [line 24] [def]
!811 = metadata !{i32 786454, metadata !716, null, metadata !"exe_file_system_t", i32 54, i64 0, i64 0, i64 0, i32 0, metadata !812} ; [ DW_TAG_typedef ] [exe_file_system_t] [line 54, size 0, align 0, offset 0] [from ]
!812 = metadata !{i32 786451, metadata !38, null, metadata !"", i32 42, i64 832, i64 64, i32 0, i32 0, null, metadata !813, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 42, size 832, align 64, offset 0] [def] [from ]
!813 = metadata !{metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826}
!814 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"n_sym_files", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [n_sym_files] [line 43, size 32, align 32, offset 0] [from unsigned int]
!815 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"sym_stdin", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !765} ; [ DW_TAG_member ] [sym_stdin] [line 44, size 64, align 64, offset 64] [from ]
!816 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"sym_stdout", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !765} ; [ DW_TAG_member ] [sym_stdout] [line 44, size 64, align 64, offset 128] [from ]
!817 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"stdout_writes", i32 45, i64 32, i64 32, i64 192, i32 0, metadata !72} ; [ DW_TAG_member ] [stdout_writes] [line 45, size 32, align 32, offset 192] [from unsigned int]
!818 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"sym_files", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !765} ; [ DW_TAG_member ] [sym_files] [line 46, size 64, align 64, offset 256] [from ]
!819 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"max_failures", i32 49, i64 32, i64 32, i64 320, i32 0, metadata !72} ; [ DW_TAG_member ] [max_failures] [line 49, size 32, align 32, offset 320] [from unsigned int]
!820 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"read_fail", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !471} ; [ DW_TAG_member ] [read_fail] [line 52, size 64, align 64, offset 384] [from ]
!821 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"write_fail", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !471} ; [ DW_TAG_member ] [write_fail] [line 52, size 64, align 64, offset 448] [from ]
!822 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"close_fail", i32 52, i64 64, i64 64, i64 512, i32 0, metadata !471} ; [ DW_TAG_member ] [close_fail] [line 52, size 64, align 64, offset 512] [from ]
!823 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"ftruncate_fail", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !471} ; [ DW_TAG_member ] [ftruncate_fail] [line 52, size 64, align 64, offset 576] [from ]
!824 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"getcwd_fail", i32 52, i64 64, i64 64, i64 640, i32 0, metadata !471} ; [ DW_TAG_member ] [getcwd_fail] [line 52, size 64, align 64, offset 640] [from ]
!825 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"chmod_fail", i32 53, i64 64, i64 64, i64 704, i32 0, metadata !471} ; [ DW_TAG_member ] [chmod_fail] [line 53, size 64, align 64, offset 704] [from ]
!826 = metadata !{i32 786445, metadata !38, metadata !812, metadata !"fchmod_fail", i32 53, i64 64, i64 64, i64 768, i32 0, metadata !471} ; [ DW_TAG_member ] [fchmod_fail] [line 53, size 64, align 64, offset 768] [from ]
!827 = metadata !{i32 786449, metadata !828, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!828 = metadata !{metadata !"/home/user/klee/runtime/POSIX/illegal.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!829 = metadata !{metadata !830, metadata !839, metadata !861, metadata !867, metadata !873, metadata !877, metadata !881, metadata !889, metadata !893, metadata !900, metadata !903}
!830 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"kill", metadata !"kill", metadata !"", i32 22, metadata !832, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @kill, null, null, metadata !836, i32 22} ; [ DW
!831 = metadata !{i32 786473, metadata !828}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/illegal.c]
!832 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!833 = metadata !{metadata !21, metadata !834, metadata !21}
!834 = metadata !{i32 786454, metadata !828, null, metadata !"pid_t", i32 263, i64 0, i64 0, i64 0, i32 0, metadata !835} ; [ DW_TAG_typedef ] [pid_t] [line 263, size 0, align 0, offset 0] [from __pid_t]
!835 = metadata !{i32 786454, metadata !828, null, metadata !"__pid_t", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [__pid_t] [line 133, size 0, align 0, offset 0] [from int]
!836 = metadata !{metadata !837, metadata !838}
!837 = metadata !{i32 786689, metadata !830, metadata !"pid", metadata !831, i32 16777238, metadata !834, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pid] [line 22]
!838 = metadata !{i32 786689, metadata !830, metadata !"sig", metadata !831, i32 33554454, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig] [line 22]
!839 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"_setjmp", metadata !"_setjmp", metadata !"", i32 29, metadata !840, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.__jmp_buf_tag*)* @_setjmp, null, null, metada
!840 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!841 = metadata !{metadata !21, metadata !842}
!842 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !843} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __jmp_buf_tag]
!843 = metadata !{i32 786451, metadata !844, null, metadata !"__jmp_buf_tag", i32 34, i64 1600, i64 64, i32 0, i32 0, null, metadata !845, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__jmp_buf_tag] [line 34, size 1600, align 64, offset 0] [def]
!844 = metadata !{metadata !"/usr/include/setjmp.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!845 = metadata !{metadata !846, metadata !851, metadata !852}
!846 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"__jmpbuf", i32 40, i64 512, i64 64, i64 0, i32 0, metadata !847} ; [ DW_TAG_member ] [__jmpbuf] [line 40, size 512, align 64, offset 0] [from __jmp_buf]
!847 = metadata !{i32 786454, metadata !844, null, metadata !"__jmp_buf", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !848} ; [ DW_TAG_typedef ] [__jmp_buf] [line 31, size 0, align 0, offset 0] [from ]
!848 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !96, metadata !849, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from long int]
!849 = metadata !{metadata !850}
!850 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!851 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"__mask_was_saved", i32 41, i64 32, i64 32, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [__mask_was_saved] [line 41, size 32, align 32, offset 512] [from int]
!852 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"__saved_mask", i32 42, i64 1024, i64 64, i64 576, i32 0, metadata !853} ; [ DW_TAG_member ] [__saved_mask] [line 42, size 1024, align 64, offset 576] [from __sigset_t]
!853 = metadata !{i32 786454, metadata !844, null, metadata !"__sigset_t", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !854} ; [ DW_TAG_typedef ] [__sigset_t] [line 30, size 0, align 0, offset 0] [from ]
!854 = metadata !{i32 786451, metadata !855, null, metadata !"", i32 27, i64 1024, i64 64, i32 0, i32 0, null, metadata !856, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 27, size 1024, align 64, offset 0] [def] [from ]
!855 = metadata !{metadata !"/usr/include/bits/sigset.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!856 = metadata !{metadata !857}
!857 = metadata !{i32 786445, metadata !855, metadata !854, metadata !"__val", i32 29, i64 1024, i64 64, i64 0, i32 0, metadata !858} ; [ DW_TAG_member ] [__val] [line 29, size 1024, align 64, offset 0] [from ]
!858 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !81, metadata !600, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from long unsigned int]
!859 = metadata !{metadata !860}
!860 = metadata !{i32 786689, metadata !839, metadata !"__env", metadata !831, i32 16777245, metadata !842, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__env] [line 29]
!861 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"longjmp", metadata !"longjmp", metadata !"", i32 34, metadata !862, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.__jmp_buf_tag*, i32)* @longjmp, null, null, 
!862 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !863, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!863 = metadata !{null, metadata !842, metadata !21}
!864 = metadata !{metadata !865, metadata !866}
!865 = metadata !{i32 786689, metadata !861, metadata !"env", metadata !831, i32 16777250, metadata !842, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 34]
!866 = metadata !{i32 786689, metadata !861, metadata !"val", metadata !831, i32 33554466, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 34]
!867 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"execl", metadata !"execl", metadata !"", i32 55, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, ...)* @execl, null, null, metadata !870, i32 55
!868 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !869, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!869 = metadata !{metadata !21, metadata !61, metadata !61}
!870 = metadata !{metadata !871, metadata !872}
!871 = metadata !{i32 786689, metadata !867, metadata !"path", metadata !831, i32 16777271, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 55]
!872 = metadata !{i32 786689, metadata !867, metadata !"arg", metadata !831, i32 33554487, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 55]
!873 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"execlp", metadata !"execlp", metadata !"", i32 56, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, ...)* @execlp, null, null, metadata !874, i32
!874 = metadata !{metadata !875, metadata !876}
!875 = metadata !{i32 786689, metadata !873, metadata !"file", metadata !831, i32 16777272, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 56]
!876 = metadata !{i32 786689, metadata !873, metadata !"arg", metadata !831, i32 33554488, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 56]
!877 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"execle", metadata !"execle", metadata !"", i32 57, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, ...)* @execle, null, null, metadata !878, i32
!878 = metadata !{metadata !879, metadata !880}
!879 = metadata !{i32 786689, metadata !877, metadata !"path", metadata !831, i32 16777273, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 57]
!880 = metadata !{i32 786689, metadata !877, metadata !"arg", metadata !831, i32 33554489, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 57]
!881 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"execv", metadata !"execv", metadata !"", i32 58, metadata !882, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8**)* @execv, null, null, metadata !886, i32 58} ; 
!882 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !883, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!883 = metadata !{metadata !21, metadata !61, metadata !884}
!884 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !885} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!885 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!886 = metadata !{metadata !887, metadata !888}
!887 = metadata !{i32 786689, metadata !881, metadata !"path", metadata !831, i32 16777274, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 58]
!888 = metadata !{i32 786689, metadata !881, metadata !"argv", metadata !831, i32 33554490, metadata !884, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 58]
!889 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"execvp", metadata !"execvp", metadata !"", i32 59, metadata !882, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8**)* @execvp, null, null, metadata !890, i32 59}
!890 = metadata !{metadata !891, metadata !892}
!891 = metadata !{i32 786689, metadata !889, metadata !"file", metadata !831, i32 16777275, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 59]
!892 = metadata !{i32 786689, metadata !889, metadata !"argv", metadata !831, i32 33554491, metadata !884, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 59]
!893 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"execve", metadata !"execve", metadata !"", i32 60, metadata !894, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8**, i8**)* @execve, null, null, metadata !896, i
!894 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !895, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!895 = metadata !{metadata !21, metadata !61, metadata !884, metadata !884}
!896 = metadata !{metadata !897, metadata !898, metadata !899}
!897 = metadata !{i32 786689, metadata !893, metadata !"file", metadata !831, i32 16777276, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 60]
!898 = metadata !{i32 786689, metadata !893, metadata !"argv", metadata !831, i32 33554492, metadata !884, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 60]
!899 = metadata !{i32 786689, metadata !893, metadata !"envp", metadata !831, i32 50331708, metadata !884, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [envp] [line 60]
!900 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"fork", metadata !"fork", metadata !"", i32 62, metadata !901, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @fork, null, null, metadata !15, i32 62} ; [ DW_TAG_subp
!901 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !902, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!902 = metadata !{metadata !835}
!903 = metadata !{i32 786478, metadata !828, metadata !831, metadata !"vfork", metadata !"vfork", metadata !"", i32 68, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @vfork, null, null, metadata !15, i32 68} ; [ DW_TAG_su
!904 = metadata !{i32 786449, metadata !905, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!905 = metadata !{metadata !"/home/user/klee/runtime/POSIX/klee_init_env.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!906 = metadata !{metadata !907, metadata !959, metadata !967, metadata !972, metadata !980, metadata !988, metadata !993}
!907 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"klee_init_env", metadata !"klee_init_env", metadata !"", i32 85, metadata !909, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8***)* @klee_init_env, null, null
!908 = metadata !{i32 786473, metadata !905}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!909 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !910, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!910 = metadata !{null, metadata !471, metadata !911}
!911 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!912 = metadata !{metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !923, metadata !924, metadata !925, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !9
!913 = metadata !{i32 786689, metadata !907, metadata !"argcPtr", metadata !908, i32 16777301, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcPtr] [line 85]
!914 = metadata !{i32 786689, metadata !907, metadata !"argvPtr", metadata !908, i32 33554517, metadata !911, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argvPtr] [line 85]
!915 = metadata !{i32 786688, metadata !907, metadata !"argc", metadata !908, i32 86, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argc] [line 86]
!916 = metadata !{i32 786688, metadata !907, metadata !"argv", metadata !908, i32 87, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 87]
!917 = metadata !{i32 786688, metadata !907, metadata !"new_argc", metadata !908, i32 89, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argc] [line 89]
!918 = metadata !{i32 786688, metadata !907, metadata !"n_args", metadata !908, i32 89, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_args] [line 89]
!919 = metadata !{i32 786688, metadata !907, metadata !"new_argv", metadata !908, i32 90, metadata !920, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argv] [line 90]
!920 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 64, i32 0, i32 0, metadata !29, metadata !921, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 64, offset 0] [from ]
!921 = metadata !{metadata !922}
!922 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!923 = metadata !{i32 786688, metadata !907, metadata !"max_len", metadata !908, i32 91, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_len] [line 91]
!924 = metadata !{i32 786688, metadata !907, metadata !"min_argvs", metadata !908, i32 91, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_argvs] [line 91]
!925 = metadata !{i32 786688, metadata !907, metadata !"max_argvs", metadata !908, i32 91, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_argvs] [line 91]
!926 = metadata !{i32 786688, metadata !907, metadata !"sym_files", metadata !908, i32 92, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_files] [line 92]
!927 = metadata !{i32 786688, metadata !907, metadata !"sym_file_len", metadata !908, i32 92, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_file_len] [line 92]
!928 = metadata !{i32 786688, metadata !907, metadata !"sym_stdin_len", metadata !908, i32 93, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdin_len] [line 93]
!929 = metadata !{i32 786688, metadata !907, metadata !"sym_stdout_flag", metadata !908, i32 94, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdout_flag] [line 94]
!930 = metadata !{i32 786688, metadata !907, metadata !"save_all_writes_flag", metadata !908, i32 95, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save_all_writes_flag] [line 95]
!931 = metadata !{i32 786688, metadata !907, metadata !"fd_fail", metadata !908, i32 96, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd_fail] [line 96]
!932 = metadata !{i32 786688, metadata !907, metadata !"final_argv", metadata !908, i32 97, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [final_argv] [line 97]
!933 = metadata !{i32 786688, metadata !907, metadata !"sym_arg_name", metadata !908, i32 98, metadata !934, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_name] [line 98]
!934 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !25, metadata !935, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!935 = metadata !{metadata !936}
!936 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!937 = metadata !{i32 786688, metadata !907, metadata !"sym_arg_num", metadata !908, i32 99, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_num] [line 99]
!938 = metadata !{i32 786688, metadata !907, metadata !"k", metadata !908, i32 100, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 100]
!939 = metadata !{i32 786688, metadata !907, metadata !"i", metadata !908, i32 100, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!940 = metadata !{i32 786688, metadata !941, metadata !"msg", metadata !908, i32 125, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 125]
!941 = metadata !{i32 786443, metadata !905, metadata !942, i32 124, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!942 = metadata !{i32 786443, metadata !905, metadata !943, i32 124, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!943 = metadata !{i32 786443, metadata !905, metadata !907, i32 123, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!944 = metadata !{i32 786688, metadata !945, metadata !"msg", metadata !908, i32 136, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 136]
!945 = metadata !{i32 786443, metadata !905, metadata !946, i32 135, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!946 = metadata !{i32 786443, metadata !905, metadata !942, i32 135, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!947 = metadata !{i32 786688, metadata !948, metadata !"msg", metadata !908, i32 156, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 156]
!948 = metadata !{i32 786443, metadata !905, metadata !949, i32 155, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!949 = metadata !{i32 786443, metadata !905, metadata !946, i32 155, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!950 = metadata !{i32 786688, metadata !951, metadata !"msg", metadata !908, i32 167, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 167]
!951 = metadata !{i32 786443, metadata !905, metadata !952, i32 166, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!952 = metadata !{i32 786443, metadata !905, metadata !949, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!953 = metadata !{i32 786688, metadata !954, metadata !"msg", metadata !908, i32 188, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 188]
!954 = metadata !{i32 786443, metadata !905, metadata !955, i32 187, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!955 = metadata !{i32 786443, metadata !905, metadata !956, i32 187, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!956 = metadata !{i32 786443, metadata !905, metadata !957, i32 183, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!957 = metadata !{i32 786443, metadata !905, metadata !958, i32 179, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!958 = metadata !{i32 786443, metadata !905, metadata !952, i32 174, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!959 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"__get_sym_str", metadata !"__get_sym_str", metadata !"", i32 63, metadata !960, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @__get_sym_str, null, null, met
!960 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !961, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!961 = metadata !{metadata !29, metadata !21, metadata !29}
!962 = metadata !{metadata !963, metadata !964, metadata !965, metadata !966}
!963 = metadata !{i32 786689, metadata !959, metadata !"numChars", metadata !908, i32 16777279, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [numChars] [line 63]
!964 = metadata !{i32 786689, metadata !959, metadata !"name", metadata !908, i32 33554495, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 63]
!965 = metadata !{i32 786688, metadata !959, metadata !"i", metadata !908, i32 64, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!966 = metadata !{i32 786688, metadata !959, metadata !"s", metadata !908, i32 65, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 65]
!967 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"__isprint", metadata !"__isprint", metadata !"", i32 48, metadata !968, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !970, i32 48} ; [ DW_TAG_sub
!968 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !969, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!969 = metadata !{metadata !21, metadata !62}
!970 = metadata !{metadata !971}
!971 = metadata !{i32 786689, metadata !967, metadata !"c", metadata !908, i32 16777264, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 48]
!972 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"__add_arg", metadata !"__add_arg", metadata !"", i32 76, metadata !973, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !975, i32 76} ; [ DW_TAG_sub
!973 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !974, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!974 = metadata !{null, metadata !471, metadata !33, metadata !29, metadata !21}
!975 = metadata !{metadata !976, metadata !977, metadata !978, metadata !979}
!976 = metadata !{i32 786689, metadata !972, metadata !"argc", metadata !908, i32 16777292, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 76]
!977 = metadata !{i32 786689, metadata !972, metadata !"argv", metadata !908, i32 33554508, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 76]
!978 = metadata !{i32 786689, metadata !972, metadata !"arg", metadata !908, i32 50331724, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 76]
!979 = metadata !{i32 786689, metadata !972, metadata !"argcMax", metadata !908, i32 67108940, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcMax] [line 76]
!980 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"__str_to_int", metadata !"__str_to_int", metadata !"", i32 30, metadata !981, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !983, i32 30} ; [ DW_T
!981 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !982, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!982 = metadata !{metadata !96, metadata !29, metadata !61}
!983 = metadata !{metadata !984, metadata !985, metadata !986, metadata !987}
!984 = metadata !{i32 786689, metadata !980, metadata !"s", metadata !908, i32 16777246, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 30]
!985 = metadata !{i32 786689, metadata !980, metadata !"error_msg", metadata !908, i32 33554462, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [error_msg] [line 30]
!986 = metadata !{i32 786688, metadata !980, metadata !"res", metadata !908, i32 31, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 31]
!987 = metadata !{i32 786688, metadata !980, metadata !"c", metadata !908, i32 32, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 32]
!988 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"__emit_error", metadata !"__emit_error", metadata !"", i32 23, metadata !989, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @__emit_error, null, null, metadata !
!989 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !990, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!990 = metadata !{null, metadata !61}
!991 = metadata !{metadata !992}
!992 = metadata !{i32 786689, metadata !988, metadata !"msg", metadata !908, i32 16777239, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 23]
!993 = metadata !{i32 786478, metadata !905, metadata !908, metadata !"__streq", metadata !"__streq", metadata !"", i32 53, metadata !868, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !994, i32 53} ; [ DW_TAG_subprog
!994 = metadata !{metadata !995, metadata !996}
!995 = metadata !{i32 786689, metadata !993, metadata !"a", metadata !908, i32 16777269, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 53]
!996 = metadata !{i32 786689, metadata !993, metadata !"b", metadata !908, i32 33554485, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 53]
!997 = metadata !{i32 786449, metadata !998, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!998 = metadata !{metadata !"/home/user/klee/runtime/POSIX/stubs.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!999 = metadata !{metadata !1000, metadata !1006, metadata !1012}
!1000 = metadata !{i32 786436, metadata !1001, null, metadata !"", i32 60, i64 32, i64 32, i32 0, i32 0, null, metadata !1002, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 60, size 32, align 32, offset 0] [def] [from ]
!1001 = metadata !{metadata !"/usr/include/sys/wait.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1002 = metadata !{metadata !1003, metadata !1004, metadata !1005}
!1003 = metadata !{i32 786472, metadata !"P_ALL", i64 0} ; [ DW_TAG_enumerator ] [P_ALL :: 0]
!1004 = metadata !{i32 786472, metadata !"P_PID", i64 1} ; [ DW_TAG_enumerator ] [P_PID :: 1]
!1005 = metadata !{i32 786472, metadata !"P_PGID", i64 2} ; [ DW_TAG_enumerator ] [P_PGID :: 2]
!1006 = metadata !{i32 786436, metadata !1007, null, metadata !"__priority_which", i32 292, i64 32, i64 32, i32 0, i32 0, null, metadata !1008, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [__priority_which] [line 292, size 32, align 32, offset
!1007 = metadata !{metadata !"/usr/include/bits/resource.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1008 = metadata !{metadata !1009, metadata !1010, metadata !1011}
!1009 = metadata !{i32 786472, metadata !"PRIO_PROCESS", i64 0} ; [ DW_TAG_enumerator ] [PRIO_PROCESS :: 0]
!1010 = metadata !{i32 786472, metadata !"PRIO_PGRP", i64 1} ; [ DW_TAG_enumerator ] [PRIO_PGRP :: 1]
!1011 = metadata !{i32 786472, metadata !"PRIO_USER", i64 2} ; [ DW_TAG_enumerator ] [PRIO_USER :: 2]
!1012 = metadata !{i32 786436, metadata !1007, null, metadata !"__rlimit_resource", i32 31, i64 32, i64 32, i32 0, i32 0, null, metadata !1013, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [__rlimit_resource] [line 31, size 32, align 32, offset
!1013 = metadata !{metadata !1014, metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1
!1014 = metadata !{i32 786472, metadata !"RLIMIT_CPU", i64 0} ; [ DW_TAG_enumerator ] [RLIMIT_CPU :: 0]
!1015 = metadata !{i32 786472, metadata !"RLIMIT_FSIZE", i64 1} ; [ DW_TAG_enumerator ] [RLIMIT_FSIZE :: 1]
!1016 = metadata !{i32 786472, metadata !"RLIMIT_DATA", i64 2} ; [ DW_TAG_enumerator ] [RLIMIT_DATA :: 2]
!1017 = metadata !{i32 786472, metadata !"RLIMIT_STACK", i64 3} ; [ DW_TAG_enumerator ] [RLIMIT_STACK :: 3]
!1018 = metadata !{i32 786472, metadata !"RLIMIT_CORE", i64 4} ; [ DW_TAG_enumerator ] [RLIMIT_CORE :: 4]
!1019 = metadata !{i32 786472, metadata !"__RLIMIT_RSS", i64 5} ; [ DW_TAG_enumerator ] [__RLIMIT_RSS :: 5]
!1020 = metadata !{i32 786472, metadata !"RLIMIT_NOFILE", i64 7} ; [ DW_TAG_enumerator ] [RLIMIT_NOFILE :: 7]
!1021 = metadata !{i32 786472, metadata !"__RLIMIT_OFILE", i64 7} ; [ DW_TAG_enumerator ] [__RLIMIT_OFILE :: 7]
!1022 = metadata !{i32 786472, metadata !"RLIMIT_AS", i64 9} ; [ DW_TAG_enumerator ] [RLIMIT_AS :: 9]
!1023 = metadata !{i32 786472, metadata !"__RLIMIT_NPROC", i64 6} ; [ DW_TAG_enumerator ] [__RLIMIT_NPROC :: 6]
!1024 = metadata !{i32 786472, metadata !"__RLIMIT_MEMLOCK", i64 8} ; [ DW_TAG_enumerator ] [__RLIMIT_MEMLOCK :: 8]
!1025 = metadata !{i32 786472, metadata !"__RLIMIT_LOCKS", i64 10} ; [ DW_TAG_enumerator ] [__RLIMIT_LOCKS :: 10]
!1026 = metadata !{i32 786472, metadata !"__RLIMIT_SIGPENDING", i64 11} ; [ DW_TAG_enumerator ] [__RLIMIT_SIGPENDING :: 11]
!1027 = metadata !{i32 786472, metadata !"__RLIMIT_MSGQUEUE", i64 12} ; [ DW_TAG_enumerator ] [__RLIMIT_MSGQUEUE :: 12]
!1028 = metadata !{i32 786472, metadata !"__RLIMIT_NICE", i64 13} ; [ DW_TAG_enumerator ] [__RLIMIT_NICE :: 13]
!1029 = metadata !{i32 786472, metadata !"__RLIMIT_RTPRIO", i64 14} ; [ DW_TAG_enumerator ] [__RLIMIT_RTPRIO :: 14]
!1030 = metadata !{i32 786472, metadata !"__RLIMIT_RTTIME", i64 15} ; [ DW_TAG_enumerator ] [__RLIMIT_RTTIME :: 15]
!1031 = metadata !{i32 786472, metadata !"__RLIMIT_NLIMITS", i64 16} ; [ DW_TAG_enumerator ] [__RLIMIT_NLIMITS :: 16]
!1032 = metadata !{i32 786472, metadata !"__RLIM_NLIMITS", i64 16} ; [ DW_TAG_enumerator ] [__RLIM_NLIMITS :: 16]
!1033 = metadata !{metadata !1034, metadata !1143, metadata !1150, metadata !1161, metadata !1164, metadata !1165, metadata !1171, metadata !1224, metadata !1230, metadata !1238, metadata !1242, metadata !1251, metadata !1256, metadata !1260, metadata !1
!1034 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"__syscall_rt_sigaction", metadata !"__syscall_rt_sigaction", metadata !"", i32 40, metadata !1036, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sigacti
!1035 = metadata !{i32 786473, metadata !998}     ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/stubs.c]
!1036 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1037, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1037 = metadata !{metadata !21, metadata !21, metadata !1038, metadata !1136, metadata !1137}
!1038 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1039} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1039 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1040} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from sigaction]
!1040 = metadata !{i32 786451, metadata !1041, null, metadata !"sigaction", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !1042, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [sigaction] [line 24, size 1216, align 64, offset 0] [def] [fro
!1041 = metadata !{metadata !"/usr/include/bits/sigaction.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1042 = metadata !{metadata !1043, metadata !1126, metadata !1131, metadata !1132}
!1043 = metadata !{i32 786445, metadata !1041, metadata !1040, metadata !"__sigaction_handler", i32 35, i64 64, i64 64, i64 0, i32 0, metadata !1044} ; [ DW_TAG_member ] [__sigaction_handler] [line 35, size 64, align 64, offset 0] [from ]
!1044 = metadata !{i32 786455, metadata !1041, metadata !1040, metadata !"", i32 28, i64 64, i64 64, i64 0, i32 0, null, metadata !1045, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 28, size 64, align 64, offset 0] [def] [from ]
!1045 = metadata !{metadata !1046, metadata !1051}
!1046 = metadata !{i32 786445, metadata !1041, metadata !1044, metadata !"sa_handler", i32 31, i64 64, i64 64, i64 0, i32 0, metadata !1047} ; [ DW_TAG_member ] [sa_handler] [line 31, size 64, align 64, offset 0] [from __sighandler_t]
!1047 = metadata !{i32 786454, metadata !1041, null, metadata !"__sighandler_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1048} ; [ DW_TAG_typedef ] [__sighandler_t] [line 85, size 0, align 0, offset 0] [from ]
!1048 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1049} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1049 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1050, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1050 = metadata !{null, metadata !21}
!1051 = metadata !{i32 786445, metadata !1041, metadata !1044, metadata !"sa_sigaction", i32 33, i64 64, i64 64, i64 0, i32 0, metadata !1052} ; [ DW_TAG_member ] [sa_sigaction] [line 33, size 64, align 64, offset 0] [from ]
!1052 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1053} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1053 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1054, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1054 = metadata !{null, metadata !21, metadata !1055, metadata !201}
!1055 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1056} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from siginfo_t]
!1056 = metadata !{i32 786454, metadata !1041, null, metadata !"siginfo_t", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !1057} ; [ DW_TAG_typedef ] [siginfo_t] [line 133, size 0, align 0, offset 0] [from ]
!1057 = metadata !{i32 786451, metadata !1058, null, metadata !"", i32 62, i64 1024, i64 64, i32 0, i32 0, null, metadata !1059, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 62, size 1024, align 64, offset 0] [def] [from ]
!1058 = metadata !{metadata !"/usr/include/bits/siginfo.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1059 = metadata !{metadata !1060, metadata !1061, metadata !1062, metadata !1063}
!1060 = metadata !{i32 786445, metadata !1058, metadata !1057, metadata !"si_signo", i32 64, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [si_signo] [line 64, size 32, align 32, offset 0] [from int]
!1061 = metadata !{i32 786445, metadata !1058, metadata !1057, metadata !"si_errno", i32 65, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [si_errno] [line 65, size 32, align 32, offset 32] [from int]
!1062 = metadata !{i32 786445, metadata !1058, metadata !1057, metadata !"si_code", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [si_code] [line 67, size 32, align 32, offset 64] [from int]
!1063 = metadata !{i32 786445, metadata !1058, metadata !1057, metadata !"_sifields", i32 132, i64 896, i64 64, i64 128, i32 0, metadata !1064} ; [ DW_TAG_member ] [_sifields] [line 132, size 896, align 64, offset 128] [from ]
!1064 = metadata !{i32 786455, metadata !1058, metadata !1057, metadata !"", i32 69, i64 896, i64 64, i64 0, i32 0, null, metadata !1065, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 69, size 896, align 64, offset 0] [def] [from ]
!1065 = metadata !{metadata !1066, metadata !1070, metadata !1077, metadata !1088, metadata !1094, metadata !1104, metadata !1115, metadata !1120}
!1066 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_pad", i32 71, i64 896, i64 32, i64 0, i32 0, metadata !1067} ; [ DW_TAG_member ] [_pad] [line 71, size 896, align 32, offset 0] [from ]
!1067 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 896, i64 32, i32 0, i32 0, metadata !21, metadata !1068, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 896, align 32, offset 0] [from int]
!1068 = metadata !{metadata !1069}
!1069 = metadata !{i32 786465, i64 0, i64 28}     ; [ DW_TAG_subrange_type ] [0, 27]
!1070 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_kill", i32 78, i64 64, i64 32, i64 0, i32 0, metadata !1071} ; [ DW_TAG_member ] [_kill] [line 78, size 64, align 32, offset 0] [from ]
!1071 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 74, i64 64, i64 32, i32 0, i32 0, null, metadata !1072, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 74, size 64, align 32, offset 0] [def] [from ]
!1072 = metadata !{metadata !1073, metadata !1075}
!1073 = metadata !{i32 786445, metadata !1058, metadata !1071, metadata !"si_pid", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !1074} ; [ DW_TAG_member ] [si_pid] [line 76, size 32, align 32, offset 0] [from __pid_t]
!1074 = metadata !{i32 786454, metadata !1058, null, metadata !"__pid_t", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [__pid_t] [line 133, size 0, align 0, offset 0] [from int]
!1075 = metadata !{i32 786445, metadata !1058, metadata !1071, metadata !"si_uid", i32 77, i64 32, i64 32, i64 32, i32 0, metadata !1076} ; [ DW_TAG_member ] [si_uid] [line 77, size 32, align 32, offset 32] [from __uid_t]
!1076 = metadata !{i32 786454, metadata !1058, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!1077 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_timer", i32 86, i64 128, i64 64, i64 0, i32 0, metadata !1078} ; [ DW_TAG_member ] [_timer] [line 86, size 128, align 64, offset 0] [from ]
!1078 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 81, i64 128, i64 64, i32 0, i32 0, null, metadata !1079, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 128, align 64, offset 0] [def] [from ]
!1079 = metadata !{metadata !1080, metadata !1081, metadata !1082}
!1080 = metadata !{i32 786445, metadata !1058, metadata !1078, metadata !"si_tid", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [si_tid] [line 83, size 32, align 32, offset 0] [from int]
!1081 = metadata !{i32 786445, metadata !1058, metadata !1078, metadata !"si_overrun", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [si_overrun] [line 84, size 32, align 32, offset 32] [from int]
!1082 = metadata !{i32 786445, metadata !1058, metadata !1078, metadata !"si_sigval", i32 85, i64 64, i64 64, i64 64, i32 0, metadata !1083} ; [ DW_TAG_member ] [si_sigval] [line 85, size 64, align 64, offset 64] [from sigval_t]
!1083 = metadata !{i32 786454, metadata !1058, null, metadata !"sigval_t", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1084} ; [ DW_TAG_typedef ] [sigval_t] [line 36, size 0, align 0, offset 0] [from sigval]
!1084 = metadata !{i32 786455, metadata !1058, null, metadata !"sigval", i32 32, i64 64, i64 64, i64 0, i32 0, null, metadata !1085, i32 0, null, null, null} ; [ DW_TAG_union_type ] [sigval] [line 32, size 64, align 64, offset 0] [def] [from ]
!1085 = metadata !{metadata !1086, metadata !1087}
!1086 = metadata !{i32 786445, metadata !1058, metadata !1084, metadata !"sival_int", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [sival_int] [line 34, size 32, align 32, offset 0] [from int]
!1087 = metadata !{i32 786445, metadata !1058, metadata !1084, metadata !"sival_ptr", i32 35, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [sival_ptr] [line 35, size 64, align 64, offset 0] [from ]
!1088 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_rt", i32 94, i64 128, i64 64, i64 0, i32 0, metadata !1089} ; [ DW_TAG_member ] [_rt] [line 94, size 128, align 64, offset 0] [from ]
!1089 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 89, i64 128, i64 64, i32 0, i32 0, null, metadata !1090, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 89, size 128, align 64, offset 0] [def] [from ]
!1090 = metadata !{metadata !1091, metadata !1092, metadata !1093}
!1091 = metadata !{i32 786445, metadata !1058, metadata !1089, metadata !"si_pid", i32 91, i64 32, i64 32, i64 0, i32 0, metadata !1074} ; [ DW_TAG_member ] [si_pid] [line 91, size 32, align 32, offset 0] [from __pid_t]
!1092 = metadata !{i32 786445, metadata !1058, metadata !1089, metadata !"si_uid", i32 92, i64 32, i64 32, i64 32, i32 0, metadata !1076} ; [ DW_TAG_member ] [si_uid] [line 92, size 32, align 32, offset 32] [from __uid_t]
!1093 = metadata !{i32 786445, metadata !1058, metadata !1089, metadata !"si_sigval", i32 93, i64 64, i64 64, i64 64, i32 0, metadata !1083} ; [ DW_TAG_member ] [si_sigval] [line 93, size 64, align 64, offset 64] [from sigval_t]
!1094 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_sigchld", i32 104, i64 256, i64 64, i64 0, i32 0, metadata !1095} ; [ DW_TAG_member ] [_sigchld] [line 104, size 256, align 64, offset 0] [from ]
!1095 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 97, i64 256, i64 64, i32 0, i32 0, null, metadata !1096, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 97, size 256, align 64, offset 0] [def] [from ]
!1096 = metadata !{metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1103}
!1097 = metadata !{i32 786445, metadata !1058, metadata !1095, metadata !"si_pid", i32 99, i64 32, i64 32, i64 0, i32 0, metadata !1074} ; [ DW_TAG_member ] [si_pid] [line 99, size 32, align 32, offset 0] [from __pid_t]
!1098 = metadata !{i32 786445, metadata !1058, metadata !1095, metadata !"si_uid", i32 100, i64 32, i64 32, i64 32, i32 0, metadata !1076} ; [ DW_TAG_member ] [si_uid] [line 100, size 32, align 32, offset 32] [from __uid_t]
!1099 = metadata !{i32 786445, metadata !1058, metadata !1095, metadata !"si_status", i32 101, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [si_status] [line 101, size 32, align 32, offset 64] [from int]
!1100 = metadata !{i32 786445, metadata !1058, metadata !1095, metadata !"si_utime", i32 102, i64 64, i64 64, i64 128, i32 0, metadata !1101} ; [ DW_TAG_member ] [si_utime] [line 102, size 64, align 64, offset 128] [from __sigchld_clock_t]
!1101 = metadata !{i32 786454, metadata !1058, null, metadata !"__sigchld_clock_t", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !1102} ; [ DW_TAG_typedef ] [__sigchld_clock_t] [line 58, size 0, align 0, offset 0] [from __clock_t]
!1102 = metadata !{i32 786454, metadata !1058, null, metadata !"__clock_t", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__clock_t] [line 135, size 0, align 0, offset 0] [from long int]
!1103 = metadata !{i32 786445, metadata !1058, metadata !1095, metadata !"si_stime", i32 103, i64 64, i64 64, i64 192, i32 0, metadata !1101} ; [ DW_TAG_member ] [si_stime] [line 103, size 64, align 64, offset 192] [from __sigchld_clock_t]
!1104 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_sigfault", i32 116, i64 256, i64 64, i64 0, i32 0, metadata !1105} ; [ DW_TAG_member ] [_sigfault] [line 116, size 256, align 64, offset 0] [from ]
!1105 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 107, i64 256, i64 64, i32 0, i32 0, null, metadata !1106, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 107, size 256, align 64, offset 0] [def] [from ]
!1106 = metadata !{metadata !1107, metadata !1108, metadata !1110}
!1107 = metadata !{i32 786445, metadata !1058, metadata !1105, metadata !"si_addr", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [si_addr] [line 109, size 64, align 64, offset 0] [from ]
!1108 = metadata !{i32 786445, metadata !1058, metadata !1105, metadata !"si_addr_lsb", i32 110, i64 16, i64 16, i64 64, i32 0, metadata !1109} ; [ DW_TAG_member ] [si_addr_lsb] [line 110, size 16, align 16, offset 64] [from short]
!1109 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!1110 = metadata !{i32 786445, metadata !1058, metadata !1105, metadata !"si_addr_bnd", i32 115, i64 128, i64 64, i64 128, i32 0, metadata !1111} ; [ DW_TAG_member ] [si_addr_bnd] [line 115, size 128, align 64, offset 128] [from ]
!1111 = metadata !{i32 786451, metadata !1058, metadata !1105, metadata !"", i32 111, i64 128, i64 64, i32 0, i32 0, null, metadata !1112, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 111, size 128, align 64, offset 0] [def] [from ]
!1112 = metadata !{metadata !1113, metadata !1114}
!1113 = metadata !{i32 786445, metadata !1058, metadata !1111, metadata !"_lower", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [_lower] [line 113, size 64, align 64, offset 0] [from ]
!1114 = metadata !{i32 786445, metadata !1058, metadata !1111, metadata !"_upper", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !201} ; [ DW_TAG_member ] [_upper] [line 114, size 64, align 64, offset 64] [from ]
!1115 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_sigpoll", i32 123, i64 128, i64 64, i64 0, i32 0, metadata !1116} ; [ DW_TAG_member ] [_sigpoll] [line 123, size 128, align 64, offset 0] [from ]
!1116 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 119, i64 128, i64 64, i32 0, i32 0, null, metadata !1117, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 119, size 128, align 64, offset 0] [def] [from ]
!1117 = metadata !{metadata !1118, metadata !1119}
!1118 = metadata !{i32 786445, metadata !1058, metadata !1116, metadata !"si_band", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [si_band] [line 121, size 64, align 64, offset 0] [from long int]
!1119 = metadata !{i32 786445, metadata !1058, metadata !1116, metadata !"si_fd", i32 122, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [si_fd] [line 122, size 32, align 32, offset 64] [from int]
!1120 = metadata !{i32 786445, metadata !1058, metadata !1064, metadata !"_sigsys", i32 131, i64 128, i64 64, i64 0, i32 0, metadata !1121} ; [ DW_TAG_member ] [_sigsys] [line 131, size 128, align 64, offset 0] [from ]
!1121 = metadata !{i32 786451, metadata !1058, metadata !1064, metadata !"", i32 126, i64 128, i64 64, i32 0, i32 0, null, metadata !1122, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 126, size 128, align 64, offset 0] [def] [from ]
!1122 = metadata !{metadata !1123, metadata !1124, metadata !1125}
!1123 = metadata !{i32 786445, metadata !1058, metadata !1121, metadata !"_call_addr", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [_call_addr] [line 128, size 64, align 64, offset 0] [from ]
!1124 = metadata !{i32 786445, metadata !1058, metadata !1121, metadata !"_syscall", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [_syscall] [line 129, size 32, align 32, offset 64] [from int]
!1125 = metadata !{i32 786445, metadata !1058, metadata !1121, metadata !"_arch", i32 130, i64 32, i64 32, i64 96, i32 0, metadata !72} ; [ DW_TAG_member ] [_arch] [line 130, size 32, align 32, offset 96] [from unsigned int]
!1126 = metadata !{i32 786445, metadata !1041, metadata !1040, metadata !"sa_mask", i32 43, i64 1024, i64 64, i64 64, i32 0, metadata !1127} ; [ DW_TAG_member ] [sa_mask] [line 43, size 1024, align 64, offset 64] [from __sigset_t]
!1127 = metadata !{i32 786454, metadata !1041, null, metadata !"__sigset_t", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !1128} ; [ DW_TAG_typedef ] [__sigset_t] [line 30, size 0, align 0, offset 0] [from ]
!1128 = metadata !{i32 786451, metadata !855, null, metadata !"", i32 27, i64 1024, i64 64, i32 0, i32 0, null, metadata !1129, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 27, size 1024, align 64, offset 0] [def] [from ]
!1129 = metadata !{metadata !1130}
!1130 = metadata !{i32 786445, metadata !855, metadata !1128, metadata !"__val", i32 29, i64 1024, i64 64, i64 0, i32 0, metadata !858} ; [ DW_TAG_member ] [__val] [line 29, size 1024, align 64, offset 0] [from ]
!1131 = metadata !{i32 786445, metadata !1041, metadata !1040, metadata !"sa_flags", i32 46, i64 32, i64 32, i64 1088, i32 0, metadata !21} ; [ DW_TAG_member ] [sa_flags] [line 46, size 32, align 32, offset 1088] [from int]
!1132 = metadata !{i32 786445, metadata !1041, metadata !1040, metadata !"sa_restorer", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !1133} ; [ DW_TAG_member ] [sa_restorer] [line 49, size 64, align 64, offset 1152] [from ]
!1133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1134} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1134 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1135, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1135 = metadata !{null}
!1136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1040} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sigaction]
!1137 = metadata !{i32 786454, metadata !998, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1138 = metadata !{metadata !1139, metadata !1140, metadata !1141, metadata !1142}
!1139 = metadata !{i32 786689, metadata !1034, metadata !"signum", metadata !1035, i32 16777256, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signum] [line 40]
!1140 = metadata !{i32 786689, metadata !1034, metadata !"act", metadata !1035, i32 33554472, metadata !1038, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [act] [line 40]
!1141 = metadata !{i32 786689, metadata !1034, metadata !"oldact", metadata !1035, i32 50331689, metadata !1136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldact] [line 41]
!1142 = metadata !{i32 786689, metadata !1034, metadata !"_something", metadata !1035, i32 67108905, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_something] [line 41]
!1143 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"sigaction", metadata !"sigaction", metadata !"", i32 49, metadata !1144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sigaction*, %struct.sigaction*)* 
!1144 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1145, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1145 = metadata !{metadata !21, metadata !21, metadata !1038, metadata !1136}
!1146 = metadata !{metadata !1147, metadata !1148, metadata !1149}
!1147 = metadata !{i32 786689, metadata !1143, metadata !"signum", metadata !1035, i32 16777265, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signum] [line 49]
!1148 = metadata !{i32 786689, metadata !1143, metadata !"act", metadata !1035, i32 33554481, metadata !1038, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [act] [line 49]
!1149 = metadata !{i32 786689, metadata !1143, metadata !"oldact", metadata !1035, i32 50331698, metadata !1136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldact] [line 50]
!1150 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"sigprocmask", metadata !"sigprocmask", metadata !"", i32 57, metadata !1151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.__sigset_t*, %struct.__sigset
!1151 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1152, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1152 = metadata !{metadata !21, metadata !21, metadata !1153, metadata !1156}
!1153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1154} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1154 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1155} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from sigset_t]
!1155 = metadata !{i32 786454, metadata !998, null, metadata !"sigset_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1127} ; [ DW_TAG_typedef ] [sigset_t] [line 49, size 0, align 0, offset 0] [from __sigset_t]
!1156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sigset_t]
!1157 = metadata !{metadata !1158, metadata !1159, metadata !1160}
!1158 = metadata !{i32 786689, metadata !1150, metadata !"how", metadata !1035, i32 16777273, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [how] [line 57]
!1159 = metadata !{i32 786689, metadata !1150, metadata !"set", metadata !1035, i32 33554489, metadata !1153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [set] [line 57]
!1160 = metadata !{i32 786689, metadata !1150, metadata !"oldset", metadata !1035, i32 50331705, metadata !1156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldset] [line 57]
!1161 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"fdatasync", metadata !"fdatasync", metadata !"", i32 64, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fdatasync, null, null, metadata !1162, i
!1162 = metadata !{metadata !1163}
!1163 = metadata !{i32 786689, metadata !1161, metadata !"fd", metadata !1035, i32 16777280, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 64]
!1164 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"sync", metadata !"sync", metadata !"", i32 70, metadata !1134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @sync, null, null, metadata !15, i32 70} ; [ DW_TAG_
!1165 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"__socketcall", metadata !"__socketcall", metadata !"", i32 79, metadata !1166, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*)* @__socketcall, null, null, m
!1166 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1167, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1167 = metadata !{metadata !21, metadata !21, metadata !471}
!1168 = metadata !{metadata !1169, metadata !1170}
!1169 = metadata !{i32 786689, metadata !1165, metadata !"type", metadata !1035, i32 16777295, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1170 = metadata !{i32 786689, metadata !1165, metadata !"args", metadata !1035, i32 33554511, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 79]
!1171 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"_IO_getc", metadata !"_IO_getc", metadata !"", i32 86, metadata !1172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @_IO_getc, null, null, metad
!1172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1173 = metadata !{metadata !21, metadata !1174}
!1174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1175 = metadata !{i32 786454, metadata !998, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !1176} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!1176 = metadata !{i32 786451, metadata !1177, null, metadata !"_IO_FILE", i32 241, i64 1728, i64 64, i32 0, i32 0, null, metadata !1178, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 241, size 1728, align 64, offset 0] [def] [fro
!1177 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1178 = metadata !{metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1199, metadata !1
!1179 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_flags", i32 242, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags] [line 242, size 32, align 32, offset 0] [from int]
!1180 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_read_ptr", i32 247, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_ptr] [line 247, size 64, align 64, offset 64] [from ]
!1181 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_read_end", i32 248, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_end] [line 248, size 64, align 64, offset 128] [from ]
!1182 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_read_base", i32 249, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_base] [line 249, size 64, align 64, offset 192] [from ]
!1183 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_write_base", i32 250, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_base] [line 250, size 64, align 64, offset 256] [from ]
!1184 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_write_ptr", i32 251, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_ptr] [line 251, size 64, align 64, offset 320] [from ]
!1185 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_write_end", i32 252, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_end] [line 252, size 64, align 64, offset 384] [from ]
!1186 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_buf_base", i32 253, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_base] [line 253, size 64, align 64, offset 448] [from ]
!1187 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_buf_end", i32 254, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_end] [line 254, size 64, align 64, offset 512] [from ]
!1188 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_save_base", i32 256, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_base] [line 256, size 64, align 64, offset 576] [from ]
!1189 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_backup_base", i32 257, i64 64, i64 64, i64 640, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_backup_base] [line 257, size 64, align 64, offset 640] [from ]
!1190 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_IO_save_end", i32 258, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_end] [line 258, size 64, align 64, offset 704] [from ]
!1191 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_markers", i32 260, i64 64, i64 64, i64 768, i32 0, metadata !1192} ; [ DW_TAG_member ] [_markers] [line 260, size 64, align 64, offset 768] [from ]
!1192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1193} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!1193 = metadata !{i32 786451, metadata !1177, null, metadata !"_IO_marker", i32 156, i64 192, i64 64, i32 0, i32 0, null, metadata !1194, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 156, size 192, align 64, offset 0] [def] [f
!1194 = metadata !{metadata !1195, metadata !1196, metadata !1198}
!1195 = metadata !{i32 786445, metadata !1177, metadata !1193, metadata !"_next", i32 157, i64 64, i64 64, i64 0, i32 0, metadata !1192} ; [ DW_TAG_member ] [_next] [line 157, size 64, align 64, offset 0] [from ]
!1196 = metadata !{i32 786445, metadata !1177, metadata !1193, metadata !"_sbuf", i32 158, i64 64, i64 64, i64 64, i32 0, metadata !1197} ; [ DW_TAG_member ] [_sbuf] [line 158, size 64, align 64, offset 64] [from ]
!1197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!1198 = metadata !{i32 786445, metadata !1177, metadata !1193, metadata !"_pos", i32 162, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [_pos] [line 162, size 32, align 32, offset 128] [from int]
!1199 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_chain", i32 262, i64 64, i64 64, i64 832, i32 0, metadata !1197} ; [ DW_TAG_member ] [_chain] [line 262, size 64, align 64, offset 832] [from ]
!1200 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_fileno", i32 264, i64 32, i64 32, i64 896, i32 0, metadata !21} ; [ DW_TAG_member ] [_fileno] [line 264, size 32, align 32, offset 896] [from int]
!1201 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_flags2", i32 268, i64 32, i64 32, i64 928, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags2] [line 268, size 32, align 32, offset 928] [from int]
!1202 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_old_offset", i32 270, i64 64, i64 64, i64 960, i32 0, metadata !1203} ; [ DW_TAG_member ] [_old_offset] [line 270, size 64, align 64, offset 960] [from __off_t]
!1203 = metadata !{i32 786454, metadata !1177, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!1204 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_cur_column", i32 274, i64 16, i64 16, i64 1024, i32 0, metadata !382} ; [ DW_TAG_member ] [_cur_column] [line 274, size 16, align 16, offset 1024] [from unsigned short]
!1205 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_vtable_offset", i32 275, i64 8, i64 8, i64 1040, i32 0, metadata !1206} ; [ DW_TAG_member ] [_vtable_offset] [line 275, size 8, align 8, offset 1040] [from signed char]
!1206 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!1207 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_shortbuf", i32 276, i64 8, i64 8, i64 1048, i32 0, metadata !1208} ; [ DW_TAG_member ] [_shortbuf] [line 276, size 8, align 8, offset 1048] [from ]
!1208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !25, metadata !432, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!1209 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_lock", i32 280, i64 64, i64 64, i64 1088, i32 0, metadata !201} ; [ DW_TAG_member ] [_lock] [line 280, size 64, align 64, offset 1088] [from ]
!1210 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_offset", i32 289, i64 64, i64 64, i64 1152, i32 0, metadata !1211} ; [ DW_TAG_member ] [_offset] [line 289, size 64, align 64, offset 1152] [from __off64_t]
!1211 = metadata !{i32 786454, metadata !1177, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!1212 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"__pad1", i32 297, i64 64, i64 64, i64 1216, i32 0, metadata !201} ; [ DW_TAG_member ] [__pad1] [line 297, size 64, align 64, offset 1216] [from ]
!1213 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"__pad2", i32 298, i64 64, i64 64, i64 1280, i32 0, metadata !201} ; [ DW_TAG_member ] [__pad2] [line 298, size 64, align 64, offset 1280] [from ]
!1214 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"__pad3", i32 299, i64 64, i64 64, i64 1344, i32 0, metadata !201} ; [ DW_TAG_member ] [__pad3] [line 299, size 64, align 64, offset 1344] [from ]
!1215 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"__pad4", i32 300, i64 64, i64 64, i64 1408, i32 0, metadata !201} ; [ DW_TAG_member ] [__pad4] [line 300, size 64, align 64, offset 1408] [from ]
!1216 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"__pad5", i32 302, i64 64, i64 64, i64 1472, i32 0, metadata !1137} ; [ DW_TAG_member ] [__pad5] [line 302, size 64, align 64, offset 1472] [from size_t]
!1217 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_mode", i32 303, i64 32, i64 32, i64 1536, i32 0, metadata !21} ; [ DW_TAG_member ] [_mode] [line 303, size 32, align 32, offset 1536] [from int]
!1218 = metadata !{i32 786445, metadata !1177, metadata !1176, metadata !"_unused2", i32 305, i64 160, i64 8, i64 1568, i32 0, metadata !1219} ; [ DW_TAG_member ] [_unused2] [line 305, size 160, align 8, offset 1568] [from ]
!1219 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !25, metadata !1220, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!1220 = metadata !{metadata !1221}
!1221 = metadata !{i32 786465, i64 0, i64 20}     ; [ DW_TAG_subrange_type ] [0, 19]
!1222 = metadata !{metadata !1223}
!1223 = metadata !{i32 786689, metadata !1171, metadata !"f", metadata !1035, i32 16777302, metadata !1174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 86]
!1224 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"_IO_putc", metadata !"_IO_putc", metadata !"", i32 91, metadata !1225, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct._IO_FILE*)* @_IO_putc, null, null, 
!1225 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1226, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1226 = metadata !{metadata !21, metadata !21, metadata !1174}
!1227 = metadata !{metadata !1228, metadata !1229}
!1228 = metadata !{i32 786689, metadata !1224, metadata !"c", metadata !1035, i32 16777307, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 91]
!1229 = metadata !{i32 786689, metadata !1224, metadata !"f", metadata !1035, i32 33554523, metadata !1174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 91]
!1230 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mkdir", metadata !"mkdir", metadata !"", i32 96, metadata !1231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @mkdir, null, null, metadata !1235, i32 96}
!1231 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1232, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1232 = metadata !{metadata !21, metadata !61, metadata !1233}
!1233 = metadata !{i32 786454, metadata !998, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !1234} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!1234 = metadata !{i32 786454, metadata !998, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!1235 = metadata !{metadata !1236, metadata !1237}
!1236 = metadata !{i32 786689, metadata !1230, metadata !"pathname", metadata !1035, i32 16777312, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 96]
!1237 = metadata !{i32 786689, metadata !1230, metadata !"mode", metadata !1035, i32 33554528, metadata !1233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 96]
!1238 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mkfifo", metadata !"mkfifo", metadata !"", i32 103, metadata !1231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @mkfifo, null, null, metadata !1239, i32
!1239 = metadata !{metadata !1240, metadata !1241}
!1240 = metadata !{i32 786689, metadata !1238, metadata !"pathname", metadata !1035, i32 16777319, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 103]
!1241 = metadata !{i32 786689, metadata !1238, metadata !"mode", metadata !1035, i32 33554535, metadata !1233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 103]
!1242 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mknod", metadata !"mknod", metadata !"", i32 110, metadata !1243, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i64)* @mknod, null, null, metadata !1247, i
!1243 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1244, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1244 = metadata !{metadata !21, metadata !61, metadata !1233, metadata !1245}
!1245 = metadata !{i32 786454, metadata !998, null, metadata !"dev_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !1246} ; [ DW_TAG_typedef ] [dev_t] [line 60, size 0, align 0, offset 0] [from __dev_t]
!1246 = metadata !{i32 786454, metadata !998, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!1247 = metadata !{metadata !1248, metadata !1249, metadata !1250}
!1248 = metadata !{i32 786689, metadata !1242, metadata !"pathname", metadata !1035, i32 16777326, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 110]
!1249 = metadata !{i32 786689, metadata !1242, metadata !"mode", metadata !1035, i32 33554542, metadata !1233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 110]
!1250 = metadata !{i32 786689, metadata !1242, metadata !"dev", metadata !1035, i32 50331758, metadata !1245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dev] [line 110]
!1251 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"pipe", metadata !"pipe", metadata !"", i32 117, metadata !1252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*)* @pipe, null, null, metadata !1254, i32 117} ; [ 
!1252 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1253, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1253 = metadata !{metadata !21, metadata !471}
!1254 = metadata !{metadata !1255}
!1255 = metadata !{i32 786689, metadata !1251, metadata !"filedes", metadata !1035, i32 16777333, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filedes] [line 117]
!1256 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"link", metadata !"link", metadata !"", i32 124, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @link, null, null, metadata !1257, i32 124} ;
!1257 = metadata !{metadata !1258, metadata !1259}
!1258 = metadata !{i32 786689, metadata !1256, metadata !"oldpath", metadata !1035, i32 16777340, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldpath] [line 124]
!1259 = metadata !{i32 786689, metadata !1256, metadata !"newpath", metadata !1035, i32 33554556, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newpath] [line 124]
!1260 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"symlink", metadata !"symlink", metadata !"", i32 131, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @symlink, null, null, metadata !1261, i
!1261 = metadata !{metadata !1262, metadata !1263}
!1262 = metadata !{i32 786689, metadata !1260, metadata !"oldpath", metadata !1035, i32 16777347, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldpath] [line 131]
!1263 = metadata !{i32 786689, metadata !1260, metadata !"newpath", metadata !1035, i32 33554563, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newpath] [line 131]
!1264 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"rename", metadata !"rename", metadata !"", i32 138, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @rename, null, null, metadata !1265, i32 
!1265 = metadata !{metadata !1266, metadata !1267}
!1266 = metadata !{i32 786689, metadata !1264, metadata !"oldpath", metadata !1035, i32 16777354, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldpath] [line 138]
!1267 = metadata !{i32 786689, metadata !1264, metadata !"newpath", metadata !1035, i32 33554570, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newpath] [line 138]
!1268 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"nanosleep", metadata !"nanosleep", metadata !"", i32 145, metadata !1269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.timespec*, %struct.timespec*)* @nanos
!1269 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1270, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1270 = metadata !{metadata !21, metadata !1271, metadata !1277}
!1271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1272} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1272 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1273} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timespec]
!1273 = metadata !{i32 786451, metadata !103, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !1274, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!1274 = metadata !{metadata !1275, metadata !1276}
!1275 = metadata !{i32 786445, metadata !103, metadata !1273, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!1276 = metadata !{i32 786445, metadata !103, metadata !1273, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!1277 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1273} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from timespec]
!1278 = metadata !{metadata !1279, metadata !1280}
!1279 = metadata !{i32 786689, metadata !1268, metadata !"req", metadata !1035, i32 16777361, metadata !1271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [req] [line 145]
!1280 = metadata !{i32 786689, metadata !1268, metadata !"rem", metadata !1035, i32 33554577, metadata !1277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rem] [line 145]
!1281 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"clock_gettime", metadata !"clock_gettime", metadata !"", i32 151, metadata !1282, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_getti
!1282 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1283, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1283 = metadata !{metadata !21, metadata !1284, metadata !1277}
!1284 = metadata !{i32 786454, metadata !998, null, metadata !"clockid_t", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !1285} ; [ DW_TAG_typedef ] [clockid_t] [line 91, size 0, align 0, offset 0] [from __clockid_t]
!1285 = metadata !{i32 786454, metadata !998, null, metadata !"__clockid_t", i32 147, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [__clockid_t] [line 147, size 0, align 0, offset 0] [from int]
!1286 = metadata !{metadata !1287, metadata !1288, metadata !1289}
!1287 = metadata !{i32 786689, metadata !1281, metadata !"clk_id", metadata !1035, i32 16777367, metadata !1284, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clk_id] [line 151]
!1288 = metadata !{i32 786689, metadata !1281, metadata !"res", metadata !1035, i32 33554583, metadata !1277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 151]
!1289 = metadata !{i32 786688, metadata !1281, metadata !"tv", metadata !1035, i32 153, metadata !1290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 153]
!1290 = metadata !{i32 786451, metadata !168, null, metadata !"timeval", i32 30, i64 128, i64 64, i32 0, i32 0, null, metadata !1291, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timeval] [line 30, size 128, align 64, offset 0] [def] [from ]
!1291 = metadata !{metadata !1292, metadata !1293}
!1292 = metadata !{i32 786445, metadata !168, metadata !1290, metadata !"tv_sec", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [tv_sec] [line 32, size 64, align 64, offset 0] [from __time_t]
!1293 = metadata !{i32 786445, metadata !168, metadata !1290, metadata !"tv_usec", i32 33, i64 64, i64 64, i64 64, i32 0, metadata !172} ; [ DW_TAG_member ] [tv_usec] [line 33, size 64, align 64, offset 64] [from __suseconds_t]
!1294 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"clock_settime", metadata !"clock_settime", metadata !"", i32 161, metadata !1295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_setti
!1295 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1296, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1296 = metadata !{metadata !21, metadata !1284, metadata !1271}
!1297 = metadata !{metadata !1298, metadata !1299}
!1298 = metadata !{i32 786689, metadata !1294, metadata !"clk_id", metadata !1035, i32 16777377, metadata !1284, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clk_id] [line 161]
!1299 = metadata !{i32 786689, metadata !1294, metadata !"res", metadata !1035, i32 33554593, metadata !1271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 161]
!1300 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"time", metadata !"time", metadata !"", i32 167, metadata !1301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64*)* @time, null, null, metadata !1305, i32 167} ; [ 
!1301 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1302, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1302 = metadata !{metadata !1303, metadata !1304}
!1303 = metadata !{i32 786454, metadata !998, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!1304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from time_t]
!1305 = metadata !{metadata !1306, metadata !1307}
!1306 = metadata !{i32 786689, metadata !1300, metadata !"t", metadata !1035, i32 16777383, metadata !1304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 167]
!1307 = metadata !{i32 786688, metadata !1300, metadata !"tv", metadata !1035, i32 168, metadata !1290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 168]
!1308 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"times", metadata !"times", metadata !"", i32 175, metadata !1309, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.tms*)* @times, null, null, metadata !1320, i3
!1309 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1310, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1310 = metadata !{metadata !1311, metadata !1312}
!1311 = metadata !{i32 786454, metadata !998, null, metadata !"clock_t", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !1102} ; [ DW_TAG_typedef ] [clock_t] [line 59, size 0, align 0, offset 0] [from __clock_t]
!1312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1313} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tms]
!1313 = metadata !{i32 786451, metadata !1314, null, metadata !"tms", i32 34, i64 256, i64 64, i32 0, i32 0, null, metadata !1315, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [tms] [line 34, size 256, align 64, offset 0] [def] [from ]
!1314 = metadata !{metadata !"/usr/include/sys/times.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1315 = metadata !{metadata !1316, metadata !1317, metadata !1318, metadata !1319}
!1316 = metadata !{i32 786445, metadata !1314, metadata !1313, metadata !"tms_utime", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !1311} ; [ DW_TAG_member ] [tms_utime] [line 36, size 64, align 64, offset 0] [from clock_t]
!1317 = metadata !{i32 786445, metadata !1314, metadata !1313, metadata !"tms_stime", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !1311} ; [ DW_TAG_member ] [tms_stime] [line 37, size 64, align 64, offset 64] [from clock_t]
!1318 = metadata !{i32 786445, metadata !1314, metadata !1313, metadata !"tms_cutime", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !1311} ; [ DW_TAG_member ] [tms_cutime] [line 39, size 64, align 64, offset 128] [from clock_t]
!1319 = metadata !{i32 786445, metadata !1314, metadata !1313, metadata !"tms_cstime", i32 40, i64 64, i64 64, i64 192, i32 0, metadata !1311} ; [ DW_TAG_member ] [tms_cstime] [line 40, size 64, align 64, offset 192] [from clock_t]
!1320 = metadata !{metadata !1321}
!1321 = metadata !{i32 786689, metadata !1308, metadata !"buf", metadata !1035, i32 16777391, metadata !1312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 175]
!1322 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"getutxent", metadata !"getutxent", metadata !"", i32 190, metadata !1323, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.utmpx* ()* @getutxent, null, null, metadat
!1323 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1324, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1324 = metadata !{metadata !1325}
!1325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1326} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from utmpx]
!1326 = metadata !{i32 786451, metadata !998, null, metadata !"utmpx", i32 189, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [utmpx] [line 189, size 0, align 0, offset 0] [decl] [from ]
!1327 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setutxent", metadata !"setutxent", metadata !"", i32 195, metadata !1134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @setutxent, null, null, metadata !15, i32
!1328 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"endutxent", metadata !"endutxent", metadata !"", i32 200, metadata !1134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @endutxent, null, null, metadata !15, i32
!1329 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"utmpxname", metadata !"utmpxname", metadata !"", i32 205, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @utmpxname, null, null, metadata !1330, 
!1330 = metadata !{metadata !1331}
!1331 = metadata !{i32 786689, metadata !1329, metadata !"file", metadata !1035, i32 16777421, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 205]
!1332 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"euidaccess", metadata !"euidaccess", metadata !"", i32 211, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @euidaccess, null, null, metadata 
!1333 = metadata !{metadata !1334, metadata !1335}
!1334 = metadata !{i32 786689, metadata !1332, metadata !"pathname", metadata !1035, i32 16777427, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 211]
!1335 = metadata !{i32 786689, metadata !1332, metadata !"mode", metadata !1035, i32 33554643, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 211]
!1336 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"eaccess", metadata !"eaccess", metadata !"", i32 216, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @eaccess, null, null, metadata !1337, i3
!1337 = metadata !{metadata !1338, metadata !1339}
!1338 = metadata !{i32 786689, metadata !1336, metadata !"pathname", metadata !1035, i32 16777432, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 216]
!1339 = metadata !{i32 786689, metadata !1336, metadata !"mode", metadata !1035, i32 33554648, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 216]
!1340 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"group_member", metadata !"group_member", metadata !"", i32 221, metadata !1341, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @group_member, null, null, metada
!1341 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1342, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1342 = metadata !{metadata !21, metadata !1343}
!1343 = metadata !{i32 786454, metadata !998, null, metadata !"gid_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !1344} ; [ DW_TAG_typedef ] [gid_t] [line 65, size 0, align 0, offset 0] [from __gid_t]
!1344 = metadata !{i32 786454, metadata !998, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!1345 = metadata !{metadata !1346}
!1346 = metadata !{i32 786689, metadata !1340, metadata !"__gid", metadata !1035, i32 16777437, metadata !1343, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__gid] [line 221]
!1347 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"utime", metadata !"utime", metadata !"", i32 226, metadata !1348, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.utimbuf*)* @utime, null, null, metadata 
!1348 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1349, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1349 = metadata !{metadata !21, metadata !61, metadata !1350}
!1350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1351} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1351 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1352} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from utimbuf]
!1352 = metadata !{i32 786451, metadata !1353, null, metadata !"utimbuf", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !1354, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [utimbuf] [line 37, size 128, align 64, offset 0] [def] [from ]
!1353 = metadata !{metadata !"/usr/include/utime.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1354 = metadata !{metadata !1355, metadata !1356}
!1355 = metadata !{i32 786445, metadata !1353, metadata !1352, metadata !"actime", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [actime] [line 39, size 64, align 64, offset 0] [from __time_t]
!1356 = metadata !{i32 786445, metadata !1353, metadata !1352, metadata !"modtime", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [modtime] [line 40, size 64, align 64, offset 64] [from __time_t]
!1357 = metadata !{metadata !1358, metadata !1359}
!1358 = metadata !{i32 786689, metadata !1347, metadata !"filename", metadata !1035, i32 16777442, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 226]
!1359 = metadata !{i32 786689, metadata !1347, metadata !"buf", metadata !1035, i32 33554658, metadata !1350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 226]
!1360 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"futimes", metadata !"futimes", metadata !"", i32 233, metadata !1361, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timeval*)* @futimes, null, null, met
!1361 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1362, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1362 = metadata !{metadata !21, metadata !21, metadata !1363}
!1363 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1364} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1364 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1290} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timeval]
!1365 = metadata !{metadata !1366, metadata !1367}
!1366 = metadata !{i32 786689, metadata !1360, metadata !"fd", metadata !1035, i32 16777449, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 233]
!1367 = metadata !{i32 786689, metadata !1360, metadata !"times", metadata !1035, i32 33554665, metadata !1363, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 233]
!1368 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"strverscmp", metadata !"strverscmp", metadata !"", i32 239, metadata !868, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @strverscmp, null, null, metadata
!1369 = metadata !{metadata !1370, metadata !1371, metadata !1372, metadata !1374}
!1370 = metadata !{i32 786689, metadata !1368, metadata !"__s1", metadata !1035, i32 16777455, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__s1] [line 239]
!1371 = metadata !{i32 786689, metadata !1368, metadata !"__s2", metadata !1035, i32 33554671, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__s2] [line 239]
!1372 = metadata !{i32 786688, metadata !1373, metadata !"__s1_len", metadata !1035, i32 240, metadata !1137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 240]
!1373 = metadata !{i32 786443, metadata !998, metadata !1368, i32 240, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/stubs.c]
!1374 = metadata !{i32 786688, metadata !1373, metadata !"__s2_len", metadata !1035, i32 240, metadata !1137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 240]
!1375 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"gnu_dev_major", metadata !"gnu_dev_major", metadata !"", i32 250, metadata !1376, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64)* @gnu_dev_major, null, null, met
!1376 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1377, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1377 = metadata !{metadata !72, metadata !1378}
!1378 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!1379 = metadata !{metadata !1380}
!1380 = metadata !{i32 786689, metadata !1375, metadata !"__dev", metadata !1035, i32 16777466, metadata !1378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__dev] [line 250]
!1381 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"gnu_dev_minor", metadata !"gnu_dev_minor", metadata !"", i32 255, metadata !1376, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64)* @gnu_dev_minor, null, null, met
!1382 = metadata !{metadata !1383}
!1383 = metadata !{i32 786689, metadata !1381, metadata !"__dev", metadata !1035, i32 16777471, metadata !1378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__dev] [line 255]
!1384 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 260, metadata !1385, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i32)* @gnu_dev_makedev, null
!1385 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1386, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1386 = metadata !{metadata !1378, metadata !72, metadata !72}
!1387 = metadata !{metadata !1388, metadata !1389}
!1388 = metadata !{i32 786689, metadata !1384, metadata !"__major", metadata !1035, i32 16777476, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__major] [line 260]
!1389 = metadata !{i32 786689, metadata !1384, metadata !"__minor", metadata !1035, i32 33554692, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__minor] [line 260]
!1390 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"canonicalize_file_name", metadata !"canonicalize_file_name", metadata !"", i32 267, metadata !1391, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @canonicalize
!1391 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1392, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1392 = metadata !{metadata !29, metadata !61}
!1393 = metadata !{metadata !1394}
!1394 = metadata !{i32 786689, metadata !1390, metadata !"name", metadata !1035, i32 16777483, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 267]
!1395 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"getloadavg", metadata !"getloadavg", metadata !"", i32 272, metadata !1396, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double*, i32)* @getloadavg, null, null, met
!1396 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1397, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1397 = metadata !{metadata !21, metadata !1398, metadata !21}
!1398 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1399} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!1399 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!1400 = metadata !{metadata !1401, metadata !1402}
!1401 = metadata !{i32 786689, metadata !1395, metadata !"loadavg", metadata !1035, i32 16777488, metadata !1398, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loadavg] [line 272]
!1402 = metadata !{i32 786689, metadata !1395, metadata !"nelem", metadata !1035, i32 33554704, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 272]
!1403 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"wait", metadata !"wait", metadata !"", i32 278, metadata !1404, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*)* @wait, null, null, metadata !1406, i32 278} ; [ 
!1404 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1405, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1405 = metadata !{metadata !1074, metadata !471}
!1406 = metadata !{metadata !1407}
!1407 = metadata !{i32 786689, metadata !1403, metadata !"status", metadata !1035, i32 16777494, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 278]
!1408 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"wait3", metadata !"wait3", metadata !"", i32 285, metadata !1409, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32, %struct.rusage*)* @wait3, null, null, meta
!1409 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1410, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1410 = metadata !{metadata !1074, metadata !471, metadata !21, metadata !1411}
!1411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1412} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rusage]
!1412 = metadata !{i32 786451, metadata !1007, null, metadata !"rusage", i32 187, i64 1152, i64 64, i32 0, i32 0, null, metadata !1413, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [rusage] [line 187, size 1152, align 64, offset 0] [def] [from ]
!1413 = metadata !{metadata !1414, metadata !1415, metadata !1416, metadata !1421, metadata !1426, metadata !1431, metadata !1436, metadata !1441, metadata !1446, metadata !1451, metadata !1456, metadata !1461, metadata !1466, metadata !1471, metadata !1
!1414 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"ru_utime", i32 190, i64 128, i64 64, i64 0, i32 0, metadata !1290} ; [ DW_TAG_member ] [ru_utime] [line 190, size 128, align 64, offset 0] [from timeval]
!1415 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"ru_stime", i32 192, i64 128, i64 64, i64 128, i32 0, metadata !1290} ; [ DW_TAG_member ] [ru_stime] [line 192, size 128, align 64, offset 128] [from timeval]
!1416 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 194, i64 64, i64 64, i64 256, i32 0, metadata !1417} ; [ DW_TAG_member ] [line 194, size 64, align 64, offset 256] [from ]
!1417 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 194, i64 64, i64 64, i64 0, i32 0, null, metadata !1418, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 194, size 64, align 64, offset 0] [def] [from ]
!1418 = metadata !{metadata !1419, metadata !1420}
!1419 = metadata !{i32 786445, metadata !1007, metadata !1417, metadata !"ru_maxrss", i32 196, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_maxrss] [line 196, size 64, align 64, offset 0] [from long int]
!1420 = metadata !{i32 786445, metadata !1007, metadata !1417, metadata !"__ru_maxrss_word", i32 197, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_maxrss_word] [line 197, size 64, align 64, offset 0] [from __syscall_slong_t]
!1421 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 202, i64 64, i64 64, i64 320, i32 0, metadata !1422} ; [ DW_TAG_member ] [line 202, size 64, align 64, offset 320] [from ]
!1422 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 202, i64 64, i64 64, i64 0, i32 0, null, metadata !1423, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 202, size 64, align 64, offset 0] [def] [from ]
!1423 = metadata !{metadata !1424, metadata !1425}
!1424 = metadata !{i32 786445, metadata !1007, metadata !1422, metadata !"ru_ixrss", i32 204, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_ixrss] [line 204, size 64, align 64, offset 0] [from long int]
!1425 = metadata !{i32 786445, metadata !1007, metadata !1422, metadata !"__ru_ixrss_word", i32 205, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_ixrss_word] [line 205, size 64, align 64, offset 0] [from __syscall_slong_t]
!1426 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 208, i64 64, i64 64, i64 384, i32 0, metadata !1427} ; [ DW_TAG_member ] [line 208, size 64, align 64, offset 384] [from ]
!1427 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 208, i64 64, i64 64, i64 0, i32 0, null, metadata !1428, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 208, size 64, align 64, offset 0] [def] [from ]
!1428 = metadata !{metadata !1429, metadata !1430}
!1429 = metadata !{i32 786445, metadata !1007, metadata !1427, metadata !"ru_idrss", i32 210, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_idrss] [line 210, size 64, align 64, offset 0] [from long int]
!1430 = metadata !{i32 786445, metadata !1007, metadata !1427, metadata !"__ru_idrss_word", i32 211, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_idrss_word] [line 211, size 64, align 64, offset 0] [from __syscall_slong_t]
!1431 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 214, i64 64, i64 64, i64 448, i32 0, metadata !1432} ; [ DW_TAG_member ] [line 214, size 64, align 64, offset 448] [from ]
!1432 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 214, i64 64, i64 64, i64 0, i32 0, null, metadata !1433, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 214, size 64, align 64, offset 0] [def] [from ]
!1433 = metadata !{metadata !1434, metadata !1435}
!1434 = metadata !{i32 786445, metadata !1007, metadata !1432, metadata !"ru_isrss", i32 216, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_isrss] [line 216, size 64, align 64, offset 0] [from long int]
!1435 = metadata !{i32 786445, metadata !1007, metadata !1432, metadata !"__ru_isrss_word", i32 217, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_isrss_word] [line 217, size 64, align 64, offset 0] [from __syscall_slong_t]
!1436 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !1437} ; [ DW_TAG_member ] [line 221, size 64, align 64, offset 512] [from ]
!1437 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 221, i64 64, i64 64, i64 0, i32 0, null, metadata !1438, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 221, size 64, align 64, offset 0] [def] [from ]
!1438 = metadata !{metadata !1439, metadata !1440}
!1439 = metadata !{i32 786445, metadata !1007, metadata !1437, metadata !"ru_minflt", i32 223, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_minflt] [line 223, size 64, align 64, offset 0] [from long int]
!1440 = metadata !{i32 786445, metadata !1007, metadata !1437, metadata !"__ru_minflt_word", i32 224, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_minflt_word] [line 224, size 64, align 64, offset 0] [from __syscall_slong_t]
!1441 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 227, i64 64, i64 64, i64 576, i32 0, metadata !1442} ; [ DW_TAG_member ] [line 227, size 64, align 64, offset 576] [from ]
!1442 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 227, i64 64, i64 64, i64 0, i32 0, null, metadata !1443, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 227, size 64, align 64, offset 0] [def] [from ]
!1443 = metadata !{metadata !1444, metadata !1445}
!1444 = metadata !{i32 786445, metadata !1007, metadata !1442, metadata !"ru_majflt", i32 229, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_majflt] [line 229, size 64, align 64, offset 0] [from long int]
!1445 = metadata !{i32 786445, metadata !1007, metadata !1442, metadata !"__ru_majflt_word", i32 230, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_majflt_word] [line 230, size 64, align 64, offset 0] [from __syscall_slong_t]
!1446 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 233, i64 64, i64 64, i64 640, i32 0, metadata !1447} ; [ DW_TAG_member ] [line 233, size 64, align 64, offset 640] [from ]
!1447 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 233, i64 64, i64 64, i64 0, i32 0, null, metadata !1448, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 233, size 64, align 64, offset 0] [def] [from ]
!1448 = metadata !{metadata !1449, metadata !1450}
!1449 = metadata !{i32 786445, metadata !1007, metadata !1447, metadata !"ru_nswap", i32 235, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_nswap] [line 235, size 64, align 64, offset 0] [from long int]
!1450 = metadata !{i32 786445, metadata !1007, metadata !1447, metadata !"__ru_nswap_word", i32 236, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_nswap_word] [line 236, size 64, align 64, offset 0] [from __syscall_slong_t]
!1451 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 240, i64 64, i64 64, i64 704, i32 0, metadata !1452} ; [ DW_TAG_member ] [line 240, size 64, align 64, offset 704] [from ]
!1452 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 240, i64 64, i64 64, i64 0, i32 0, null, metadata !1453, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 240, size 64, align 64, offset 0] [def] [from ]
!1453 = metadata !{metadata !1454, metadata !1455}
!1454 = metadata !{i32 786445, metadata !1007, metadata !1452, metadata !"ru_inblock", i32 242, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_inblock] [line 242, size 64, align 64, offset 0] [from long int]
!1455 = metadata !{i32 786445, metadata !1007, metadata !1452, metadata !"__ru_inblock_word", i32 243, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_inblock_word] [line 243, size 64, align 64, offset 0] [from __syscall_slong_t]
!1456 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 246, i64 64, i64 64, i64 768, i32 0, metadata !1457} ; [ DW_TAG_member ] [line 246, size 64, align 64, offset 768] [from ]
!1457 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 246, i64 64, i64 64, i64 0, i32 0, null, metadata !1458, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 246, size 64, align 64, offset 0] [def] [from ]
!1458 = metadata !{metadata !1459, metadata !1460}
!1459 = metadata !{i32 786445, metadata !1007, metadata !1457, metadata !"ru_oublock", i32 248, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_oublock] [line 248, size 64, align 64, offset 0] [from long int]
!1460 = metadata !{i32 786445, metadata !1007, metadata !1457, metadata !"__ru_oublock_word", i32 249, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_oublock_word] [line 249, size 64, align 64, offset 0] [from __syscall_slong_t]
!1461 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 252, i64 64, i64 64, i64 832, i32 0, metadata !1462} ; [ DW_TAG_member ] [line 252, size 64, align 64, offset 832] [from ]
!1462 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 252, i64 64, i64 64, i64 0, i32 0, null, metadata !1463, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 252, size 64, align 64, offset 0] [def] [from ]
!1463 = metadata !{metadata !1464, metadata !1465}
!1464 = metadata !{i32 786445, metadata !1007, metadata !1462, metadata !"ru_msgsnd", i32 254, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_msgsnd] [line 254, size 64, align 64, offset 0] [from long int]
!1465 = metadata !{i32 786445, metadata !1007, metadata !1462, metadata !"__ru_msgsnd_word", i32 255, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_msgsnd_word] [line 255, size 64, align 64, offset 0] [from __syscall_slong_t]
!1466 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 258, i64 64, i64 64, i64 896, i32 0, metadata !1467} ; [ DW_TAG_member ] [line 258, size 64, align 64, offset 896] [from ]
!1467 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 258, i64 64, i64 64, i64 0, i32 0, null, metadata !1468, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 258, size 64, align 64, offset 0] [def] [from ]
!1468 = metadata !{metadata !1469, metadata !1470}
!1469 = metadata !{i32 786445, metadata !1007, metadata !1467, metadata !"ru_msgrcv", i32 260, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_msgrcv] [line 260, size 64, align 64, offset 0] [from long int]
!1470 = metadata !{i32 786445, metadata !1007, metadata !1467, metadata !"__ru_msgrcv_word", i32 261, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_msgrcv_word] [line 261, size 64, align 64, offset 0] [from __syscall_slong_t]
!1471 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 264, i64 64, i64 64, i64 960, i32 0, metadata !1472} ; [ DW_TAG_member ] [line 264, size 64, align 64, offset 960] [from ]
!1472 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 264, i64 64, i64 64, i64 0, i32 0, null, metadata !1473, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 264, size 64, align 64, offset 0] [def] [from ]
!1473 = metadata !{metadata !1474, metadata !1475}
!1474 = metadata !{i32 786445, metadata !1007, metadata !1472, metadata !"ru_nsignals", i32 266, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_nsignals] [line 266, size 64, align 64, offset 0] [from long int]
!1475 = metadata !{i32 786445, metadata !1007, metadata !1472, metadata !"__ru_nsignals_word", i32 267, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_nsignals_word] [line 267, size 64, align 64, offset 0] [from __syscall_slong_t]
!1476 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 272, i64 64, i64 64, i64 1024, i32 0, metadata !1477} ; [ DW_TAG_member ] [line 272, size 64, align 64, offset 1024] [from ]
!1477 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 272, i64 64, i64 64, i64 0, i32 0, null, metadata !1478, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 272, size 64, align 64, offset 0] [def] [from ]
!1478 = metadata !{metadata !1479, metadata !1480}
!1479 = metadata !{i32 786445, metadata !1007, metadata !1477, metadata !"ru_nvcsw", i32 274, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_nvcsw] [line 274, size 64, align 64, offset 0] [from long int]
!1480 = metadata !{i32 786445, metadata !1007, metadata !1477, metadata !"__ru_nvcsw_word", i32 275, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_nvcsw_word] [line 275, size 64, align 64, offset 0] [from __syscall_slong_t]
!1481 = metadata !{i32 786445, metadata !1007, metadata !1412, metadata !"", i32 279, i64 64, i64 64, i64 1088, i32 0, metadata !1482} ; [ DW_TAG_member ] [line 279, size 64, align 64, offset 1088] [from ]
!1482 = metadata !{i32 786455, metadata !1007, metadata !1412, metadata !"", i32 279, i64 64, i64 64, i64 0, i32 0, null, metadata !1483, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 279, size 64, align 64, offset 0] [def] [from ]
!1483 = metadata !{metadata !1484, metadata !1485}
!1484 = metadata !{i32 786445, metadata !1007, metadata !1482, metadata !"ru_nivcsw", i32 281, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [ru_nivcsw] [line 281, size 64, align 64, offset 0] [from long int]
!1485 = metadata !{i32 786445, metadata !1007, metadata !1482, metadata !"__ru_nivcsw_word", i32 282, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [__ru_nivcsw_word] [line 282, size 64, align 64, offset 0] [from __syscall_slong_t]
!1486 = metadata !{metadata !1487, metadata !1488, metadata !1489}
!1487 = metadata !{i32 786689, metadata !1408, metadata !"status", metadata !1035, i32 16777501, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 285]
!1488 = metadata !{i32 786689, metadata !1408, metadata !"options", metadata !1035, i32 33554717, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 285]
!1489 = metadata !{i32 786689, metadata !1408, metadata !"rusage", metadata !1035, i32 50331933, metadata !1411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rusage] [line 285]
!1490 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"wait4", metadata !"wait4", metadata !"", i32 292, metadata !1491, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32, %struct.rusage*)* @wait4, null, null,
!1491 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1492, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1492 = metadata !{metadata !1074, metadata !1493, metadata !471, metadata !21, metadata !1411}
!1493 = metadata !{i32 786454, metadata !998, null, metadata !"pid_t", i32 61, i64 0, i64 0, i64 0, i32 0, metadata !1074} ; [ DW_TAG_typedef ] [pid_t] [line 61, size 0, align 0, offset 0] [from __pid_t]
!1494 = metadata !{metadata !1495, metadata !1496, metadata !1497, metadata !1498}
!1495 = metadata !{i32 786689, metadata !1490, metadata !"pid", metadata !1035, i32 16777508, metadata !1493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pid] [line 292]
!1496 = metadata !{i32 786689, metadata !1490, metadata !"status", metadata !1035, i32 33554724, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 292]
!1497 = metadata !{i32 786689, metadata !1490, metadata !"options", metadata !1035, i32 50331940, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 292]
!1498 = metadata !{i32 786689, metadata !1490, metadata !"rusage", metadata !1035, i32 67109156, metadata !1411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rusage] [line 292]
!1499 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"waitpid", metadata !"waitpid", metadata !"", i32 299, metadata !1500, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32)* @waitpid, null, null, metadata !
!1500 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1501, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1501 = metadata !{metadata !1074, metadata !1493, metadata !471, metadata !21}
!1502 = metadata !{metadata !1503, metadata !1504, metadata !1505}
!1503 = metadata !{i32 786689, metadata !1499, metadata !"pid", metadata !1035, i32 16777515, metadata !1493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pid] [line 299]
!1504 = metadata !{i32 786689, metadata !1499, metadata !"status", metadata !1035, i32 33554731, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 299]
!1505 = metadata !{i32 786689, metadata !1499, metadata !"options", metadata !1035, i32 50331947, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 299]
!1506 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"waitid", metadata !"waitid", metadata !"", i32 306, metadata !1507, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.siginfo_t*, i32)* @waitid, null, 
!1507 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1508, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1508 = metadata !{metadata !21, metadata !1509, metadata !1510, metadata !1055, metadata !21}
!1509 = metadata !{i32 786454, metadata !998, null, metadata !"idtype_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !1000} ; [ DW_TAG_typedef ] [idtype_t] [line 65, size 0, align 0, offset 0] [from ]
!1510 = metadata !{i32 786454, metadata !998, null, metadata !"id_t", i32 104, i64 0, i64 0, i64 0, i32 0, metadata !1511} ; [ DW_TAG_typedef ] [id_t] [line 104, size 0, align 0, offset 0] [from __id_t]
!1511 = metadata !{i32 786454, metadata !998, null, metadata !"__id_t", i32 138, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__id_t] [line 138, size 0, align 0, offset 0] [from unsigned int]
!1512 = metadata !{metadata !1513, metadata !1514, metadata !1515, metadata !1516}
!1513 = metadata !{i32 786689, metadata !1506, metadata !"idtype", metadata !1035, i32 16777522, metadata !1509, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idtype] [line 306]
!1514 = metadata !{i32 786689, metadata !1506, metadata !"id", metadata !1035, i32 33554738, metadata !1510, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 306]
!1515 = metadata !{i32 786689, metadata !1506, metadata !"infop", metadata !1035, i32 50331954, metadata !1055, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infop] [line 306]
!1516 = metadata !{i32 786689, metadata !1506, metadata !"options", metadata !1035, i32 67109170, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 306]
!1517 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_delete_def_file", metadata !"acl_delete_def_file", metadata !"", i32 321, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @acl_delete_def_file
!1518 = metadata !{metadata !1519}
!1519 = metadata !{i32 786689, metadata !1517, metadata !"path_p", metadata !1035, i32 16777537, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path_p] [line 321]
!1520 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_extended_file", metadata !"acl_extended_file", metadata !"", i32 328, metadata !968, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8)* @acl_extended_file, null,
!1521 = metadata !{metadata !1522}
!1522 = metadata !{i32 786689, metadata !1520, metadata !"path_p", metadata !1035, i32 16777544, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path_p] [line 328]
!1523 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_entries", metadata !"acl_entries", metadata !"", i32 335, metadata !1524, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.__acl_ext*)* @acl_entries, null, 
!1524 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1525, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1525 = metadata !{metadata !21, metadata !1526}
!1526 = metadata !{i32 786454, metadata !998, null, metadata !"acl_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1527} ; [ DW_TAG_typedef ] [acl_t] [line 40, size 0, align 0, offset 0] [from ]
!1527 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1528} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __acl_ext]
!1528 = metadata !{i32 786451, metadata !1529, null, metadata !"__acl_ext", i32 32, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__acl_ext] [line 32, size 0, align 0, offset 0] [decl] [from ]
!1529 = metadata !{metadata !"/usr/include/sys/acl.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1530 = metadata !{metadata !1531}
!1531 = metadata !{i32 786689, metadata !1523, metadata !"acl", metadata !1035, i32 16777551, metadata !1526, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acl] [line 335]
!1532 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_from_mode", metadata !"acl_from_mode", metadata !"", i32 342, metadata !1533, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.__acl_ext* (i32)* @acl_from_mode, 
!1533 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1534, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1534 = metadata !{metadata !1526, metadata !1233}
!1535 = metadata !{metadata !1536}
!1536 = metadata !{i32 786689, metadata !1532, metadata !"mode", metadata !1035, i32 16777558, metadata !1233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 342]
!1537 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_get_fd", metadata !"acl_get_fd", metadata !"", i32 349, metadata !1538, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.__acl_ext* (i32)* @acl_get_fd, null, nul
!1538 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1539, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1539 = metadata !{metadata !1526, metadata !21}
!1540 = metadata !{metadata !1541}
!1541 = metadata !{i32 786689, metadata !1537, metadata !"fd", metadata !1035, i32 16777565, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 349]
!1542 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_get_file", metadata !"acl_get_file", metadata !"", i32 356, metadata !1543, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.__acl_ext* (i8*, i32)* @acl_get_file
!1543 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1544, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1544 = metadata !{metadata !1526, metadata !61, metadata !1545}
!1545 = metadata !{i32 786454, metadata !998, null, metadata !"acl_type_t", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [acl_type_t] [line 36, size 0, align 0, offset 0] [from unsigned int]
!1546 = metadata !{metadata !1547, metadata !1548}
!1547 = metadata !{i32 786689, metadata !1542, metadata !"pathname", metadata !1035, i32 16777572, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 356]
!1548 = metadata !{i32 786689, metadata !1542, metadata !"type", metadata !1035, i32 33554788, metadata !1545, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 356]
!1549 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_set_fd", metadata !"acl_set_fd", metadata !"", i32 363, metadata !1550, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.__acl_ext*)* @acl_set_fd, null
!1550 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1551, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1551 = metadata !{metadata !21, metadata !21, metadata !1526}
!1552 = metadata !{metadata !1553, metadata !1554}
!1553 = metadata !{i32 786689, metadata !1549, metadata !"fd", metadata !1035, i32 16777579, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 363]
!1554 = metadata !{i32 786689, metadata !1549, metadata !"acl", metadata !1035, i32 33554795, metadata !1526, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acl] [line 363]
!1555 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_set_file", metadata !"acl_set_file", metadata !"", i32 370, metadata !1556, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.__acl_ext*)* @acl_set
!1556 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1557, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1557 = metadata !{metadata !21, metadata !61, metadata !1545, metadata !1526}
!1558 = metadata !{metadata !1559, metadata !1560, metadata !1561}
!1559 = metadata !{i32 786689, metadata !1555, metadata !"path_p", metadata !1035, i32 16777586, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path_p] [line 370]
!1560 = metadata !{i32 786689, metadata !1555, metadata !"type", metadata !1035, i32 33554802, metadata !1545, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 370]
!1561 = metadata !{i32 786689, metadata !1555, metadata !"acl", metadata !1035, i32 50332018, metadata !1526, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acl] [line 370]
!1562 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"acl_free", metadata !"acl_free", metadata !"", i32 377, metadata !1563, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @acl_free, null, null, metadata !1565, i3
!1563 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1564, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1564 = metadata !{metadata !21, metadata !201}
!1565 = metadata !{metadata !1566}
!1566 = metadata !{i32 786689, metadata !1562, metadata !"obj_p", metadata !1035, i32 16777593, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj_p] [line 377]
!1567 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mount", metadata !"mount", metadata !"", i32 386, metadata !1568, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i8*, i64, i8*)* @mount, null, null, metadat
!1568 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1569, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1569 = metadata !{metadata !21, metadata !61, metadata !61, metadata !61, metadata !81, metadata !214}
!1570 = metadata !{metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575}
!1571 = metadata !{i32 786689, metadata !1567, metadata !"source", metadata !1035, i32 16777602, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 386]
!1572 = metadata !{i32 786689, metadata !1567, metadata !"target", metadata !1035, i32 33554818, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 386]
!1573 = metadata !{i32 786689, metadata !1567, metadata !"filesystemtype", metadata !1035, i32 50332034, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filesystemtype] [line 386]
!1574 = metadata !{i32 786689, metadata !1567, metadata !"mountflags", metadata !1035, i32 67109250, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mountflags] [line 386]
!1575 = metadata !{i32 786689, metadata !1567, metadata !"data", metadata !1035, i32 83886466, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 386]
!1576 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"umount", metadata !"umount", metadata !"", i32 393, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @umount, null, null, metadata !1577, i32 393} 
!1577 = metadata !{metadata !1578}
!1578 = metadata !{i32 786689, metadata !1576, metadata !"target", metadata !1035, i32 16777609, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 393]
!1579 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"umount2", metadata !"umount2", metadata !"", i32 400, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @umount2, null, null, metadata !1580, i3
!1580 = metadata !{metadata !1581, metadata !1582}
!1581 = metadata !{i32 786689, metadata !1579, metadata !"target", metadata !1035, i32 16777616, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 400]
!1582 = metadata !{i32 786689, metadata !1579, metadata !"flags", metadata !1035, i32 33554832, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 400]
!1583 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"swapon", metadata !"swapon", metadata !"", i32 407, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @swapon, null, null, metadata !1584, i32 4
!1584 = metadata !{metadata !1585, metadata !1586}
!1585 = metadata !{i32 786689, metadata !1583, metadata !"path", metadata !1035, i32 16777623, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 407]
!1586 = metadata !{i32 786689, metadata !1583, metadata !"swapflags", metadata !1035, i32 33554839, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [swapflags] [line 407]
!1587 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"swapoff", metadata !"swapoff", metadata !"", i32 414, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @swapoff, null, null, metadata !1588, i32 41
!1588 = metadata !{metadata !1589}
!1589 = metadata !{i32 786689, metadata !1587, metadata !"path", metadata !1035, i32 16777630, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 414]
!1590 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setgid", metadata !"setgid", metadata !"", i32 421, metadata !1341, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @setgid, null, null, metadata !1591, i32 421}
!1591 = metadata !{metadata !1592}
!1592 = metadata !{i32 786689, metadata !1590, metadata !"gid", metadata !1035, i32 16777637, metadata !1343, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gid] [line 421]
!1593 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setgroups", metadata !"setgroups", metadata !"", i32 427, metadata !1594, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64, i32*)* @setgroups, null, null, metadata 
!1594 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1595, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1595 = metadata !{metadata !21, metadata !1137, metadata !1596}
!1596 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1597} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1597 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1343} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from gid_t]
!1598 = metadata !{metadata !1599, metadata !1600}
!1599 = metadata !{i32 786689, metadata !1593, metadata !"size", metadata !1035, i32 16777643, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 427]
!1600 = metadata !{i32 786689, metadata !1593, metadata !"list", metadata !1035, i32 33554859, metadata !1596, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 427]
!1601 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"sethostname", metadata !"sethostname", metadata !"", i32 434, metadata !1602, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64)* @sethostname, null, null, meta
!1602 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1603, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1603 = metadata !{metadata !21, metadata !61, metadata !1137}
!1604 = metadata !{metadata !1605, metadata !1606}
!1605 = metadata !{i32 786689, metadata !1601, metadata !"name", metadata !1035, i32 16777650, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 434]
!1606 = metadata !{i32 786689, metadata !1601, metadata !"len", metadata !1035, i32 33554866, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 434]
!1607 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setpgid", metadata !"setpgid", metadata !"", i32 441, metadata !1608, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @setpgid, null, null, metadata !1610, 
!1608 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1609, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1609 = metadata !{metadata !21, metadata !1493, metadata !1493}
!1610 = metadata !{metadata !1611, metadata !1612}
!1611 = metadata !{i32 786689, metadata !1607, metadata !"pid", metadata !1035, i32 16777657, metadata !1493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pid] [line 441]
!1612 = metadata !{i32 786689, metadata !1607, metadata !"pgid", metadata !1035, i32 33554873, metadata !1493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pgid] [line 441]
!1613 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setpgrp", metadata !"setpgrp", metadata !"", i32 448, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @setpgrp, null, null, metadata !15, i32 448} ; [
!1614 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setpriority", metadata !"setpriority", metadata !"", i32 455, metadata !1615, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @setpriority, null, null,
!1615 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1616, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1616 = metadata !{metadata !21, metadata !1617, metadata !1510, metadata !21}
!1617 = metadata !{i32 786454, metadata !998, null, metadata !"__priority_which_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1006} ; [ DW_TAG_typedef ] [__priority_which_t] [line 40, size 0, align 0, offset 0] [from __priority_which]
!1618 = metadata !{metadata !1619, metadata !1620, metadata !1621}
!1619 = metadata !{i32 786689, metadata !1614, metadata !"which", metadata !1035, i32 16777671, metadata !1617, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [which] [line 455]
!1620 = metadata !{i32 786689, metadata !1614, metadata !"who", metadata !1035, i32 33554887, metadata !1510, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 455]
!1621 = metadata !{i32 786689, metadata !1614, metadata !"prio", metadata !1035, i32 50332103, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prio] [line 455]
!1622 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setresgid", metadata !"setresgid", metadata !"", i32 462, metadata !1623, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @setresgid, null, null, metad
!1623 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1624, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1624 = metadata !{metadata !21, metadata !1343, metadata !1343, metadata !1343}
!1625 = metadata !{metadata !1626, metadata !1627, metadata !1628}
!1626 = metadata !{i32 786689, metadata !1622, metadata !"rgid", metadata !1035, i32 16777678, metadata !1343, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgid] [line 462]
!1627 = metadata !{i32 786689, metadata !1622, metadata !"egid", metadata !1035, i32 33554894, metadata !1343, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [egid] [line 462]
!1628 = metadata !{i32 786689, metadata !1622, metadata !"sgid", metadata !1035, i32 50332110, metadata !1343, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sgid] [line 462]
!1629 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setresuid", metadata !"setresuid", metadata !"", i32 469, metadata !1630, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @setresuid, null, null, metad
!1630 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1631, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1631 = metadata !{metadata !21, metadata !1632, metadata !1632, metadata !1632}
!1632 = metadata !{i32 786454, metadata !998, null, metadata !"uid_t", i32 67, i64 0, i64 0, i64 0, i32 0, metadata !1076} ; [ DW_TAG_typedef ] [uid_t] [line 67, size 0, align 0, offset 0] [from __uid_t]
!1633 = metadata !{metadata !1634, metadata !1635, metadata !1636}
!1634 = metadata !{i32 786689, metadata !1629, metadata !"ruid", metadata !1035, i32 16777685, metadata !1632, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ruid] [line 469]
!1635 = metadata !{i32 786689, metadata !1629, metadata !"euid", metadata !1035, i32 33554901, metadata !1632, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [euid] [line 469]
!1636 = metadata !{i32 786689, metadata !1629, metadata !"suid", metadata !1035, i32 50332117, metadata !1632, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [suid] [line 469]
!1637 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setrlimit", metadata !"setrlimit", metadata !"", i32 476, metadata !1638, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.rlimit*)* @setrlimit, null, null
!1638 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1639, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1639 = metadata !{metadata !21, metadata !1640, metadata !1641}
!1640 = metadata !{i32 786454, metadata !998, null, metadata !"__rlimit_resource_t", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !1012} ; [ DW_TAG_typedef ] [__rlimit_resource_t] [line 38, size 0, align 0, offset 0] [from __rlimit_resource]
!1641 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1642} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1642 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1643} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from rlimit]
!1643 = metadata !{i32 786451, metadata !1007, null, metadata !"rlimit", i32 139, i64 128, i64 64, i32 0, i32 0, null, metadata !1644, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [rlimit] [line 139, size 128, align 64, offset 0] [def] [from ]
!1644 = metadata !{metadata !1645, metadata !1648}
!1645 = metadata !{i32 786445, metadata !1007, metadata !1643, metadata !"rlim_cur", i32 142, i64 64, i64 64, i64 0, i32 0, metadata !1646} ; [ DW_TAG_member ] [rlim_cur] [line 142, size 64, align 64, offset 0] [from rlim_t]
!1646 = metadata !{i32 786454, metadata !1007, null, metadata !"rlim_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !1647} ; [ DW_TAG_typedef ] [rlim_t] [line 131, size 0, align 0, offset 0] [from __rlim_t]
!1647 = metadata !{i32 786454, metadata !1007, null, metadata !"__rlim_t", i32 136, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__rlim_t] [line 136, size 0, align 0, offset 0] [from long unsigned int]
!1648 = metadata !{i32 786445, metadata !1007, metadata !1643, metadata !"rlim_max", i32 144, i64 64, i64 64, i64 64, i32 0, metadata !1646} ; [ DW_TAG_member ] [rlim_max] [line 144, size 64, align 64, offset 64] [from rlim_t]
!1649 = metadata !{metadata !1650, metadata !1651}
!1650 = metadata !{i32 786689, metadata !1637, metadata !"resource", metadata !1035, i32 16777692, metadata !1640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resource] [line 476]
!1651 = metadata !{i32 786689, metadata !1637, metadata !"rlim", metadata !1035, i32 33554908, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlim] [line 476]
!1652 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setrlimit64", metadata !"setrlimit64", metadata !"", i32 483, metadata !1653, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.rlimit64*)* @setrlimit64, nu
!1653 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1654, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1654 = metadata !{metadata !21, metadata !1640, metadata !1655}
!1655 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1656} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1656 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1657} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from rlimit64]
!1657 = metadata !{i32 786451, metadata !1007, null, metadata !"rlimit64", i32 148, i64 128, i64 64, i32 0, i32 0, null, metadata !1658, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [rlimit64] [line 148, size 128, align 64, offset 0] [def] [from 
!1658 = metadata !{metadata !1659, metadata !1662}
!1659 = metadata !{i32 786445, metadata !1007, metadata !1657, metadata !"rlim_cur", i32 151, i64 64, i64 64, i64 0, i32 0, metadata !1660} ; [ DW_TAG_member ] [rlim_cur] [line 151, size 64, align 64, offset 0] [from rlim64_t]
!1660 = metadata !{i32 786454, metadata !1007, null, metadata !"rlim64_t", i32 136, i64 0, i64 0, i64 0, i32 0, metadata !1661} ; [ DW_TAG_typedef ] [rlim64_t] [line 136, size 0, align 0, offset 0] [from __rlim64_t]
!1661 = metadata !{i32 786454, metadata !1007, null, metadata !"__rlim64_t", i32 137, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__rlim64_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!1662 = metadata !{i32 786445, metadata !1007, metadata !1657, metadata !"rlim_max", i32 153, i64 64, i64 64, i64 64, i32 0, metadata !1660} ; [ DW_TAG_member ] [rlim_max] [line 153, size 64, align 64, offset 64] [from rlim64_t]
!1663 = metadata !{metadata !1664, metadata !1665}
!1664 = metadata !{i32 786689, metadata !1652, metadata !"resource", metadata !1035, i32 16777699, metadata !1640, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resource] [line 483]
!1665 = metadata !{i32 786689, metadata !1652, metadata !"rlim", metadata !1035, i32 33554915, metadata !1655, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlim] [line 483]
!1666 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setsid", metadata !"setsid", metadata !"", i32 490, metadata !1667, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @setsid, null, null, metadata !15, i32 490} ; [ 
!1667 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1668, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1668 = metadata !{metadata !1074}
!1669 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"settimeofday", metadata !"settimeofday", metadata !"", i32 497, metadata !1670, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.timeval*, %struct.timezone*)* @
!1670 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1671, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1671 = metadata !{metadata !21, metadata !1363, metadata !1672}
!1672 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1673} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1673 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1674} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timezone]
!1674 = metadata !{i32 786451, metadata !1675, null, metadata !"timezone", i32 55, i64 64, i64 32, i32 0, i32 0, null, metadata !1676, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timezone] [line 55, size 64, align 32, offset 0] [def] [from ]
!1675 = metadata !{metadata !"/usr/include/sys/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!1676 = metadata !{metadata !1677, metadata !1678}
!1677 = metadata !{i32 786445, metadata !1675, metadata !1674, metadata !"tz_minuteswest", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [tz_minuteswest] [line 57, size 32, align 32, offset 0] [from int]
!1678 = metadata !{i32 786445, metadata !1675, metadata !1674, metadata !"tz_dsttime", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tz_dsttime] [line 58, size 32, align 32, offset 32] [from int]
!1679 = metadata !{metadata !1680, metadata !1681}
!1680 = metadata !{i32 786689, metadata !1669, metadata !"tv", metadata !1035, i32 16777713, metadata !1363, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tv] [line 497]
!1681 = metadata !{i32 786689, metadata !1669, metadata !"tz", metadata !1035, i32 33554929, metadata !1672, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tz] [line 497]
!1682 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"setuid", metadata !"setuid", metadata !"", i32 504, metadata !1683, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @setuid, null, null, metadata !1685, i32 504}
!1683 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1684, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1684 = metadata !{metadata !21, metadata !1632}
!1685 = metadata !{metadata !1686}
!1686 = metadata !{i32 786689, metadata !1682, metadata !"uid", metadata !1035, i32 16777720, metadata !1632, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uid] [line 504]
!1687 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"reboot", metadata !"reboot", metadata !"", i32 510, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @reboot, null, null, metadata !1688, i32 510} 
!1688 = metadata !{metadata !1689}
!1689 = metadata !{i32 786689, metadata !1687, metadata !"flag", metadata !1035, i32 16777726, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 510]
!1690 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mlock", metadata !"mlock", metadata !"", i32 517, metadata !1691, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64)* @mlock, null, null, metadata !1693, i32 51
!1691 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1692, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1692 = metadata !{metadata !21, metadata !214, metadata !1137}
!1693 = metadata !{metadata !1694, metadata !1695}
!1694 = metadata !{i32 786689, metadata !1690, metadata !"addr", metadata !1035, i32 16777733, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 517]
!1695 = metadata !{i32 786689, metadata !1690, metadata !"len", metadata !1035, i32 33554949, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 517]
!1696 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"munlock", metadata !"munlock", metadata !"", i32 524, metadata !1691, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64)* @munlock, null, null, metadata !1697, 
!1697 = metadata !{metadata !1698, metadata !1699}
!1698 = metadata !{i32 786689, metadata !1696, metadata !"addr", metadata !1035, i32 16777740, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 524]
!1699 = metadata !{i32 786689, metadata !1696, metadata !"len", metadata !1035, i32 33554956, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 524]
!1700 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"pause", metadata !"pause", metadata !"", i32 531, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @pause, null, null, metadata !15, i32 531} ; [ DW_TA
!1701 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"readahead", metadata !"readahead", metadata !"", i32 538, metadata !1702, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64*, i64)* @readahead, null, null, meta
!1702 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1703, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1703 = metadata !{metadata !1704, metadata !21, metadata !1706, metadata !1137}
!1704 = metadata !{i32 786454, metadata !998, null, metadata !"ssize_t", i32 104, i64 0, i64 0, i64 0, i32 0, metadata !1705} ; [ DW_TAG_typedef ] [ssize_t] [line 104, size 0, align 0, offset 0] [from __ssize_t]
!1705 = metadata !{i32 786454, metadata !998, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!1706 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1707} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from off64_t]
!1707 = metadata !{i32 786454, metadata !998, null, metadata !"off64_t", i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1211} ; [ DW_TAG_typedef ] [off64_t] [line 97, size 0, align 0, offset 0] [from __off64_t]
!1708 = metadata !{metadata !1709, metadata !1710, metadata !1711}
!1709 = metadata !{i32 786689, metadata !1701, metadata !"fd", metadata !1035, i32 16777754, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 538]
!1710 = metadata !{i32 786689, metadata !1701, metadata !"offset", metadata !1035, i32 33554970, metadata !1706, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 538]
!1711 = metadata !{i32 786689, metadata !1701, metadata !"count", metadata !1035, i32 50332186, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 538]
!1712 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mmap", metadata !"mmap", metadata !"", i32 545, metadata !1713, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64, i32, i32, i32, i64)* @mmap, null, null, metad
!1713 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1714, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1714 = metadata !{metadata !201, metadata !201, metadata !1137, metadata !21, metadata !21, metadata !21, metadata !1715}
!1715 = metadata !{i32 786454, metadata !998, null, metadata !"off_t", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !1203} ; [ DW_TAG_typedef ] [off_t] [line 90, size 0, align 0, offset 0] [from __off_t]
!1716 = metadata !{metadata !1717, metadata !1718, metadata !1719, metadata !1720, metadata !1721, metadata !1722}
!1717 = metadata !{i32 786689, metadata !1712, metadata !"start", metadata !1035, i32 16777761, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 545]
!1718 = metadata !{i32 786689, metadata !1712, metadata !"length", metadata !1035, i32 33554977, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 545]
!1719 = metadata !{i32 786689, metadata !1712, metadata !"prot", metadata !1035, i32 50332193, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prot] [line 545]
!1720 = metadata !{i32 786689, metadata !1712, metadata !"flags", metadata !1035, i32 67109409, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 545]
!1721 = metadata !{i32 786689, metadata !1712, metadata !"fd", metadata !1035, i32 83886625, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 545]
!1722 = metadata !{i32 786689, metadata !1712, metadata !"offset", metadata !1035, i32 100663841, metadata !1715, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 545]
!1723 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"mmap64", metadata !"mmap64", metadata !"", i32 552, metadata !1724, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64, i32, i32, i32, i64)* @mmap64, null, null,
!1724 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1725, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1725 = metadata !{metadata !201, metadata !201, metadata !1137, metadata !21, metadata !21, metadata !21, metadata !1707}
!1726 = metadata !{metadata !1727, metadata !1728, metadata !1729, metadata !1730, metadata !1731, metadata !1732}
!1727 = metadata !{i32 786689, metadata !1723, metadata !"start", metadata !1035, i32 16777768, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 552]
!1728 = metadata !{i32 786689, metadata !1723, metadata !"length", metadata !1035, i32 33554984, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 552]
!1729 = metadata !{i32 786689, metadata !1723, metadata !"prot", metadata !1035, i32 50332200, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prot] [line 552]
!1730 = metadata !{i32 786689, metadata !1723, metadata !"flags", metadata !1035, i32 67109416, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 552]
!1731 = metadata !{i32 786689, metadata !1723, metadata !"fd", metadata !1035, i32 83886632, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 552]
!1732 = metadata !{i32 786689, metadata !1723, metadata !"offset", metadata !1035, i32 100663848, metadata !1707, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 552]
!1733 = metadata !{i32 786478, metadata !998, metadata !1035, metadata !"munmap", metadata !"munmap", metadata !"", i32 559, metadata !1734, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i64)* @munmap, null, null, metadata !1736, i32
!1734 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1735, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1735 = metadata !{metadata !21, metadata !201, metadata !1137}
!1736 = metadata !{metadata !1737, metadata !1738}
!1737 = metadata !{i32 786689, metadata !1733, metadata !"start", metadata !1035, i32 16777775, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 559]
!1738 = metadata !{i32 786689, metadata !1733, metadata !"length", metadata !1035, i32 33554991, metadata !1137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 559]
!1739 = metadata !{i32 786449, metadata !1740, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1740 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_64.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!1741 = metadata !{metadata !1742, metadata !1764, metadata !1773, metadata !1782, metadata !1811, metadata !1817, metadata !1822, metadata !1826, metadata !1833, metadata !1839, metadata !1845, metadata !1872}
!1742 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"open", metadata !"open", metadata !"open64", i32 45, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64, null, null, metadata !1744
!1743 = metadata !{i32 786473, metadata !1740}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1744 = metadata !{metadata !1745, metadata !1746, metadata !1747, metadata !1750}
!1745 = metadata !{i32 786689, metadata !1742, metadata !"pathname", metadata !1743, i32 16777261, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 45]
!1746 = metadata !{i32 786689, metadata !1742, metadata !"flags", metadata !1743, i32 33554477, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 45]
!1747 = metadata !{i32 786688, metadata !1742, metadata !"mode", metadata !1743, i32 46, metadata !1748, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 46]
!1748 = metadata !{i32 786454, metadata !1740, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !1749} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!1749 = metadata !{i32 786454, metadata !1740, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!1750 = metadata !{i32 786688, metadata !1751, metadata !"ap", metadata !1743, i32 50, metadata !1753, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 50]
!1751 = metadata !{i32 786443, metadata !1740, metadata !1752, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1752 = metadata !{i32 786443, metadata !1740, metadata !1742, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1753 = metadata !{i32 786454, metadata !1740, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !1754} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!1754 = metadata !{i32 786454, metadata !1740, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !1755} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!1755 = metadata !{i32 786454, metadata !1740, null, metadata !"__builtin_va_list", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1756} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 50, size 0, align 0, offset 0] [from ]
!1756 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !1757, metadata !432, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!1757 = metadata !{i32 786454, metadata !1740, null, metadata !"__va_list_tag", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1758} ; [ DW_TAG_typedef ] [__va_list_tag] [line 50, size 0, align 0, offset 0] [from __va_list_tag]
!1758 = metadata !{i32 786451, metadata !1740, null, metadata !"__va_list_tag", i32 50, i64 192, i64 64, i32 0, i32 0, null, metadata !1759, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 50, size 192, align 64, offset 0] [def
!1759 = metadata !{metadata !1760, metadata !1761, metadata !1762, metadata !1763}
!1760 = metadata !{i32 786445, metadata !1740, metadata !1758, metadata !"gp_offset", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [gp_offset] [line 50, size 32, align 32, offset 0] [from unsigned int]
!1761 = metadata !{i32 786445, metadata !1740, metadata !1758, metadata !"fp_offset", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [fp_offset] [line 50, size 32, align 32, offset 32] [from unsigned int]
!1762 = metadata !{i32 786445, metadata !1740, metadata !1758, metadata !"overflow_arg_area", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !201} ; [ DW_TAG_member ] [overflow_arg_area] [line 50, size 64, align 64, offset 64] [from ]
!1763 = metadata !{i32 786445, metadata !1740, metadata !1758, metadata !"reg_save_area", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !201} ; [ DW_TAG_member ] [reg_save_area] [line 50, size 64, align 64, offset 128] [from ]
!1764 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"openat", metadata !"openat", metadata !"openat64", i32 59, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, ...)* @openat64, null, null, 
!1765 = metadata !{metadata !1766, metadata !1767, metadata !1768, metadata !1769, metadata !1770}
!1766 = metadata !{i32 786689, metadata !1764, metadata !"fd", metadata !1743, i32 16777275, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 59]
!1767 = metadata !{i32 786689, metadata !1764, metadata !"pathname", metadata !1743, i32 33554491, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 59]
!1768 = metadata !{i32 786689, metadata !1764, metadata !"flags", metadata !1743, i32 50331707, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 59]
!1769 = metadata !{i32 786688, metadata !1764, metadata !"mode", metadata !1743, i32 60, metadata !1748, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 60]
!1770 = metadata !{i32 786688, metadata !1771, metadata !"ap", metadata !1743, i32 64, metadata !1753, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 64]
!1771 = metadata !{i32 786443, metadata !1740, metadata !1772, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1772 = metadata !{i32 786443, metadata !1740, metadata !1764, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1773 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"lseek", metadata !"lseek", metadata !"lseek64", i32 73, metadata !1774, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64, null, null, metadata
!1774 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1775, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1775 = metadata !{metadata !1776, metadata !21, metadata !1777, metadata !21}
!1776 = metadata !{i32 786454, metadata !1740, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!1777 = metadata !{i32 786454, metadata !1740, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !1776} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!1778 = metadata !{metadata !1779, metadata !1780, metadata !1781}
!1779 = metadata !{i32 786689, metadata !1773, metadata !"fd", metadata !1743, i32 16777289, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 73]
!1780 = metadata !{i32 786689, metadata !1773, metadata !"offset", metadata !1743, i32 33554505, metadata !1777, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 73]
!1781 = metadata !{i32 786689, metadata !1773, metadata !"whence", metadata !1743, i32 50331721, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 73]
!1782 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat64", i32 77, metadata !1783, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64*)* @__xstat64, 
!1783 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1784, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1784 = metadata !{metadata !21, metadata !21, metadata !61, metadata !1785}
!1785 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1786} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!1786 = metadata !{i32 786451, metadata !77, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !1787, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!1787 = metadata !{metadata !1788, metadata !1789, metadata !1790, metadata !1791, metadata !1792, metadata !1793, metadata !1794, metadata !1795, metadata !1796, metadata !1797, metadata !1798, metadata !1799, metadata !1804, metadata !1805, metadata !1
!1788 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!1789 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!1790 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!1791 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !1749} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!1792 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !89} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!1793 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!1794 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!1795 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!1796 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !95} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!1797 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !98} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!1798 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !262} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!1799 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !1800} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!1800 = metadata !{i32 786451, metadata !103, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !1801, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!1801 = metadata !{metadata !1802, metadata !1803}
!1802 = metadata !{i32 786445, metadata !103, metadata !1800, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!1803 = metadata !{i32 786445, metadata !103, metadata !1800, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!1804 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !1800} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!1805 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !1800} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!1806 = metadata !{i32 786445, metadata !77, metadata !1786, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !112} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!1807 = metadata !{metadata !1808, metadata !1809, metadata !1810}
!1808 = metadata !{i32 786689, metadata !1782, metadata !"vers", metadata !1743, i32 16777293, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 77]
!1809 = metadata !{i32 786689, metadata !1782, metadata !"path", metadata !1743, i32 33554509, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 77]
!1810 = metadata !{i32 786689, metadata !1782, metadata !"buf", metadata !1743, i32 50331725, metadata !1785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 77]
!1811 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"stat", metadata !"stat", metadata !"stat64", i32 81, metadata !1812, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @stat64, null, null, metad
!1812 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1813, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1813 = metadata !{metadata !21, metadata !61, metadata !1785}
!1814 = metadata !{metadata !1815, metadata !1816}
!1815 = metadata !{i32 786689, metadata !1811, metadata !"path", metadata !1743, i32 16777297, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 81]
!1816 = metadata !{i32 786689, metadata !1811, metadata !"buf", metadata !1743, i32 33554513, metadata !1785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 81]
!1817 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat64", i32 85, metadata !1783, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64*)* @__lxstat
!1818 = metadata !{metadata !1819, metadata !1820, metadata !1821}
!1819 = metadata !{i32 786689, metadata !1817, metadata !"vers", metadata !1743, i32 16777301, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 85]
!1820 = metadata !{i32 786689, metadata !1817, metadata !"path", metadata !1743, i32 33554517, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 85]
!1821 = metadata !{i32 786689, metadata !1817, metadata !"buf", metadata !1743, i32 50331733, metadata !1785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 85]
!1822 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"lstat", metadata !"lstat", metadata !"lstat64", i32 89, metadata !1812, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @lstat64, null, null, m
!1823 = metadata !{metadata !1824, metadata !1825}
!1824 = metadata !{i32 786689, metadata !1822, metadata !"path", metadata !1743, i32 16777305, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 89]
!1825 = metadata !{i32 786689, metadata !1822, metadata !"buf", metadata !1743, i32 33554521, metadata !1785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 89]
!1826 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat64", i32 93, metadata !1827, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat64*)* @__fxstat
!1827 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1828, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1828 = metadata !{metadata !21, metadata !21, metadata !21, metadata !1785}
!1829 = metadata !{metadata !1830, metadata !1831, metadata !1832}
!1830 = metadata !{i32 786689, metadata !1826, metadata !"vers", metadata !1743, i32 16777309, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 93]
!1831 = metadata !{i32 786689, metadata !1826, metadata !"fd", metadata !1743, i32 33554525, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 93]
!1832 = metadata !{i32 786689, metadata !1826, metadata !"buf", metadata !1743, i32 50331741, metadata !1785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 93]
!1833 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"fstat", metadata !"fstat", metadata !"fstat64", i32 97, metadata !1834, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64*)* @fstat64, null, null, m
!1834 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1835, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1835 = metadata !{metadata !21, metadata !21, metadata !1785}
!1836 = metadata !{metadata !1837, metadata !1838}
!1837 = metadata !{i32 786689, metadata !1833, metadata !"fd", metadata !1743, i32 16777313, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 97]
!1838 = metadata !{i32 786689, metadata !1833, metadata !"buf", metadata !1743, i32 33554529, metadata !1785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 97]
!1839 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"ftruncate64", metadata !"ftruncate64", metadata !"", i32 101, metadata !1840, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate64, null, null, met
!1840 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1841, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1841 = metadata !{metadata !21, metadata !21, metadata !1777}
!1842 = metadata !{metadata !1843, metadata !1844}
!1843 = metadata !{i32 786689, metadata !1839, metadata !"fd", metadata !1743, i32 16777317, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 101]
!1844 = metadata !{i32 786689, metadata !1839, metadata !"length", metadata !1743, i32 33554533, metadata !1777, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 101]
!1845 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"statfs", metadata !"statfs", metadata !"statfs64", i32 106, metadata !1846, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @statfs64, null, nu
!1846 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1847, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1847 = metadata !{metadata !21, metadata !61, metadata !1848}
!1848 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1849} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!1849 = metadata !{i32 786451, metadata !495, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !1850, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!1850 = metadata !{metadata !1851, metadata !1852, metadata !1853, metadata !1855, metadata !1856, metadata !1857, metadata !1859, metadata !1860, metadata !1865, metadata !1866, metadata !1867, metadata !1868}
!1851 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !498} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!1852 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !498} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!1853 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_blocks", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !1854} ; [ DW_TAG_member ] [f_blocks] [line 35, size 64, align 64, offset 128] [from __fsblkcnt64_t]
!1854 = metadata !{i32 786454, metadata !495, null, metadata !"__fsblkcnt64_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__fsblkcnt64_t] [line 163, size 0, align 0, offset 0] [from long unsigned int]
!1855 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_bfree", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !1854} ; [ DW_TAG_member ] [f_bfree] [line 36, size 64, align 64, offset 192] [from __fsblkcnt64_t]
!1856 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_bavail", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !1854} ; [ DW_TAG_member ] [f_bavail] [line 37, size 64, align 64, offset 256] [from __fsblkcnt64_t]
!1857 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_files", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !1858} ; [ DW_TAG_member ] [f_files] [line 38, size 64, align 64, offset 320] [from __fsfilcnt64_t]
!1858 = metadata !{i32 786454, metadata !495, null, metadata !"__fsfilcnt64_t", i32 167, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__fsfilcnt64_t] [line 167, size 0, align 0, offset 0] [from long unsigned int]
!1859 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_ffree", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !1858} ; [ DW_TAG_member ] [f_ffree] [line 39, size 64, align 64, offset 384] [from __fsfilcnt64_t]
!1860 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !1861} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!1861 = metadata !{i32 786454, metadata !495, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !1862} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!1862 = metadata !{i32 786451, metadata !510, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !1863, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!1863 = metadata !{metadata !1864}
!1864 = metadata !{i32 786445, metadata !510, metadata !1862, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !513} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!1865 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !498} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!1866 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !498} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!1867 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !498} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!1868 = metadata !{i32 786445, metadata !495, metadata !1849, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !520} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!1869 = metadata !{metadata !1870, metadata !1871}
!1870 = metadata !{i32 786689, metadata !1845, metadata !"path", metadata !1743, i32 16777322, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 106]
!1871 = metadata !{i32 786689, metadata !1845, metadata !"buf", metadata !1743, i32 33554538, metadata !1848, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 106]
!1872 = metadata !{i32 786478, metadata !1740, metadata !1743, metadata !"getdents64", metadata !"getdents64", metadata !"", i32 110, metadata !1873, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent.12*, i32)* @getdents64
!1873 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1874, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1874 = metadata !{metadata !21, metadata !72, metadata !1875, metadata !72}
!1875 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1876} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent]
!1876 = metadata !{i32 786451, metadata !377, null, metadata !"dirent", i32 22, i64 2240, i64 64, i32 0, i32 0, null, metadata !1877, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent] [line 22, size 2240, align 64, offset 0] [def] [from ]
!1877 = metadata !{metadata !1878, metadata !1880, metadata !1881, metadata !1882, metadata !1883}
!1878 = metadata !{i32 786445, metadata !377, metadata !1876, metadata !"d_ino", i32 28, i64 64, i64 64, i64 0, i32 0, metadata !1879} ; [ DW_TAG_member ] [d_ino] [line 28, size 64, align 64, offset 0] [from __ino64_t]
!1879 = metadata !{i32 786454, metadata !377, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!1880 = metadata !{i32 786445, metadata !377, metadata !1876, metadata !"d_off", i32 29, i64 64, i64 64, i64 64, i32 0, metadata !1776} ; [ DW_TAG_member ] [d_off] [line 29, size 64, align 64, offset 64] [from __off64_t]
!1881 = metadata !{i32 786445, metadata !377, metadata !1876, metadata !"d_reclen", i32 31, i64 16, i64 16, i64 128, i32 0, metadata !382} ; [ DW_TAG_member ] [d_reclen] [line 31, size 16, align 16, offset 128] [from unsigned short]
!1882 = metadata !{i32 786445, metadata !377, metadata !1876, metadata !"d_type", i32 32, i64 8, i64 8, i64 144, i32 0, metadata !384} ; [ DW_TAG_member ] [d_type] [line 32, size 8, align 8, offset 144] [from unsigned char]
!1883 = metadata !{i32 786445, metadata !377, metadata !1876, metadata !"d_name", i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !386} ; [ DW_TAG_member ] [d_name] [line 33, size 2048, align 8, offset 152] [from ]
!1884 = metadata !{metadata !1885, metadata !1886, metadata !1887}
!1885 = metadata !{i32 786689, metadata !1872, metadata !"fd", metadata !1743, i32 16777326, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 110]
!1886 = metadata !{i32 786689, metadata !1872, metadata !"dirp", metadata !1743, i32 33554542, metadata !1875, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 110]
!1887 = metadata !{i32 786689, metadata !1872, metadata !"count", metadata !1743, i32 50331758, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 110]
!1888 = metadata !{i32 786449, metadata !1889, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1889 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1890 = metadata !{metadata !1891, metadata !1897, metadata !1903}
!1891 = metadata !{i32 786478, metadata !1889, metadata !1892, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !1893, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1892 = metadata !{i32 786473, metadata !1889}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!1893 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1894, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1894 = metadata !{metadata !1399, metadata !1399}
!1895 = metadata !{metadata !1896}
!1896 = metadata !{i32 786689, metadata !1891, metadata !"d", metadata !1892, i32 16777227, metadata !1399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1897 = metadata !{i32 786478, metadata !1889, metadata !1892, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !1898, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1898 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1899, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1899 = metadata !{metadata !1900, metadata !1900}
!1900 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!1901 = metadata !{metadata !1902}
!1902 = metadata !{i32 786689, metadata !1897, metadata !"f", metadata !1892, i32 16777231, metadata !1900, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1903 = metadata !{i32 786478, metadata !1889, metadata !1892, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !1904, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1904 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1905, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1905 = metadata !{metadata !1906, metadata !1906}
!1906 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!1907 = metadata !{metadata !1908}
!1908 = metadata !{i32 786689, metadata !1903, metadata !"f", metadata !1892, i32 16777236, metadata !1906, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1909 = metadata !{i32 786449, metadata !1910, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1910 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fenv.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1911 = metadata !{metadata !1912, metadata !1921}
!1912 = metadata !{i32 786436, metadata !1913, null, metadata !"KleeRoundingMode", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !1914, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KleeRoundingMode] [line 185, size 32, align 32, offset
!1913 = metadata !{metadata !"/home/user/klee/include/klee/klee.h", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1914 = metadata !{metadata !1915, metadata !1916, metadata !1917, metadata !1918, metadata !1919, metadata !1920}
!1915 = metadata !{i32 786472, metadata !"KLEE_FP_RNE", i64 0} ; [ DW_TAG_enumerator ] [KLEE_FP_RNE :: 0]
!1916 = metadata !{i32 786472, metadata !"KLEE_FP_RNA", i64 1} ; [ DW_TAG_enumerator ] [KLEE_FP_RNA :: 1]
!1917 = metadata !{i32 786472, metadata !"KLEE_FP_RU", i64 2} ; [ DW_TAG_enumerator ] [KLEE_FP_RU :: 2]
!1918 = metadata !{i32 786472, metadata !"KLEE_FP_RD", i64 3} ; [ DW_TAG_enumerator ] [KLEE_FP_RD :: 3]
!1919 = metadata !{i32 786472, metadata !"KLEE_FP_RZ", i64 4} ; [ DW_TAG_enumerator ] [KLEE_FP_RZ :: 4]
!1920 = metadata !{i32 786472, metadata !"KLEE_FP_UNKNOWN", i64 5} ; [ DW_TAG_enumerator ] [KLEE_FP_UNKNOWN :: 5]
!1921 = metadata !{i32 786436, metadata !1910, null, metadata !"", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !1922, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 15, size 32, align 32, offset 0] [def] [from ]
!1922 = metadata !{metadata !1923, metadata !1924, metadata !1925, metadata !1926, metadata !1927}
!1923 = metadata !{i32 786472, metadata !"FE_TONEAREST", i64 0} ; [ DW_TAG_enumerator ] [FE_TONEAREST :: 0]
!1924 = metadata !{i32 786472, metadata !"FE_DOWNWARD", i64 1024} ; [ DW_TAG_enumerator ] [FE_DOWNWARD :: 1024]
!1925 = metadata !{i32 786472, metadata !"FE_UPWARD", i64 2048} ; [ DW_TAG_enumerator ] [FE_UPWARD :: 2048]
!1926 = metadata !{i32 786472, metadata !"FE_TOWARDZERO", i64 3072} ; [ DW_TAG_enumerator ] [FE_TOWARDZERO :: 3072]
!1927 = metadata !{i32 786472, metadata !"FE_TONEAREST_TIES_TO_AWAY", i64 3073} ; [ DW_TAG_enumerator ] [FE_TONEAREST_TIES_TO_AWAY :: 3073]
!1928 = metadata !{metadata !1929, metadata !1933}
!1929 = metadata !{i32 786478, metadata !1910, metadata !1930, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_internal
!1930 = metadata !{i32 786473, metadata !1910}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!1931 = metadata !{metadata !1932}
!1932 = metadata !{i32 786688, metadata !1929, metadata !"rm", metadata !1930, i32 34, metadata !1912, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!1933 = metadata !{i32 786478, metadata !1910, metadata !1930, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_inte
!1934 = metadata !{metadata !1935}
!1935 = metadata !{i32 786689, metadata !1933, metadata !"rm", metadata !1930, i32 16777268, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!1936 = metadata !{i32 786449, metadata !1937, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1937 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1938 = metadata !{metadata !1939}
!1939 = metadata !{i32 786436, metadata !1937, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !1940, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!1940 = metadata !{metadata !1941, metadata !1942, metadata !1943, metadata !1944, metadata !1945}
!1941 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!1942 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!1943 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!1944 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!1945 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!1946 = metadata !{metadata !1947, metadata !1953, metadata !1958, metadata !1963, metadata !1966, metadata !1969, metadata !1972, metadata !1975, metadata !1978}
!1947 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !1949, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_
!1948 = metadata !{i32 786473, metadata !1937}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!1949 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1950, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1950 = metadata !{metadata !21, metadata !1900}
!1951 = metadata !{metadata !1952}
!1952 = metadata !{i32 786689, metadata !1947, metadata !"f", metadata !1948, i32 16777232, metadata !1900, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!1953 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !1954, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_i
!1954 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1955, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1955 = metadata !{metadata !21, metadata !1399}
!1956 = metadata !{metadata !1957}
!1957 = metadata !{i32 786689, metadata !1953, metadata !"d", metadata !1948, i32 16777237, metadata !1399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!1958 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !1959, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_intern
!1959 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1960, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1960 = metadata !{metadata !21, metadata !1906}
!1961 = metadata !{metadata !1962}
!1962 = metadata !{i32 786689, metadata !1958, metadata !"d", metadata !1948, i32 16777242, metadata !1906, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!1963 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !1949, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee
!1964 = metadata !{metadata !1965}
!1965 = metadata !{i32 786689, metadata !1963, metadata !"f", metadata !1948, i32 16777283, metadata !1900, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!1966 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !1954, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_
!1967 = metadata !{metadata !1968}
!1968 = metadata !{i32 786689, metadata !1966, metadata !"f", metadata !1948, i32 16777298, metadata !1399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!1969 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !1959, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @k
!1970 = metadata !{metadata !1971}
!1971 = metadata !{i32 786689, metadata !1969, metadata !"ld", metadata !1948, i32 16777314, metadata !1906, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!1972 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !1949, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_intern
!1973 = metadata !{metadata !1974}
!1974 = metadata !{i32 786689, metadata !1972, metadata !"f", metadata !1948, i32 16777330, metadata !1900, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!1975 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !1954, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_interna
!1976 = metadata !{metadata !1977}
!1977 = metadata !{i32 786689, metadata !1975, metadata !"f", metadata !1948, i32 16777335, metadata !1399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!1978 = metadata !{i32 786478, metadata !1937, metadata !1948, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !1959, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_int
!1979 = metadata !{metadata !1980}
!1980 = metadata !{i32 786689, metadata !1978, metadata !"f", metadata !1948, i32 16777340, metadata !1906, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!1981 = metadata !{i32 786449, metadata !1982, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1982 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1983 = metadata !{metadata !1984}
!1984 = metadata !{i32 786478, metadata !1982, metadata !1985, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !1986, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_che
!1985 = metadata !{i32 786473, metadata !1982}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!1986 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1987, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1987 = metadata !{null, metadata !1988}
!1988 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!1989 = metadata !{metadata !1990}
!1990 = metadata !{i32 786689, metadata !1984, metadata !"z", metadata !1985, i32 16777228, metadata !1988, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!1991 = metadata !{i32 786449, metadata !1992, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1992 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1993 = metadata !{metadata !1994}
!1994 = metadata !{i32 786478, metadata !1992, metadata !1995, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !1996, i32
!1995 = metadata !{i32 786473, metadata !1992}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!1996 = metadata !{metadata !1997, metadata !1998}
!1997 = metadata !{i32 786689, metadata !1994, metadata !"name", metadata !1995, i32 16777229, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1998 = metadata !{i32 786688, metadata !1994, metadata !"x", metadata !1995, i32 14, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1999 = metadata !{i32 786449, metadata !2000, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2000 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2001 = metadata !{metadata !2002}
!2002 = metadata !{i32 786478, metadata !2000, metadata !2003, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !2004, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overs
!2003 = metadata !{i32 786473, metadata !2000}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!2004 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2005, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2005 = metadata !{null, metadata !1378, metadata !1378}
!2006 = metadata !{metadata !2007, metadata !2008}
!2007 = metadata !{i32 786689, metadata !2002, metadata !"bitWidth", metadata !2003, i32 16777236, metadata !1378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!2008 = metadata !{i32 786689, metadata !2002, metadata !"shift", metadata !2003, i32 33554452, metadata !1378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!2009 = metadata !{i32 786449, metadata !2010, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2010 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2011 = metadata !{metadata !2012}
!2012 = metadata !{i32 786478, metadata !2010, metadata !2013, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !2014, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, me
!2013 = metadata !{i32 786473, metadata !2010}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!2014 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2015, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2015 = metadata !{metadata !21, metadata !21, metadata !21, metadata !61}
!2016 = metadata !{metadata !2017, metadata !2018, metadata !2019, metadata !2020}
!2017 = metadata !{i32 786689, metadata !2012, metadata !"start", metadata !2013, i32 16777229, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!2018 = metadata !{i32 786689, metadata !2012, metadata !"end", metadata !2013, i32 33554445, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!2019 = metadata !{i32 786689, metadata !2012, metadata !"name", metadata !2013, i32 50331661, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!2020 = metadata !{i32 786688, metadata !2012, metadata !"x", metadata !2013, i32 14, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!2021 = metadata !{i32 786449, metadata !2022, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2022 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2023 = metadata !{metadata !1912}
!2024 = metadata !{metadata !2025}
!2025 = metadata !{i32 786478, metadata !2022, metadata !2026, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !2027, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_ro
!2026 = metadata !{i32 786473, metadata !2022}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!2027 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2028, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2028 = metadata !{null, metadata !1912}
!2029 = metadata !{metadata !2030}
!2030 = metadata !{i32 786689, metadata !2025, metadata !"rm", metadata !2026, i32 16777232, metadata !1912, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!2031 = metadata !{i32 786449, metadata !2032, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2032 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2033 = metadata !{metadata !2034}
!2034 = metadata !{i32 786478, metadata !2032, metadata !2035, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !2036, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2039
!2035 = metadata !{i32 786473, metadata !2032}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!2036 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2037, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2037 = metadata !{metadata !201, metadata !201, metadata !214, metadata !2038}
!2038 = metadata !{i32 786454, metadata !2032, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2039 = metadata !{metadata !2040, metadata !2041, metadata !2042, metadata !2043, metadata !2044}
!2040 = metadata !{i32 786689, metadata !2034, metadata !"destaddr", metadata !2035, i32 16777228, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!2041 = metadata !{i32 786689, metadata !2034, metadata !"srcaddr", metadata !2035, i32 33554444, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!2042 = metadata !{i32 786689, metadata !2034, metadata !"len", metadata !2035, i32 50331660, metadata !2038, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!2043 = metadata !{i32 786688, metadata !2034, metadata !"dest", metadata !2035, i32 13, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!2044 = metadata !{i32 786688, metadata !2034, metadata !"src", metadata !2035, i32 14, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!2045 = metadata !{i32 786449, metadata !2046, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2046 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2047 = metadata !{metadata !2048}
!2048 = metadata !{i32 786478, metadata !2046, metadata !2049, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !2050, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !2
!2049 = metadata !{i32 786473, metadata !2046}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!2050 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2051, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2051 = metadata !{metadata !201, metadata !201, metadata !214, metadata !2052}
!2052 = metadata !{i32 786454, metadata !2046, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2053 = metadata !{metadata !2054, metadata !2055, metadata !2056, metadata !2057, metadata !2058}
!2054 = metadata !{i32 786689, metadata !2048, metadata !"dst", metadata !2049, i32 16777228, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!2055 = metadata !{i32 786689, metadata !2048, metadata !"src", metadata !2049, i32 33554444, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!2056 = metadata !{i32 786689, metadata !2048, metadata !"count", metadata !2049, i32 50331660, metadata !2052, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!2057 = metadata !{i32 786688, metadata !2048, metadata !"a", metadata !2049, i32 13, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!2058 = metadata !{i32 786688, metadata !2048, metadata !"b", metadata !2049, i32 14, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!2059 = metadata !{i32 786449, metadata !2060, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2060 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2061 = metadata !{metadata !2062}
!2062 = metadata !{i32 786478, metadata !2060, metadata !2063, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !2064, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2
!2063 = metadata !{i32 786473, metadata !2060}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!2064 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2065, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2065 = metadata !{metadata !201, metadata !201, metadata !214, metadata !2066}
!2066 = metadata !{i32 786454, metadata !2060, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2067 = metadata !{metadata !2068, metadata !2069, metadata !2070, metadata !2071, metadata !2072}
!2068 = metadata !{i32 786689, metadata !2062, metadata !"destaddr", metadata !2063, i32 16777227, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!2069 = metadata !{i32 786689, metadata !2062, metadata !"srcaddr", metadata !2063, i32 33554443, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!2070 = metadata !{i32 786689, metadata !2062, metadata !"len", metadata !2063, i32 50331659, metadata !2066, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!2071 = metadata !{i32 786688, metadata !2062, metadata !"dest", metadata !2063, i32 12, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!2072 = metadata !{i32 786688, metadata !2062, metadata !"src", metadata !2063, i32 13, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!2073 = metadata !{i32 786449, metadata !2074, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2074 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2075 = metadata !{metadata !2076}
!2076 = metadata !{i32 786478, metadata !2074, metadata !2077, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !2078, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !2081
!2077 = metadata !{i32 786473, metadata !2074}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!2078 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2079, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2079 = metadata !{metadata !201, metadata !201, metadata !21, metadata !2080}
!2080 = metadata !{i32 786454, metadata !2074, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2081 = metadata !{metadata !2082, metadata !2083, metadata !2084, metadata !2085}
!2082 = metadata !{i32 786689, metadata !2076, metadata !"dst", metadata !2077, i32 16777227, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!2083 = metadata !{i32 786689, metadata !2076, metadata !"s", metadata !2077, i32 33554443, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!2084 = metadata !{i32 786689, metadata !2076, metadata !"count", metadata !2077, i32 50331659, metadata !2080, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!2085 = metadata !{i32 786688, metadata !2076, metadata !"a", metadata !2077, i32 12, metadata !2086, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!2086 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !2087} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!2087 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!2088 = metadata !{i32 786449, metadata !2089, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!2089 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!2090 = metadata !{metadata !2091, metadata !2095, metadata !2098}
!2091 = metadata !{i32 786478, metadata !2089, metadata !2092, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !1893, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!2092 = metadata !{i32 786473, metadata !2089}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!2093 = metadata !{metadata !2094}
!2094 = metadata !{i32 786689, metadata !2091, metadata !"d", metadata !2092, i32 16777227, metadata !1399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!2095 = metadata !{i32 786478, metadata !2089, metadata !2092, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !1898, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!2096 = metadata !{metadata !2097}
!2097 = metadata !{i32 786689, metadata !2095, metadata !"f", metadata !2092, i32 16777231, metadata !1900, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!2098 = metadata !{i32 786478, metadata !2089, metadata !2092, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !1904, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!2099 = metadata !{metadata !2100}
!2100 = metadata !{i32 786689, metadata !2098, metadata !"f", metadata !2092, i32 16777236, metadata !1906, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!2101 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!2102 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!2103 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!2104 = metadata !{i32 17, i32 0, metadata !17, null}
!2105 = metadata !{i32 18, i32 0, metadata !17, null}
!2106 = metadata !{i32 19, i32 0, metadata !17, null}
!2107 = metadata !{i32 20, i32 0, metadata !17, null}
!2108 = metadata !{i32 22, i32 0, metadata !17, null}
!2109 = metadata !{i32 24, i32 0, metadata !17, null}
!2110 = metadata !{i32 26, i32 0, metadata !17, null}
!2111 = metadata !{i32 29, i32 0, metadata !17, null}
!2112 = metadata !{i32 30, i32 0, metadata !17, null}
!2113 = metadata !{i32 32, i32 0, metadata !2114, null}
!2114 = metadata !{i32 786443, metadata !1, metadata !17, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2115 = metadata !{i32 33, i32 0, metadata !2116, null}
!2116 = metadata !{i32 786443, metadata !1, metadata !2114, i32 32, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2117 = metadata !{i32 34, i32 0, metadata !2116, null}
!2118 = metadata !{i32 38, i32 0, metadata !17, null}
!2119 = metadata !{i32 39, i32 0, metadata !2120, null}
!2120 = metadata !{i32 786443, metadata !1, metadata !17, i32 39, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2121 = metadata !{i32 40, i32 0, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !1, metadata !2120, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2123 = metadata !{i32 41, i32 0, metadata !2122, null}
!2124 = metadata !{i32 44, i32 0, metadata !17, null}
!2125 = metadata !{i32 45, i32 0, metadata !17, null}
!2126 = metadata !{i32 46, i32 0, metadata !17, null}
!2127 = metadata !{i32 56, i32 0, metadata !2128, null}
!2128 = metadata !{i32 786443, metadata !1, metadata !22, i32 56, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2129 = metadata !{i32 57, i32 0, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !1, metadata !2128, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2131 = metadata !{i32 58, i32 0, metadata !2130, null} ; [ DW_TAG_imported_module ]
!2132 = metadata !{i32 60, i32 0, metadata !22, null}
!2133 = metadata !{i32 61, i32 0, metadata !22, null}
!2134 = metadata !{i32 62, i32 0, metadata !22, null}
!2135 = metadata !{i32 63, i32 0, metadata !22, null}
!2136 = metadata !{i32 64, i32 0, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !1, metadata !22, i32 64, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2138 = metadata !{i32 65, i32 0, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !1, metadata !2137, i32 64, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2140 = metadata !{i32 66, i32 0, metadata !2139, null}
!2141 = metadata !{i32 69, i32 0, metadata !2142, null}
!2142 = metadata !{i32 786443, metadata !1, metadata !22, i32 69, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2143 = metadata !{i32 70, i32 0, metadata !2144, null}
!2144 = metadata !{i32 786443, metadata !1, metadata !2142, i32 69, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2145 = metadata !{i32 71, i32 0, metadata !2144, null}
!2146 = metadata !{i32 73, i32 0, metadata !2147, null}
!2147 = metadata !{i32 786443, metadata !1, metadata !22, i32 73, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2148 = metadata !{i32 74, i32 0, metadata !2149, null}
!2149 = metadata !{i32 786443, metadata !1, metadata !2147, i32 73, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2150 = metadata !{i32 75, i32 0, metadata !2149, null}
!2151 = metadata !{i32 78, i32 0, metadata !22, null}
!2152 = metadata !{i32 79, i32 0, metadata !22, null}
!2153 = metadata !{i32 80, i32 0, metadata !22, null}
!2154 = metadata !{i32 85, i32 0, metadata !26, null}
!2155 = metadata !{i32 86, i32 0, metadata !26, null}
!2156 = metadata !{i32 87, i32 0, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !1, metadata !26, i32 87, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2158 = metadata !{i32 88, i32 0, metadata !2159, null}
!2159 = metadata !{i32 786443, metadata !1, metadata !2157, i32 87, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2160 = metadata !{i32 89, i32 0, metadata !2159, null}
!2161 = metadata !{i32 90, i32 0, metadata !2162, null}
!2162 = metadata !{i32 786443, metadata !1, metadata !2157, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2163 = metadata !{i32 91, i32 0, metadata !2164, null}
!2164 = metadata !{i32 786443, metadata !1, metadata !2162, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2165 = metadata !{i32 92, i32 0, metadata !2164, null}
!2166 = metadata !{i32 93, i32 0, metadata !2164, null}
!2167 = metadata !{i32 95, i32 0, metadata !2168, null}
!2168 = metadata !{i32 786443, metadata !1, metadata !2162, i32 94, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2169 = metadata !{i32 96, i32 0, metadata !2168, null}
!2170 = metadata !{i32 97, i32 0, metadata !2171, null}
!2171 = metadata !{i32 786443, metadata !1, metadata !2168, i32 97, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2172 = metadata !{i32 98, i32 0, metadata !2173, null}
!2173 = metadata !{i32 786443, metadata !1, metadata !2171, i32 97, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2174 = metadata !{i32 99, i32 0, metadata !2173, null}
!2175 = metadata !{i32 100, i32 0, metadata !2176, null}
!2176 = metadata !{i32 786443, metadata !1, metadata !2171, i32 99, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/socket_cp_l1_klee_annotated.c]
!2177 = metadata !{i32 103, i32 0, metadata !26, null}
!2178 = metadata !{i32 107, i32 0, metadata !30, null}
!2179 = metadata !{i32 108, i32 0, metadata !30, null}
!2180 = metadata !{i32 109, i32 0, metadata !30, null}
!2181 = metadata !{i32 40, i32 0, metadata !695, metadata !2182}
!2182 = metadata !{i32 74, i32 0, metadata !57, null}
!2183 = metadata !{metadata !2184, metadata !2184, i64 0}
!2184 = metadata !{metadata !"omnipotent char", metadata !2185, i64 0}
!2185 = metadata !{metadata !"Simple C/C++ TBAA"}
!2186 = metadata !{i32 43, i32 0, metadata !2187, metadata !2182}
!2187 = metadata !{i32 786443, metadata !35, metadata !695, i32 43, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2188 = metadata !{i32 46, i32 0, metadata !706, metadata !2182}
!2189 = metadata !{metadata !2190, metadata !2191, i64 0}
!2190 = metadata !{metadata !"", metadata !2191, i64 0, metadata !2192, i64 8, metadata !2192, i64 16, metadata !2191, i64 24, metadata !2192, i64 32, metadata !2191, i64 40, metadata !2192, i64 48, metadata !2192, i64 56, metadata !2192, i64 64, metadat
!2191 = metadata !{metadata !"int", metadata !2184, i64 0}
!2192 = metadata !{metadata !"any pointer", metadata !2184, i64 0}
!2193 = metadata !{i32 47, i32 0, metadata !704, metadata !2182}
!2194 = metadata !{i32 48, i32 0, metadata !703, metadata !2182}
!2195 = metadata !{metadata !2190, metadata !2192, i64 32}
!2196 = metadata !{i32 49, i32 0, metadata !2197, metadata !2182}
!2197 = metadata !{i32 786443, metadata !35, metadata !703, i32 49, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2198 = metadata !{metadata !2199, metadata !2192, i64 16}
!2199 = metadata !{metadata !"", metadata !2191, i64 0, metadata !2192, i64 8, metadata !2192, i64 16}
!2200 = metadata !{metadata !2201, metadata !2202, i64 8}
!2201 = metadata !{metadata !"stat64", metadata !2202, i64 0, metadata !2202, i64 8, metadata !2202, i64 16, metadata !2191, i64 24, metadata !2191, i64 28, metadata !2191, i64 32, metadata !2191, i64 36, metadata !2202, i64 40, metadata !2202, i64 48, m
!2202 = metadata !{metadata !"long", metadata !2184, i64 0}
!2203 = metadata !{metadata !"timespec", metadata !2202, i64 0, metadata !2202, i64 8}
!2204 = metadata !{i32 76, i32 0, metadata !117, null}
!2205 = metadata !{i32 1417, i32 0, metadata !661, metadata !2206}
!2206 = metadata !{i32 1429, i32 0, metadata !642, metadata !2207}
!2207 = metadata !{i32 81, i32 0, metadata !116, null}
!2208 = metadata !{i32 1418, i32 0, metadata !661, metadata !2206}
!2209 = metadata !{i32 1432, i32 0, metadata !651, metadata !2207}
!2210 = metadata !{i32 1433, i32 0, metadata !650, metadata !2207}
!2211 = metadata !{i32 1434, i32 0, metadata !654, metadata !2207}
!2212 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2207}
!2213 = metadata !{i32 786443, metadata !35, metadata !2214, i32 1435, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2214 = metadata !{i32 786443, metadata !35, metadata !654, i32 1434, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2215 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2207}
!2216 = metadata !{i32 786443, metadata !35, metadata !2213, i32 1435, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2217 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2207}
!2218 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2207}
!2219 = metadata !{i32 786443, metadata !35, metadata !2220, i32 1438, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2220 = metadata !{i32 786443, metadata !35, metadata !2213, i32 1438, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2221 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2207}
!2222 = metadata !{i32 1442, i32 0, metadata !653, metadata !2207}
!2223 = metadata !{i32 1443, i32 0, metadata !653, metadata !2207}
!2224 = metadata !{i32 1444, i32 0, metadata !653, metadata !2207}
!2225 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2207}
!2226 = metadata !{i32 786443, metadata !35, metadata !653, i32 1445, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2227 = metadata !{i32 82, i32 0, metadata !2228, null}
!2228 = metadata !{i32 786443, metadata !35, metadata !116, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2229 = metadata !{i32 83, i32 0, metadata !2228, null}
!2230 = metadata !{metadata !2191, metadata !2191, i64 0}
!2231 = metadata !{i32 86, i32 0, metadata !57, null}
!2232 = metadata !{i32 89, i32 0, metadata !118, null}
!2233 = metadata !{metadata !2234, metadata !2191, i64 768}
!2234 = metadata !{metadata !"", metadata !2184, i64 0, metadata !2191, i64 768, metadata !2191, i64 772, metadata !2191, i64 776}
!2235 = metadata !{i32 90, i32 0, metadata !118, null}
!2236 = metadata !{i32 91, i32 0, metadata !118, null}
!2237 = metadata !{i32 133, i32 0, metadata !2238, null}
!2238 = metadata !{i32 786443, metadata !35, metadata !125, i32 133, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2239 = metadata !{i32 134, i32 0, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !35, metadata !2238, i32 134, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2241 = metadata !{metadata !2242, metadata !2191, i64 4}
!2242 = metadata !{metadata !"", metadata !2191, i64 0, metadata !2191, i64 4, metadata !2202, i64 8, metadata !2192, i64 16}
!2243 = metadata !{i32 136, i32 0, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !35, metadata !125, i32 136, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2245 = metadata !{i32 137, i32 0, metadata !2246, null}
!2246 = metadata !{i32 786443, metadata !35, metadata !2244, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2247 = metadata !{i32 138, i32 0, metadata !2246, null}
!2248 = metadata !{i32 141, i32 0, metadata !125, null}
!2249 = metadata !{i32 144, i32 0, metadata !125, null}
!2250 = metadata !{i32 40, i32 0, metadata !695, metadata !2251}
!2251 = metadata !{i32 146, i32 0, metadata !125, null}
!2252 = metadata !{i32 43, i32 0, metadata !2187, metadata !2251}
!2253 = metadata !{i32 46, i32 0, metadata !706, metadata !2251}
!2254 = metadata !{i32 47, i32 0, metadata !704, metadata !2251}
!2255 = metadata !{i32 48, i32 0, metadata !703, metadata !2251}
!2256 = metadata !{i32 49, i32 0, metadata !2197, metadata !2251}
!2257 = metadata !{i32 147, i32 0, metadata !147, null}
!2258 = metadata !{i32 150, i32 0, metadata !2259, null}
!2259 = metadata !{i32 786443, metadata !35, metadata !147, i32 147, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2260 = metadata !{metadata !2242, metadata !2192, i64 16}
!2261 = metadata !{i32 152, i32 0, metadata !2262, null}
!2262 = metadata !{i32 786443, metadata !35, metadata !2259, i32 152, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2263 = metadata !{i32 153, i32 0, metadata !2264, null}
!2264 = metadata !{i32 786443, metadata !35, metadata !2262, i32 152, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2265 = metadata !{i32 154, i32 0, metadata !2264, null}
!2266 = metadata !{i32 168, i32 0, metadata !2267, null}
!2267 = metadata !{i32 786443, metadata !35, metadata !2268, i32 165, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2268 = metadata !{i32 786443, metadata !35, metadata !2259, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2269 = metadata !{i32 169, i32 0, metadata !2267, null}
!2270 = metadata !{i32 170, i32 0, metadata !2267, null}
!2271 = metadata !{i32 99, i32 0, metadata !688, metadata !2272}
!2272 = metadata !{i32 173, i32 0, metadata !2273, null}
!2273 = metadata !{i32 786443, metadata !35, metadata !2259, i32 173, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2274 = metadata !{metadata !2201, metadata !2191, i64 24}
!2275 = metadata !{i32 101, i32 0, metadata !2276, metadata !2272}
!2276 = metadata !{i32 786443, metadata !35, metadata !688, i32 101, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2277 = metadata !{i32 118, i32 0, metadata !2278, metadata !2272}
!2278 = metadata !{i32 786443, metadata !35, metadata !688, i32 118, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2279 = metadata !{i32 105, i32 0, metadata !2280, metadata !2272}
!2280 = metadata !{i32 786443, metadata !35, metadata !688, i32 105, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2281 = metadata !{i32 121, i32 0, metadata !2282, metadata !2272}
!2282 = metadata !{i32 786443, metadata !35, metadata !688, i32 121, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2283 = metadata !{i32 174, i32 0, metadata !2284, null}
!2284 = metadata !{i32 786443, metadata !35, metadata !2273, i32 173, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2285 = metadata !{i32 175, i32 0, metadata !2284, null}
!2286 = metadata !{i32 178, i32 0, metadata !2273, null}
!2287 = metadata !{i32 180, i32 0, metadata !2259, null}
!2288 = metadata !{i32 1417, i32 0, metadata !661, metadata !2289}
!2289 = metadata !{i32 1429, i32 0, metadata !642, metadata !2290}
!2290 = metadata !{i32 181, i32 0, metadata !146, null}
!2291 = metadata !{i32 1418, i32 0, metadata !661, metadata !2289}
!2292 = metadata !{i32 1432, i32 0, metadata !651, metadata !2290}
!2293 = metadata !{i32 1433, i32 0, metadata !650, metadata !2290}
!2294 = metadata !{i32 1434, i32 0, metadata !654, metadata !2290}
!2295 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2290}
!2296 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2290}
!2297 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2290}
!2298 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2290}
!2299 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2290}
!2300 = metadata !{i32 1442, i32 0, metadata !653, metadata !2290}
!2301 = metadata !{i32 1443, i32 0, metadata !653, metadata !2290}
!2302 = metadata !{i32 1444, i32 0, metadata !653, metadata !2290}
!2303 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2290}
!2304 = metadata !{i32 182, i32 0, metadata !2305, null}
!2305 = metadata !{i32 786443, metadata !35, metadata !146, i32 182, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2306 = metadata !{i32 183, i32 0, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !35, metadata !2305, i32 182, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2308 = metadata !{i32 184, i32 0, metadata !2307, null}
!2309 = metadata !{i32 186, i32 0, metadata !146, null}
!2310 = metadata !{metadata !2242, metadata !2191, i64 0}
!2311 = metadata !{i32 190, i32 0, metadata !2312, null}
!2312 = metadata !{i32 786443, metadata !35, metadata !125, i32 190, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2313 = metadata !{i32 189, i32 0, metadata !125, null}
!2314 = metadata !{i32 191, i32 0, metadata !2315, null}
!2315 = metadata !{i32 786443, metadata !35, metadata !2312, i32 190, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2316 = metadata !{i32 192, i32 0, metadata !2315, null}
!2317 = metadata !{i32 193, i32 0, metadata !2318, null}
!2318 = metadata !{i32 786443, metadata !35, metadata !2319, i32 192, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2319 = metadata !{i32 786443, metadata !35, metadata !2312, i32 192, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2320 = metadata !{i32 194, i32 0, metadata !2318, null}
!2321 = metadata !{i32 195, i32 0, metadata !2322, null}
!2322 = metadata !{i32 786443, metadata !35, metadata !2319, i32 194, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2323 = metadata !{i32 199, i32 0, metadata !125, null}
!2324 = metadata !{i32 204, i32 0, metadata !160, null}
!2325 = metadata !{i32 64, i32 0, metadata !687, metadata !2326}
!2326 = metadata !{i32 205, i32 0, metadata !159, null}
!2327 = metadata !{i32 65, i32 0, metadata !686, metadata !2326}
!2328 = metadata !{i32 66, i32 0, metadata !2329, metadata !2326}
!2329 = metadata !{i32 786443, metadata !35, metadata !686, i32 66, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2330 = metadata !{i32 207, i32 0, metadata !2331, null}
!2331 = metadata !{i32 786443, metadata !35, metadata !159, i32 207, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2332 = metadata !{i32 208, i32 0, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !35, metadata !2331, i32 207, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2334 = metadata !{i32 209, i32 0, metadata !2333, null}
!2335 = metadata !{i32 210, i32 0, metadata !2336, null}
!2336 = metadata !{i32 786443, metadata !35, metadata !2331, i32 210, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2337 = metadata !{i32 211, i32 0, metadata !2338, null}
!2338 = metadata !{i32 786443, metadata !35, metadata !2336, i32 210, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2339 = metadata !{i32 212, i32 0, metadata !2338, null}
!2340 = metadata !{i32 213, i32 0, metadata !2338, null}
!2341 = metadata !{i32 215, i32 0, metadata !159, null}
!2342 = metadata !{i32 216, i32 0, metadata !159, null}
!2343 = metadata !{i32 40, i32 0, metadata !695, metadata !2344}
!2344 = metadata !{i32 218, i32 0, metadata !2345, null}
!2345 = metadata !{i32 786443, metadata !35, metadata !148, i32 218, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2346 = metadata !{i32 43, i32 0, metadata !2187, metadata !2344}
!2347 = metadata !{i32 46, i32 0, metadata !706, metadata !2344}
!2348 = metadata !{i32 47, i32 0, metadata !704, metadata !2344}
!2349 = metadata !{i32 48, i32 0, metadata !703, metadata !2344}
!2350 = metadata !{i32 49, i32 0, metadata !2197, metadata !2344}
!2351 = metadata !{i32 220, i32 0, metadata !2352, null}
!2352 = metadata !{i32 786443, metadata !35, metadata !2345, i32 218, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2353 = metadata !{i32 223, i32 0, metadata !2354, null}
!2354 = metadata !{i32 786443, metadata !35, metadata !148, i32 223, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2355 = metadata !{i32 224, i32 0, metadata !2356, null}
!2356 = metadata !{i32 786443, metadata !35, metadata !2354, i32 224, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2357 = metadata !{i32 226, i32 0, metadata !2358, null}
!2358 = metadata !{i32 786443, metadata !35, metadata !148, i32 226, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2359 = metadata !{i32 227, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !35, metadata !2358, i32 226, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2361 = metadata !{i32 228, i32 0, metadata !2360, null}
!2362 = metadata !{i32 231, i32 0, metadata !148, null}
!2363 = metadata !{i32 234, i32 0, metadata !148, null}
!2364 = metadata !{i32 1417, i32 0, metadata !661, metadata !2365}
!2365 = metadata !{i32 1429, i32 0, metadata !642, metadata !2366}
!2366 = metadata !{i32 236, i32 0, metadata !148, null}
!2367 = metadata !{i32 1418, i32 0, metadata !661, metadata !2365}
!2368 = metadata !{i32 1432, i32 0, metadata !651, metadata !2366}
!2369 = metadata !{i32 1433, i32 0, metadata !650, metadata !2366}
!2370 = metadata !{i32 1434, i32 0, metadata !654, metadata !2366}
!2371 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2366}
!2372 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2366}
!2373 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2366}
!2374 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2366}
!2375 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2366}
!2376 = metadata !{i32 1442, i32 0, metadata !653, metadata !2366}
!2377 = metadata !{i32 1443, i32 0, metadata !653, metadata !2366}
!2378 = metadata !{i32 1444, i32 0, metadata !653, metadata !2366}
!2379 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2366}
!2380 = metadata !{i32 237, i32 0, metadata !2381, null}
!2381 = metadata !{i32 786443, metadata !35, metadata !148, i32 237, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2382 = metadata !{i32 238, i32 0, metadata !2383, null}
!2383 = metadata !{i32 786443, metadata !35, metadata !2381, i32 237, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2384 = metadata !{i32 239, i32 0, metadata !2383, null}
!2385 = metadata !{i32 242, i32 0, metadata !148, null}
!2386 = metadata !{i32 243, i32 0, metadata !148, null}
!2387 = metadata !{i32 244, i32 0, metadata !2388, null}
!2388 = metadata !{i32 786443, metadata !35, metadata !148, i32 244, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2389 = metadata !{i32 245, i32 0, metadata !2390, null}
!2390 = metadata !{i32 786443, metadata !35, metadata !2388, i32 244, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2391 = metadata !{i32 246, i32 0, metadata !2390, null}
!2392 = metadata !{i32 247, i32 0, metadata !2393, null}
!2393 = metadata !{i32 786443, metadata !35, metadata !2394, i32 246, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2394 = metadata !{i32 786443, metadata !35, metadata !2388, i32 246, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2395 = metadata !{i32 248, i32 0, metadata !2393, null}
!2396 = metadata !{i32 249, i32 0, metadata !2397, null}
!2397 = metadata !{i32 786443, metadata !35, metadata !2394, i32 248, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2398 = metadata !{i32 253, i32 0, metadata !148, null}
!2399 = metadata !{i32 40, i32 0, metadata !695, metadata !2400}
!2400 = metadata !{i32 257, i32 0, metadata !162, null}
!2401 = metadata !{i32 43, i32 0, metadata !2187, metadata !2400}
!2402 = metadata !{i32 46, i32 0, metadata !706, metadata !2400}
!2403 = metadata !{i32 47, i32 0, metadata !704, metadata !2400}
!2404 = metadata !{i32 48, i32 0, metadata !703, metadata !2400}
!2405 = metadata !{i32 49, i32 0, metadata !2197, metadata !2400}
!2406 = metadata !{i32 259, i32 0, metadata !2407, null}
!2407 = metadata !{i32 786443, metadata !35, metadata !162, i32 259, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2408 = metadata !{i32 261, i32 0, metadata !2409, null}
!2409 = metadata !{i32 786443, metadata !35, metadata !2407, i32 259, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2410 = metadata !{metadata !2411, metadata !2202, i64 0}
!2411 = metadata !{metadata !"timeval", metadata !2202, i64 0, metadata !2202, i64 8}
!2412 = metadata !{metadata !2201, metadata !2202, i64 72}
!2413 = metadata !{i32 262, i32 0, metadata !2409, null}
!2414 = metadata !{metadata !2201, metadata !2202, i64 88}
!2415 = metadata !{i32 267, i32 0, metadata !2409, null}
!2416 = metadata !{i32 1417, i32 0, metadata !661, metadata !2417}
!2417 = metadata !{i32 1429, i32 0, metadata !642, metadata !2418}
!2418 = metadata !{i32 269, i32 0, metadata !162, null}
!2419 = metadata !{i32 1418, i32 0, metadata !661, metadata !2417}
!2420 = metadata !{i32 1432, i32 0, metadata !651, metadata !2418}
!2421 = metadata !{i32 1433, i32 0, metadata !650, metadata !2418}
!2422 = metadata !{i32 1434, i32 0, metadata !654, metadata !2418}
!2423 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2418}
!2424 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2418}
!2425 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2418}
!2426 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2418}
!2427 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2418}
!2428 = metadata !{i32 1442, i32 0, metadata !653, metadata !2418}
!2429 = metadata !{i32 1443, i32 0, metadata !653, metadata !2418}
!2430 = metadata !{i32 1444, i32 0, metadata !653, metadata !2418}
!2431 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2418}
!2432 = metadata !{i32 270, i32 0, metadata !2433, null}
!2433 = metadata !{i32 786443, metadata !35, metadata !162, i32 270, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2434 = metadata !{i32 271, i32 0, metadata !2433, null}
!2435 = metadata !{i32 274, i32 0, metadata !162, null}
!2436 = metadata !{i32 278, i32 0, metadata !187, null}
!2437 = metadata !{i32 64, i32 0, metadata !687, metadata !2438}
!2438 = metadata !{i32 279, i32 0, metadata !186, null}
!2439 = metadata !{i32 65, i32 0, metadata !686, metadata !2438}
!2440 = metadata !{i32 66, i32 0, metadata !2329, metadata !2438}
!2441 = metadata !{i32 281, i32 0, metadata !2442, null}
!2442 = metadata !{i32 786443, metadata !35, metadata !186, i32 281, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2443 = metadata !{i32 282, i32 0, metadata !2444, null}
!2444 = metadata !{i32 786443, metadata !35, metadata !2442, i32 281, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2445 = metadata !{i32 283, i32 0, metadata !2444, null}
!2446 = metadata !{i32 284, i32 0, metadata !2447, null}
!2447 = metadata !{i32 786443, metadata !35, metadata !2442, i32 284, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2448 = metadata !{i32 285, i32 0, metadata !2449, null}
!2449 = metadata !{i32 786443, metadata !35, metadata !2447, i32 284, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2450 = metadata !{i32 286, i32 0, metadata !2449, null}
!2451 = metadata !{i32 287, i32 0, metadata !2449, null}
!2452 = metadata !{i32 289, i32 0, metadata !186, null}
!2453 = metadata !{i32 290, i32 0, metadata !186, null}
!2454 = metadata !{i32 40, i32 0, metadata !695, metadata !2455}
!2455 = metadata !{i32 291, i32 0, metadata !2456, null}
!2456 = metadata !{i32 786443, metadata !35, metadata !178, i32 291, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2457 = metadata !{i32 43, i32 0, metadata !2187, metadata !2455}
!2458 = metadata !{i32 46, i32 0, metadata !706, metadata !2455}
!2459 = metadata !{i32 47, i32 0, metadata !704, metadata !2455}
!2460 = metadata !{i32 48, i32 0, metadata !703, metadata !2455}
!2461 = metadata !{i32 49, i32 0, metadata !2197, metadata !2455}
!2462 = metadata !{i32 292, i32 0, metadata !2463, null}
!2463 = metadata !{i32 786443, metadata !35, metadata !2456, i32 291, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2464 = metadata !{i32 295, i32 0, metadata !178, null}
!2465 = metadata !{i32 1417, i32 0, metadata !661, metadata !2466}
!2466 = metadata !{i32 1429, i32 0, metadata !642, metadata !2467}
!2467 = metadata !{i32 296, i32 0, metadata !178, null}
!2468 = metadata !{i32 1418, i32 0, metadata !661, metadata !2466}
!2469 = metadata !{i32 1432, i32 0, metadata !651, metadata !2467}
!2470 = metadata !{i32 1433, i32 0, metadata !650, metadata !2467}
!2471 = metadata !{i32 1434, i32 0, metadata !654, metadata !2467}
!2472 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2467}
!2473 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2467}
!2474 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2467}
!2475 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2467}
!2476 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2467}
!2477 = metadata !{i32 1442, i32 0, metadata !653, metadata !2467}
!2478 = metadata !{i32 1443, i32 0, metadata !653, metadata !2467}
!2479 = metadata !{i32 1444, i32 0, metadata !653, metadata !2467}
!2480 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2467}
!2481 = metadata !{i32 298, i32 0, metadata !2482, null}
!2482 = metadata !{i32 786443, metadata !35, metadata !178, i32 298, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2483 = metadata !{i32 299, i32 0, metadata !2482, null}
!2484 = metadata !{i32 301, i32 0, metadata !178, null}
!2485 = metadata !{i32 308, i32 0, metadata !189, null}
!2486 = metadata !{i32 64, i32 0, metadata !687, metadata !2487}
!2487 = metadata !{i32 310, i32 0, metadata !189, null}
!2488 = metadata !{i32 65, i32 0, metadata !686, metadata !2487}
!2489 = metadata !{i32 66, i32 0, metadata !2329, metadata !2487}
!2490 = metadata !{i32 311, i32 0, metadata !2491, null}
!2491 = metadata !{i32 786443, metadata !35, metadata !189, i32 311, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2492 = metadata !{i32 312, i32 0, metadata !2493, null}
!2493 = metadata !{i32 786443, metadata !35, metadata !2491, i32 311, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2494 = metadata !{i32 313, i32 0, metadata !2493, null}
!2495 = metadata !{i32 316, i32 0, metadata !2496, null}
!2496 = metadata !{i32 786443, metadata !35, metadata !189, i32 316, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2497 = metadata !{metadata !2190, metadata !2191, i64 40}
!2498 = metadata !{metadata !2190, metadata !2192, i64 64}
!2499 = metadata !{i32 317, i32 0, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !35, metadata !2496, i32 316, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2501 = metadata !{i32 318, i32 0, metadata !2500, null}
!2502 = metadata !{i32 319, i32 0, metadata !2500, null}
!2503 = metadata !{i32 330, i32 0, metadata !189, null}
!2504 = metadata !{i32 332, i32 0, metadata !189, null}
!2505 = metadata !{i32 333, i32 0, metadata !189, null}
!2506 = metadata !{i32 339, i32 0, metadata !196, null}
!2507 = metadata !{i32 341, i32 0, metadata !2508, null}
!2508 = metadata !{i32 786443, metadata !35, metadata !196, i32 341, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2509 = metadata !{i32 344, i32 0, metadata !2510, null}
!2510 = metadata !{i32 786443, metadata !35, metadata !196, i32 344, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2511 = metadata !{i32 345, i32 0, metadata !2512, null}
!2512 = metadata !{i32 786443, metadata !35, metadata !2510, i32 344, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2513 = metadata !{i32 346, i32 0, metadata !2512, null}
!2514 = metadata !{i32 64, i32 0, metadata !687, metadata !2515}
!2515 = metadata !{i32 349, i32 0, metadata !196, null}
!2516 = metadata !{i32 65, i32 0, metadata !686, metadata !2515}
!2517 = metadata !{i32 66, i32 0, metadata !2329, metadata !2515}
!2518 = metadata !{i32 351, i32 0, metadata !2519, null}
!2519 = metadata !{i32 786443, metadata !35, metadata !196, i32 351, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2520 = metadata !{i32 352, i32 0, metadata !2521, null}
!2521 = metadata !{i32 786443, metadata !35, metadata !2519, i32 351, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2522 = metadata !{i32 353, i32 0, metadata !2521, null}
!2523 = metadata !{i32 356, i32 0, metadata !2524, null}
!2524 = metadata !{i32 786443, metadata !35, metadata !196, i32 356, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2525 = metadata !{metadata !2190, metadata !2192, i64 48}
!2526 = metadata !{i32 357, i32 0, metadata !2527, null}
!2527 = metadata !{i32 786443, metadata !35, metadata !2524, i32 356, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2528 = metadata !{i32 358, i32 0, metadata !2527, null}
!2529 = metadata !{i32 359, i32 0, metadata !2527, null}
!2530 = metadata !{i32 362, i32 0, metadata !210, null}
!2531 = metadata !{i32 1417, i32 0, metadata !661, metadata !2532}
!2532 = metadata !{i32 365, i32 0, metadata !209, null}
!2533 = metadata !{i32 1418, i32 0, metadata !661, metadata !2532}
!2534 = metadata !{i32 1423, i32 0, metadata !655, metadata !2535}
!2535 = metadata !{i32 366, i32 0, metadata !209, null}
!2536 = metadata !{i32 1424, i32 0, metadata !655, metadata !2535}
!2537 = metadata !{i32 370, i32 0, metadata !209, null}
!2538 = metadata !{i32 371, i32 0, metadata !2539, null}
!2539 = metadata !{i32 786443, metadata !35, metadata !209, i32 371, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2540 = metadata !{i32 372, i32 0, metadata !2539, null}
!2541 = metadata !{i32 374, i32 0, metadata !2539, null}
!2542 = metadata !{metadata !2242, metadata !2202, i64 8}
!2543 = metadata !{i32 376, i32 0, metadata !2544, null}
!2544 = metadata !{i32 786443, metadata !35, metadata !209, i32 376, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2545 = metadata !{i32 377, i32 0, metadata !2546, null}
!2546 = metadata !{i32 786443, metadata !35, metadata !2544, i32 376, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2547 = metadata !{i32 378, i32 0, metadata !2546, null}
!2548 = metadata !{i32 381, i32 0, metadata !2549, null}
!2549 = metadata !{i32 786443, metadata !35, metadata !209, i32 381, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2550 = metadata !{i32 383, i32 0, metadata !209, null}
!2551 = metadata !{i32 382, i32 0, metadata !2549, null}
!2552 = metadata !{i32 386, i32 0, metadata !2553, null}
!2553 = metadata !{i32 786443, metadata !35, metadata !210, i32 385, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2554 = metadata !{i32 387, i32 0, metadata !2555, null}
!2555 = metadata !{i32 786443, metadata !35, metadata !2553, i32 387, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2556 = metadata !{metadata !2199, metadata !2191, i64 0}
!2557 = metadata !{i32 391, i32 0, metadata !2558, null}
!2558 = metadata !{i32 786443, metadata !35, metadata !2553, i32 391, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2559 = metadata !{i32 392, i32 0, metadata !2560, null}
!2560 = metadata !{i32 786443, metadata !35, metadata !2558, i32 391, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2561 = metadata !{i32 395, i32 0, metadata !2553, null}
!2562 = metadata !{metadata !2199, metadata !2192, i64 8}
!2563 = metadata !{i32 396, i32 0, metadata !2553, null}
!2564 = metadata !{i32 398, i32 0, metadata !2553, null}
!2565 = metadata !{i32 400, i32 0, metadata !196, null}
!2566 = metadata !{i32 407, i32 0, metadata !211, null}
!2567 = metadata !{i32 64, i32 0, metadata !687, metadata !2568}
!2568 = metadata !{i32 409, i32 0, metadata !211, null}
!2569 = metadata !{i32 65, i32 0, metadata !686, metadata !2568}
!2570 = metadata !{i32 66, i32 0, metadata !2329, metadata !2568}
!2571 = metadata !{i32 411, i32 0, metadata !2572, null}
!2572 = metadata !{i32 786443, metadata !35, metadata !211, i32 411, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2573 = metadata !{i32 412, i32 0, metadata !2574, null}
!2574 = metadata !{i32 786443, metadata !35, metadata !2572, i32 411, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2575 = metadata !{i32 413, i32 0, metadata !2574, null}
!2576 = metadata !{i32 416, i32 0, metadata !2577, null}
!2577 = metadata !{i32 786443, metadata !35, metadata !211, i32 416, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2578 = metadata !{metadata !2190, metadata !2192, i64 56}
!2579 = metadata !{i32 417, i32 0, metadata !2580, null}
!2580 = metadata !{i32 786443, metadata !35, metadata !2577, i32 416, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2581 = metadata !{i32 418, i32 0, metadata !2580, null}
!2582 = metadata !{i32 419, i32 0, metadata !2580, null}
!2583 = metadata !{i32 422, i32 0, metadata !223, null}
!2584 = metadata !{i32 1417, i32 0, metadata !661, metadata !2585}
!2585 = metadata !{i32 425, i32 0, metadata !222, null}
!2586 = metadata !{i32 1418, i32 0, metadata !661, metadata !2585}
!2587 = metadata !{i32 1423, i32 0, metadata !655, metadata !2588}
!2588 = metadata !{i32 426, i32 0, metadata !222, null}
!2589 = metadata !{i32 1424, i32 0, metadata !655, metadata !2588}
!2590 = metadata !{i32 430, i32 0, metadata !222, null}
!2591 = metadata !{i32 431, i32 0, metadata !2592, null}
!2592 = metadata !{i32 786443, metadata !35, metadata !222, i32 431, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2593 = metadata !{i32 432, i32 0, metadata !2592, null}
!2594 = metadata !{i32 433, i32 0, metadata !2592, null}
!2595 = metadata !{i32 435, i32 0, metadata !2596, null}
!2596 = metadata !{i32 786443, metadata !35, metadata !222, i32 435, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2597 = metadata !{i32 436, i32 0, metadata !2598, null}
!2598 = metadata !{i32 786443, metadata !35, metadata !2596, i32 435, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2599 = metadata !{i32 437, i32 0, metadata !2598, null}
!2600 = metadata !{i32 440, i32 0, metadata !222, null}
!2601 = metadata !{i32 441, i32 0, metadata !2602, null}
!2602 = metadata !{i32 786443, metadata !35, metadata !222, i32 441, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2603 = metadata !{i32 444, i32 0, metadata !222, null}
!2604 = metadata !{i32 442, i32 0, metadata !2602, null}
!2605 = metadata !{i32 449, i32 0, metadata !2606, null}
!2606 = metadata !{i32 786443, metadata !35, metadata !225, i32 449, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2607 = metadata !{i32 452, i32 0, metadata !2608, null}
!2608 = metadata !{i32 786443, metadata !35, metadata !2609, i32 452, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2609 = metadata !{i32 786443, metadata !35, metadata !2606, i32 451, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2610 = metadata !{metadata !2234, metadata !2191, i64 776}
!2611 = metadata !{i32 453, i32 0, metadata !2608, null}
!2612 = metadata !{i32 455, i32 0, metadata !2613, null}
!2613 = metadata !{i32 786443, metadata !35, metadata !2614, i32 455, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2614 = metadata !{i32 786443, metadata !35, metadata !2608, i32 454, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2615 = metadata !{i32 456, i32 0, metadata !2613, null}
!2616 = metadata !{i32 460, i32 0, metadata !2617, null}
!2617 = metadata !{i32 786443, metadata !35, metadata !225, i32 460, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2618 = metadata !{i32 461, i32 0, metadata !2617, null}
!2619 = metadata !{i32 463, i32 0, metadata !2620, null}
!2620 = metadata !{i32 786443, metadata !35, metadata !225, i32 463, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2621 = metadata !{i32 464, i32 0, metadata !2620, null}
!2622 = metadata !{i32 466, i32 0, metadata !2623, null}
!2623 = metadata !{i32 786443, metadata !35, metadata !225, i32 466, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2624 = metadata !{metadata !2190, metadata !2192, i64 16}
!2625 = metadata !{i32 467, i32 0, metadata !2623, null}
!2626 = metadata !{metadata !2190, metadata !2191, i64 24}
!2627 = metadata !{i32 469, i32 0, metadata !225, null}
!2628 = metadata !{i32 470, i32 0, metadata !225, null}
!2629 = metadata !{i32 472, i32 0, metadata !211, null}
!2630 = metadata !{i32 64, i32 0, metadata !687, metadata !2631}
!2631 = metadata !{i32 477, i32 0, metadata !226, null}
!2632 = metadata !{i32 65, i32 0, metadata !686, metadata !2631}
!2633 = metadata !{i32 66, i32 0, metadata !2329, metadata !2631}
!2634 = metadata !{i32 479, i32 0, metadata !2635, null}
!2635 = metadata !{i32 786443, metadata !35, metadata !226, i32 479, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2636 = metadata !{i32 480, i32 0, metadata !2637, null}
!2637 = metadata !{i32 786443, metadata !35, metadata !2635, i32 479, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2638 = metadata !{i32 481, i32 0, metadata !2637, null}
!2639 = metadata !{i32 484, i32 0, metadata !2640, null}
!2640 = metadata !{i32 786443, metadata !35, metadata !226, i32 484, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2641 = metadata !{i32 491, i32 0, metadata !2642, null}
!2642 = metadata !{i32 786443, metadata !35, metadata !2643, i32 491, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2643 = metadata !{i32 786443, metadata !35, metadata !2640, i32 484, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2644 = metadata !{i32 492, i32 0, metadata !2645, null}
!2645 = metadata !{i32 786443, metadata !35, metadata !2642, i32 491, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2646 = metadata !{i32 493, i32 0, metadata !2645, null}
!2647 = metadata !{i32 494, i32 0, metadata !2648, null}
!2648 = metadata !{i32 786443, metadata !35, metadata !2642, i32 493, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2649 = metadata !{i32 498, i32 0, metadata !2650, null}
!2650 = metadata !{i32 786443, metadata !35, metadata !2648, i32 498, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2651 = metadata !{i32 499, i32 0, metadata !2652, null}
!2652 = metadata !{i32 786443, metadata !35, metadata !2650, i32 498, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2653 = metadata !{i32 500, i32 0, metadata !2652, null}
!2654 = metadata !{i32 501, i32 0, metadata !2652, null}
!2655 = metadata !{i32 504, i32 0, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !35, metadata !2643, i32 504, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2657 = metadata !{i32 505, i32 0, metadata !2658, null}
!2658 = metadata !{i32 786443, metadata !35, metadata !2656, i32 504, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2659 = metadata !{i32 506, i32 0, metadata !2658, null}
!2660 = metadata !{i32 509, i32 0, metadata !2643, null}
!2661 = metadata !{i32 510, i32 0, metadata !2643, null}
!2662 = metadata !{i32 513, i32 0, metadata !226, null}
!2663 = metadata !{i32 515, i32 0, metadata !2664, null}
!2664 = metadata !{i32 786443, metadata !35, metadata !226, i32 513, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2665 = metadata !{i32 516, i32 0, metadata !2664, null}
!2666 = metadata !{i32 518, i32 0, metadata !2667, null}
!2667 = metadata !{i32 786443, metadata !35, metadata !2664, i32 517, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2668 = metadata !{i32 519, i32 0, metadata !2667, null}
!2669 = metadata !{i32 523, i32 0, metadata !2670, null}
!2670 = metadata !{i32 786443, metadata !35, metadata !226, i32 523, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2671 = metadata !{i32 524, i32 0, metadata !2672, null}
!2672 = metadata !{i32 786443, metadata !35, metadata !2670, i32 523, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2673 = metadata !{i32 525, i32 0, metadata !2672, null}
!2674 = metadata !{i32 528, i32 0, metadata !226, null}
!2675 = metadata !{i32 529, i32 0, metadata !226, null}
!2676 = metadata !{i32 530, i32 0, metadata !226, null}
!2677 = metadata !{i32 40, i32 0, metadata !695, metadata !2678}
!2678 = metadata !{i32 533, i32 0, metadata !235, null}
!2679 = metadata !{i32 43, i32 0, metadata !2187, metadata !2678}
!2680 = metadata !{i32 46, i32 0, metadata !706, metadata !2678}
!2681 = metadata !{i32 47, i32 0, metadata !704, metadata !2678}
!2682 = metadata !{i32 48, i32 0, metadata !703, metadata !2678}
!2683 = metadata !{i32 49, i32 0, metadata !2197, metadata !2678}
!2684 = metadata !{i32 534, i32 0, metadata !2685, null}
!2685 = metadata !{i32 786443, metadata !35, metadata !235, i32 534, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2686 = metadata !{i32 535, i32 0, metadata !2687, null}
!2687 = metadata !{i32 786443, metadata !35, metadata !2685, i32 534, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2688 = metadata !{i32 536, i32 0, metadata !2687, null}
!2689 = metadata !{i32 1417, i32 0, metadata !661, metadata !2690}
!2690 = metadata !{i32 1429, i32 0, metadata !642, metadata !2691}
!2691 = metadata !{i32 541, i32 0, metadata !243, null}
!2692 = metadata !{i32 1418, i32 0, metadata !661, metadata !2690}
!2693 = metadata !{i32 1432, i32 0, metadata !651, metadata !2691}
!2694 = metadata !{i32 1433, i32 0, metadata !650, metadata !2691}
!2695 = metadata !{i32 1434, i32 0, metadata !654, metadata !2691}
!2696 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2691}
!2697 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2691}
!2698 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2691}
!2699 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2691}
!2700 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2691}
!2701 = metadata !{i32 1442, i32 0, metadata !653, metadata !2691}
!2702 = metadata !{i32 1443, i32 0, metadata !653, metadata !2691}
!2703 = metadata !{i32 1444, i32 0, metadata !653, metadata !2691}
!2704 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2691}
!2705 = metadata !{i32 545, i32 0, metadata !2706, null}
!2706 = metadata !{i32 786443, metadata !35, metadata !243, i32 545, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2707 = metadata !{i32 546, i32 0, metadata !2706, null}
!2708 = metadata !{i32 549, i32 0, metadata !235, null}
!2709 = metadata !{i32 552, i32 0, metadata !274, null}
!2710 = metadata !{i32 64, i32 0, metadata !687, metadata !2711}
!2711 = metadata !{i32 553, i32 0, metadata !273, null}
!2712 = metadata !{i32 65, i32 0, metadata !686, metadata !2711}
!2713 = metadata !{i32 66, i32 0, metadata !2329, metadata !2711}
!2714 = metadata !{i32 555, i32 0, metadata !2715, null}
!2715 = metadata !{i32 786443, metadata !35, metadata !273, i32 555, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2716 = metadata !{i32 556, i32 0, metadata !2717, null}
!2717 = metadata !{i32 786443, metadata !35, metadata !2715, i32 555, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2718 = metadata !{i32 557, i32 0, metadata !2717, null}
!2719 = metadata !{i32 558, i32 0, metadata !2720, null}
!2720 = metadata !{i32 786443, metadata !35, metadata !2715, i32 558, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2721 = metadata !{i32 559, i32 0, metadata !2722, null}
!2722 = metadata !{i32 786443, metadata !35, metadata !2720, i32 558, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2723 = metadata !{i32 560, i32 0, metadata !2722, null}
!2724 = metadata !{i32 561, i32 0, metadata !2722, null}
!2725 = metadata !{i32 563, i32 0, metadata !273, null}
!2726 = metadata !{i32 564, i32 0, metadata !273, null}
!2727 = metadata !{i32 40, i32 0, metadata !695, metadata !2728}
!2728 = metadata !{i32 565, i32 0, metadata !244, null}
!2729 = metadata !{i32 43, i32 0, metadata !2187, metadata !2728}
!2730 = metadata !{i32 46, i32 0, metadata !706, metadata !2728}
!2731 = metadata !{i32 47, i32 0, metadata !704, metadata !2728}
!2732 = metadata !{i32 48, i32 0, metadata !703, metadata !2728}
!2733 = metadata !{i32 49, i32 0, metadata !2197, metadata !2728}
!2734 = metadata !{i32 566, i32 0, metadata !2735, null}
!2735 = metadata !{i32 786443, metadata !35, metadata !244, i32 566, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2736 = metadata !{i32 567, i32 0, metadata !2737, null}
!2737 = metadata !{i32 786443, metadata !35, metadata !2735, i32 566, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2738 = metadata !{i32 568, i32 0, metadata !2737, null}
!2739 = metadata !{i32 572, i32 0, metadata !244, null}
!2740 = metadata !{i32 1417, i32 0, metadata !661, metadata !2741}
!2741 = metadata !{i32 1429, i32 0, metadata !642, metadata !2742}
!2742 = metadata !{i32 573, i32 0, metadata !244, null}
!2743 = metadata !{i32 1418, i32 0, metadata !661, metadata !2741}
!2744 = metadata !{i32 1432, i32 0, metadata !651, metadata !2742}
!2745 = metadata !{i32 1433, i32 0, metadata !650, metadata !2742}
!2746 = metadata !{i32 1434, i32 0, metadata !654, metadata !2742}
!2747 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2742}
!2748 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2742}
!2749 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2742}
!2750 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2742}
!2751 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2742}
!2752 = metadata !{i32 1442, i32 0, metadata !653, metadata !2742}
!2753 = metadata !{i32 1443, i32 0, metadata !653, metadata !2742}
!2754 = metadata !{i32 1444, i32 0, metadata !653, metadata !2742}
!2755 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2742}
!2756 = metadata !{i32 581, i32 0, metadata !2757, null}
!2757 = metadata !{i32 786443, metadata !35, metadata !244, i32 581, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2758 = metadata !{i32 582, i32 0, metadata !2757, null}
!2759 = metadata !{i32 584, i32 0, metadata !244, null}
!2760 = metadata !{i32 40, i32 0, metadata !695, metadata !2761}
!2761 = metadata !{i32 588, i32 0, metadata !277, null}
!2762 = metadata !{i32 43, i32 0, metadata !2187, metadata !2761}
!2763 = metadata !{i32 46, i32 0, metadata !706, metadata !2761}
!2764 = metadata !{i32 47, i32 0, metadata !704, metadata !2761}
!2765 = metadata !{i32 48, i32 0, metadata !703, metadata !2761}
!2766 = metadata !{i32 49, i32 0, metadata !2197, metadata !2761}
!2767 = metadata !{i32 589, i32 0, metadata !2768, null}
!2768 = metadata !{i32 786443, metadata !35, metadata !277, i32 589, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2769 = metadata !{i32 590, i32 0, metadata !2770, null}
!2770 = metadata !{i32 786443, metadata !35, metadata !2768, i32 589, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2771 = metadata !{i32 591, i32 0, metadata !2770, null}
!2772 = metadata !{i32 1417, i32 0, metadata !661, metadata !2773}
!2773 = metadata !{i32 1429, i32 0, metadata !642, metadata !2774}
!2774 = metadata !{i32 596, i32 0, metadata !283, null}
!2775 = metadata !{i32 1418, i32 0, metadata !661, metadata !2773}
!2776 = metadata !{i32 1432, i32 0, metadata !651, metadata !2774}
!2777 = metadata !{i32 1433, i32 0, metadata !650, metadata !2774}
!2778 = metadata !{i32 1434, i32 0, metadata !654, metadata !2774}
!2779 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2774}
!2780 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2774}
!2781 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2774}
!2782 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2774}
!2783 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2774}
!2784 = metadata !{i32 1442, i32 0, metadata !653, metadata !2774}
!2785 = metadata !{i32 1443, i32 0, metadata !653, metadata !2774}
!2786 = metadata !{i32 1444, i32 0, metadata !653, metadata !2774}
!2787 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2774}
!2788 = metadata !{i32 600, i32 0, metadata !2789, null}
!2789 = metadata !{i32 786443, metadata !35, metadata !283, i32 600, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2790 = metadata !{i32 601, i32 0, metadata !2789, null}
!2791 = metadata !{i32 604, i32 0, metadata !277, null}
!2792 = metadata !{i32 40, i32 0, metadata !695, metadata !2793}
!2793 = metadata !{i32 607, i32 0, metadata !284, null}
!2794 = metadata !{i32 43, i32 0, metadata !2187, metadata !2793}
!2795 = metadata !{i32 46, i32 0, metadata !706, metadata !2793}
!2796 = metadata !{i32 47, i32 0, metadata !704, metadata !2793}
!2797 = metadata !{i32 48, i32 0, metadata !703, metadata !2793}
!2798 = metadata !{i32 49, i32 0, metadata !2197, metadata !2793}
!2799 = metadata !{i32 609, i32 0, metadata !2800, null}
!2800 = metadata !{i32 786443, metadata !35, metadata !284, i32 609, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2801 = metadata !{i32 611, i32 0, metadata !2802, null}
!2802 = metadata !{i32 786443, metadata !35, metadata !2800, i32 609, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2803 = metadata !{i32 612, i32 0, metadata !2802, null}
!2804 = metadata !{i32 613, i32 0, metadata !2802, null}
!2805 = metadata !{i32 1417, i32 0, metadata !661, metadata !2806}
!2806 = metadata !{i32 1429, i32 0, metadata !642, metadata !2807}
!2807 = metadata !{i32 617, i32 0, metadata !291, null}
!2808 = metadata !{i32 1418, i32 0, metadata !661, metadata !2806}
!2809 = metadata !{i32 1432, i32 0, metadata !651, metadata !2807}
!2810 = metadata !{i32 1433, i32 0, metadata !650, metadata !2807}
!2811 = metadata !{i32 1434, i32 0, metadata !654, metadata !2807}
!2812 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2807}
!2813 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2807}
!2814 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2807}
!2815 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2807}
!2816 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2807}
!2817 = metadata !{i32 1442, i32 0, metadata !653, metadata !2807}
!2818 = metadata !{i32 1443, i32 0, metadata !653, metadata !2807}
!2819 = metadata !{i32 1444, i32 0, metadata !653, metadata !2807}
!2820 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2807}
!2821 = metadata !{i32 618, i32 0, metadata !2822, null}
!2822 = metadata !{i32 786443, metadata !35, metadata !291, i32 618, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2823 = metadata !{i32 619, i32 0, metadata !2822, null}
!2824 = metadata !{i32 622, i32 0, metadata !284, null}
!2825 = metadata !{i32 64, i32 0, metadata !687, metadata !2826}
!2826 = metadata !{i32 625, i32 0, metadata !292, null}
!2827 = metadata !{i32 65, i32 0, metadata !686, metadata !2826}
!2828 = metadata !{i32 66, i32 0, metadata !2329, metadata !2826}
!2829 = metadata !{i32 627, i32 0, metadata !2830, null}
!2830 = metadata !{i32 786443, metadata !35, metadata !292, i32 627, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2831 = metadata !{i32 628, i32 0, metadata !2832, null}
!2832 = metadata !{i32 786443, metadata !35, metadata !2830, i32 627, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2833 = metadata !{i32 629, i32 0, metadata !2832, null}
!2834 = metadata !{i32 632, i32 0, metadata !298, null}
!2835 = metadata !{i32 633, i32 0, metadata !2836, null}
!2836 = metadata !{i32 786443, metadata !35, metadata !298, i32 632, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2837 = metadata !{i32 634, i32 0, metadata !2836, null}
!2838 = metadata !{i32 635, i32 0, metadata !2836, null}
!2839 = metadata !{i32 637, i32 0, metadata !297, null}
!2840 = metadata !{i32 638, i32 0, metadata !2841, null}
!2841 = metadata !{i32 786443, metadata !35, metadata !297, i32 638, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2842 = metadata !{i32 639, i32 0, metadata !2841, null}
!2843 = metadata !{i32 642, i32 0, metadata !292, null}
!2844 = metadata !{i32 40, i32 0, metadata !695, metadata !2845}
!2845 = metadata !{i32 661, i32 0, metadata !299, null}
!2846 = metadata !{i32 43, i32 0, metadata !2187, metadata !2845}
!2847 = metadata !{i32 46, i32 0, metadata !706, metadata !2845}
!2848 = metadata !{i32 47, i32 0, metadata !704, metadata !2845}
!2849 = metadata !{i32 48, i32 0, metadata !703, metadata !2845}
!2850 = metadata !{i32 49, i32 0, metadata !2197, metadata !2845}
!2851 = metadata !{i32 51, i32 0, metadata !703, metadata !2845}
!2852 = metadata !{i32 663, i32 0, metadata !299, null}
!2853 = metadata !{i32 664, i32 0, metadata !2854, null}
!2854 = metadata !{i32 786443, metadata !35, metadata !299, i32 664, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2855 = metadata !{metadata !2190, metadata !2192, i64 88}
!2856 = metadata !{i32 665, i32 0, metadata !2857, null}
!2857 = metadata !{i32 786443, metadata !35, metadata !2854, i32 664, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2858 = metadata !{i32 666, i32 0, metadata !2857, null}
!2859 = metadata !{i32 667, i32 0, metadata !2857, null}
!2860 = metadata !{i32 670, i32 0, metadata !308, null}
!2861 = metadata !{i32 646, i32 0, metadata !2862, metadata !2863}
!2862 = metadata !{i32 786443, metadata !35, metadata !674, i32 646, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2863 = metadata !{i32 671, i32 0, metadata !2864, null}
!2864 = metadata !{i32 786443, metadata !35, metadata !308, i32 670, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2865 = metadata !{metadata !2201, metadata !2191, i64 28}
!2866 = metadata !{i32 647, i32 0, metadata !2867, metadata !2863}
!2867 = metadata !{i32 786443, metadata !35, metadata !2868, i32 647, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2868 = metadata !{i32 786443, metadata !35, metadata !2862, i32 646, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2869 = metadata !{metadata !2201, metadata !2191, i64 32}
!2870 = metadata !{i32 648, i32 0, metadata !2867, metadata !2863}
!2871 = metadata !{i32 649, i32 0, metadata !2868, metadata !2863}
!2872 = metadata !{i32 651, i32 0, metadata !2868, metadata !2863}
!2873 = metadata !{i32 653, i32 0, metadata !2874, metadata !2863}
!2874 = metadata !{i32 786443, metadata !35, metadata !2862, i32 652, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2875 = metadata !{i32 654, i32 0, metadata !2874, metadata !2863}
!2876 = metadata !{i32 1417, i32 0, metadata !661, metadata !2877}
!2877 = metadata !{i32 1429, i32 0, metadata !642, metadata !2878}
!2878 = metadata !{i32 673, i32 0, metadata !307, null}
!2879 = metadata !{i32 1418, i32 0, metadata !661, metadata !2877}
!2880 = metadata !{i32 1432, i32 0, metadata !651, metadata !2878}
!2881 = metadata !{i32 1433, i32 0, metadata !650, metadata !2878}
!2882 = metadata !{i32 1434, i32 0, metadata !654, metadata !2878}
!2883 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2878}
!2884 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2878}
!2885 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2878}
!2886 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2878}
!2887 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2878}
!2888 = metadata !{i32 1442, i32 0, metadata !653, metadata !2878}
!2889 = metadata !{i32 1443, i32 0, metadata !653, metadata !2878}
!2890 = metadata !{i32 1444, i32 0, metadata !653, metadata !2878}
!2891 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2878}
!2892 = metadata !{i32 674, i32 0, metadata !2893, null}
!2893 = metadata !{i32 786443, metadata !35, metadata !307, i32 674, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2894 = metadata !{i32 675, i32 0, metadata !2893, null}
!2895 = metadata !{i32 678, i32 0, metadata !299, null}
!2896 = metadata !{i32 64, i32 0, metadata !687, metadata !2897}
!2897 = metadata !{i32 683, i32 0, metadata !309, null}
!2898 = metadata !{i32 65, i32 0, metadata !686, metadata !2897}
!2899 = metadata !{i32 66, i32 0, metadata !2329, metadata !2897}
!2900 = metadata !{i32 685, i32 0, metadata !2901, null}
!2901 = metadata !{i32 786443, metadata !35, metadata !309, i32 685, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2902 = metadata !{i32 686, i32 0, metadata !2903, null}
!2903 = metadata !{i32 786443, metadata !35, metadata !2901, i32 685, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2904 = metadata !{i32 687, i32 0, metadata !2903, null}
!2905 = metadata !{i32 690, i32 0, metadata !309, null}
!2906 = metadata !{i32 691, i32 0, metadata !2907, null}
!2907 = metadata !{i32 786443, metadata !35, metadata !309, i32 691, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2908 = metadata !{metadata !2190, metadata !2192, i64 96}
!2909 = metadata !{i32 692, i32 0, metadata !2910, null}
!2910 = metadata !{i32 786443, metadata !35, metadata !2907, i32 691, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2911 = metadata !{i32 693, i32 0, metadata !2910, null}
!2912 = metadata !{i32 694, i32 0, metadata !2910, null}
!2913 = metadata !{i32 697, i32 0, metadata !318, null}
!2914 = metadata !{i32 646, i32 0, metadata !2862, metadata !2915}
!2915 = metadata !{i32 698, i32 0, metadata !2916, null}
!2916 = metadata !{i32 786443, metadata !35, metadata !318, i32 697, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2917 = metadata !{i32 647, i32 0, metadata !2867, metadata !2915}
!2918 = metadata !{i32 648, i32 0, metadata !2867, metadata !2915}
!2919 = metadata !{i32 649, i32 0, metadata !2868, metadata !2915}
!2920 = metadata !{i32 651, i32 0, metadata !2868, metadata !2915}
!2921 = metadata !{i32 653, i32 0, metadata !2874, metadata !2915}
!2922 = metadata !{i32 654, i32 0, metadata !2874, metadata !2915}
!2923 = metadata !{i32 700, i32 0, metadata !317, null}
!2924 = metadata !{i32 701, i32 0, metadata !2925, null}
!2925 = metadata !{i32 786443, metadata !35, metadata !317, i32 701, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2926 = metadata !{i32 702, i32 0, metadata !2925, null}
!2927 = metadata !{i32 705, i32 0, metadata !309, null}
!2928 = metadata !{i32 40, i32 0, metadata !695, metadata !2929}
!2929 = metadata !{i32 714, i32 0, metadata !319, null}
!2930 = metadata !{i32 43, i32 0, metadata !2187, metadata !2929}
!2931 = metadata !{i32 46, i32 0, metadata !706, metadata !2929}
!2932 = metadata !{i32 47, i32 0, metadata !704, metadata !2929}
!2933 = metadata !{i32 48, i32 0, metadata !703, metadata !2929}
!2934 = metadata !{i32 49, i32 0, metadata !2197, metadata !2929}
!2935 = metadata !{i32 716, i32 0, metadata !331, null}
!2936 = metadata !{i32 708, i32 0, metadata !667, metadata !2937}
!2937 = metadata !{i32 717, i32 0, metadata !2938, null}
!2938 = metadata !{i32 786443, metadata !35, metadata !331, i32 716, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2939 = metadata !{i32 709, i32 0, metadata !667, metadata !2937}
!2940 = metadata !{i32 1417, i32 0, metadata !661, metadata !2941}
!2941 = metadata !{i32 1429, i32 0, metadata !642, metadata !2942}
!2942 = metadata !{i32 719, i32 0, metadata !330, null}
!2943 = metadata !{i32 1418, i32 0, metadata !661, metadata !2941}
!2944 = metadata !{i32 1432, i32 0, metadata !651, metadata !2942}
!2945 = metadata !{i32 1433, i32 0, metadata !650, metadata !2942}
!2946 = metadata !{i32 1434, i32 0, metadata !654, metadata !2942}
!2947 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2942}
!2948 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2942}
!2949 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2942}
!2950 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2942}
!2951 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2942}
!2952 = metadata !{i32 1442, i32 0, metadata !653, metadata !2942}
!2953 = metadata !{i32 1443, i32 0, metadata !653, metadata !2942}
!2954 = metadata !{i32 1444, i32 0, metadata !653, metadata !2942}
!2955 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2942}
!2956 = metadata !{i32 720, i32 0, metadata !2957, null}
!2957 = metadata !{i32 786443, metadata !35, metadata !330, i32 720, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2958 = metadata !{i32 721, i32 0, metadata !2957, null}
!2959 = metadata !{i32 724, i32 0, metadata !319, null}
!2960 = metadata !{i32 64, i32 0, metadata !687, metadata !2961}
!2961 = metadata !{i32 727, i32 0, metadata !332, null}
!2962 = metadata !{i32 65, i32 0, metadata !686, metadata !2961}
!2963 = metadata !{i32 66, i32 0, metadata !2329, metadata !2961}
!2964 = metadata !{i32 729, i32 0, metadata !2965, null}
!2965 = metadata !{i32 786443, metadata !35, metadata !332, i32 729, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2966 = metadata !{i32 730, i32 0, metadata !2967, null}
!2967 = metadata !{i32 786443, metadata !35, metadata !2965, i32 729, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2968 = metadata !{i32 731, i32 0, metadata !2967, null}
!2969 = metadata !{i32 734, i32 0, metadata !342, null}
!2970 = metadata !{i32 708, i32 0, metadata !667, metadata !2971}
!2971 = metadata !{i32 735, i32 0, metadata !2972, null}
!2972 = metadata !{i32 786443, metadata !35, metadata !342, i32 734, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2973 = metadata !{i32 709, i32 0, metadata !667, metadata !2971}
!2974 = metadata !{i32 737, i32 0, metadata !341, null}
!2975 = metadata !{i32 738, i32 0, metadata !2976, null}
!2976 = metadata !{i32 786443, metadata !35, metadata !341, i32 738, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2977 = metadata !{i32 739, i32 0, metadata !2976, null}
!2978 = metadata !{i32 742, i32 0, metadata !332, null}
!2979 = metadata !{i32 40, i32 0, metadata !695, metadata !2980}
!2980 = metadata !{i32 746, i32 0, metadata !343, null}
!2981 = metadata !{i32 43, i32 0, metadata !2187, metadata !2980}
!2982 = metadata !{i32 46, i32 0, metadata !706, metadata !2980}
!2983 = metadata !{i32 47, i32 0, metadata !704, metadata !2980}
!2984 = metadata !{i32 48, i32 0, metadata !703, metadata !2980}
!2985 = metadata !{i32 49, i32 0, metadata !2197, metadata !2980}
!2986 = metadata !{i32 748, i32 0, metadata !351, null}
!2987 = metadata !{i32 708, i32 0, metadata !667, metadata !2988}
!2988 = metadata !{i32 749, i32 0, metadata !2989, null}
!2989 = metadata !{i32 786443, metadata !35, metadata !351, i32 748, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2990 = metadata !{i32 709, i32 0, metadata !667, metadata !2988}
!2991 = metadata !{i32 1417, i32 0, metadata !661, metadata !2992}
!2992 = metadata !{i32 1429, i32 0, metadata !642, metadata !2993}
!2993 = metadata !{i32 751, i32 0, metadata !350, null}
!2994 = metadata !{i32 1418, i32 0, metadata !661, metadata !2992}
!2995 = metadata !{i32 1432, i32 0, metadata !651, metadata !2993}
!2996 = metadata !{i32 1433, i32 0, metadata !650, metadata !2993}
!2997 = metadata !{i32 1434, i32 0, metadata !654, metadata !2993}
!2998 = metadata !{i32 1435, i32 0, metadata !2213, metadata !2993}
!2999 = metadata !{i32 1436, i32 0, metadata !2216, metadata !2993}
!3000 = metadata !{i32 1437, i32 0, metadata !2216, metadata !2993}
!3001 = metadata !{i32 1439, i32 0, metadata !2219, metadata !2993}
!3002 = metadata !{i32 1440, i32 0, metadata !2219, metadata !2993}
!3003 = metadata !{i32 1442, i32 0, metadata !653, metadata !2993}
!3004 = metadata !{i32 1443, i32 0, metadata !653, metadata !2993}
!3005 = metadata !{i32 1444, i32 0, metadata !653, metadata !2993}
!3006 = metadata !{i32 1445, i32 0, metadata !2226, metadata !2993}
!3007 = metadata !{i32 752, i32 0, metadata !3008, null}
!3008 = metadata !{i32 786443, metadata !35, metadata !350, i32 752, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3009 = metadata !{i32 753, i32 0, metadata !3008, null}
!3010 = metadata !{i32 756, i32 0, metadata !343, null}
!3011 = metadata !{i32 64, i32 0, metadata !687, metadata !3012}
!3012 = metadata !{i32 759, i32 0, metadata !352, null}
!3013 = metadata !{i32 65, i32 0, metadata !686, metadata !3012}
!3014 = metadata !{i32 66, i32 0, metadata !2329, metadata !3012}
!3015 = metadata !{i32 761, i32 0, metadata !3016, null}
!3016 = metadata !{i32 786443, metadata !35, metadata !352, i32 761, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3017 = metadata !{i32 762, i32 0, metadata !3018, null}
!3018 = metadata !{i32 786443, metadata !35, metadata !3016, i32 761, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3019 = metadata !{i32 763, i32 0, metadata !3018, null}
!3020 = metadata !{i32 766, i32 0, metadata !361, null}
!3021 = metadata !{i32 768, i32 0, metadata !360, null}
!3022 = metadata !{i32 772, i32 0, metadata !3023, null}
!3023 = metadata !{i32 786443, metadata !35, metadata !360, i32 772, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3024 = metadata !{i32 773, i32 0, metadata !3023, null}
!3025 = metadata !{i32 777, i32 0, metadata !352, null}
!3026 = metadata !{i32 778, i32 0, metadata !352, null}
!3027 = metadata !{i32 779, i32 0, metadata !352, null}
!3028 = metadata !{i32 64, i32 0, metadata !687, metadata !3029}
!3029 = metadata !{i32 783, i32 0, metadata !362, null}
!3030 = metadata !{i32 65, i32 0, metadata !686, metadata !3029}
!3031 = metadata !{i32 66, i32 0, metadata !2329, metadata !3029}
!3032 = metadata !{i32 785, i32 0, metadata !362, null}
!3033 = metadata !{i32 787, i32 0, metadata !3034, null}
!3034 = metadata !{i32 786443, metadata !35, metadata !362, i32 787, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3035 = metadata !{i32 788, i32 0, metadata !3036, null}
!3036 = metadata !{i32 786443, metadata !35, metadata !3034, i32 787, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3037 = metadata !{i32 789, i32 0, metadata !3036, null}
!3038 = metadata !{i32 792, i32 0, metadata !3039, null}
!3039 = metadata !{i32 786443, metadata !35, metadata !362, i32 792, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3040 = metadata !{metadata !2190, metadata !2192, i64 72}
!3041 = metadata !{i32 793, i32 0, metadata !3042, null}
!3042 = metadata !{i32 786443, metadata !35, metadata !3039, i32 792, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3043 = metadata !{i32 794, i32 0, metadata !3042, null}
!3044 = metadata !{i32 795, i32 0, metadata !3042, null}
!3045 = metadata !{i32 798, i32 0, metadata !371, null}
!3046 = metadata !{i32 799, i32 0, metadata !3047, null}
!3047 = metadata !{i32 786443, metadata !35, metadata !371, i32 798, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3048 = metadata !{i32 800, i32 0, metadata !3047, null}
!3049 = metadata !{i32 801, i32 0, metadata !3047, null}
!3050 = metadata !{i32 804, i32 0, metadata !370, null}
!3051 = metadata !{i32 808, i32 0, metadata !3052, null}
!3052 = metadata !{i32 786443, metadata !35, metadata !370, i32 808, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3053 = metadata !{i32 809, i32 0, metadata !3052, null}
!3054 = metadata !{i32 812, i32 0, metadata !362, null}
!3055 = metadata !{i32 64, i32 0, metadata !687, metadata !3056}
!3056 = metadata !{i32 815, i32 0, metadata !372, null}
!3057 = metadata !{i32 65, i32 0, metadata !686, metadata !3056}
!3058 = metadata !{i32 66, i32 0, metadata !2329, metadata !3056}
!3059 = metadata !{i32 817, i32 0, metadata !3060, null}
!3060 = metadata !{i32 786443, metadata !35, metadata !372, i32 817, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3061 = metadata !{i32 818, i32 0, metadata !3062, null}
!3062 = metadata !{i32 786443, metadata !35, metadata !3060, i32 817, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3063 = metadata !{i32 819, i32 0, metadata !3062, null}
!3064 = metadata !{i32 822, i32 0, metadata !398, null}
!3065 = metadata !{i32 823, i32 0, metadata !3066, null}
!3066 = metadata !{i32 786443, metadata !35, metadata !398, i32 822, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3067 = metadata !{i32 824, i32 0, metadata !3066, null}
!3068 = metadata !{i32 825, i32 0, metadata !3066, null}
!3069 = metadata !{i32 827, i32 0, metadata !396, null}
!3070 = metadata !{i32 832, i32 0, metadata !395, null}
!3071 = metadata !{i32 833, i32 0, metadata !3072, null}
!3072 = metadata !{i32 786443, metadata !35, metadata !395, i32 833, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3073 = metadata !{i32 838, i32 0, metadata !403, null}
!3074 = metadata !{i32 835, i32 0, metadata !3075, null}
!3075 = metadata !{i32 786443, metadata !35, metadata !3072, i32 834, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3076 = metadata !{i32 836, i32 0, metadata !3075, null}
!3077 = metadata !{i32 839, i32 0, metadata !402, null}
!3078 = metadata !{i32 840, i32 0, metadata !402, null}
!3079 = metadata !{metadata !3080, metadata !2202, i64 0}
!3080 = metadata !{metadata !"dirent64", metadata !2202, i64 0, metadata !2202, i64 8, metadata !3081, i64 16, metadata !2184, i64 18, metadata !2184, i64 19}
!3081 = metadata !{metadata !"short", metadata !2184, i64 0}
!3082 = metadata !{i32 841, i32 0, metadata !402, null}
!3083 = metadata !{metadata !3080, metadata !3081, i64 16}
!3084 = metadata !{i32 842, i32 0, metadata !402, null}
!3085 = metadata !{metadata !3080, metadata !2184, i64 18}
!3086 = metadata !{i32 843, i32 0, metadata !402, null}
!3087 = metadata !{i32 844, i32 0, metadata !402, null}
!3088 = metadata !{i32 845, i32 0, metadata !402, null}
!3089 = metadata !{metadata !3080, metadata !2202, i64 8}
!3090 = metadata !{i32 846, i32 0, metadata !402, null}
!3091 = metadata !{i32 847, i32 0, metadata !402, null}
!3092 = metadata !{i32 851, i32 0, metadata !395, null}
!3093 = metadata !{i32 852, i32 0, metadata !395, null}
!3094 = metadata !{i32 853, i32 0, metadata !395, null}
!3095 = metadata !{i32 854, i32 0, metadata !395, null}
!3096 = metadata !{i32 855, i32 0, metadata !395, null}
!3097 = metadata !{i32 856, i32 0, metadata !395, null}
!3098 = metadata !{i32 857, i32 0, metadata !395, null}
!3099 = metadata !{i32 858, i32 0, metadata !395, null}
!3100 = metadata !{i32 860, i32 0, metadata !395, null}
!3101 = metadata !{i32 862, i32 0, metadata !405, null}
!3102 = metadata !{i32 873, i32 0, metadata !405, null}
!3103 = metadata !{i32 874, i32 0, metadata !405, null}
!3104 = metadata !{i32 875, i32 0, metadata !405, null}
!3105 = metadata !{i32 876, i32 0, metadata !405, null}
!3106 = metadata !{i32 877, i32 0, metadata !410, null}
!3107 = metadata !{i32 878, i32 0, metadata !3108, null}
!3108 = metadata !{i32 786443, metadata !35, metadata !410, i32 877, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3109 = metadata !{i32 879, i32 0, metadata !3108, null}
!3110 = metadata !{i32 881, i32 0, metadata !409, null}
!3111 = metadata !{i32 885, i32 0, metadata !409, null}
!3112 = metadata !{i32 886, i32 0, metadata !412, null}
!3113 = metadata !{i32 887, i32 0, metadata !412, null}
!3114 = metadata !{i32 888, i32 0, metadata !412, null}
!3115 = metadata !{i32 895, i32 0, metadata !372, null}
!3116 = metadata !{i32 64, i32 0, metadata !687, metadata !3117}
!3117 = metadata !{i32 902, i32 0, metadata !413, null}
!3118 = metadata !{i32 65, i32 0, metadata !686, metadata !3117}
!3119 = metadata !{i32 66, i32 0, metadata !2329, metadata !3117}
!3120 = metadata !{i32 910, i32 0, metadata !3121, null}
!3121 = metadata !{i32 786443, metadata !35, metadata !413, i32 910, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3122 = metadata !{i32 911, i32 0, metadata !3123, null}
!3123 = metadata !{i32 786443, metadata !35, metadata !3121, i32 910, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3124 = metadata !{i32 912, i32 0, metadata !3123, null}
!3125 = metadata !{i32 915, i32 0, metadata !413, null}
!3126 = metadata !{i32 916, i32 0, metadata !413, null}
!3127 = metadata !{i32 917, i32 0, metadata !413, null}
!3128 = metadata !{i32 919, i32 0, metadata !437, null}
!3129 = metadata !{i32 920, i32 0, metadata !436, null}
!3130 = metadata !{i32 922, i32 0, metadata !436, null}
!3131 = metadata !{i32 926, i32 0, metadata !439, null}
!3132 = metadata !{i32 929, i32 0, metadata !3133, null}
!3133 = metadata !{i32 786443, metadata !35, metadata !439, i32 929, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3134 = metadata !{metadata !3135, metadata !2191, i64 24}
!3135 = metadata !{metadata !"stat", metadata !2202, i64 0, metadata !2202, i64 8, metadata !2202, i64 16, metadata !2191, i64 24, metadata !2191, i64 28, metadata !2191, i64 32, metadata !2191, i64 36, metadata !2202, i64 40, metadata !2202, i64 48, met
!3136 = metadata !{i32 932, i32 0, metadata !3137, null}
!3137 = metadata !{i32 786443, metadata !35, metadata !3133, i32 929, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3138 = metadata !{metadata !3139, metadata !2191, i64 0}
!3139 = metadata !{metadata !"termios", metadata !2191, i64 0, metadata !2191, i64 4, metadata !2191, i64 8, metadata !2191, i64 12, metadata !2184, i64 16, metadata !2184, i64 17, metadata !2191, i64 52, metadata !2191, i64 56}
!3140 = metadata !{i32 933, i32 0, metadata !3137, null}
!3141 = metadata !{metadata !3139, metadata !2191, i64 4}
!3142 = metadata !{i32 934, i32 0, metadata !3137, null}
!3143 = metadata !{metadata !3139, metadata !2191, i64 8}
!3144 = metadata !{i32 935, i32 0, metadata !3137, null}
!3145 = metadata !{metadata !3139, metadata !2191, i64 12}
!3146 = metadata !{i32 936, i32 0, metadata !3137, null}
!3147 = metadata !{metadata !3139, metadata !2184, i64 16}
!3148 = metadata !{i32 937, i32 0, metadata !3137, null}
!3149 = metadata !{i32 938, i32 0, metadata !3137, null}
!3150 = metadata !{i32 939, i32 0, metadata !3137, null}
!3151 = metadata !{i32 940, i32 0, metadata !3137, null}
!3152 = metadata !{i32 941, i32 0, metadata !3137, null}
!3153 = metadata !{i32 942, i32 0, metadata !3137, null}
!3154 = metadata !{i32 943, i32 0, metadata !3137, null}
!3155 = metadata !{i32 944, i32 0, metadata !3137, null}
!3156 = metadata !{i32 945, i32 0, metadata !3137, null}
!3157 = metadata !{i32 946, i32 0, metadata !3137, null}
!3158 = metadata !{i32 947, i32 0, metadata !3137, null}
!3159 = metadata !{i32 948, i32 0, metadata !3137, null}
!3160 = metadata !{i32 949, i32 0, metadata !3137, null}
!3161 = metadata !{i32 950, i32 0, metadata !3137, null}
!3162 = metadata !{i32 951, i32 0, metadata !3137, null}
!3163 = metadata !{i32 952, i32 0, metadata !3137, null}
!3164 = metadata !{i32 953, i32 0, metadata !3137, null}
!3165 = metadata !{i32 954, i32 0, metadata !3137, null}
!3166 = metadata !{i32 955, i32 0, metadata !3137, null}
!3167 = metadata !{i32 956, i32 0, metadata !3137, null}
!3168 = metadata !{i32 958, i32 0, metadata !3169, null}
!3169 = metadata !{i32 786443, metadata !35, metadata !3133, i32 957, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3170 = metadata !{i32 959, i32 0, metadata !3169, null}
!3171 = metadata !{i32 964, i32 0, metadata !3172, null}
!3172 = metadata !{i32 786443, metadata !35, metadata !440, i32 962, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3173 = metadata !{i32 965, i32 0, metadata !3174, null}
!3174 = metadata !{i32 786443, metadata !35, metadata !3172, i32 965, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3175 = metadata !{i32 968, i32 0, metadata !3176, null}
!3176 = metadata !{i32 786443, metadata !35, metadata !3174, i32 967, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3177 = metadata !{i32 969, i32 0, metadata !3176, null}
!3178 = metadata !{i32 974, i32 0, metadata !3179, null}
!3179 = metadata !{i32 786443, metadata !35, metadata !440, i32 972, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3180 = metadata !{i32 975, i32 0, metadata !3181, null}
!3181 = metadata !{i32 786443, metadata !35, metadata !3179, i32 975, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3182 = metadata !{i32 978, i32 0, metadata !3183, null}
!3183 = metadata !{i32 786443, metadata !35, metadata !3181, i32 977, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3184 = metadata !{i32 979, i32 0, metadata !3183, null}
!3185 = metadata !{i32 984, i32 0, metadata !3186, null}
!3186 = metadata !{i32 786443, metadata !35, metadata !440, i32 982, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3187 = metadata !{i32 985, i32 0, metadata !3188, null}
!3188 = metadata !{i32 786443, metadata !35, metadata !3186, i32 985, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3189 = metadata !{i32 988, i32 0, metadata !3190, null}
!3190 = metadata !{i32 786443, metadata !35, metadata !3188, i32 987, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3191 = metadata !{i32 989, i32 0, metadata !3190, null}
!3192 = metadata !{i32 994, i32 0, metadata !460, null}
!3193 = metadata !{metadata !3194, metadata !3081, i64 0}
!3194 = metadata !{metadata !"winsize", metadata !3081, i64 0, metadata !3081, i64 2, metadata !3081, i64 4, metadata !3081, i64 6}
!3195 = metadata !{i32 995, i32 0, metadata !460, null}
!3196 = metadata !{metadata !3194, metadata !3081, i64 2}
!3197 = metadata !{i32 996, i32 0, metadata !460, null}
!3198 = metadata !{i32 997, i32 0, metadata !3199, null}
!3199 = metadata !{i32 786443, metadata !35, metadata !460, i32 997, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3200 = metadata !{i32 1000, i32 0, metadata !3201, null}
!3201 = metadata !{i32 786443, metadata !35, metadata !3199, i32 999, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3202 = metadata !{i32 1001, i32 0, metadata !3201, null}
!3203 = metadata !{i32 1006, i32 0, metadata !3204, null}
!3204 = metadata !{i32 786443, metadata !35, metadata !440, i32 1004, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3205 = metadata !{i32 1007, i32 0, metadata !3206, null}
!3206 = metadata !{i32 786443, metadata !35, metadata !3204, i32 1007, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3207 = metadata !{i32 1008, i32 0, metadata !3208, null}
!3208 = metadata !{i32 786443, metadata !35, metadata !3206, i32 1007, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3209 = metadata !{i32 1009, i32 0, metadata !3208, null}
!3210 = metadata !{i32 1011, i32 0, metadata !3211, null}
!3211 = metadata !{i32 786443, metadata !35, metadata !3206, i32 1010, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3212 = metadata !{i32 1012, i32 0, metadata !3211, null}
!3213 = metadata !{i32 1016, i32 0, metadata !470, null}
!3214 = metadata !{i32 1017, i32 0, metadata !470, null}
!3215 = metadata !{i32 1018, i32 0, metadata !3216, null}
!3216 = metadata !{i32 786443, metadata !35, metadata !470, i32 1018, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3217 = metadata !{i32 1019, i32 0, metadata !3218, null}
!3218 = metadata !{i32 786443, metadata !35, metadata !3219, i32 1019, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3219 = metadata !{i32 786443, metadata !35, metadata !3216, i32 1018, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3220 = metadata !{i32 1020, i32 0, metadata !3221, null}
!3221 = metadata !{i32 786443, metadata !35, metadata !3218, i32 1019, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3222 = metadata !{i32 1021, i32 0, metadata !3221, null}
!3223 = metadata !{i32 1024, i32 0, metadata !3219, null}
!3224 = metadata !{i32 1026, i32 0, metadata !3225, null}
!3225 = metadata !{i32 786443, metadata !35, metadata !3216, i32 1025, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3226 = metadata !{i32 1027, i32 0, metadata !3225, null}
!3227 = metadata !{i32 1031, i32 0, metadata !3228, null}
!3228 = metadata !{i32 786443, metadata !35, metadata !440, i32 1030, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3229 = metadata !{i32 1032, i32 0, metadata !3228, null}
!3230 = metadata !{i32 1033, i32 0, metadata !3228, null}
!3231 = metadata !{i32 1036, i32 0, metadata !440, null}
!3232 = metadata !{i32 1037, i32 0, metadata !440, null}
!3233 = metadata !{i32 1038, i32 0, metadata !440, null}
!3234 = metadata !{i32 1041, i32 0, metadata !473, null}
!3235 = metadata !{i32 1042, i32 0, metadata !3236, null}
!3236 = metadata !{i32 786443, metadata !35, metadata !473, i32 1042, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3237 = metadata !{i32 1043, i32 0, metadata !3236, null}
!3238 = metadata !{i32 1046, i32 0, metadata !413, null}
!3239 = metadata !{i32 64, i32 0, metadata !687, metadata !3240}
!3240 = metadata !{i32 1049, i32 0, metadata !474, null}
!3241 = metadata !{i32 65, i32 0, metadata !686, metadata !3240}
!3242 = metadata !{i32 66, i32 0, metadata !2329, metadata !3240}
!3243 = metadata !{i32 1053, i32 0, metadata !3244, null}
!3244 = metadata !{i32 786443, metadata !35, metadata !474, i32 1053, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3245 = metadata !{i32 1054, i32 0, metadata !3246, null}
!3246 = metadata !{i32 786443, metadata !35, metadata !3244, i32 1053, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3247 = metadata !{i32 1055, i32 0, metadata !3246, null}
!3248 = metadata !{i32 1058, i32 0, metadata !3249, null}
!3249 = metadata !{i32 786443, metadata !35, metadata !474, i32 1058, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3250 = metadata !{i32 1062, i32 0, metadata !3251, null}
!3251 = metadata !{i32 786443, metadata !35, metadata !3249, i32 1061, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3252 = metadata !{i32 1063, i32 0, metadata !3251, null}
!3253 = metadata !{i32 1064, i32 0, metadata !3251, null}
!3254 = metadata !{i32 1067, i32 0, metadata !487, null}
!3255 = metadata !{i32 1068, i32 0, metadata !486, null}
!3256 = metadata !{i32 1071, i32 0, metadata !3257, null}
!3257 = metadata !{i32 786443, metadata !35, metadata !484, i32 1071, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3258 = metadata !{i32 1073, i32 0, metadata !484, null}
!3259 = metadata !{i32 1076, i32 0, metadata !3260, null}
!3260 = metadata !{i32 786443, metadata !35, metadata !485, i32 1075, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3261 = metadata !{i32 1077, i32 0, metadata !3262, null}
!3262 = metadata !{i32 786443, metadata !35, metadata !3260, i32 1077, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3263 = metadata !{i32 1078, i32 0, metadata !3262, null}
!3264 = metadata !{i32 1079, i32 0, metadata !3260, null}
!3265 = metadata !{i32 1091, i32 0, metadata !485, null}
!3266 = metadata !{i32 1092, i32 0, metadata !485, null}
!3267 = metadata !{i32 1093, i32 0, metadata !485, null}
!3268 = metadata !{i32 1096, i32 0, metadata !489, null}
!3269 = metadata !{i32 1097, i32 0, metadata !3270, null}
!3270 = metadata !{i32 786443, metadata !35, metadata !489, i32 1097, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3271 = metadata !{i32 1098, i32 0, metadata !3270, null}
!3272 = metadata !{i32 1101, i32 0, metadata !474, null}
!3273 = metadata !{i32 40, i32 0, metadata !695, metadata !3274}
!3274 = metadata !{i32 1104, i32 0, metadata !490, null}
!3275 = metadata !{i32 43, i32 0, metadata !2187, metadata !3274}
!3276 = metadata !{i32 46, i32 0, metadata !706, metadata !3274}
!3277 = metadata !{i32 47, i32 0, metadata !704, metadata !3274}
!3278 = metadata !{i32 48, i32 0, metadata !703, metadata !3274}
!3279 = metadata !{i32 49, i32 0, metadata !2197, metadata !3274}
!3280 = metadata !{i32 1105, i32 0, metadata !3281, null}
!3281 = metadata !{i32 786443, metadata !35, metadata !490, i32 1105, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3282 = metadata !{i32 1107, i32 0, metadata !3283, null}
!3283 = metadata !{i32 786443, metadata !35, metadata !3281, i32 1105, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3284 = metadata !{i32 1108, i32 0, metadata !3283, null}
!3285 = metadata !{i32 1109, i32 0, metadata !3283, null}
!3286 = metadata !{i32 1417, i32 0, metadata !661, metadata !3287}
!3287 = metadata !{i32 1429, i32 0, metadata !642, metadata !3288}
!3288 = metadata !{i32 1113, i32 0, metadata !528, null}
!3289 = metadata !{i32 1418, i32 0, metadata !661, metadata !3287}
!3290 = metadata !{i32 1432, i32 0, metadata !651, metadata !3288}
!3291 = metadata !{i32 1433, i32 0, metadata !650, metadata !3288}
!3292 = metadata !{i32 1434, i32 0, metadata !654, metadata !3288}
!3293 = metadata !{i32 1435, i32 0, metadata !2213, metadata !3288}
!3294 = metadata !{i32 1436, i32 0, metadata !2216, metadata !3288}
!3295 = metadata !{i32 1437, i32 0, metadata !2216, metadata !3288}
!3296 = metadata !{i32 1439, i32 0, metadata !2219, metadata !3288}
!3297 = metadata !{i32 1440, i32 0, metadata !2219, metadata !3288}
!3298 = metadata !{i32 1442, i32 0, metadata !653, metadata !3288}
!3299 = metadata !{i32 1443, i32 0, metadata !653, metadata !3288}
!3300 = metadata !{i32 1444, i32 0, metadata !653, metadata !3288}
!3301 = metadata !{i32 1445, i32 0, metadata !2226, metadata !3288}
!3302 = metadata !{i32 1114, i32 0, metadata !3303, null}
!3303 = metadata !{i32 786443, metadata !35, metadata !528, i32 1114, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3304 = metadata !{i32 1115, i32 0, metadata !3303, null}
!3305 = metadata !{i32 1118, i32 0, metadata !490, null}
!3306 = metadata !{i32 64, i32 0, metadata !687, metadata !3307}
!3307 = metadata !{i32 1121, i32 0, metadata !529, null}
!3308 = metadata !{i32 65, i32 0, metadata !686, metadata !3307}
!3309 = metadata !{i32 66, i32 0, metadata !2329, metadata !3307}
!3310 = metadata !{i32 1123, i32 0, metadata !3311, null}
!3311 = metadata !{i32 786443, metadata !35, metadata !529, i32 1123, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3312 = metadata !{i32 1124, i32 0, metadata !3313, null}
!3313 = metadata !{i32 786443, metadata !35, metadata !3311, i32 1123, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3314 = metadata !{i32 1125, i32 0, metadata !3313, null}
!3315 = metadata !{i32 1128, i32 0, metadata !538, null}
!3316 = metadata !{i32 1129, i32 0, metadata !3317, null}
!3317 = metadata !{i32 786443, metadata !35, metadata !538, i32 1128, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3318 = metadata !{i32 1130, i32 0, metadata !3317, null}
!3319 = metadata !{i32 1131, i32 0, metadata !3317, null}
!3320 = metadata !{i32 1133, i32 0, metadata !537, null}
!3321 = metadata !{i32 1134, i32 0, metadata !3322, null}
!3322 = metadata !{i32 786443, metadata !35, metadata !537, i32 1134, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3323 = metadata !{i32 1135, i32 0, metadata !3322, null}
!3324 = metadata !{i32 1138, i32 0, metadata !529, null}
!3325 = metadata !{i32 64, i32 0, metadata !687, metadata !3326}
!3326 = metadata !{i32 1141, i32 0, metadata !539, null}
!3327 = metadata !{i32 65, i32 0, metadata !686, metadata !3326}
!3328 = metadata !{i32 66, i32 0, metadata !2329, metadata !3326}
!3329 = metadata !{i32 1143, i32 0, metadata !546, null}
!3330 = metadata !{i32 1144, i32 0, metadata !3331, null}
!3331 = metadata !{i32 786443, metadata !35, metadata !546, i32 1143, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3332 = metadata !{i32 1145, i32 0, metadata !3331, null}
!3333 = metadata !{i32 1146, i32 0, metadata !545, null}
!3334 = metadata !{i32 1149, i32 0, metadata !544, null}
!3335 = metadata !{i32 1150, i32 0, metadata !3336, null}
!3336 = metadata !{i32 786443, metadata !35, metadata !544, i32 1150, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3337 = metadata !{i32 1151, i32 0, metadata !3336, null}
!3338 = metadata !{i32 1154, i32 0, metadata !539, null}
!3339 = metadata !{i32 64, i32 0, metadata !687, metadata !3340}
!3340 = metadata !{i32 1157, i32 0, metadata !547, null}
!3341 = metadata !{i32 65, i32 0, metadata !686, metadata !3340}
!3342 = metadata !{i32 66, i32 0, metadata !2329, metadata !3340}
!3343 = metadata !{i32 1159, i32 0, metadata !554, null}
!3344 = metadata !{i32 1160, i32 0, metadata !3345, null}
!3345 = metadata !{i32 786443, metadata !35, metadata !554, i32 1159, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3346 = metadata !{i32 1161, i32 0, metadata !3345, null}
!3347 = metadata !{i32 1163, i32 0, metadata !553, null}
!3348 = metadata !{i32 1164, i32 0, metadata !3349, null}
!3349 = metadata !{i32 786443, metadata !35, metadata !553, i32 1164, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3350 = metadata !{i32 308, i32 0, metadata !189, metadata !3348}
!3351 = metadata !{i32 64, i32 0, metadata !687, metadata !3352}
!3352 = metadata !{i32 310, i32 0, metadata !189, metadata !3348}
!3353 = metadata !{i32 311, i32 0, metadata !2491, metadata !3348}
!3354 = metadata !{i32 312, i32 0, metadata !2493, metadata !3348}
!3355 = metadata !{i32 313, i32 0, metadata !2493, metadata !3348}
!3356 = metadata !{i32 316, i32 0, metadata !2496, metadata !3348}
!3357 = metadata !{i32 317, i32 0, metadata !2500, metadata !3348}
!3358 = metadata !{i32 318, i32 0, metadata !2500, metadata !3348}
!3359 = metadata !{i32 319, i32 0, metadata !2500, metadata !3348}
!3360 = metadata !{i32 330, i32 0, metadata !189, metadata !3348}
!3361 = metadata !{i32 332, i32 0, metadata !189, metadata !3348}
!3362 = metadata !{i32 1168, i32 0, metadata !553, null}
!3363 = metadata !{i32 1170, i32 0, metadata !553, null}
!3364 = metadata !{i32 1177, i32 0, metadata !553, null}
!3365 = metadata !{i32 1179, i32 0, metadata !547, null}
!3366 = metadata !{i32 64, i32 0, metadata !687, metadata !3367}
!3367 = metadata !{i32 1182, i32 0, metadata !555, null}
!3368 = metadata !{i32 65, i32 0, metadata !686, metadata !3367}
!3369 = metadata !{i32 66, i32 0, metadata !2329, metadata !3367}
!3370 = metadata !{i32 1183, i32 0, metadata !561, null}
!3371 = metadata !{i32 1184, i32 0, metadata !3372, null}
!3372 = metadata !{i32 786443, metadata !35, metadata !561, i32 1183, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3373 = metadata !{i32 1185, i32 0, metadata !3372, null}
!3374 = metadata !{i32 1188, i32 0, metadata !3375, null}
!3375 = metadata !{i32 786443, metadata !35, metadata !560, i32 1188, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3376 = metadata !{i32 1189, i32 0, metadata !3377, null}
!3377 = metadata !{i32 786443, metadata !35, metadata !3375, i32 1189, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3378 = metadata !{i32 1191, i32 0, metadata !3379, null}
!3379 = metadata !{i32 786443, metadata !35, metadata !560, i32 1191, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3380 = metadata !{i32 1192, i32 0, metadata !3381, null}
!3381 = metadata !{i32 786443, metadata !35, metadata !3379, i32 1191, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3382 = metadata !{i32 1193, i32 0, metadata !3381, null}
!3383 = metadata !{i32 1195, i32 0, metadata !3384, null}
!3384 = metadata !{i32 786443, metadata !35, metadata !3379, i32 1194, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3385 = metadata !{i32 1198, i32 0, metadata !555, null}
!3386 = metadata !{i32 40, i32 0, metadata !695, metadata !3387}
!3387 = metadata !{i32 1201, i32 0, metadata !562, null}
!3388 = metadata !{i32 43, i32 0, metadata !2187, metadata !3387}
!3389 = metadata !{i32 46, i32 0, metadata !706, metadata !3387}
!3390 = metadata !{i32 47, i32 0, metadata !704, metadata !3387}
!3391 = metadata !{i32 48, i32 0, metadata !703, metadata !3387}
!3392 = metadata !{i32 49, i32 0, metadata !2197, metadata !3387}
!3393 = metadata !{i32 1202, i32 0, metadata !3394, null}
!3394 = metadata !{i32 786443, metadata !35, metadata !562, i32 1202, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3395 = metadata !{i32 1204, i32 0, metadata !3396, null}
!3396 = metadata !{i32 786443, metadata !35, metadata !3397, i32 1204, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3397 = metadata !{i32 786443, metadata !35, metadata !3394, i32 1202, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3398 = metadata !{i32 1205, i32 0, metadata !3399, null}
!3399 = metadata !{i32 786443, metadata !35, metadata !3396, i32 1204, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3400 = metadata !{i32 1206, i32 0, metadata !3399, null}
!3401 = metadata !{i32 1208, i32 0, metadata !3402, null}
!3402 = metadata !{i32 786443, metadata !35, metadata !3396, i32 1207, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3403 = metadata !{i32 1209, i32 0, metadata !3402, null}
!3404 = metadata !{i32 1213, i32 0, metadata !562, null}
!3405 = metadata !{i32 1214, i32 0, metadata !562, null}
!3406 = metadata !{i32 1215, i32 0, metadata !562, null}
!3407 = metadata !{i32 1216, i32 0, metadata !562, null}
!3408 = metadata !{i32 40, i32 0, metadata !695, metadata !3409}
!3409 = metadata !{i32 1219, i32 0, metadata !566, null}
!3410 = metadata !{i32 43, i32 0, metadata !2187, metadata !3409}
!3411 = metadata !{i32 46, i32 0, metadata !706, metadata !3409}
!3412 = metadata !{i32 47, i32 0, metadata !704, metadata !3409}
!3413 = metadata !{i32 48, i32 0, metadata !703, metadata !3409}
!3414 = metadata !{i32 49, i32 0, metadata !2197, metadata !3409}
!3415 = metadata !{i32 1220, i32 0, metadata !3416, null}
!3416 = metadata !{i32 786443, metadata !35, metadata !566, i32 1220, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3417 = metadata !{i32 1222, i32 0, metadata !3418, null}
!3418 = metadata !{i32 786443, metadata !35, metadata !3419, i32 1222, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3419 = metadata !{i32 786443, metadata !35, metadata !3416, i32 1220, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3420 = metadata !{i32 1223, i32 0, metadata !3421, null}
!3421 = metadata !{i32 786443, metadata !35, metadata !3418, i32 1222, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3422 = metadata !{i32 1224, i32 0, metadata !3421, null}
!3423 = metadata !{i32 1225, i32 0, metadata !3424, null}
!3424 = metadata !{i32 786443, metadata !35, metadata !3418, i32 1225, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3425 = metadata !{i32 1226, i32 0, metadata !3426, null}
!3426 = metadata !{i32 786443, metadata !35, metadata !3424, i32 1225, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3427 = metadata !{i32 1227, i32 0, metadata !3426, null}
!3428 = metadata !{i32 1229, i32 0, metadata !3429, null}
!3429 = metadata !{i32 786443, metadata !35, metadata !3424, i32 1228, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3430 = metadata !{i32 1230, i32 0, metadata !3429, null}
!3431 = metadata !{i32 1234, i32 0, metadata !566, null}
!3432 = metadata !{i32 1235, i32 0, metadata !566, null}
!3433 = metadata !{i32 1236, i32 0, metadata !566, null}
!3434 = metadata !{i32 1237, i32 0, metadata !566, null}
!3435 = metadata !{i32 40, i32 0, metadata !695, metadata !3436}
!3436 = metadata !{i32 1242, i32 0, metadata !570, null}
!3437 = metadata !{i32 43, i32 0, metadata !2187, metadata !3436}
!3438 = metadata !{i32 46, i32 0, metadata !706, metadata !3436}
!3439 = metadata !{i32 47, i32 0, metadata !704, metadata !3436}
!3440 = metadata !{i32 48, i32 0, metadata !703, metadata !3436}
!3441 = metadata !{i32 49, i32 0, metadata !2197, metadata !3436}
!3442 = metadata !{i32 1243, i32 0, metadata !3443, null}
!3443 = metadata !{i32 786443, metadata !35, metadata !570, i32 1243, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3444 = metadata !{i32 1245, i32 0, metadata !3445, null}
!3445 = metadata !{i32 786443, metadata !35, metadata !3446, i32 1245, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3446 = metadata !{i32 786443, metadata !35, metadata !3443, i32 1243, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3447 = metadata !{i32 1246, i32 0, metadata !3448, null}
!3448 = metadata !{i32 786443, metadata !35, metadata !3445, i32 1245, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3449 = metadata !{i32 1247, i32 0, metadata !3448, null}
!3450 = metadata !{i32 1248, i32 0, metadata !3451, null}
!3451 = metadata !{i32 786443, metadata !35, metadata !3445, i32 1248, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3452 = metadata !{i32 1249, i32 0, metadata !3453, null}
!3453 = metadata !{i32 786443, metadata !35, metadata !3451, i32 1248, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3454 = metadata !{i32 1250, i32 0, metadata !3453, null}
!3455 = metadata !{i32 1252, i32 0, metadata !3456, null}
!3456 = metadata !{i32 786443, metadata !35, metadata !3451, i32 1251, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3457 = metadata !{i32 1253, i32 0, metadata !3456, null}
!3458 = metadata !{i32 1257, i32 0, metadata !570, null}
!3459 = metadata !{i32 1258, i32 0, metadata !570, null}
!3460 = metadata !{i32 1259, i32 0, metadata !570, null}
!3461 = metadata !{i32 1260, i32 0, metadata !570, null}
!3462 = metadata !{i32 40, i32 0, metadata !695, metadata !3463}
!3463 = metadata !{i32 1263, i32 0, metadata !578, null}
!3464 = metadata !{i32 43, i32 0, metadata !2187, metadata !3463}
!3465 = metadata !{i32 46, i32 0, metadata !706, metadata !3463}
!3466 = metadata !{i32 47, i32 0, metadata !704, metadata !3463}
!3467 = metadata !{i32 48, i32 0, metadata !703, metadata !3463}
!3468 = metadata !{i32 49, i32 0, metadata !2197, metadata !3463}
!3469 = metadata !{i32 1264, i32 0, metadata !588, null}
!3470 = metadata !{i32 1267, i32 0, metadata !3471, null}
!3471 = metadata !{i32 786443, metadata !35, metadata !3472, i32 1267, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3472 = metadata !{i32 786443, metadata !35, metadata !588, i32 1264, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3473 = metadata !{i32 1268, i32 0, metadata !3474, null}
!3474 = metadata !{i32 786443, metadata !35, metadata !3471, i32 1267, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3475 = metadata !{i32 1269, i32 0, metadata !3476, null}
!3476 = metadata !{i32 786443, metadata !35, metadata !3474, i32 1269, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3477 = metadata !{i32 1270, i32 0, metadata !3478, null}
!3478 = metadata !{i32 786443, metadata !35, metadata !3474, i32 1270, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3479 = metadata !{i32 1271, i32 0, metadata !3480, null}
!3480 = metadata !{i32 786443, metadata !35, metadata !3474, i32 1271, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3481 = metadata !{i32 1272, i32 0, metadata !3482, null}
!3482 = metadata !{i32 786443, metadata !35, metadata !3474, i32 1272, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3483 = metadata !{i32 1273, i32 0, metadata !3474, null}
!3484 = metadata !{i32 1275, i32 0, metadata !3485, null}
!3485 = metadata !{i32 786443, metadata !35, metadata !3471, i32 1274, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3486 = metadata !{i32 1276, i32 0, metadata !3485, null}
!3487 = metadata !{i32 1279, i32 0, metadata !587, null}
!3488 = metadata !{i32 1280, i32 0, metadata !3489, null}
!3489 = metadata !{i32 786443, metadata !35, metadata !587, i32 1280, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3490 = metadata !{i32 1281, i32 0, metadata !3489, null}
!3491 = metadata !{i32 1282, i32 0, metadata !587, null}
!3492 = metadata !{i32 1284, i32 0, metadata !578, null}
!3493 = metadata !{i32 1296, i32 0, metadata !589, null}
!3494 = metadata !{i32 1299, i32 0, metadata !3495, null}
!3495 = metadata !{i32 786443, metadata !35, metadata !589, i32 1299, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3496 = metadata !{i32 1300, i32 0, metadata !3497, null}
!3497 = metadata !{i32 786443, metadata !35, metadata !3495, i32 1299, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3498 = metadata !{i32 1302, i32 0, metadata !3497, null}
!3499 = metadata !{i32 1306, i32 0, metadata !3500, null}
!3500 = metadata !{i32 786443, metadata !35, metadata !589, i32 1306, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3501 = metadata !{i32 1307, i32 0, metadata !3502, null}
!3502 = metadata !{i32 786443, metadata !35, metadata !3500, i32 1306, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3503 = metadata !{i32 1309, i32 0, metadata !3502, null}
!3504 = metadata !{i32 1313, i32 0, metadata !3505, null}
!3505 = metadata !{i32 786443, metadata !35, metadata !589, i32 1313, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3506 = metadata !{i32 1314, i32 0, metadata !3507, null}
!3507 = metadata !{i32 786443, metadata !35, metadata !3505, i32 1313, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3508 = metadata !{i32 1316, i32 0, metadata !3507, null}
!3509 = metadata !{i32 1325, i32 0, metadata !622, null}
!3510 = metadata !{i32 1326, i32 0, metadata !620, null}
!3511 = metadata !{metadata !2202, metadata !2202, i64 0}
!3512 = metadata !{i32 64, i32 0, metadata !687, metadata !3513}
!3513 = metadata !{i32 1327, i32 0, metadata !619, null}
!3514 = metadata !{i32 66, i32 0, metadata !2329, metadata !3513}
!3515 = metadata !{i32 65, i32 0, metadata !686, metadata !3513}
!3516 = metadata !{i32 1328, i32 0, metadata !3517, null}
!3517 = metadata !{i32 786443, metadata !35, metadata !619, i32 1328, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3518 = metadata !{i32 1329, i32 0, metadata !3519, null}
!3519 = metadata !{i32 786443, metadata !35, metadata !3517, i32 1328, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3520 = metadata !{i32 1330, i32 0, metadata !3519, null}
!3521 = metadata !{i32 1331, i32 0, metadata !3522, null}
!3522 = metadata !{i32 786443, metadata !35, metadata !3517, i32 1331, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3523 = metadata !{i32 1333, i32 0, metadata !3524, null}
!3524 = metadata !{i32 786443, metadata !35, metadata !3525, i32 1333, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3525 = metadata !{i32 786443, metadata !35, metadata !3522, i32 1331, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3526 = metadata !{i32 1334, i32 0, metadata !3527, null}
!3527 = metadata !{i32 786443, metadata !35, metadata !3525, i32 1334, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3528 = metadata !{i32 1335, i32 0, metadata !3529, null}
!3529 = metadata !{i32 786443, metadata !35, metadata !3525, i32 1335, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3530 = metadata !{i32 1336, i32 0, metadata !3525, null}
!3531 = metadata !{i32 1337, i32 0, metadata !3525, null}
!3532 = metadata !{i32 1338, i32 0, metadata !3533, null}
!3533 = metadata !{i32 786443, metadata !35, metadata !3534, i32 1338, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3534 = metadata !{i32 786443, metadata !35, metadata !3522, i32 1337, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3535 = metadata !{i32 1339, i32 0, metadata !3536, null}
!3536 = metadata !{i32 786443, metadata !35, metadata !3534, i32 1339, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3537 = metadata !{i32 1340, i32 0, metadata !3538, null}
!3538 = metadata !{i32 786443, metadata !35, metadata !3534, i32 1340, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3539 = metadata !{i32 1341, i32 0, metadata !3540, null}
!3540 = metadata !{i32 786443, metadata !35, metadata !3534, i32 1341, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3541 = metadata !{i32 1346, i32 0, metadata !625, null}
!3542 = metadata !{i32 1349, i32 0, metadata !624, null}
!3543 = metadata !{i32 1350, i32 0, metadata !624, null}
!3544 = metadata !{i32 1353, i32 0, metadata !631, null}
!3545 = metadata !{i32 1356, i32 0, metadata !3546, null}
!3546 = metadata !{i32 786443, metadata !35, metadata !3547, i32 1356, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3547 = metadata !{i32 786443, metadata !35, metadata !631, i32 1353, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3548 = metadata !{i32 1357, i32 0, metadata !3549, null}
!3549 = metadata !{i32 786443, metadata !35, metadata !3546, i32 1356, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3550 = metadata !{i32 1358, i32 0, metadata !3549, null}
!3551 = metadata !{i32 1361, i32 0, metadata !630, null}
!3552 = metadata !{i32 1364, i32 0, metadata !629, null}
!3553 = metadata !{i32 64, i32 0, metadata !687, metadata !3554}
!3554 = metadata !{i32 1365, i32 0, metadata !628, null}
!3555 = metadata !{i32 66, i32 0, metadata !2329, metadata !3554}
!3556 = metadata !{i32 65, i32 0, metadata !686, metadata !3554}
!3557 = metadata !{i32 1366, i32 0, metadata !3558, null}
!3558 = metadata !{i32 786443, metadata !35, metadata !628, i32 1366, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3559 = metadata !{i32 1367, i32 0, metadata !3560, null}
!3560 = metadata !{i32 786443, metadata !35, metadata !3561, i32 1367, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3561 = metadata !{i32 786443, metadata !35, metadata !3558, i32 1366, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3562 = metadata !{i32 1368, i32 0, metadata !3563, null}
!3563 = metadata !{i32 786443, metadata !35, metadata !3561, i32 1368, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3564 = metadata !{i32 1369, i32 0, metadata !3565, null}
!3565 = metadata !{i32 786443, metadata !35, metadata !3561, i32 1369, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3566 = metadata !{i32 1376, i32 0, metadata !589, null}
!3567 = metadata !{i32 1384, i32 0, metadata !632, null}
!3568 = metadata !{i32 1386, i32 0, metadata !3569, null}
!3569 = metadata !{i32 786443, metadata !35, metadata !632, i32 1386, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3570 = metadata !{metadata !2190, metadata !2192, i64 80}
!3571 = metadata !{i32 1387, i32 0, metadata !3572, null}
!3572 = metadata !{i32 786443, metadata !35, metadata !3569, i32 1386, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3573 = metadata !{i32 1388, i32 0, metadata !3572, null}
!3574 = metadata !{i32 1389, i32 0, metadata !3572, null}
!3575 = metadata !{i32 1392, i32 0, metadata !3576, null}
!3576 = metadata !{i32 786443, metadata !35, metadata !632, i32 1392, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3577 = metadata !{i32 1393, i32 0, metadata !3578, null}
!3578 = metadata !{i32 786443, metadata !35, metadata !3579, i32 1393, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3579 = metadata !{i32 786443, metadata !35, metadata !3576, i32 1392, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3580 = metadata !{i32 1395, i32 0, metadata !3579, null}
!3581 = metadata !{i32 1396, i32 0, metadata !3579, null}
!3582 = metadata !{i32 1417, i32 0, metadata !661, metadata !3583}
!3583 = metadata !{i32 1398, i32 0, metadata !632, null}
!3584 = metadata !{i32 1418, i32 0, metadata !661, metadata !3583}
!3585 = metadata !{i32 1423, i32 0, metadata !655, metadata !3586}
!3586 = metadata !{i32 1399, i32 0, metadata !632, null}
!3587 = metadata !{i32 1424, i32 0, metadata !655, metadata !3586}
!3588 = metadata !{i32 1403, i32 0, metadata !632, null}
!3589 = metadata !{i32 1404, i32 0, metadata !632, null}
!3590 = metadata !{i32 1405, i32 0, metadata !3591, null}
!3591 = metadata !{i32 786443, metadata !35, metadata !632, i32 1405, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3592 = metadata !{i32 1406, i32 0, metadata !3593, null}
!3593 = metadata !{i32 786443, metadata !35, metadata !3591, i32 1405, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3594 = metadata !{i32 1407, i32 0, metadata !3593, null}
!3595 = metadata !{i32 1411, i32 0, metadata !632, null}
!3596 = metadata !{i32 1458, i32 0, metadata !3597, null}
!3597 = metadata !{i32 786443, metadata !35, metadata !639, i32 1458, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3598 = metadata !{i32 1459, i32 0, metadata !3599, null}
!3599 = metadata !{i32 786443, metadata !35, metadata !3597, i32 1458, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3600 = metadata !{i32 1460, i32 0, metadata !3599, null}
!3601 = metadata !{i32 1463, i32 0, metadata !3602, null}
!3602 = metadata !{i32 786443, metadata !35, metadata !639, i32 1463, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3603 = metadata !{i32 1467, i32 0, metadata !639, null}
!3604 = metadata !{i32 1468, i32 0, metadata !639, null}
!3605 = metadata !{i32 1469, i32 0, metadata !639, null}
!3606 = metadata !{i32 1470, i32 0, metadata !639, null}
!3607 = metadata !{i32 114, i32 0, metadata !718, null}
!3608 = metadata !{i32 115, i32 0, metadata !718, null}
!3609 = metadata !{i32 503, i32 0, metadata !3610, metadata !3611}
!3610 = metadata !{i32 786443, metadata !785, metadata !784} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!3611 = metadata !{i32 117, i32 0, metadata !718, null}
!3612 = metadata !{i32 119, i32 0, metadata !718, null}
!3613 = metadata !{i32 120, i32 0, metadata !718, null}
!3614 = metadata !{i32 121, i32 0, metadata !3615, null}
!3615 = metadata !{i32 786443, metadata !716, metadata !718, i32 121, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3616 = metadata !{i32 122, i32 0, metadata !3617, null}
!3617 = metadata !{i32 786443, metadata !716, metadata !3615, i32 121, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3618 = metadata !{i32 123, i32 0, metadata !3617, null}
!3619 = metadata !{i32 127, i32 0, metadata !3620, null}
!3620 = metadata !{i32 786443, metadata !716, metadata !718, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3621 = metadata !{i32 128, i32 0, metadata !3622, null}
!3622 = metadata !{i32 786443, metadata !716, metadata !3620, i32 127, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3623 = metadata !{metadata !2190, metadata !2192, i64 8}
!3624 = metadata !{i32 129, i32 0, metadata !3622, null}
!3625 = metadata !{i32 130, i32 0, metadata !3622, null}
!3626 = metadata !{i32 131, i32 0, metadata !3622, null}
!3627 = metadata !{i32 132, i32 0, metadata !3620, null}
!3628 = metadata !{i32 134, i32 0, metadata !718, null}
!3629 = metadata !{i32 135, i32 0, metadata !3630, null}
!3630 = metadata !{i32 786443, metadata !716, metadata !718, i32 135, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3631 = metadata !{i32 136, i32 0, metadata !3632, null}
!3632 = metadata !{i32 786443, metadata !716, metadata !3630, i32 135, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3633 = metadata !{i32 137, i32 0, metadata !3632, null}
!3634 = metadata !{i32 138, i32 0, metadata !3632, null}
!3635 = metadata !{i32 139, i32 0, metadata !3632, null}
!3636 = metadata !{i32 140, i32 0, metadata !3632, null}
!3637 = metadata !{i32 142, i32 0, metadata !3632, null}
!3638 = metadata !{i32 143, i32 0, metadata !3632, null}
!3639 = metadata !{i32 144, i32 0, metadata !3632, null}
!3640 = metadata !{i32 145, i32 0, metadata !3632, null}
!3641 = metadata !{i32 146, i32 0, metadata !3632, null}
!3642 = metadata !{i32 147, i32 0, metadata !3632, null}
!3643 = metadata !{i32 150, i32 0, metadata !3644, null}
!3644 = metadata !{i32 786443, metadata !716, metadata !718, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3645 = metadata !{i32 151, i32 0, metadata !3646, null}
!3646 = metadata !{i32 786443, metadata !716, metadata !3644, i32 150, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3647 = metadata !{i32 152, i32 0, metadata !3646, null}
!3648 = metadata !{i32 153, i32 0, metadata !3646, null}
!3649 = metadata !{i32 154, i32 0, metadata !3646, null}
!3650 = metadata !{i32 155, i32 0, metadata !3646, null}
!3651 = metadata !{i32 156, i32 0, metadata !3644, null}
!3652 = metadata !{i32 158, i32 0, metadata !718, null}
!3653 = metadata !{i32 97, i32 0, metadata !756, metadata !3654}
!3654 = metadata !{i32 159, i32 0, metadata !718, null}
!3655 = metadata !{i32 99, i32 0, metadata !756, metadata !3654}
!3656 = metadata !{i32 100, i32 0, metadata !756, metadata !3654}
!3657 = metadata !{metadata !2234, metadata !2191, i64 772}
!3658 = metadata !{i32 160, i32 0, metadata !718, null}
!3659 = metadata !{i32 161, i32 0, metadata !718, null}
!3660 = metadata !{i32 48, i32 0, metadata !762, null}
!3661 = metadata !{i32 50, i32 0, metadata !762, null}
!3662 = metadata !{i32 51, i32 0, metadata !3663, null}
!3663 = metadata !{i32 786443, metadata !716, metadata !762, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3664 = metadata !{i32 53, i32 0, metadata !762, null}
!3665 = metadata !{i32 52, i32 0, metadata !3663, null}
!3666 = metadata !{i32 55, i32 0, metadata !762, null}
!3667 = metadata !{i32 57, i32 0, metadata !762, null}
!3668 = metadata !{i32 58, i32 0, metadata !762, null} ; [ DW_TAG_imported_module ]
!3669 = metadata !{i32 59, i32 0, metadata !762, null}
!3670 = metadata !{i32 61, i32 0, metadata !762, null}
!3671 = metadata !{i32 64, i32 0, metadata !3672, null}
!3672 = metadata !{i32 786443, metadata !716, metadata !762, i32 64, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3673 = metadata !{i32 66, i32 0, metadata !3672, null}
!3674 = metadata !{i32 71, i32 0, metadata !762, null}
!3675 = metadata !{i32 75, i32 0, metadata !762, null}
!3676 = metadata !{metadata !2201, metadata !2202, i64 56}
!3677 = metadata !{i32 77, i32 0, metadata !762, null}
!3678 = metadata !{i32 78, i32 0, metadata !762, null}
!3679 = metadata !{metadata !2201, metadata !2202, i64 0}
!3680 = metadata !{i32 79, i32 0, metadata !762, null}
!3681 = metadata !{metadata !2201, metadata !2202, i64 40}
!3682 = metadata !{i32 80, i32 0, metadata !762, null}
!3683 = metadata !{i32 81, i32 0, metadata !762, null}
!3684 = metadata !{i32 82, i32 0, metadata !762, null}
!3685 = metadata !{i32 83, i32 0, metadata !762, null}
!3686 = metadata !{i32 84, i32 0, metadata !762, null}
!3687 = metadata !{metadata !2201, metadata !2202, i64 16}
!3688 = metadata !{i32 85, i32 0, metadata !762, null}
!3689 = metadata !{i32 86, i32 0, metadata !762, null}
!3690 = metadata !{i32 87, i32 0, metadata !762, null}
!3691 = metadata !{i32 88, i32 0, metadata !762, null}
!3692 = metadata !{i32 89, i32 0, metadata !762, null}
!3693 = metadata !{i32 90, i32 0, metadata !762, null}
!3694 = metadata !{metadata !2201, metadata !2202, i64 104}
!3695 = metadata !{i32 92, i32 0, metadata !762, null}
!3696 = metadata !{metadata !2201, metadata !2202, i64 48}
!3697 = metadata !{i32 93, i32 0, metadata !762, null}
!3698 = metadata !{metadata !2201, metadata !2202, i64 64}
!3699 = metadata !{i32 94, i32 0, metadata !762, null}
!3700 = metadata !{i32 95, i32 0, metadata !762, null}
!3701 = metadata !{i32 23, i32 0, metadata !830, null}
!3702 = metadata !{i32 24, i32 0, metadata !830, null}
!3703 = metadata !{i32 25, i32 0, metadata !830, null}
!3704 = metadata !{i32 30, i32 0, metadata !839, null}
!3705 = metadata !{i32 31, i32 0, metadata !839, null}
!3706 = metadata !{i32 35, i32 0, metadata !861, null}
!3707 = metadata !{i32 55, i32 0, metadata !867, null}
!3708 = metadata !{i32 56, i32 0, metadata !873, null}
!3709 = metadata !{i32 57, i32 0, metadata !877, null}
!3710 = metadata !{i32 58, i32 0, metadata !881, null} ; [ DW_TAG_imported_module ]
!3711 = metadata !{i32 59, i32 0, metadata !889, null}
!3712 = metadata !{i32 60, i32 0, metadata !893, null}
!3713 = metadata !{i32 63, i32 0, metadata !900, null}
!3714 = metadata !{i32 64, i32 0, metadata !900, null}
!3715 = metadata !{i32 65, i32 0, metadata !900, null}
!3716 = metadata !{i32 63, i32 0, metadata !900, metadata !3717}
!3717 = metadata !{i32 69, i32 0, metadata !903, null}
!3718 = metadata !{i32 64, i32 0, metadata !900, metadata !3717}
!3719 = metadata !{i32 86, i32 0, metadata !907, null}
!3720 = metadata !{i32 87, i32 0, metadata !907, null}
!3721 = metadata !{metadata !2192, metadata !2192, i64 0}
!3722 = metadata !{i32 90, i32 0, metadata !907, null}
!3723 = metadata !{i32 98, i32 0, metadata !907, null}
!3724 = metadata !{i32 102, i32 0, metadata !907, null}
!3725 = metadata !{i32 105, i32 0, metadata !3726, null}
!3726 = metadata !{i32 786443, metadata !905, metadata !907, i32 105, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3727 = metadata !{i32 54, i32 0, metadata !993, metadata !3725}
!3728 = metadata !{i32 55, i32 0, metadata !3729, metadata !3725}
!3729 = metadata !{i32 786443, metadata !905, metadata !3730, i32 55, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3730 = metadata !{i32 786443, metadata !905, metadata !993, i32 54, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3731 = metadata !{i32 57, i32 0, metadata !3730, metadata !3725}
!3732 = metadata !{i32 58, i32 0, metadata !3730, metadata !3725} ; [ DW_TAG_imported_module ]
!3733 = metadata !{i32 123, i32 0, metadata !907, null}
!3734 = metadata !{i32 130, i32 0, metadata !941, null}
!3735 = metadata !{i32 106, i32 0, metadata !3736, null}
!3736 = metadata !{i32 786443, metadata !905, metadata !3726, i32 105, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3737 = metadata !{i32 124, i32 0, metadata !942, null}
!3738 = metadata !{i32 54, i32 0, metadata !993, metadata !3737}
!3739 = metadata !{i32 55, i32 0, metadata !3729, metadata !3737}
!3740 = metadata !{i32 57, i32 0, metadata !3730, metadata !3737}
!3741 = metadata !{i32 58, i32 0, metadata !3730, metadata !3737} ; [ DW_TAG_imported_module ]
!3742 = metadata !{i32 126, i32 0, metadata !3743, null}
!3743 = metadata !{i32 786443, metadata !905, metadata !941, i32 126, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3744 = metadata !{i32 127, i32 0, metadata !3743, null}
!3745 = metadata !{i32 129, i32 0, metadata !941, null}
!3746 = metadata !{i32 34, i32 0, metadata !3747, metadata !3745}
!3747 = metadata !{i32 786443, metadata !905, metadata !980, i32 34, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3748 = metadata !{i32 36, i32 0, metadata !980, metadata !3745}
!3749 = metadata !{i32 39, i32 0, metadata !3750, metadata !3745}
!3750 = metadata !{i32 786443, metadata !905, metadata !3751, i32 39, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3751 = metadata !{i32 786443, metadata !905, metadata !3752, i32 37, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3752 = metadata !{i32 786443, metadata !905, metadata !980, i32 36, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3753 = metadata !{i32 37, i32 0, metadata !3751, metadata !3745}
!3754 = metadata !{i32 40, i32 0, metadata !3755, metadata !3745}
!3755 = metadata !{i32 786443, metadata !905, metadata !3750, i32 39, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3756 = metadata !{i32 42, i32 0, metadata !3757, metadata !3745}
!3757 = metadata !{i32 786443, metadata !905, metadata !3750, i32 41, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3758 = metadata !{i32 132, i32 0, metadata !941, null}
!3759 = metadata !{i32 77, i32 0, metadata !3760, metadata !3761}
!3760 = metadata !{i32 786443, metadata !905, metadata !972, i32 77, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3761 = metadata !{i32 131, i32 0, metadata !941, null}
!3762 = metadata !{i32 78, i32 0, metadata !3763, metadata !3761}
!3763 = metadata !{i32 786443, metadata !905, metadata !3760, i32 77, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3764 = metadata !{i32 80, i32 0, metadata !3765, metadata !3761}
!3765 = metadata !{i32 786443, metadata !905, metadata !3760, i32 79, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3766 = metadata !{i32 81, i32 0, metadata !3765, metadata !3761}
!3767 = metadata !{i32 134, i32 0, metadata !941, null}
!3768 = metadata !{i32 54, i32 0, metadata !993, metadata !3769}
!3769 = metadata !{i32 135, i32 0, metadata !946, null}
!3770 = metadata !{i32 55, i32 0, metadata !3729, metadata !3769}
!3771 = metadata !{i32 57, i32 0, metadata !3730, metadata !3769}
!3772 = metadata !{i32 58, i32 0, metadata !3730, metadata !3769} ; [ DW_TAG_imported_module ]
!3773 = metadata !{i32 139, i32 0, metadata !3774, null}
!3774 = metadata !{i32 786443, metadata !905, metadata !945, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3775 = metadata !{i32 140, i32 0, metadata !3774, null}
!3776 = metadata !{i32 142, i32 0, metadata !945, null}
!3777 = metadata !{i32 143, i32 0, metadata !945, null}
!3778 = metadata !{i32 34, i32 0, metadata !3747, metadata !3777}
!3779 = metadata !{i32 36, i32 0, metadata !980, metadata !3777}
!3780 = metadata !{i32 39, i32 0, metadata !3750, metadata !3777}
!3781 = metadata !{i32 37, i32 0, metadata !3751, metadata !3777}
!3782 = metadata !{i32 40, i32 0, metadata !3755, metadata !3777}
!3783 = metadata !{i32 42, i32 0, metadata !3757, metadata !3777}
!3784 = metadata !{i32 144, i32 0, metadata !945, null}
!3785 = metadata !{i32 34, i32 0, metadata !3747, metadata !3784}
!3786 = metadata !{i32 36, i32 0, metadata !980, metadata !3784}
!3787 = metadata !{i32 39, i32 0, metadata !3750, metadata !3784}
!3788 = metadata !{i32 37, i32 0, metadata !3751, metadata !3784}
!3789 = metadata !{i32 40, i32 0, metadata !3755, metadata !3784}
!3790 = metadata !{i32 42, i32 0, metadata !3757, metadata !3784}
!3791 = metadata !{i32 145, i32 0, metadata !945, null}
!3792 = metadata !{i32 34, i32 0, metadata !3747, metadata !3791}
!3793 = metadata !{i32 36, i32 0, metadata !980, metadata !3791}
!3794 = metadata !{i32 39, i32 0, metadata !3750, metadata !3791}
!3795 = metadata !{i32 37, i32 0, metadata !3751, metadata !3791}
!3796 = metadata !{i32 40, i32 0, metadata !3755, metadata !3791}
!3797 = metadata !{i32 42, i32 0, metadata !3757, metadata !3791}
!3798 = metadata !{i32 147, i32 0, metadata !945, null}
!3799 = metadata !{i32 148, i32 0, metadata !3800, null}
!3800 = metadata !{i32 786443, metadata !905, metadata !945, i32 148, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3801 = metadata !{i32 149, i32 0, metadata !3802, null}
!3802 = metadata !{i32 786443, metadata !905, metadata !3800, i32 148, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3803 = metadata !{i32 151, i32 0, metadata !3802, null}
!3804 = metadata !{i32 77, i32 0, metadata !3760, metadata !3805}
!3805 = metadata !{i32 150, i32 0, metadata !3802, null}
!3806 = metadata !{i32 78, i32 0, metadata !3763, metadata !3805}
!3807 = metadata !{i32 80, i32 0, metadata !3765, metadata !3805}
!3808 = metadata !{i32 81, i32 0, metadata !3765, metadata !3805}
!3809 = metadata !{i32 54, i32 0, metadata !993, metadata !3810}
!3810 = metadata !{i32 155, i32 0, metadata !949, null}
!3811 = metadata !{i32 55, i32 0, metadata !3729, metadata !3810}
!3812 = metadata !{i32 57, i32 0, metadata !3730, metadata !3810}
!3813 = metadata !{i32 58, i32 0, metadata !3730, metadata !3810} ; [ DW_TAG_imported_module ]
!3814 = metadata !{i32 158, i32 0, metadata !3815, null}
!3815 = metadata !{i32 786443, metadata !905, metadata !948, i32 158, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3816 = metadata !{i32 159, i32 0, metadata !3815, null}
!3817 = metadata !{i32 161, i32 0, metadata !948, null}
!3818 = metadata !{i32 162, i32 0, metadata !948, null}
!3819 = metadata !{i32 34, i32 0, metadata !3747, metadata !3818}
!3820 = metadata !{i32 36, i32 0, metadata !980, metadata !3818}
!3821 = metadata !{i32 39, i32 0, metadata !3750, metadata !3818}
!3822 = metadata !{i32 37, i32 0, metadata !3751, metadata !3818}
!3823 = metadata !{i32 40, i32 0, metadata !3755, metadata !3818}
!3824 = metadata !{i32 42, i32 0, metadata !3757, metadata !3818}
!3825 = metadata !{i32 163, i32 0, metadata !948, null}
!3826 = metadata !{i32 34, i32 0, metadata !3747, metadata !3825}
!3827 = metadata !{i32 36, i32 0, metadata !980, metadata !3825}
!3828 = metadata !{i32 39, i32 0, metadata !3750, metadata !3825}
!3829 = metadata !{i32 37, i32 0, metadata !3751, metadata !3825}
!3830 = metadata !{i32 40, i32 0, metadata !3755, metadata !3825}
!3831 = metadata !{i32 42, i32 0, metadata !3757, metadata !3825}
!3832 = metadata !{i32 165, i32 0, metadata !948, null}
!3833 = metadata !{i32 54, i32 0, metadata !993, metadata !3834}
!3834 = metadata !{i32 165, i32 0, metadata !952, null}
!3835 = metadata !{i32 55, i32 0, metadata !3729, metadata !3834}
!3836 = metadata !{i32 57, i32 0, metadata !3730, metadata !3834}
!3837 = metadata !{i32 58, i32 0, metadata !3730, metadata !3834} ; [ DW_TAG_imported_module ]
!3838 = metadata !{i32 54, i32 0, metadata !993, metadata !3839}
!3839 = metadata !{i32 166, i32 0, metadata !952, null}
!3840 = metadata !{i32 55, i32 0, metadata !3729, metadata !3839}
!3841 = metadata !{i32 57, i32 0, metadata !3730, metadata !3839}
!3842 = metadata !{i32 58, i32 0, metadata !3730, metadata !3839} ; [ DW_TAG_imported_module ]
!3843 = metadata !{i32 170, i32 0, metadata !3844, null}
!3844 = metadata !{i32 786443, metadata !905, metadata !951, i32 170, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3845 = metadata !{i32 171, i32 0, metadata !3844, null}
!3846 = metadata !{i32 173, i32 0, metadata !951, null}
!3847 = metadata !{i32 34, i32 0, metadata !3747, metadata !3846}
!3848 = metadata !{i32 36, i32 0, metadata !980, metadata !3846}
!3849 = metadata !{i32 39, i32 0, metadata !3750, metadata !3846}
!3850 = metadata !{i32 37, i32 0, metadata !3751, metadata !3846}
!3851 = metadata !{i32 40, i32 0, metadata !3755, metadata !3846}
!3852 = metadata !{i32 42, i32 0, metadata !3757, metadata !3846}
!3853 = metadata !{i32 174, i32 0, metadata !951, null}
!3854 = metadata !{i32 54, i32 0, metadata !993, metadata !3855}
!3855 = metadata !{i32 174, i32 0, metadata !958, null}
!3856 = metadata !{i32 55, i32 0, metadata !3729, metadata !3855}
!3857 = metadata !{i32 57, i32 0, metadata !3730, metadata !3855}
!3858 = metadata !{i32 58, i32 0, metadata !3730, metadata !3855} ; [ DW_TAG_imported_module ]
!3859 = metadata !{i32 54, i32 0, metadata !993, metadata !3860}
!3860 = metadata !{i32 175, i32 0, metadata !958, null}
!3861 = metadata !{i32 55, i32 0, metadata !3729, metadata !3860}
!3862 = metadata !{i32 57, i32 0, metadata !3730, metadata !3860}
!3863 = metadata !{i32 58, i32 0, metadata !3730, metadata !3860} ; [ DW_TAG_imported_module ]
!3864 = metadata !{i32 177, i32 0, metadata !3865, null}
!3865 = metadata !{i32 786443, metadata !905, metadata !958, i32 175, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3866 = metadata !{i32 178, i32 0, metadata !3865, null}
!3867 = metadata !{i32 54, i32 0, metadata !993, metadata !3868}
!3868 = metadata !{i32 179, i32 0, metadata !957, null}
!3869 = metadata !{i32 55, i32 0, metadata !3729, metadata !3868}
!3870 = metadata !{i32 57, i32 0, metadata !3730, metadata !3868}
!3871 = metadata !{i32 58, i32 0, metadata !3730, metadata !3868} ; [ DW_TAG_imported_module ]
!3872 = metadata !{i32 181, i32 0, metadata !3873, null}
!3873 = metadata !{i32 786443, metadata !905, metadata !957, i32 179, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3874 = metadata !{i32 182, i32 0, metadata !3873, null}
!3875 = metadata !{i32 54, i32 0, metadata !993, metadata !3876}
!3876 = metadata !{i32 183, i32 0, metadata !956, null}
!3877 = metadata !{i32 55, i32 0, metadata !3729, metadata !3876}
!3878 = metadata !{i32 57, i32 0, metadata !3730, metadata !3876}
!3879 = metadata !{i32 58, i32 0, metadata !3730, metadata !3876} ; [ DW_TAG_imported_module ]
!3880 = metadata !{i32 185, i32 0, metadata !3881, null}
!3881 = metadata !{i32 786443, metadata !905, metadata !956, i32 183, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3882 = metadata !{i32 186, i32 0, metadata !3881, null}
!3883 = metadata !{i32 54, i32 0, metadata !993, metadata !3884}
!3884 = metadata !{i32 187, i32 0, metadata !955, null}
!3885 = metadata !{i32 55, i32 0, metadata !3729, metadata !3884}
!3886 = metadata !{i32 57, i32 0, metadata !3730, metadata !3884}
!3887 = metadata !{i32 58, i32 0, metadata !3730, metadata !3884} ; [ DW_TAG_imported_module ]
!3888 = metadata !{i32 189, i32 0, metadata !3889, null}
!3889 = metadata !{i32 786443, metadata !905, metadata !954, i32 189, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3890 = metadata !{i32 190, i32 0, metadata !3889, null}
!3891 = metadata !{i32 192, i32 0, metadata !954, null}
!3892 = metadata !{i32 34, i32 0, metadata !3747, metadata !3891}
!3893 = metadata !{i32 36, i32 0, metadata !980, metadata !3891}
!3894 = metadata !{i32 39, i32 0, metadata !3750, metadata !3891}
!3895 = metadata !{i32 37, i32 0, metadata !3751, metadata !3891}
!3896 = metadata !{i32 40, i32 0, metadata !3755, metadata !3891}
!3897 = metadata !{i32 42, i32 0, metadata !3757, metadata !3891}
!3898 = metadata !{i32 193, i32 0, metadata !954, null}
!3899 = metadata !{i32 77, i32 0, metadata !3760, metadata !3900}
!3900 = metadata !{i32 196, i32 0, metadata !3901, null}
!3901 = metadata !{i32 786443, metadata !905, metadata !955, i32 194, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3902 = metadata !{i32 78, i32 0, metadata !3763, metadata !3900}
!3903 = metadata !{i32 80, i32 0, metadata !3765, metadata !3900}
!3904 = metadata !{i32 81, i32 0, metadata !3765, metadata !3900}
!3905 = metadata !{i32 200, i32 0, metadata !907, null}
!3906 = metadata !{i32 201, i32 0, metadata !907, null}
!3907 = metadata !{i32 202, i32 0, metadata !907, null}
!3908 = metadata !{i32 203, i32 0, metadata !907, null}
!3909 = metadata !{i32 205, i32 0, metadata !907, null}
!3910 = metadata !{i32 206, i32 0, metadata !907, null}
!3911 = metadata !{i32 208, i32 0, metadata !907, null}
!3912 = metadata !{i32 210, i32 0, metadata !907, null}
!3913 = metadata !{i32 24, i32 0, metadata !988, null}
!3914 = metadata !{i32 65, i32 0, metadata !959, null}
!3915 = metadata !{i32 66, i32 0, metadata !959, null}
!3916 = metadata !{i32 67, i32 0, metadata !959, null}
!3917 = metadata !{i32 69, i32 0, metadata !3918, null}
!3918 = metadata !{i32 786443, metadata !905, metadata !959, i32 69, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3919 = metadata !{i32 70, i32 0, metadata !3918, null}
!3920 = metadata !{i32 50, i32 0, metadata !967, metadata !3919}
!3921 = metadata !{i32 72, i32 0, metadata !959, null}
!3922 = metadata !{i32 73, i32 0, metadata !959, null}
!3923 = metadata !{i32 42, i32 0, metadata !1034, null}
!3924 = metadata !{i32 43, i32 0, metadata !1034, null}
!3925 = metadata !{i32 51, i32 0, metadata !1143, null}
!3926 = metadata !{i32 52, i32 0, metadata !1143, null}
!3927 = metadata !{i32 58, i32 0, metadata !1150, null} ; [ DW_TAG_imported_module ]
!3928 = metadata !{i32 59, i32 0, metadata !1150, null}
!3929 = metadata !{i32 65, i32 0, metadata !1161, null}
!3930 = metadata !{i32 71, i32 0, metadata !1164, null}
!3931 = metadata !{i32 80, i32 0, metadata !1165, null}
!3932 = metadata !{i32 81, i32 0, metadata !1165, null}
!3933 = metadata !{i32 82, i32 0, metadata !1165, null}
!3934 = metadata !{i32 87, i32 0, metadata !1171, null}
!3935 = metadata !{i32 92, i32 0, metadata !1224, null}
!3936 = metadata !{i32 97, i32 0, metadata !1230, null}
!3937 = metadata !{i32 98, i32 0, metadata !1230, null}
!3938 = metadata !{i32 99, i32 0, metadata !1230, null}
!3939 = metadata !{i32 104, i32 0, metadata !1238, null}
!3940 = metadata !{i32 105, i32 0, metadata !1238, null}
!3941 = metadata !{i32 106, i32 0, metadata !1238, null}
!3942 = metadata !{i32 111, i32 0, metadata !1242, null}
!3943 = metadata !{i32 112, i32 0, metadata !1242, null}
!3944 = metadata !{i32 113, i32 0, metadata !1242, null}
!3945 = metadata !{i32 118, i32 0, metadata !1251, null}
!3946 = metadata !{i32 119, i32 0, metadata !1251, null}
!3947 = metadata !{i32 120, i32 0, metadata !1251, null}
!3948 = metadata !{i32 125, i32 0, metadata !1256, null}
!3949 = metadata !{i32 126, i32 0, metadata !1256, null}
!3950 = metadata !{i32 127, i32 0, metadata !1256, null}
!3951 = metadata !{i32 132, i32 0, metadata !1260, null}
!3952 = metadata !{i32 133, i32 0, metadata !1260, null}
!3953 = metadata !{i32 134, i32 0, metadata !1260, null}
!3954 = metadata !{i32 139, i32 0, metadata !1264, null}
!3955 = metadata !{i32 140, i32 0, metadata !1264, null}
!3956 = metadata !{i32 141, i32 0, metadata !1264, null}
!3957 = metadata !{i32 146, i32 0, metadata !1268, null}
!3958 = metadata !{i32 154, i32 0, metadata !1281, null}
!3959 = metadata !{i32 155, i32 0, metadata !1281, null}
!3960 = metadata !{metadata !2203, metadata !2202, i64 0}
!3961 = metadata !{i32 156, i32 0, metadata !1281, null}
!3962 = metadata !{metadata !2411, metadata !2202, i64 8}
!3963 = metadata !{metadata !2203, metadata !2202, i64 8}
!3964 = metadata !{i32 157, i32 0, metadata !1281, null}
!3965 = metadata !{i32 162, i32 0, metadata !1294, null}
!3966 = metadata !{i32 163, i32 0, metadata !1294, null}
!3967 = metadata !{i32 164, i32 0, metadata !1294, null}
!3968 = metadata !{i32 169, i32 0, metadata !1300, null}
!3969 = metadata !{i32 170, i32 0, metadata !3970, null}
!3970 = metadata !{i32 786443, metadata !998, metadata !1300, i32 170, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/stubs.c]
!3971 = metadata !{i32 172, i32 0, metadata !1300, null}
!3972 = metadata !{i32 171, i32 0, metadata !3970, null}
!3973 = metadata !{i32 177, i32 0, metadata !3974, null}
!3974 = metadata !{i32 786443, metadata !998, metadata !1308, i32 177, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/stubs.c]
!3975 = metadata !{i32 178, i32 0, metadata !3974, null}
!3976 = metadata !{i32 180, i32 0, metadata !3977, null}
!3977 = metadata !{i32 786443, metadata !998, metadata !3974, i32 179, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/stubs.c]
!3978 = metadata !{i32 186, i32 0, metadata !1308, null}
!3979 = metadata !{i32 191, i32 0, metadata !1322, null}
!3980 = metadata !{i32 196, i32 0, metadata !1327, null}
!3981 = metadata !{i32 197, i32 0, metadata !1327, null}
!3982 = metadata !{i32 201, i32 0, metadata !1328, null}
!3983 = metadata !{i32 202, i32 0, metadata !1328, null}
!3984 = metadata !{i32 206, i32 0, metadata !1329, null}
!3985 = metadata !{i32 207, i32 0, metadata !1329, null}
!3986 = metadata !{i32 212, i32 0, metadata !1332, null}
!3987 = metadata !{i32 217, i32 0, metadata !1336, null}
!3988 = metadata !{i32 222, i32 0, metadata !1340, null}
!3989 = metadata !{i32 227, i32 0, metadata !1347, null}
!3990 = metadata !{i32 228, i32 0, metadata !1347, null}
!3991 = metadata !{i32 229, i32 0, metadata !1347, null}
!3992 = metadata !{i32 234, i32 0, metadata !1360, null}
!3993 = metadata !{i32 235, i32 0, metadata !1360, null}
!3994 = metadata !{i32 236, i32 0, metadata !1360, null}
!3995 = metadata !{i32 240, i32 0, metadata !1373, null}
!3996 = metadata !{i32 251, i32 0, metadata !1375, null}
!3997 = metadata !{i32 256, i32 0, metadata !1381, null}
!3998 = metadata !{i32 261, i32 0, metadata !1384, null}
!3999 = metadata !{i32 268, i32 0, metadata !1390, null}
!4000 = metadata !{i32 273, i32 0, metadata !1395, null}
!4001 = metadata !{i32 274, i32 0, metadata !1395, null}
!4002 = metadata !{i32 279, i32 0, metadata !1403, null}
!4003 = metadata !{i32 280, i32 0, metadata !1403, null}
!4004 = metadata !{i32 281, i32 0, metadata !1403, null}
!4005 = metadata !{i32 286, i32 0, metadata !1408, null}
!4006 = metadata !{i32 287, i32 0, metadata !1408, null}
!4007 = metadata !{i32 288, i32 0, metadata !1408, null}
!4008 = metadata !{i32 293, i32 0, metadata !1490, null}
!4009 = metadata !{i32 294, i32 0, metadata !1490, null}
!4010 = metadata !{i32 295, i32 0, metadata !1490, null}
!4011 = metadata !{i32 300, i32 0, metadata !1499, null}
!4012 = metadata !{i32 301, i32 0, metadata !1499, null}
!4013 = metadata !{i32 302, i32 0, metadata !1499, null}
!4014 = metadata !{i32 307, i32 0, metadata !1506, null}
!4015 = metadata !{i32 308, i32 0, metadata !1506, null}
!4016 = metadata !{i32 309, i32 0, metadata !1506, null}
!4017 = metadata !{i32 322, i32 0, metadata !1517, null}
!4018 = metadata !{i32 323, i32 0, metadata !1517, null}
!4019 = metadata !{i32 324, i32 0, metadata !1517, null}
!4020 = metadata !{i32 329, i32 0, metadata !1520, null}
!4021 = metadata !{i32 330, i32 0, metadata !1520, null}
!4022 = metadata !{i32 331, i32 0, metadata !1520, null}
!4023 = metadata !{i32 336, i32 0, metadata !1523, null}
!4024 = metadata !{i32 337, i32 0, metadata !1523, null}
!4025 = metadata !{i32 338, i32 0, metadata !1523, null}
!4026 = metadata !{i32 343, i32 0, metadata !1532, null}
!4027 = metadata !{i32 344, i32 0, metadata !1532, null}
!4028 = metadata !{i32 345, i32 0, metadata !1532, null}
!4029 = metadata !{i32 350, i32 0, metadata !1537, null}
!4030 = metadata !{i32 351, i32 0, metadata !1537, null}
!4031 = metadata !{i32 352, i32 0, metadata !1537, null}
!4032 = metadata !{i32 357, i32 0, metadata !1542, null}
!4033 = metadata !{i32 358, i32 0, metadata !1542, null}
!4034 = metadata !{i32 359, i32 0, metadata !1542, null}
!4035 = metadata !{i32 364, i32 0, metadata !1549, null}
!4036 = metadata !{i32 365, i32 0, metadata !1549, null}
!4037 = metadata !{i32 366, i32 0, metadata !1549, null}
!4038 = metadata !{i32 371, i32 0, metadata !1555, null}
!4039 = metadata !{i32 372, i32 0, metadata !1555, null}
!4040 = metadata !{i32 373, i32 0, metadata !1555, null}
!4041 = metadata !{i32 378, i32 0, metadata !1562, null}
!4042 = metadata !{i32 379, i32 0, metadata !1562, null}
!4043 = metadata !{i32 380, i32 0, metadata !1562, null}
!4044 = metadata !{i32 387, i32 0, metadata !1567, null}
!4045 = metadata !{i32 388, i32 0, metadata !1567, null}
!4046 = metadata !{i32 389, i32 0, metadata !1567, null}
!4047 = metadata !{i32 394, i32 0, metadata !1576, null}
!4048 = metadata !{i32 395, i32 0, metadata !1576, null}
!4049 = metadata !{i32 396, i32 0, metadata !1576, null}
!4050 = metadata !{i32 401, i32 0, metadata !1579, null}
!4051 = metadata !{i32 402, i32 0, metadata !1579, null}
!4052 = metadata !{i32 403, i32 0, metadata !1579, null}
!4053 = metadata !{i32 408, i32 0, metadata !1583, null}
!4054 = metadata !{i32 409, i32 0, metadata !1583, null}
!4055 = metadata !{i32 410, i32 0, metadata !1583, null}
!4056 = metadata !{i32 415, i32 0, metadata !1587, null}
!4057 = metadata !{i32 416, i32 0, metadata !1587, null}
!4058 = metadata !{i32 417, i32 0, metadata !1587, null}
!4059 = metadata !{i32 422, i32 0, metadata !1590, null}
!4060 = metadata !{i32 423, i32 0, metadata !1590, null}
!4061 = metadata !{i32 428, i32 0, metadata !1593, null}
!4062 = metadata !{i32 429, i32 0, metadata !1593, null}
!4063 = metadata !{i32 430, i32 0, metadata !1593, null}
!4064 = metadata !{i32 435, i32 0, metadata !1601, null}
!4065 = metadata !{i32 436, i32 0, metadata !1601, null}
!4066 = metadata !{i32 437, i32 0, metadata !1601, null}
!4067 = metadata !{i32 442, i32 0, metadata !1607, null}
!4068 = metadata !{i32 443, i32 0, metadata !1607, null}
!4069 = metadata !{i32 444, i32 0, metadata !1607, null}
!4070 = metadata !{i32 449, i32 0, metadata !1613, null}
!4071 = metadata !{i32 450, i32 0, metadata !1613, null}
!4072 = metadata !{i32 451, i32 0, metadata !1613, null}
!4073 = metadata !{i32 456, i32 0, metadata !1614, null}
!4074 = metadata !{i32 457, i32 0, metadata !1614, null}
!4075 = metadata !{i32 458, i32 0, metadata !1614, null}
!4076 = metadata !{i32 463, i32 0, metadata !1622, null}
!4077 = metadata !{i32 464, i32 0, metadata !1622, null}
!4078 = metadata !{i32 465, i32 0, metadata !1622, null}
!4079 = metadata !{i32 470, i32 0, metadata !1629, null}
!4080 = metadata !{i32 471, i32 0, metadata !1629, null}
!4081 = metadata !{i32 472, i32 0, metadata !1629, null}
!4082 = metadata !{i32 477, i32 0, metadata !1637, null}
!4083 = metadata !{i32 478, i32 0, metadata !1637, null}
!4084 = metadata !{i32 479, i32 0, metadata !1637, null}
!4085 = metadata !{i32 484, i32 0, metadata !1652, null}
!4086 = metadata !{i32 485, i32 0, metadata !1652, null}
!4087 = metadata !{i32 486, i32 0, metadata !1652, null}
!4088 = metadata !{i32 491, i32 0, metadata !1666, null}
!4089 = metadata !{i32 492, i32 0, metadata !1666, null}
!4090 = metadata !{i32 493, i32 0, metadata !1666, null}
!4091 = metadata !{i32 498, i32 0, metadata !1669, null}
!4092 = metadata !{i32 499, i32 0, metadata !1669, null}
!4093 = metadata !{i32 500, i32 0, metadata !1669, null}
!4094 = metadata !{i32 505, i32 0, metadata !1682, null}
!4095 = metadata !{i32 506, i32 0, metadata !1682, null}
!4096 = metadata !{i32 511, i32 0, metadata !1687, null}
!4097 = metadata !{i32 512, i32 0, metadata !1687, null}
!4098 = metadata !{i32 513, i32 0, metadata !1687, null}
!4099 = metadata !{i32 518, i32 0, metadata !1690, null}
!4100 = metadata !{i32 519, i32 0, metadata !1690, null}
!4101 = metadata !{i32 520, i32 0, metadata !1690, null}
!4102 = metadata !{i32 525, i32 0, metadata !1696, null}
!4103 = metadata !{i32 526, i32 0, metadata !1696, null}
!4104 = metadata !{i32 527, i32 0, metadata !1696, null}
!4105 = metadata !{i32 532, i32 0, metadata !1700, null}
!4106 = metadata !{i32 533, i32 0, metadata !1700, null}
!4107 = metadata !{i32 534, i32 0, metadata !1700, null}
!4108 = metadata !{i32 539, i32 0, metadata !1701, null}
!4109 = metadata !{i32 540, i32 0, metadata !1701, null}
!4110 = metadata !{i32 541, i32 0, metadata !1701, null}
!4111 = metadata !{i32 546, i32 0, metadata !1712, null}
!4112 = metadata !{i32 547, i32 0, metadata !1712, null}
!4113 = metadata !{i32 548, i32 0, metadata !1712, null}
!4114 = metadata !{i32 553, i32 0, metadata !1723, null}
!4115 = metadata !{i32 554, i32 0, metadata !1723, null}
!4116 = metadata !{i32 555, i32 0, metadata !1723, null}
!4117 = metadata !{i32 560, i32 0, metadata !1733, null}
!4118 = metadata !{i32 561, i32 0, metadata !1733, null}
!4119 = metadata !{i32 562, i32 0, metadata !1733, null}
!4120 = metadata !{i32 48, i32 0, metadata !1752, null}
!4121 = metadata !{i32 51, i32 0, metadata !1751, null}
!4122 = metadata !{i32 52, i32 0, metadata !1751, null}
!4123 = metadata !{i32 53, i32 0, metadata !1751, null}
!4124 = metadata !{i32 54, i32 0, metadata !1751, null}
!4125 = metadata !{i32 56, i32 0, metadata !1742, null}
!4126 = metadata !{i32 62, i32 0, metadata !1772, null}
!4127 = metadata !{i32 65, i32 0, metadata !1771, null}
!4128 = metadata !{i32 66, i32 0, metadata !1771, null}
!4129 = metadata !{i32 67, i32 0, metadata !1771, null}
!4130 = metadata !{i32 68, i32 0, metadata !1771, null}
!4131 = metadata !{i32 70, i32 0, metadata !1764, null}
!4132 = metadata !{i32 74, i32 0, metadata !1773, null}
!4133 = metadata !{i32 78, i32 0, metadata !1782, null}
!4134 = metadata !{i32 82, i32 0, metadata !1811, null}
!4135 = metadata !{i32 86, i32 0, metadata !1817, null}
!4136 = metadata !{i32 90, i32 0, metadata !1822, null}
!4137 = metadata !{i32 94, i32 0, metadata !1826, null}
!4138 = metadata !{i32 98, i32 0, metadata !1833, null}
!4139 = metadata !{i32 102, i32 0, metadata !1839, null}
!4140 = metadata !{i32 107, i32 0, metadata !1845, null}
!4141 = metadata !{i32 111, i32 0, metadata !1872, null}
!4142 = metadata !{i32 12, i32 0, metadata !1891, null}
!4143 = metadata !{i32 16, i32 0, metadata !1897, null}
!4144 = metadata !{i32 21, i32 0, metadata !1903, null}
!4145 = metadata !{i32 34, i32 0, metadata !1929, null}
!4146 = metadata !{i32 35, i32 0, metadata !1929, null}
!4147 = metadata !{i32 50, i32 0, metadata !1929, null}
!4148 = metadata !{i32 53, i32 0, metadata !1933, null}
!4149 = metadata !{i32 55, i32 0, metadata !4150, null}
!4150 = metadata !{i32 786443, metadata !1910, metadata !1933, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!4151 = metadata !{i32 56, i32 0, metadata !4150, null}
!4152 = metadata !{i32 66, i32 0, metadata !4150, null}
!4153 = metadata !{i32 67, i32 0, metadata !4150, null}
!4154 = metadata !{i32 69, i32 0, metadata !4150, null}
!4155 = metadata !{i32 70, i32 0, metadata !4150, null}
!4156 = metadata !{i32 72, i32 0, metadata !4150, null}
!4157 = metadata !{i32 73, i32 0, metadata !4150, null}
!4158 = metadata !{i32 79, i32 0, metadata !1933, null}
!4159 = metadata !{i32 17, i32 0, metadata !1947, null}
!4160 = metadata !{i32 22, i32 0, metadata !1953, null}
!4161 = metadata !{i32 27, i32 0, metadata !1958, null}
!4162 = metadata !{i32 69, i32 0, metadata !4163, null}
!4163 = metadata !{i32 786443, metadata !1937, metadata !1963, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4164 = metadata !{i32 71, i32 0, metadata !4165, null}
!4165 = metadata !{i32 786443, metadata !1937, metadata !4163, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4166 = metadata !{i32 73, i32 0, metadata !4167, null}
!4167 = metadata !{i32 786443, metadata !1937, metadata !4165, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4168 = metadata !{i32 75, i32 0, metadata !4169, null}
!4169 = metadata !{i32 786443, metadata !1937, metadata !4167, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4170 = metadata !{i32 76, i32 0, metadata !4171, null}
!4171 = metadata !{i32 786443, metadata !1937, metadata !4169, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4172 = metadata !{i32 79, i32 0, metadata !1963, null}
!4173 = metadata !{i32 84, i32 0, metadata !4174, null}
!4174 = metadata !{i32 786443, metadata !1937, metadata !1966, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4175 = metadata !{i32 86, i32 0, metadata !4176, null}
!4176 = metadata !{i32 786443, metadata !1937, metadata !4174, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4177 = metadata !{i32 88, i32 0, metadata !4178, null}
!4178 = metadata !{i32 786443, metadata !1937, metadata !4176, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4179 = metadata !{i32 90, i32 0, metadata !4180, null}
!4180 = metadata !{i32 786443, metadata !1937, metadata !4178, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4181 = metadata !{i32 91, i32 0, metadata !4182, null}
!4182 = metadata !{i32 786443, metadata !1937, metadata !4180, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4183 = metadata !{i32 94, i32 0, metadata !1966, null}
!4184 = metadata !{i32 100, i32 0, metadata !4185, null}
!4185 = metadata !{i32 786443, metadata !1937, metadata !1969, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4186 = metadata !{i32 102, i32 0, metadata !4187, null}
!4187 = metadata !{i32 786443, metadata !1937, metadata !4185, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4188 = metadata !{i32 104, i32 0, metadata !4189, null}
!4189 = metadata !{i32 786443, metadata !1937, metadata !4187, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4190 = metadata !{i32 106, i32 0, metadata !4191, null}
!4191 = metadata !{i32 786443, metadata !1937, metadata !4189, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4192 = metadata !{i32 107, i32 0, metadata !4193, null}
!4193 = metadata !{i32 786443, metadata !1937, metadata !4191, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!4194 = metadata !{i32 110, i32 0, metadata !1969, null}
!4195 = metadata !{i32 115, i32 0, metadata !1972, null}
!4196 = metadata !{i32 120, i32 0, metadata !1975, null}
!4197 = metadata !{i32 125, i32 0, metadata !1978, null}
!4198 = metadata !{i32 13, i32 0, metadata !4199, null}
!4199 = metadata !{i32 786443, metadata !1982, metadata !1984, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!4200 = metadata !{i32 14, i32 0, metadata !4199, null}
!4201 = metadata !{i32 15, i32 0, metadata !1984, null}
!4202 = metadata !{i32 15, i32 0, metadata !1994, null}
!4203 = metadata !{i32 16, i32 0, metadata !1994, null}
!4204 = metadata !{i32 21, i32 0, metadata !4205, null}
!4205 = metadata !{i32 786443, metadata !2000, metadata !2002, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!4206 = metadata !{i32 27, i32 0, metadata !4207, null}
!4207 = metadata !{i32 786443, metadata !2000, metadata !4205, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!4208 = metadata !{i32 29, i32 0, metadata !2002, null}
!4209 = metadata !{i32 16, i32 0, metadata !4210, null}
!4210 = metadata !{i32 786443, metadata !2010, metadata !2012, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!4211 = metadata !{i32 17, i32 0, metadata !4210, null}
!4212 = metadata !{i32 19, i32 0, metadata !4213, null}
!4213 = metadata !{i32 786443, metadata !2010, metadata !2012, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!4214 = metadata !{i32 22, i32 0, metadata !4215, null}
!4215 = metadata !{i32 786443, metadata !2010, metadata !4213, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!4216 = metadata !{i32 25, i32 0, metadata !4217, null}
!4217 = metadata !{i32 786443, metadata !2010, metadata !4215, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!4218 = metadata !{i32 26, i32 0, metadata !4219, null}
!4219 = metadata !{i32 786443, metadata !2010, metadata !4217, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!4220 = metadata !{i32 27, i32 0, metadata !4219, null}
!4221 = metadata !{i32 28, i32 0, metadata !4222, null}
!4222 = metadata !{i32 786443, metadata !2010, metadata !4217, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!4223 = metadata !{i32 29, i32 0, metadata !4222, null}
!4224 = metadata !{i32 32, i32 0, metadata !4215, null}
!4225 = metadata !{i32 34, i32 0, metadata !2012, null}
!4226 = metadata !{i32 19, i32 0, metadata !2025, null}
!4227 = metadata !{i32 21, i32 0, metadata !4228, null}
!4228 = metadata !{i32 786443, metadata !2022, metadata !2025, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!4229 = metadata !{i32 23, i32 0, metadata !4228, null}
!4230 = metadata !{i32 25, i32 0, metadata !4228, null}
!4231 = metadata !{i32 27, i32 0, metadata !4228, null}
!4232 = metadata !{i32 29, i32 0, metadata !4228, null}
!4233 = metadata !{i32 31, i32 0, metadata !4228, null}
!4234 = metadata !{i32 33, i32 0, metadata !2025, null}
!4235 = metadata !{i32 16, i32 0, metadata !2034, null}
!4236 = metadata !{i32 17, i32 0, metadata !2034, null}
!4237 = metadata !{metadata !4237, metadata !4238, metadata !4239}
!4238 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!4239 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!4240 = metadata !{metadata !4240, metadata !4238, metadata !4239}
!4241 = metadata !{i32 18, i32 0, metadata !2034, null}
!4242 = metadata !{i32 16, i32 0, metadata !4243, null}
!4243 = metadata !{i32 786443, metadata !2046, metadata !2048, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!4244 = metadata !{i32 19, i32 0, metadata !4245, null}
!4245 = metadata !{i32 786443, metadata !2046, metadata !2048, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!4246 = metadata !{i32 20, i32 0, metadata !4247, null}
!4247 = metadata !{i32 786443, metadata !2046, metadata !4245, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!4248 = metadata !{metadata !4248, metadata !4238, metadata !4239}
!4249 = metadata !{metadata !4249, metadata !4238, metadata !4239}
!4250 = metadata !{i32 22, i32 0, metadata !4251, null}
!4251 = metadata !{i32 786443, metadata !2046, metadata !4245, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!4252 = metadata !{i32 24, i32 0, metadata !4251, null}
!4253 = metadata !{i32 23, i32 0, metadata !4251, null}
!4254 = metadata !{metadata !4254, metadata !4238, metadata !4239}
!4255 = metadata !{metadata !4255, metadata !4238, metadata !4239}
!4256 = metadata !{i32 28, i32 0, metadata !2048, null}
!4257 = metadata !{i32 15, i32 0, metadata !2062, null}
!4258 = metadata !{i32 16, i32 0, metadata !2062, null}
!4259 = metadata !{metadata !4259, metadata !4238, metadata !4239}
!4260 = metadata !{metadata !4260, metadata !4238, metadata !4239}
!4261 = metadata !{i32 17, i32 0, metadata !2062, null}
!4262 = metadata !{i32 13, i32 0, metadata !2076, null}
!4263 = metadata !{i32 14, i32 0, metadata !2076, null}
!4264 = metadata !{i32 15, i32 0, metadata !2076, null}
!4265 = metadata !{i32 12, i32 0, metadata !2091, null}
!4266 = metadata !{i32 16, i32 0, metadata !2095, null}
!4267 = metadata !{i32 21, i32 0, metadata !2098, null}
