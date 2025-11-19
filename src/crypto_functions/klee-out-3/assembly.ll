; ModuleID = 'klee_init_env64_Debug+Asserts.bc'
source_filename = "/tmp/klee_src/runtime/POSIX/klee_init_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exe_file_t.17 = type { i32, i32, i64, %struct.exe_disk_file_t.16* }
%struct.exe_disk_file_t.16 = type { i32, i8*, %struct.stat64.15* }
%struct.stat64.15 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec.14, %struct.timespec.14, %struct.timespec.14, [3 x i64] }
%struct.timespec.14 = type { i64, i64 }
%struct.exe_file_system_t.18 = type { i32, %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16*, i32, %struct.exe_disk_file_t.16*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_sym_env_t.19 = type { [32 x %struct.exe_file_t.17], i32, i32 }
%struct.__va_list_tag.13 = type { i32, i32, i8*, i8* }
%struct.statfs.11 = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t.10, i64, i64, i64, [4 x i64] }
%struct.__fsid_t.10 = type { [2 x i32] }
%struct.dirent64.12 = type { i64, i64, i16, i8, [256 x i8] }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.fd_set = type { [16 x i64] }

@__const.klee_init_env.sym_arg_name = private unnamed_addr constant [6 x i8] c"arg\00\00\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [964 x i8] c"klee_init_env\0A\0Ausage: (klee_init_env) [options] [program arguments]\0A  -sym-arg <N>              - Replace by a symbolic argument with length N\0A  -sym-args <MIN> <MAX> <N> - Replace by at least MIN arguments and at most\0A                              MAX arguments, each with maximum length N\0A  -sym-files <NUM> <N>      - Make NUM symbolic files ('A', 'B', 'C', etc.),\0A                              each with size N\0A  -sym-stdin <N>            - Make stdin symbolic with size N.\0A  -sym-stdout               - Make stdout symbolic.\0A  -save-all-writes          - Allow write operations to execute as expected\0A                              even if they exceed the file size. If set to 0, all\0A                              writes exceeding the initial file size are discarded.\0A                              Note: file offset is always incremented.\0A  -max-fail <N>             - Allow up to N injected failures\0A  -fd-fail                  - Shortcut for '-max-fail 1'\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--sym-arg\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-sym-arg\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"--sym-arg expects an integer argument <max-len>\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"No more than 100 symbolic arguments allowed.\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--sym-args\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"-sym-args\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"--sym-args expects three integer arguments <min-argvs> <max-argvs> <max-len>\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Invalid range to --sym-args\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"n_args\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"--sym-files\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-sym-files\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"--sym-files expects two integer arguments <no-sym-files> <sym-file-len>\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Multiple --sym-files are not allowed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"The first argument to --sym-files (number of files) cannot be 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"The second argument to --sym-files (file size) cannot be 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"--sym-stdin\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"-sym-stdin\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"--sym-stdin expects one integer argument <sym-stdin-len>\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"--sym-stdout\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"-sym-stdout\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"--save-all-writes\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"-save-all-writes\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--fd-fail\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"-fd-fail\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"--bout-file\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"-bout-file\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"--max-fail\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"-max-fail\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"--max-fail expects an integer argument <max-failures>\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"out of memory in klee_init_env\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"/tmp/klee_src/runtime/POSIX/klee_init_env.c\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"user.err\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"too many arguments for klee_init_env\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@.str.1.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.logic_bomb.ciphertext = private unnamed_addr constant [16 x i8] c":\D7{\B4\0Dz6`\A8\9E\CA\F3$f\EF\97", align 16
@__const.logic_bomb.plaintext = private unnamed_addr constant [16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", align 16
@.str.2.37 = private unnamed_addr constant [11 x i8] c"decodetext\00", align 1
@.str.3.38 = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str.4.39 = private unnamed_addr constant [25 x i8] c"aes_cf_klee_simplified.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str.5.42 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@__const.klee_init_fds.name = private unnamed_addr constant [7 x i8] c"?_data\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.46 = private unnamed_addr constant [38 x i8] c"/tmp/klee_src/runtime/POSIX/fd_init.c\00", align 1
@.str.2.47 = private unnamed_addr constant [31 x i8] c"out of memory in klee_init_env\00", align 1
@.str.3.48 = private unnamed_addr constant [9 x i8] c"user.err\00", align 1
@.str.4.49 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.5.50 = private unnamed_addr constant [10 x i8] c"read_fail\00", align 1
@.str.6.51 = private unnamed_addr constant [11 x i8] c"write_fail\00", align 1
@.str.7.52 = private unnamed_addr constant [11 x i8] c"close_fail\00", align 1
@.str.8.53 = private unnamed_addr constant [15 x i8] c"ftruncate_fail\00", align 1
@.str.9.54 = private unnamed_addr constant [12 x i8] c"getcwd_fail\00", align 1
@.str.10.55 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.11.56 = private unnamed_addr constant [6 x i8] c"_stat\00", align 1
@.str.12.57 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@__PRETTY_FUNCTION__.__create_new_dfile = private unnamed_addr constant [88 x i8] c"void __create_new_dfile(exe_disk_file_t *, unsigned int, const char *, struct stat64 *)\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"/tmp/klee_src/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.61 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.62 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@__exe_env = dso_local global { <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 } { <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }> <{ %struct.exe_file_t.17 { i32 0, i32 5, i64 0, %struct.exe_disk_file_t.16* null }, %struct.exe_file_t.17 { i32 1, i32 9, i64 0, %struct.exe_disk_file_t.16* null }, %struct.exe_file_t.17 { i32 2, i32 9, i64 0, %struct.exe_disk_file_t.16* null }, [29 x %struct.exe_file_t.17] zeroinitializer }>, i32 18, i32 0 }, align 8, !dbg !0
@.str.71 = private unnamed_addr constant [46 x i8] c"Undefined call to open(): O_TRUNC | O_RDONLY\0A\00", align 1
@.str.1.72 = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [44 x i8] c"symbolic file descriptor, ignoring (ENOENT)\00", align 1
@close.n_calls = internal global i32 0, align 4, !dbg !99
@__exe_fs = dso_local global %struct.exe_file_system_t.18 zeroinitializer, align 8, !dbg !6
@read.n_calls = internal global i32 0, align 4, !dbg !167
@.str.3.76 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@.str.4.77 = private unnamed_addr constant [33 x i8] c"/tmp/klee_src/runtime/POSIX/fd.c\00", align 1
@__PRETTY_FUNCTION__.read = private unnamed_addr constant [34 x i8] c"ssize_t read(int, void *, size_t)\00", align 1
@write.n_calls = internal global i32 0, align 4, !dbg !176
@.str.5.78 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.write = private unnamed_addr constant [41 x i8] c"ssize_t write(int, const void *, size_t)\00", align 1
@.str.6.79 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7.80 = private unnamed_addr constant [24 x i8] c"write() ignores bytes.\0A\00", align 1
@.str.8.83 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.__fd_lseek = private unnamed_addr constant [38 x i8] c"off64_t __fd_lseek(int, off64_t, int)\00", align 1
@.str.9.86 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@__PRETTY_FUNCTION__.fstatat = private unnamed_addr constant [51 x i8] c"int fstatat(int, const char *, struct stat *, int)\00", align 1
@.str.10.89 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 1
@chmod.n_calls = internal global i32 0, align 4, !dbg !183
@fchmod.n_calls = internal global i32 0, align 4, !dbg !190
@__fd_ftruncate.n_calls = internal global i32 0, align 4, !dbg !195
@.str.11.95 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str.12.98 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 1
@.str.13.99 = private unnamed_addr constant [18 x i8] c"s != (off64_t) -1\00", align 1
@__PRETTY_FUNCTION__.__fd_getdents = private unnamed_addr constant [65 x i8] c"int __fd_getdents(unsigned int, struct dirent64 *, unsigned int)\00", align 1
@.str.14.100 = private unnamed_addr constant [22 x i8] c"f->off != (off64_t)-1\00", align 1
@.str.15.101 = private unnamed_addr constant [41 x i8] c"(TCGETS) symbolic file, incomplete model\00", align 1
@.str.16.102 = private unnamed_addr constant [42 x i8] c"(TCSETS) symbolic file, silently ignoring\00", align 1
@.str.17.103 = private unnamed_addr constant [43 x i8] c"(TCSETSW) symbolic file, silently ignoring\00", align 1
@.str.18.104 = private unnamed_addr constant [43 x i8] c"(TCSETSF) symbolic file, silently ignoring\00", align 1
@.str.19.105 = private unnamed_addr constant [45 x i8] c"(TIOCGWINSZ) symbolic file, incomplete model\00", align 1
@.str.20.106 = private unnamed_addr constant [46 x i8] c"(TIOCSWINSZ) symbolic file, ignoring (EINVAL)\00", align 1
@.str.21.107 = private unnamed_addr constant [43 x i8] c"(FIONREAD) symbolic file, incomplete model\00", align 1
@.str.22.108 = private unnamed_addr constant [44 x i8] c"(MTIOCGET) symbolic file, ignoring (EINVAL)\00", align 1
@.str.23.111 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EBADF)\00", align 1
@.str.24.112 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@getcwd.n_calls = internal global i32 0, align 4, !dbg !200
@.str.25.113 = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1
@.str.26.90 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EPERM)\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1.123 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2.124 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

@__getdents64 = dso_local alias i64 (i32, i8*, i64), i64 (i32, i8*, i64)* @getdents64

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_init_env(i32* %argcPtr, i8*** %argvPtr) #0 !dbg !268 {
entry:
  %argcPtr.addr = alloca i32*, align 8
  %argvPtr.addr = alloca i8***, align 8
  %argc = alloca i32, align 4
  %argv = alloca i8**, align 8
  %new_argc = alloca i32, align 4
  %n_args = alloca i32, align 4
  %new_argv = alloca [1024 x i8*], align 16
  %max_len = alloca i32, align 4
  %min_argvs = alloca i32, align 4
  %max_argvs = alloca i32, align 4
  %sym_files = alloca i32, align 4
  %sym_file_len = alloca i32, align 4
  %sym_stdin_len = alloca i32, align 4
  %sym_stdout_flag = alloca i32, align 4
  %save_all_writes_flag = alloca i32, align 4
  %fd_fail = alloca i32, align 4
  %final_argv = alloca i8**, align 8
  %sym_arg_name = alloca [6 x i8], align 1
  %sym_arg_num = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %msg = alloca i8*, align 8
  %msg40 = alloca i8*, align 8
  %msg105 = alloca i8*, align 8
  %msg145 = alloca i8*, align 8
  %msg215 = alloca i8*, align 8
  store i32* %argcPtr, i32** %argcPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argcPtr.addr, metadata !273, metadata !DIExpression()), !dbg !274
  store i8*** %argvPtr, i8**** %argvPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8**** %argvPtr.addr, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i32*, i32** %argcPtr.addr, align 8, !dbg !279
  %1 = load i32, i32* %0, align 4, !dbg !280
  store i32 %1, i32* %argc, align 4, !dbg !278
  call void @llvm.dbg.declare(metadata i8*** %argv, metadata !281, metadata !DIExpression()), !dbg !282
  %2 = load i8***, i8**** %argvPtr.addr, align 8, !dbg !283
  %3 = load i8**, i8*** %2, align 8, !dbg !284
  store i8** %3, i8*** %argv, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata i32* %new_argc, metadata !285, metadata !DIExpression()), !dbg !286
  store i32 0, i32* %new_argc, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %n_args, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata [1024 x i8*]* %new_argv, metadata !289, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %max_len, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %min_argvs, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %max_argvs, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %sym_files, metadata !300, metadata !DIExpression()), !dbg !301
  store i32 0, i32* %sym_files, align 4, !dbg !301
  call void @llvm.dbg.declare(metadata i32* %sym_file_len, metadata !302, metadata !DIExpression()), !dbg !303
  store i32 0, i32* %sym_file_len, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata i32* %sym_stdin_len, metadata !304, metadata !DIExpression()), !dbg !305
  store i32 0, i32* %sym_stdin_len, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata i32* %sym_stdout_flag, metadata !306, metadata !DIExpression()), !dbg !307
  store i32 0, i32* %sym_stdout_flag, align 4, !dbg !307
  call void @llvm.dbg.declare(metadata i32* %save_all_writes_flag, metadata !308, metadata !DIExpression()), !dbg !309
  store i32 0, i32* %save_all_writes_flag, align 4, !dbg !309
  call void @llvm.dbg.declare(metadata i32* %fd_fail, metadata !310, metadata !DIExpression()), !dbg !311
  store i32 0, i32* %fd_fail, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata i8*** %final_argv, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata [6 x i8]* %sym_arg_name, metadata !314, metadata !DIExpression()), !dbg !318
  %4 = bitcast [6 x i8]* %sym_arg_name to i8*, !dbg !318
  %5 = call i8* @memcpy(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__const.klee_init_env.sym_arg_name, i32 0, i32 0), i64 6), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %sym_arg_num, metadata !319, metadata !DIExpression()), !dbg !320
  store i32 0, i32* %sym_arg_num, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata i32* %k, metadata !321, metadata !DIExpression()), !dbg !322
  store i32 0, i32* %k, align 4, !dbg !322
  call void @llvm.dbg.declare(metadata i32* %i, metadata !323, metadata !DIExpression()), !dbg !324
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 5, !dbg !325
  store i8 0, i8* %arrayidx, align 1, !dbg !326
  %6 = load i32, i32* %argc, align 4, !dbg !327
  %cmp = icmp eq i32 %6, 2, !dbg !329
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !330

land.lhs.true:                                    ; preds = %entry
  %7 = load i8**, i8*** %argv, align 8, !dbg !331
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1, !dbg !331
  %8 = load i8*, i8** %arrayidx1, align 8, !dbg !331
  %call = call i32 @__streq(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !332
  %tobool = icmp ne i32 %call, 0, !dbg !332
  br i1 %tobool, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %land.lhs.true
  call void @__emit_error(i8* getelementptr inbounds ([964 x i8], [964 x i8]* @.str.1, i64 0, i64 0)), !dbg !334
  br label %if.end, !dbg !336

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond, !dbg !337

while.cond:                                       ; preds = %if.end239, %if.end
  %9 = load i32, i32* %k, align 4, !dbg !338
  %10 = load i32, i32* %argc, align 4, !dbg !339
  %cmp2 = icmp slt i32 %9, %10, !dbg !340
  br i1 %cmp2, label %while.body, label %while.end, !dbg !337

while.body:                                       ; preds = %while.cond
  %11 = load i8**, i8*** %argv, align 8, !dbg !341
  %12 = load i32, i32* %k, align 4, !dbg !344
  %idxprom = sext i32 %12 to i64, !dbg !341
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %idxprom, !dbg !341
  %13 = load i8*, i8** %arrayidx3, align 8, !dbg !341
  %call4 = call i32 @__streq(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !345
  %tobool5 = icmp ne i32 %call4, 0, !dbg !345
  br i1 %tobool5, label %if.then10, label %lor.lhs.false, !dbg !346

lor.lhs.false:                                    ; preds = %while.body
  %14 = load i8**, i8*** %argv, align 8, !dbg !347
  %15 = load i32, i32* %k, align 4, !dbg !348
  %idxprom6 = sext i32 %15 to i64, !dbg !347
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 %idxprom6, !dbg !347
  %16 = load i8*, i8** %arrayidx7, align 8, !dbg !347
  %call8 = call i32 @__streq(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !349
  %tobool9 = icmp ne i32 %call8, 0, !dbg !349
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !350

if.then10:                                        ; preds = %lor.lhs.false, %while.body
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !351, metadata !DIExpression()), !dbg !353
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8** %msg, align 8, !dbg !353
  %17 = load i32, i32* %k, align 4, !dbg !354
  %inc = add nsw i32 %17, 1, !dbg !354
  store i32 %inc, i32* %k, align 4, !dbg !354
  %18 = load i32, i32* %argc, align 4, !dbg !356
  %cmp11 = icmp eq i32 %inc, %18, !dbg !357
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !358

if.then12:                                        ; preds = %if.then10
  %19 = load i8*, i8** %msg, align 8, !dbg !359
  call void @__emit_error(i8* %19), !dbg !360
  br label %if.end13, !dbg !360

if.end13:                                         ; preds = %if.then12, %if.then10
  %20 = load i8**, i8*** %argv, align 8, !dbg !361
  %21 = load i32, i32* %k, align 4, !dbg !362
  %inc14 = add nsw i32 %21, 1, !dbg !362
  store i32 %inc14, i32* %k, align 4, !dbg !362
  %idxprom15 = sext i32 %21 to i64, !dbg !361
  %arrayidx16 = getelementptr inbounds i8*, i8** %20, i64 %idxprom15, !dbg !361
  %22 = load i8*, i8** %arrayidx16, align 8, !dbg !361
  %23 = load i8*, i8** %msg, align 8, !dbg !363
  %call17 = call i64 @__str_to_int(i8* %22, i8* %23), !dbg !364
  %conv = trunc i64 %call17 to i32, !dbg !364
  store i32 %conv, i32* %max_len, align 4, !dbg !365
  %24 = load i32, i32* %sym_arg_num, align 4, !dbg !366
  %cmp18 = icmp ugt i32 %24, 99, !dbg !368
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !369

if.then20:                                        ; preds = %if.end13
  call void @__emit_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)), !dbg !370
  br label %if.end21, !dbg !370

if.end21:                                         ; preds = %if.then20, %if.end13
  %25 = load i32, i32* %sym_arg_num, align 4, !dbg !371
  %div = udiv i32 %25, 10, !dbg !372
  %add = add i32 48, %div, !dbg !373
  %conv22 = trunc i32 %add to i8, !dbg !374
  %arrayidx23 = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !375
  store i8 %conv22, i8* %arrayidx23, align 1, !dbg !376
  %26 = load i32, i32* %sym_arg_num, align 4, !dbg !377
  %rem = urem i32 %26, 10, !dbg !378
  %add24 = add i32 48, %rem, !dbg !379
  %conv25 = trunc i32 %add24 to i8, !dbg !380
  %arrayidx26 = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !381
  store i8 %conv25, i8* %arrayidx26, align 1, !dbg !382
  %27 = load i32, i32* %sym_arg_num, align 4, !dbg !383
  %inc27 = add i32 %27, 1, !dbg !383
  store i32 %inc27, i32* %sym_arg_num, align 4, !dbg !383
  %arraydecay = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %new_argv, i64 0, i64 0, !dbg !384
  %28 = load i32, i32* %max_len, align 4, !dbg !385
  %arraydecay28 = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 0, !dbg !386
  %call29 = call i8* @__get_sym_str(i32 %28, i8* %arraydecay28), !dbg !387
  call void @__add_arg(i32* %new_argc, i8** %arraydecay, i8* %call29, i32 1024), !dbg !388
  br label %if.end239, !dbg !389

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i8**, i8*** %argv, align 8, !dbg !390
  %30 = load i32, i32* %k, align 4, !dbg !392
  %idxprom30 = sext i32 %30 to i64, !dbg !390
  %arrayidx31 = getelementptr inbounds i8*, i8** %29, i64 %idxprom30, !dbg !390
  %31 = load i8*, i8** %arrayidx31, align 8, !dbg !390
  %call32 = call i32 @__streq(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)), !dbg !393
  %tobool33 = icmp ne i32 %call32, 0, !dbg !393
  br i1 %tobool33, label %if.then39, label %lor.lhs.false34, !dbg !394

lor.lhs.false34:                                  ; preds = %if.else
  %32 = load i8**, i8*** %argv, align 8, !dbg !395
  %33 = load i32, i32* %k, align 4, !dbg !396
  %idxprom35 = sext i32 %33 to i64, !dbg !395
  %arrayidx36 = getelementptr inbounds i8*, i8** %32, i64 %idxprom35, !dbg !395
  %34 = load i8*, i8** %arrayidx36, align 8, !dbg !395
  %call37 = call i32 @__streq(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)), !dbg !397
  %tobool38 = icmp ne i32 %call37, 0, !dbg !397
  br i1 %tobool38, label %if.then39, label %if.else94, !dbg !398

if.then39:                                        ; preds = %lor.lhs.false34, %if.else
  call void @llvm.dbg.declare(metadata i8** %msg40, metadata !399, metadata !DIExpression()), !dbg !401
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i8** %msg40, align 8, !dbg !401
  %35 = load i32, i32* %k, align 4, !dbg !402
  %add41 = add nsw i32 %35, 3, !dbg !404
  %36 = load i32, i32* %argc, align 4, !dbg !405
  %cmp42 = icmp sge i32 %add41, %36, !dbg !406
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !407

if.then44:                                        ; preds = %if.then39
  %37 = load i8*, i8** %msg40, align 8, !dbg !408
  call void @__emit_error(i8* %37), !dbg !409
  br label %if.end45, !dbg !409

if.end45:                                         ; preds = %if.then44, %if.then39
  %38 = load i32, i32* %k, align 4, !dbg !410
  %inc46 = add nsw i32 %38, 1, !dbg !410
  store i32 %inc46, i32* %k, align 4, !dbg !410
  %39 = load i8**, i8*** %argv, align 8, !dbg !411
  %40 = load i32, i32* %k, align 4, !dbg !412
  %inc47 = add nsw i32 %40, 1, !dbg !412
  store i32 %inc47, i32* %k, align 4, !dbg !412
  %idxprom48 = sext i32 %40 to i64, !dbg !411
  %arrayidx49 = getelementptr inbounds i8*, i8** %39, i64 %idxprom48, !dbg !411
  %41 = load i8*, i8** %arrayidx49, align 8, !dbg !411
  %42 = load i8*, i8** %msg40, align 8, !dbg !413
  %call50 = call i64 @__str_to_int(i8* %41, i8* %42), !dbg !414
  %conv51 = trunc i64 %call50 to i32, !dbg !414
  store i32 %conv51, i32* %min_argvs, align 4, !dbg !415
  %43 = load i8**, i8*** %argv, align 8, !dbg !416
  %44 = load i32, i32* %k, align 4, !dbg !417
  %inc52 = add nsw i32 %44, 1, !dbg !417
  store i32 %inc52, i32* %k, align 4, !dbg !417
  %idxprom53 = sext i32 %44 to i64, !dbg !416
  %arrayidx54 = getelementptr inbounds i8*, i8** %43, i64 %idxprom53, !dbg !416
  %45 = load i8*, i8** %arrayidx54, align 8, !dbg !416
  %46 = load i8*, i8** %msg40, align 8, !dbg !418
  %call55 = call i64 @__str_to_int(i8* %45, i8* %46), !dbg !419
  %conv56 = trunc i64 %call55 to i32, !dbg !419
  store i32 %conv56, i32* %max_argvs, align 4, !dbg !420
  %47 = load i8**, i8*** %argv, align 8, !dbg !421
  %48 = load i32, i32* %k, align 4, !dbg !422
  %inc57 = add nsw i32 %48, 1, !dbg !422
  store i32 %inc57, i32* %k, align 4, !dbg !422
  %idxprom58 = sext i32 %48 to i64, !dbg !421
  %arrayidx59 = getelementptr inbounds i8*, i8** %47, i64 %idxprom58, !dbg !421
  %49 = load i8*, i8** %arrayidx59, align 8, !dbg !421
  %50 = load i8*, i8** %msg40, align 8, !dbg !423
  %call60 = call i64 @__str_to_int(i8* %49, i8* %50), !dbg !424
  %conv61 = trunc i64 %call60 to i32, !dbg !424
  store i32 %conv61, i32* %max_len, align 4, !dbg !425
  %51 = load i32, i32* %min_argvs, align 4, !dbg !426
  %52 = load i32, i32* %max_argvs, align 4, !dbg !428
  %cmp62 = icmp ugt i32 %51, %52, !dbg !429
  br i1 %cmp62, label %if.then70, label %lor.lhs.false64, !dbg !430

lor.lhs.false64:                                  ; preds = %if.end45
  %53 = load i32, i32* %min_argvs, align 4, !dbg !431
  %cmp65 = icmp eq i32 %53, 0, !dbg !432
  %54 = load i32, i32* %max_argvs, align 4
  %cmp68 = icmp eq i32 %54, 0
  %or.cond = select i1 %cmp65, i1 %cmp68, i1 false, !dbg !433
  br i1 %or.cond, label %if.then70, label %if.end71, !dbg !433

if.then70:                                        ; preds = %lor.lhs.false64, %if.end45
  call void @__emit_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0)), !dbg !434
  br label %if.end71, !dbg !434

if.end71:                                         ; preds = %if.then70, %lor.lhs.false64
  %55 = load i32, i32* %min_argvs, align 4, !dbg !435
  %56 = load i32, i32* %max_argvs, align 4, !dbg !436
  %add72 = add i32 %56, 1, !dbg !437
  %call73 = call i32 @klee_range(i32 %55, i32 %add72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !438
  store i32 %call73, i32* %n_args, align 4, !dbg !439
  %57 = load i32, i32* %sym_arg_num, align 4, !dbg !440
  %58 = load i32, i32* %max_argvs, align 4, !dbg !442
  %add74 = add i32 %57, %58, !dbg !443
  %cmp75 = icmp ugt i32 %add74, 99, !dbg !444
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !445

if.then77:                                        ; preds = %if.end71
  call void @__emit_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)), !dbg !446
  br label %if.end78, !dbg !446

if.end78:                                         ; preds = %if.then77, %if.end71
  store i32 0, i32* %i, align 4, !dbg !447
  br label %for.cond, !dbg !449

for.cond:                                         ; preds = %for.body, %if.end78
  %59 = load i32, i32* %i, align 4, !dbg !450
  %60 = load i32, i32* %n_args, align 4, !dbg !452
  %cmp79 = icmp slt i32 %59, %60, !dbg !453
  br i1 %cmp79, label %for.body, label %if.end239, !dbg !454

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %sym_arg_num, align 4, !dbg !455
  %div81 = udiv i32 %61, 10, !dbg !457
  %add82 = add i32 48, %div81, !dbg !458
  %conv83 = trunc i32 %add82 to i8, !dbg !459
  %arrayidx84 = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !460
  store i8 %conv83, i8* %arrayidx84, align 1, !dbg !461
  %62 = load i32, i32* %sym_arg_num, align 4, !dbg !462
  %rem85 = urem i32 %62, 10, !dbg !463
  %add86 = add i32 48, %rem85, !dbg !464
  %conv87 = trunc i32 %add86 to i8, !dbg !465
  %arrayidx88 = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !466
  store i8 %conv87, i8* %arrayidx88, align 1, !dbg !467
  %63 = load i32, i32* %sym_arg_num, align 4, !dbg !468
  %inc89 = add i32 %63, 1, !dbg !468
  store i32 %inc89, i32* %sym_arg_num, align 4, !dbg !468
  %arraydecay90 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %new_argv, i64 0, i64 0, !dbg !469
  %64 = load i32, i32* %max_len, align 4, !dbg !470
  %arraydecay91 = getelementptr inbounds [6 x i8], [6 x i8]* %sym_arg_name, i64 0, i64 0, !dbg !471
  %call92 = call i8* @__get_sym_str(i32 %64, i8* %arraydecay91), !dbg !472
  call void @__add_arg(i32* %new_argc, i8** %arraydecay90, i8* %call92, i32 1024), !dbg !473
  %65 = load i32, i32* %i, align 4, !dbg !474
  %inc93 = add nsw i32 %65, 1, !dbg !474
  store i32 %inc93, i32* %i, align 4, !dbg !474
  br label %for.cond, !dbg !475, !llvm.loop !476

if.else94:                                        ; preds = %lor.lhs.false34
  %66 = load i8**, i8*** %argv, align 8, !dbg !478
  %67 = load i32, i32* %k, align 4, !dbg !480
  %idxprom95 = sext i32 %67 to i64, !dbg !478
  %arrayidx96 = getelementptr inbounds i8*, i8** %66, i64 %idxprom95, !dbg !478
  %68 = load i8*, i8** %arrayidx96, align 8, !dbg !478
  %call97 = call i32 @__streq(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)), !dbg !481
  %tobool98 = icmp ne i32 %call97, 0, !dbg !481
  br i1 %tobool98, label %if.then104, label %lor.lhs.false99, !dbg !482

lor.lhs.false99:                                  ; preds = %if.else94
  %69 = load i8**, i8*** %argv, align 8, !dbg !483
  %70 = load i32, i32* %k, align 4, !dbg !484
  %idxprom100 = sext i32 %70 to i64, !dbg !483
  %arrayidx101 = getelementptr inbounds i8*, i8** %69, i64 %idxprom100, !dbg !483
  %71 = load i8*, i8** %arrayidx101, align 8, !dbg !483
  %call102 = call i32 @__streq(i8* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)), !dbg !485
  %tobool103 = icmp ne i32 %call102, 0, !dbg !485
  br i1 %tobool103, label %if.then104, label %if.else134, !dbg !486

if.then104:                                       ; preds = %lor.lhs.false99, %if.else94
  call void @llvm.dbg.declare(metadata i8** %msg105, metadata !487, metadata !DIExpression()), !dbg !489
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i8** %msg105, align 8, !dbg !489
  %72 = load i32, i32* %k, align 4, !dbg !490
  %add106 = add nsw i32 %72, 2, !dbg !492
  %73 = load i32, i32* %argc, align 4, !dbg !493
  %cmp107 = icmp sge i32 %add106, %73, !dbg !494
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !495

if.then109:                                       ; preds = %if.then104
  %74 = load i8*, i8** %msg105, align 8, !dbg !496
  call void @__emit_error(i8* %74), !dbg !497
  br label %if.end110, !dbg !497

if.end110:                                        ; preds = %if.then109, %if.then104
  %75 = load i32, i32* %sym_files, align 4, !dbg !498
  %cmp111 = icmp ne i32 %75, 0, !dbg !500
  br i1 %cmp111, label %if.then113, label %if.end114, !dbg !501

if.then113:                                       ; preds = %if.end110
  call void @__emit_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0)), !dbg !502
  br label %if.end114, !dbg !502

if.end114:                                        ; preds = %if.then113, %if.end110
  %76 = load i32, i32* %k, align 4, !dbg !503
  %inc115 = add nsw i32 %76, 1, !dbg !503
  store i32 %inc115, i32* %k, align 4, !dbg !503
  %77 = load i8**, i8*** %argv, align 8, !dbg !504
  %78 = load i32, i32* %k, align 4, !dbg !505
  %inc116 = add nsw i32 %78, 1, !dbg !505
  store i32 %inc116, i32* %k, align 4, !dbg !505
  %idxprom117 = sext i32 %78 to i64, !dbg !504
  %arrayidx118 = getelementptr inbounds i8*, i8** %77, i64 %idxprom117, !dbg !504
  %79 = load i8*, i8** %arrayidx118, align 8, !dbg !504
  %80 = load i8*, i8** %msg105, align 8, !dbg !506
  %call119 = call i64 @__str_to_int(i8* %79, i8* %80), !dbg !507
  %conv120 = trunc i64 %call119 to i32, !dbg !507
  store i32 %conv120, i32* %sym_files, align 4, !dbg !508
  %81 = load i8**, i8*** %argv, align 8, !dbg !509
  %82 = load i32, i32* %k, align 4, !dbg !510
  %inc121 = add nsw i32 %82, 1, !dbg !510
  store i32 %inc121, i32* %k, align 4, !dbg !510
  %idxprom122 = sext i32 %82 to i64, !dbg !509
  %arrayidx123 = getelementptr inbounds i8*, i8** %81, i64 %idxprom122, !dbg !509
  %83 = load i8*, i8** %arrayidx123, align 8, !dbg !509
  %84 = load i8*, i8** %msg105, align 8, !dbg !511
  %call124 = call i64 @__str_to_int(i8* %83, i8* %84), !dbg !512
  %conv125 = trunc i64 %call124 to i32, !dbg !512
  store i32 %conv125, i32* %sym_file_len, align 4, !dbg !513
  %85 = load i32, i32* %sym_files, align 4, !dbg !514
  %cmp126 = icmp eq i32 %85, 0, !dbg !516
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !517

if.then128:                                       ; preds = %if.end114
  call void @__emit_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0)), !dbg !518
  br label %if.end129, !dbg !518

if.end129:                                        ; preds = %if.then128, %if.end114
  %86 = load i32, i32* %sym_file_len, align 4, !dbg !519
  %cmp130 = icmp eq i32 %86, 0, !dbg !521
  br i1 %cmp130, label %if.then132, label %if.end239, !dbg !522

if.then132:                                       ; preds = %if.end129
  call void @__emit_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0)), !dbg !523
  br label %if.end239, !dbg !523

if.else134:                                       ; preds = %lor.lhs.false99
  %87 = load i8**, i8*** %argv, align 8, !dbg !524
  %88 = load i32, i32* %k, align 4, !dbg !526
  %idxprom135 = sext i32 %88 to i64, !dbg !524
  %arrayidx136 = getelementptr inbounds i8*, i8** %87, i64 %idxprom135, !dbg !524
  %89 = load i8*, i8** %arrayidx136, align 8, !dbg !524
  %call137 = call i32 @__streq(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)), !dbg !527
  %tobool138 = icmp ne i32 %call137, 0, !dbg !527
  br i1 %tobool138, label %if.then144, label %lor.lhs.false139, !dbg !528

lor.lhs.false139:                                 ; preds = %if.else134
  %90 = load i8**, i8*** %argv, align 8, !dbg !529
  %91 = load i32, i32* %k, align 4, !dbg !530
  %idxprom140 = sext i32 %91 to i64, !dbg !529
  %arrayidx141 = getelementptr inbounds i8*, i8** %90, i64 %idxprom140, !dbg !529
  %92 = load i8*, i8** %arrayidx141, align 8, !dbg !529
  %call142 = call i32 @__streq(i8* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0)), !dbg !531
  %tobool143 = icmp ne i32 %call142, 0, !dbg !531
  br i1 %tobool143, label %if.then144, label %if.else156, !dbg !532

if.then144:                                       ; preds = %lor.lhs.false139, %if.else134
  call void @llvm.dbg.declare(metadata i8** %msg145, metadata !533, metadata !DIExpression()), !dbg !535
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i64 0, i64 0), i8** %msg145, align 8, !dbg !535
  %93 = load i32, i32* %k, align 4, !dbg !536
  %inc146 = add nsw i32 %93, 1, !dbg !536
  store i32 %inc146, i32* %k, align 4, !dbg !536
  %94 = load i32, i32* %argc, align 4, !dbg !538
  %cmp147 = icmp eq i32 %inc146, %94, !dbg !539
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !540

if.then149:                                       ; preds = %if.then144
  %95 = load i8*, i8** %msg145, align 8, !dbg !541
  call void @__emit_error(i8* %95), !dbg !542
  br label %if.end150, !dbg !542

if.end150:                                        ; preds = %if.then149, %if.then144
  %96 = load i8**, i8*** %argv, align 8, !dbg !543
  %97 = load i32, i32* %k, align 4, !dbg !544
  %inc151 = add nsw i32 %97, 1, !dbg !544
  store i32 %inc151, i32* %k, align 4, !dbg !544
  %idxprom152 = sext i32 %97 to i64, !dbg !543
  %arrayidx153 = getelementptr inbounds i8*, i8** %96, i64 %idxprom152, !dbg !543
  %98 = load i8*, i8** %arrayidx153, align 8, !dbg !543
  %99 = load i8*, i8** %msg145, align 8, !dbg !545
  %call154 = call i64 @__str_to_int(i8* %98, i8* %99), !dbg !546
  %conv155 = trunc i64 %call154 to i32, !dbg !546
  store i32 %conv155, i32* %sym_stdin_len, align 4, !dbg !547
  br label %if.end239, !dbg !548

if.else156:                                       ; preds = %lor.lhs.false139
  %100 = load i8**, i8*** %argv, align 8, !dbg !549
  %101 = load i32, i32* %k, align 4, !dbg !551
  %idxprom157 = sext i32 %101 to i64, !dbg !549
  %arrayidx158 = getelementptr inbounds i8*, i8** %100, i64 %idxprom157, !dbg !549
  %102 = load i8*, i8** %arrayidx158, align 8, !dbg !549
  %call159 = call i32 @__streq(i8* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0)), !dbg !552
  %tobool160 = icmp ne i32 %call159, 0, !dbg !552
  br i1 %tobool160, label %if.then166, label %lor.lhs.false161, !dbg !553

lor.lhs.false161:                                 ; preds = %if.else156
  %103 = load i8**, i8*** %argv, align 8, !dbg !554
  %104 = load i32, i32* %k, align 4, !dbg !555
  %idxprom162 = sext i32 %104 to i64, !dbg !554
  %arrayidx163 = getelementptr inbounds i8*, i8** %103, i64 %idxprom162, !dbg !554
  %105 = load i8*, i8** %arrayidx163, align 8, !dbg !554
  %call164 = call i32 @__streq(i8* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)), !dbg !556
  %tobool165 = icmp ne i32 %call164, 0, !dbg !556
  br i1 %tobool165, label %if.then166, label %if.else168, !dbg !557

if.then166:                                       ; preds = %lor.lhs.false161, %if.else156
  store i32 1, i32* %sym_stdout_flag, align 4, !dbg !558
  %106 = load i32, i32* %k, align 4, !dbg !560
  %inc167 = add nsw i32 %106, 1, !dbg !560
  store i32 %inc167, i32* %k, align 4, !dbg !560
  br label %if.end239, !dbg !561

if.else168:                                       ; preds = %lor.lhs.false161
  %107 = load i8**, i8*** %argv, align 8, !dbg !562
  %108 = load i32, i32* %k, align 4, !dbg !564
  %idxprom169 = sext i32 %108 to i64, !dbg !562
  %arrayidx170 = getelementptr inbounds i8*, i8** %107, i64 %idxprom169, !dbg !562
  %109 = load i8*, i8** %arrayidx170, align 8, !dbg !562
  %call171 = call i32 @__streq(i8* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0)), !dbg !565
  %tobool172 = icmp ne i32 %call171, 0, !dbg !565
  br i1 %tobool172, label %if.then178, label %lor.lhs.false173, !dbg !566

lor.lhs.false173:                                 ; preds = %if.else168
  %110 = load i8**, i8*** %argv, align 8, !dbg !567
  %111 = load i32, i32* %k, align 4, !dbg !568
  %idxprom174 = sext i32 %111 to i64, !dbg !567
  %arrayidx175 = getelementptr inbounds i8*, i8** %110, i64 %idxprom174, !dbg !567
  %112 = load i8*, i8** %arrayidx175, align 8, !dbg !567
  %call176 = call i32 @__streq(i8* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0)), !dbg !569
  %tobool177 = icmp ne i32 %call176, 0, !dbg !569
  br i1 %tobool177, label %if.then178, label %if.else180, !dbg !570

if.then178:                                       ; preds = %lor.lhs.false173, %if.else168
  store i32 1, i32* %save_all_writes_flag, align 4, !dbg !571
  %113 = load i32, i32* %k, align 4, !dbg !573
  %inc179 = add nsw i32 %113, 1, !dbg !573
  store i32 %inc179, i32* %k, align 4, !dbg !573
  br label %if.end239, !dbg !574

if.else180:                                       ; preds = %lor.lhs.false173
  %114 = load i8**, i8*** %argv, align 8, !dbg !575
  %115 = load i32, i32* %k, align 4, !dbg !577
  %idxprom181 = sext i32 %115 to i64, !dbg !575
  %arrayidx182 = getelementptr inbounds i8*, i8** %114, i64 %idxprom181, !dbg !575
  %116 = load i8*, i8** %arrayidx182, align 8, !dbg !575
  %call183 = call i32 @__streq(i8* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)), !dbg !578
  %tobool184 = icmp ne i32 %call183, 0, !dbg !578
  br i1 %tobool184, label %if.then190, label %lor.lhs.false185, !dbg !579

lor.lhs.false185:                                 ; preds = %if.else180
  %117 = load i8**, i8*** %argv, align 8, !dbg !580
  %118 = load i32, i32* %k, align 4, !dbg !581
  %idxprom186 = sext i32 %118 to i64, !dbg !580
  %arrayidx187 = getelementptr inbounds i8*, i8** %117, i64 %idxprom186, !dbg !580
  %119 = load i8*, i8** %arrayidx187, align 8, !dbg !580
  %call188 = call i32 @__streq(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)), !dbg !582
  %tobool189 = icmp ne i32 %call188, 0, !dbg !582
  br i1 %tobool189, label %if.then190, label %if.else192, !dbg !583

if.then190:                                       ; preds = %lor.lhs.false185, %if.else180
  store i32 1, i32* %fd_fail, align 4, !dbg !584
  %120 = load i32, i32* %k, align 4, !dbg !586
  %inc191 = add nsw i32 %120, 1, !dbg !586
  store i32 %inc191, i32* %k, align 4, !dbg !586
  br label %if.end239, !dbg !587

if.else192:                                       ; preds = %lor.lhs.false185
  %121 = load i8**, i8*** %argv, align 8, !dbg !588
  %122 = load i32, i32* %k, align 4, !dbg !590
  %idxprom193 = sext i32 %122 to i64, !dbg !588
  %arrayidx194 = getelementptr inbounds i8*, i8** %121, i64 %idxprom193, !dbg !588
  %123 = load i8*, i8** %arrayidx194, align 8, !dbg !588
  %call195 = call i32 @__streq(i8* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)), !dbg !591
  %tobool196 = icmp ne i32 %call195, 0, !dbg !591
  br i1 %tobool196, label %if.then202, label %lor.lhs.false197, !dbg !592

lor.lhs.false197:                                 ; preds = %if.else192
  %124 = load i8**, i8*** %argv, align 8, !dbg !593
  %125 = load i32, i32* %k, align 4, !dbg !594
  %idxprom198 = sext i32 %125 to i64, !dbg !593
  %arrayidx199 = getelementptr inbounds i8*, i8** %124, i64 %idxprom198, !dbg !593
  %126 = load i8*, i8** %arrayidx199, align 8, !dbg !593
  %call200 = call i32 @__streq(i8* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0)), !dbg !595
  %tobool201 = icmp ne i32 %call200, 0, !dbg !595
  br i1 %tobool201, label %if.then202, label %if.else204, !dbg !596

if.then202:                                       ; preds = %lor.lhs.false197, %if.else192
  %127 = load i32, i32* %k, align 4, !dbg !597
  %add203 = add nsw i32 %127, 2, !dbg !597
  store i32 %add203, i32* %k, align 4, !dbg !597
  br label %if.end239, !dbg !599

if.else204:                                       ; preds = %lor.lhs.false197
  %128 = load i8**, i8*** %argv, align 8, !dbg !600
  %129 = load i32, i32* %k, align 4, !dbg !602
  %idxprom205 = sext i32 %129 to i64, !dbg !600
  %arrayidx206 = getelementptr inbounds i8*, i8** %128, i64 %idxprom205, !dbg !600
  %130 = load i8*, i8** %arrayidx206, align 8, !dbg !600
  %call207 = call i32 @__streq(i8* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0)), !dbg !603
  %tobool208 = icmp ne i32 %call207, 0, !dbg !603
  br i1 %tobool208, label %if.then214, label %lor.lhs.false209, !dbg !604

lor.lhs.false209:                                 ; preds = %if.else204
  %131 = load i8**, i8*** %argv, align 8, !dbg !605
  %132 = load i32, i32* %k, align 4, !dbg !606
  %idxprom210 = sext i32 %132 to i64, !dbg !605
  %arrayidx211 = getelementptr inbounds i8*, i8** %131, i64 %idxprom210, !dbg !605
  %133 = load i8*, i8** %arrayidx211, align 8, !dbg !605
  %call212 = call i32 @__streq(i8* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !607
  %tobool213 = icmp ne i32 %call212, 0, !dbg !607
  br i1 %tobool213, label %if.then214, label %if.else226, !dbg !608

if.then214:                                       ; preds = %lor.lhs.false209, %if.else204
  call void @llvm.dbg.declare(metadata i8** %msg215, metadata !609, metadata !DIExpression()), !dbg !611
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), i8** %msg215, align 8, !dbg !611
  %134 = load i32, i32* %k, align 4, !dbg !612
  %inc216 = add nsw i32 %134, 1, !dbg !612
  store i32 %inc216, i32* %k, align 4, !dbg !612
  %135 = load i32, i32* %argc, align 4, !dbg !614
  %cmp217 = icmp eq i32 %inc216, %135, !dbg !615
  br i1 %cmp217, label %if.then219, label %if.end220, !dbg !616

if.then219:                                       ; preds = %if.then214
  %136 = load i8*, i8** %msg215, align 8, !dbg !617
  call void @__emit_error(i8* %136), !dbg !618
  br label %if.end220, !dbg !618

if.end220:                                        ; preds = %if.then219, %if.then214
  %137 = load i8**, i8*** %argv, align 8, !dbg !619
  %138 = load i32, i32* %k, align 4, !dbg !620
  %inc221 = add nsw i32 %138, 1, !dbg !620
  store i32 %inc221, i32* %k, align 4, !dbg !620
  %idxprom222 = sext i32 %138 to i64, !dbg !619
  %arrayidx223 = getelementptr inbounds i8*, i8** %137, i64 %idxprom222, !dbg !619
  %139 = load i8*, i8** %arrayidx223, align 8, !dbg !619
  %140 = load i8*, i8** %msg215, align 8, !dbg !621
  %call224 = call i64 @__str_to_int(i8* %139, i8* %140), !dbg !622
  %conv225 = trunc i64 %call224 to i32, !dbg !622
  store i32 %conv225, i32* %fd_fail, align 4, !dbg !623
  br label %if.end239, !dbg !624

if.else226:                                       ; preds = %lor.lhs.false209
  %arraydecay227 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %new_argv, i64 0, i64 0, !dbg !625
  %141 = load i8**, i8*** %argv, align 8, !dbg !627
  %142 = load i32, i32* %k, align 4, !dbg !628
  %inc228 = add nsw i32 %142, 1, !dbg !628
  store i32 %inc228, i32* %k, align 4, !dbg !628
  %idxprom229 = sext i32 %142 to i64, !dbg !627
  %arrayidx230 = getelementptr inbounds i8*, i8** %141, i64 %idxprom229, !dbg !627
  %143 = load i8*, i8** %arrayidx230, align 8, !dbg !627
  call void @__add_arg(i32* %new_argc, i8** %arraydecay227, i8* %143, i32 1024), !dbg !629
  br label %if.end239

if.end239:                                        ; preds = %for.cond, %if.end150, %if.then178, %if.then202, %if.else226, %if.end220, %if.then190, %if.then166, %if.end129, %if.then132, %if.end21
  br label %while.cond, !dbg !337, !llvm.loop !630

while.end:                                        ; preds = %while.cond
  %144 = load i32, i32* %new_argc, align 4, !dbg !632
  %add240 = add nsw i32 %144, 1, !dbg !633
  %conv241 = sext i32 %add240 to i64, !dbg !634
  %mul = mul i64 %conv241, 8, !dbg !635
  %call242 = call noalias align 16 i8* @malloc(i64 %mul) #11, !dbg !636
  %145 = bitcast i8* %call242 to i8**, !dbg !637
  store i8** %145, i8*** %final_argv, align 8, !dbg !638
  %146 = load i8**, i8*** %final_argv, align 8, !dbg !639
  %tobool243 = icmp ne i8** %146, null, !dbg !639
  br i1 %tobool243, label %if.end245, label %if.then244, !dbg !641

if.then244:                                       ; preds = %while.end
  call void @__emit_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0)), !dbg !642
  br label %if.end245, !dbg !642

if.end245:                                        ; preds = %if.then244, %while.end
  %147 = load i8**, i8*** %final_argv, align 8, !dbg !643
  %148 = bitcast i8** %147 to i8*, !dbg !643
  call void @klee_mark_global(i8* %148), !dbg !644
  %149 = load i8**, i8*** %final_argv, align 8, !dbg !645
  %150 = bitcast i8** %149 to i8*, !dbg !646
  %arraydecay246 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %new_argv, i64 0, i64 0, !dbg !646
  %151 = bitcast i8** %arraydecay246 to i8*, !dbg !646
  %152 = load i32, i32* %new_argc, align 4, !dbg !647
  %conv247 = sext i32 %152 to i64, !dbg !647
  %mul248 = mul i64 %conv247, 8, !dbg !648
  %153 = call i8* @memcpy(i8* %150, i8* %151, i64 %mul248), !dbg !646
  %154 = load i8**, i8*** %final_argv, align 8, !dbg !649
  %155 = load i32, i32* %new_argc, align 4, !dbg !650
  %idxprom249 = sext i32 %155 to i64, !dbg !649
  %arrayidx250 = getelementptr inbounds i8*, i8** %154, i64 %idxprom249, !dbg !649
  store i8* null, i8** %arrayidx250, align 8, !dbg !651
  %156 = load i32, i32* %new_argc, align 4, !dbg !652
  %157 = load i32*, i32** %argcPtr.addr, align 8, !dbg !653
  store i32 %156, i32* %157, align 4, !dbg !654
  %158 = load i8**, i8*** %final_argv, align 8, !dbg !655
  %159 = load i8***, i8**** %argvPtr.addr, align 8, !dbg !656
  store i8** %158, i8*** %159, align 8, !dbg !657
  %160 = load i32, i32* %sym_files, align 4, !dbg !658
  %161 = load i32, i32* %sym_file_len, align 4, !dbg !659
  %162 = load i32, i32* %sym_stdin_len, align 4, !dbg !660
  %163 = load i32, i32* %sym_stdout_flag, align 4, !dbg !661
  %164 = load i32, i32* %save_all_writes_flag, align 4, !dbg !662
  %165 = load i32, i32* %fd_fail, align 4, !dbg !663
  call void @klee_init_fds(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165), !dbg !664
  ret void, !dbg !665
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @__streq(i8* %a, i8* %b) #0 !dbg !666 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !669, metadata !DIExpression()), !dbg !670
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !671, metadata !DIExpression()), !dbg !672
  br label %while.cond, !dbg !673

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %a.addr, align 8, !dbg !674
  %1 = load i8, i8* %0, align 1, !dbg !675
  %conv = sext i8 %1 to i32, !dbg !675
  %2 = load i8*, i8** %b.addr, align 8, !dbg !676
  %3 = load i8, i8* %2, align 1, !dbg !677
  %conv1 = sext i8 %3 to i32, !dbg !677
  %cmp = icmp eq i32 %conv, %conv1, !dbg !678
  br i1 %cmp, label %while.body, label %while.end, !dbg !673

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %a.addr, align 8, !dbg !679
  %5 = load i8, i8* %4, align 1, !dbg !682
  %tobool = icmp ne i8 %5, 0, !dbg !682
  br i1 %tobool, label %if.end, label %if.then, !dbg !683

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval, align 4, !dbg !684
  br label %return, !dbg !684

if.end:                                           ; preds = %while.body
  %6 = load i8*, i8** %a.addr, align 8, !dbg !685
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !685
  store i8* %incdec.ptr, i8** %a.addr, align 8, !dbg !685
  %7 = load i8*, i8** %b.addr, align 8, !dbg !686
  %incdec.ptr3 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !686
  store i8* %incdec.ptr3, i8** %b.addr, align 8, !dbg !686
  br label %while.cond, !dbg !673, !llvm.loop !687

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !689
  br label %return, !dbg !689

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !690
  ret i32 %8, !dbg !690
}

; Function Attrs: noinline nounwind uwtable
define internal void @__emit_error(i8* %msg) #0 !dbg !691 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !694, metadata !DIExpression()), !dbg !695
  %0 = load i8*, i8** %msg.addr, align 8, !dbg !696
  call void @klee_report_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 21, i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !697
  unreachable, !dbg !697
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__str_to_int(i8* %s, i8* %error_msg) #0 !dbg !698 {
entry:
  %s.addr = alloca i8*, align 8
  %error_msg.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  %c = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !701, metadata !DIExpression()), !dbg !702
  store i8* %error_msg, i8** %error_msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %error_msg.addr, metadata !703, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata i64* %res, metadata !705, metadata !DIExpression()), !dbg !706
  store i64 0, i64* %res, align 8, !dbg !706
  call void @llvm.dbg.declare(metadata i8* %c, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load i8*, i8** %s.addr, align 8, !dbg !709
  %1 = load i8, i8* %0, align 1, !dbg !711
  %tobool = icmp ne i8 %1, 0, !dbg !711
  br i1 %tobool, label %if.end, label %if.then, !dbg !712

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %error_msg.addr, align 8, !dbg !713
  call void @__emit_error(i8* %2), !dbg !714
  br label %if.end, !dbg !714

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !715

while.cond:                                       ; preds = %if.end9, %if.end
  %3 = load i8*, i8** %s.addr, align 8, !dbg !716
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !716
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !716
  %4 = load i8, i8* %3, align 1, !dbg !717
  store i8 %4, i8* %c, align 1, !dbg !718
  %tobool1 = icmp ne i8 %4, 0, !dbg !715
  br i1 %tobool1, label %while.body, label %while.end, !dbg !715

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %c, align 1, !dbg !719
  %conv = sext i8 %5 to i32, !dbg !719
  %cmp = icmp sge i32 %conv, 48, !dbg !722
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !723

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8, i8* %c, align 1, !dbg !724
  %conv3 = sext i8 %6 to i32, !dbg !724
  %cmp4 = icmp sle i32 %conv3, 57, !dbg !725
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !726

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %res, align 8, !dbg !727
  %mul = mul nsw i64 %7, 10, !dbg !729
  %8 = load i8, i8* %c, align 1, !dbg !730
  %conv7 = sext i8 %8 to i32, !dbg !730
  %sub = sub nsw i32 %conv7, 48, !dbg !731
  %conv8 = sext i32 %sub to i64, !dbg !732
  %add = add nsw i64 %mul, %conv8, !dbg !733
  store i64 %add, i64* %res, align 8, !dbg !734
  br label %if.end9, !dbg !735

if.else:                                          ; preds = %land.lhs.true, %while.body
  %9 = load i8*, i8** %error_msg.addr, align 8, !dbg !736
  call void @__emit_error(i8* %9), !dbg !738
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %while.cond, !dbg !715, !llvm.loop !739

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %res, align 8, !dbg !741
  ret i64 %10, !dbg !742
}

; Function Attrs: noinline nounwind uwtable
define internal void @__add_arg(i32* %argc, i8** %argv, i8* %arg, i32 %argcMax) #0 !dbg !743 {
entry:
  %argc.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  %arg.addr = alloca i8*, align 8
  %argcMax.addr = alloca i32, align 4
  store i32* %argc, i32** %argc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argc.addr, metadata !746, metadata !DIExpression()), !dbg !747
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !748, metadata !DIExpression()), !dbg !749
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !750, metadata !DIExpression()), !dbg !751
  store i32 %argcMax, i32* %argcMax.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argcMax.addr, metadata !752, metadata !DIExpression()), !dbg !753
  %0 = load i32*, i32** %argc.addr, align 8, !dbg !754
  %1 = load i32, i32* %0, align 4, !dbg !756
  %2 = load i32, i32* %argcMax.addr, align 4, !dbg !757
  %cmp = icmp eq i32 %1, %2, !dbg !758
  br i1 %cmp, label %if.then, label %if.else, !dbg !759

if.then:                                          ; preds = %entry
  call void @__emit_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i64 0, i64 0)), !dbg !760
  br label %if.end, !dbg !762

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %arg.addr, align 8, !dbg !763
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !765
  %5 = load i32*, i32** %argc.addr, align 8, !dbg !766
  %6 = load i32, i32* %5, align 4, !dbg !767
  %idxprom = sext i32 %6 to i64, !dbg !765
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !765
  store i8* %3, i8** %arrayidx, align 8, !dbg !768
  %7 = load i32*, i32** %argc.addr, align 8, !dbg !769
  %8 = load i32, i32* %7, align 4, !dbg !770
  %inc = add nsw i32 %8, 1, !dbg !770
  store i32 %inc, i32* %7, align 4, !dbg !770
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @__get_sym_str(i32 %numChars, i8* %name) #0 !dbg !772 {
entry:
  %numChars.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 %numChars, i32* %numChars.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %numChars.addr, metadata !775, metadata !DIExpression()), !dbg !776
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata i32* %i, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i8** %s, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load i32, i32* %numChars.addr, align 4, !dbg !783
  %add = add nsw i32 %0, 1, !dbg !784
  %conv = sext i32 %add to i64, !dbg !783
  %call = call noalias align 16 i8* @malloc(i64 %conv) #11, !dbg !785
  store i8* %call, i8** %s, align 8, !dbg !782
  %1 = load i8*, i8** %s, align 8, !dbg !786
  %tobool = icmp ne i8* %1, null, !dbg !786
  br i1 %tobool, label %if.end, label %if.then, !dbg !788

if.then:                                          ; preds = %entry
  call void @__emit_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0)), !dbg !789
  br label %if.end, !dbg !789

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %s, align 8, !dbg !790
  call void @klee_mark_global(i8* %2), !dbg !791
  %3 = load i8*, i8** %s, align 8, !dbg !792
  %4 = load i32, i32* %numChars.addr, align 4, !dbg !793
  %add1 = add nsw i32 %4, 1, !dbg !794
  %conv2 = sext i32 %add1 to i64, !dbg !793
  %5 = load i8*, i8** %name.addr, align 8, !dbg !795
  call void @klee_make_symbolic(i8* %3, i64 %conv2, i8* %5), !dbg !796
  store i32 0, i32* %i, align 4, !dbg !797
  br label %for.cond, !dbg !799

for.cond:                                         ; preds = %for.body, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !800
  %7 = load i32, i32* %numChars.addr, align 4, !dbg !802
  %cmp = icmp slt i32 %6, %7, !dbg !803
  br i1 %cmp, label %for.body, label %for.end, !dbg !804

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %s, align 8, !dbg !805
  %9 = load i8*, i8** %s, align 8, !dbg !806
  %10 = load i32, i32* %i, align 4, !dbg !807
  %idxprom = sext i32 %10 to i64, !dbg !806
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !806
  %11 = load i8, i8* %arrayidx, align 1, !dbg !806
  %call4 = call i32 @__isprint(i8 signext %11), !dbg !808
  %conv5 = sext i32 %call4 to i64, !dbg !808
  call void @klee_posix_prefer_cex(i8* %8, i64 %conv5), !dbg !809
  %12 = load i32, i32* %i, align 4, !dbg !810
  %inc = add nsw i32 %12, 1, !dbg !810
  store i32 %inc, i32* %i, align 4, !dbg !810
  br label %for.cond, !dbg !811, !llvm.loop !812

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %s, align 8, !dbg !814
  %14 = load i32, i32* %numChars.addr, align 4, !dbg !815
  %idxprom6 = sext i32 %14 to i64, !dbg !814
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6, !dbg !814
  store i8 0, i8* %arrayidx7, align 1, !dbg !816
  %15 = load i8*, i8** %s, align 8, !dbg !817
  ret i8* %15, !dbg !818
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

declare dso_local void @klee_mark_global(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argcPtr, i8** %argvPtr, i8** %envp) #0 !dbg !819 {
entry:
  %argcPtr.addr = alloca i32, align 4
  %argvPtr.addr = alloca i8**, align 8
  %envp.addr = alloca i8**, align 8
  store i32 %argcPtr, i32* %argcPtr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argcPtr.addr, metadata !822, metadata !DIExpression()), !dbg !823
  store i8** %argvPtr, i8*** %argvPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argvPtr.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i8** %envp, i8*** %envp.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %envp.addr, metadata !826, metadata !DIExpression()), !dbg !827
  call void @klee_init_env(i32* %argcPtr.addr, i8*** %argvPtr.addr), !dbg !828
  %0 = load i32, i32* %argcPtr.addr, align 4, !dbg !829
  %1 = load i8**, i8*** %argvPtr.addr, align 8, !dbg !830
  %2 = load i8**, i8*** %envp.addr, align 8, !dbg !831
  %call = call i32 bitcast (i32 (i32, i8**)* @__klee_posix_wrapped_main to i32 (i32, i8**, i8**)*)(i32 %0, i8** %1, i8** %2), !dbg !832
  ret i32 %call, !dbg !833
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #5

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #4

declare dso_local void @klee_posix_prefer_cex(i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @__isprint(i8 signext %c) #0 !dbg !834 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !837, metadata !DIExpression()), !dbg !838
  %0 = load i8, i8* %c.addr, align 1, !dbg !839
  %conv = sext i8 %0 to i32, !dbg !839
  %cmp = icmp sle i32 32, %conv, !dbg !840
  %1 = load i8, i8* %c.addr, align 1, !dbg !841
  %conv2 = sext i8 %1 to i32, !dbg !841
  %cmp3 = icmp sle i32 %conv2, 126, !dbg !841
  %2 = select i1 %cmp, i1 %cmp3, i1 false, !dbg !841
  %land.ext = zext i1 %2 to i32, !dbg !841
  ret i32 %land.ext, !dbg !842
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_print(i8* %str) #6 !dbg !843 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata i8* %i, metadata !852, metadata !DIExpression()), !dbg !853
  store i8 0, i8* %i, align 1, !dbg !854
  br label %for.cond, !dbg !856

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1, !dbg !857
  %conv = zext i8 %0 to i32, !dbg !857
  %cmp = icmp slt i32 %conv, 16, !dbg !859
  br i1 %cmp, label %for.body, label %for.end, !dbg !860

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %str.addr, align 8, !dbg !861
  %2 = load i8, i8* %i, align 1, !dbg !862
  %idxprom = zext i8 %2 to i64, !dbg !861
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !861
  %3 = load i8, i8* %arrayidx, align 1, !dbg !861
  %conv2 = zext i8 %3 to i32, !dbg !861
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 %conv2), !dbg !863
  br label %for.inc, !dbg !863

for.inc:                                          ; preds = %for.body
  %4 = load i8, i8* %i, align 1, !dbg !864
  %inc = add i8 %4, 1, !dbg !864
  store i8 %inc, i8* %i, align 1, !dbg !864
  br label %for.cond, !dbg !865, !llvm.loop !866

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.36, i64 0, i64 0)), !dbg !869
  ret void, !dbg !870
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logic_bomb(i8* %s) #6 !dbg !871 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %decodetext = alloca [16 x i8], align 16
  %ciphertext = alloca [16 x i8], align 16
  %plaintext = alloca [16 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !874, metadata !DIExpression()), !dbg !875
  %0 = load i8*, i8** %s.addr, align 8, !dbg !876
  %call = call i64 @strlen(i8* %0) #13, !dbg !878
  %cmp = icmp ne i64 %call, 32, !dbg !879
  br i1 %cmp, label %if.then, label %if.end, !dbg !880

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !881

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata [16 x i8]* %decodetext, metadata !883, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata [16 x i8]* %ciphertext, metadata !888, metadata !DIExpression()), !dbg !889
  %1 = bitcast [16 x i8]* %ciphertext to i8*, !dbg !889
  %2 = call i8* @memcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__const.logic_bomb.ciphertext, i32 0, i32 0), i64 16), !dbg !889
  call void @llvm.dbg.declare(metadata [16 x i8]* %plaintext, metadata !890, metadata !DIExpression()), !dbg !891
  %3 = bitcast [16 x i8]* %plaintext to i8*, !dbg !891
  %4 = call i8* @memcpy(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__const.logic_bomb.plaintext, i32 0, i32 0), i64 16), !dbg !891
  %5 = bitcast [16 x i8]* %decodetext to i8*, !dbg !892
  call void @klee_make_symbolic(i8* %5, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.37, i64 0, i64 0)), !dbg !893
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %plaintext, i64 0, i64 0, !dbg !894
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %decodetext, i64 0, i64 0, !dbg !896
  %call2 = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay1, i64 16) #13, !dbg !897
  %cmp3 = icmp eq i32 0, %call2, !dbg !898
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !899

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.38, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.39, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.logic_bomb, i64 0, i64 0)), !dbg !900
  br label %if.end6, !dbg !902

if.else:                                          ; preds = %if.end
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %6 = load i32, i32* %retval, align 4, !dbg !903
  ret i32 %6, !dbg !903
}

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__klee_posix_wrapped_main(i32 %argc, i8** %argv) #6 !dbg !904 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [33 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !907, metadata !DIExpression()), !dbg !908
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !909, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata [33 x i8]* %s, metadata !911, metadata !DIExpression()), !dbg !915
  %0 = bitcast [33 x i8]* %s to i8*, !dbg !916
  call void @klee_make_symbolic(i8* %0, i64 33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.42, i64 0, i64 0)), !dbg !917
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* %s, i64 0, i64 32, !dbg !918
  %1 = load i8, i8* %arrayidx, align 16, !dbg !918
  %conv = sext i8 %1 to i32, !dbg !918
  %cmp = icmp eq i32 %conv, 0, !dbg !919
  %conv1 = zext i1 %cmp to i32, !dbg !919
  %conv2 = sext i32 %conv1 to i64, !dbg !918
  call void @klee_assume(i64 %conv2), !dbg !920
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %s, i64 0, i64 0, !dbg !921
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !922
  ret i32 %call, !dbg !923
}

declare dso_local void @klee_assume(i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %stdin_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) #0 !dbg !924 {
entry:
  %n_files.addr = alloca i32, align 4
  %file_length.addr = alloca i32, align 4
  %stdin_length.addr = alloca i32, align 4
  %sym_stdout_flag.addr = alloca i32, align 4
  %save_all_writes_flag.addr = alloca i32, align 4
  %max_failures.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %s = alloca %struct.stat64.15, align 8
  store i32 %n_files, i32* %n_files.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_files.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store i32 %file_length, i32* %file_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %file_length.addr, metadata !929, metadata !DIExpression()), !dbg !930
  store i32 %stdin_length, i32* %stdin_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %stdin_length.addr, metadata !931, metadata !DIExpression()), !dbg !932
  store i32 %sym_stdout_flag, i32* %sym_stdout_flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sym_stdout_flag.addr, metadata !933, metadata !DIExpression()), !dbg !934
  store i32 %save_all_writes_flag, i32* %save_all_writes_flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %save_all_writes_flag.addr, metadata !935, metadata !DIExpression()), !dbg !936
  store i32 %max_failures, i32* %max_failures.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_failures.addr, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %k, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata [7 x i8]* %name, metadata !941, metadata !DIExpression()), !dbg !945
  %0 = bitcast [7 x i8]* %name to i8*, !dbg !945
  %1 = call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__const.klee_init_fds.name, i32 0, i32 0), i64 7), !dbg !945
  call void @llvm.dbg.declare(metadata %struct.stat64.15* %s, metadata !946, metadata !DIExpression()), !dbg !947
  %call = call i32 @stat64(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %struct.stat64.15* %s) #11, !dbg !948
  %2 = load i32, i32* %n_files.addr, align 4, !dbg !949
  store i32 %2, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 0), align 8, !dbg !950
  %3 = load i32, i32* %n_files.addr, align 4, !dbg !951
  %conv = zext i32 %3 to i64, !dbg !951
  %mul = mul i64 24, %conv, !dbg !952
  %call1 = call noalias align 16 i8* @malloc(i64 %mul) #11, !dbg !953
  %4 = bitcast i8* %call1 to %struct.exe_disk_file_t.16*, !dbg !953
  store %struct.exe_disk_file_t.16* %4, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 4), align 8, !dbg !954
  %5 = load i32, i32* %n_files.addr, align 4, !dbg !955
  %tobool = icmp eq i32 %5, 0, !dbg !955
  %6 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 4), align 8
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %6, null
  %or.cond = select i1 %tobool, i1 true, i1 %tobool2, !dbg !957
  br i1 %or.cond, label %if.end, label %if.then, !dbg !957

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.48, i64 0, i64 0)) #12, !dbg !958
  unreachable, !dbg !958

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !dbg !959
  br label %for.cond, !dbg !961

for.cond:                                         ; preds = %for.body, %if.end
  %7 = load i32, i32* %k, align 4, !dbg !962
  %8 = load i32, i32* %n_files.addr, align 4, !dbg !964
  %cmp = icmp ult i32 %7, %8, !dbg !965
  br i1 %cmp, label %for.body, label %for.end, !dbg !966

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4, !dbg !967
  %add = add i32 65, %9, !dbg !969
  %conv4 = trunc i32 %add to i8, !dbg !970
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %name, i64 0, i64 0, !dbg !971
  store i8 %conv4, i8* %arrayidx, align 1, !dbg !972
  %10 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 4), align 8, !dbg !973
  %11 = load i32, i32* %k, align 4, !dbg !974
  %idxprom = zext i32 %11 to i64, !dbg !975
  %arrayidx5 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %10, i64 %idxprom, !dbg !975
  %12 = load i32, i32* %file_length.addr, align 4, !dbg !976
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %name, i64 0, i64 0, !dbg !977
  call void @__create_new_dfile(%struct.exe_disk_file_t.16* %arrayidx5, i32 %12, i8* %arraydecay, %struct.stat64.15* %s), !dbg !978
  %13 = load i32, i32* %k, align 4, !dbg !979
  %inc = add i32 %13, 1, !dbg !979
  store i32 %inc, i32* %k, align 4, !dbg !979
  br label %for.cond, !dbg !980, !llvm.loop !981

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %stdin_length.addr, align 4, !dbg !983
  %tobool6 = icmp ne i32 %14, 0, !dbg !983
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !985

if.then7:                                         ; preds = %for.end
  %call8 = call noalias align 16 i8* @malloc(i64 24) #11, !dbg !986
  %15 = bitcast i8* %call8 to %struct.exe_disk_file_t.16*, !dbg !986
  store %struct.exe_disk_file_t.16* %15, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 1), align 8, !dbg !988
  %16 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 1), align 8, !dbg !989
  %tobool9 = icmp ne %struct.exe_disk_file_t.16* %16, null, !dbg !991
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !992

if.then10:                                        ; preds = %if.then7
  call void @klee_report_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.48, i64 0, i64 0)) #12, !dbg !993
  unreachable, !dbg !993

if.end11:                                         ; preds = %if.then7
  %17 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 1), align 8, !dbg !994
  %18 = load i32, i32* %stdin_length.addr, align 4, !dbg !995
  call void @__create_new_dfile(%struct.exe_disk_file_t.16* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.49, i64 0, i64 0), %struct.stat64.15* %s), !dbg !996
  %19 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 1), align 8, !dbg !997
  store %struct.exe_disk_file_t.16* %19, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0, i64 0, i32 3), align 8, !dbg !998
  br label %if.end12, !dbg !999

if.else:                                          ; preds = %for.end
  store %struct.exe_disk_file_t.16* null, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 1), align 8, !dbg !1000
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end11
  %20 = load i32, i32* %max_failures.addr, align 4, !dbg !1001
  store i32 %20, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !1002
  %21 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !1003
  %tobool13 = icmp ne i32 %21, 0, !dbg !1005
  br i1 %tobool13, label %if.then14, label %if.end31, !dbg !1006

if.then14:                                        ; preds = %if.end12
  %call15 = call noalias align 16 i8* @malloc(i64 4) #11, !dbg !1007
  %22 = bitcast i8* %call15 to i32*, !dbg !1007
  store i32* %22, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 6), align 8, !dbg !1009
  %call16 = call noalias align 16 i8* @malloc(i64 4) #11, !dbg !1010
  %23 = bitcast i8* %call16 to i32*, !dbg !1010
  store i32* %23, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 7), align 8, !dbg !1011
  %call17 = call noalias align 16 i8* @malloc(i64 4) #11, !dbg !1012
  %24 = bitcast i8* %call17 to i32*, !dbg !1012
  store i32* %24, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 8), align 8, !dbg !1013
  %call18 = call noalias align 16 i8* @malloc(i64 4) #11, !dbg !1014
  %25 = bitcast i8* %call18 to i32*, !dbg !1014
  store i32* %25, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 9), align 8, !dbg !1015
  %call19 = call noalias align 16 i8* @malloc(i64 4) #11, !dbg !1016
  %26 = bitcast i8* %call19 to i32*, !dbg !1016
  store i32* %26, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 10), align 8, !dbg !1017
  %27 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 6), align 8, !dbg !1018
  %tobool20 = icmp ne i32* %27, null, !dbg !1020
  %28 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 7), align 8
  %tobool22 = icmp ne i32* %28, null
  %or.cond1 = select i1 %tobool20, i1 %tobool22, i1 false, !dbg !1021
  %29 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 8), align 8
  %tobool24 = icmp ne i32* %29, null
  %or.cond2 = select i1 %or.cond1, i1 %tobool24, i1 false, !dbg !1021
  %30 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 9), align 8
  %tobool26 = icmp ne i32* %30, null
  %or.cond3 = select i1 %or.cond2, i1 %tobool26, i1 false, !dbg !1021
  %31 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 10), align 8
  %tobool28 = icmp ne i32* %31, null
  %or.cond4 = select i1 %or.cond3, i1 %tobool28, i1 false, !dbg !1021
  br i1 %or.cond4, label %if.end30, label %if.then29, !dbg !1021

if.then29:                                        ; preds = %if.then14
  call void @klee_report_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.48, i64 0, i64 0)) #12, !dbg !1022
  unreachable, !dbg !1022

if.end30:                                         ; preds = %if.then14
  %32 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 6), align 8, !dbg !1023
  %33 = bitcast i32* %32 to i8*, !dbg !1024
  call void @klee_make_symbolic(i8* %33, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.50, i64 0, i64 0)), !dbg !1025
  %34 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 7), align 8, !dbg !1026
  %35 = bitcast i32* %34 to i8*, !dbg !1027
  call void @klee_make_symbolic(i8* %35, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6.51, i64 0, i64 0)), !dbg !1028
  %36 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 8), align 8, !dbg !1029
  %37 = bitcast i32* %36 to i8*, !dbg !1030
  call void @klee_make_symbolic(i8* %37, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.52, i64 0, i64 0)), !dbg !1031
  %38 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 9), align 8, !dbg !1032
  %39 = bitcast i32* %38 to i8*, !dbg !1033
  call void @klee_make_symbolic(i8* %39, i64 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.53, i64 0, i64 0)), !dbg !1034
  %40 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 10), align 8, !dbg !1035
  %41 = bitcast i32* %40 to i8*, !dbg !1036
  call void @klee_make_symbolic(i8* %41, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9.54, i64 0, i64 0)), !dbg !1037
  br label %if.end31, !dbg !1038

if.end31:                                         ; preds = %if.end30, %if.end12
  %42 = load i32, i32* %sym_stdout_flag.addr, align 4, !dbg !1039
  %tobool32 = icmp ne i32 %42, 0, !dbg !1039
  br i1 %tobool32, label %if.then33, label %if.else38, !dbg !1041

if.then33:                                        ; preds = %if.end31
  %call34 = call noalias align 16 i8* @malloc(i64 24) #11, !dbg !1042
  %43 = bitcast i8* %call34 to %struct.exe_disk_file_t.16*, !dbg !1042
  store %struct.exe_disk_file_t.16* %43, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 2), align 8, !dbg !1044
  %44 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 2), align 8, !dbg !1045
  %tobool35 = icmp ne %struct.exe_disk_file_t.16* %44, null, !dbg !1047
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !1048

if.then36:                                        ; preds = %if.then33
  call void @klee_report_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.48, i64 0, i64 0)) #12, !dbg !1049
  unreachable, !dbg !1049

if.end37:                                         ; preds = %if.then33
  %45 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 2), align 8, !dbg !1050
  call void @__create_new_dfile(%struct.exe_disk_file_t.16* %45, i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.55, i64 0, i64 0), %struct.stat64.15* %s), !dbg !1051
  %46 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 2), align 8, !dbg !1052
  store %struct.exe_disk_file_t.16* %46, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0, i64 1, i32 3), align 8, !dbg !1053
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 3), align 8, !dbg !1054
  br label %if.end39, !dbg !1055

if.else38:                                        ; preds = %if.end31
  store %struct.exe_disk_file_t.16* null, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 2), align 8, !dbg !1056
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.end37
  %47 = load i32, i32* %save_all_writes_flag.addr, align 4, !dbg !1057
  store i32 %47, i32* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 2), align 4, !dbg !1058
  ret void, !dbg !1059
}

; Function Attrs: noinline nounwind uwtable
define internal void @__create_new_dfile(%struct.exe_disk_file_t.16* %dfile, i32 %size, i8* %name, %struct.stat64.15* %defaults) #0 !dbg !1060 {
entry:
  %dfile.addr = alloca %struct.exe_disk_file_t.16*, align 8
  %size.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %defaults.addr = alloca %struct.stat64.15*, align 8
  %s = alloca %struct.stat64.15*, align 8
  %sp = alloca i8*, align 8
  %sname = alloca [64 x i8], align 16
  store %struct.exe_disk_file_t.16* %dfile, %struct.exe_disk_file_t.16** %dfile.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile.addr, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store %struct.stat64.15* %defaults, %struct.stat64.15** %defaults.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %defaults.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %s, metadata !1071, metadata !DIExpression()), !dbg !1072
  %call = call noalias align 16 i8* @malloc(i64 144) #11, !dbg !1073
  %0 = bitcast i8* %call to %struct.stat64.15*, !dbg !1073
  store %struct.stat64.15* %0, %struct.stat64.15** %s, align 8, !dbg !1072
  %1 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1074
  %tobool = icmp ne %struct.stat64.15* %1, null, !dbg !1074
  br i1 %tobool, label %if.end, label %if.then, !dbg !1076

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.48, i64 0, i64 0)) #12, !dbg !1077
  unreachable, !dbg !1077

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %sp, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata [64 x i8]* %sname, metadata !1080, metadata !DIExpression()), !dbg !1084
  %2 = load i8*, i8** %name.addr, align 8, !dbg !1085
  store i8* %2, i8** %sp, align 8, !dbg !1087
  br label %for.cond, !dbg !1088

for.cond:                                         ; preds = %for.body, %if.end
  %3 = load i8*, i8** %sp, align 8, !dbg !1089
  %4 = load i8, i8* %3, align 1, !dbg !1091
  %tobool1 = icmp ne i8 %4, 0, !dbg !1092
  br i1 %tobool1, label %for.body, label %for.end, !dbg !1092

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %sp, align 8, !dbg !1093
  %6 = load i8, i8* %5, align 1, !dbg !1094
  %7 = load i8*, i8** %sp, align 8, !dbg !1095
  %8 = load i8*, i8** %name.addr, align 8, !dbg !1096
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64, !dbg !1097
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64, !dbg !1097
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1097
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %sname, i64 0, i64 %sub.ptr.sub, !dbg !1098
  store i8 %6, i8* %arrayidx, align 1, !dbg !1099
  %9 = load i8*, i8** %sp, align 8, !dbg !1100
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1, !dbg !1100
  store i8* %incdec.ptr, i8** %sp, align 8, !dbg !1100
  br label %for.cond, !dbg !1101, !llvm.loop !1102

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %sp, align 8, !dbg !1104
  %11 = load i8*, i8** %name.addr, align 8, !dbg !1105
  %sub.ptr.lhs.cast2 = ptrtoint i8* %10 to i64, !dbg !1106
  %sub.ptr.rhs.cast3 = ptrtoint i8* %11 to i64, !dbg !1106
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3, !dbg !1106
  %arrayidx5 = getelementptr inbounds [64 x i8], [64 x i8]* %sname, i64 0, i64 %sub.ptr.sub4, !dbg !1107
  %12 = call i8* @memcpy(i8* %arrayidx5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.56, i64 0, i64 0), i64 6), !dbg !1108
  %13 = load i32, i32* %size.addr, align 4, !dbg !1109
  %tobool6 = icmp ne i32 %13, 0, !dbg !1109
  br i1 %tobool6, label %if.end8, label %if.else, !dbg !1112

if.else:                                          ; preds = %for.end
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12.57, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 54, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.__create_new_dfile, i64 0, i64 0)) #14, !dbg !1109
  unreachable, !dbg !1109

if.end8:                                          ; preds = %for.end
  %14 = load i32, i32* %size.addr, align 4, !dbg !1113
  %15 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1114
  %size9 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %15, i32 0, i32 0, !dbg !1115
  store i32 %14, i32* %size9, align 8, !dbg !1116
  %16 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1117
  %size10 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %16, i32 0, i32 0, !dbg !1118
  %17 = load i32, i32* %size10, align 8, !dbg !1118
  %conv = zext i32 %17 to i64, !dbg !1117
  %call11 = call noalias align 16 i8* @malloc(i64 %conv) #11, !dbg !1119
  %18 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1120
  %contents = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %18, i32 0, i32 1, !dbg !1121
  store i8* %call11, i8** %contents, align 8, !dbg !1122
  %19 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1123
  %contents12 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %19, i32 0, i32 1, !dbg !1125
  %20 = load i8*, i8** %contents12, align 8, !dbg !1125
  %tobool13 = icmp ne i8* %20, null, !dbg !1123
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1126

if.then14:                                        ; preds = %if.end8
  call void @klee_report_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1.46, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.48, i64 0, i64 0)) #12, !dbg !1127
  unreachable, !dbg !1127

if.end15:                                         ; preds = %if.end8
  %21 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1128
  %contents16 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %21, i32 0, i32 1, !dbg !1129
  %22 = load i8*, i8** %contents16, align 8, !dbg !1129
  %23 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1130
  %size17 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %23, i32 0, i32 0, !dbg !1131
  %24 = load i32, i32* %size17, align 8, !dbg !1131
  %conv18 = zext i32 %24 to i64, !dbg !1130
  %25 = load i8*, i8** %name.addr, align 8, !dbg !1132
  call void @klee_make_symbolic(i8* %22, i64 %conv18, i8* %25), !dbg !1133
  %26 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1134
  %27 = bitcast %struct.stat64.15* %26 to i8*, !dbg !1134
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %sname, i64 0, i64 0, !dbg !1135
  call void @klee_make_symbolic(i8* %27, i64 144, i8* %arraydecay), !dbg !1136
  %28 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1137
  %st_ino = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %28, i32 0, i32 1, !dbg !1139
  %29 = load i64, i64* %st_ino, align 8, !dbg !1139
  %call19 = call i32 @klee_is_symbolic(i64 %29), !dbg !1140
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1140
  br i1 %tobool20, label %if.end26, label %land.lhs.true, !dbg !1141

land.lhs.true:                                    ; preds = %if.end15
  %30 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1142
  %st_ino21 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %30, i32 0, i32 1, !dbg !1143
  %31 = load i64, i64* %st_ino21, align 8, !dbg !1143
  %and = and i64 %31, 2147483647, !dbg !1144
  %cmp = icmp eq i64 %and, 0, !dbg !1145
  br i1 %cmp, label %if.then23, label %if.end26, !dbg !1146

if.then23:                                        ; preds = %land.lhs.true
  %32 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1147
  %st_ino24 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %32, i32 0, i32 1, !dbg !1148
  %33 = load i64, i64* %st_ino24, align 8, !dbg !1148
  %34 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1149
  %st_ino25 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %34, i32 0, i32 1, !dbg !1150
  store i64 %33, i64* %st_ino25, align 8, !dbg !1151
  br label %if.end26, !dbg !1149

if.end26:                                         ; preds = %if.then23, %land.lhs.true, %if.end15
  %35 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1152
  %st_ino27 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %35, i32 0, i32 1, !dbg !1153
  %36 = load i64, i64* %st_ino27, align 8, !dbg !1153
  %and28 = and i64 %36, 2147483647, !dbg !1154
  %cmp29 = icmp ne i64 %and28, 0, !dbg !1155
  %conv30 = zext i1 %cmp29 to i32, !dbg !1155
  %conv31 = sext i32 %conv30 to i64, !dbg !1156
  call void @klee_assume(i64 %conv31), !dbg !1157
  %37 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1158
  %st_blksize = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %37, i32 0, i32 9, !dbg !1159
  %38 = load i64, i64* %st_blksize, align 8, !dbg !1159
  %and32 = and i64 %38, -65536, !dbg !1160
  %cmp33 = icmp eq i64 %and32, 0, !dbg !1161
  %conv34 = zext i1 %cmp33 to i32, !dbg !1161
  %conv35 = sext i32 %conv34 to i64, !dbg !1162
  call void @klee_assume(i64 %conv35), !dbg !1163
  %39 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1164
  %40 = bitcast %struct.stat64.15* %39 to i8*, !dbg !1164
  %41 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1165
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %41, i32 0, i32 3, !dbg !1166
  %42 = load i32, i32* %st_mode, align 8, !dbg !1166
  %and36 = and i32 %42, -61952, !dbg !1167
  %tobool37 = icmp ne i32 %and36, 0, !dbg !1168
  %lnot = xor i1 %tobool37, true, !dbg !1168
  %lnot.ext = zext i1 %lnot to i32, !dbg !1168
  %conv38 = sext i32 %lnot.ext to i64, !dbg !1168
  call void @klee_prefer_cex(i8* %40, i64 %conv38), !dbg !1169
  %43 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1170
  %44 = bitcast %struct.stat64.15* %43 to i8*, !dbg !1170
  %45 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1171
  %st_dev = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %45, i32 0, i32 0, !dbg !1172
  %46 = load i64, i64* %st_dev, align 8, !dbg !1172
  %47 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1173
  %st_dev39 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %47, i32 0, i32 0, !dbg !1174
  %48 = load i64, i64* %st_dev39, align 8, !dbg !1174
  %cmp40 = icmp eq i64 %46, %48, !dbg !1175
  %conv41 = zext i1 %cmp40 to i32, !dbg !1175
  %conv42 = sext i32 %conv41 to i64, !dbg !1171
  call void @klee_prefer_cex(i8* %44, i64 %conv42), !dbg !1176
  %49 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1177
  %50 = bitcast %struct.stat64.15* %49 to i8*, !dbg !1177
  %51 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1178
  %st_rdev = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %51, i32 0, i32 7, !dbg !1179
  %52 = load i64, i64* %st_rdev, align 8, !dbg !1179
  %53 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1180
  %st_rdev43 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %53, i32 0, i32 7, !dbg !1181
  %54 = load i64, i64* %st_rdev43, align 8, !dbg !1181
  %cmp44 = icmp eq i64 %52, %54, !dbg !1182
  %conv45 = zext i1 %cmp44 to i32, !dbg !1182
  %conv46 = sext i32 %conv45 to i64, !dbg !1178
  call void @klee_prefer_cex(i8* %50, i64 %conv46), !dbg !1183
  %55 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1184
  %56 = bitcast %struct.stat64.15* %55 to i8*, !dbg !1184
  %57 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1185
  %st_mode47 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %57, i32 0, i32 3, !dbg !1186
  %58 = load i32, i32* %st_mode47, align 8, !dbg !1186
  %and48 = and i32 %58, 448, !dbg !1187
  %cmp49 = icmp eq i32 %and48, 384, !dbg !1188
  %conv50 = zext i1 %cmp49 to i32, !dbg !1188
  %conv51 = sext i32 %conv50 to i64, !dbg !1189
  call void @klee_prefer_cex(i8* %56, i64 %conv51), !dbg !1190
  %59 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1191
  %60 = bitcast %struct.stat64.15* %59 to i8*, !dbg !1191
  %61 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1192
  %st_mode52 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %61, i32 0, i32 3, !dbg !1193
  %62 = load i32, i32* %st_mode52, align 8, !dbg !1193
  %and53 = and i32 %62, 56, !dbg !1194
  %cmp54 = icmp eq i32 %and53, 32, !dbg !1195
  %conv55 = zext i1 %cmp54 to i32, !dbg !1195
  %conv56 = sext i32 %conv55 to i64, !dbg !1196
  call void @klee_prefer_cex(i8* %60, i64 %conv56), !dbg !1197
  %63 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1198
  %64 = bitcast %struct.stat64.15* %63 to i8*, !dbg !1198
  %65 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1199
  %st_mode57 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %65, i32 0, i32 3, !dbg !1200
  %66 = load i32, i32* %st_mode57, align 8, !dbg !1200
  %and58 = and i32 %66, 7, !dbg !1201
  %cmp59 = icmp eq i32 %and58, 4, !dbg !1202
  %conv60 = zext i1 %cmp59 to i32, !dbg !1202
  %conv61 = sext i32 %conv60 to i64, !dbg !1203
  call void @klee_prefer_cex(i8* %64, i64 %conv61), !dbg !1204
  %67 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1205
  %68 = bitcast %struct.stat64.15* %67 to i8*, !dbg !1205
  %69 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1206
  %st_mode62 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %69, i32 0, i32 3, !dbg !1207
  %70 = load i32, i32* %st_mode62, align 8, !dbg !1207
  %and63 = and i32 %70, 61440, !dbg !1208
  %cmp64 = icmp eq i32 %and63, 32768, !dbg !1209
  %conv65 = zext i1 %cmp64 to i32, !dbg !1209
  %conv66 = sext i32 %conv65 to i64, !dbg !1210
  call void @klee_prefer_cex(i8* %68, i64 %conv66), !dbg !1211
  %71 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1212
  %72 = bitcast %struct.stat64.15* %71 to i8*, !dbg !1212
  %73 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1213
  %st_nlink = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %73, i32 0, i32 2, !dbg !1214
  %74 = load i64, i64* %st_nlink, align 8, !dbg !1214
  %cmp67 = icmp eq i64 %74, 1, !dbg !1215
  %conv68 = zext i1 %cmp67 to i32, !dbg !1215
  %conv69 = sext i32 %conv68 to i64, !dbg !1213
  call void @klee_prefer_cex(i8* %72, i64 %conv69), !dbg !1216
  %75 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1217
  %76 = bitcast %struct.stat64.15* %75 to i8*, !dbg !1217
  %77 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1218
  %st_uid = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %77, i32 0, i32 4, !dbg !1219
  %78 = load i32, i32* %st_uid, align 4, !dbg !1219
  %79 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1220
  %st_uid70 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %79, i32 0, i32 4, !dbg !1221
  %80 = load i32, i32* %st_uid70, align 4, !dbg !1221
  %cmp71 = icmp eq i32 %78, %80, !dbg !1222
  %conv72 = zext i1 %cmp71 to i32, !dbg !1222
  %conv73 = sext i32 %conv72 to i64, !dbg !1218
  call void @klee_prefer_cex(i8* %76, i64 %conv73), !dbg !1223
  %81 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1224
  %82 = bitcast %struct.stat64.15* %81 to i8*, !dbg !1224
  %83 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1225
  %st_gid = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %83, i32 0, i32 5, !dbg !1226
  %84 = load i32, i32* %st_gid, align 8, !dbg !1226
  %85 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1227
  %st_gid74 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %85, i32 0, i32 5, !dbg !1228
  %86 = load i32, i32* %st_gid74, align 8, !dbg !1228
  %cmp75 = icmp eq i32 %84, %86, !dbg !1229
  %conv76 = zext i1 %cmp75 to i32, !dbg !1229
  %conv77 = sext i32 %conv76 to i64, !dbg !1225
  call void @klee_prefer_cex(i8* %82, i64 %conv77), !dbg !1230
  %87 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1231
  %88 = bitcast %struct.stat64.15* %87 to i8*, !dbg !1231
  %89 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1232
  %st_blksize78 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %89, i32 0, i32 9, !dbg !1233
  %90 = load i64, i64* %st_blksize78, align 8, !dbg !1233
  %cmp79 = icmp eq i64 %90, 4096, !dbg !1234
  %conv80 = zext i1 %cmp79 to i32, !dbg !1234
  %conv81 = sext i32 %conv80 to i64, !dbg !1232
  call void @klee_prefer_cex(i8* %88, i64 %conv81), !dbg !1235
  %91 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1236
  %92 = bitcast %struct.stat64.15* %91 to i8*, !dbg !1236
  %93 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1237
  %st_atim = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %93, i32 0, i32 11, !dbg !1238
  %tv_sec = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_atim, i32 0, i32 0, !dbg !1238
  %94 = load i64, i64* %tv_sec, align 8, !dbg !1238
  %95 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1239
  %st_atim82 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %95, i32 0, i32 11, !dbg !1240
  %tv_sec83 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_atim82, i32 0, i32 0, !dbg !1240
  %96 = load i64, i64* %tv_sec83, align 8, !dbg !1240
  %cmp84 = icmp eq i64 %94, %96, !dbg !1241
  %conv85 = zext i1 %cmp84 to i32, !dbg !1241
  %conv86 = sext i32 %conv85 to i64, !dbg !1237
  call void @klee_prefer_cex(i8* %92, i64 %conv86), !dbg !1242
  %97 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1243
  %98 = bitcast %struct.stat64.15* %97 to i8*, !dbg !1243
  %99 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1244
  %st_mtim = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %99, i32 0, i32 12, !dbg !1245
  %tv_sec87 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_mtim, i32 0, i32 0, !dbg !1245
  %100 = load i64, i64* %tv_sec87, align 8, !dbg !1245
  %101 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1246
  %st_mtim88 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %101, i32 0, i32 12, !dbg !1247
  %tv_sec89 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_mtim88, i32 0, i32 0, !dbg !1247
  %102 = load i64, i64* %tv_sec89, align 8, !dbg !1247
  %cmp90 = icmp eq i64 %100, %102, !dbg !1248
  %conv91 = zext i1 %cmp90 to i32, !dbg !1248
  %conv92 = sext i32 %conv91 to i64, !dbg !1244
  call void @klee_prefer_cex(i8* %98, i64 %conv92), !dbg !1249
  %103 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1250
  %104 = bitcast %struct.stat64.15* %103 to i8*, !dbg !1250
  %105 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1251
  %st_ctim = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %105, i32 0, i32 13, !dbg !1252
  %tv_sec93 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_ctim, i32 0, i32 0, !dbg !1252
  %106 = load i64, i64* %tv_sec93, align 8, !dbg !1252
  %107 = load %struct.stat64.15*, %struct.stat64.15** %defaults.addr, align 8, !dbg !1253
  %st_ctim94 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %107, i32 0, i32 13, !dbg !1254
  %tv_sec95 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_ctim94, i32 0, i32 0, !dbg !1254
  %108 = load i64, i64* %tv_sec95, align 8, !dbg !1254
  %cmp96 = icmp eq i64 %106, %108, !dbg !1255
  %conv97 = zext i1 %cmp96 to i32, !dbg !1255
  %conv98 = sext i32 %conv97 to i64, !dbg !1251
  call void @klee_prefer_cex(i8* %104, i64 %conv98), !dbg !1256
  %109 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1257
  %size99 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %109, i32 0, i32 0, !dbg !1258
  %110 = load i32, i32* %size99, align 8, !dbg !1258
  %conv100 = zext i32 %110 to i64, !dbg !1257
  %111 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1259
  %st_size = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %111, i32 0, i32 8, !dbg !1260
  store i64 %conv100, i64* %st_size, align 8, !dbg !1261
  %112 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1262
  %st_blocks = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %112, i32 0, i32 10, !dbg !1263
  store i64 8, i64* %st_blocks, align 8, !dbg !1264
  %113 = load %struct.stat64.15*, %struct.stat64.15** %s, align 8, !dbg !1265
  %114 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile.addr, align 8, !dbg !1266
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %114, i32 0, i32 2, !dbg !1267
  store %struct.stat64.15* %113, %struct.stat64.15** %stat, align 8, !dbg !1268
  ret void, !dbg !1269
}

declare dso_local i32 @klee_is_symbolic(i64) #4

declare dso_local void @klee_prefer_cex(i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 %start, i32 %end, i8* %name) #0 !dbg !1270 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !1276, metadata !DIExpression()), !dbg !1277
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1280, metadata !DIExpression()), !dbg !1281
  %0 = load i32, i32* %start.addr, align 4, !dbg !1282
  %1 = load i32, i32* %end.addr, align 4, !dbg !1284
  %cmp = icmp sge i32 %0, %1, !dbg !1285
  br i1 %cmp, label %if.then, label %if.end, !dbg !1286

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.61, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.62, i64 0, i64 0)) #12, !dbg !1287
  unreachable, !dbg !1287

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %start.addr, align 4, !dbg !1288
  %add = add nsw i32 %2, 1, !dbg !1290
  %3 = load i32, i32* %end.addr, align 4, !dbg !1291
  %cmp1 = icmp eq i32 %add, %3, !dbg !1292
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1293

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %start.addr, align 4, !dbg !1294
  store i32 %4, i32* %retval, align 4, !dbg !1296
  br label %return, !dbg !1296

if.else:                                          ; preds = %if.end
  %5 = bitcast i32* %x to i8*, !dbg !1297
  %6 = load i8*, i8** %name.addr, align 8, !dbg !1299
  call void @klee_make_symbolic(i8* %5, i64 4, i8* %6), !dbg !1300
  %7 = load i32, i32* %start.addr, align 4, !dbg !1301
  %cmp3 = icmp eq i32 %7, 0, !dbg !1303
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !1304

if.then4:                                         ; preds = %if.else
  %8 = load i32, i32* %x, align 4, !dbg !1305
  %9 = load i32, i32* %end.addr, align 4, !dbg !1307
  %cmp5 = icmp ult i32 %8, %9, !dbg !1308
  %conv = zext i1 %cmp5 to i32, !dbg !1308
  %conv6 = sext i32 %conv to i64, !dbg !1309
  call void @klee_assume(i64 %conv6), !dbg !1310
  br label %if.end14, !dbg !1311

if.else7:                                         ; preds = %if.else
  %10 = load i32, i32* %start.addr, align 4, !dbg !1312
  %11 = load i32, i32* %x, align 4, !dbg !1314
  %cmp8 = icmp sle i32 %10, %11, !dbg !1315
  %conv9 = zext i1 %cmp8 to i32, !dbg !1315
  %conv10 = sext i32 %conv9 to i64, !dbg !1312
  call void @klee_assume(i64 %conv10), !dbg !1316
  %12 = load i32, i32* %x, align 4, !dbg !1317
  %13 = load i32, i32* %end.addr, align 4, !dbg !1318
  %cmp11 = icmp slt i32 %12, %13, !dbg !1319
  %conv12 = zext i1 %cmp11 to i32, !dbg !1319
  %conv13 = sext i32 %conv12 to i64, !dbg !1317
  call void @klee_assume(i64 %conv13), !dbg !1320
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %14 = load i32, i32* %x, align 4, !dbg !1321
  store i32 %14, i32* %retval, align 4, !dbg !1322
  br label %return, !dbg !1322

return:                                           ; preds = %if.end14, %if.then2
  %15 = load i32, i32* %retval, align 4, !dbg !1323
  ret i32 %15, !dbg !1323
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @open64(i8* nonnull %pathname, i32 %flags, ...) #0 !dbg !1324 {
entry:
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag.13], align 16
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1328, metadata !DIExpression()), !dbg !1329
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i32 0, i32* %mode, align 4, !dbg !1333
  %0 = load i32, i32* %flags.addr, align 4, !dbg !1334
  %and = and i32 %0, 64, !dbg !1336
  %tobool = icmp ne i32 %and, 0, !dbg !1336
  br i1 %tobool, label %if.then, label %if.end, !dbg !1337

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag.13]* %ap, metadata !1338, metadata !DIExpression()), !dbg !1354
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !1355
  %arraydecay1 = bitcast %struct.__va_list_tag.13* %arraydecay to i8*, !dbg !1355
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1355
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !1356
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay2, i32 0, i32 0, !dbg !1356
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !1356
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1356
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1356

vaarg.in_reg:                                     ; preds = %if.then
  %1 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay2, i32 0, i32 3, !dbg !1356
  %reg_save_area = load i8*, i8** %1, align 16, !dbg !1356
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !1356
  %3 = bitcast i8* %2 to i32*, !dbg !1356
  %4 = add i32 %gp_offset, 8, !dbg !1356
  store i32 %4, i32* %gp_offset_p, align 16, !dbg !1356
  br label %vaarg.end, !dbg !1356

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay2, i32 0, i32 2, !dbg !1356
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !1356
  %5 = bitcast i8* %overflow_arg_area to i32*, !dbg !1356
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !1356
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1356
  br label %vaarg.end, !dbg !1356

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ], !dbg !1356
  %6 = load i32, i32* %vaarg.addr, align 4, !dbg !1356
  store i32 %6, i32* %mode, align 4, !dbg !1357
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !1358
  %arraydecay34 = bitcast %struct.__va_list_tag.13* %arraydecay3 to i8*, !dbg !1358
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1358
  br label %if.end, !dbg !1359

if.end:                                           ; preds = %vaarg.end, %entry
  %7 = load i8*, i8** %pathname.addr, align 8, !dbg !1360
  %8 = load i32, i32* %flags.addr, align 4, !dbg !1361
  %9 = load i32, i32* %mode, align 4, !dbg !1362
  %call = call i32 @__fd_open(i8* %7, i32 %8, i32 %9), !dbg !1363
  ret i32 %call, !dbg !1364
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @openat64(i32 %fd, i8* nonnull %pathname, i32 %flags, ...) #0 !dbg !1365 {
entry:
  %fd.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag.13], align 16
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1368, metadata !DIExpression()), !dbg !1369
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1370, metadata !DIExpression()), !dbg !1371
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1372, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !1374, metadata !DIExpression()), !dbg !1375
  store i32 0, i32* %mode, align 4, !dbg !1375
  %0 = load i32, i32* %flags.addr, align 4, !dbg !1376
  %and = and i32 %0, 64, !dbg !1378
  %tobool = icmp ne i32 %and, 0, !dbg !1378
  br i1 %tobool, label %if.then, label %if.end, !dbg !1379

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag.13]* %ap, metadata !1380, metadata !DIExpression()), !dbg !1382
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !1383
  %arraydecay1 = bitcast %struct.__va_list_tag.13* %arraydecay to i8*, !dbg !1383
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1383
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !1384
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay2, i32 0, i32 0, !dbg !1384
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !1384
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1384
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1384

vaarg.in_reg:                                     ; preds = %if.then
  %1 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay2, i32 0, i32 3, !dbg !1384
  %reg_save_area = load i8*, i8** %1, align 16, !dbg !1384
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !1384
  %3 = bitcast i8* %2 to i32*, !dbg !1384
  %4 = add i32 %gp_offset, 8, !dbg !1384
  store i32 %4, i32* %gp_offset_p, align 16, !dbg !1384
  br label %vaarg.end, !dbg !1384

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay2, i32 0, i32 2, !dbg !1384
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !1384
  %5 = bitcast i8* %overflow_arg_area to i32*, !dbg !1384
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !1384
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1384
  br label %vaarg.end, !dbg !1384

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ], !dbg !1384
  %6 = load i32, i32* %vaarg.addr, align 4, !dbg !1384
  store i32 %6, i32* %mode, align 4, !dbg !1385
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !1386
  %arraydecay34 = bitcast %struct.__va_list_tag.13* %arraydecay3 to i8*, !dbg !1386
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1386
  br label %if.end, !dbg !1387

if.end:                                           ; preds = %vaarg.end, %entry
  %7 = load i32, i32* %fd.addr, align 4, !dbg !1388
  %8 = load i8*, i8** %pathname.addr, align 8, !dbg !1389
  %9 = load i32, i32* %flags.addr, align 4, !dbg !1390
  %10 = load i32, i32* %mode, align 4, !dbg !1391
  %call = call i32 @__fd_openat(i32 %7, i8* %8, i32 %9, i32 %10), !dbg !1392
  ret i32 %call, !dbg !1393
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lseek64(i32 %fd, i64 %offset, i32 %whence) #0 !dbg !1394 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i32 %whence, i32* %whence.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %whence.addr, metadata !1401, metadata !DIExpression()), !dbg !1402
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1403
  %1 = load i64, i64* %offset.addr, align 8, !dbg !1404
  %2 = load i32, i32* %whence.addr, align 4, !dbg !1405
  %call = call i64 @__fd_lseek(i32 %0, i64 %1, i32 %2), !dbg !1406
  ret i64 %call, !dbg !1407
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__xstat64(i32 %vers, i8* %path, %struct.stat64.15* %buf) #0 !dbg !1408 {
entry:
  %vers.addr = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  store i32 %vers, i32* %vers.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vers.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !1433, metadata !DIExpression()), !dbg !1434
  %0 = load i8*, i8** %path.addr, align 8, !dbg !1435
  %1 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !1436
  %2 = bitcast %struct.stat64.15* %1 to %struct.stat64.15*, !dbg !1437
  %call = call i32 @__fd_stat(i8* %0, %struct.stat64.15* %2), !dbg !1438
  ret i32 %call, !dbg !1439
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stat64(i8* nonnull %path, %struct.stat64.15* nonnull %buf) #0 !dbg !1440 {
entry:
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1443, metadata !DIExpression()), !dbg !1444
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  %0 = load i8*, i8** %path.addr, align 8, !dbg !1447
  %1 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !1448
  %2 = bitcast %struct.stat64.15* %1 to %struct.stat64.15*, !dbg !1449
  %call = call i32 @__fd_stat(i8* %0, %struct.stat64.15* %2), !dbg !1450
  ret i32 %call, !dbg !1451
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__lxstat64(i32 %vers, i8* %path, %struct.stat64.15* %buf) #0 !dbg !1452 {
entry:
  %vers.addr = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  store i32 %vers, i32* %vers.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vers.addr, metadata !1453, metadata !DIExpression()), !dbg !1454
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1455, metadata !DIExpression()), !dbg !1456
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !1457, metadata !DIExpression()), !dbg !1458
  %0 = load i8*, i8** %path.addr, align 8, !dbg !1459
  %1 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !1460
  %2 = bitcast %struct.stat64.15* %1 to %struct.stat64.15*, !dbg !1461
  %call = call i32 @__fd_lstat(i8* %0, %struct.stat64.15* %2), !dbg !1462
  ret i32 %call, !dbg !1463
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lstat64(i8* nonnull %path, %struct.stat64.15* nonnull %buf) #0 !dbg !1464 {
entry:
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1465, metadata !DIExpression()), !dbg !1466
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  %0 = load i8*, i8** %path.addr, align 8, !dbg !1469
  %1 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !1470
  %2 = bitcast %struct.stat64.15* %1 to %struct.stat64.15*, !dbg !1471
  %call = call i32 @__fd_lstat(i8* %0, %struct.stat64.15* %2), !dbg !1472
  ret i32 %call, !dbg !1473
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fxstat64(i32 %vers, i32 %fd, %struct.stat64.15* %buf) #0 !dbg !1474 {
entry:
  %vers.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca %struct.stat64.15*, align 8
  store i32 %vers, i32* %vers.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vers.addr, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !1481, metadata !DIExpression()), !dbg !1482
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1483
  %1 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !1484
  %2 = bitcast %struct.stat64.15* %1 to %struct.stat64.15*, !dbg !1485
  %call = call i32 @__fd_fstat(i32 %0, %struct.stat64.15* %2), !dbg !1486
  ret i32 %call, !dbg !1487
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fstat64(i32 %fd, %struct.stat64.15* nonnull %buf) #0 !dbg !1488 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca %struct.stat64.15*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1491, metadata !DIExpression()), !dbg !1492
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !1493, metadata !DIExpression()), !dbg !1494
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1495
  %1 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !1496
  %2 = bitcast %struct.stat64.15* %1 to %struct.stat64.15*, !dbg !1497
  %call = call i32 @__fd_fstat(i32 %0, %struct.stat64.15* %2), !dbg !1498
  ret i32 %call, !dbg !1499
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ftruncate64(i32 %fd, i64 %length) #0 !dbg !1500 {
entry:
  %fd.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1505
  %1 = load i64, i64* %length.addr, align 8, !dbg !1506
  %call = call i32 @__fd_ftruncate(i32 %0, i64 %1), !dbg !1507
  ret i32 %call, !dbg !1508
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local i32 @statfs64(i8* nonnull %path, %struct.statfs.11* nonnull %buf) #0 !dbg !1509 {
entry:
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.statfs.11*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1541, metadata !DIExpression()), !dbg !1542
  store %struct.statfs.11* %buf, %struct.statfs.11** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.statfs.11** %buf.addr, metadata !1543, metadata !DIExpression()), !dbg !1544
  %0 = load i8*, i8** %path.addr, align 8, !dbg !1545
  %1 = load %struct.statfs.11*, %struct.statfs.11** %buf.addr, align 8, !dbg !1546
  %call = call i32 @__fd_statfs(i8* %0, %struct.statfs.11* %1), !dbg !1547
  ret i32 %call, !dbg !1548
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getdents64(i32 %fd, i8* nonnull %dirp, i64 %count) #0 !dbg !1549 {
entry:
  %fd.addr = alloca i32, align 4
  %dirp.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1552, metadata !DIExpression()), !dbg !1553
  store i8* %dirp, i8** %dirp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dirp.addr, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1556, metadata !DIExpression()), !dbg !1557
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1558
  %1 = load i8*, i8** %dirp.addr, align 8, !dbg !1559
  %2 = bitcast i8* %1 to %struct.dirent64.12*, !dbg !1560
  %3 = load i64, i64* %count.addr, align 8, !dbg !1561
  %conv = trunc i64 %3 to i32, !dbg !1561
  %call = call i32 @__fd_getdents(i32 %0, %struct.dirent64.12* %2, i32 %conv), !dbg !1562
  %conv1 = sext i32 %call to i64, !dbg !1562
  ret i64 %conv1, !dbg !1563
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local i64 @strlen(i8* nonnull %str) #8 !dbg !1564 {
entry:
  %str.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata i8** %s, metadata !1570, metadata !DIExpression()), !dbg !1571
  %0 = load i8*, i8** %str.addr, align 8, !dbg !1572
  store i8* %0, i8** %s, align 8, !dbg !1571
  br label %while.cond, !dbg !1573

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %s, align 8, !dbg !1574
  %2 = load i8, i8* %1, align 1, !dbg !1575
  %tobool = icmp ne i8 %2, 0, !dbg !1573
  br i1 %tobool, label %while.body, label %while.end, !dbg !1573

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s, align 8, !dbg !1576
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1576
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !1576
  br label %while.cond, !dbg !1573, !llvm.loop !1577

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %s, align 8, !dbg !1579
  %5 = load i8*, i8** %str.addr, align 8, !dbg !1580
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !1581
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !1581
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1581
  ret i64 %sub.ptr.sub, !dbg !1582
}

; Function Attrs: noinline nounwind readonly uwtable willreturn
define dso_local i32 @memcmp(i8* nonnull %s1, i8* nonnull %s2, i64 %n) #8 !dbg !1583 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !1587, metadata !DIExpression()), !dbg !1588
  store i8* %s2, i8** %s2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !1589, metadata !DIExpression()), !dbg !1590
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1591, metadata !DIExpression()), !dbg !1592
  %0 = load i64, i64* %n.addr, align 8, !dbg !1593
  %cmp = icmp ne i64 %0, 0, !dbg !1595
  br i1 %cmp, label %if.then, label %if.end12, !dbg !1596

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %p1, metadata !1597, metadata !DIExpression()), !dbg !1601
  %1 = load i8*, i8** %s1.addr, align 8, !dbg !1602
  store i8* %1, i8** %p1, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata i8** %p2, metadata !1603, metadata !DIExpression()), !dbg !1604
  %2 = load i8*, i8** %s2.addr, align 8, !dbg !1605
  store i8* %2, i8** %p2, align 8, !dbg !1604
  br label %do.body, !dbg !1606

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load i8*, i8** %p1, align 8, !dbg !1607
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !1607
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !1607
  %4 = load i8, i8* %3, align 1, !dbg !1610
  %conv = zext i8 %4 to i32, !dbg !1610
  %5 = load i8*, i8** %p2, align 8, !dbg !1611
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !1611
  store i8* %incdec.ptr1, i8** %p2, align 8, !dbg !1611
  %6 = load i8, i8* %5, align 1, !dbg !1612
  %conv2 = zext i8 %6 to i32, !dbg !1612
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !1613
  br i1 %cmp3, label %if.then5, label %do.cond, !dbg !1614

if.then5:                                         ; preds = %do.body
  %7 = load i8*, i8** %p1, align 8, !dbg !1615
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 -1, !dbg !1615
  store i8* %incdec.ptr6, i8** %p1, align 8, !dbg !1615
  %8 = load i8, i8* %incdec.ptr6, align 1, !dbg !1617
  %conv7 = zext i8 %8 to i32, !dbg !1617
  %9 = load i8*, i8** %p2, align 8, !dbg !1618
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 -1, !dbg !1618
  store i8* %incdec.ptr8, i8** %p2, align 8, !dbg !1618
  %10 = load i8, i8* %incdec.ptr8, align 1, !dbg !1619
  %conv9 = zext i8 %10 to i32, !dbg !1619
  %sub = sub nsw i32 %conv7, %conv9, !dbg !1620
  store i32 %sub, i32* %retval, align 4, !dbg !1621
  br label %return, !dbg !1621

do.cond:                                          ; preds = %do.body
  %11 = load i64, i64* %n.addr, align 8, !dbg !1622
  %dec = add i64 %11, -1, !dbg !1622
  store i64 %dec, i64* %n.addr, align 8, !dbg !1622
  %cmp10 = icmp ne i64 %dec, 0, !dbg !1623
  br i1 %cmp10, label %do.body, label %if.end12, !dbg !1624, !llvm.loop !1625

if.end12:                                         ; preds = %do.cond, %entry
  store i32 0, i32* %retval, align 4, !dbg !1627
  br label %return, !dbg !1627

return:                                           ; preds = %if.end12, %if.then5
  %12 = load i32, i32* %retval, align 4, !dbg !1628
  ret i32 %12, !dbg !1628
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @access(i8* nonnull %pathname, i32 %mode) #0 !dbg !1629 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1632, metadata !DIExpression()), !dbg !1633
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !1634, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !1636, metadata !DIExpression()), !dbg !1662
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !1663
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !1664
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !1662
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !1665
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !1665
  br i1 %tobool, label %if.then, label %if.end, !dbg !1667

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1668
  br label %return, !dbg !1668

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %pathname.addr, align 8, !dbg !1670
  %call1 = call i8* @__concretize_string(i8* %2), !dbg !1671
  %3 = load i32, i32* %mode.addr, align 4, !dbg !1672
  %call2 = call i64 (i64, ...) @syscall(i64 21, i8* %call1, i32 %3) #11, !dbg !1673
  %conv = trunc i64 %call2 to i32, !dbg !1673
  store i32 %conv, i32* %retval, align 4, !dbg !1674
  br label %return, !dbg !1674

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !1675
  ret i32 %4, !dbg !1675
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.exe_disk_file_t.16* @__get_sym_file(i8* %pathname) #0 !dbg !1676 {
entry:
  %retval = alloca %struct.exe_disk_file_t.16*, align 8
  %pathname.addr = alloca i8*, align 8
  %cwd = alloca [1024 x i8], align 16
  %cwd_len = alloca i64, align 8
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %df = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1679, metadata !DIExpression()), !dbg !1680
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !1681
  %tobool = icmp ne i8* %0, null, !dbg !1681
  br i1 %tobool, label %if.end, label %if.then, !dbg !1683

if.then:                                          ; preds = %entry
  store %struct.exe_disk_file_t.16* null, %struct.exe_disk_file_t.16** %retval, align 8, !dbg !1684
  br label %return, !dbg !1684

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !1685
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1685
  %2 = load i8, i8* %arrayidx, align 1, !dbg !1685
  %conv = sext i8 %2 to i32, !dbg !1685
  %cmp = icmp eq i32 %conv, 47, !dbg !1687
  br i1 %cmp, label %if.then2, label %if.end29, !dbg !1688

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata [1024 x i8]* %cwd, metadata !1689, metadata !DIExpression()), !dbg !1692
  %3 = bitcast [1024 x i8]* %cwd to i8*, !dbg !1692
  %4 = call i8* @memset(i8* %3, i32 0, i64 1024), !dbg !1692
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i64 0, i64 0, !dbg !1693
  %call = call i8* @getcwd(i8* %arraydecay, i64 1024) #11, !dbg !1695
  %tobool3 = icmp ne i8* %call, null, !dbg !1695
  br i1 %tobool3, label %if.then4, label %if.end29, !dbg !1696

if.then4:                                         ; preds = %if.then2
  call void @llvm.dbg.declare(metadata i64* %cwd_len, metadata !1697, metadata !DIExpression()), !dbg !1699
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i64 0, i64 0, !dbg !1700
  %call6 = call i64 @strlen(i8* %arraydecay5) #13, !dbg !1701
  store i64 %call6, i64* %cwd_len, align 8, !dbg !1699
  %5 = load i64, i64* %cwd_len, align 8, !dbg !1702
  %cmp7 = icmp ugt i64 %5, 0, !dbg !1704
  br i1 %cmp7, label %land.lhs.true, label %if.end15, !dbg !1705

land.lhs.true:                                    ; preds = %if.then4
  %6 = load i64, i64* %cwd_len, align 8, !dbg !1706
  %sub = sub i64 %6, 1, !dbg !1707
  %arrayidx9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i64 0, i64 %sub, !dbg !1708
  %7 = load i8, i8* %arrayidx9, align 1, !dbg !1708
  %conv10 = sext i8 %7 to i32, !dbg !1708
  %cmp11 = icmp eq i32 %conv10, 47, !dbg !1709
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !1710

if.then13:                                        ; preds = %land.lhs.true
  %8 = load i64, i64* %cwd_len, align 8, !dbg !1711
  %dec = add i64 %8, -1, !dbg !1711
  store i64 %dec, i64* %cwd_len, align 8, !dbg !1711
  %arrayidx14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i64 0, i64 %dec, !dbg !1713
  store i8 0, i8* %arrayidx14, align 1, !dbg !1714
  br label %if.end15, !dbg !1715

if.end15:                                         ; preds = %if.then13, %land.lhs.true, %if.then4
  %9 = load i8*, i8** %pathname.addr, align 8, !dbg !1716
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %cwd, i64 0, i64 0, !dbg !1718
  %10 = load i64, i64* %cwd_len, align 8, !dbg !1719
  %call17 = call i32 @strncmp(i8* %9, i8* %arraydecay16, i64 %10) #13, !dbg !1720
  %cmp18 = icmp eq i32 %call17, 0, !dbg !1721
  br i1 %cmp18, label %if.then20, label %if.end29, !dbg !1722

if.then20:                                        ; preds = %if.end15
  %11 = load i8*, i8** %pathname.addr, align 8, !dbg !1723
  %12 = load i64, i64* %cwd_len, align 8, !dbg !1726
  %arrayidx21 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !1723
  %13 = load i8, i8* %arrayidx21, align 1, !dbg !1723
  %conv22 = sext i8 %13 to i32, !dbg !1723
  %cmp23 = icmp ne i32 %conv22, 0, !dbg !1727
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !1728

if.then25:                                        ; preds = %if.then20
  %14 = load i64, i64* %cwd_len, align 8, !dbg !1729
  %add = add i64 %14, 1, !dbg !1730
  %15 = load i8*, i8** %pathname.addr, align 8, !dbg !1731
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %add, !dbg !1731
  store i8* %add.ptr, i8** %pathname.addr, align 8, !dbg !1731
  br label %if.end29, !dbg !1732

if.end29:                                         ; preds = %if.then2, %if.then20, %if.then25, %if.end15, %if.end
  call void @llvm.dbg.declare(metadata i8* %c, metadata !1733, metadata !DIExpression()), !dbg !1734
  %16 = load i8*, i8** %pathname.addr, align 8, !dbg !1735
  %arrayidx30 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !1735
  %17 = load i8, i8* %arrayidx30, align 1, !dbg !1735
  store i8 %17, i8* %c, align 1, !dbg !1734
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1736, metadata !DIExpression()), !dbg !1737
  %18 = load i8, i8* %c, align 1, !dbg !1738
  %conv31 = sext i8 %18 to i32, !dbg !1738
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !1740
  br i1 %cmp32, label %if.then38, label %lor.lhs.false, !dbg !1741

lor.lhs.false:                                    ; preds = %if.end29
  %19 = load i8*, i8** %pathname.addr, align 8, !dbg !1742
  %arrayidx34 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1742
  %20 = load i8, i8* %arrayidx34, align 1, !dbg !1742
  %conv35 = sext i8 %20 to i32, !dbg !1742
  %cmp36 = icmp ne i32 %conv35, 0, !dbg !1743
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1744

if.then38:                                        ; preds = %lor.lhs.false, %if.end29
  store %struct.exe_disk_file_t.16* null, %struct.exe_disk_file_t.16** %retval, align 8, !dbg !1745
  br label %return, !dbg !1745

if.end39:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !1746
  br label %for.cond, !dbg !1748

for.cond:                                         ; preds = %for.inc, %if.end39
  %21 = load i32, i32* %i, align 4, !dbg !1749
  %22 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 0), align 8, !dbg !1751
  %cmp40 = icmp ult i32 %21, %22, !dbg !1752
  br i1 %cmp40, label %for.body, label %for.end, !dbg !1753

for.body:                                         ; preds = %for.cond
  %23 = load i8, i8* %c, align 1, !dbg !1754
  %conv42 = sext i8 %23 to i32, !dbg !1754
  %24 = load i32, i32* %i, align 4, !dbg !1757
  %conv43 = trunc i32 %24 to i8, !dbg !1758
  %conv44 = sext i8 %conv43 to i32, !dbg !1758
  %add45 = add nsw i32 65, %conv44, !dbg !1759
  %cmp46 = icmp eq i32 %conv42, %add45, !dbg !1760
  br i1 %cmp46, label %if.then48, label %for.inc, !dbg !1761

if.then48:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df, metadata !1762, metadata !DIExpression()), !dbg !1764
  %25 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 4), align 8, !dbg !1765
  %26 = load i32, i32* %i, align 4, !dbg !1766
  %idxprom = zext i32 %26 to i64, !dbg !1767
  %arrayidx49 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %25, i64 %idxprom, !dbg !1767
  store %struct.exe_disk_file_t.16* %arrayidx49, %struct.exe_disk_file_t.16** %df, align 8, !dbg !1764
  %27 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !1768
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %27, i32 0, i32 2, !dbg !1770
  %28 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !1770
  %st_ino = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %28, i32 0, i32 1, !dbg !1771
  %29 = load i64, i64* %st_ino, align 8, !dbg !1771
  %cmp50 = icmp eq i64 %29, 0, !dbg !1772
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1773

if.then52:                                        ; preds = %if.then48
  store %struct.exe_disk_file_t.16* null, %struct.exe_disk_file_t.16** %retval, align 8, !dbg !1774
  br label %return, !dbg !1774

if.end53:                                         ; preds = %if.then48
  %30 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !1775
  store %struct.exe_disk_file_t.16* %30, %struct.exe_disk_file_t.16** %retval, align 8, !dbg !1776
  br label %return, !dbg !1776

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !dbg !1777
  %inc = add i32 %31, 1, !dbg !1777
  store i32 %inc, i32* %i, align 4, !dbg !1777
  br label %for.cond, !dbg !1778, !llvm.loop !1779

for.end:                                          ; preds = %for.cond
  store %struct.exe_disk_file_t.16* null, %struct.exe_disk_file_t.16** %retval, align 8, !dbg !1781
  br label %return, !dbg !1781

return:                                           ; preds = %for.end, %if.end53, %if.then52, %if.then38, %if.then
  %32 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %retval, align 8, !dbg !1782
  ret %struct.exe_disk_file_t.16* %32, !dbg !1782
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @__concretize_string(i8* %s) #0 !dbg !1783 {
entry:
  %s.addr = alloca i8*, align 8
  %sc = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1786, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.declare(metadata i8** %sc, metadata !1788, metadata !DIExpression()), !dbg !1789
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1790
  %call = call i8* @__concretize_ptr(i8* %0), !dbg !1791
  store i8* %call, i8** %sc, align 8, !dbg !1789
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1792, metadata !DIExpression()), !dbg !1793
  store i32 0, i32* %i, align 4, !dbg !1794
  br label %for.cond, !dbg !1796

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.declare(metadata i8* %c, metadata !1797, metadata !DIExpression()), !dbg !1800
  %1 = load i8*, i8** %sc, align 8, !dbg !1801
  %2 = load i8, i8* %1, align 1, !dbg !1802
  store i8 %2, i8* %c, align 1, !dbg !1800
  %3 = load i8, i8* %c, align 1, !dbg !1803
  %conv = sext i8 %3 to i64, !dbg !1803
  %call1 = call i32 @klee_is_symbolic(i64 %conv), !dbg !1805
  %tobool = icmp ne i32 %call1, 0, !dbg !1805
  br i1 %tobool, label %if.end4, label %if.then, !dbg !1806

if.then:                                          ; preds = %for.cond
  %4 = load i8, i8* %c, align 1, !dbg !1807
  %tobool2 = icmp ne i8 %4, 0, !dbg !1807
  br i1 %tobool2, label %for.inc, label %for.end, !dbg !1810

if.end4:                                          ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !1811
  %6 = load i32, i32* %i, align 4, !dbg !1813
  %sub = sub i32 %6, 1, !dbg !1814
  %and = and i32 %5, %sub, !dbg !1815
  %tobool5 = icmp ne i32 %and, 0, !dbg !1815
  br i1 %tobool5, label %if.else14, label %if.then6, !dbg !1816

if.then6:                                         ; preds = %if.end4
  %7 = load i8, i8* %c, align 1, !dbg !1817
  %tobool7 = icmp ne i8 %7, 0, !dbg !1817
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !1820

if.then8:                                         ; preds = %if.then6
  %8 = load i8*, i8** %sc, align 8, !dbg !1821
  store i8 0, i8* %8, align 1, !dbg !1823
  br label %for.end, !dbg !1824

if.else:                                          ; preds = %if.then6
  %9 = load i8, i8* %c, align 1, !dbg !1825
  %conv9 = sext i8 %9 to i32, !dbg !1825
  %cmp = icmp eq i32 %conv9, 47, !dbg !1827
  br i1 %cmp, label %if.then11, label %for.inc, !dbg !1828

if.then11:                                        ; preds = %if.else
  %10 = load i8*, i8** %sc, align 8, !dbg !1829
  store i8 47, i8* %10, align 1, !dbg !1831
  br label %for.inc, !dbg !1832

if.else14:                                        ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i8* %cc, metadata !1833, metadata !DIExpression()), !dbg !1835
  %11 = load i8, i8* %c, align 1, !dbg !1836
  %conv15 = sext i8 %11 to i64, !dbg !1837
  %call16 = call i64 @klee_get_valuel(i64 %conv15), !dbg !1838
  %conv17 = trunc i64 %call16 to i8, !dbg !1839
  store i8 %conv17, i8* %cc, align 1, !dbg !1835
  %12 = load i8, i8* %cc, align 1, !dbg !1840
  %conv18 = sext i8 %12 to i32, !dbg !1840
  %13 = load i8, i8* %c, align 1, !dbg !1841
  %conv19 = sext i8 %13 to i32, !dbg !1841
  %cmp20 = icmp eq i32 %conv18, %conv19, !dbg !1842
  %conv21 = zext i1 %cmp20 to i32, !dbg !1842
  %conv22 = sext i32 %conv21 to i64, !dbg !1840
  call void @klee_assume(i64 %conv22), !dbg !1843
  %14 = load i8, i8* %cc, align 1, !dbg !1844
  %15 = load i8*, i8** %sc, align 8, !dbg !1845
  store i8 %14, i8* %15, align 1, !dbg !1846
  %16 = load i8, i8* %cc, align 1, !dbg !1847
  %tobool23 = icmp ne i8 %16, 0, !dbg !1847
  br i1 %tobool23, label %for.inc, label %for.end, !dbg !1849

for.inc:                                          ; preds = %if.else, %if.then11, %if.else14, %if.then
  %17 = load i32, i32* %i, align 4, !dbg !1850
  %inc = add i32 %17, 1, !dbg !1850
  store i32 %inc, i32* %i, align 4, !dbg !1850
  %18 = load i8*, i8** %sc, align 8, !dbg !1851
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1, !dbg !1851
  store i8* %incdec.ptr, i8** %sc, align 8, !dbg !1851
  br label %for.cond, !dbg !1852, !llvm.loop !1853

for.end:                                          ; preds = %if.else14, %if.then, %if.then8
  %19 = load i8*, i8** %s.addr, align 8, !dbg !1856
  ret i8* %19, !dbg !1857
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @__concretize_ptr(i8* %p) #0 !dbg !1858 {
entry:
  %p.addr = alloca i8*, align 8
  %pc = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1861, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.declare(metadata i8** %pc, metadata !1863, metadata !DIExpression()), !dbg !1864
  %0 = load i8*, i8** %p.addr, align 8, !dbg !1865
  %1 = ptrtoint i8* %0 to i64, !dbg !1866
  %call = call i64 @klee_get_valuel(i64 %1), !dbg !1867
  %2 = inttoptr i64 %call to i8*, !dbg !1868
  store i8* %2, i8** %pc, align 8, !dbg !1864
  %3 = load i8*, i8** %pc, align 8, !dbg !1869
  %4 = load i8*, i8** %p.addr, align 8, !dbg !1870
  %cmp = icmp eq i8* %3, %4, !dbg !1871
  %conv = zext i1 %cmp to i32, !dbg !1871
  %conv1 = sext i32 %conv to i64, !dbg !1869
  call void @klee_assume(i64 %conv1), !dbg !1872
  %5 = load i8*, i8** %pc, align 8, !dbg !1873
  ret i8* %5, !dbg !1874
}

declare dso_local i64 @klee_get_valuel(i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @getcwd(i8* %buf, i64 %size) #0 !dbg !202 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %r = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1875, metadata !DIExpression()), !dbg !1876
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1877, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.declare(metadata i32* %r, metadata !1879, metadata !DIExpression()), !dbg !1880
  %0 = load i32, i32* @getcwd.n_calls, align 4, !dbg !1881
  %inc = add nsw i32 %0, 1, !dbg !1881
  store i32 %inc, i32* @getcwd.n_calls, align 4, !dbg !1881
  %1 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !1882
  %tobool = icmp ne i32 %1, 0, !dbg !1884
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1885

land.lhs.true:                                    ; preds = %entry
  %2 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 10), align 8, !dbg !1886
  %3 = load i32, i32* %2, align 4, !dbg !1887
  %4 = load i32, i32* @getcwd.n_calls, align 4, !dbg !1888
  %cmp = icmp eq i32 %3, %4, !dbg !1889
  br i1 %cmp, label %if.then, label %if.end, !dbg !1890

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !1891
  %dec = add i32 %5, -1, !dbg !1891
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !1891
  %call = call i32* @__errno_location() #15, !dbg !1893
  store i32 34, i32* %call, align 4, !dbg !1894
  store i8* null, i8** %retval, align 8, !dbg !1895
  br label %return, !dbg !1895

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !1896
  %tobool1 = icmp ne i8* %6, null, !dbg !1896
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !1898

if.then2:                                         ; preds = %if.end
  store i64 1024, i64* %size.addr, align 8, !dbg !1899
  %7 = load i64, i64* %size.addr, align 8, !dbg !1901
  %call3 = call noalias align 16 i8* @malloc(i64 %7) #11, !dbg !1902
  store i8* %call3, i8** %buf.addr, align 8, !dbg !1903
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !1904
  %tobool4 = icmp ne i8* %8, null, !dbg !1904
  br i1 %tobool4, label %if.end12, label %if.then5, !dbg !1906

if.then5:                                         ; preds = %if.then2
  %call6 = call i32* @__errno_location() #15, !dbg !1907
  store i32 12, i32* %call6, align 4, !dbg !1909
  store i8* null, i8** %retval, align 8, !dbg !1910
  br label %return, !dbg !1910

if.else:                                          ; preds = %if.end
  %9 = load i64, i64* %size.addr, align 8, !dbg !1911
  %tobool8 = icmp ne i64 %9, 0, !dbg !1911
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !1913

if.then9:                                         ; preds = %if.else
  %call10 = call i32* @__errno_location() #15, !dbg !1914
  store i32 22, i32* %call10, align 4, !dbg !1916
  store i8* null, i8** %retval, align 8, !dbg !1917
  br label %return, !dbg !1917

if.end12:                                         ; preds = %if.else, %if.then2
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !1918
  %call13 = call i8* @__concretize_ptr(i8* %10), !dbg !1919
  store i8* %call13, i8** %buf.addr, align 8, !dbg !1920
  %11 = load i64, i64* %size.addr, align 8, !dbg !1921
  %call14 = call i64 @__concretize_size(i64 %11), !dbg !1922
  store i64 %call14, i64* %size.addr, align 8, !dbg !1923
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !1924
  %13 = load i64, i64* %size.addr, align 8, !dbg !1925
  call void @klee_check_memory_access(i8* %12, i64 %13), !dbg !1926
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !1927
  %15 = load i64, i64* %size.addr, align 8, !dbg !1928
  %call15 = call i64 (i64, ...) @syscall(i64 79, i8* %14, i64 %15) #11, !dbg !1929
  %conv = trunc i64 %call15 to i32, !dbg !1929
  store i32 %conv, i32* %r, align 4, !dbg !1930
  %16 = load i32, i32* %r, align 4, !dbg !1931
  %cmp16 = icmp eq i32 %16, -1, !dbg !1933
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1934

if.then18:                                        ; preds = %if.end12
  store i8* null, i8** %retval, align 8, !dbg !1935
  br label %return, !dbg !1935

if.end19:                                         ; preds = %if.end12
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !1936
  store i8* %17, i8** %retval, align 8, !dbg !1937
  br label %return, !dbg !1937

return:                                           ; preds = %if.end19, %if.then18, %if.then9, %if.then5, %if.then
  %18 = load i8*, i8** %retval, align 8, !dbg !1938
  ret i8* %18, !dbg !1938
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #10

; Function Attrs: noinline nounwind uwtable
define internal i64 @__concretize_size(i64 %s) #0 !dbg !1939 {
entry:
  %s.addr = alloca i64, align 8
  %sc = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.declare(metadata i64* %sc, metadata !1944, metadata !DIExpression()), !dbg !1945
  %0 = load i64, i64* %s.addr, align 8, !dbg !1946
  %call = call i64 @klee_get_valuel(i64 %0), !dbg !1947
  store i64 %call, i64* %sc, align 8, !dbg !1945
  %1 = load i64, i64* %sc, align 8, !dbg !1948
  %2 = load i64, i64* %s.addr, align 8, !dbg !1949
  %cmp = icmp eq i64 %1, %2, !dbg !1950
  %conv = zext i1 %cmp to i32, !dbg !1950
  %conv1 = sext i32 %conv to i64, !dbg !1948
  call void @klee_assume(i64 %conv1), !dbg !1951
  %3 = load i64, i64* %sc, align 8, !dbg !1952
  ret i64 %3, !dbg !1953
}

declare dso_local void @klee_check_memory_access(i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @umask(i32 %mask) #0 !dbg !1954 {
entry:
  %mask.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !1957, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.declare(metadata i32* %r, metadata !1959, metadata !DIExpression()), !dbg !1960
  %0 = load i32, i32* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 1), align 8, !dbg !1961
  store i32 %0, i32* %r, align 4, !dbg !1960
  %1 = load i32, i32* %mask.addr, align 4, !dbg !1962
  %and = and i32 %1, 511, !dbg !1963
  store i32 %and, i32* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 1), align 8, !dbg !1964
  %2 = load i32, i32* %r, align 4, !dbg !1965
  ret i32 %2, !dbg !1966
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) #0 !dbg !1967 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %df = alloca %struct.exe_disk_file_t.16*, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  %fd = alloca i32, align 4
  %os_fd = alloca i32, align 4
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1970, metadata !DIExpression()), !dbg !1971
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1972, metadata !DIExpression()), !dbg !1973
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !1974, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df, metadata !1976, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !1978, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !1988, metadata !DIExpression()), !dbg !1989
  store i32 0, i32* %fd, align 4, !dbg !1990
  br label %for.cond, !dbg !1992

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %fd, align 4, !dbg !1993
  %cmp = icmp slt i32 %0, 32, !dbg !1995
  br i1 %cmp, label %for.body, label %for.end, !dbg !1996

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %fd, align 4, !dbg !1997
  %idxprom = sext i32 %1 to i64, !dbg !1999
  %arrayidx = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom, !dbg !1999
  %flags1 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %arrayidx, i32 0, i32 1, !dbg !2000
  %2 = load i32, i32* %flags1, align 4, !dbg !2000
  %and = and i32 %2, 1, !dbg !2001
  %tobool = icmp ne i32 %and, 0, !dbg !2001
  br i1 %tobool, label %for.inc, label %for.end, !dbg !2002

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %fd, align 4, !dbg !2003
  %inc = add nsw i32 %3, 1, !dbg !2003
  store i32 %inc, i32* %fd, align 4, !dbg !2003
  br label %for.cond, !dbg !2004, !llvm.loop !2005

for.end:                                          ; preds = %for.body, %for.cond
  %4 = load i32, i32* %fd, align 4, !dbg !2007
  %cmp2 = icmp eq i32 %4, 32, !dbg !2009
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2010

if.then3:                                         ; preds = %for.end
  %call = call i32* @__errno_location() #15, !dbg !2011
  store i32 24, i32* %call, align 4, !dbg !2013
  store i32 -1, i32* %retval, align 4, !dbg !2014
  br label %return, !dbg !2014

if.end4:                                          ; preds = %for.end
  %5 = load i32, i32* %fd, align 4, !dbg !2015
  %idxprom5 = sext i32 %5 to i64, !dbg !2016
  %arrayidx6 = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom5, !dbg !2016
  store %struct.exe_file_t.17* %arrayidx6, %struct.exe_file_t.17** %f, align 8, !dbg !2017
  %6 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2018
  %7 = bitcast %struct.exe_file_t.17* %6 to i8*, !dbg !2019
  %8 = call i8* @memset(i8* %7, i32 0, i64 24), !dbg !2019
  %9 = load i8*, i8** %pathname.addr, align 8, !dbg !2020
  %call7 = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %9), !dbg !2021
  store %struct.exe_disk_file_t.16* %call7, %struct.exe_disk_file_t.16** %df, align 8, !dbg !2022
  %10 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !2023
  %tobool8 = icmp ne %struct.exe_disk_file_t.16* %10, null, !dbg !2023
  br i1 %tobool8, label %if.then9, label %if.else45, !dbg !2025

if.then9:                                         ; preds = %if.end4
  %11 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !2026
  %12 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2028
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %12, i32 0, i32 3, !dbg !2029
  store %struct.exe_disk_file_t.16* %11, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2030
  %13 = load i32, i32* %flags.addr, align 4, !dbg !2031
  %and10 = and i32 %13, 64, !dbg !2033
  %tobool11 = icmp ne i32 %and10, 0, !dbg !2033
  br i1 %tobool11, label %land.lhs.true, label %if.end16, !dbg !2034

land.lhs.true:                                    ; preds = %if.then9
  %14 = load i32, i32* %flags.addr, align 4, !dbg !2035
  %and12 = and i32 %14, 128, !dbg !2036
  %tobool13 = icmp ne i32 %and12, 0, !dbg !2036
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !2037

if.then14:                                        ; preds = %land.lhs.true
  %call15 = call i32* @__errno_location() #15, !dbg !2038
  store i32 17, i32* %call15, align 4, !dbg !2040
  store i32 -1, i32* %retval, align 4, !dbg !2041
  br label %return, !dbg !2041

if.end16:                                         ; preds = %land.lhs.true, %if.then9
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2042
  %and17 = and i32 %15, 512, !dbg !2044
  %tobool18 = icmp ne i32 %and17, 0, !dbg !2044
  br i1 %tobool18, label %land.lhs.true19, label %if.end24, !dbg !2045

land.lhs.true19:                                  ; preds = %if.end16
  %16 = load i32, i32* %flags.addr, align 4, !dbg !2046
  %and20 = and i32 %16, 0, !dbg !2047
  %tobool21 = icmp ne i32 %and20, 0, !dbg !2047
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !2048

if.then22:                                        ; preds = %land.lhs.true19
  call void @klee_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.71, i64 0, i64 0)), !dbg !2049
  %call23 = call i32* @__errno_location() #15, !dbg !2051
  store i32 13, i32* %call23, align 4, !dbg !2052
  store i32 -1, i32* %retval, align 4, !dbg !2053
  br label %return, !dbg !2053

if.end24:                                         ; preds = %land.lhs.true19, %if.end16
  %17 = load i32, i32* %flags.addr, align 4, !dbg !2054
  %and25 = and i32 %17, 128, !dbg !2056
  %tobool26 = icmp ne i32 %and25, 0, !dbg !2056
  br i1 %tobool26, label %land.lhs.true27, label %if.end32, !dbg !2057

land.lhs.true27:                                  ; preds = %if.end24
  %18 = load i32, i32* %flags.addr, align 4, !dbg !2058
  %and28 = and i32 %18, 64, !dbg !2059
  %tobool29 = icmp ne i32 %and28, 0, !dbg !2059
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !2060

if.then30:                                        ; preds = %land.lhs.true27
  call void @klee_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1.72, i64 0, i64 0)), !dbg !2061
  %call31 = call i32* @__errno_location() #15, !dbg !2063
  store i32 13, i32* %call31, align 4, !dbg !2064
  store i32 -1, i32* %retval, align 4, !dbg !2065
  br label %return, !dbg !2065

if.end32:                                         ; preds = %land.lhs.true27, %if.end24
  %19 = load i32, i32* %flags.addr, align 4, !dbg !2066
  %20 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !2068
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %20, i32 0, i32 2, !dbg !2069
  %21 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !2069
  %call33 = call i32 @has_permission(i32 %19, %struct.stat64.15* %21), !dbg !2070
  %tobool34 = icmp ne i32 %call33, 0, !dbg !2070
  br i1 %tobool34, label %if.else, label %if.then35, !dbg !2071

if.then35:                                        ; preds = %if.end32
  %call36 = call i32* @__errno_location() #15, !dbg !2072
  store i32 13, i32* %call36, align 4, !dbg !2074
  store i32 -1, i32* %retval, align 4, !dbg !2075
  br label %return, !dbg !2075

if.else:                                          ; preds = %if.end32
  %22 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2076
  %dfile37 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %22, i32 0, i32 3, !dbg !2077
  %23 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile37, align 8, !dbg !2077
  %stat38 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %23, i32 0, i32 2, !dbg !2078
  %24 = load %struct.stat64.15*, %struct.stat64.15** %stat38, align 8, !dbg !2078
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %24, i32 0, i32 3, !dbg !2079
  %25 = load i32, i32* %st_mode, align 8, !dbg !2079
  %and39 = and i32 %25, -512, !dbg !2080
  %26 = load i32, i32* %mode.addr, align 4, !dbg !2081
  %27 = load i32, i32* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 1), align 8, !dbg !2082
  %neg = xor i32 %27, -1, !dbg !2083
  %and40 = and i32 %26, %neg, !dbg !2084
  %or = or i32 %and39, %and40, !dbg !2085
  %28 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2086
  %dfile41 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %28, i32 0, i32 3, !dbg !2087
  %29 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile41, align 8, !dbg !2087
  %stat42 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %29, i32 0, i32 2, !dbg !2088
  %30 = load %struct.stat64.15*, %struct.stat64.15** %stat42, align 8, !dbg !2088
  %st_mode43 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %30, i32 0, i32 3, !dbg !2089
  store i32 %or, i32* %st_mode43, align 8, !dbg !2090
  br label %if.end53, !dbg !2091

if.else45:                                        ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %os_fd, metadata !2092, metadata !DIExpression()), !dbg !2094
  %31 = load i8*, i8** %pathname.addr, align 8, !dbg !2095
  %call46 = call i8* @__concretize_string(i8* %31), !dbg !2096
  %32 = load i32, i32* %flags.addr, align 4, !dbg !2097
  %33 = load i32, i32* %mode.addr, align 4, !dbg !2098
  %call47 = call i64 (i64, ...) @syscall(i64 2, i8* %call46, i32 %32, i32 %33) #11, !dbg !2099
  %conv = trunc i64 %call47 to i32, !dbg !2099
  store i32 %conv, i32* %os_fd, align 4, !dbg !2094
  %34 = load i32, i32* %os_fd, align 4, !dbg !2100
  %cmp48 = icmp eq i32 %34, -1, !dbg !2102
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !2103

if.then50:                                        ; preds = %if.else45
  store i32 -1, i32* %retval, align 4, !dbg !2104
  br label %return, !dbg !2104

if.end51:                                         ; preds = %if.else45
  %35 = load i32, i32* %os_fd, align 4, !dbg !2105
  %36 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2106
  %fd52 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %36, i32 0, i32 0, !dbg !2107
  store i32 %35, i32* %fd52, align 8, !dbg !2108
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.else
  %37 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2109
  %flags54 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %37, i32 0, i32 1, !dbg !2110
  store i32 1, i32* %flags54, align 4, !dbg !2111
  %38 = load i32, i32* %flags.addr, align 4, !dbg !2112
  %and55 = and i32 %38, 3, !dbg !2114
  %cmp56 = icmp eq i32 %and55, 0, !dbg !2115
  br i1 %cmp56, label %if.then58, label %if.else61, !dbg !2116

if.then58:                                        ; preds = %if.end53
  %39 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2117
  %flags59 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %39, i32 0, i32 1, !dbg !2119
  %40 = load i32, i32* %flags59, align 4, !dbg !2120
  %or60 = or i32 %40, 4, !dbg !2120
  store i32 %or60, i32* %flags59, align 4, !dbg !2120
  br label %if.end72, !dbg !2121

if.else61:                                        ; preds = %if.end53
  %41 = load i32, i32* %flags.addr, align 4, !dbg !2122
  %and62 = and i32 %41, 3, !dbg !2124
  %cmp63 = icmp eq i32 %and62, 1, !dbg !2125
  br i1 %cmp63, label %if.then65, label %if.else68, !dbg !2126

if.then65:                                        ; preds = %if.else61
  %42 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2127
  %flags66 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %42, i32 0, i32 1, !dbg !2129
  %43 = load i32, i32* %flags66, align 4, !dbg !2130
  %or67 = or i32 %43, 8, !dbg !2130
  store i32 %or67, i32* %flags66, align 4, !dbg !2130
  br label %if.end72, !dbg !2131

if.else68:                                        ; preds = %if.else61
  %44 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2132
  %flags69 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %44, i32 0, i32 1, !dbg !2134
  %45 = load i32, i32* %flags69, align 4, !dbg !2135
  %or70 = or i32 %45, 12, !dbg !2135
  store i32 %or70, i32* %flags69, align 4, !dbg !2135
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.else68, %if.then58
  %46 = load i32, i32* %fd, align 4, !dbg !2136
  store i32 %46, i32* %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

return:                                           ; preds = %if.end72, %if.then50, %if.then35, %if.then30, %if.then22, %if.then14, %if.then3
  %47 = load i32, i32* %retval, align 4, !dbg !2138
  ret i32 %47, !dbg !2138
}

declare dso_local void @klee_warning(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @has_permission(i32 %flags, %struct.stat64.15* %s) #0 !dbg !2139 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %s.addr = alloca %struct.stat64.15*, align 8
  %write_access = alloca i32, align 4
  %read_access = alloca i32, align 4
  %mode = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2142, metadata !DIExpression()), !dbg !2143
  store %struct.stat64.15* %s, %struct.stat64.15** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %s.addr, metadata !2144, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.declare(metadata i32* %write_access, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.declare(metadata i32* %read_access, metadata !2148, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !2150, metadata !DIExpression()), !dbg !2151
  %0 = load %struct.stat64.15*, %struct.stat64.15** %s.addr, align 8, !dbg !2152
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %0, i32 0, i32 3, !dbg !2153
  %1 = load i32, i32* %st_mode, align 8, !dbg !2153
  store i32 %1, i32* %mode, align 4, !dbg !2151
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2154
  %and = and i32 %2, 0, !dbg !2156
  %tobool = icmp ne i32 %and, 0, !dbg !2156
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2157

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %flags.addr, align 4, !dbg !2158
  %and1 = and i32 %3, 2, !dbg !2159
  %tobool2 = icmp ne i32 %and1, 0, !dbg !2159
  br i1 %tobool2, label %if.then, label %if.else, !dbg !2160

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %read_access, align 4, !dbg !2161
  br label %if.end, !dbg !2162

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %read_access, align 4, !dbg !2163
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %flags.addr, align 4, !dbg !2164
  %and3 = and i32 %4, 1, !dbg !2166
  %tobool4 = icmp ne i32 %and3, 0, !dbg !2166
  br i1 %tobool4, label %if.then8, label %lor.lhs.false5, !dbg !2167

lor.lhs.false5:                                   ; preds = %if.end
  %5 = load i32, i32* %flags.addr, align 4, !dbg !2168
  %and6 = and i32 %5, 2, !dbg !2169
  %tobool7 = icmp ne i32 %and6, 0, !dbg !2169
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !2170

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 1, i32* %write_access, align 4, !dbg !2171
  br label %if.end10, !dbg !2172

if.else9:                                         ; preds = %lor.lhs.false5
  store i32 0, i32* %write_access, align 4, !dbg !2173
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  %6 = load i32, i32* %read_access, align 4, !dbg !2174
  %tobool11 = icmp ne i32 %6, 0, !dbg !2174
  br i1 %tobool11, label %land.lhs.true, label %if.end18, !dbg !2176

land.lhs.true:                                    ; preds = %if.end10
  %7 = load i32, i32* %mode, align 4, !dbg !2177
  %and12 = and i32 %7, 256, !dbg !2178
  %8 = load i32, i32* %mode, align 4, !dbg !2179
  %and13 = and i32 %8, 32, !dbg !2180
  %or = or i32 %and12, %and13, !dbg !2181
  %9 = load i32, i32* %mode, align 4, !dbg !2182
  %and14 = and i32 %9, 4, !dbg !2183
  %or15 = or i32 %or, %and14, !dbg !2184
  %tobool16 = icmp ne i32 %or15, 0, !dbg !2184
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2185

if.then17:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !2186
  br label %return, !dbg !2186

if.end18:                                         ; preds = %land.lhs.true, %if.end10
  %10 = load i32, i32* %write_access, align 4, !dbg !2187
  %tobool19 = icmp ne i32 %10, 0, !dbg !2187
  br i1 %tobool19, label %land.lhs.true20, label %if.end28, !dbg !2189

land.lhs.true20:                                  ; preds = %if.end18
  %11 = load i32, i32* %mode, align 4, !dbg !2190
  %and21 = and i32 %11, 128, !dbg !2191
  %12 = load i32, i32* %mode, align 4, !dbg !2192
  %and22 = and i32 %12, 16, !dbg !2193
  %or23 = or i32 %and21, %and22, !dbg !2194
  %13 = load i32, i32* %mode, align 4, !dbg !2195
  %and24 = and i32 %13, 2, !dbg !2196
  %or25 = or i32 %or23, %and24, !dbg !2197
  %tobool26 = icmp ne i32 %or25, 0, !dbg !2197
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !2198

if.then27:                                        ; preds = %land.lhs.true20
  store i32 0, i32* %retval, align 4, !dbg !2199
  br label %return, !dbg !2199

if.end28:                                         ; preds = %land.lhs.true20, %if.end18
  store i32 1, i32* %retval, align 4, !dbg !2200
  br label %return, !dbg !2200

return:                                           ; preds = %if.end28, %if.then27, %if.then17
  %14 = load i32, i32* %retval, align 4, !dbg !2201
  ret i32 %14, !dbg !2201
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) #0 !dbg !2202 {
entry:
  %retval = alloca i32, align 4
  %basefd.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %fd = alloca i32, align 4
  %bf = alloca %struct.exe_file_t.17*, align 8
  %os_fd = alloca i32, align 4
  store i32 %basefd, i32* %basefd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %basefd.addr, metadata !2205, metadata !DIExpression()), !dbg !2206
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !2207, metadata !DIExpression()), !dbg !2208
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2209, metadata !DIExpression()), !dbg !2210
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !2211, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2213, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !2215, metadata !DIExpression()), !dbg !2216
  %0 = load i32, i32* %basefd.addr, align 4, !dbg !2217
  %cmp = icmp ne i32 %0, -100, !dbg !2219
  br i1 %cmp, label %if.then, label %if.end8, !dbg !2220

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %bf, metadata !2221, metadata !DIExpression()), !dbg !2223
  %1 = load i32, i32* %basefd.addr, align 4, !dbg !2224
  %call = call %struct.exe_file_t.17* @__get_file(i32 %1), !dbg !2225
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %bf, align 8, !dbg !2223
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %bf, align 8, !dbg !2226
  %tobool = icmp ne %struct.exe_file_t.17* %2, null, !dbg !2226
  br i1 %tobool, label %if.else, label %if.then1, !dbg !2228

if.then1:                                         ; preds = %if.then
  %call2 = call i32* @__errno_location() #15, !dbg !2229
  store i32 9, i32* %call2, align 4, !dbg !2231
  store i32 -1, i32* %retval, align 4, !dbg !2232
  br label %return, !dbg !2232

if.else:                                          ; preds = %if.then
  %3 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %bf, align 8, !dbg !2233
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %3, i32 0, i32 3, !dbg !2235
  %4 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2235
  %tobool3 = icmp ne %struct.exe_disk_file_t.16* %4, null, !dbg !2233
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2236

if.then4:                                         ; preds = %if.else
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2.75, i64 0, i64 0)), !dbg !2237
  %call5 = call i32* @__errno_location() #15, !dbg !2239
  store i32 2, i32* %call5, align 4, !dbg !2240
  store i32 -1, i32* %retval, align 4, !dbg !2241
  br label %return, !dbg !2241

if.end6:                                          ; preds = %if.else
  %5 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %bf, align 8, !dbg !2242
  %fd7 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %5, i32 0, i32 0, !dbg !2243
  %6 = load i32, i32* %fd7, align 8, !dbg !2243
  store i32 %6, i32* %basefd.addr, align 4, !dbg !2244
  br label %if.end8, !dbg !2245

if.end8:                                          ; preds = %if.end6, %entry
  %7 = load i8*, i8** %pathname.addr, align 8, !dbg !2246
  %call9 = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %7), !dbg !2248
  %tobool10 = icmp ne %struct.exe_disk_file_t.16* %call9, null, !dbg !2248
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2249

if.then11:                                        ; preds = %if.end8
  %8 = load i8*, i8** %pathname.addr, align 8, !dbg !2250
  %9 = load i32, i32* %flags.addr, align 4, !dbg !2252
  %10 = load i32, i32* %mode.addr, align 4, !dbg !2253
  %call12 = call i32 @__fd_open(i8* %8, i32 %9, i32 %10), !dbg !2254
  store i32 %call12, i32* %retval, align 4, !dbg !2255
  br label %return, !dbg !2255

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %fd, align 4, !dbg !2256
  br label %for.cond, !dbg !2258

for.cond:                                         ; preds = %for.inc, %if.end13
  %11 = load i32, i32* %fd, align 4, !dbg !2259
  %cmp14 = icmp slt i32 %11, 32, !dbg !2261
  br i1 %cmp14, label %for.body, label %for.end, !dbg !2262

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %fd, align 4, !dbg !2263
  %idxprom = sext i32 %12 to i64, !dbg !2265
  %arrayidx = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom, !dbg !2265
  %flags15 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %arrayidx, i32 0, i32 1, !dbg !2266
  %13 = load i32, i32* %flags15, align 4, !dbg !2266
  %and = and i32 %13, 1, !dbg !2267
  %tobool16 = icmp ne i32 %and, 0, !dbg !2267
  br i1 %tobool16, label %for.inc, label %for.end, !dbg !2268

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %fd, align 4, !dbg !2269
  %inc = add nsw i32 %14, 1, !dbg !2269
  store i32 %inc, i32* %fd, align 4, !dbg !2269
  br label %for.cond, !dbg !2270, !llvm.loop !2271

for.end:                                          ; preds = %for.body, %for.cond
  %15 = load i32, i32* %fd, align 4, !dbg !2273
  %cmp19 = icmp eq i32 %15, 32, !dbg !2275
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2276

if.then20:                                        ; preds = %for.end
  %call21 = call i32* @__errno_location() #15, !dbg !2277
  store i32 24, i32* %call21, align 4, !dbg !2279
  store i32 -1, i32* %retval, align 4, !dbg !2280
  br label %return, !dbg !2280

if.end22:                                         ; preds = %for.end
  %16 = load i32, i32* %fd, align 4, !dbg !2281
  %idxprom23 = sext i32 %16 to i64, !dbg !2282
  %arrayidx24 = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom23, !dbg !2282
  store %struct.exe_file_t.17* %arrayidx24, %struct.exe_file_t.17** %f, align 8, !dbg !2283
  %17 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2284
  %18 = bitcast %struct.exe_file_t.17* %17 to i8*, !dbg !2285
  %19 = call i8* @memset(i8* %18, i32 0, i64 24), !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %os_fd, metadata !2286, metadata !DIExpression()), !dbg !2287
  %20 = load i32, i32* %basefd.addr, align 4, !dbg !2288
  %conv = sext i32 %20 to i64, !dbg !2289
  %21 = load i8*, i8** %pathname.addr, align 8, !dbg !2290
  %call25 = call i8* @__concretize_string(i8* %21), !dbg !2291
  %22 = load i32, i32* %flags.addr, align 4, !dbg !2292
  %conv26 = sext i32 %22 to i64, !dbg !2293
  %23 = load i32, i32* %mode.addr, align 4, !dbg !2294
  %call27 = call i64 (i64, ...) @syscall(i64 257, i64 %conv, i8* %call25, i64 %conv26, i32 %23) #11, !dbg !2295
  %conv28 = trunc i64 %call27 to i32, !dbg !2295
  store i32 %conv28, i32* %os_fd, align 4, !dbg !2287
  %24 = load i32, i32* %os_fd, align 4, !dbg !2296
  %cmp29 = icmp eq i32 %24, -1, !dbg !2298
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2299

if.then31:                                        ; preds = %if.end22
  store i32 -1, i32* %retval, align 4, !dbg !2300
  br label %return, !dbg !2300

if.end32:                                         ; preds = %if.end22
  %25 = load i32, i32* %os_fd, align 4, !dbg !2301
  %26 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2302
  %fd33 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %26, i32 0, i32 0, !dbg !2303
  store i32 %25, i32* %fd33, align 8, !dbg !2304
  %27 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2305
  %flags34 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %27, i32 0, i32 1, !dbg !2306
  store i32 1, i32* %flags34, align 4, !dbg !2307
  %28 = load i32, i32* %flags.addr, align 4, !dbg !2308
  %and35 = and i32 %28, 3, !dbg !2310
  %cmp36 = icmp eq i32 %and35, 0, !dbg !2311
  br i1 %cmp36, label %if.then38, label %if.else40, !dbg !2312

if.then38:                                        ; preds = %if.end32
  %29 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2313
  %flags39 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %29, i32 0, i32 1, !dbg !2315
  %30 = load i32, i32* %flags39, align 4, !dbg !2316
  %or = or i32 %30, 4, !dbg !2316
  store i32 %or, i32* %flags39, align 4, !dbg !2316
  br label %if.end51, !dbg !2317

if.else40:                                        ; preds = %if.end32
  %31 = load i32, i32* %flags.addr, align 4, !dbg !2318
  %and41 = and i32 %31, 3, !dbg !2320
  %cmp42 = icmp eq i32 %and41, 1, !dbg !2321
  br i1 %cmp42, label %if.then44, label %if.else47, !dbg !2322

if.then44:                                        ; preds = %if.else40
  %32 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2323
  %flags45 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %32, i32 0, i32 1, !dbg !2325
  %33 = load i32, i32* %flags45, align 4, !dbg !2326
  %or46 = or i32 %33, 8, !dbg !2326
  store i32 %or46, i32* %flags45, align 4, !dbg !2326
  br label %if.end51, !dbg !2327

if.else47:                                        ; preds = %if.else40
  %34 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2328
  %flags48 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %34, i32 0, i32 1, !dbg !2330
  %35 = load i32, i32* %flags48, align 4, !dbg !2331
  %or49 = or i32 %35, 12, !dbg !2331
  store i32 %or49, i32* %flags48, align 4, !dbg !2331
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.else47, %if.then38
  %36 = load i32, i32* %fd, align 4, !dbg !2332
  store i32 %36, i32* %retval, align 4, !dbg !2333
  br label %return, !dbg !2333

return:                                           ; preds = %if.end51, %if.then31, %if.then20, %if.then11, %if.then4, %if.then1
  %37 = load i32, i32* %retval, align 4, !dbg !2334
  ret i32 %37, !dbg !2334
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.exe_file_t.17* @__get_file(i32 %fd) #0 !dbg !2335 {
entry:
  %retval = alloca %struct.exe_file_t.17*, align 8
  %fd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2338, metadata !DIExpression()), !dbg !2339
  %0 = load i32, i32* %fd.addr, align 4, !dbg !2340
  %cmp = icmp sge i32 %0, 0, !dbg !2342
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 32
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false, !dbg !2343
  br i1 %or.cond, label %if.then, label %if.end3, !dbg !2343

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2344, metadata !DIExpression()), !dbg !2346
  %2 = load i32, i32* %fd.addr, align 4, !dbg !2347
  %idxprom = sext i32 %2 to i64, !dbg !2348
  %arrayidx = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom, !dbg !2348
  store %struct.exe_file_t.17* %arrayidx, %struct.exe_file_t.17** %f, align 8, !dbg !2346
  %3 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2349
  %flags = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %3, i32 0, i32 1, !dbg !2351
  %4 = load i32, i32* %flags, align 4, !dbg !2351
  %and = and i32 %4, 1, !dbg !2352
  %tobool = icmp ne i32 %and, 0, !dbg !2352
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2353

if.then2:                                         ; preds = %if.then
  %5 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2354
  store %struct.exe_file_t.17* %5, %struct.exe_file_t.17** %retval, align 8, !dbg !2355
  br label %return, !dbg !2355

if.end3:                                          ; preds = %if.then, %entry
  store %struct.exe_file_t.17* null, %struct.exe_file_t.17** %retval, align 8, !dbg !2356
  br label %return, !dbg !2356

return:                                           ; preds = %if.end3, %if.then2
  %6 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %retval, align 8, !dbg !2357
  ret %struct.exe_file_t.17* %6, !dbg !2357
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @utimes(i8* nonnull %path, %struct.timespec.14* %times) #0 !dbg !2358 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %times.addr = alloca %struct.timespec.14*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  %newTimes = alloca [2 x %struct.timespec.14], align 16
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !2369, metadata !DIExpression()), !dbg !2370
  store %struct.timespec.14* %times, %struct.timespec.14** %times.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec.14** %times.addr, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !2373, metadata !DIExpression()), !dbg !2374
  %0 = load i8*, i8** %path.addr, align 8, !dbg !2375
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !2376
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2374
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2377
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !2377
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2379

if.then:                                          ; preds = %entry
  %2 = load %struct.timespec.14*, %struct.timespec.14** %times.addr, align 8, !dbg !2380
  %tobool1 = icmp ne %struct.timespec.14* %2, null, !dbg !2380
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2383

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata [2 x %struct.timespec.14]* %newTimes, metadata !2384, metadata !DIExpression()), !dbg !2387
  %arrayidx = getelementptr inbounds [2 x %struct.timespec.14], [2 x %struct.timespec.14]* %newTimes, i64 0, i64 0, !dbg !2388
  %call3 = call i32 @gettimeofday(%struct.timespec.14* %arrayidx, i8* null) #11, !dbg !2389
  %arrayidx4 = getelementptr inbounds [2 x %struct.timespec.14], [2 x %struct.timespec.14]* %newTimes, i64 0, i64 1, !dbg !2390
  %arrayidx5 = getelementptr inbounds [2 x %struct.timespec.14], [2 x %struct.timespec.14]* %newTimes, i64 0, i64 0, !dbg !2391
  %3 = bitcast %struct.timespec.14* %arrayidx4 to i8*, !dbg !2391
  %4 = bitcast %struct.timespec.14* %arrayidx5 to i8*, !dbg !2391
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 16), !dbg !2391
  %arraydecay = getelementptr inbounds [2 x %struct.timespec.14], [2 x %struct.timespec.14]* %newTimes, i64 0, i64 0, !dbg !2392
  store %struct.timespec.14* %arraydecay, %struct.timespec.14** %times.addr, align 8, !dbg !2393
  br label %if.end, !dbg !2394

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load %struct.timespec.14*, %struct.timespec.14** %times.addr, align 8, !dbg !2395
  %arrayidx6 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %6, i64 0, !dbg !2395
  %tv_sec = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %arrayidx6, i32 0, i32 0, !dbg !2396
  %7 = load i64, i64* %tv_sec, align 8, !dbg !2396
  %8 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2397
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %8, i32 0, i32 2, !dbg !2398
  %9 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !2398
  %st_atim = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %9, i32 0, i32 11, !dbg !2399
  %tv_sec7 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_atim, i32 0, i32 0, !dbg !2399
  store i64 %7, i64* %tv_sec7, align 8, !dbg !2400
  %10 = load %struct.timespec.14*, %struct.timespec.14** %times.addr, align 8, !dbg !2401
  %arrayidx8 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %10, i64 1, !dbg !2401
  %tv_sec9 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %arrayidx8, i32 0, i32 0, !dbg !2402
  %11 = load i64, i64* %tv_sec9, align 8, !dbg !2402
  %12 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2403
  %stat10 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %12, i32 0, i32 2, !dbg !2404
  %13 = load %struct.stat64.15*, %struct.stat64.15** %stat10, align 8, !dbg !2404
  %st_mtim = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %13, i32 0, i32 12, !dbg !2405
  %tv_sec11 = getelementptr inbounds %struct.timespec.14, %struct.timespec.14* %st_mtim, i32 0, i32 0, !dbg !2405
  store i64 %11, i64* %tv_sec11, align 8, !dbg !2406
  store i32 0, i32* %retval, align 4, !dbg !2407
  br label %return, !dbg !2407

if.end12:                                         ; preds = %entry
  %14 = load i8*, i8** %path.addr, align 8, !dbg !2408
  %call13 = call i8* @__concretize_string(i8* %14), !dbg !2409
  %15 = load %struct.timespec.14*, %struct.timespec.14** %times.addr, align 8, !dbg !2410
  %call14 = call i64 (i64, ...) @syscall(i64 235, i8* %call13, %struct.timespec.14* %15) #11, !dbg !2411
  %conv = trunc i64 %call14 to i32, !dbg !2411
  store i32 %conv, i32* %retval, align 4, !dbg !2412
  br label %return, !dbg !2412

return:                                           ; preds = %if.end12, %if.end
  %16 = load i32, i32* %retval, align 4, !dbg !2413
  ret i32 %16, !dbg !2413
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timespec.14*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @futimesat(i32 %fd, i8* %path, %struct.timespec.14* %times) #0 !dbg !2414 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %times.addr = alloca %struct.timespec.14*, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2417, metadata !DIExpression()), !dbg !2418
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !2419, metadata !DIExpression()), !dbg !2420
  store %struct.timespec.14* %times, %struct.timespec.14** %times.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec.14** %times.addr, metadata !2421, metadata !DIExpression()), !dbg !2422
  %0 = load i32, i32* %fd.addr, align 4, !dbg !2423
  %cmp = icmp ne i32 %0, -100, !dbg !2425
  br i1 %cmp, label %if.then, label %if.end8, !dbg !2426

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2427, metadata !DIExpression()), !dbg !2429
  %1 = load i32, i32* %fd.addr, align 4, !dbg !2430
  %call = call %struct.exe_file_t.17* @__get_file(i32 %1), !dbg !2431
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !2429
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2432
  %tobool = icmp ne %struct.exe_file_t.17* %2, null, !dbg !2432
  br i1 %tobool, label %if.else, label %if.then1, !dbg !2434

if.then1:                                         ; preds = %if.then
  %call2 = call i32* @__errno_location() #15, !dbg !2435
  store i32 9, i32* %call2, align 4, !dbg !2437
  store i32 -1, i32* %retval, align 4, !dbg !2438
  br label %return, !dbg !2438

if.else:                                          ; preds = %if.then
  %3 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2439
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %3, i32 0, i32 3, !dbg !2441
  %4 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2441
  %tobool3 = icmp ne %struct.exe_disk_file_t.16* %4, null, !dbg !2439
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2442

if.then4:                                         ; preds = %if.else
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2.75, i64 0, i64 0)), !dbg !2443
  %call5 = call i32* @__errno_location() #15, !dbg !2445
  store i32 2, i32* %call5, align 4, !dbg !2446
  store i32 -1, i32* %retval, align 4, !dbg !2447
  br label %return, !dbg !2447

if.end6:                                          ; preds = %if.else
  %5 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2448
  %fd7 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %5, i32 0, i32 0, !dbg !2449
  %6 = load i32, i32* %fd7, align 8, !dbg !2449
  store i32 %6, i32* %fd.addr, align 4, !dbg !2450
  br label %if.end8, !dbg !2451

if.end8:                                          ; preds = %if.end6, %entry
  %7 = load i8*, i8** %path.addr, align 8, !dbg !2452
  %call9 = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %7), !dbg !2454
  %tobool10 = icmp ne %struct.exe_disk_file_t.16* %call9, null, !dbg !2454
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2455

if.then11:                                        ; preds = %if.end8
  %8 = load i8*, i8** %path.addr, align 8, !dbg !2456
  %9 = load %struct.timespec.14*, %struct.timespec.14** %times.addr, align 8, !dbg !2458
  %call12 = call i32 @utimes(i8* %8, %struct.timespec.14* %9) #11, !dbg !2459
  store i32 %call12, i32* %retval, align 4, !dbg !2460
  br label %return, !dbg !2460

if.end13:                                         ; preds = %if.end8
  %10 = load i32, i32* %fd.addr, align 4, !dbg !2461
  %conv = sext i32 %10 to i64, !dbg !2462
  %11 = load i8*, i8** %path.addr, align 8, !dbg !2463
  %tobool14 = icmp ne i8* %11, null, !dbg !2463
  br i1 %tobool14, label %cond.true, label %cond.end, !dbg !2463

cond.true:                                        ; preds = %if.end13
  %12 = load i8*, i8** %path.addr, align 8, !dbg !2464
  %call15 = call i8* @__concretize_string(i8* %12), !dbg !2465
  br label %cond.end, !dbg !2463

cond.end:                                         ; preds = %if.end13, %cond.true
  %cond = phi i8* [ %call15, %cond.true ], [ null, %if.end13 ], !dbg !2463
  %13 = load %struct.timespec.14*, %struct.timespec.14** %times.addr, align 8, !dbg !2466
  %call16 = call i64 (i64, ...) @syscall(i64 261, i64 %conv, i8* %cond, %struct.timespec.14* %13) #11, !dbg !2467
  %conv17 = trunc i64 %call16 to i32, !dbg !2467
  store i32 %conv17, i32* %retval, align 4, !dbg !2468
  br label %return, !dbg !2468

return:                                           ; preds = %cond.end, %if.then11, %if.then4, %if.then1
  %14 = load i32, i32* %retval, align 4, !dbg !2469
  ret i32 %14, !dbg !2469
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @close(i32 %fd) #0 !dbg !101 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %r = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2470, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.declare(metadata i32* %r, metadata !2474, metadata !DIExpression()), !dbg !2475
  store i32 0, i32* %r, align 4, !dbg !2475
  %0 = load i32, i32* @close.n_calls, align 4, !dbg !2476
  %inc = add nsw i32 %0, 1, !dbg !2476
  store i32 %inc, i32* @close.n_calls, align 4, !dbg !2476
  %1 = load i32, i32* %fd.addr, align 4, !dbg !2477
  %call = call %struct.exe_file_t.17* @__get_file(i32 %1), !dbg !2478
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !2479
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2480
  %tobool = icmp ne %struct.exe_file_t.17* %2, null, !dbg !2480
  br i1 %tobool, label %if.end, label %if.then, !dbg !2482

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !2483
  store i32 9, i32* %call1, align 4, !dbg !2485
  store i32 -1, i32* %retval, align 4, !dbg !2486
  br label %return, !dbg !2486

if.end:                                           ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2487
  %tobool2 = icmp ne i32 %3, 0, !dbg !2489
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !2490

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 8), align 8, !dbg !2491
  %5 = load i32, i32* %4, align 4, !dbg !2492
  %6 = load i32, i32* @close.n_calls, align 4, !dbg !2493
  %cmp = icmp eq i32 %5, %6, !dbg !2494
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2495

if.then3:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2496
  %dec = add i32 %7, -1, !dbg !2496
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2496
  %call4 = call i32* @__errno_location() #15, !dbg !2498
  store i32 5, i32* %call4, align 4, !dbg !2499
  store i32 -1, i32* %retval, align 4, !dbg !2500
  br label %return, !dbg !2500

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2501
  %9 = bitcast %struct.exe_file_t.17* %8 to i8*, !dbg !2502
  %10 = call i8* @memset(i8* %9, i32 0, i64 24), !dbg !2502
  %11 = load i32, i32* %r, align 4, !dbg !2503
  store i32 %11, i32* %retval, align 4, !dbg !2504
  br label %return, !dbg !2504

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2505
  ret i32 %12, !dbg !2505
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @read(i32 %fd, i8* %buf, i64 %count) #0 !dbg !169 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  %r = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2512, metadata !DIExpression()), !dbg !2513
  %0 = load i32, i32* @read.n_calls, align 4, !dbg !2514
  %inc = add nsw i32 %0, 1, !dbg !2514
  store i32 %inc, i32* @read.n_calls, align 4, !dbg !2514
  %1 = load i64, i64* %count.addr, align 8, !dbg !2515
  %cmp = icmp eq i64 %1, 0, !dbg !2517
  br i1 %cmp, label %if.then, label %if.end, !dbg !2518

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2519
  br label %return, !dbg !2519

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2520
  %cmp1 = icmp eq i8* %2, null, !dbg !2522
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2523

if.then2:                                         ; preds = %if.end
  %call = call i32* @__errno_location() #15, !dbg !2524
  store i32 14, i32* %call, align 4, !dbg !2526
  store i64 -1, i64* %retval, align 8, !dbg !2527
  br label %return, !dbg !2527

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %fd.addr, align 4, !dbg !2528
  %call4 = call %struct.exe_file_t.17* @__get_file(i32 %3), !dbg !2529
  store %struct.exe_file_t.17* %call4, %struct.exe_file_t.17** %f, align 8, !dbg !2530
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2531
  %tobool = icmp ne %struct.exe_file_t.17* %4, null, !dbg !2531
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !2533

if.then5:                                         ; preds = %if.end3
  %call6 = call i32* @__errno_location() #15, !dbg !2534
  store i32 9, i32* %call6, align 4, !dbg !2536
  store i64 -1, i64* %retval, align 8, !dbg !2537
  br label %return, !dbg !2537

if.end7:                                          ; preds = %if.end3
  %5 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2538
  %tobool8 = icmp ne i32 %5, 0, !dbg !2540
  br i1 %tobool8, label %land.lhs.true, label %if.end12, !dbg !2541

land.lhs.true:                                    ; preds = %if.end7
  %6 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 6), align 8, !dbg !2542
  %7 = load i32, i32* %6, align 4, !dbg !2543
  %8 = load i32, i32* @read.n_calls, align 4, !dbg !2544
  %cmp9 = icmp eq i32 %7, %8, !dbg !2545
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2546

if.then10:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2547
  %dec = add i32 %9, -1, !dbg !2547
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2547
  %call11 = call i32* @__errno_location() #15, !dbg !2549
  store i32 5, i32* %call11, align 4, !dbg !2550
  store i64 -1, i64* %retval, align 8, !dbg !2551
  br label %return, !dbg !2551

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %10 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2552
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %10, i32 0, i32 3, !dbg !2554
  %11 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2554
  %tobool13 = icmp ne %struct.exe_disk_file_t.16* %11, null, !dbg !2552
  br i1 %tobool13, label %if.else38, label %if.then14, !dbg !2555

if.then14:                                        ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i32* %r, metadata !2556, metadata !DIExpression()), !dbg !2558
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2559
  %call15 = call i8* @__concretize_ptr(i8* %12), !dbg !2560
  store i8* %call15, i8** %buf.addr, align 8, !dbg !2561
  %13 = load i64, i64* %count.addr, align 8, !dbg !2562
  %call16 = call i64 @__concretize_size(i64 %13), !dbg !2563
  store i64 %call16, i64* %count.addr, align 8, !dbg !2564
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !2565
  %15 = load i64, i64* %count.addr, align 8, !dbg !2566
  call void @klee_check_memory_access(i8* %14, i64 %15), !dbg !2567
  %16 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2568
  %fd17 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %16, i32 0, i32 0, !dbg !2570
  %17 = load i32, i32* %fd17, align 8, !dbg !2570
  %cmp18 = icmp eq i32 %17, 0, !dbg !2571
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !2572

if.then19:                                        ; preds = %if.then14
  %18 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2573
  %fd20 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %18, i32 0, i32 0, !dbg !2574
  %19 = load i32, i32* %fd20, align 8, !dbg !2574
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !2575
  %21 = load i64, i64* %count.addr, align 8, !dbg !2576
  %call21 = call i64 (i64, ...) @syscall(i64 0, i32 %19, i8* %20, i64 %21) #11, !dbg !2577
  %conv = trunc i64 %call21 to i32, !dbg !2577
  store i32 %conv, i32* %r, align 4, !dbg !2578
  br label %if.end25, !dbg !2579

if.else:                                          ; preds = %if.then14
  %22 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2580
  %fd22 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %22, i32 0, i32 0, !dbg !2581
  %23 = load i32, i32* %fd22, align 8, !dbg !2581
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !2582
  %25 = load i64, i64* %count.addr, align 8, !dbg !2583
  %26 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2584
  %off = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %26, i32 0, i32 2, !dbg !2585
  %27 = load i64, i64* %off, align 8, !dbg !2585
  %call23 = call i64 (i64, ...) @syscall(i64 17, i32 %23, i8* %24, i64 %25, i64 %27) #11, !dbg !2586
  %conv24 = trunc i64 %call23 to i32, !dbg !2586
  store i32 %conv24, i32* %r, align 4, !dbg !2587
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %28 = load i32, i32* %r, align 4, !dbg !2588
  %cmp26 = icmp eq i32 %28, -1, !dbg !2590
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2591

if.then28:                                        ; preds = %if.end25
  store i64 -1, i64* %retval, align 8, !dbg !2592
  br label %return, !dbg !2592

if.end29:                                         ; preds = %if.end25
  %29 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2593
  %fd30 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %29, i32 0, i32 0, !dbg !2595
  %30 = load i32, i32* %fd30, align 8, !dbg !2595
  %cmp31 = icmp ne i32 %30, 0, !dbg !2596
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !2597

if.then33:                                        ; preds = %if.end29
  %31 = load i32, i32* %r, align 4, !dbg !2598
  %conv34 = sext i32 %31 to i64, !dbg !2598
  %32 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2599
  %off35 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %32, i32 0, i32 2, !dbg !2600
  %33 = load i64, i64* %off35, align 8, !dbg !2601
  %add = add nsw i64 %33, %conv34, !dbg !2601
  store i64 %add, i64* %off35, align 8, !dbg !2601
  br label %if.end36, !dbg !2599

if.end36:                                         ; preds = %if.then33, %if.end29
  %34 = load i32, i32* %r, align 4, !dbg !2602
  %conv37 = sext i32 %34 to i64, !dbg !2602
  store i64 %conv37, i64* %retval, align 8, !dbg !2603
  br label %return, !dbg !2603

if.else38:                                        ; preds = %if.end12
  %35 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2604
  %off39 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %35, i32 0, i32 2, !dbg !2604
  %36 = load i64, i64* %off39, align 8, !dbg !2604
  %cmp40 = icmp sge i64 %36, 0, !dbg !2604
  br i1 %cmp40, label %if.end44, label %if.else43, !dbg !2608

if.else43:                                        ; preds = %if.else38
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.76, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 393, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.read, i64 0, i64 0)) #14, !dbg !2604
  unreachable, !dbg !2604

if.end44:                                         ; preds = %if.else38
  %37 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2609
  %dfile45 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %37, i32 0, i32 3, !dbg !2611
  %38 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile45, align 8, !dbg !2611
  %size = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %38, i32 0, i32 0, !dbg !2612
  %39 = load i32, i32* %size, align 8, !dbg !2612
  %conv46 = zext i32 %39 to i64, !dbg !2613
  %40 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2614
  %off47 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %40, i32 0, i32 2, !dbg !2615
  %41 = load i64, i64* %off47, align 8, !dbg !2615
  %cmp48 = icmp slt i64 %conv46, %41, !dbg !2616
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !2617

if.then50:                                        ; preds = %if.end44
  store i64 0, i64* %retval, align 8, !dbg !2618
  br label %return, !dbg !2618

if.end51:                                         ; preds = %if.end44
  %42 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2619
  %off52 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %42, i32 0, i32 2, !dbg !2621
  %43 = load i64, i64* %off52, align 8, !dbg !2621
  %44 = load i64, i64* %count.addr, align 8, !dbg !2622
  %add53 = add i64 %43, %44, !dbg !2623
  %45 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2624
  %dfile54 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %45, i32 0, i32 3, !dbg !2625
  %46 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile54, align 8, !dbg !2625
  %size55 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %46, i32 0, i32 0, !dbg !2626
  %47 = load i32, i32* %size55, align 8, !dbg !2626
  %conv56 = zext i32 %47 to i64, !dbg !2624
  %cmp57 = icmp ugt i64 %add53, %conv56, !dbg !2627
  br i1 %cmp57, label %if.then59, label %if.end64, !dbg !2628

if.then59:                                        ; preds = %if.end51
  %48 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2629
  %dfile60 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %48, i32 0, i32 3, !dbg !2631
  %49 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile60, align 8, !dbg !2631
  %size61 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %49, i32 0, i32 0, !dbg !2632
  %50 = load i32, i32* %size61, align 8, !dbg !2632
  %conv62 = zext i32 %50 to i64, !dbg !2629
  %51 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2633
  %off63 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %51, i32 0, i32 2, !dbg !2634
  %52 = load i64, i64* %off63, align 8, !dbg !2634
  %sub = sub nsw i64 %conv62, %52, !dbg !2635
  store i64 %sub, i64* %count.addr, align 8, !dbg !2636
  br label %if.end64, !dbg !2637

if.end64:                                         ; preds = %if.then59, %if.end51
  %53 = load i8*, i8** %buf.addr, align 8, !dbg !2638
  %54 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2639
  %dfile65 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %54, i32 0, i32 3, !dbg !2640
  %55 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile65, align 8, !dbg !2640
  %contents = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %55, i32 0, i32 1, !dbg !2641
  %56 = load i8*, i8** %contents, align 8, !dbg !2641
  %57 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2642
  %off66 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %57, i32 0, i32 2, !dbg !2643
  %58 = load i64, i64* %off66, align 8, !dbg !2643
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %58, !dbg !2644
  %59 = load i64, i64* %count.addr, align 8, !dbg !2645
  %60 = call i8* @memcpy(i8* %53, i8* %add.ptr, i64 %59), !dbg !2646
  %61 = load i64, i64* %count.addr, align 8, !dbg !2647
  %62 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2648
  %off67 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %62, i32 0, i32 2, !dbg !2649
  %63 = load i64, i64* %off67, align 8, !dbg !2650
  %add68 = add i64 %63, %61, !dbg !2650
  store i64 %add68, i64* %off67, align 8, !dbg !2650
  %64 = load i64, i64* %count.addr, align 8, !dbg !2651
  store i64 %64, i64* %retval, align 8, !dbg !2652
  br label %return, !dbg !2652

return:                                           ; preds = %if.end64, %if.then50, %if.end36, %if.then28, %if.then10, %if.then5, %if.then2, %if.then
  %65 = load i64, i64* %retval, align 8, !dbg !2653
  ret i64 %65, !dbg !2653
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @write(i32 %fd, i8* %buf, i64 %count) #0 !dbg !178 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  %r = alloca i32, align 4
  %actual_count = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2654, metadata !DIExpression()), !dbg !2655
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2658, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2660, metadata !DIExpression()), !dbg !2661
  %0 = load i32, i32* @write.n_calls, align 4, !dbg !2662
  %inc = add nsw i32 %0, 1, !dbg !2662
  store i32 %inc, i32* @write.n_calls, align 4, !dbg !2662
  %1 = load i32, i32* %fd.addr, align 4, !dbg !2663
  %call = call %struct.exe_file_t.17* @__get_file(i32 %1), !dbg !2664
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !2665
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2666
  %tobool = icmp ne %struct.exe_file_t.17* %2, null, !dbg !2666
  br i1 %tobool, label %if.end, label %if.then, !dbg !2668

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !2669
  store i32 9, i32* %call1, align 4, !dbg !2671
  store i64 -1, i64* %retval, align 8, !dbg !2672
  br label %return, !dbg !2672

if.end:                                           ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2673
  %tobool2 = icmp ne i32 %3, 0, !dbg !2675
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !2676

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 7), align 8, !dbg !2677
  %5 = load i32, i32* %4, align 4, !dbg !2678
  %6 = load i32, i32* @write.n_calls, align 4, !dbg !2679
  %cmp = icmp eq i32 %5, %6, !dbg !2680
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2681

if.then3:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2682
  %dec = add i32 %7, -1, !dbg !2682
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !2682
  %call4 = call i32* @__errno_location() #15, !dbg !2684
  store i32 5, i32* %call4, align 4, !dbg !2685
  store i64 -1, i64* %retval, align 8, !dbg !2686
  br label %return, !dbg !2686

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2687
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %8, i32 0, i32 3, !dbg !2689
  %9 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2689
  %tobool6 = icmp ne %struct.exe_disk_file_t.16* %9, null, !dbg !2687
  br i1 %tobool6, label %if.else42, label %if.then7, !dbg !2690

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %r, metadata !2691, metadata !DIExpression()), !dbg !2693
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !2694
  %call8 = call i8* @__concretize_ptr(i8* %10), !dbg !2695
  store i8* %call8, i8** %buf.addr, align 8, !dbg !2696
  %11 = load i64, i64* %count.addr, align 8, !dbg !2697
  %call9 = call i64 @__concretize_size(i64 %11), !dbg !2698
  store i64 %call9, i64* %count.addr, align 8, !dbg !2699
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2700
  %13 = load i64, i64* %count.addr, align 8, !dbg !2701
  call void @klee_check_memory_access(i8* %12, i64 %13), !dbg !2702
  %14 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2703
  %fd10 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %14, i32 0, i32 0, !dbg !2705
  %15 = load i32, i32* %fd10, align 8, !dbg !2705
  %cmp11 = icmp eq i32 %15, 1, !dbg !2706
  br i1 %cmp11, label %if.then14, label %lor.lhs.false, !dbg !2707

lor.lhs.false:                                    ; preds = %if.then7
  %16 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2708
  %fd12 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %16, i32 0, i32 0, !dbg !2709
  %17 = load i32, i32* %fd12, align 8, !dbg !2709
  %cmp13 = icmp eq i32 %17, 2, !dbg !2710
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2711

if.then14:                                        ; preds = %lor.lhs.false, %if.then7
  %18 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2712
  %fd15 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %18, i32 0, i32 0, !dbg !2713
  %19 = load i32, i32* %fd15, align 8, !dbg !2713
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !2714
  %21 = load i64, i64* %count.addr, align 8, !dbg !2715
  %call16 = call i64 (i64, ...) @syscall(i64 1, i32 %19, i8* %20, i64 %21) #11, !dbg !2716
  %conv = trunc i64 %call16 to i32, !dbg !2716
  store i32 %conv, i32* %r, align 4, !dbg !2717
  br label %if.end20, !dbg !2718

if.else:                                          ; preds = %lor.lhs.false
  %22 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2719
  %fd17 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %22, i32 0, i32 0, !dbg !2720
  %23 = load i32, i32* %fd17, align 8, !dbg !2720
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !2721
  %25 = load i64, i64* %count.addr, align 8, !dbg !2722
  %26 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2723
  %off = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %26, i32 0, i32 2, !dbg !2724
  %27 = load i64, i64* %off, align 8, !dbg !2724
  %call18 = call i64 (i64, ...) @syscall(i64 18, i32 %23, i8* %24, i64 %25, i64 %27) #11, !dbg !2725
  %conv19 = trunc i64 %call18 to i32, !dbg !2725
  store i32 %conv19, i32* %r, align 4, !dbg !2726
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %28 = load i32, i32* %r, align 4, !dbg !2727
  %cmp21 = icmp eq i32 %28, -1, !dbg !2729
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !2730

if.then23:                                        ; preds = %if.end20
  store i64 -1, i64* %retval, align 8, !dbg !2731
  br label %return, !dbg !2731

if.end24:                                         ; preds = %if.end20
  %29 = load i32, i32* %r, align 4, !dbg !2732
  %cmp25 = icmp sge i32 %29, 0, !dbg !2732
  br i1 %cmp25, label %if.end29, label %if.else28, !dbg !2735

if.else28:                                        ; preds = %if.end24
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.78, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 445, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.write, i64 0, i64 0)) #14, !dbg !2732
  unreachable, !dbg !2732

if.end29:                                         ; preds = %if.end24
  %30 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2736
  %fd30 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %30, i32 0, i32 0, !dbg !2738
  %31 = load i32, i32* %fd30, align 8, !dbg !2738
  %cmp31 = icmp ne i32 %31, 1, !dbg !2739
  br i1 %cmp31, label %land.lhs.true33, label %if.end40, !dbg !2740

land.lhs.true33:                                  ; preds = %if.end29
  %32 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2741
  %fd34 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %32, i32 0, i32 0, !dbg !2742
  %33 = load i32, i32* %fd34, align 8, !dbg !2742
  %cmp35 = icmp ne i32 %33, 2, !dbg !2743
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !2744

if.then37:                                        ; preds = %land.lhs.true33
  %34 = load i32, i32* %r, align 4, !dbg !2745
  %conv38 = sext i32 %34 to i64, !dbg !2745
  %35 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2746
  %off39 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %35, i32 0, i32 2, !dbg !2747
  %36 = load i64, i64* %off39, align 8, !dbg !2748
  %add = add nsw i64 %36, %conv38, !dbg !2748
  store i64 %add, i64* %off39, align 8, !dbg !2748
  br label %if.end40, !dbg !2746

if.end40:                                         ; preds = %if.then37, %land.lhs.true33, %if.end29
  %37 = load i32, i32* %r, align 4, !dbg !2749
  %conv41 = sext i32 %37 to i64, !dbg !2749
  store i64 %conv41, i64* %retval, align 8, !dbg !2750
  br label %return, !dbg !2750

if.else42:                                        ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i64* %actual_count, metadata !2751, metadata !DIExpression()), !dbg !2753
  store i64 0, i64* %actual_count, align 8, !dbg !2753
  %38 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2754
  %off43 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %38, i32 0, i32 2, !dbg !2756
  %39 = load i64, i64* %off43, align 8, !dbg !2756
  %40 = load i64, i64* %count.addr, align 8, !dbg !2757
  %add44 = add i64 %39, %40, !dbg !2758
  %41 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2759
  %dfile45 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %41, i32 0, i32 3, !dbg !2760
  %42 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile45, align 8, !dbg !2760
  %size = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %42, i32 0, i32 0, !dbg !2761
  %43 = load i32, i32* %size, align 8, !dbg !2761
  %conv46 = zext i32 %43 to i64, !dbg !2759
  %cmp47 = icmp ule i64 %add44, %conv46, !dbg !2762
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !2763

if.then49:                                        ; preds = %if.else42
  %44 = load i64, i64* %count.addr, align 8, !dbg !2764
  store i64 %44, i64* %actual_count, align 8, !dbg !2765
  br label %if.end67, !dbg !2766

if.else50:                                        ; preds = %if.else42
  %45 = load i32, i32* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 2), align 4, !dbg !2767
  %tobool51 = icmp ne i32 %45, 0, !dbg !2770
  br i1 %tobool51, label %if.then52, label %if.else53, !dbg !2771

if.then52:                                        ; preds = %if.else50
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.79, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 458, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.write, i64 0, i64 0)) #14, !dbg !2772
  unreachable, !dbg !2772

if.else53:                                        ; preds = %if.else50
  %46 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2775
  %off54 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %46, i32 0, i32 2, !dbg !2778
  %47 = load i64, i64* %off54, align 8, !dbg !2778
  %48 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2779
  %dfile55 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %48, i32 0, i32 3, !dbg !2780
  %49 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile55, align 8, !dbg !2780
  %size56 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %49, i32 0, i32 0, !dbg !2781
  %50 = load i32, i32* %size56, align 8, !dbg !2781
  %conv57 = zext i32 %50 to i64, !dbg !2782
  %cmp58 = icmp slt i64 %47, %conv57, !dbg !2783
  br i1 %cmp58, label %if.then60, label %if.end67, !dbg !2784

if.then60:                                        ; preds = %if.else53
  %51 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2785
  %dfile61 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %51, i32 0, i32 3, !dbg !2786
  %52 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile61, align 8, !dbg !2786
  %size62 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %52, i32 0, i32 0, !dbg !2787
  %53 = load i32, i32* %size62, align 8, !dbg !2787
  %conv63 = zext i32 %53 to i64, !dbg !2785
  %54 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2788
  %off64 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %54, i32 0, i32 2, !dbg !2789
  %55 = load i64, i64* %off64, align 8, !dbg !2789
  %sub = sub nsw i64 %conv63, %55, !dbg !2790
  store i64 %sub, i64* %actual_count, align 8, !dbg !2791
  br label %if.end67, !dbg !2792

if.end67:                                         ; preds = %if.then60, %if.else53, %if.then49
  %56 = load i64, i64* %actual_count, align 8, !dbg !2793
  %tobool68 = icmp ne i64 %56, 0, !dbg !2793
  br i1 %tobool68, label %if.then69, label %if.end72, !dbg !2795

if.then69:                                        ; preds = %if.end67
  %57 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2796
  %dfile70 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %57, i32 0, i32 3, !dbg !2797
  %58 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile70, align 8, !dbg !2797
  %contents = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %58, i32 0, i32 1, !dbg !2798
  %59 = load i8*, i8** %contents, align 8, !dbg !2798
  %60 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2799
  %off71 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %60, i32 0, i32 2, !dbg !2800
  %61 = load i64, i64* %off71, align 8, !dbg !2800
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %61, !dbg !2801
  %62 = load i8*, i8** %buf.addr, align 8, !dbg !2802
  %63 = load i64, i64* %actual_count, align 8, !dbg !2803
  %64 = call i8* @memcpy(i8* %add.ptr, i8* %62, i64 %63), !dbg !2804
  br label %if.end72, !dbg !2804

if.end72:                                         ; preds = %if.then69, %if.end67
  %65 = load i64, i64* %count.addr, align 8, !dbg !2805
  %66 = load i64, i64* %actual_count, align 8, !dbg !2807
  %cmp73 = icmp ne i64 %65, %66, !dbg !2808
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !2809

if.then75:                                        ; preds = %if.end72
  call void @klee_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7.80, i64 0, i64 0)), !dbg !2810
  br label %if.end76, !dbg !2810

if.end76:                                         ; preds = %if.then75, %if.end72
  %67 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2811
  %dfile77 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %67, i32 0, i32 3, !dbg !2813
  %68 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile77, align 8, !dbg !2813
  %69 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 2), align 8, !dbg !2814
  %cmp78 = icmp eq %struct.exe_disk_file_t.16* %68, %69, !dbg !2815
  br i1 %cmp78, label %if.then80, label %if.end84, !dbg !2816

if.then80:                                        ; preds = %if.end76
  %70 = load i64, i64* %actual_count, align 8, !dbg !2817
  %71 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 3), align 8, !dbg !2818
  %conv81 = zext i32 %71 to i64, !dbg !2818
  %add82 = add i64 %conv81, %70, !dbg !2818
  %conv83 = trunc i64 %add82 to i32, !dbg !2818
  store i32 %conv83, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 3), align 8, !dbg !2818
  br label %if.end84, !dbg !2819

if.end84:                                         ; preds = %if.then80, %if.end76
  %72 = load i64, i64* %count.addr, align 8, !dbg !2820
  %73 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2821
  %off85 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %73, i32 0, i32 2, !dbg !2822
  %74 = load i64, i64* %off85, align 8, !dbg !2823
  %add86 = add i64 %74, %72, !dbg !2823
  store i64 %add86, i64* %off85, align 8, !dbg !2823
  %75 = load i64, i64* %count.addr, align 8, !dbg !2824
  store i64 %75, i64* %retval, align 8, !dbg !2825
  br label %return, !dbg !2825

return:                                           ; preds = %if.end84, %if.end40, %if.then23, %if.then3, %if.then
  %76 = load i64, i64* %retval, align 8, !dbg !2826
  ret i64 %76, !dbg !2826
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #0 !dbg !2827 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %new_off = alloca i64, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2830, metadata !DIExpression()), !dbg !2831
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i32 %whence, i32* %whence.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %whence.addr, metadata !2834, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.declare(metadata i64* %new_off, metadata !2836, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2838, metadata !DIExpression()), !dbg !2839
  %0 = load i32, i32* %fd.addr, align 4, !dbg !2840
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !2841
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !2839
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2842
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !2842
  br i1 %tobool, label %if.end, label %if.then, !dbg !2844

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !2845
  store i32 9, i32* %call1, align 4, !dbg !2847
  store i64 -1, i64* %retval, align 8, !dbg !2848
  br label %return, !dbg !2848

if.end:                                           ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2849
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !2851
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2851
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !2849
  br i1 %tobool2, label %if.end24, label %if.then3, !dbg !2852

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %whence.addr, align 4, !dbg !2853
  %cmp = icmp eq i32 %4, 0, !dbg !2856
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2857

if.then4:                                         ; preds = %if.then3
  %5 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2858
  %fd5 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %5, i32 0, i32 0, !dbg !2860
  %6 = load i32, i32* %fd5, align 8, !dbg !2860
  %7 = load i64, i64* %offset.addr, align 8, !dbg !2861
  %call6 = call i64 (i64, ...) @syscall(i64 8, i32 %6, i64 %7, i32 0) #11, !dbg !2862
  store i64 %call6, i64* %new_off, align 8, !dbg !2863
  br label %if.end19, !dbg !2864

if.else:                                          ; preds = %if.then3
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2865
  %fd7 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %8, i32 0, i32 0, !dbg !2867
  %9 = load i32, i32* %fd7, align 8, !dbg !2867
  %10 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2868
  %off = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %10, i32 0, i32 2, !dbg !2869
  %11 = load i64, i64* %off, align 8, !dbg !2869
  %call8 = call i64 (i64, ...) @syscall(i64 8, i32 %9, i64 %11, i32 0) #11, !dbg !2870
  store i64 %call8, i64* %new_off, align 8, !dbg !2871
  %12 = load i64, i64* %new_off, align 8, !dbg !2872
  %cmp9 = icmp ne i64 %12, -1, !dbg !2874
  br i1 %cmp9, label %if.then10, label %if.end19, !dbg !2875

if.then10:                                        ; preds = %if.else
  %13 = load i64, i64* %new_off, align 8, !dbg !2876
  %14 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2876
  %off11 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %14, i32 0, i32 2, !dbg !2876
  %15 = load i64, i64* %off11, align 8, !dbg !2876
  %cmp12 = icmp eq i64 %13, %15, !dbg !2876
  br i1 %cmp12, label %if.end15, label %if.else14, !dbg !2880

if.else14:                                        ; preds = %if.then10
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8.83, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.__fd_lseek, i64 0, i64 0)) #14, !dbg !2876
  unreachable, !dbg !2876

if.end15:                                         ; preds = %if.then10
  %16 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2881
  %fd16 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %16, i32 0, i32 0, !dbg !2882
  %17 = load i32, i32* %fd16, align 8, !dbg !2882
  %18 = load i64, i64* %offset.addr, align 8, !dbg !2883
  %19 = load i32, i32* %whence.addr, align 4, !dbg !2884
  %call17 = call i64 (i64, ...) @syscall(i64 8, i32 %17, i64 %18, i32 %19) #11, !dbg !2885
  store i64 %call17, i64* %new_off, align 8, !dbg !2886
  br label %if.end19, !dbg !2887

if.end19:                                         ; preds = %if.else, %if.end15, %if.then4
  %20 = load i64, i64* %new_off, align 8, !dbg !2888
  %cmp20 = icmp eq i64 %20, -1, !dbg !2890
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !2891

if.then21:                                        ; preds = %if.end19
  store i64 -1, i64* %retval, align 8, !dbg !2892
  br label %return, !dbg !2892

if.end22:                                         ; preds = %if.end19
  %21 = load i64, i64* %new_off, align 8, !dbg !2893
  %22 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2894
  %off23 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %22, i32 0, i32 2, !dbg !2895
  store i64 %21, i64* %off23, align 8, !dbg !2896
  %23 = load i64, i64* %new_off, align 8, !dbg !2897
  store i64 %23, i64* %retval, align 8, !dbg !2898
  br label %return, !dbg !2898

if.end24:                                         ; preds = %if.end
  %24 = load i32, i32* %whence.addr, align 4, !dbg !2899
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb27
  ], !dbg !2900

sw.bb:                                            ; preds = %if.end24
  %25 = load i64, i64* %offset.addr, align 8, !dbg !2901
  store i64 %25, i64* %new_off, align 8, !dbg !2903
  br label %sw.epilog, !dbg !2904

sw.bb25:                                          ; preds = %if.end24
  %26 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2905
  %off26 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %26, i32 0, i32 2, !dbg !2906
  %27 = load i64, i64* %off26, align 8, !dbg !2906
  %28 = load i64, i64* %offset.addr, align 8, !dbg !2907
  %add = add nsw i64 %27, %28, !dbg !2908
  store i64 %add, i64* %new_off, align 8, !dbg !2909
  br label %sw.epilog, !dbg !2910

sw.bb27:                                          ; preds = %if.end24
  %29 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2911
  %dfile28 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %29, i32 0, i32 3, !dbg !2912
  %30 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile28, align 8, !dbg !2912
  %size = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %30, i32 0, i32 0, !dbg !2913
  %31 = load i32, i32* %size, align 8, !dbg !2913
  %conv = zext i32 %31 to i64, !dbg !2911
  %32 = load i64, i64* %offset.addr, align 8, !dbg !2914
  %add29 = add nsw i64 %conv, %32, !dbg !2915
  store i64 %add29, i64* %new_off, align 8, !dbg !2916
  br label %sw.epilog, !dbg !2917

sw.default:                                       ; preds = %if.end24
  %call30 = call i32* @__errno_location() #15, !dbg !2918
  store i32 22, i32* %call30, align 4, !dbg !2920
  store i64 -1, i64* %retval, align 8, !dbg !2921
  br label %return, !dbg !2921

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb25, %sw.bb
  %33 = load i64, i64* %new_off, align 8, !dbg !2922
  %cmp31 = icmp slt i64 %33, 0, !dbg !2924
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !2925

if.then33:                                        ; preds = %sw.epilog
  %call34 = call i32* @__errno_location() #15, !dbg !2926
  store i32 22, i32* %call34, align 4, !dbg !2928
  store i64 -1, i64* %retval, align 8, !dbg !2929
  br label %return, !dbg !2929

if.end35:                                         ; preds = %sw.epilog
  %34 = load i64, i64* %new_off, align 8, !dbg !2930
  %35 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2931
  %off36 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %35, i32 0, i32 2, !dbg !2932
  store i64 %34, i64* %off36, align 8, !dbg !2933
  %36 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2934
  %off37 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %36, i32 0, i32 2, !dbg !2935
  %37 = load i64, i64* %off37, align 8, !dbg !2935
  store i64 %37, i64* %retval, align 8, !dbg !2936
  br label %return, !dbg !2936

return:                                           ; preds = %if.end35, %if.then33, %sw.default, %if.end22, %if.then21, %if.then
  %38 = load i64, i64* %retval, align 8, !dbg !2937
  ret i64 %38, !dbg !2937
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_stat(i8* %path, %struct.stat64.15* %buf) #0 !dbg !2938 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !2945, metadata !DIExpression()), !dbg !2946
  %0 = load i8*, i8** %path.addr, align 8, !dbg !2947
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !2948
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2946
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2949
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !2949
  br i1 %tobool, label %if.then, label %if.end, !dbg !2951

if.then:                                          ; preds = %entry
  %2 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !2952
  %3 = bitcast %struct.stat64.15* %2 to i8*, !dbg !2954
  %4 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2955
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %4, i32 0, i32 2, !dbg !2956
  %5 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !2956
  %6 = bitcast %struct.stat64.15* %5 to i8*, !dbg !2954
  %7 = call i8* @memcpy(i8* %3, i8* %6, i64 144), !dbg !2954
  store i32 0, i32* %retval, align 4, !dbg !2957
  br label %return, !dbg !2957

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %path.addr, align 8, !dbg !2958
  %call1 = call i8* @__concretize_string(i8* %8), !dbg !2960
  %9 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !2961
  %call2 = call i64 (i64, ...) @syscall(i64 4, i8* %call1, %struct.stat64.15* %9) #11, !dbg !2962
  %conv = trunc i64 %call2 to i32, !dbg !2962
  store i32 %conv, i32* %retval, align 4, !dbg !2963
  br label %return, !dbg !2963

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2964
  ret i32 %10, !dbg !2964
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fstatat(i32 %fd, i8* nonnull %path, %struct.stat64.15* nonnull %buf, i32 %flags) #0 !dbg !2965 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  %flags.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %dfile9 = alloca %struct.exe_disk_file_t.16*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2974, metadata !DIExpression()), !dbg !2975
  %0 = load i32, i32* %fd.addr, align 4, !dbg !2976
  %cmp = icmp ne i32 %0, -100, !dbg !2978
  br i1 %cmp, label %if.then, label %if.end8, !dbg !2979

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !2980, metadata !DIExpression()), !dbg !2982
  %1 = load i32, i32* %fd.addr, align 4, !dbg !2983
  %call = call %struct.exe_file_t.17* @__get_file(i32 %1), !dbg !2984
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !2982
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2985
  %tobool = icmp ne %struct.exe_file_t.17* %2, null, !dbg !2985
  br i1 %tobool, label %if.else, label %if.then1, !dbg !2987

if.then1:                                         ; preds = %if.then
  %call2 = call i32* @__errno_location() #15, !dbg !2988
  store i32 9, i32* %call2, align 4, !dbg !2990
  store i32 -1, i32* %retval, align 4, !dbg !2991
  br label %return, !dbg !2991

if.else:                                          ; preds = %if.then
  %3 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !2992
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %3, i32 0, i32 3, !dbg !2994
  %4 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !2994
  %tobool3 = icmp ne %struct.exe_disk_file_t.16* %4, null, !dbg !2992
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2995

if.then4:                                         ; preds = %if.else
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2.75, i64 0, i64 0)), !dbg !2996
  %call5 = call i32* @__errno_location() #15, !dbg !2998
  store i32 2, i32* %call5, align 4, !dbg !2999
  store i32 -1, i32* %retval, align 4, !dbg !3000
  br label %return, !dbg !3000

if.end6:                                          ; preds = %if.else
  %5 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3001
  %fd7 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %5, i32 0, i32 0, !dbg !3002
  %6 = load i32, i32* %fd7, align 8, !dbg !3002
  store i32 %6, i32* %fd.addr, align 4, !dbg !3003
  br label %if.end8, !dbg !3004

if.end8:                                          ; preds = %if.end6, %entry
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile9, metadata !3005, metadata !DIExpression()), !dbg !3006
  %7 = load i8*, i8** %path.addr, align 8, !dbg !3007
  %call10 = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %7), !dbg !3008
  store %struct.exe_disk_file_t.16* %call10, %struct.exe_disk_file_t.16** %dfile9, align 8, !dbg !3006
  %8 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile9, align 8, !dbg !3009
  %tobool11 = icmp ne %struct.exe_disk_file_t.16* %8, null, !dbg !3009
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3011

if.then12:                                        ; preds = %if.end8
  %9 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !3012
  %10 = bitcast %struct.stat64.15* %9 to i8*, !dbg !3014
  %11 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile9, align 8, !dbg !3015
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %11, i32 0, i32 2, !dbg !3016
  %12 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3016
  %13 = bitcast %struct.stat64.15* %12 to i8*, !dbg !3014
  %14 = call i8* @memcpy(i8* %10, i8* %13, i64 144), !dbg !3014
  store i32 0, i32* %retval, align 4, !dbg !3017
  br label %return, !dbg !3017

if.end13:                                         ; preds = %if.end8
  %15 = load i8*, i8** %path.addr, align 8, !dbg !3018
  %tobool14 = icmp ne i8* %15, null, !dbg !3018
  br i1 %tobool14, label %if.end17, label %if.else16, !dbg !3021

if.else16:                                        ; preds = %if.end13
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.86, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 574, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.fstatat, i64 0, i64 0)) #14, !dbg !3018
  unreachable, !dbg !3018

if.end17:                                         ; preds = %if.end13
  %16 = load i32, i32* %fd.addr, align 4, !dbg !3022
  %conv = sext i32 %16 to i64, !dbg !3023
  %17 = load i8*, i8** %path.addr, align 8, !dbg !3024
  %call18 = call i8* @__concretize_string(i8* %17), !dbg !3024
  %18 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !3025
  %19 = load i32, i32* %flags.addr, align 4, !dbg !3026
  %conv19 = sext i32 %19 to i64, !dbg !3027
  %call20 = call i64 (i64, ...) @syscall(i64 262, i64 %conv, i8* %call18, %struct.stat64.15* %18, i64 %conv19) #11, !dbg !3028
  %conv21 = trunc i64 %call20 to i32, !dbg !3028
  store i32 %conv21, i32* %retval, align 4, !dbg !3029
  br label %return, !dbg !3029

return:                                           ; preds = %if.end17, %if.then12, %if.then4, %if.then1
  %20 = load i32, i32* %retval, align 4, !dbg !3030
  ret i32 %20, !dbg !3030
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_lstat(i8* %path, %struct.stat64.15* %buf) #0 !dbg !3031 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.stat64.15*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !3036, metadata !DIExpression()), !dbg !3037
  %0 = load i8*, i8** %path.addr, align 8, !dbg !3038
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !3039
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3037
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3040
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !3040
  br i1 %tobool, label %if.then, label %if.end, !dbg !3042

if.then:                                          ; preds = %entry
  %2 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !3043
  %3 = bitcast %struct.stat64.15* %2 to i8*, !dbg !3045
  %4 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3046
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %4, i32 0, i32 2, !dbg !3047
  %5 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3047
  %6 = bitcast %struct.stat64.15* %5 to i8*, !dbg !3045
  %7 = call i8* @memcpy(i8* %3, i8* %6, i64 144), !dbg !3045
  store i32 0, i32* %retval, align 4, !dbg !3048
  br label %return, !dbg !3048

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %path.addr, align 8, !dbg !3049
  %call1 = call i8* @__concretize_string(i8* %8), !dbg !3051
  %9 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !3052
  %call2 = call i64 (i64, ...) @syscall(i64 6, i8* %call1, %struct.stat64.15* %9) #11, !dbg !3053
  %conv = trunc i64 %call2 to i32, !dbg !3053
  store i32 %conv, i32* %retval, align 4, !dbg !3054
  br label %return, !dbg !3054

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3055
  ret i32 %10, !dbg !3055
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @chdir(i8* nonnull %path) #0 !dbg !3056 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !3061, metadata !DIExpression()), !dbg !3062
  %0 = load i8*, i8** %path.addr, align 8, !dbg !3063
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !3064
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3062
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3065
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !3065
  br i1 %tobool, label %if.then, label %if.end, !dbg !3067

if.then:                                          ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10.89, i64 0, i64 0)), !dbg !3068
  %call1 = call i32* @__errno_location() #15, !dbg !3070
  store i32 2, i32* %call1, align 4, !dbg !3071
  store i32 -1, i32* %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8, !dbg !3073
  %call2 = call i8* @__concretize_string(i8* %2), !dbg !3074
  %call3 = call i64 (i64, ...) @syscall(i64 80, i8* %call2) #11, !dbg !3075
  %conv = trunc i64 %call3 to i32, !dbg !3075
  store i32 %conv, i32* %retval, align 4, !dbg !3076
  br label %return, !dbg !3076

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3077
  ret i32 %3, !dbg !3077
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fchdir(i32 %fd) #0 !dbg !3078 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3081, metadata !DIExpression()), !dbg !3082
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3083
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3084
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3082
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3085
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3085
  br i1 %tobool, label %if.end, label %if.then, !dbg !3087

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3088
  store i32 9, i32* %call1, align 4, !dbg !3090
  store i32 -1, i32* %retval, align 4, !dbg !3091
  br label %return, !dbg !3091

if.end:                                           ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3092
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !3094
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3094
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !3092
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3095

if.then3:                                         ; preds = %if.end
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10.89, i64 0, i64 0)), !dbg !3096
  %call4 = call i32* @__errno_location() #15, !dbg !3098
  store i32 2, i32* %call4, align 4, !dbg !3099
  store i32 -1, i32* %retval, align 4, !dbg !3100
  br label %return, !dbg !3100

if.end5:                                          ; preds = %if.end
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3101
  %fd6 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %4, i32 0, i32 0, !dbg !3102
  %5 = load i32, i32* %fd6, align 8, !dbg !3102
  %call7 = call i64 (i64, ...) @syscall(i64 81, i32 %5) #11, !dbg !3103
  %conv = trunc i64 %call7 to i32, !dbg !3103
  store i32 %conv, i32* %retval, align 4, !dbg !3104
  br label %return, !dbg !3104

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3105
  ret i32 %6, !dbg !3105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @chmod(i8* nonnull %path, i32 %mode) #0 !dbg !185 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !3110, metadata !DIExpression()), !dbg !3111
  %0 = load i8*, i8** %path.addr, align 8, !dbg !3112
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !3113
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3111
  %1 = load i32, i32* @chmod.n_calls, align 4, !dbg !3114
  %inc = add nsw i32 %1, 1, !dbg !3114
  store i32 %inc, i32* @chmod.n_calls, align 4, !dbg !3114
  %2 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3115
  %tobool = icmp ne i32 %2, 0, !dbg !3117
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3118

land.lhs.true:                                    ; preds = %entry
  %3 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 11), align 8, !dbg !3119
  %4 = load i32, i32* %3, align 4, !dbg !3120
  %5 = load i32, i32* @chmod.n_calls, align 4, !dbg !3121
  %cmp = icmp eq i32 %4, %5, !dbg !3122
  br i1 %cmp, label %if.then, label %if.end, !dbg !3123

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3124
  %dec = add i32 %6, -1, !dbg !3124
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3124
  %call1 = call i32* @__errno_location() #15, !dbg !3126
  store i32 5, i32* %call1, align 4, !dbg !3127
  store i32 -1, i32* %retval, align 4, !dbg !3128
  br label %return, !dbg !3128

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3129
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %7, null, !dbg !3129
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3131

if.then3:                                         ; preds = %if.end
  %8 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3132
  %9 = load i32, i32* %mode.addr, align 4, !dbg !3134
  %call4 = call i32 @__df_chmod(%struct.exe_disk_file_t.16* %8, i32 %9), !dbg !3135
  store i32 %call4, i32* %retval, align 4, !dbg !3136
  br label %return, !dbg !3136

if.end5:                                          ; preds = %if.end
  %10 = load i8*, i8** %path.addr, align 8, !dbg !3137
  %call6 = call i8* @__concretize_string(i8* %10), !dbg !3138
  %11 = load i32, i32* %mode.addr, align 4, !dbg !3139
  %call7 = call i64 (i64, ...) @syscall(i64 90, i8* %call6, i32 %11) #11, !dbg !3140
  %conv = trunc i64 %call7 to i32, !dbg !3140
  store i32 %conv, i32* %retval, align 4, !dbg !3141
  br label %return, !dbg !3141

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3142
  ret i32 %12, !dbg !3142
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__df_chmod(%struct.exe_disk_file_t.16* %df, i32 %mode) #0 !dbg !3143 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.exe_disk_file_t.16*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.exe_disk_file_t.16* %df, %struct.exe_disk_file_t.16** %df.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df.addr, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  %call = call i32 @geteuid() #11, !dbg !3150
  %0 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df.addr, align 8, !dbg !3152
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %0, i32 0, i32 2, !dbg !3153
  %1 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3153
  %st_uid = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %1, i32 0, i32 4, !dbg !3154
  %2 = load i32, i32* %st_uid, align 4, !dbg !3154
  %cmp = icmp eq i32 %call, %2, !dbg !3155
  br i1 %cmp, label %if.then, label %if.else, !dbg !3156

if.then:                                          ; preds = %entry
  %call1 = call i32 @getgid() #11, !dbg !3157
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df.addr, align 8, !dbg !3160
  %stat2 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %3, i32 0, i32 2, !dbg !3161
  %4 = load %struct.stat64.15*, %struct.stat64.15** %stat2, align 8, !dbg !3161
  %st_gid = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %4, i32 0, i32 5, !dbg !3162
  %5 = load i32, i32* %st_gid, align 8, !dbg !3162
  %cmp3 = icmp ne i32 %call1, %5, !dbg !3163
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !3164

if.then4:                                         ; preds = %if.then
  %6 = load i32, i32* %mode.addr, align 4, !dbg !3165
  %and = and i32 %6, -1025, !dbg !3165
  store i32 %and, i32* %mode.addr, align 4, !dbg !3165
  br label %if.end, !dbg !3166

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df.addr, align 8, !dbg !3167
  %stat5 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %7, i32 0, i32 2, !dbg !3168
  %8 = load %struct.stat64.15*, %struct.stat64.15** %stat5, align 8, !dbg !3168
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %8, i32 0, i32 3, !dbg !3169
  %9 = load i32, i32* %st_mode, align 8, !dbg !3169
  %and6 = and i32 %9, -4096, !dbg !3170
  %10 = load i32, i32* %mode.addr, align 4, !dbg !3171
  %and7 = and i32 %10, 4095, !dbg !3172
  %or = or i32 %and6, %and7, !dbg !3173
  %11 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df.addr, align 8, !dbg !3174
  %stat8 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %11, i32 0, i32 2, !dbg !3175
  %12 = load %struct.stat64.15*, %struct.stat64.15** %stat8, align 8, !dbg !3175
  %st_mode9 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %12, i32 0, i32 3, !dbg !3176
  store i32 %or, i32* %st_mode9, align 8, !dbg !3177
  store i32 0, i32* %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

if.else:                                          ; preds = %entry
  %call10 = call i32* @__errno_location() #15, !dbg !3179
  store i32 1, i32* %call10, align 4, !dbg !3181
  store i32 -1, i32* %retval, align 4, !dbg !3182
  br label %return, !dbg !3182

return:                                           ; preds = %if.else, %if.end
  %13 = load i32, i32* %retval, align 4, !dbg !3183
  ret i32 %13, !dbg !3183
}

; Function Attrs: nounwind
declare dso_local i32 @geteuid() #3

; Function Attrs: nounwind
declare dso_local i32 @getgid() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fchmod(i32 %fd, i32 %mode) #0 !dbg !192 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3188, metadata !DIExpression()), !dbg !3189
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3190
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3191
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3189
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3192
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3192
  br i1 %tobool, label %if.end, label %if.then, !dbg !3194

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3195
  store i32 9, i32* %call1, align 4, !dbg !3197
  store i32 -1, i32* %retval, align 4, !dbg !3198
  br label %return, !dbg !3198

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @fchmod.n_calls, align 4, !dbg !3199
  %inc = add nsw i32 %2, 1, !dbg !3199
  store i32 %inc, i32* @fchmod.n_calls, align 4, !dbg !3199
  %3 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3200
  %tobool2 = icmp ne i32 %3, 0, !dbg !3202
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !3203

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 12), align 8, !dbg !3204
  %5 = load i32, i32* %4, align 4, !dbg !3205
  %6 = load i32, i32* @fchmod.n_calls, align 4, !dbg !3206
  %cmp = icmp eq i32 %5, %6, !dbg !3207
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3208

if.then3:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3209
  %dec = add i32 %7, -1, !dbg !3209
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3209
  %call4 = call i32* @__errno_location() #15, !dbg !3211
  store i32 5, i32* %call4, align 4, !dbg !3212
  store i32 -1, i32* %retval, align 4, !dbg !3213
  br label %return, !dbg !3213

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3214
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %8, i32 0, i32 3, !dbg !3216
  %9 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3216
  %tobool6 = icmp ne %struct.exe_disk_file_t.16* %9, null, !dbg !3214
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !3217

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3218
  %dfile8 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %10, i32 0, i32 3, !dbg !3220
  %11 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile8, align 8, !dbg !3220
  %12 = load i32, i32* %mode.addr, align 4, !dbg !3221
  %call9 = call i32 @__df_chmod(%struct.exe_disk_file_t.16* %11, i32 %12), !dbg !3222
  store i32 %call9, i32* %retval, align 4, !dbg !3223
  br label %return, !dbg !3223

if.end10:                                         ; preds = %if.end5
  %13 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3224
  %fd11 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %13, i32 0, i32 0, !dbg !3225
  %14 = load i32, i32* %fd11, align 8, !dbg !3225
  %15 = load i32, i32* %mode.addr, align 4, !dbg !3226
  %call12 = call i64 (i64, ...) @syscall(i64 91, i32 %14, i32 %15) #11, !dbg !3227
  %conv = trunc i64 %call12 to i32, !dbg !3227
  store i32 %conv, i32* %retval, align 4, !dbg !3228
  br label %return, !dbg !3228

return:                                           ; preds = %if.end10, %if.then7, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3229
  ret i32 %16, !dbg !3229
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @chown(i8* nonnull %path, i32 %owner, i32 %group) #0 !dbg !3230 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %owner.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  %df = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i32 %owner, i32* %owner.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %owner.addr, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i32 %group, i32* %group.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %group.addr, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df, metadata !3241, metadata !DIExpression()), !dbg !3242
  %0 = load i8*, i8** %path.addr, align 8, !dbg !3243
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !3244
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3242
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3245
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !3245
  br i1 %tobool, label %if.then, label %if.end, !dbg !3247

if.then:                                          ; preds = %entry
  %2 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3248
  %3 = load i32, i32* %owner.addr, align 4, !dbg !3250
  %4 = load i32, i32* %group.addr, align 4, !dbg !3251
  %call1 = call i32 @__df_chown(%struct.exe_disk_file_t.16* %2, i32 %3, i32 %4), !dbg !3252
  store i32 %call1, i32* %retval, align 4, !dbg !3253
  br label %return, !dbg !3253

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %path.addr, align 8, !dbg !3254
  %call2 = call i8* @__concretize_string(i8* %5), !dbg !3255
  %6 = load i32, i32* %owner.addr, align 4, !dbg !3256
  %7 = load i32, i32* %group.addr, align 4, !dbg !3257
  %call3 = call i64 (i64, ...) @syscall(i64 92, i8* %call2, i32 %6, i32 %7) #11, !dbg !3258
  %conv = trunc i64 %call3 to i32, !dbg !3258
  store i32 %conv, i32* %retval, align 4, !dbg !3259
  br label %return, !dbg !3259

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3260
  ret i32 %8, !dbg !3260
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__df_chown(%struct.exe_disk_file_t.16* %df, i32 %owner, i32 %group) #0 !dbg !3261 {
entry:
  %df.addr = alloca %struct.exe_disk_file_t.16*, align 8
  %owner.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  store %struct.exe_disk_file_t.16* %df, %struct.exe_disk_file_t.16** %df.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i32 %owner, i32* %owner.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %owner.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i32 %group, i32* %group.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %group.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @klee_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26.90, i64 0, i64 0)), !dbg !3270
  %call = call i32* @__errno_location() #15, !dbg !3271
  store i32 1, i32* %call, align 4, !dbg !3272
  ret i32 -1, !dbg !3273
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fchown(i32 %fd, i32 %owner, i32 %group) #0 !dbg !3274 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %owner.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3277, metadata !DIExpression()), !dbg !3278
  store i32 %owner, i32* %owner.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %owner.addr, metadata !3279, metadata !DIExpression()), !dbg !3280
  store i32 %group, i32* %group.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %group.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3283, metadata !DIExpression()), !dbg !3284
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3285
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3286
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3284
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3287
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3287
  br i1 %tobool, label %if.end, label %if.then, !dbg !3289

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3290
  store i32 9, i32* %call1, align 4, !dbg !3292
  store i32 -1, i32* %retval, align 4, !dbg !3293
  br label %return, !dbg !3293

if.end:                                           ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3294
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !3296
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3296
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !3294
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !3297

if.then3:                                         ; preds = %if.end
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3298
  %dfile4 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %4, i32 0, i32 3, !dbg !3300
  %5 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile4, align 8, !dbg !3300
  %6 = load i32, i32* %owner.addr, align 4, !dbg !3301
  %7 = load i32, i32* %group.addr, align 4, !dbg !3302
  %call5 = call i32 @__df_chown(%struct.exe_disk_file_t.16* %5, i32 %6, i32 %7), !dbg !3303
  store i32 %call5, i32* %retval, align 4, !dbg !3304
  br label %return, !dbg !3304

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4, !dbg !3305
  %9 = load i32, i32* %owner.addr, align 4, !dbg !3306
  %10 = load i32, i32* %group.addr, align 4, !dbg !3307
  %call7 = call i64 (i64, ...) @syscall(i64 93, i32 %8, i32 %9, i32 %10) #11, !dbg !3308
  %conv = trunc i64 %call7 to i32, !dbg !3308
  store i32 %conv, i32* %retval, align 4, !dbg !3309
  br label %return, !dbg !3309

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3310
  ret i32 %11, !dbg !3310
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lchown(i8* nonnull %path, i32 %owner, i32 %group) #0 !dbg !3311 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %owner.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  %df = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  store i32 %owner, i32* %owner.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %owner.addr, metadata !3314, metadata !DIExpression()), !dbg !3315
  store i32 %group, i32* %group.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %group.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df, metadata !3318, metadata !DIExpression()), !dbg !3319
  %0 = load i8*, i8** %path.addr, align 8, !dbg !3320
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !3321
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3319
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3322
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !3322
  br i1 %tobool, label %if.then, label %if.end, !dbg !3324

if.then:                                          ; preds = %entry
  %2 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3325
  %3 = load i32, i32* %owner.addr, align 4, !dbg !3327
  %4 = load i32, i32* %group.addr, align 4, !dbg !3328
  %call1 = call i32 @__df_chown(%struct.exe_disk_file_t.16* %2, i32 %3, i32 %4), !dbg !3329
  store i32 %call1, i32* %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %path.addr, align 8, !dbg !3331
  %call2 = call i8* @__concretize_string(i8* %5), !dbg !3332
  %6 = load i32, i32* %owner.addr, align 4, !dbg !3333
  %7 = load i32, i32* %group.addr, align 4, !dbg !3334
  %call3 = call i64 (i64, ...) @syscall(i64 92, i8* %call2, i32 %6, i32 %7) #11, !dbg !3335
  %conv = trunc i64 %call3 to i32, !dbg !3335
  store i32 %conv, i32* %retval, align 4, !dbg !3336
  br label %return, !dbg !3336

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3337
  ret i32 %8, !dbg !3337
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_fstat(i32 %fd, %struct.stat64.15* %buf) #0 !dbg !3338 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca %struct.stat64.15*, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3339, metadata !DIExpression()), !dbg !3340
  store %struct.stat64.15* %buf, %struct.stat64.15** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %buf.addr, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3343, metadata !DIExpression()), !dbg !3344
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3345
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3346
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3344
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3347
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3347
  br i1 %tobool, label %if.end, label %if.then, !dbg !3349

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3350
  store i32 9, i32* %call1, align 4, !dbg !3352
  store i32 -1, i32* %retval, align 4, !dbg !3353
  br label %return, !dbg !3353

if.end:                                           ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3354
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !3356
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3356
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !3354
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !3357

if.then3:                                         ; preds = %if.end
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3358
  %fd4 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %4, i32 0, i32 0, !dbg !3360
  %5 = load i32, i32* %fd4, align 8, !dbg !3360
  %6 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !3361
  %call5 = call i64 (i64, ...) @syscall(i64 5, i32 %5, %struct.stat64.15* %6) #11, !dbg !3362
  %conv = trunc i64 %call5 to i32, !dbg !3362
  store i32 %conv, i32* %retval, align 4, !dbg !3363
  br label %return, !dbg !3363

if.end6:                                          ; preds = %if.end
  %7 = load %struct.stat64.15*, %struct.stat64.15** %buf.addr, align 8, !dbg !3364
  %8 = bitcast %struct.stat64.15* %7 to i8*, !dbg !3365
  %9 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3366
  %dfile7 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %9, i32 0, i32 3, !dbg !3367
  %10 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile7, align 8, !dbg !3367
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %10, i32 0, i32 2, !dbg !3368
  %11 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3368
  %12 = bitcast %struct.stat64.15* %11 to i8*, !dbg !3365
  %13 = call i8* @memcpy(i8* %8, i8* %12, i64 144), !dbg !3365
  store i32 0, i32* %retval, align 4, !dbg !3369
  br label %return, !dbg !3369

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !3370
  ret i32 %14, !dbg !3370
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_ftruncate(i32 %fd, i64 %length) #0 !dbg !197 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3371, metadata !DIExpression()), !dbg !3372
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3375, metadata !DIExpression()), !dbg !3376
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3377
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3378
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3376
  %1 = load i32, i32* @__fd_ftruncate.n_calls, align 4, !dbg !3379
  %inc = add nsw i32 %1, 1, !dbg !3379
  store i32 %inc, i32* @__fd_ftruncate.n_calls, align 4, !dbg !3379
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3380
  %tobool = icmp ne %struct.exe_file_t.17* %2, null, !dbg !3380
  br i1 %tobool, label %if.end, label %if.then, !dbg !3382

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3383
  store i32 9, i32* %call1, align 4, !dbg !3385
  store i32 -1, i32* %retval, align 4, !dbg !3386
  br label %return, !dbg !3386

if.end:                                           ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3387
  %tobool2 = icmp ne i32 %3, 0, !dbg !3389
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !3390

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32*, i32** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 9), align 8, !dbg !3391
  %5 = load i32, i32* %4, align 4, !dbg !3392
  %6 = load i32, i32* @__fd_ftruncate.n_calls, align 4, !dbg !3393
  %cmp = icmp eq i32 %5, %6, !dbg !3394
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3395

if.then3:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3396
  %dec = add i32 %7, -1, !dbg !3396
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 5), align 8, !dbg !3396
  %call4 = call i32* @__errno_location() #15, !dbg !3398
  store i32 5, i32* %call4, align 4, !dbg !3399
  store i32 -1, i32* %retval, align 4, !dbg !3400
  br label %return, !dbg !3400

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3401
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %8, i32 0, i32 3, !dbg !3403
  %9 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3403
  %tobool6 = icmp ne %struct.exe_disk_file_t.16* %9, null, !dbg !3401
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3404

if.then7:                                         ; preds = %if.end5
  call void @klee_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11.95, i64 0, i64 0)), !dbg !3405
  %call8 = call i32* @__errno_location() #15, !dbg !3407
  store i32 5, i32* %call8, align 4, !dbg !3408
  store i32 -1, i32* %retval, align 4, !dbg !3409
  br label %return, !dbg !3409

if.end9:                                          ; preds = %if.end5
  %10 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3410
  %fd10 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %10, i32 0, i32 0, !dbg !3411
  %11 = load i32, i32* %fd10, align 8, !dbg !3411
  %12 = load i64, i64* %length.addr, align 8, !dbg !3412
  %call11 = call i64 (i64, ...) @syscall(i64 77, i32 %11, i64 %12) #11, !dbg !3413
  %conv = trunc i64 %call11 to i32, !dbg !3413
  store i32 %conv, i32* %retval, align 4, !dbg !3414
  br label %return, !dbg !3414

return:                                           ; preds = %if.end9, %if.then7, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3415
  ret i32 %13, !dbg !3415
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_getdents(i32 %fd, %struct.dirent64.12* %dirp, i32 %count) #0 !dbg !3416 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirp.addr = alloca %struct.dirent64.12*, align 8
  %count.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %i = alloca i64, align 8
  %pad = alloca i64, align 8
  %bytes = alloca i64, align 8
  %df = alloca %struct.exe_disk_file_t.16*, align 8
  %os_pos = alloca i64, align 8
  %s = alloca i64, align 8
  %res = alloca i32, align 4
  %pos = alloca i32, align 4
  %dp = alloca %struct.dirent64.12*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3419, metadata !DIExpression()), !dbg !3420
  store %struct.dirent64.12* %dirp, %struct.dirent64.12** %dirp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent64.12** %dirp.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3425, metadata !DIExpression()), !dbg !3426
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3427
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3428
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3426
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3429
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3429
  br i1 %tobool, label %if.end, label %if.then, !dbg !3431

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3432
  store i32 9, i32* %call1, align 4, !dbg !3434
  store i32 -1, i32* %retval, align 4, !dbg !3435
  br label %return, !dbg !3435

if.end:                                           ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3436
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !3438
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3438
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !3436
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !3439

if.then3:                                         ; preds = %if.end
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12.98, i64 0, i64 0)), !dbg !3440
  %call4 = call i32* @__errno_location() #15, !dbg !3442
  store i32 22, i32* %call4, align 4, !dbg !3443
  store i32 -1, i32* %retval, align 4, !dbg !3444
  br label %return, !dbg !3444

if.else:                                          ; preds = %if.end
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3445
  %off = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %4, i32 0, i32 2, !dbg !3448
  %5 = load i64, i64* %off, align 8, !dbg !3448
  %cmp = icmp ult i64 %5, 4096, !dbg !3449
  br i1 %cmp, label %if.then5, label %if.else43, !dbg !3450

if.then5:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata i64* %i, metadata !3451, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.declare(metadata i64* %pad, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3456, metadata !DIExpression()), !dbg !3457
  store i64 0, i64* %bytes, align 8, !dbg !3457
  %6 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3458
  %off6 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %6, i32 0, i32 2, !dbg !3459
  %7 = load i64, i64* %off6, align 8, !dbg !3459
  %div = udiv i64 %7, 280, !dbg !3460
  store i64 %div, i64* %i, align 8, !dbg !3461
  %8 = load i64, i64* %i, align 8, !dbg !3462
  %mul = mul i64 %8, 280, !dbg !3464
  %9 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3465
  %off7 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %9, i32 0, i32 2, !dbg !3466
  %10 = load i64, i64* %off7, align 8, !dbg !3466
  %cmp8 = icmp ne i64 %mul, %10, !dbg !3467
  br i1 %cmp8, label %if.then11, label %lor.lhs.false, !dbg !3468

lor.lhs.false:                                    ; preds = %if.then5
  %11 = load i64, i64* %i, align 8, !dbg !3469
  %12 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 0), align 8, !dbg !3470
  %conv = zext i32 %12 to i64, !dbg !3471
  %cmp9 = icmp sgt i64 %11, %conv, !dbg !3472
  br i1 %cmp9, label %if.then11, label %for.cond, !dbg !3473

if.then11:                                        ; preds = %lor.lhs.false, %if.then5
  %call12 = call i32* @__errno_location() #15, !dbg !3474
  store i32 22, i32* %call12, align 4, !dbg !3476
  store i32 -1, i32* %retval, align 4, !dbg !3477
  br label %return, !dbg !3477

for.cond:                                         ; preds = %lor.lhs.false, %for.body
  %13 = load i64, i64* %i, align 8, !dbg !3478
  %14 = load i32, i32* getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 0), align 8, !dbg !3481
  %conv14 = zext i32 %14 to i64, !dbg !3482
  %cmp15 = icmp slt i64 %13, %conv14, !dbg !3483
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3484

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %df, metadata !3485, metadata !DIExpression()), !dbg !3487
  %15 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** getelementptr inbounds (%struct.exe_file_system_t.18, %struct.exe_file_system_t.18* @__exe_fs, i32 0, i32 4), align 8, !dbg !3488
  %16 = load i64, i64* %i, align 8, !dbg !3489
  %arrayidx = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %15, i64 %16, !dbg !3490
  store %struct.exe_disk_file_t.16* %arrayidx, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3487
  %17 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3491
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %17, i32 0, i32 2, !dbg !3492
  %18 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3492
  %st_ino = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %18, i32 0, i32 1, !dbg !3493
  %19 = load i64, i64* %st_ino, align 8, !dbg !3493
  %20 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3494
  %d_ino = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %20, i32 0, i32 0, !dbg !3495
  store i64 %19, i64* %d_ino, align 8, !dbg !3496
  %21 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3497
  %d_reclen = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %21, i32 0, i32 2, !dbg !3498
  store i16 280, i16* %d_reclen, align 8, !dbg !3499
  %22 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %df, align 8, !dbg !3500
  %stat17 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %22, i32 0, i32 2, !dbg !3500
  %23 = load %struct.stat64.15*, %struct.stat64.15** %stat17, align 8, !dbg !3500
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %23, i32 0, i32 3, !dbg !3500
  %24 = load i32, i32* %st_mode, align 8, !dbg !3500
  %and = and i32 %24, 61440, !dbg !3500
  %shr = lshr i32 %and, 12, !dbg !3500
  %conv18 = trunc i32 %shr to i8, !dbg !3500
  %25 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3501
  %d_type = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %25, i32 0, i32 3, !dbg !3502
  store i8 %conv18, i8* %d_type, align 2, !dbg !3503
  %26 = load i64, i64* %i, align 8, !dbg !3504
  %add = add nsw i64 65, %26, !dbg !3505
  %conv19 = trunc i64 %add to i8, !dbg !3506
  %27 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3507
  %d_name = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %27, i32 0, i32 4, !dbg !3508
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0, !dbg !3507
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !3509
  %28 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3510
  %d_name21 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %28, i32 0, i32 4, !dbg !3511
  %arrayidx22 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name21, i64 0, i64 1, !dbg !3510
  store i8 0, i8* %arrayidx22, align 1, !dbg !3512
  %29 = load i64, i64* %i, align 8, !dbg !3513
  %add23 = add nsw i64 %29, 1, !dbg !3514
  %mul24 = mul i64 %add23, 280, !dbg !3515
  %30 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3516
  %d_off = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %30, i32 0, i32 1, !dbg !3517
  store i64 %mul24, i64* %d_off, align 8, !dbg !3518
  %31 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3519
  %d_reclen25 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %31, i32 0, i32 2, !dbg !3520
  %32 = load i16, i16* %d_reclen25, align 8, !dbg !3520
  %conv26 = zext i16 %32 to i64, !dbg !3519
  %33 = load i64, i64* %bytes, align 8, !dbg !3521
  %add27 = add nsw i64 %33, %conv26, !dbg !3521
  store i64 %add27, i64* %bytes, align 8, !dbg !3521
  %34 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3522
  %incdec.ptr = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %34, i32 1, !dbg !3522
  store %struct.dirent64.12* %incdec.ptr, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3522
  %35 = load i64, i64* %i, align 8, !dbg !3523
  %inc = add nsw i64 %35, 1, !dbg !3523
  store i64 %inc, i64* %i, align 8, !dbg !3523
  br label %for.cond, !dbg !3524, !llvm.loop !3525

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %count.addr, align 4, !dbg !3527
  %cmp28 = icmp uge i32 %36, 4096, !dbg !3528
  %37 = load i32, i32* %count.addr, align 4, !dbg !3527
  %cond = select i1 %cmp28, i32 4096, i32 %37, !dbg !3527
  %conv30 = zext i32 %cond to i64, !dbg !3527
  store i64 %conv30, i64* %pad, align 8, !dbg !3529
  %38 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3530
  %d_ino31 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %38, i32 0, i32 0, !dbg !3531
  store i64 0, i64* %d_ino31, align 8, !dbg !3532
  %39 = load i64, i64* %pad, align 8, !dbg !3533
  %40 = load i64, i64* %bytes, align 8, !dbg !3534
  %sub = sub nsw i64 %39, %40, !dbg !3535
  %conv32 = trunc i64 %sub to i16, !dbg !3533
  %41 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3536
  %d_reclen33 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %41, i32 0, i32 2, !dbg !3537
  store i16 %conv32, i16* %d_reclen33, align 8, !dbg !3538
  %42 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3539
  %d_type34 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %42, i32 0, i32 3, !dbg !3540
  store i8 0, i8* %d_type34, align 2, !dbg !3541
  %43 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3542
  %d_name35 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %43, i32 0, i32 4, !dbg !3543
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name35, i64 0, i64 0, !dbg !3542
  store i8 0, i8* %arrayidx36, align 1, !dbg !3544
  %44 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3545
  %d_off37 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %44, i32 0, i32 1, !dbg !3546
  store i64 4096, i64* %d_off37, align 8, !dbg !3547
  %45 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3548
  %d_reclen38 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %45, i32 0, i32 2, !dbg !3549
  %46 = load i16, i16* %d_reclen38, align 8, !dbg !3549
  %conv39 = zext i16 %46 to i64, !dbg !3548
  %47 = load i64, i64* %bytes, align 8, !dbg !3550
  %add40 = add nsw i64 %47, %conv39, !dbg !3550
  store i64 %add40, i64* %bytes, align 8, !dbg !3550
  %48 = load i64, i64* %pad, align 8, !dbg !3551
  %49 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3552
  %off41 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %49, i32 0, i32 2, !dbg !3553
  store i64 %48, i64* %off41, align 8, !dbg !3554
  %50 = load i64, i64* %bytes, align 8, !dbg !3555
  %conv42 = trunc i64 %50 to i32, !dbg !3555
  store i32 %conv42, i32* %retval, align 4, !dbg !3556
  br label %return, !dbg !3556

if.else43:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i64* %os_pos, metadata !3557, metadata !DIExpression()), !dbg !3559
  %51 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3560
  %off44 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %51, i32 0, i32 2, !dbg !3561
  %52 = load i64, i64* %off44, align 8, !dbg !3561
  %sub45 = sub nsw i64 %52, 4096, !dbg !3562
  store i64 %sub45, i64* %os_pos, align 8, !dbg !3559
  %53 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3563
  %54 = bitcast %struct.dirent64.12* %53 to i8*, !dbg !3564
  %55 = load i32, i32* %count.addr, align 4, !dbg !3565
  %conv46 = zext i32 %55 to i64, !dbg !3565
  %56 = call i8* @memset(i8* %54, i32 0, i64 %conv46), !dbg !3564
  call void @llvm.dbg.declare(metadata i64* %s, metadata !3566, metadata !DIExpression()), !dbg !3567
  %57 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3568
  %fd47 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %57, i32 0, i32 0, !dbg !3569
  %58 = load i32, i32* %fd47, align 8, !dbg !3569
  %59 = load i64, i64* %os_pos, align 8, !dbg !3570
  %call48 = call i64 (i64, ...) @syscall(i64 8, i32 %58, i64 %59, i32 0) #11, !dbg !3571
  store i64 %call48, i64* %s, align 8, !dbg !3567
  %60 = load i64, i64* %s, align 8, !dbg !3572
  %61 = load i64, i64* %s, align 8, !dbg !3573
  %cmp49 = icmp ne i64 %61, -1, !dbg !3573
  br i1 %cmp49, label %if.end53, label %if.else52, !dbg !3576

if.else52:                                        ; preds = %if.else43
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13.99, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 844, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.__fd_getdents, i64 0, i64 0)) #14, !dbg !3573
  unreachable, !dbg !3573

if.end53:                                         ; preds = %if.else43
  call void @llvm.dbg.declare(metadata i32* %res, metadata !3577, metadata !DIExpression()), !dbg !3578
  %62 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3579
  %fd54 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %62, i32 0, i32 0, !dbg !3580
  %63 = load i32, i32* %fd54, align 8, !dbg !3580
  %64 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3581
  %65 = load i32, i32* %count.addr, align 4, !dbg !3582
  %call55 = call i64 (i64, ...) @syscall(i64 217, i32 %63, %struct.dirent64.12* %64, i32 %65) #11, !dbg !3583
  %conv56 = trunc i64 %call55 to i32, !dbg !3583
  store i32 %conv56, i32* %res, align 4, !dbg !3578
  %66 = load i32, i32* %res, align 4, !dbg !3584
  %cmp57 = icmp sgt i32 %66, -1, !dbg !3586
  br i1 %cmp57, label %if.then59, label %if.end78, !dbg !3587

if.then59:                                        ; preds = %if.end53
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !3588, metadata !DIExpression()), !dbg !3590
  store i32 0, i32* %pos, align 4, !dbg !3590
  %67 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3591
  %fd60 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %67, i32 0, i32 0, !dbg !3592
  %68 = load i32, i32* %fd60, align 8, !dbg !3592
  %call61 = call i64 (i64, ...) @syscall(i64 8, i32 %68, i32 0, i32 1) #11, !dbg !3593
  %69 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3594
  %off62 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %69, i32 0, i32 2, !dbg !3595
  store i64 %call61, i64* %off62, align 8, !dbg !3596
  %70 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3597
  %off63 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %70, i32 0, i32 2, !dbg !3597
  %71 = load i64, i64* %off63, align 8, !dbg !3597
  %cmp64 = icmp ne i64 %71, -1, !dbg !3597
  br i1 %cmp64, label %if.end68, label %if.else67, !dbg !3600

if.else67:                                        ; preds = %if.then59
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14.100, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.77, i64 0, i64 0), i32 849, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.__fd_getdents, i64 0, i64 0)) #14, !dbg !3597
  unreachable, !dbg !3597

if.end68:                                         ; preds = %if.then59
  %72 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3601
  %off69 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %72, i32 0, i32 2, !dbg !3602
  %73 = load i64, i64* %off69, align 8, !dbg !3603
  %add70 = add nsw i64 %73, 4096, !dbg !3603
  store i64 %add70, i64* %off69, align 8, !dbg !3603
  br label %while.cond, !dbg !3604

while.cond:                                       ; preds = %while.body, %if.end68
  %74 = load i32, i32* %pos, align 4, !dbg !3605
  %75 = load i32, i32* %res, align 4, !dbg !3606
  %cmp71 = icmp slt i32 %74, %75, !dbg !3607
  br i1 %cmp71, label %while.body, label %if.end78, !dbg !3604

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.dirent64.12** %dp, metadata !3608, metadata !DIExpression()), !dbg !3610
  %76 = load %struct.dirent64.12*, %struct.dirent64.12** %dirp.addr, align 8, !dbg !3611
  %77 = bitcast %struct.dirent64.12* %76 to i8*, !dbg !3612
  %78 = load i32, i32* %pos, align 4, !dbg !3613
  %idx.ext = sext i32 %78 to i64, !dbg !3614
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 %idx.ext, !dbg !3614
  %79 = bitcast i8* %add.ptr to %struct.dirent64.12*, !dbg !3615
  store %struct.dirent64.12* %79, %struct.dirent64.12** %dp, align 8, !dbg !3610
  %80 = load %struct.dirent64.12*, %struct.dirent64.12** %dp, align 8, !dbg !3616
  %d_off73 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %80, i32 0, i32 1, !dbg !3617
  %81 = load i64, i64* %d_off73, align 8, !dbg !3618
  %add74 = add nsw i64 %81, 4096, !dbg !3618
  store i64 %add74, i64* %d_off73, align 8, !dbg !3618
  %82 = load %struct.dirent64.12*, %struct.dirent64.12** %dp, align 8, !dbg !3619
  %d_reclen75 = getelementptr inbounds %struct.dirent64.12, %struct.dirent64.12* %82, i32 0, i32 2, !dbg !3620
  %83 = load i16, i16* %d_reclen75, align 8, !dbg !3620
  %conv76 = zext i16 %83 to i32, !dbg !3619
  %84 = load i32, i32* %pos, align 4, !dbg !3621
  %add77 = add nsw i32 %84, %conv76, !dbg !3621
  store i32 %add77, i32* %pos, align 4, !dbg !3621
  br label %while.cond, !dbg !3604, !llvm.loop !3622

if.end78:                                         ; preds = %while.cond, %if.end53
  %85 = load i32, i32* %res, align 4, !dbg !3624
  store i32 %85, i32* %retval, align 4, !dbg !3625
  br label %return, !dbg !3625

return:                                           ; preds = %if.end78, %for.end, %if.then11, %if.then3, %if.then
  %86 = load i32, i32* %retval, align 4, !dbg !3626
  ret i32 %86, !dbg !3626
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ioctl(i32 %fd, i64 %request, ...) #0 !dbg !3627 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %request.addr = alloca i64, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  %ap = alloca [1 x %struct.__va_list_tag.13], align 16
  %buf = alloca i8*, align 8
  %stat = alloca %struct.stat64.15*, align 8
  %ts = alloca %struct.termios*, align 8
  %ws = alloca %struct.winsize*, align 8
  %res = alloca i32*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3630, metadata !DIExpression()), !dbg !3631
  store i64 %request, i64* %request.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %request.addr, metadata !3632, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3634, metadata !DIExpression()), !dbg !3635
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3636
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3637
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3635
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag.13]* %ap, metadata !3638, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !3650, metadata !DIExpression()), !dbg !3651
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3652
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3652
  br i1 %tobool, label %if.end, label %if.then, !dbg !3654

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3655
  store i32 9, i32* %call1, align 4, !dbg !3657
  store i32 -1, i32* %retval, align 4, !dbg !3658
  br label %return, !dbg !3658

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3659
  %arraydecay2 = bitcast %struct.__va_list_tag.13* %arraydecay to i8*, !dbg !3659
  call void @llvm.va_start(i8* %arraydecay2), !dbg !3659
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3660
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay3, i32 0, i32 0, !dbg !3660
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !3660
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !3660
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3660

vaarg.in_reg:                                     ; preds = %if.end
  %2 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay3, i32 0, i32 3, !dbg !3660
  %reg_save_area = load i8*, i8** %2, align 16, !dbg !3660
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !3660
  %4 = bitcast i8* %3 to i8**, !dbg !3660
  %5 = add i32 %gp_offset, 8, !dbg !3660
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !3660
  br label %vaarg.end, !dbg !3660

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay3, i32 0, i32 2, !dbg !3660
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !3660
  %6 = bitcast i8* %overflow_arg_area to i8**, !dbg !3660
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !3660
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3660
  br label %vaarg.end, !dbg !3660

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ], !dbg !3660
  %7 = load i8*, i8** %vaarg.addr, align 8, !dbg !3660
  store i8* %7, i8** %buf, align 8, !dbg !3661
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3662
  %arraydecay45 = bitcast %struct.__va_list_tag.13* %arraydecay4 to i8*, !dbg !3662
  call void @llvm.va_end(i8* %arraydecay45), !dbg !3662
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3663
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %8, i32 0, i32 3, !dbg !3665
  %9 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3665
  %tobool6 = icmp ne %struct.exe_disk_file_t.16* %9, null, !dbg !3663
  br i1 %tobool6, label %if.then7, label %if.end103, !dbg !3666

if.then7:                                         ; preds = %vaarg.end
  call void @llvm.dbg.declare(metadata %struct.stat64.15** %stat, metadata !3667, metadata !DIExpression()), !dbg !3669
  %10 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3670
  %dfile8 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %10, i32 0, i32 3, !dbg !3671
  %11 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile8, align 8, !dbg !3671
  %stat9 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %11, i32 0, i32 2, !dbg !3672
  %12 = load %struct.stat64.15*, %struct.stat64.15** %stat9, align 8, !dbg !3672
  %13 = bitcast %struct.stat64.15* %12 to %struct.stat64.15*, !dbg !3673
  store %struct.stat64.15* %13, %struct.stat64.15** %stat, align 8, !dbg !3669
  %14 = load i64, i64* %request.addr, align 8, !dbg !3674
  switch i64 %14, label %sw.default [
    i64 21505, label %sw.bb
    i64 21506, label %sw.bb48
    i64 21507, label %sw.bb55
    i64 21508, label %sw.bb60
    i64 21523, label %sw.bb67
    i64 21524, label %sw.bb74
    i64 21531, label %sw.bb82
    i64 2150657282, label %sw.bb100
  ], !dbg !3675

sw.bb:                                            ; preds = %if.then7
  call void @llvm.dbg.declare(metadata %struct.termios** %ts, metadata !3676, metadata !DIExpression()), !dbg !3696
  %15 = load i8*, i8** %buf, align 8, !dbg !3697
  %16 = bitcast i8* %15 to %struct.termios*, !dbg !3697
  store %struct.termios* %16, %struct.termios** %ts, align 8, !dbg !3696
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15.101, i64 0, i64 0)), !dbg !3698
  %17 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3699
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %17, i32 0, i32 3, !dbg !3699
  %18 = load i32, i32* %st_mode, align 8, !dbg !3699
  %and = and i32 %18, 61440, !dbg !3699
  %cmp = icmp eq i32 %and, 8192, !dbg !3699
  br i1 %cmp, label %if.then10, label %if.else, !dbg !3701

if.then10:                                        ; preds = %sw.bb
  %19 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3702
  %c_iflag = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 0, !dbg !3704
  store i32 27906, i32* %c_iflag, align 4, !dbg !3705
  %20 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3706
  %c_oflag = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 1, !dbg !3707
  store i32 5, i32* %c_oflag, align 4, !dbg !3708
  %21 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3709
  %c_cflag = getelementptr inbounds %struct.termios, %struct.termios* %21, i32 0, i32 2, !dbg !3710
  store i32 1215, i32* %c_cflag, align 4, !dbg !3711
  %22 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3712
  %c_lflag = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 3, !dbg !3713
  store i32 35287, i32* %c_lflag, align 4, !dbg !3714
  %23 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3715
  %c_line = getelementptr inbounds %struct.termios, %struct.termios* %23, i32 0, i32 4, !dbg !3716
  store i8 0, i8* %c_line, align 4, !dbg !3717
  %24 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3718
  %c_cc = getelementptr inbounds %struct.termios, %struct.termios* %24, i32 0, i32 5, !dbg !3719
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc, i64 0, i64 0, !dbg !3718
  store i8 3, i8* %arrayidx, align 1, !dbg !3720
  %25 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3721
  %c_cc11 = getelementptr inbounds %struct.termios, %struct.termios* %25, i32 0, i32 5, !dbg !3722
  %arrayidx12 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc11, i64 0, i64 1, !dbg !3721
  store i8 28, i8* %arrayidx12, align 1, !dbg !3723
  %26 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3724
  %c_cc13 = getelementptr inbounds %struct.termios, %struct.termios* %26, i32 0, i32 5, !dbg !3725
  %arrayidx14 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc13, i64 0, i64 2, !dbg !3724
  store i8 127, i8* %arrayidx14, align 1, !dbg !3726
  %27 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3727
  %c_cc15 = getelementptr inbounds %struct.termios, %struct.termios* %27, i32 0, i32 5, !dbg !3728
  %arrayidx16 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc15, i64 0, i64 3, !dbg !3727
  store i8 21, i8* %arrayidx16, align 1, !dbg !3729
  %28 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3730
  %c_cc17 = getelementptr inbounds %struct.termios, %struct.termios* %28, i32 0, i32 5, !dbg !3731
  %arrayidx18 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc17, i64 0, i64 4, !dbg !3730
  store i8 4, i8* %arrayidx18, align 1, !dbg !3732
  %29 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3733
  %c_cc19 = getelementptr inbounds %struct.termios, %struct.termios* %29, i32 0, i32 5, !dbg !3734
  %arrayidx20 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc19, i64 0, i64 5, !dbg !3733
  store i8 0, i8* %arrayidx20, align 1, !dbg !3735
  %30 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3736
  %c_cc21 = getelementptr inbounds %struct.termios, %struct.termios* %30, i32 0, i32 5, !dbg !3737
  %arrayidx22 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc21, i64 0, i64 6, !dbg !3736
  store i8 1, i8* %arrayidx22, align 1, !dbg !3738
  %31 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3739
  %c_cc23 = getelementptr inbounds %struct.termios, %struct.termios* %31, i32 0, i32 5, !dbg !3740
  %arrayidx24 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc23, i64 0, i64 7, !dbg !3739
  store i8 -1, i8* %arrayidx24, align 1, !dbg !3741
  %32 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3742
  %c_cc25 = getelementptr inbounds %struct.termios, %struct.termios* %32, i32 0, i32 5, !dbg !3743
  %arrayidx26 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc25, i64 0, i64 8, !dbg !3742
  store i8 17, i8* %arrayidx26, align 1, !dbg !3744
  %33 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3745
  %c_cc27 = getelementptr inbounds %struct.termios, %struct.termios* %33, i32 0, i32 5, !dbg !3746
  %arrayidx28 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc27, i64 0, i64 9, !dbg !3745
  store i8 19, i8* %arrayidx28, align 1, !dbg !3747
  %34 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3748
  %c_cc29 = getelementptr inbounds %struct.termios, %struct.termios* %34, i32 0, i32 5, !dbg !3749
  %arrayidx30 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc29, i64 0, i64 10, !dbg !3748
  store i8 26, i8* %arrayidx30, align 1, !dbg !3750
  %35 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3751
  %c_cc31 = getelementptr inbounds %struct.termios, %struct.termios* %35, i32 0, i32 5, !dbg !3752
  %arrayidx32 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc31, i64 0, i64 11, !dbg !3751
  store i8 -1, i8* %arrayidx32, align 1, !dbg !3753
  %36 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3754
  %c_cc33 = getelementptr inbounds %struct.termios, %struct.termios* %36, i32 0, i32 5, !dbg !3755
  %arrayidx34 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc33, i64 0, i64 12, !dbg !3754
  store i8 18, i8* %arrayidx34, align 1, !dbg !3756
  %37 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3757
  %c_cc35 = getelementptr inbounds %struct.termios, %struct.termios* %37, i32 0, i32 5, !dbg !3758
  %arrayidx36 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc35, i64 0, i64 13, !dbg !3757
  store i8 15, i8* %arrayidx36, align 1, !dbg !3759
  %38 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3760
  %c_cc37 = getelementptr inbounds %struct.termios, %struct.termios* %38, i32 0, i32 5, !dbg !3761
  %arrayidx38 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc37, i64 0, i64 14, !dbg !3760
  store i8 23, i8* %arrayidx38, align 1, !dbg !3762
  %39 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3763
  %c_cc39 = getelementptr inbounds %struct.termios, %struct.termios* %39, i32 0, i32 5, !dbg !3764
  %arrayidx40 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc39, i64 0, i64 15, !dbg !3763
  store i8 22, i8* %arrayidx40, align 1, !dbg !3765
  %40 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3766
  %c_cc41 = getelementptr inbounds %struct.termios, %struct.termios* %40, i32 0, i32 5, !dbg !3767
  %arrayidx42 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc41, i64 0, i64 16, !dbg !3766
  store i8 -1, i8* %arrayidx42, align 1, !dbg !3768
  %41 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3769
  %c_cc43 = getelementptr inbounds %struct.termios, %struct.termios* %41, i32 0, i32 5, !dbg !3770
  %arrayidx44 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc43, i64 0, i64 17, !dbg !3769
  store i8 0, i8* %arrayidx44, align 1, !dbg !3771
  %42 = load %struct.termios*, %struct.termios** %ts, align 8, !dbg !3772
  %c_cc45 = getelementptr inbounds %struct.termios, %struct.termios* %42, i32 0, i32 5, !dbg !3773
  %arrayidx46 = getelementptr inbounds [32 x i8], [32 x i8]* %c_cc45, i64 0, i64 18, !dbg !3772
  store i8 0, i8* %arrayidx46, align 1, !dbg !3774
  store i32 0, i32* %retval, align 4, !dbg !3775
  br label %return, !dbg !3775

if.else:                                          ; preds = %sw.bb
  %call47 = call i32* @__errno_location() #15, !dbg !3776
  store i32 25, i32* %call47, align 4, !dbg !3778
  store i32 -1, i32* %retval, align 4, !dbg !3779
  br label %return, !dbg !3779

sw.bb48:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16.102, i64 0, i64 0)), !dbg !3780
  %43 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3782
  %st_mode49 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %43, i32 0, i32 3, !dbg !3782
  %44 = load i32, i32* %st_mode49, align 8, !dbg !3782
  %and50 = and i32 %44, 61440, !dbg !3782
  %cmp51 = icmp eq i32 %and50, 8192, !dbg !3782
  br i1 %cmp51, label %if.then52, label %if.else53, !dbg !3784

if.then52:                                        ; preds = %sw.bb48
  store i32 0, i32* %retval, align 4, !dbg !3785
  br label %return, !dbg !3785

if.else53:                                        ; preds = %sw.bb48
  %call54 = call i32* @__errno_location() #15, !dbg !3787
  store i32 25, i32* %call54, align 4, !dbg !3789
  store i32 -1, i32* %retval, align 4, !dbg !3790
  br label %return, !dbg !3790

sw.bb55:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17.103, i64 0, i64 0)), !dbg !3791
  %45 = load i32, i32* %fd.addr, align 4, !dbg !3793
  %cmp56 = icmp eq i32 %45, 0, !dbg !3795
  br i1 %cmp56, label %if.then57, label %if.else58, !dbg !3796

if.then57:                                        ; preds = %sw.bb55
  store i32 0, i32* %retval, align 4, !dbg !3797
  br label %return, !dbg !3797

if.else58:                                        ; preds = %sw.bb55
  %call59 = call i32* @__errno_location() #15, !dbg !3799
  store i32 25, i32* %call59, align 4, !dbg !3801
  store i32 -1, i32* %retval, align 4, !dbg !3802
  br label %return, !dbg !3802

sw.bb60:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18.104, i64 0, i64 0)), !dbg !3803
  %46 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3805
  %st_mode61 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %46, i32 0, i32 3, !dbg !3805
  %47 = load i32, i32* %st_mode61, align 8, !dbg !3805
  %and62 = and i32 %47, 61440, !dbg !3805
  %cmp63 = icmp eq i32 %and62, 8192, !dbg !3805
  br i1 %cmp63, label %if.then64, label %if.else65, !dbg !3807

if.then64:                                        ; preds = %sw.bb60
  store i32 0, i32* %retval, align 4, !dbg !3808
  br label %return, !dbg !3808

if.else65:                                        ; preds = %sw.bb60
  %call66 = call i32* @__errno_location() #15, !dbg !3810
  store i32 25, i32* %call66, align 4, !dbg !3812
  store i32 -1, i32* %retval, align 4, !dbg !3813
  br label %return, !dbg !3813

sw.bb67:                                          ; preds = %if.then7
  call void @llvm.dbg.declare(metadata %struct.winsize** %ws, metadata !3814, metadata !DIExpression()), !dbg !3824
  %48 = load i8*, i8** %buf, align 8, !dbg !3825
  %49 = bitcast i8* %48 to %struct.winsize*, !dbg !3825
  store %struct.winsize* %49, %struct.winsize** %ws, align 8, !dbg !3824
  %50 = load %struct.winsize*, %struct.winsize** %ws, align 8, !dbg !3826
  %ws_row = getelementptr inbounds %struct.winsize, %struct.winsize* %50, i32 0, i32 0, !dbg !3827
  store i16 24, i16* %ws_row, align 2, !dbg !3828
  %51 = load %struct.winsize*, %struct.winsize** %ws, align 8, !dbg !3829
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %51, i32 0, i32 1, !dbg !3830
  store i16 80, i16* %ws_col, align 2, !dbg !3831
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19.105, i64 0, i64 0)), !dbg !3832
  %52 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3833
  %st_mode68 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %52, i32 0, i32 3, !dbg !3833
  %53 = load i32, i32* %st_mode68, align 8, !dbg !3833
  %and69 = and i32 %53, 61440, !dbg !3833
  %cmp70 = icmp eq i32 %and69, 8192, !dbg !3833
  br i1 %cmp70, label %if.then71, label %if.else72, !dbg !3835

if.then71:                                        ; preds = %sw.bb67
  store i32 0, i32* %retval, align 4, !dbg !3836
  br label %return, !dbg !3836

if.else72:                                        ; preds = %sw.bb67
  %call73 = call i32* @__errno_location() #15, !dbg !3838
  store i32 25, i32* %call73, align 4, !dbg !3840
  store i32 -1, i32* %retval, align 4, !dbg !3841
  br label %return, !dbg !3841

sw.bb74:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20.106, i64 0, i64 0)), !dbg !3842
  %54 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3844
  %st_mode75 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %54, i32 0, i32 3, !dbg !3844
  %55 = load i32, i32* %st_mode75, align 8, !dbg !3844
  %and76 = and i32 %55, 61440, !dbg !3844
  %cmp77 = icmp eq i32 %and76, 8192, !dbg !3844
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !3846

if.then78:                                        ; preds = %sw.bb74
  %call79 = call i32* @__errno_location() #15, !dbg !3847
  store i32 22, i32* %call79, align 4, !dbg !3849
  store i32 -1, i32* %retval, align 4, !dbg !3850
  br label %return, !dbg !3850

if.else80:                                        ; preds = %sw.bb74
  %call81 = call i32* @__errno_location() #15, !dbg !3851
  store i32 25, i32* %call81, align 4, !dbg !3853
  store i32 -1, i32* %retval, align 4, !dbg !3854
  br label %return, !dbg !3854

sw.bb82:                                          ; preds = %if.then7
  call void @llvm.dbg.declare(metadata i32** %res, metadata !3855, metadata !DIExpression()), !dbg !3857
  %56 = load i8*, i8** %buf, align 8, !dbg !3858
  %57 = bitcast i8* %56 to i32*, !dbg !3858
  store i32* %57, i32** %res, align 8, !dbg !3857
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21.107, i64 0, i64 0)), !dbg !3859
  %58 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !3860
  %st_mode83 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %58, i32 0, i32 3, !dbg !3860
  %59 = load i32, i32* %st_mode83, align 8, !dbg !3860
  %and84 = and i32 %59, 61440, !dbg !3860
  %cmp85 = icmp eq i32 %and84, 8192, !dbg !3860
  br i1 %cmp85, label %if.then86, label %if.else98, !dbg !3862

if.then86:                                        ; preds = %sw.bb82
  %60 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3863
  %off = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %60, i32 0, i32 2, !dbg !3866
  %61 = load i64, i64* %off, align 8, !dbg !3866
  %62 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3867
  %dfile87 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %62, i32 0, i32 3, !dbg !3868
  %63 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile87, align 8, !dbg !3868
  %size = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %63, i32 0, i32 0, !dbg !3869
  %64 = load i32, i32* %size, align 8, !dbg !3869
  %conv = zext i32 %64 to i64, !dbg !3870
  %cmp88 = icmp slt i64 %61, %conv, !dbg !3871
  br i1 %cmp88, label %if.then90, label %if.else96, !dbg !3872

if.then90:                                        ; preds = %if.then86
  %65 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3873
  %dfile91 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %65, i32 0, i32 3, !dbg !3875
  %66 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile91, align 8, !dbg !3875
  %size92 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %66, i32 0, i32 0, !dbg !3876
  %67 = load i32, i32* %size92, align 8, !dbg !3876
  %conv93 = zext i32 %67 to i64, !dbg !3873
  %68 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3877
  %off94 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %68, i32 0, i32 2, !dbg !3878
  %69 = load i64, i64* %off94, align 8, !dbg !3878
  %sub = sub nsw i64 %conv93, %69, !dbg !3879
  %conv95 = trunc i64 %sub to i32, !dbg !3873
  %70 = load i32*, i32** %res, align 8, !dbg !3880
  store i32 %conv95, i32* %70, align 4, !dbg !3881
  br label %if.end97, !dbg !3882

if.else96:                                        ; preds = %if.then86
  %71 = load i32*, i32** %res, align 8, !dbg !3883
  store i32 0, i32* %71, align 4, !dbg !3885
  br label %if.end97

if.end97:                                         ; preds = %if.else96, %if.then90
  store i32 0, i32* %retval, align 4, !dbg !3886
  br label %return, !dbg !3886

if.else98:                                        ; preds = %sw.bb82
  %call99 = call i32* @__errno_location() #15, !dbg !3887
  store i32 25, i32* %call99, align 4, !dbg !3889
  store i32 -1, i32* %retval, align 4, !dbg !3890
  br label %return, !dbg !3890

sw.bb100:                                         ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22.108, i64 0, i64 0)), !dbg !3891
  %call101 = call i32* @__errno_location() #15, !dbg !3893
  store i32 22, i32* %call101, align 4, !dbg !3894
  store i32 -1, i32* %retval, align 4, !dbg !3895
  br label %return, !dbg !3895

sw.default:                                       ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12.98, i64 0, i64 0)), !dbg !3896
  %call102 = call i32* @__errno_location() #15, !dbg !3897
  store i32 22, i32* %call102, align 4, !dbg !3898
  store i32 -1, i32* %retval, align 4, !dbg !3899
  br label %return, !dbg !3899

if.end103:                                        ; preds = %vaarg.end
  %72 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3900
  %fd104 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %72, i32 0, i32 0, !dbg !3901
  %73 = load i32, i32* %fd104, align 8, !dbg !3901
  %74 = load i64, i64* %request.addr, align 8, !dbg !3902
  %75 = load i8*, i8** %buf, align 8, !dbg !3903
  %call105 = call i64 (i64, ...) @syscall(i64 16, i32 %73, i64 %74, i8* %75) #11, !dbg !3904
  %conv106 = trunc i64 %call105 to i32, !dbg !3904
  store i32 %conv106, i32* %retval, align 4, !dbg !3905
  br label %return, !dbg !3905

return:                                           ; preds = %if.end103, %sw.default, %sw.bb100, %if.else98, %if.end97, %if.else80, %if.then78, %if.else72, %if.then71, %if.else65, %if.then64, %if.else58, %if.then57, %if.else53, %if.then52, %if.else, %if.then10, %if.then
  %76 = load i32, i32* %retval, align 4, !dbg !3906
  ret i32 %76, !dbg !3906
}

declare dso_local void @klee_warning_once(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fcntl(i32 %fd, i32 %cmd, ...) #0 !dbg !3907 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %ap = alloca [1 x %struct.__va_list_tag.13], align 16
  %arg = alloca i32, align 4
  %lock = alloca %struct.flock*, align 8
  %flags = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3910, metadata !DIExpression()), !dbg !3911
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !3912, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !3914, metadata !DIExpression()), !dbg !3915
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3916
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !3917
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !3915
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag.13]* %ap, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !3920, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.declare(metadata %struct.flock** %lock, metadata !3922, metadata !DIExpression()), !dbg !3934
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3935
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !3935
  br i1 %tobool, label %if.end, label %if.then, !dbg !3937

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !3938
  store i32 9, i32* %call1, align 4, !dbg !3940
  store i32 -1, i32* %retval, align 4, !dbg !3941
  br label %return, !dbg !3941

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %cmd.addr, align 4, !dbg !3942
  %cmp = icmp eq i32 %2, 1, !dbg !3944
  %3 = load i32, i32* %cmd.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2, !dbg !3945
  %4 = load i32, i32* %cmd.addr, align 4
  %cmp4 = icmp eq i32 %4, 9
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp4, !dbg !3945
  %5 = load i32, i32* %cmd.addr, align 4
  %cmp6 = icmp eq i32 %5, 11
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp6, !dbg !3945
  %6 = load i32, i32* %cmd.addr, align 4
  %cmp8 = icmp eq i32 %6, 1025
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp8, !dbg !3945
  %7 = load i32, i32* %cmd.addr, align 4
  %cmp10 = icmp eq i32 %7, 1026
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp10, !dbg !3945
  br i1 %or.cond4, label %if.then11, label %if.else, !dbg !3945

if.then11:                                        ; preds = %if.end
  store i32 0, i32* %arg, align 4, !dbg !3946
  br label %if.end40, !dbg !3948

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %cmd.addr, align 4, !dbg !3949
  %cmp12 = icmp eq i32 %8, 5, !dbg !3951
  %9 = load i32, i32* %cmd.addr, align 4
  %cmp14 = icmp eq i32 %9, 6
  %or.cond5 = select i1 %cmp12, i1 true, i1 %cmp14, !dbg !3952
  %10 = load i32, i32* %cmd.addr, align 4
  %cmp16 = icmp eq i32 %10, 7
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp16, !dbg !3952
  br i1 %or.cond6, label %if.then17, label %if.else22, !dbg !3952

if.then17:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3953
  %arraydecay18 = bitcast %struct.__va_list_tag.13* %arraydecay to i8*, !dbg !3953
  call void @llvm.va_start(i8* %arraydecay18), !dbg !3953
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3955
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay19, i32 0, i32 0, !dbg !3955
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !3955
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !3955
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3955

vaarg.in_reg:                                     ; preds = %if.then17
  %11 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay19, i32 0, i32 3, !dbg !3955
  %reg_save_area = load i8*, i8** %11, align 16, !dbg !3955
  %12 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset, !dbg !3955
  %13 = bitcast i8* %12 to %struct.flock**, !dbg !3955
  %14 = add i32 %gp_offset, 8, !dbg !3955
  store i32 %14, i32* %gp_offset_p, align 16, !dbg !3955
  br label %vaarg.end, !dbg !3955

vaarg.in_mem:                                     ; preds = %if.then17
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay19, i32 0, i32 2, !dbg !3955
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !3955
  %15 = bitcast i8* %overflow_arg_area to %struct.flock**, !dbg !3955
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !3955
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3955
  br label %vaarg.end, !dbg !3955

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct.flock** [ %13, %vaarg.in_reg ], [ %15, %vaarg.in_mem ], !dbg !3955
  %16 = load %struct.flock*, %struct.flock** %vaarg.addr, align 8, !dbg !3955
  store %struct.flock* %16, %struct.flock** %lock, align 8, !dbg !3956
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3957
  %arraydecay2021 = bitcast %struct.__va_list_tag.13* %arraydecay20 to i8*, !dbg !3957
  call void @llvm.va_end(i8* %arraydecay2021), !dbg !3957
  br label %if.end40, !dbg !3958

if.else22:                                        ; preds = %if.else
  %arraydecay23 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3959
  %arraydecay2324 = bitcast %struct.__va_list_tag.13* %arraydecay23 to i8*, !dbg !3959
  call void @llvm.va_start(i8* %arraydecay2324), !dbg !3959
  %arraydecay25 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3961
  %gp_offset_p26 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay25, i32 0, i32 0, !dbg !3961
  %gp_offset27 = load i32, i32* %gp_offset_p26, align 16, !dbg !3961
  %fits_in_gp28 = icmp ule i32 %gp_offset27, 40, !dbg !3961
  br i1 %fits_in_gp28, label %vaarg.in_reg29, label %vaarg.in_mem31, !dbg !3961

vaarg.in_reg29:                                   ; preds = %if.else22
  %17 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay25, i32 0, i32 3, !dbg !3961
  %reg_save_area30 = load i8*, i8** %17, align 16, !dbg !3961
  %18 = getelementptr i8, i8* %reg_save_area30, i32 %gp_offset27, !dbg !3961
  %19 = bitcast i8* %18 to i32*, !dbg !3961
  %20 = add i32 %gp_offset27, 8, !dbg !3961
  store i32 %20, i32* %gp_offset_p26, align 16, !dbg !3961
  br label %vaarg.end35, !dbg !3961

vaarg.in_mem31:                                   ; preds = %if.else22
  %overflow_arg_area_p32 = getelementptr inbounds %struct.__va_list_tag.13, %struct.__va_list_tag.13* %arraydecay25, i32 0, i32 2, !dbg !3961
  %overflow_arg_area33 = load i8*, i8** %overflow_arg_area_p32, align 8, !dbg !3961
  %21 = bitcast i8* %overflow_arg_area33 to i32*, !dbg !3961
  %overflow_arg_area.next34 = getelementptr i8, i8* %overflow_arg_area33, i32 8, !dbg !3961
  store i8* %overflow_arg_area.next34, i8** %overflow_arg_area_p32, align 8, !dbg !3961
  br label %vaarg.end35, !dbg !3961

vaarg.end35:                                      ; preds = %vaarg.in_mem31, %vaarg.in_reg29
  %vaarg.addr36 = phi i32* [ %19, %vaarg.in_reg29 ], [ %21, %vaarg.in_mem31 ], !dbg !3961
  %22 = load i32, i32* %vaarg.addr36, align 4, !dbg !3961
  store i32 %22, i32* %arg, align 4, !dbg !3962
  %arraydecay37 = getelementptr inbounds [1 x %struct.__va_list_tag.13], [1 x %struct.__va_list_tag.13]* %ap, i64 0, i64 0, !dbg !3963
  %arraydecay3738 = bitcast %struct.__va_list_tag.13* %arraydecay37 to i8*, !dbg !3963
  call void @llvm.va_end(i8* %arraydecay3738), !dbg !3963
  br label %if.end40

if.end40:                                         ; preds = %vaarg.end, %vaarg.end35, %if.then11
  %23 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3964
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %23, i32 0, i32 3, !dbg !3966
  %24 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !3966
  %tobool41 = icmp ne %struct.exe_disk_file_t.16* %24, null, !dbg !3964
  br i1 %tobool41, label %if.then42, label %if.end60, !dbg !3967

if.then42:                                        ; preds = %if.end40
  %25 = load i32, i32* %cmd.addr, align 4, !dbg !3968
  switch i32 %25, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb47
    i32 3, label %sw.bb56
    i32 5, label %sw.bb57
    i32 6, label %sw.bb58
  ], !dbg !3970

sw.bb:                                            ; preds = %if.then42
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !3971, metadata !DIExpression()), !dbg !3974
  store i32 0, i32* %flags, align 4, !dbg !3974
  %26 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3975
  %flags43 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %26, i32 0, i32 1, !dbg !3977
  %27 = load i32, i32* %flags43, align 4, !dbg !3977
  %and = and i32 %27, 2, !dbg !3978
  %tobool44 = icmp ne i32 %and, 0, !dbg !3978
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !3979

if.then45:                                        ; preds = %sw.bb
  %28 = load i32, i32* %flags, align 4, !dbg !3980
  %or = or i32 %28, 1, !dbg !3980
  store i32 %or, i32* %flags, align 4, !dbg !3980
  br label %if.end46, !dbg !3981

if.end46:                                         ; preds = %if.then45, %sw.bb
  %29 = load i32, i32* %flags, align 4, !dbg !3982
  store i32 %29, i32* %retval, align 4, !dbg !3983
  br label %return, !dbg !3983

sw.bb47:                                          ; preds = %if.then42
  %30 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3984
  %flags48 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %30, i32 0, i32 1, !dbg !3986
  %31 = load i32, i32* %flags48, align 4, !dbg !3987
  %and49 = and i32 %31, -3, !dbg !3987
  store i32 %and49, i32* %flags48, align 4, !dbg !3987
  %32 = load i32, i32* %arg, align 4, !dbg !3988
  %and50 = and i32 %32, 1, !dbg !3990
  %tobool51 = icmp ne i32 %and50, 0, !dbg !3990
  br i1 %tobool51, label %if.then52, label %if.end55, !dbg !3991

if.then52:                                        ; preds = %sw.bb47
  %33 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !3992
  %flags53 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %33, i32 0, i32 1, !dbg !3993
  %34 = load i32, i32* %flags53, align 4, !dbg !3994
  %or54 = or i32 %34, 2, !dbg !3994
  store i32 %or54, i32* %flags53, align 4, !dbg !3994
  br label %if.end55, !dbg !3992

if.end55:                                         ; preds = %if.then52, %sw.bb47
  store i32 0, i32* %retval, align 4, !dbg !3995
  br label %return, !dbg !3995

sw.bb56:                                          ; preds = %if.then42
  store i32 0, i32* %retval, align 4, !dbg !3996
  br label %return, !dbg !3996

sw.bb57:                                          ; preds = %if.then42
  %35 = load %struct.flock*, %struct.flock** %lock, align 8, !dbg !3998
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %35, i32 0, i32 0, !dbg !4000
  store i16 2, i16* %l_type, align 8, !dbg !4001
  store i32 0, i32* %retval, align 4, !dbg !4002
  br label %return, !dbg !4002

sw.bb58:                                          ; preds = %if.then42
  store i32 0, i32* %retval, align 4, !dbg !4003
  br label %return, !dbg !4003

sw.default:                                       ; preds = %if.then42
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12.98, i64 0, i64 0)), !dbg !4005
  %call59 = call i32* @__errno_location() #15, !dbg !4006
  store i32 22, i32* %call59, align 4, !dbg !4007
  store i32 -1, i32* %retval, align 4, !dbg !4008
  br label %return, !dbg !4008

if.end60:                                         ; preds = %if.end40
  %36 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4009
  %fd61 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %36, i32 0, i32 0, !dbg !4010
  %37 = load i32, i32* %fd61, align 8, !dbg !4010
  %38 = load i32, i32* %cmd.addr, align 4, !dbg !4011
  %39 = load i32, i32* %arg, align 4, !dbg !4012
  %call62 = call i64 (i64, ...) @syscall(i64 72, i32 %37, i32 %38, i32 %39) #11, !dbg !4013
  %conv = trunc i64 %call62 to i32, !dbg !4013
  store i32 %conv, i32* %retval, align 4, !dbg !4014
  br label %return, !dbg !4014

return:                                           ; preds = %if.end60, %sw.default, %sw.bb58, %sw.bb57, %sw.bb56, %if.end55, %if.end46, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !4015
  ret i32 %40, !dbg !4015
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__fd_statfs(i8* %path, %struct.statfs.11* %buf) #0 !dbg !4016 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca %struct.statfs.11*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  store %struct.statfs.11* %buf, %struct.statfs.11** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.statfs.11** %buf.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !4044, metadata !DIExpression()), !dbg !4045
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4046
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !4047
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4045
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4048
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !4048
  br i1 %tobool, label %if.then, label %if.end, !dbg !4050

if.then:                                          ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10.89, i64 0, i64 0)), !dbg !4051
  %call1 = call i32* @__errno_location() #15, !dbg !4053
  store i32 2, i32* %call1, align 4, !dbg !4054
  store i32 -1, i32* %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8, !dbg !4056
  %call2 = call i8* @__concretize_string(i8* %2), !dbg !4057
  %3 = load %struct.statfs.11*, %struct.statfs.11** %buf.addr, align 8, !dbg !4058
  %call3 = call i64 (i64, ...) @syscall(i64 137, i8* %call2, %struct.statfs.11* %3) #11, !dbg !4059
  %conv = trunc i64 %call3 to i32, !dbg !4059
  store i32 %conv, i32* %retval, align 4, !dbg !4060
  br label %return, !dbg !4060

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4061
  ret i32 %4, !dbg !4061
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fstatfs(i32 %fd, %struct.statfs.11* nonnull %buf) #0 !dbg !4062 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca %struct.statfs.11*, align 8
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !4065, metadata !DIExpression()), !dbg !4066
  store %struct.statfs.11* %buf, %struct.statfs.11** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.statfs.11** %buf.addr, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !4069, metadata !DIExpression()), !dbg !4070
  %0 = load i32, i32* %fd.addr, align 4, !dbg !4071
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !4072
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !4070
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4073
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !4073
  br i1 %tobool, label %if.end, label %if.then, !dbg !4075

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !4076
  store i32 9, i32* %call1, align 4, !dbg !4078
  store i32 -1, i32* %retval, align 4, !dbg !4079
  br label %return, !dbg !4079

if.end:                                           ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4080
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !4082
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4082
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !4080
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4083

if.then3:                                         ; preds = %if.end
  call void @klee_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23.111, i64 0, i64 0)), !dbg !4084
  %call4 = call i32* @__errno_location() #15, !dbg !4086
  store i32 9, i32* %call4, align 4, !dbg !4087
  store i32 -1, i32* %retval, align 4, !dbg !4088
  br label %return, !dbg !4088

if.end5:                                          ; preds = %if.end
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4089
  %fd6 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %4, i32 0, i32 0, !dbg !4090
  %5 = load i32, i32* %fd6, align 8, !dbg !4090
  %6 = load %struct.statfs.11*, %struct.statfs.11** %buf.addr, align 8, !dbg !4091
  %call7 = call i64 (i64, ...) @syscall(i64 138, i32 %5, %struct.statfs.11* %6) #11, !dbg !4092
  %conv = trunc i64 %call7 to i32, !dbg !4092
  store i32 %conv, i32* %retval, align 4, !dbg !4093
  br label %return, !dbg !4093

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4094
  ret i32 %7, !dbg !4094
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fsync(i32 %fd) #0 !dbg !4095 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !4096, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !4098, metadata !DIExpression()), !dbg !4099
  %0 = load i32, i32* %fd.addr, align 4, !dbg !4100
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !4101
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !4099
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4102
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !4102
  br i1 %tobool, label %if.else, label %if.then, !dbg !4104

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !4105
  store i32 9, i32* %call1, align 4, !dbg !4107
  store i32 -1, i32* %retval, align 4, !dbg !4108
  br label %return, !dbg !4108

if.else:                                          ; preds = %entry
  %2 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4109
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %2, i32 0, i32 3, !dbg !4111
  %3 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4111
  %tobool2 = icmp ne %struct.exe_disk_file_t.16* %3, null, !dbg !4109
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4112

if.then3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !4113
  br label %return, !dbg !4113

if.end4:                                          ; preds = %if.else
  %4 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4115
  %fd5 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %4, i32 0, i32 0, !dbg !4116
  %5 = load i32, i32* %fd5, align 8, !dbg !4116
  %call6 = call i64 (i64, ...) @syscall(i64 74, i32 %5) #11, !dbg !4117
  %conv = trunc i64 %call6 to i32, !dbg !4117
  store i32 %conv, i32* %retval, align 4, !dbg !4118
  br label %return, !dbg !4118

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4119
  ret i32 %6, !dbg !4119
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dup2(i32 %oldfd, i32 %newfd) #0 !dbg !4120 {
entry:
  %retval = alloca i32, align 4
  %oldfd.addr = alloca i32, align 4
  %newfd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %f2 = alloca %struct.exe_file_t.17*, align 8
  store i32 %oldfd, i32* %oldfd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %oldfd.addr, metadata !4123, metadata !DIExpression()), !dbg !4124
  store i32 %newfd, i32* %newfd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %newfd.addr, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !4127, metadata !DIExpression()), !dbg !4128
  %0 = load i32, i32* %oldfd.addr, align 4, !dbg !4129
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !4130
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !4128
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4131
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !4131
  %2 = load i32, i32* %newfd.addr, align 4
  %cmp = icmp sge i32 %2, 0
  %or.cond = select i1 %tobool, i1 %cmp, i1 false, !dbg !4133
  %3 = load i32, i32* %newfd.addr, align 4
  %cmp1 = icmp slt i32 %3, 32
  %or.cond1 = select i1 %or.cond, i1 %cmp1, i1 false, !dbg !4133
  br i1 %or.cond1, label %if.else, label %if.then, !dbg !4133

if.then:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #15, !dbg !4134
  store i32 9, i32* %call2, align 4, !dbg !4136
  store i32 -1, i32* %retval, align 4, !dbg !4137
  br label %return, !dbg !4137

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f2, metadata !4138, metadata !DIExpression()), !dbg !4140
  %4 = load i32, i32* %newfd.addr, align 4, !dbg !4141
  %idxprom = sext i32 %4 to i64, !dbg !4142
  %arrayidx = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom, !dbg !4142
  store %struct.exe_file_t.17* %arrayidx, %struct.exe_file_t.17** %f2, align 8, !dbg !4140
  %5 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f2, align 8, !dbg !4143
  %flags = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %5, i32 0, i32 1, !dbg !4145
  %6 = load i32, i32* %flags, align 4, !dbg !4145
  %and = and i32 %6, 1, !dbg !4146
  %tobool3 = icmp ne i32 %and, 0, !dbg !4146
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4147

if.then4:                                         ; preds = %if.else
  %7 = load i32, i32* %newfd.addr, align 4, !dbg !4148
  %call5 = call i32 @close(i32 %7), !dbg !4149
  br label %if.end, !dbg !4149

if.end:                                           ; preds = %if.then4, %if.else
  %8 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f2, align 8, !dbg !4150
  %9 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4151
  %10 = bitcast %struct.exe_file_t.17* %8 to i8*, !dbg !4152
  %11 = bitcast %struct.exe_file_t.17* %9 to i8*, !dbg !4152
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 24), !dbg !4152
  %13 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f2, align 8, !dbg !4153
  %flags6 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %13, i32 0, i32 1, !dbg !4154
  %14 = load i32, i32* %flags6, align 4, !dbg !4155
  %and7 = and i32 %14, -3, !dbg !4155
  store i32 %and7, i32* %flags6, align 4, !dbg !4155
  %15 = load i32, i32* %newfd.addr, align 4, !dbg !4156
  store i32 %15, i32* %retval, align 4, !dbg !4157
  br label %return, !dbg !4157

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4158
  ret i32 %16, !dbg !4158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dup(i32 %oldfd) #0 !dbg !4159 {
entry:
  %retval = alloca i32, align 4
  %oldfd.addr = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %fd = alloca i32, align 4
  store i32 %oldfd, i32* %oldfd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %oldfd.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !4162, metadata !DIExpression()), !dbg !4163
  %0 = load i32, i32* %oldfd.addr, align 4, !dbg !4164
  %call = call %struct.exe_file_t.17* @__get_file(i32 %0), !dbg !4165
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !4163
  %1 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4166
  %tobool = icmp ne %struct.exe_file_t.17* %1, null, !dbg !4166
  br i1 %tobool, label %if.else, label %if.then, !dbg !4168

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !4169
  store i32 9, i32* %call1, align 4, !dbg !4171
  store i32 -1, i32* %retval, align 4, !dbg !4172
  br label %return, !dbg !4172

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !4173, metadata !DIExpression()), !dbg !4175
  store i32 0, i32* %fd, align 4, !dbg !4176
  br label %for.cond, !dbg !4178

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, i32* %fd, align 4, !dbg !4179
  %cmp = icmp slt i32 %2, 32, !dbg !4181
  br i1 %cmp, label %for.body, label %for.end, !dbg !4182

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %fd, align 4, !dbg !4183
  %idxprom = sext i32 %3 to i64, !dbg !4185
  %arrayidx = getelementptr inbounds [32 x %struct.exe_file_t.17], [32 x %struct.exe_file_t.17]* getelementptr inbounds (%struct.exe_sym_env_t.19, %struct.exe_sym_env_t.19* bitcast ({ <{ %struct.exe_file_t.17, %struct.exe_file_t.17, %struct.exe_file_t.17, [29 x %struct.exe_file_t.17] }>, i32, i32 }* @__exe_env to %struct.exe_sym_env_t.19*), i32 0, i32 0), i64 0, i64 %idxprom, !dbg !4185
  %flags = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %arrayidx, i32 0, i32 1, !dbg !4186
  %4 = load i32, i32* %flags, align 4, !dbg !4186
  %and = and i32 %4, 1, !dbg !4187
  %tobool2 = icmp ne i32 %and, 0, !dbg !4187
  br i1 %tobool2, label %for.inc, label %for.end, !dbg !4188

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %fd, align 4, !dbg !4189
  %inc = add nsw i32 %5, 1, !dbg !4189
  store i32 %inc, i32* %fd, align 4, !dbg !4189
  br label %for.cond, !dbg !4190, !llvm.loop !4191

for.end:                                          ; preds = %for.body, %for.cond
  %6 = load i32, i32* %fd, align 4, !dbg !4193
  %cmp4 = icmp eq i32 %6, 32, !dbg !4195
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !4196

if.then5:                                         ; preds = %for.end
  %call6 = call i32* @__errno_location() #15, !dbg !4197
  store i32 24, i32* %call6, align 4, !dbg !4199
  store i32 -1, i32* %retval, align 4, !dbg !4200
  br label %return, !dbg !4200

if.else7:                                         ; preds = %for.end
  %7 = load i32, i32* %oldfd.addr, align 4, !dbg !4201
  %8 = load i32, i32* %fd, align 4, !dbg !4203
  %call8 = call i32 @dup2(i32 %7, i32 %8) #11, !dbg !4204
  store i32 %call8, i32* %retval, align 4, !dbg !4205
  br label %return, !dbg !4205

return:                                           ; preds = %if.else7, %if.then5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4206
  ret i32 %9, !dbg !4206
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rmdir(i8* nonnull %pathname) #0 !dbg !4207 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !4210, metadata !DIExpression()), !dbg !4211
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !4212
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !4213
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4211
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4214
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !4214
  br i1 %tobool, label %if.then, label %if.end, !dbg !4216

if.then:                                          ; preds = %entry
  %2 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4217
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %2, i32 0, i32 2, !dbg !4217
  %3 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !4217
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %3, i32 0, i32 3, !dbg !4217
  %4 = load i32, i32* %st_mode, align 8, !dbg !4217
  %and = and i32 %4, 61440, !dbg !4217
  %cmp = icmp eq i32 %and, 16384, !dbg !4217
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4220

if.then1:                                         ; preds = %if.then
  %5 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4221
  %stat2 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %5, i32 0, i32 2, !dbg !4223
  %6 = load %struct.stat64.15*, %struct.stat64.15** %stat2, align 8, !dbg !4223
  %st_ino = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %6, i32 0, i32 1, !dbg !4224
  store i64 0, i64* %st_ino, align 8, !dbg !4225
  store i32 0, i32* %retval, align 4, !dbg !4226
  br label %return, !dbg !4226

if.else:                                          ; preds = %if.then
  %call3 = call i32* @__errno_location() #15, !dbg !4227
  store i32 20, i32* %call3, align 4, !dbg !4229
  store i32 -1, i32* %retval, align 4, !dbg !4230
  br label %return, !dbg !4230

if.end:                                           ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24.112, i64 0, i64 0)), !dbg !4231
  %call4 = call i32* @__errno_location() #15, !dbg !4232
  store i32 1, i32* %call4, align 4, !dbg !4233
  store i32 -1, i32* %retval, align 4, !dbg !4234
  br label %return, !dbg !4234

return:                                           ; preds = %if.end, %if.else, %if.then1
  %7 = load i32, i32* %retval, align 4, !dbg !4235
  ret i32 %7, !dbg !4235
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unlink(i8* nonnull %pathname) #0 !dbg !4236 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !4239, metadata !DIExpression()), !dbg !4240
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !4241
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !4242
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4240
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4243
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !4243
  br i1 %tobool, label %if.then, label %if.end, !dbg !4245

if.then:                                          ; preds = %entry
  %2 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4246
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %2, i32 0, i32 2, !dbg !4246
  %3 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !4246
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %3, i32 0, i32 3, !dbg !4246
  %4 = load i32, i32* %st_mode, align 8, !dbg !4246
  %and = and i32 %4, 61440, !dbg !4246
  %cmp = icmp eq i32 %and, 32768, !dbg !4246
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4249

if.then1:                                         ; preds = %if.then
  %5 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4250
  %stat2 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %5, i32 0, i32 2, !dbg !4252
  %6 = load %struct.stat64.15*, %struct.stat64.15** %stat2, align 8, !dbg !4252
  %st_ino = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %6, i32 0, i32 1, !dbg !4253
  store i64 0, i64* %st_ino, align 8, !dbg !4254
  store i32 0, i32* %retval, align 4, !dbg !4255
  br label %return, !dbg !4255

if.else:                                          ; preds = %if.then
  %7 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4256
  %stat3 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %7, i32 0, i32 2, !dbg !4256
  %8 = load %struct.stat64.15*, %struct.stat64.15** %stat3, align 8, !dbg !4256
  %st_mode4 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %8, i32 0, i32 3, !dbg !4256
  %9 = load i32, i32* %st_mode4, align 8, !dbg !4256
  %and5 = and i32 %9, 61440, !dbg !4256
  %cmp6 = icmp eq i32 %and5, 16384, !dbg !4256
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !4258

if.then7:                                         ; preds = %if.else
  %call8 = call i32* @__errno_location() #15, !dbg !4259
  store i32 21, i32* %call8, align 4, !dbg !4261
  store i32 -1, i32* %retval, align 4, !dbg !4262
  br label %return, !dbg !4262

if.else9:                                         ; preds = %if.else
  %call10 = call i32* @__errno_location() #15, !dbg !4263
  store i32 1, i32* %call10, align 4, !dbg !4265
  store i32 -1, i32* %retval, align 4, !dbg !4266
  br label %return, !dbg !4266

if.end:                                           ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24.112, i64 0, i64 0)), !dbg !4267
  %call11 = call i32* @__errno_location() #15, !dbg !4268
  store i32 1, i32* %call11, align 4, !dbg !4269
  store i32 -1, i32* %retval, align 4, !dbg !4270
  br label %return, !dbg !4270

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %10 = load i32, i32* %retval, align 4, !dbg !4271
  ret i32 %10, !dbg !4271
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unlinkat(i32 %dirfd, i8* nonnull %pathname, i32 %flags) #0 !dbg !4272 {
entry:
  %retval = alloca i32, align 4
  %dirfd.addr = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i32 %dirfd, i32* %dirfd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dirfd.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !4281, metadata !DIExpression()), !dbg !4282
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !4283
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !4284
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4282
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4285
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !4285
  br i1 %tobool, label %if.then, label %if.end, !dbg !4287

if.then:                                          ; preds = %entry
  %2 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4288
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %2, i32 0, i32 2, !dbg !4288
  %3 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !4288
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %3, i32 0, i32 3, !dbg !4288
  %4 = load i32, i32* %st_mode, align 8, !dbg !4288
  %and = and i32 %4, 61440, !dbg !4288
  %cmp = icmp eq i32 %and, 32768, !dbg !4288
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4291

if.then1:                                         ; preds = %if.then
  %5 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4292
  %stat2 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %5, i32 0, i32 2, !dbg !4294
  %6 = load %struct.stat64.15*, %struct.stat64.15** %stat2, align 8, !dbg !4294
  %st_ino = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %6, i32 0, i32 1, !dbg !4295
  store i64 0, i64* %st_ino, align 8, !dbg !4296
  store i32 0, i32* %retval, align 4, !dbg !4297
  br label %return, !dbg !4297

if.else:                                          ; preds = %if.then
  %7 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4298
  %stat3 = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %7, i32 0, i32 2, !dbg !4298
  %8 = load %struct.stat64.15*, %struct.stat64.15** %stat3, align 8, !dbg !4298
  %st_mode4 = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %8, i32 0, i32 3, !dbg !4298
  %9 = load i32, i32* %st_mode4, align 8, !dbg !4298
  %and5 = and i32 %9, 61440, !dbg !4298
  %cmp6 = icmp eq i32 %and5, 16384, !dbg !4298
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !4300

if.then7:                                         ; preds = %if.else
  %call8 = call i32* @__errno_location() #15, !dbg !4301
  store i32 21, i32* %call8, align 4, !dbg !4303
  store i32 -1, i32* %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

if.else9:                                         ; preds = %if.else
  %call10 = call i32* @__errno_location() #15, !dbg !4305
  store i32 1, i32* %call10, align 4, !dbg !4307
  store i32 -1, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

if.end:                                           ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24.112, i64 0, i64 0)), !dbg !4309
  %call11 = call i32* @__errno_location() #15, !dbg !4310
  store i32 1, i32* %call11, align 4, !dbg !4311
  store i32 -1, i32* %retval, align 4, !dbg !4312
  br label %return, !dbg !4312

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %10 = load i32, i32* %retval, align 4, !dbg !4313
  ret i32 %10, !dbg !4313
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @readlink(i8* nonnull %path, i8* nonnull %buf, i64 %bufsize) #0 !dbg !4314 {
entry:
  %retval = alloca i64, align 8
  %path.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %dfile = alloca %struct.exe_disk_file_t.16*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  store i64 %bufsize, i64* %bufsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bufsize.addr, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata %struct.exe_disk_file_t.16** %dfile, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4325
  %call = call %struct.exe_disk_file_t.16* @__get_sym_file(i8* %0), !dbg !4326
  store %struct.exe_disk_file_t.16* %call, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4324
  %1 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4327
  %tobool = icmp ne %struct.exe_disk_file_t.16* %1, null, !dbg !4327
  br i1 %tobool, label %if.then, label %if.end20, !dbg !4329

if.then:                                          ; preds = %entry
  %2 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4330
  %stat = getelementptr inbounds %struct.exe_disk_file_t.16, %struct.exe_disk_file_t.16* %2, i32 0, i32 2, !dbg !4330
  %3 = load %struct.stat64.15*, %struct.stat64.15** %stat, align 8, !dbg !4330
  %st_mode = getelementptr inbounds %struct.stat64.15, %struct.stat64.15* %3, i32 0, i32 3, !dbg !4330
  %4 = load i32, i32* %st_mode, align 8, !dbg !4330
  %and = and i32 %4, 61440, !dbg !4330
  %cmp = icmp eq i32 %and, 40960, !dbg !4330
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4333

if.then1:                                         ; preds = %if.then
  %5 = load i8*, i8** %path.addr, align 8, !dbg !4334
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0, !dbg !4334
  %6 = load i8, i8* %arrayidx, align 1, !dbg !4334
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !4336
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !4336
  store i8 %6, i8* %arrayidx2, align 1, !dbg !4337
  %8 = load i64, i64* %bufsize.addr, align 8, !dbg !4338
  %cmp3 = icmp ugt i64 %8, 1, !dbg !4340
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4341

if.then4:                                         ; preds = %if.then1
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4342
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4342
  store i8 46, i8* %arrayidx5, align 1, !dbg !4343
  br label %if.end, !dbg !4342

if.end:                                           ; preds = %if.then4, %if.then1
  %10 = load i64, i64* %bufsize.addr, align 8, !dbg !4344
  %cmp6 = icmp ugt i64 %10, 2, !dbg !4346
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !4347

if.then7:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !4348
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !4348
  store i8 108, i8* %arrayidx8, align 1, !dbg !4349
  br label %if.end9, !dbg !4348

if.end9:                                          ; preds = %if.then7, %if.end
  %12 = load i64, i64* %bufsize.addr, align 8, !dbg !4350
  %cmp10 = icmp ugt i64 %12, 3, !dbg !4352
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !4353

if.then11:                                        ; preds = %if.end9
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !4354
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !4354
  store i8 110, i8* %arrayidx12, align 1, !dbg !4355
  br label %if.end13, !dbg !4354

if.end13:                                         ; preds = %if.then11, %if.end9
  %14 = load i64, i64* %bufsize.addr, align 8, !dbg !4356
  %cmp14 = icmp ugt i64 %14, 4, !dbg !4358
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !4359

if.then15:                                        ; preds = %if.end13
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !4360
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !4360
  store i8 107, i8* %arrayidx16, align 1, !dbg !4361
  br label %if.end17, !dbg !4360

if.end17:                                         ; preds = %if.then15, %if.end13
  %16 = load i64, i64* %bufsize.addr, align 8, !dbg !4362
  %cmp18 = icmp ugt i64 %16, 5, !dbg !4363
  %17 = load i64, i64* %bufsize.addr, align 8, !dbg !4364
  %cond = select i1 %cmp18, i64 5, i64 %17, !dbg !4364
  store i64 %cond, i64* %retval, align 8, !dbg !4365
  br label %return, !dbg !4365

if.else:                                          ; preds = %if.then
  %call19 = call i32* @__errno_location() #15, !dbg !4366
  store i32 22, i32* %call19, align 4, !dbg !4368
  store i64 -1, i64* %retval, align 8, !dbg !4369
  br label %return, !dbg !4369

if.end20:                                         ; preds = %entry
  %18 = load i8*, i8** %path.addr, align 8, !dbg !4370
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !4371
  %20 = load i64, i64* %bufsize.addr, align 8, !dbg !4372
  %call21 = call i64 (i64, ...) @syscall(i64 89, i8* %18, i8* %19, i64 %20) #11, !dbg !4373
  store i64 %call21, i64* %retval, align 8, !dbg !4374
  br label %return, !dbg !4374

return:                                           ; preds = %if.end20, %if.else, %if.end17
  %21 = load i64, i64* %retval, align 8, !dbg !4375
  ret i64 %21, !dbg !4375
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @select(i32 %nfds, %struct.fd_set* %read, %struct.fd_set* %write, %struct.fd_set* %except, %struct.timespec.14* %timeout) #0 !dbg !4376 {
entry:
  %retval = alloca i32, align 4
  %nfds.addr = alloca i32, align 4
  %read.addr = alloca %struct.fd_set*, align 8
  %write.addr = alloca %struct.fd_set*, align 8
  %except.addr = alloca %struct.fd_set*, align 8
  %timeout.addr = alloca %struct.timespec.14*, align 8
  %in_read = alloca %struct.fd_set, align 8
  %in_write = alloca %struct.fd_set, align 8
  %in_except = alloca %struct.fd_set, align 8
  %os_read = alloca %struct.fd_set, align 8
  %os_write = alloca %struct.fd_set, align 8
  %os_except = alloca %struct.fd_set, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %os_nfds = alloca i32, align 4
  %f = alloca %struct.exe_file_t.17*, align 8
  %tv = alloca %struct.timespec.14, align 8
  %r = alloca i32, align 4
  %f182 = alloca %struct.exe_file_t.17*, align 8
  store i32 %nfds, i32* %nfds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nfds.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  store %struct.fd_set* %read, %struct.fd_set** %read.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %read.addr, metadata !4390, metadata !DIExpression()), !dbg !4391
  store %struct.fd_set* %write, %struct.fd_set** %write.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %write.addr, metadata !4392, metadata !DIExpression()), !dbg !4393
  store %struct.fd_set* %except, %struct.fd_set** %except.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_set** %except.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  store %struct.timespec.14* %timeout, %struct.timespec.14** %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec.14** %timeout.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata %struct.fd_set* %in_read, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata %struct.fd_set* %in_write, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata %struct.fd_set* %in_except, metadata !4402, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.declare(metadata %struct.fd_set* %os_read, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.declare(metadata %struct.fd_set* %os_write, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.declare(metadata %struct.fd_set* %os_except, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4412, metadata !DIExpression()), !dbg !4413
  store i32 0, i32* %count, align 4, !dbg !4413
  call void @llvm.dbg.declare(metadata i32* %os_nfds, metadata !4414, metadata !DIExpression()), !dbg !4415
  store i32 0, i32* %os_nfds, align 4, !dbg !4415
  %0 = load %struct.fd_set*, %struct.fd_set** %read.addr, align 8, !dbg !4416
  %tobool = icmp ne %struct.fd_set* %0, null, !dbg !4416
  br i1 %tobool, label %if.then, label %if.else, !dbg !4418

if.then:                                          ; preds = %entry
  %1 = load %struct.fd_set*, %struct.fd_set** %read.addr, align 8, !dbg !4419
  %2 = bitcast %struct.fd_set* %in_read to i8*, !dbg !4421
  %3 = bitcast %struct.fd_set* %1 to i8*, !dbg !4421
  %4 = call i8* @memcpy(i8* %2, i8* %3, i64 128), !dbg !4421
  %5 = load %struct.fd_set*, %struct.fd_set** %read.addr, align 8, !dbg !4422
  %6 = bitcast %struct.fd_set* %5 to i8*, !dbg !4422
  %7 = call i8* @memset(i8* %6, i32 0, i64 128), !dbg !4422
  br label %if.end, !dbg !4423

if.else:                                          ; preds = %entry
  %8 = bitcast %struct.fd_set* %in_read to i8*, !dbg !4424
  %9 = call i8* @memset(i8* %8, i32 0, i64 128), !dbg !4424
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.fd_set*, %struct.fd_set** %write.addr, align 8, !dbg !4426
  %tobool1 = icmp ne %struct.fd_set* %10, null, !dbg !4426
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !4428

if.then2:                                         ; preds = %if.end
  %11 = load %struct.fd_set*, %struct.fd_set** %write.addr, align 8, !dbg !4429
  %12 = bitcast %struct.fd_set* %in_write to i8*, !dbg !4431
  %13 = bitcast %struct.fd_set* %11 to i8*, !dbg !4431
  %14 = call i8* @memcpy(i8* %12, i8* %13, i64 128), !dbg !4431
  %15 = load %struct.fd_set*, %struct.fd_set** %write.addr, align 8, !dbg !4432
  %16 = bitcast %struct.fd_set* %15 to i8*, !dbg !4432
  %17 = call i8* @memset(i8* %16, i32 0, i64 128), !dbg !4432
  br label %if.end4, !dbg !4433

if.else3:                                         ; preds = %if.end
  %18 = bitcast %struct.fd_set* %in_write to i8*, !dbg !4434
  %19 = call i8* @memset(i8* %18, i32 0, i64 128), !dbg !4434
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %20 = load %struct.fd_set*, %struct.fd_set** %except.addr, align 8, !dbg !4436
  %tobool5 = icmp ne %struct.fd_set* %20, null, !dbg !4436
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !4438

if.then6:                                         ; preds = %if.end4
  %21 = load %struct.fd_set*, %struct.fd_set** %except.addr, align 8, !dbg !4439
  %22 = bitcast %struct.fd_set* %in_except to i8*, !dbg !4441
  %23 = bitcast %struct.fd_set* %21 to i8*, !dbg !4441
  %24 = call i8* @memcpy(i8* %22, i8* %23, i64 128), !dbg !4441
  %25 = load %struct.fd_set*, %struct.fd_set** %except.addr, align 8, !dbg !4442
  %26 = bitcast %struct.fd_set* %25 to i8*, !dbg !4442
  %27 = call i8* @memset(i8* %26, i32 0, i64 128), !dbg !4442
  br label %if.end8, !dbg !4443

if.else7:                                         ; preds = %if.end4
  %28 = bitcast %struct.fd_set* %in_except to i8*, !dbg !4444
  %29 = call i8* @memset(i8* %28, i32 0, i64 128), !dbg !4444
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %30 = bitcast %struct.fd_set* %os_read to i8*, !dbg !4446
  %31 = call i8* @memset(i8* %30, i32 0, i64 128), !dbg !4446
  %32 = bitcast %struct.fd_set* %os_write to i8*, !dbg !4447
  %33 = call i8* @memset(i8* %32, i32 0, i64 128), !dbg !4447
  %34 = bitcast %struct.fd_set* %os_except to i8*, !dbg !4448
  %35 = call i8* @memset(i8* %34, i32 0, i64 128), !dbg !4448
  store i32 0, i32* %i, align 4, !dbg !4449
  br label %for.cond, !dbg !4451

for.cond:                                         ; preds = %for.inc, %if.end8
  %36 = load i32, i32* %i, align 4, !dbg !4452
  %37 = load i32, i32* %nfds.addr, align 4, !dbg !4454
  %cmp = icmp slt i32 %36, %37, !dbg !4455
  br i1 %cmp, label %for.body, label %for.end, !dbg !4456

for.body:                                         ; preds = %for.cond
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_read, i32 0, i32 0, !dbg !4457
  %38 = load i32, i32* %i, align 4, !dbg !4457
  %div = sdiv i32 %38, 64, !dbg !4457
  %idxprom = sext i32 %div to i64, !dbg !4457
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i64 0, i64 %idxprom, !dbg !4457
  %39 = load i64, i64* %arrayidx, align 8, !dbg !4457
  %40 = load i32, i32* %i, align 4, !dbg !4457
  %rem = srem i32 %40, 64, !dbg !4457
  %int_cast_to_i64 = zext i32 %rem to i64, !dbg !4457
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !4457
  %shl = shl i32 1, %rem, !dbg !4457, !klee.check.shift !4460
  %conv = sext i32 %shl to i64, !dbg !4457
  %and = and i64 %39, %conv, !dbg !4457
  %tobool9 = icmp ne i64 %and, 0, !dbg !4457
  br i1 %tobool9, label %if.then29, label %lor.lhs.false, !dbg !4461

lor.lhs.false:                                    ; preds = %for.body
  %fds_bits10 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_write, i32 0, i32 0, !dbg !4462
  %41 = load i32, i32* %i, align 4, !dbg !4462
  %div11 = sdiv i32 %41, 64, !dbg !4462
  %idxprom12 = sext i32 %div11 to i64, !dbg !4462
  %arrayidx13 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits10, i64 0, i64 %idxprom12, !dbg !4462
  %42 = load i64, i64* %arrayidx13, align 8, !dbg !4462
  %43 = load i32, i32* %i, align 4, !dbg !4462
  %rem14 = srem i32 %43, 64, !dbg !4462
  %int_cast_to_i641 = zext i32 %rem14 to i64, !dbg !4462
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !4462
  %shl15 = shl i32 1, %rem14, !dbg !4462, !klee.check.shift !4460
  %conv16 = sext i32 %shl15 to i64, !dbg !4462
  %and17 = and i64 %42, %conv16, !dbg !4462
  %tobool18 = icmp ne i64 %and17, 0, !dbg !4462
  br i1 %tobool18, label %if.then29, label %lor.lhs.false19, !dbg !4463

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %fds_bits20 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_except, i32 0, i32 0, !dbg !4464
  %44 = load i32, i32* %i, align 4, !dbg !4464
  %div21 = sdiv i32 %44, 64, !dbg !4464
  %idxprom22 = sext i32 %div21 to i64, !dbg !4464
  %arrayidx23 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits20, i64 0, i64 %idxprom22, !dbg !4464
  %45 = load i64, i64* %arrayidx23, align 8, !dbg !4464
  %46 = load i32, i32* %i, align 4, !dbg !4464
  %rem24 = srem i32 %46, 64, !dbg !4464
  %int_cast_to_i642 = zext i32 %rem24 to i64, !dbg !4464
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !4464
  %shl25 = shl i32 1, %rem24, !dbg !4464, !klee.check.shift !4460
  %conv26 = sext i32 %shl25 to i64, !dbg !4464
  %and27 = and i64 %45, %conv26, !dbg !4464
  %tobool28 = icmp ne i64 %and27, 0, !dbg !4464
  br i1 %tobool28, label %if.then29, label %for.inc, !dbg !4465

if.then29:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %for.body
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f, metadata !4466, metadata !DIExpression()), !dbg !4468
  %47 = load i32, i32* %i, align 4, !dbg !4469
  %call = call %struct.exe_file_t.17* @__get_file(i32 %47), !dbg !4470
  store %struct.exe_file_t.17* %call, %struct.exe_file_t.17** %f, align 8, !dbg !4468
  %48 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4471
  %tobool30 = icmp ne %struct.exe_file_t.17* %48, null, !dbg !4471
  br i1 %tobool30, label %if.else33, label %if.then31, !dbg !4473

if.then31:                                        ; preds = %if.then29
  %call32 = call i32* @__errno_location() #15, !dbg !4474
  store i32 9, i32* %call32, align 4, !dbg !4476
  store i32 -1, i32* %retval, align 4, !dbg !4477
  br label %return, !dbg !4477

if.else33:                                        ; preds = %if.then29
  %49 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4478
  %dfile = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %49, i32 0, i32 3, !dbg !4480
  %50 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile, align 8, !dbg !4480
  %tobool34 = icmp ne %struct.exe_disk_file_t.16* %50, null, !dbg !4478
  br i1 %tobool34, label %if.then35, label %if.else92, !dbg !4481

if.then35:                                        ; preds = %if.else33
  %fds_bits36 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_read, i32 0, i32 0, !dbg !4482
  %51 = load i32, i32* %i, align 4, !dbg !4482
  %div37 = sdiv i32 %51, 64, !dbg !4482
  %idxprom38 = sext i32 %div37 to i64, !dbg !4482
  %arrayidx39 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits36, i64 0, i64 %idxprom38, !dbg !4482
  %52 = load i64, i64* %arrayidx39, align 8, !dbg !4482
  %53 = load i32, i32* %i, align 4, !dbg !4482
  %rem40 = srem i32 %53, 64, !dbg !4482
  %int_cast_to_i643 = zext i32 %rem40 to i64, !dbg !4482
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !4482
  %shl41 = shl i32 1, %rem40, !dbg !4482, !klee.check.shift !4460
  %conv42 = sext i32 %shl41 to i64, !dbg !4482
  %and43 = and i64 %52, %conv42, !dbg !4482
  %tobool44 = icmp ne i64 %and43, 0, !dbg !4482
  br i1 %tobool44, label %if.then45, label %if.end53, !dbg !4485

if.then45:                                        ; preds = %if.then35
  %54 = load i32, i32* %i, align 4, !dbg !4486
  %rem46 = srem i32 %54, 64, !dbg !4486
  %int_cast_to_i644 = zext i32 %rem46 to i64, !dbg !4486
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i644), !dbg !4486
  %shl47 = shl i32 1, %rem46, !dbg !4486, !klee.check.shift !4460
  %conv48 = sext i32 %shl47 to i64, !dbg !4486
  %55 = load %struct.fd_set*, %struct.fd_set** %read.addr, align 8, !dbg !4486
  %fds_bits49 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %55, i32 0, i32 0, !dbg !4486
  %56 = load i32, i32* %i, align 4, !dbg !4486
  %div50 = sdiv i32 %56, 64, !dbg !4486
  %idxprom51 = sext i32 %div50 to i64, !dbg !4486
  %arrayidx52 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits49, i64 0, i64 %idxprom51, !dbg !4486
  %57 = load i64, i64* %arrayidx52, align 8, !dbg !4486
  %or = or i64 %57, %conv48, !dbg !4486
  store i64 %or, i64* %arrayidx52, align 8, !dbg !4486
  br label %if.end53, !dbg !4486

if.end53:                                         ; preds = %if.then45, %if.then35
  %fds_bits54 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_write, i32 0, i32 0, !dbg !4487
  %58 = load i32, i32* %i, align 4, !dbg !4487
  %div55 = sdiv i32 %58, 64, !dbg !4487
  %idxprom56 = sext i32 %div55 to i64, !dbg !4487
  %arrayidx57 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits54, i64 0, i64 %idxprom56, !dbg !4487
  %59 = load i64, i64* %arrayidx57, align 8, !dbg !4487
  %60 = load i32, i32* %i, align 4, !dbg !4487
  %rem58 = srem i32 %60, 64, !dbg !4487
  %int_cast_to_i645 = zext i32 %rem58 to i64, !dbg !4487
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i645), !dbg !4487
  %shl59 = shl i32 1, %rem58, !dbg !4487, !klee.check.shift !4460
  %conv60 = sext i32 %shl59 to i64, !dbg !4487
  %and61 = and i64 %59, %conv60, !dbg !4487
  %tobool62 = icmp ne i64 %and61, 0, !dbg !4487
  br i1 %tobool62, label %if.then63, label %if.end72, !dbg !4489

if.then63:                                        ; preds = %if.end53
  %61 = load i32, i32* %i, align 4, !dbg !4490
  %rem64 = srem i32 %61, 64, !dbg !4490
  %int_cast_to_i646 = zext i32 %rem64 to i64, !dbg !4490
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i646), !dbg !4490
  %shl65 = shl i32 1, %rem64, !dbg !4490, !klee.check.shift !4460
  %conv66 = sext i32 %shl65 to i64, !dbg !4490
  %62 = load %struct.fd_set*, %struct.fd_set** %write.addr, align 8, !dbg !4490
  %fds_bits67 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %62, i32 0, i32 0, !dbg !4490
  %63 = load i32, i32* %i, align 4, !dbg !4490
  %div68 = sdiv i32 %63, 64, !dbg !4490
  %idxprom69 = sext i32 %div68 to i64, !dbg !4490
  %arrayidx70 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits67, i64 0, i64 %idxprom69, !dbg !4490
  %64 = load i64, i64* %arrayidx70, align 8, !dbg !4490
  %or71 = or i64 %64, %conv66, !dbg !4490
  store i64 %or71, i64* %arrayidx70, align 8, !dbg !4490
  br label %if.end72, !dbg !4490

if.end72:                                         ; preds = %if.then63, %if.end53
  %fds_bits73 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_except, i32 0, i32 0, !dbg !4491
  %65 = load i32, i32* %i, align 4, !dbg !4491
  %div74 = sdiv i32 %65, 64, !dbg !4491
  %idxprom75 = sext i32 %div74 to i64, !dbg !4491
  %arrayidx76 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits73, i64 0, i64 %idxprom75, !dbg !4491
  %66 = load i64, i64* %arrayidx76, align 8, !dbg !4491
  %67 = load i32, i32* %i, align 4, !dbg !4491
  %rem77 = srem i32 %67, 64, !dbg !4491
  %int_cast_to_i647 = zext i32 %rem77 to i64, !dbg !4491
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i647), !dbg !4491
  %shl78 = shl i32 1, %rem77, !dbg !4491, !klee.check.shift !4460
  %conv79 = sext i32 %shl78 to i64, !dbg !4491
  %and80 = and i64 %66, %conv79, !dbg !4491
  %tobool81 = icmp ne i64 %and80, 0, !dbg !4491
  br i1 %tobool81, label %if.then82, label %if.end91, !dbg !4493

if.then82:                                        ; preds = %if.end72
  %68 = load i32, i32* %i, align 4, !dbg !4494
  %rem83 = srem i32 %68, 64, !dbg !4494
  %int_cast_to_i648 = zext i32 %rem83 to i64, !dbg !4494
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i648), !dbg !4494
  %shl84 = shl i32 1, %rem83, !dbg !4494, !klee.check.shift !4460
  %conv85 = sext i32 %shl84 to i64, !dbg !4494
  %69 = load %struct.fd_set*, %struct.fd_set** %except.addr, align 8, !dbg !4494
  %fds_bits86 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %69, i32 0, i32 0, !dbg !4494
  %70 = load i32, i32* %i, align 4, !dbg !4494
  %div87 = sdiv i32 %70, 64, !dbg !4494
  %idxprom88 = sext i32 %div87 to i64, !dbg !4494
  %arrayidx89 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits86, i64 0, i64 %idxprom88, !dbg !4494
  %71 = load i64, i64* %arrayidx89, align 8, !dbg !4494
  %or90 = or i64 %71, %conv85, !dbg !4494
  store i64 %or90, i64* %arrayidx89, align 8, !dbg !4494
  br label %if.end91, !dbg !4494

if.end91:                                         ; preds = %if.then82, %if.end72
  %72 = load i32, i32* %count, align 4, !dbg !4495
  %inc = add nsw i32 %72, 1, !dbg !4495
  store i32 %inc, i32* %count, align 4, !dbg !4495
  br label %for.inc, !dbg !4496

if.else92:                                        ; preds = %if.else33
  %fds_bits93 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_read, i32 0, i32 0, !dbg !4497
  %73 = load i32, i32* %i, align 4, !dbg !4497
  %div94 = sdiv i32 %73, 64, !dbg !4497
  %idxprom95 = sext i32 %div94 to i64, !dbg !4497
  %arrayidx96 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits93, i64 0, i64 %idxprom95, !dbg !4497
  %74 = load i64, i64* %arrayidx96, align 8, !dbg !4497
  %75 = load i32, i32* %i, align 4, !dbg !4497
  %rem97 = srem i32 %75, 64, !dbg !4497
  %int_cast_to_i649 = zext i32 %rem97 to i64, !dbg !4497
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i649), !dbg !4497
  %shl98 = shl i32 1, %rem97, !dbg !4497, !klee.check.shift !4460
  %conv99 = sext i32 %shl98 to i64, !dbg !4497
  %and100 = and i64 %74, %conv99, !dbg !4497
  %tobool101 = icmp ne i64 %and100, 0, !dbg !4497
  br i1 %tobool101, label %if.then102, label %if.end112, !dbg !4500

if.then102:                                       ; preds = %if.else92
  %76 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4501
  %fd = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %76, i32 0, i32 0, !dbg !4501
  %77 = load i32, i32* %fd, align 8, !dbg !4501
  %rem103 = srem i32 %77, 64, !dbg !4501
  %int_cast_to_i6410 = zext i32 %rem103 to i64, !dbg !4501
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6410), !dbg !4501
  %shl104 = shl i32 1, %rem103, !dbg !4501, !klee.check.shift !4460
  %conv105 = sext i32 %shl104 to i64, !dbg !4501
  %fds_bits106 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %os_read, i32 0, i32 0, !dbg !4501
  %78 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4501
  %fd107 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %78, i32 0, i32 0, !dbg !4501
  %79 = load i32, i32* %fd107, align 8, !dbg !4501
  %div108 = sdiv i32 %79, 64, !dbg !4501
  %idxprom109 = sext i32 %div108 to i64, !dbg !4501
  %arrayidx110 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits106, i64 0, i64 %idxprom109, !dbg !4501
  %80 = load i64, i64* %arrayidx110, align 8, !dbg !4501
  %or111 = or i64 %80, %conv105, !dbg !4501
  store i64 %or111, i64* %arrayidx110, align 8, !dbg !4501
  br label %if.end112, !dbg !4501

if.end112:                                        ; preds = %if.then102, %if.else92
  %fds_bits113 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_write, i32 0, i32 0, !dbg !4502
  %81 = load i32, i32* %i, align 4, !dbg !4502
  %div114 = sdiv i32 %81, 64, !dbg !4502
  %idxprom115 = sext i32 %div114 to i64, !dbg !4502
  %arrayidx116 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits113, i64 0, i64 %idxprom115, !dbg !4502
  %82 = load i64, i64* %arrayidx116, align 8, !dbg !4502
  %83 = load i32, i32* %i, align 4, !dbg !4502
  %rem117 = srem i32 %83, 64, !dbg !4502
  %int_cast_to_i6411 = zext i32 %rem117 to i64, !dbg !4502
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6411), !dbg !4502
  %shl118 = shl i32 1, %rem117, !dbg !4502, !klee.check.shift !4460
  %conv119 = sext i32 %shl118 to i64, !dbg !4502
  %and120 = and i64 %82, %conv119, !dbg !4502
  %tobool121 = icmp ne i64 %and120, 0, !dbg !4502
  br i1 %tobool121, label %if.then122, label %if.end133, !dbg !4504

if.then122:                                       ; preds = %if.end112
  %84 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4505
  %fd123 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %84, i32 0, i32 0, !dbg !4505
  %85 = load i32, i32* %fd123, align 8, !dbg !4505
  %rem124 = srem i32 %85, 64, !dbg !4505
  %int_cast_to_i6412 = zext i32 %rem124 to i64, !dbg !4505
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6412), !dbg !4505
  %shl125 = shl i32 1, %rem124, !dbg !4505, !klee.check.shift !4460
  %conv126 = sext i32 %shl125 to i64, !dbg !4505
  %fds_bits127 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %os_write, i32 0, i32 0, !dbg !4505
  %86 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4505
  %fd128 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %86, i32 0, i32 0, !dbg !4505
  %87 = load i32, i32* %fd128, align 8, !dbg !4505
  %div129 = sdiv i32 %87, 64, !dbg !4505
  %idxprom130 = sext i32 %div129 to i64, !dbg !4505
  %arrayidx131 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits127, i64 0, i64 %idxprom130, !dbg !4505
  %88 = load i64, i64* %arrayidx131, align 8, !dbg !4505
  %or132 = or i64 %88, %conv126, !dbg !4505
  store i64 %or132, i64* %arrayidx131, align 8, !dbg !4505
  br label %if.end133, !dbg !4505

if.end133:                                        ; preds = %if.then122, %if.end112
  %fds_bits134 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %in_except, i32 0, i32 0, !dbg !4506
  %89 = load i32, i32* %i, align 4, !dbg !4506
  %div135 = sdiv i32 %89, 64, !dbg !4506
  %idxprom136 = sext i32 %div135 to i64, !dbg !4506
  %arrayidx137 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits134, i64 0, i64 %idxprom136, !dbg !4506
  %90 = load i64, i64* %arrayidx137, align 8, !dbg !4506
  %91 = load i32, i32* %i, align 4, !dbg !4506
  %rem138 = srem i32 %91, 64, !dbg !4506
  %int_cast_to_i6413 = zext i32 %rem138 to i64, !dbg !4506
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6413), !dbg !4506
  %shl139 = shl i32 1, %rem138, !dbg !4506, !klee.check.shift !4460
  %conv140 = sext i32 %shl139 to i64, !dbg !4506
  %and141 = and i64 %90, %conv140, !dbg !4506
  %tobool142 = icmp ne i64 %and141, 0, !dbg !4506
  br i1 %tobool142, label %if.then143, label %if.end154, !dbg !4508

if.then143:                                       ; preds = %if.end133
  %92 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4509
  %fd144 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %92, i32 0, i32 0, !dbg !4509
  %93 = load i32, i32* %fd144, align 8, !dbg !4509
  %rem145 = srem i32 %93, 64, !dbg !4509
  %int_cast_to_i6414 = zext i32 %rem145 to i64, !dbg !4509
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6414), !dbg !4509
  %shl146 = shl i32 1, %rem145, !dbg !4509, !klee.check.shift !4460
  %conv147 = sext i32 %shl146 to i64, !dbg !4509
  %fds_bits148 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %os_except, i32 0, i32 0, !dbg !4509
  %94 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4509
  %fd149 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %94, i32 0, i32 0, !dbg !4509
  %95 = load i32, i32* %fd149, align 8, !dbg !4509
  %div150 = sdiv i32 %95, 64, !dbg !4509
  %idxprom151 = sext i32 %div150 to i64, !dbg !4509
  %arrayidx152 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits148, i64 0, i64 %idxprom151, !dbg !4509
  %96 = load i64, i64* %arrayidx152, align 8, !dbg !4509
  %or153 = or i64 %96, %conv147, !dbg !4509
  store i64 %or153, i64* %arrayidx152, align 8, !dbg !4509
  br label %if.end154, !dbg !4509

if.end154:                                        ; preds = %if.then143, %if.end133
  %97 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4510
  %fd155 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %97, i32 0, i32 0, !dbg !4512
  %98 = load i32, i32* %fd155, align 8, !dbg !4512
  %99 = load i32, i32* %os_nfds, align 4, !dbg !4513
  %cmp156 = icmp sge i32 %98, %99, !dbg !4514
  br i1 %cmp156, label %if.then158, label %for.inc, !dbg !4515

if.then158:                                       ; preds = %if.end154
  %100 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f, align 8, !dbg !4516
  %fd159 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %100, i32 0, i32 0, !dbg !4517
  %101 = load i32, i32* %fd159, align 8, !dbg !4517
  %add = add nsw i32 %101, 1, !dbg !4518
  store i32 %add, i32* %os_nfds, align 4, !dbg !4519
  br label %for.inc, !dbg !4520

for.inc:                                          ; preds = %lor.lhs.false19, %if.end91, %if.then158, %if.end154
  %102 = load i32, i32* %i, align 4, !dbg !4521
  %inc164 = add nsw i32 %102, 1, !dbg !4521
  store i32 %inc164, i32* %i, align 4, !dbg !4521
  br label %for.cond, !dbg !4522, !llvm.loop !4523

for.end:                                          ; preds = %for.cond
  %103 = load i32, i32* %os_nfds, align 4, !dbg !4525
  %cmp165 = icmp sgt i32 %103, 0, !dbg !4527
  br i1 %cmp165, label %if.then167, label %if.end262, !dbg !4528

if.then167:                                       ; preds = %for.end
  call void @llvm.dbg.declare(metadata %struct.timespec.14* %tv, metadata !4529, metadata !DIExpression()), !dbg !4531
  %104 = bitcast %struct.timespec.14* %tv to i8*, !dbg !4531
  %105 = call i8* @memset(i8* %104, i32 0, i64 16), !dbg !4531
  call void @llvm.dbg.declare(metadata i32* %r, metadata !4532, metadata !DIExpression()), !dbg !4533
  %106 = load i32, i32* %os_nfds, align 4, !dbg !4534
  %call168 = call i64 (i64, ...) @syscall(i64 23, i32 %106, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timespec.14* %tv) #11, !dbg !4535
  %conv169 = trunc i64 %call168 to i32, !dbg !4535
  store i32 %conv169, i32* %r, align 4, !dbg !4533
  %107 = load i32, i32* %r, align 4, !dbg !4536
  %cmp170 = icmp eq i32 %107, -1, !dbg !4538
  br i1 %cmp170, label %if.then172, label %if.else176, !dbg !4539

if.then172:                                       ; preds = %if.then167
  %108 = load i32, i32* %count, align 4, !dbg !4540
  %tobool173 = icmp ne i32 %108, 0, !dbg !4540
  br i1 %tobool173, label %if.end262, label %if.then174, !dbg !4543

if.then174:                                       ; preds = %if.then172
  store i32 -1, i32* %retval, align 4, !dbg !4544
  br label %return, !dbg !4544

if.else176:                                       ; preds = %if.then167
  %109 = load i32, i32* %r, align 4, !dbg !4545
  %110 = load i32, i32* %count, align 4, !dbg !4547
  %add177 = add nsw i32 %110, %109, !dbg !4547
  store i32 %add177, i32* %count, align 4, !dbg !4547
  store i32 0, i32* %i, align 4, !dbg !4548
  br label %for.cond178, !dbg !4550

for.cond178:                                      ; preds = %for.inc258, %if.else176
  %111 = load i32, i32* %i, align 4, !dbg !4551
  %112 = load i32, i32* %nfds.addr, align 4, !dbg !4553
  %cmp179 = icmp slt i32 %111, %112, !dbg !4554
  br i1 %cmp179, label %for.body181, label %if.end262, !dbg !4555

for.body181:                                      ; preds = %for.cond178
  call void @llvm.dbg.declare(metadata %struct.exe_file_t.17** %f182, metadata !4556, metadata !DIExpression()), !dbg !4558
  %113 = load i32, i32* %i, align 4, !dbg !4559
  %call183 = call %struct.exe_file_t.17* @__get_file(i32 %113), !dbg !4560
  store %struct.exe_file_t.17* %call183, %struct.exe_file_t.17** %f182, align 8, !dbg !4558
  %114 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4561
  %tobool184 = icmp ne %struct.exe_file_t.17* %114, null, !dbg !4561
  br i1 %tobool184, label %land.lhs.true, label %for.inc258, !dbg !4563

land.lhs.true:                                    ; preds = %for.body181
  %115 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4564
  %dfile185 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %115, i32 0, i32 3, !dbg !4565
  %116 = load %struct.exe_disk_file_t.16*, %struct.exe_disk_file_t.16** %dfile185, align 8, !dbg !4565
  %tobool186 = icmp ne %struct.exe_disk_file_t.16* %116, null, !dbg !4564
  br i1 %tobool186, label %for.inc258, label %if.then187, !dbg !4566

if.then187:                                       ; preds = %land.lhs.true
  %117 = load %struct.fd_set*, %struct.fd_set** %read.addr, align 8, !dbg !4567
  %tobool188 = icmp ne %struct.fd_set* %117, null, !dbg !4567
  br i1 %tobool188, label %land.lhs.true189, label %if.end210, !dbg !4570

land.lhs.true189:                                 ; preds = %if.then187
  %fds_bits190 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %os_read, i32 0, i32 0, !dbg !4571
  %118 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4571
  %fd191 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %118, i32 0, i32 0, !dbg !4571
  %119 = load i32, i32* %fd191, align 8, !dbg !4571
  %div192 = sdiv i32 %119, 64, !dbg !4571
  %idxprom193 = sext i32 %div192 to i64, !dbg !4571
  %arrayidx194 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits190, i64 0, i64 %idxprom193, !dbg !4571
  %120 = load i64, i64* %arrayidx194, align 8, !dbg !4571
  %121 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4571
  %fd195 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %121, i32 0, i32 0, !dbg !4571
  %122 = load i32, i32* %fd195, align 8, !dbg !4571
  %rem196 = srem i32 %122, 64, !dbg !4571
  %int_cast_to_i6415 = zext i32 %rem196 to i64, !dbg !4571
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6415), !dbg !4571
  %shl197 = shl i32 1, %rem196, !dbg !4571, !klee.check.shift !4460
  %conv198 = sext i32 %shl197 to i64, !dbg !4571
  %and199 = and i64 %120, %conv198, !dbg !4571
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4571
  br i1 %tobool200, label %if.then201, label %if.end210, !dbg !4572

if.then201:                                       ; preds = %land.lhs.true189
  %123 = load i32, i32* %i, align 4, !dbg !4573
  %rem202 = srem i32 %123, 64, !dbg !4573
  %int_cast_to_i6416 = zext i32 %rem202 to i64, !dbg !4573
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6416), !dbg !4573
  %shl203 = shl i32 1, %rem202, !dbg !4573, !klee.check.shift !4460
  %conv204 = sext i32 %shl203 to i64, !dbg !4573
  %124 = load %struct.fd_set*, %struct.fd_set** %read.addr, align 8, !dbg !4573
  %fds_bits205 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %124, i32 0, i32 0, !dbg !4573
  %125 = load i32, i32* %i, align 4, !dbg !4573
  %div206 = sdiv i32 %125, 64, !dbg !4573
  %idxprom207 = sext i32 %div206 to i64, !dbg !4573
  %arrayidx208 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits205, i64 0, i64 %idxprom207, !dbg !4573
  %126 = load i64, i64* %arrayidx208, align 8, !dbg !4573
  %or209 = or i64 %126, %conv204, !dbg !4573
  store i64 %or209, i64* %arrayidx208, align 8, !dbg !4573
  br label %if.end210, !dbg !4573

if.end210:                                        ; preds = %if.then201, %land.lhs.true189, %if.then187
  %127 = load %struct.fd_set*, %struct.fd_set** %write.addr, align 8, !dbg !4574
  %tobool211 = icmp ne %struct.fd_set* %127, null, !dbg !4574
  br i1 %tobool211, label %land.lhs.true212, label %if.end233, !dbg !4576

land.lhs.true212:                                 ; preds = %if.end210
  %fds_bits213 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %os_write, i32 0, i32 0, !dbg !4577
  %128 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4577
  %fd214 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %128, i32 0, i32 0, !dbg !4577
  %129 = load i32, i32* %fd214, align 8, !dbg !4577
  %div215 = sdiv i32 %129, 64, !dbg !4577
  %idxprom216 = sext i32 %div215 to i64, !dbg !4577
  %arrayidx217 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits213, i64 0, i64 %idxprom216, !dbg !4577
  %130 = load i64, i64* %arrayidx217, align 8, !dbg !4577
  %131 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4577
  %fd218 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %131, i32 0, i32 0, !dbg !4577
  %132 = load i32, i32* %fd218, align 8, !dbg !4577
  %rem219 = srem i32 %132, 64, !dbg !4577
  %int_cast_to_i6417 = zext i32 %rem219 to i64, !dbg !4577
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6417), !dbg !4577
  %shl220 = shl i32 1, %rem219, !dbg !4577, !klee.check.shift !4460
  %conv221 = sext i32 %shl220 to i64, !dbg !4577
  %and222 = and i64 %130, %conv221, !dbg !4577
  %tobool223 = icmp ne i64 %and222, 0, !dbg !4577
  br i1 %tobool223, label %if.then224, label %if.end233, !dbg !4578

if.then224:                                       ; preds = %land.lhs.true212
  %133 = load i32, i32* %i, align 4, !dbg !4579
  %rem225 = srem i32 %133, 64, !dbg !4579
  %int_cast_to_i6418 = zext i32 %rem225 to i64, !dbg !4579
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6418), !dbg !4579
  %shl226 = shl i32 1, %rem225, !dbg !4579, !klee.check.shift !4460
  %conv227 = sext i32 %shl226 to i64, !dbg !4579
  %134 = load %struct.fd_set*, %struct.fd_set** %write.addr, align 8, !dbg !4579
  %fds_bits228 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %134, i32 0, i32 0, !dbg !4579
  %135 = load i32, i32* %i, align 4, !dbg !4579
  %div229 = sdiv i32 %135, 64, !dbg !4579
  %idxprom230 = sext i32 %div229 to i64, !dbg !4579
  %arrayidx231 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits228, i64 0, i64 %idxprom230, !dbg !4579
  %136 = load i64, i64* %arrayidx231, align 8, !dbg !4579
  %or232 = or i64 %136, %conv227, !dbg !4579
  store i64 %or232, i64* %arrayidx231, align 8, !dbg !4579
  br label %if.end233, !dbg !4579

if.end233:                                        ; preds = %if.then224, %land.lhs.true212, %if.end210
  %137 = load %struct.fd_set*, %struct.fd_set** %except.addr, align 8, !dbg !4580
  %tobool234 = icmp ne %struct.fd_set* %137, null, !dbg !4580
  br i1 %tobool234, label %land.lhs.true235, label %for.inc258, !dbg !4582

land.lhs.true235:                                 ; preds = %if.end233
  %fds_bits236 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %os_except, i32 0, i32 0, !dbg !4583
  %138 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4583
  %fd237 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %138, i32 0, i32 0, !dbg !4583
  %139 = load i32, i32* %fd237, align 8, !dbg !4583
  %div238 = sdiv i32 %139, 64, !dbg !4583
  %idxprom239 = sext i32 %div238 to i64, !dbg !4583
  %arrayidx240 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits236, i64 0, i64 %idxprom239, !dbg !4583
  %140 = load i64, i64* %arrayidx240, align 8, !dbg !4583
  %141 = load %struct.exe_file_t.17*, %struct.exe_file_t.17** %f182, align 8, !dbg !4583
  %fd241 = getelementptr inbounds %struct.exe_file_t.17, %struct.exe_file_t.17* %141, i32 0, i32 0, !dbg !4583
  %142 = load i32, i32* %fd241, align 8, !dbg !4583
  %rem242 = srem i32 %142, 64, !dbg !4583
  %int_cast_to_i6419 = zext i32 %rem242 to i64, !dbg !4583
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6419), !dbg !4583
  %shl243 = shl i32 1, %rem242, !dbg !4583, !klee.check.shift !4460
  %conv244 = sext i32 %shl243 to i64, !dbg !4583
  %and245 = and i64 %140, %conv244, !dbg !4583
  %tobool246 = icmp ne i64 %and245, 0, !dbg !4583
  br i1 %tobool246, label %if.then247, label %for.inc258, !dbg !4584

if.then247:                                       ; preds = %land.lhs.true235
  %143 = load i32, i32* %i, align 4, !dbg !4585
  %rem248 = srem i32 %143, 64, !dbg !4585
  %int_cast_to_i6420 = zext i32 %rem248 to i64, !dbg !4585
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6420), !dbg !4585
  %shl249 = shl i32 1, %rem248, !dbg !4585, !klee.check.shift !4460
  %conv250 = sext i32 %shl249 to i64, !dbg !4585
  %144 = load %struct.fd_set*, %struct.fd_set** %except.addr, align 8, !dbg !4585
  %fds_bits251 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %144, i32 0, i32 0, !dbg !4585
  %145 = load i32, i32* %i, align 4, !dbg !4585
  %div252 = sdiv i32 %145, 64, !dbg !4585
  %idxprom253 = sext i32 %div252 to i64, !dbg !4585
  %arrayidx254 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits251, i64 0, i64 %idxprom253, !dbg !4585
  %146 = load i64, i64* %arrayidx254, align 8, !dbg !4585
  %or255 = or i64 %146, %conv250, !dbg !4585
  store i64 %or255, i64* %arrayidx254, align 8, !dbg !4585
  br label %for.inc258, !dbg !4585

for.inc258:                                       ; preds = %for.body181, %land.lhs.true, %if.then247, %land.lhs.true235, %if.end233
  %147 = load i32, i32* %i, align 4, !dbg !4586
  %inc259 = add nsw i32 %147, 1, !dbg !4586
  store i32 %inc259, i32* %i, align 4, !dbg !4586
  br label %for.cond178, !dbg !4587, !llvm.loop !4588

if.end262:                                        ; preds = %if.then172, %for.cond178, %for.end
  %148 = load i32, i32* %count, align 4, !dbg !4590
  store i32 %148, i32* %retval, align 4, !dbg !4591
  br label %return, !dbg !4591

return:                                           ; preds = %if.end262, %if.then174, %if.then31
  %149 = load i32, i32* %retval, align 4, !dbg !4592
  ret i32 %149, !dbg !4592
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @chroot(i8* nonnull %path) #0 !dbg !4593 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4596
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !4596
  %1 = load i8, i8* %arrayidx, align 1, !dbg !4596
  %conv = sext i8 %1 to i32, !dbg !4596
  %cmp = icmp eq i32 %conv, 0, !dbg !4598
  br i1 %cmp, label %if.then, label %if.end, !dbg !4599

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location() #15, !dbg !4600
  store i32 2, i32* %call, align 4, !dbg !4602
  store i32 -1, i32* %retval, align 4, !dbg !4603
  br label %return, !dbg !4603

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8, !dbg !4604
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !4604
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !4604
  %conv3 = sext i8 %3 to i32, !dbg !4604
  %cmp4 = icmp eq i32 %conv3, 47, !dbg !4606
  br i1 %cmp4, label %land.lhs.true, label %if.end11, !dbg !4607

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %path.addr, align 8, !dbg !4608
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !4608
  %5 = load i8, i8* %arrayidx6, align 1, !dbg !4608
  %conv7 = sext i8 %5 to i32, !dbg !4608
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !4609
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4610

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4611
  br label %return, !dbg !4611

if.end11:                                         ; preds = %land.lhs.true, %if.end
  call void @klee_warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25.113, i64 0, i64 0)), !dbg !4613
  %call12 = call i32* @__errno_location() #15, !dbg !4614
  store i32 2, i32* %call12, align 4, !dbg !4615
  store i32 -1, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4617
  ret i32 %6, !dbg !4617
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strncmp(i8* %s1, i8* %s2, i64 %n) #0 !dbg !4618 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i8* %s2, i8** %s2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  %0 = load i64, i64* %n.addr, align 8, !dbg !4628
  %cmp = icmp eq i64 %0, 0, !dbg !4630
  br i1 %cmp, label %if.then, label %do.body, !dbg !4631

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

do.body:                                          ; preds = %entry, %do.cond
  %1 = load i8*, i8** %s1.addr, align 8, !dbg !4633
  %2 = load i8, i8* %1, align 1, !dbg !4636
  %conv = sext i8 %2 to i32, !dbg !4636
  %3 = load i8*, i8** %s2.addr, align 8, !dbg !4637
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !4637
  store i8* %incdec.ptr, i8** %s2.addr, align 8, !dbg !4637
  %4 = load i8, i8* %3, align 1, !dbg !4638
  %conv1 = sext i8 %4 to i32, !dbg !4638
  %cmp2 = icmp ne i32 %conv, %conv1, !dbg !4639
  br i1 %cmp2, label %if.then4, label %if.end7, !dbg !4640

if.then4:                                         ; preds = %do.body
  %5 = load i8*, i8** %s1.addr, align 8, !dbg !4641
  %6 = load i8, i8* %5, align 1, !dbg !4642
  %conv5 = zext i8 %6 to i32, !dbg !4642
  %7 = load i8*, i8** %s2.addr, align 8, !dbg !4643
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !4644
  %8 = load i8, i8* %add.ptr, align 1, !dbg !4645
  %conv6 = zext i8 %8 to i32, !dbg !4645
  %sub = sub nsw i32 %conv5, %conv6, !dbg !4646
  store i32 %sub, i32* %retval, align 4, !dbg !4647
  br label %return, !dbg !4647

if.end7:                                          ; preds = %do.body
  %9 = load i8*, i8** %s1.addr, align 8, !dbg !4648
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1, !dbg !4648
  store i8* %incdec.ptr8, i8** %s1.addr, align 8, !dbg !4648
  %10 = load i8, i8* %9, align 1, !dbg !4650
  %conv9 = sext i8 %10 to i32, !dbg !4650
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !4651
  br i1 %cmp10, label %do.end, label %do.cond, !dbg !4652

do.cond:                                          ; preds = %if.end7
  %11 = load i64, i64* %n.addr, align 8, !dbg !4653
  %dec = add i64 %11, -1, !dbg !4653
  store i64 %dec, i64* %n.addr, align 8, !dbg !4653
  %cmp14 = icmp ne i64 %dec, 0, !dbg !4654
  br i1 %cmp14, label %do.body, label %do.end, !dbg !4655, !llvm.loop !4656

do.end:                                           ; preds = %if.end7, %do.cond
  store i32 0, i32* %retval, align 4, !dbg !4659
  br label %return, !dbg !4659

return:                                           ; preds = %do.end, %if.then4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4660
  ret i32 %12, !dbg !4660
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #0 !dbg !4661 {
entry:
  %destaddr.addr = alloca i8*, align 8
  %srcaddr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8* %destaddr, i8** %destaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destaddr.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  store i8* %srcaddr, i8** %srcaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srcaddr.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.declare(metadata i8** %dest, metadata !4671, metadata !DIExpression()), !dbg !4672
  %0 = load i8*, i8** %destaddr.addr, align 8, !dbg !4673
  store i8* %0, i8** %dest, align 8, !dbg !4672
  call void @llvm.dbg.declare(metadata i8** %src, metadata !4674, metadata !DIExpression()), !dbg !4675
  %1 = load i8*, i8** %srcaddr.addr, align 8, !dbg !4676
  store i8* %1, i8** %src, align 8, !dbg !4675
  br label %while.cond, !dbg !4677

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %len.addr, align 8, !dbg !4678
  %dec = add i64 %2, -1, !dbg !4678
  store i64 %dec, i64* %len.addr, align 8, !dbg !4678
  %cmp = icmp ugt i64 %2, 0, !dbg !4679
  br i1 %cmp, label %while.body, label %while.end, !dbg !4677

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8, !dbg !4680
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !4680
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !4680
  %4 = load i8, i8* %3, align 1, !dbg !4681
  %5 = load i8*, i8** %dest, align 8, !dbg !4682
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !4682
  store i8* %incdec.ptr1, i8** %dest, align 8, !dbg !4682
  store i8 %4, i8* %5, align 1, !dbg !4683
  br label %while.cond, !dbg !4677, !llvm.loop !4684

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %destaddr.addr, align 8, !dbg !4685
  ret i8* %6, !dbg !4686
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* %dst, i32 %s, i64 %count) #0 !dbg !4687 {
entry:
  %dst.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %a = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.declare(metadata i8** %a, metadata !4697, metadata !DIExpression()), !dbg !4698
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !4699
  store i8* %0, i8** %a, align 8, !dbg !4698
  br label %while.cond, !dbg !4700

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %count.addr, align 8, !dbg !4701
  %dec = add i64 %1, -1, !dbg !4701
  store i64 %dec, i64* %count.addr, align 8, !dbg !4701
  %cmp = icmp ugt i64 %1, 0, !dbg !4702
  br i1 %cmp, label %while.body, label %while.end, !dbg !4700

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %s.addr, align 4, !dbg !4703
  %conv = trunc i32 %2 to i8, !dbg !4703
  %3 = load i8*, i8** %a, align 8, !dbg !4704
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !4704
  store i8* %incdec.ptr, i8** %a, align 8, !dbg !4704
  store i8 %conv, i8* %3, align 1, !dbg !4705
  br label %while.cond, !dbg !4700, !llvm.loop !4706

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %dst.addr, align 8, !dbg !4707
  ret i8* %4, !dbg !4708
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #0 !dbg !4709 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !4714, metadata !DIExpression()), !dbg !4715
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  %0 = load i64, i64* %shift.addr, align 8, !dbg !4718
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !4720
  %cmp = icmp uge i64 %0, %1, !dbg !4721
  br i1 %cmp, label %if.then, label %if.end, !dbg !4722

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.123, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.124, i64 0, i64 0)) #12, !dbg !4723
  unreachable, !dbg !4723

if.end:                                           ; preds = %entry
  ret void, !dbg !4725
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!205, !209, !2, !212, !215, !248, !250, !105, !252, !256, !258, !260}
!llvm.module.flags = !{!262, !263, !264, !265, !266}
!llvm.ident = !{!267, !267, !267, !267, !267, !267, !267, !267, !267, !267, !267, !267}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__exe_env", scope: !2, file: !8, line: 34, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/tmp/klee_src/runtime/POSIX/fd_init.c", directory: "/tmp/klee_build130stp_z3/runtime/POSIX")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "__exe_fs", scope: !2, file: !8, line: 21, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "klee_src/runtime/POSIX/fd_init.c", directory: "/tmp")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "exe_file_system_t", file: !10, line: 86, baseType: !11)
!10 = !DIFile(filename: "klee_src/runtime/POSIX/fd.h", directory: "/tmp")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 74, size: 832, elements: !12)
!12 = !{!13, !15, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "n_sym_files", scope: !11, file: !10, line: 75, baseType: !14, size: 32)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "sym_stdin", scope: !11, file: !10, line: 76, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "exe_disk_file_t", file: !10, line: 56, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 52, size: 192, elements: !19)
!19 = !{!20, !21, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !18, file: !10, line: 53, baseType: !14, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !18, file: !10, line: 54, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !18, file: !10, line: 55, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !27, line: 103, size: 1152, elements: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "")
!28 = !{!29, !33, !35, !37, !39, !41, !43, !45, !46, !49, !51, !53, !61, !62, !63}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !26, file: !27, line: 108, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !31, line: 145, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !26, file: !27, line: 110, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !31, line: 149, baseType: !32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !26, file: !27, line: 111, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !31, line: 151, baseType: !32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !26, file: !27, line: 112, baseType: !38, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !31, line: 150, baseType: !14)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !26, file: !27, line: 119, baseType: !40, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !31, line: 146, baseType: !14)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !26, file: !27, line: 120, baseType: !42, size: 32, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !31, line: 147, baseType: !14)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !26, file: !27, line: 122, baseType: !44, size: 32, offset: 288)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !26, file: !27, line: 123, baseType: !30, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !26, file: !27, line: 124, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !31, line: 152, baseType: !48)
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !26, file: !27, line: 130, baseType: !50, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !31, line: 175, baseType: !48)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !26, file: !27, line: 131, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !31, line: 181, baseType: !48)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !26, file: !27, line: 139, baseType: !54, size: 128, offset: 576)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !55, line: 11, size: 128, elements: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !54, file: !55, line: 16, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !31, line: 160, baseType: !48)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !54, file: !55, line: 21, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !31, line: 197, baseType: !48)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !26, file: !27, line: 140, baseType: !54, size: 128, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !26, file: !27, line: 141, baseType: !54, size: 128, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !26, file: !27, line: 151, baseType: !64, size: 192, offset: 960)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sym_stdout", scope: !11, file: !10, line: 76, baseType: !16, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stdout_writes", scope: !11, file: !10, line: 77, baseType: !14, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sym_files", scope: !11, file: !10, line: 78, baseType: !16, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "max_failures", scope: !11, file: !10, line: 81, baseType: !14, size: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "read_fail", scope: !11, file: !10, line: 84, baseType: !72, size: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "write_fail", scope: !11, file: !10, line: 84, baseType: !72, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "close_fail", scope: !11, file: !10, line: 84, baseType: !72, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ftruncate_fail", scope: !11, file: !10, line: 84, baseType: !72, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "getcwd_fail", scope: !11, file: !10, line: 84, baseType: !72, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "chmod_fail", scope: !11, file: !10, line: 85, baseType: !72, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fchmod_fail", scope: !11, file: !10, line: 85, baseType: !72, size: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "exe_sym_env_t", file: !10, line: 100, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 93, size: 6208, elements: !81)
!81 = !{!82, !96, !98}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !80, file: !10, line: 94, baseType: !83, size: 6144)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 6144, elements: !94)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "exe_file_t", file: !10, line: 72, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 65, size: 192, elements: !86)
!86 = !{!87, !88, !89, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !85, file: !10, line: 66, baseType: !44, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !10, line: 67, baseType: !14, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !85, file: !10, line: 70, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "off64_t", file: !91, line: 92, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !31, line: 153, baseType: !48)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "dfile", scope: !85, file: !10, line: 71, baseType: !16, size: 64, offset: 128)
!94 = !{!95}
!95 = !DISubrange(count: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !80, file: !10, line: 95, baseType: !97, size: 32, offset: 6144)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !91, line: 69, baseType: !38)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "save_all_writes", scope: !80, file: !10, line: 99, baseType: !44, size: 32, offset: 6176)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "n_calls", scope: !101, file: !102, line: 313, type: !44, isLocal: true, isDefinition: true)
!101 = distinct !DISubprogram(name: "close", scope: !102, file: !102, line: 312, type: !103, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!102 = !DIFile(filename: "klee_src/runtime/POSIX/fd.c", directory: "/tmp")
!103 = !DISubroutineType(types: !104)
!104 = !{!44, !44}
!105 = distinct !DICompileUnit(language: DW_LANG_C89, file: !106, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !126, globals: !166, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "/tmp/klee_src/runtime/POSIX/fd.c", directory: "/tmp/klee_build130stp_z3/runtime/POSIX")
!107 = !{!108, !114}
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 58, baseType: !14, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "eOpen", value: 1)
!111 = !DIEnumerator(name: "eCloseOnExec", value: 2)
!112 = !DIEnumerator(name: "eReadable", value: 4)
!113 = !DIEnumerator(name: "eWriteable", value: 8)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 97, baseType: !14, size: 32, elements: !116)
!115 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125}
!117 = !DIEnumerator(name: "DT_UNKNOWN", value: 0)
!118 = !DIEnumerator(name: "DT_FIFO", value: 1)
!119 = !DIEnumerator(name: "DT_CHR", value: 2)
!120 = !DIEnumerator(name: "DT_DIR", value: 4)
!121 = !DIEnumerator(name: "DT_BLK", value: 6)
!122 = !DIEnumerator(name: "DT_REG", value: 8)
!123 = !DIEnumerator(name: "DT_LNK", value: 10)
!124 = !DIEnumerator(name: "DT_SOCK", value: 12)
!125 = !DIEnumerator(name: "DT_WHT", value: 14)
!126 = !{!48, !127, !90, !32, !128, !22, !142, !44, !23}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent64", file: !130, line: 37, size: 2240, elements: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "")
!131 = !{!132, !133, !134, !136, !138}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !129, file: !130, line: 39, baseType: !34, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !129, file: !130, line: 40, baseType: !92, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !129, file: !130, line: 41, baseType: !135, size: 16, offset: 128)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !129, file: !130, line: 42, baseType: !137, size: 8, offset: 144)
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !129, file: !130, line: 43, baseType: !139, size: 2048, offset: 152)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !27, line: 26, size: 1152, elements: !144)
!144 = !{!145, !146, !148, !149, !150, !151, !152, !153, !154, !155, !156, !158, !163, !164, !165}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !143, file: !27, line: 31, baseType: !30, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !143, file: !27, line: 36, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !31, line: 148, baseType: !32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !143, file: !27, line: 44, baseType: !36, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !143, file: !27, line: 45, baseType: !38, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !143, file: !27, line: 47, baseType: !40, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !143, file: !27, line: 48, baseType: !42, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !143, file: !27, line: 50, baseType: !44, size: 32, offset: 288)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !143, file: !27, line: 52, baseType: !30, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !143, file: !27, line: 57, baseType: !47, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !143, file: !27, line: 61, baseType: !50, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !143, file: !27, line: 63, baseType: !157, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !31, line: 180, baseType: !48)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !143, file: !27, line: 74, baseType: !159, size: 128, offset: 576)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !55, line: 11, size: 128, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !159, file: !55, line: 16, baseType: !58, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !159, file: !55, line: 21, baseType: !60, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !143, file: !27, line: 75, baseType: !159, size: 128, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !143, file: !27, line: 76, baseType: !159, size: 128, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !143, file: !27, line: 89, baseType: !64, size: 192, offset: 960)
!166 = !{!99, !167, !176, !183, !190, !195, !200}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "n_calls", scope: !169, file: !102, line: 345, type: !44, isLocal: true, isDefinition: true)
!169 = distinct !DISubprogram(name: "read", scope: !102, file: !102, line: 344, type: !170, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !44, !127, !174}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !91, line: 108, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !31, line: 194, baseType: !48)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 46, baseType: !32)
!175 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stddef.h", directory: "/tmp")
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "n_calls", scope: !178, file: !102, line: 411, type: !44, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "write", scope: !102, file: !102, line: 410, type: !179, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!179 = !DISubroutineType(types: !180)
!180 = !{!172, !44, !181, !174}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "n_calls", scope: !185, file: !102, line: 647, type: !44, isLocal: true, isDefinition: true)
!185 = distinct !DISubprogram(name: "chmod", scope: !102, file: !102, line: 646, type: !186, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!186 = !DISubroutineType(types: !187)
!187 = !{!44, !188, !97}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "n_calls", scope: !192, file: !102, line: 666, type: !44, isLocal: true, isDefinition: true)
!192 = distinct !DISubprogram(name: "fchmod", scope: !102, file: !102, line: 665, type: !193, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!193 = !DISubroutineType(types: !194)
!194 = !{!44, !44, !97}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "n_calls", scope: !197, file: !102, line: 752, type: !44, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "__fd_ftruncate", scope: !102, file: !102, line: 751, type: !198, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!198 = !DISubroutineType(types: !199)
!199 = !{!44, !44, !90}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "n_calls", scope: !202, file: !102, line: 1346, type: !44, isLocal: true, isDefinition: true)
!202 = distinct !DISubprogram(name: "getcwd", scope: !102, file: !102, line: 1345, type: !203, scopeLine: 1345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!203 = !DISubroutineType(types: !204)
!204 = !{!22, !22, !174}
!205 = distinct !DICompileUnit(language: DW_LANG_C89, file: !206, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !207, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "/tmp/klee_src/runtime/POSIX/klee_init_env.c", directory: "/tmp/klee_build130stp_z3/runtime/POSIX")
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !211, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "aes_cf_klee_simplified.c", directory: "/home/klee/logic_bombs/src/crypto_functions")
!211 = !{!22}
!212 = distinct !DICompileUnit(language: DW_LANG_C89, file: !213, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !214, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_range.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!214 = !{!14}
!215 = distinct !DICompileUnit(language: DW_LANG_C89, file: !216, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "/tmp/klee_src/runtime/POSIX/fd_64.c", directory: "/tmp/klee_build130stp_z3/runtime/POSIX")
!217 = !{!218, !240}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !27, line: 103, size: 1152, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !237, !238, !239}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !219, file: !27, line: 108, baseType: !30, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !219, file: !27, line: 110, baseType: !34, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !219, file: !27, line: 111, baseType: !36, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !219, file: !27, line: 112, baseType: !38, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !219, file: !27, line: 119, baseType: !40, size: 32, offset: 224)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !219, file: !27, line: 120, baseType: !42, size: 32, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !219, file: !27, line: 122, baseType: !44, size: 32, offset: 288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !219, file: !27, line: 123, baseType: !30, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !219, file: !27, line: 124, baseType: !47, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !219, file: !27, line: 130, baseType: !50, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !219, file: !27, line: 131, baseType: !52, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !219, file: !27, line: 139, baseType: !233, size: 128, offset: 576)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !55, line: 11, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !233, file: !55, line: 16, baseType: !58, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !233, file: !55, line: 21, baseType: !60, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !219, file: !27, line: 140, baseType: !233, size: 128, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !219, file: !27, line: 141, baseType: !233, size: 128, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !219, file: !27, line: 151, baseType: !64, size: 192, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent64", file: !130, line: 37, size: 2240, elements: !242)
!242 = !{!243, !244, !245, !246, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !241, file: !130, line: 39, baseType: !34, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !241, file: !130, line: 40, baseType: !92, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !241, file: !130, line: 41, baseType: !135, size: 16, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !241, file: !130, line: 42, baseType: !137, size: 8, offset: 144)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !241, file: !130, line: 43, baseType: !139, size: 2048, offset: 152)
!248 = distinct !DICompileUnit(language: DW_LANG_C89, file: !249, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "/tmp/klee_src/runtime/klee-libc/strlen.c", directory: "/tmp/klee_build130stp_z3/runtime/klee-libc")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcmp.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!252 = distinct !DICompileUnit(language: DW_LANG_C89, file: !253, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !254, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "/tmp/klee_src/runtime/klee-libc/strncmp.c", directory: "/tmp/klee_build130stp_z3/runtime/klee-libc")
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memset.c", directory: "/tmp/klee_build130stp_z3/runtime/Freestanding")
!260 = distinct !DICompileUnit(language: DW_LANG_C89, file: !261, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!262 = !{i32 7, !"Dwarf Version", i32 4}
!263 = !{i32 2, !"Debug Info Version", i32 3}
!264 = !{i32 1, !"wchar_size", i32 4}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!268 = distinct !DISubprogram(name: "klee_init_env", scope: !269, file: !269, line: 83, type: !270, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !205, retainedNodes: !4)
!269 = !DIFile(filename: "klee_src/runtime/POSIX/klee_init_env.c", directory: "/tmp")
!270 = !DISubroutineType(types: !271)
!271 = !{null, !72, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!273 = !DILocalVariable(name: "argcPtr", arg: 1, scope: !268, file: !269, line: 83, type: !72)
!274 = !DILocation(line: 83, column: 25, scope: !268)
!275 = !DILocalVariable(name: "argvPtr", arg: 2, scope: !268, file: !269, line: 83, type: !272)
!276 = !DILocation(line: 83, column: 42, scope: !268)
!277 = !DILocalVariable(name: "argc", scope: !268, file: !269, line: 84, type: !44)
!278 = !DILocation(line: 84, column: 7, scope: !268)
!279 = !DILocation(line: 84, column: 15, scope: !268)
!280 = !DILocation(line: 84, column: 14, scope: !268)
!281 = !DILocalVariable(name: "argv", scope: !268, file: !269, line: 85, type: !208)
!282 = !DILocation(line: 85, column: 10, scope: !268)
!283 = !DILocation(line: 85, column: 18, scope: !268)
!284 = !DILocation(line: 85, column: 17, scope: !268)
!285 = !DILocalVariable(name: "new_argc", scope: !268, file: !269, line: 87, type: !44)
!286 = !DILocation(line: 87, column: 7, scope: !268)
!287 = !DILocalVariable(name: "n_args", scope: !268, file: !269, line: 87, type: !44)
!288 = !DILocation(line: 87, column: 21, scope: !268)
!289 = !DILocalVariable(name: "new_argv", scope: !268, file: !269, line: 88, type: !290)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 65536, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 1024)
!293 = !DILocation(line: 88, column: 9, scope: !268)
!294 = !DILocalVariable(name: "max_len", scope: !268, file: !269, line: 89, type: !14)
!295 = !DILocation(line: 89, column: 12, scope: !268)
!296 = !DILocalVariable(name: "min_argvs", scope: !268, file: !269, line: 89, type: !14)
!297 = !DILocation(line: 89, column: 21, scope: !268)
!298 = !DILocalVariable(name: "max_argvs", scope: !268, file: !269, line: 89, type: !14)
!299 = !DILocation(line: 89, column: 32, scope: !268)
!300 = !DILocalVariable(name: "sym_files", scope: !268, file: !269, line: 90, type: !14)
!301 = !DILocation(line: 90, column: 12, scope: !268)
!302 = !DILocalVariable(name: "sym_file_len", scope: !268, file: !269, line: 90, type: !14)
!303 = !DILocation(line: 90, column: 27, scope: !268)
!304 = !DILocalVariable(name: "sym_stdin_len", scope: !268, file: !269, line: 91, type: !14)
!305 = !DILocation(line: 91, column: 12, scope: !268)
!306 = !DILocalVariable(name: "sym_stdout_flag", scope: !268, file: !269, line: 92, type: !44)
!307 = !DILocation(line: 92, column: 7, scope: !268)
!308 = !DILocalVariable(name: "save_all_writes_flag", scope: !268, file: !269, line: 93, type: !44)
!309 = !DILocation(line: 93, column: 7, scope: !268)
!310 = !DILocalVariable(name: "fd_fail", scope: !268, file: !269, line: 94, type: !44)
!311 = !DILocation(line: 94, column: 7, scope: !268)
!312 = !DILocalVariable(name: "final_argv", scope: !268, file: !269, line: 95, type: !208)
!313 = !DILocation(line: 95, column: 10, scope: !268)
!314 = !DILocalVariable(name: "sym_arg_name", scope: !268, file: !269, line: 96, type: !315)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 6)
!318 = !DILocation(line: 96, column: 8, scope: !268)
!319 = !DILocalVariable(name: "sym_arg_num", scope: !268, file: !269, line: 97, type: !14)
!320 = !DILocation(line: 97, column: 12, scope: !268)
!321 = !DILocalVariable(name: "k", scope: !268, file: !269, line: 98, type: !44)
!322 = !DILocation(line: 98, column: 7, scope: !268)
!323 = !DILocalVariable(name: "i", scope: !268, file: !269, line: 98, type: !44)
!324 = !DILocation(line: 98, column: 14, scope: !268)
!325 = !DILocation(line: 100, column: 3, scope: !268)
!326 = !DILocation(line: 100, column: 19, scope: !268)
!327 = !DILocation(line: 103, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !268, file: !269, line: 103, column: 7)
!329 = !DILocation(line: 103, column: 12, scope: !328)
!330 = !DILocation(line: 103, column: 17, scope: !328)
!331 = !DILocation(line: 103, column: 28, scope: !328)
!332 = !DILocation(line: 103, column: 20, scope: !328)
!333 = !DILocation(line: 103, column: 7, scope: !268)
!334 = !DILocation(line: 104, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !328, file: !269, line: 103, column: 48)
!336 = !DILocation(line: 119, column: 3, scope: !335)
!337 = !DILocation(line: 121, column: 3, scope: !268)
!338 = !DILocation(line: 121, column: 10, scope: !268)
!339 = !DILocation(line: 121, column: 14, scope: !268)
!340 = !DILocation(line: 121, column: 12, scope: !268)
!341 = !DILocation(line: 122, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !269, line: 122, column: 9)
!343 = distinct !DILexicalBlock(scope: !268, file: !269, line: 121, column: 20)
!344 = !DILocation(line: 122, column: 22, scope: !342)
!345 = !DILocation(line: 122, column: 9, scope: !342)
!346 = !DILocation(line: 122, column: 39, scope: !342)
!347 = !DILocation(line: 122, column: 50, scope: !342)
!348 = !DILocation(line: 122, column: 55, scope: !342)
!349 = !DILocation(line: 122, column: 42, scope: !342)
!350 = !DILocation(line: 122, column: 9, scope: !343)
!351 = !DILocalVariable(name: "msg", scope: !352, file: !269, line: 123, type: !188)
!352 = distinct !DILexicalBlock(scope: !342, file: !269, line: 122, column: 72)
!353 = !DILocation(line: 123, column: 19, scope: !352)
!354 = !DILocation(line: 124, column: 11, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !269, line: 124, column: 11)
!356 = !DILocation(line: 124, column: 18, scope: !355)
!357 = !DILocation(line: 124, column: 15, scope: !355)
!358 = !DILocation(line: 124, column: 11, scope: !352)
!359 = !DILocation(line: 125, column: 22, scope: !355)
!360 = !DILocation(line: 125, column: 9, scope: !355)
!361 = !DILocation(line: 127, column: 30, scope: !352)
!362 = !DILocation(line: 127, column: 36, scope: !352)
!363 = !DILocation(line: 127, column: 41, scope: !352)
!364 = !DILocation(line: 127, column: 17, scope: !352)
!365 = !DILocation(line: 127, column: 15, scope: !352)
!366 = !DILocation(line: 129, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !352, file: !269, line: 129, column: 11)
!368 = !DILocation(line: 129, column: 23, scope: !367)
!369 = !DILocation(line: 129, column: 11, scope: !352)
!370 = !DILocation(line: 130, column: 9, scope: !367)
!371 = !DILocation(line: 132, column: 31, scope: !352)
!372 = !DILocation(line: 132, column: 43, scope: !352)
!373 = !DILocation(line: 132, column: 29, scope: !352)
!374 = !DILocation(line: 132, column: 25, scope: !352)
!375 = !DILocation(line: 132, column: 7, scope: !352)
!376 = !DILocation(line: 132, column: 23, scope: !352)
!377 = !DILocation(line: 133, column: 31, scope: !352)
!378 = !DILocation(line: 133, column: 43, scope: !352)
!379 = !DILocation(line: 133, column: 29, scope: !352)
!380 = !DILocation(line: 133, column: 25, scope: !352)
!381 = !DILocation(line: 133, column: 7, scope: !352)
!382 = !DILocation(line: 133, column: 23, scope: !352)
!383 = !DILocation(line: 134, column: 18, scope: !352)
!384 = !DILocation(line: 135, column: 28, scope: !352)
!385 = !DILocation(line: 135, column: 52, scope: !352)
!386 = !DILocation(line: 135, column: 61, scope: !352)
!387 = !DILocation(line: 135, column: 38, scope: !352)
!388 = !DILocation(line: 135, column: 7, scope: !352)
!389 = !DILocation(line: 137, column: 5, scope: !352)
!390 = !DILocation(line: 137, column: 24, scope: !391)
!391 = distinct !DILexicalBlock(scope: !342, file: !269, line: 137, column: 16)
!392 = !DILocation(line: 137, column: 29, scope: !391)
!393 = !DILocation(line: 137, column: 16, scope: !391)
!394 = !DILocation(line: 137, column: 47, scope: !391)
!395 = !DILocation(line: 138, column: 24, scope: !391)
!396 = !DILocation(line: 138, column: 29, scope: !391)
!397 = !DILocation(line: 138, column: 16, scope: !391)
!398 = !DILocation(line: 137, column: 16, scope: !342)
!399 = !DILocalVariable(name: "msg", scope: !400, file: !269, line: 139, type: !188)
!400 = distinct !DILexicalBlock(scope: !391, file: !269, line: 138, column: 47)
!401 = !DILocation(line: 139, column: 19, scope: !400)
!402 = !DILocation(line: 142, column: 11, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !269, line: 142, column: 11)
!404 = !DILocation(line: 142, column: 13, scope: !403)
!405 = !DILocation(line: 142, column: 20, scope: !403)
!406 = !DILocation(line: 142, column: 17, scope: !403)
!407 = !DILocation(line: 142, column: 11, scope: !400)
!408 = !DILocation(line: 143, column: 22, scope: !403)
!409 = !DILocation(line: 143, column: 9, scope: !403)
!410 = !DILocation(line: 145, column: 8, scope: !400)
!411 = !DILocation(line: 146, column: 32, scope: !400)
!412 = !DILocation(line: 146, column: 38, scope: !400)
!413 = !DILocation(line: 146, column: 43, scope: !400)
!414 = !DILocation(line: 146, column: 19, scope: !400)
!415 = !DILocation(line: 146, column: 17, scope: !400)
!416 = !DILocation(line: 147, column: 32, scope: !400)
!417 = !DILocation(line: 147, column: 38, scope: !400)
!418 = !DILocation(line: 147, column: 43, scope: !400)
!419 = !DILocation(line: 147, column: 19, scope: !400)
!420 = !DILocation(line: 147, column: 17, scope: !400)
!421 = !DILocation(line: 148, column: 30, scope: !400)
!422 = !DILocation(line: 148, column: 36, scope: !400)
!423 = !DILocation(line: 148, column: 41, scope: !400)
!424 = !DILocation(line: 148, column: 17, scope: !400)
!425 = !DILocation(line: 148, column: 15, scope: !400)
!426 = !DILocation(line: 150, column: 12, scope: !427)
!427 = distinct !DILexicalBlock(scope: !400, file: !269, line: 150, column: 11)
!428 = !DILocation(line: 150, column: 24, scope: !427)
!429 = !DILocation(line: 150, column: 22, scope: !427)
!430 = !DILocation(line: 150, column: 35, scope: !427)
!431 = !DILocation(line: 150, column: 39, scope: !427)
!432 = !DILocation(line: 150, column: 49, scope: !427)
!433 = !DILocation(line: 150, column: 54, scope: !427)
!434 = !DILocation(line: 151, column: 9, scope: !427)
!435 = !DILocation(line: 153, column: 27, scope: !400)
!436 = !DILocation(line: 153, column: 38, scope: !400)
!437 = !DILocation(line: 153, column: 48, scope: !400)
!438 = !DILocation(line: 153, column: 16, scope: !400)
!439 = !DILocation(line: 153, column: 14, scope: !400)
!440 = !DILocation(line: 155, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !400, file: !269, line: 155, column: 11)
!442 = !DILocation(line: 155, column: 25, scope: !441)
!443 = !DILocation(line: 155, column: 23, scope: !441)
!444 = !DILocation(line: 155, column: 35, scope: !441)
!445 = !DILocation(line: 155, column: 11, scope: !400)
!446 = !DILocation(line: 156, column: 9, scope: !441)
!447 = !DILocation(line: 158, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !400, file: !269, line: 158, column: 7)
!449 = !DILocation(line: 158, column: 12, scope: !448)
!450 = !DILocation(line: 158, column: 19, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !269, line: 158, column: 7)
!452 = !DILocation(line: 158, column: 23, scope: !451)
!453 = !DILocation(line: 158, column: 21, scope: !451)
!454 = !DILocation(line: 158, column: 7, scope: !448)
!455 = !DILocation(line: 159, column: 33, scope: !456)
!456 = distinct !DILexicalBlock(scope: !451, file: !269, line: 158, column: 36)
!457 = !DILocation(line: 159, column: 45, scope: !456)
!458 = !DILocation(line: 159, column: 31, scope: !456)
!459 = !DILocation(line: 159, column: 27, scope: !456)
!460 = !DILocation(line: 159, column: 9, scope: !456)
!461 = !DILocation(line: 159, column: 25, scope: !456)
!462 = !DILocation(line: 160, column: 33, scope: !456)
!463 = !DILocation(line: 160, column: 45, scope: !456)
!464 = !DILocation(line: 160, column: 31, scope: !456)
!465 = !DILocation(line: 160, column: 27, scope: !456)
!466 = !DILocation(line: 160, column: 9, scope: !456)
!467 = !DILocation(line: 160, column: 25, scope: !456)
!468 = !DILocation(line: 161, column: 20, scope: !456)
!469 = !DILocation(line: 163, column: 30, scope: !456)
!470 = !DILocation(line: 163, column: 54, scope: !456)
!471 = !DILocation(line: 163, column: 63, scope: !456)
!472 = !DILocation(line: 163, column: 40, scope: !456)
!473 = !DILocation(line: 163, column: 9, scope: !456)
!474 = !DILocation(line: 158, column: 32, scope: !451)
!475 = !DILocation(line: 158, column: 7, scope: !451)
!476 = distinct !{!476, !454, !477}
!477 = !DILocation(line: 165, column: 7, scope: !448)
!478 = !DILocation(line: 166, column: 24, scope: !479)
!479 = distinct !DILexicalBlock(scope: !391, file: !269, line: 166, column: 16)
!480 = !DILocation(line: 166, column: 29, scope: !479)
!481 = !DILocation(line: 166, column: 16, scope: !479)
!482 = !DILocation(line: 166, column: 48, scope: !479)
!483 = !DILocation(line: 167, column: 24, scope: !479)
!484 = !DILocation(line: 167, column: 29, scope: !479)
!485 = !DILocation(line: 167, column: 16, scope: !479)
!486 = !DILocation(line: 166, column: 16, scope: !391)
!487 = !DILocalVariable(name: "msg", scope: !488, file: !269, line: 168, type: !188)
!488 = distinct !DILexicalBlock(scope: !479, file: !269, line: 167, column: 48)
!489 = !DILocation(line: 168, column: 19, scope: !488)
!490 = !DILocation(line: 171, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !269, line: 171, column: 11)
!492 = !DILocation(line: 171, column: 13, scope: !491)
!493 = !DILocation(line: 171, column: 20, scope: !491)
!494 = !DILocation(line: 171, column: 17, scope: !491)
!495 = !DILocation(line: 171, column: 11, scope: !488)
!496 = !DILocation(line: 172, column: 22, scope: !491)
!497 = !DILocation(line: 172, column: 9, scope: !491)
!498 = !DILocation(line: 174, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !488, file: !269, line: 174, column: 11)
!500 = !DILocation(line: 174, column: 21, scope: !499)
!501 = !DILocation(line: 174, column: 11, scope: !488)
!502 = !DILocation(line: 175, column: 9, scope: !499)
!503 = !DILocation(line: 177, column: 8, scope: !488)
!504 = !DILocation(line: 178, column: 32, scope: !488)
!505 = !DILocation(line: 178, column: 38, scope: !488)
!506 = !DILocation(line: 178, column: 43, scope: !488)
!507 = !DILocation(line: 178, column: 19, scope: !488)
!508 = !DILocation(line: 178, column: 17, scope: !488)
!509 = !DILocation(line: 179, column: 35, scope: !488)
!510 = !DILocation(line: 179, column: 41, scope: !488)
!511 = !DILocation(line: 179, column: 46, scope: !488)
!512 = !DILocation(line: 179, column: 22, scope: !488)
!513 = !DILocation(line: 179, column: 20, scope: !488)
!514 = !DILocation(line: 181, column: 11, scope: !515)
!515 = distinct !DILexicalBlock(scope: !488, file: !269, line: 181, column: 11)
!516 = !DILocation(line: 181, column: 21, scope: !515)
!517 = !DILocation(line: 181, column: 11, scope: !488)
!518 = !DILocation(line: 182, column: 9, scope: !515)
!519 = !DILocation(line: 185, column: 11, scope: !520)
!520 = distinct !DILexicalBlock(scope: !488, file: !269, line: 185, column: 11)
!521 = !DILocation(line: 185, column: 24, scope: !520)
!522 = !DILocation(line: 185, column: 11, scope: !488)
!523 = !DILocation(line: 186, column: 9, scope: !520)
!524 = !DILocation(line: 189, column: 24, scope: !525)
!525 = distinct !DILexicalBlock(scope: !479, file: !269, line: 189, column: 16)
!526 = !DILocation(line: 189, column: 29, scope: !525)
!527 = !DILocation(line: 189, column: 16, scope: !525)
!528 = !DILocation(line: 189, column: 48, scope: !525)
!529 = !DILocation(line: 190, column: 24, scope: !525)
!530 = !DILocation(line: 190, column: 29, scope: !525)
!531 = !DILocation(line: 190, column: 16, scope: !525)
!532 = !DILocation(line: 189, column: 16, scope: !479)
!533 = !DILocalVariable(name: "msg", scope: !534, file: !269, line: 191, type: !188)
!534 = distinct !DILexicalBlock(scope: !525, file: !269, line: 190, column: 48)
!535 = !DILocation(line: 191, column: 19, scope: !534)
!536 = !DILocation(line: 194, column: 11, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !269, line: 194, column: 11)
!538 = !DILocation(line: 194, column: 18, scope: !537)
!539 = !DILocation(line: 194, column: 15, scope: !537)
!540 = !DILocation(line: 194, column: 11, scope: !534)
!541 = !DILocation(line: 195, column: 22, scope: !537)
!542 = !DILocation(line: 195, column: 9, scope: !537)
!543 = !DILocation(line: 197, column: 36, scope: !534)
!544 = !DILocation(line: 197, column: 42, scope: !534)
!545 = !DILocation(line: 197, column: 47, scope: !534)
!546 = !DILocation(line: 197, column: 23, scope: !534)
!547 = !DILocation(line: 197, column: 21, scope: !534)
!548 = !DILocation(line: 198, column: 5, scope: !534)
!549 = !DILocation(line: 198, column: 24, scope: !550)
!550 = distinct !DILexicalBlock(scope: !525, file: !269, line: 198, column: 16)
!551 = !DILocation(line: 198, column: 29, scope: !550)
!552 = !DILocation(line: 198, column: 16, scope: !550)
!553 = !DILocation(line: 198, column: 49, scope: !550)
!554 = !DILocation(line: 199, column: 24, scope: !550)
!555 = !DILocation(line: 199, column: 29, scope: !550)
!556 = !DILocation(line: 199, column: 16, scope: !550)
!557 = !DILocation(line: 198, column: 16, scope: !525)
!558 = !DILocation(line: 200, column: 23, scope: !559)
!559 = distinct !DILexicalBlock(scope: !550, file: !269, line: 199, column: 49)
!560 = !DILocation(line: 201, column: 8, scope: !559)
!561 = !DILocation(line: 202, column: 5, scope: !559)
!562 = !DILocation(line: 202, column: 24, scope: !563)
!563 = distinct !DILexicalBlock(scope: !550, file: !269, line: 202, column: 16)
!564 = !DILocation(line: 202, column: 29, scope: !563)
!565 = !DILocation(line: 202, column: 16, scope: !563)
!566 = !DILocation(line: 202, column: 54, scope: !563)
!567 = !DILocation(line: 203, column: 24, scope: !563)
!568 = !DILocation(line: 203, column: 29, scope: !563)
!569 = !DILocation(line: 203, column: 16, scope: !563)
!570 = !DILocation(line: 202, column: 16, scope: !550)
!571 = !DILocation(line: 204, column: 28, scope: !572)
!572 = distinct !DILexicalBlock(scope: !563, file: !269, line: 203, column: 54)
!573 = !DILocation(line: 205, column: 8, scope: !572)
!574 = !DILocation(line: 206, column: 5, scope: !572)
!575 = !DILocation(line: 206, column: 24, scope: !576)
!576 = distinct !DILexicalBlock(scope: !563, file: !269, line: 206, column: 16)
!577 = !DILocation(line: 206, column: 29, scope: !576)
!578 = !DILocation(line: 206, column: 16, scope: !576)
!579 = !DILocation(line: 206, column: 46, scope: !576)
!580 = !DILocation(line: 206, column: 57, scope: !576)
!581 = !DILocation(line: 206, column: 62, scope: !576)
!582 = !DILocation(line: 206, column: 49, scope: !576)
!583 = !DILocation(line: 206, column: 16, scope: !563)
!584 = !DILocation(line: 207, column: 15, scope: !585)
!585 = distinct !DILexicalBlock(scope: !576, file: !269, line: 206, column: 79)
!586 = !DILocation(line: 208, column: 8, scope: !585)
!587 = !DILocation(line: 209, column: 5, scope: !585)
!588 = !DILocation(line: 209, column: 24, scope: !589)
!589 = distinct !DILexicalBlock(scope: !576, file: !269, line: 209, column: 16)
!590 = !DILocation(line: 209, column: 29, scope: !589)
!591 = !DILocation(line: 209, column: 16, scope: !589)
!592 = !DILocation(line: 209, column: 48, scope: !589)
!593 = !DILocation(line: 209, column: 59, scope: !589)
!594 = !DILocation(line: 209, column: 64, scope: !589)
!595 = !DILocation(line: 209, column: 51, scope: !589)
!596 = !DILocation(line: 209, column: 16, scope: !576)
!597 = !DILocation(line: 210, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !589, file: !269, line: 209, column: 83)
!599 = !DILocation(line: 211, column: 5, scope: !598)
!600 = !DILocation(line: 211, column: 24, scope: !601)
!601 = distinct !DILexicalBlock(scope: !589, file: !269, line: 211, column: 16)
!602 = !DILocation(line: 211, column: 29, scope: !601)
!603 = !DILocation(line: 211, column: 16, scope: !601)
!604 = !DILocation(line: 211, column: 47, scope: !601)
!605 = !DILocation(line: 212, column: 24, scope: !601)
!606 = !DILocation(line: 212, column: 29, scope: !601)
!607 = !DILocation(line: 212, column: 16, scope: !601)
!608 = !DILocation(line: 211, column: 16, scope: !589)
!609 = !DILocalVariable(name: "msg", scope: !610, file: !269, line: 213, type: !188)
!610 = distinct !DILexicalBlock(scope: !601, file: !269, line: 212, column: 47)
!611 = !DILocation(line: 213, column: 19, scope: !610)
!612 = !DILocation(line: 214, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !269, line: 214, column: 11)
!614 = !DILocation(line: 214, column: 18, scope: !613)
!615 = !DILocation(line: 214, column: 15, scope: !613)
!616 = !DILocation(line: 214, column: 11, scope: !610)
!617 = !DILocation(line: 215, column: 22, scope: !613)
!618 = !DILocation(line: 215, column: 9, scope: !613)
!619 = !DILocation(line: 217, column: 30, scope: !610)
!620 = !DILocation(line: 217, column: 36, scope: !610)
!621 = !DILocation(line: 217, column: 41, scope: !610)
!622 = !DILocation(line: 217, column: 17, scope: !610)
!623 = !DILocation(line: 217, column: 15, scope: !610)
!624 = !DILocation(line: 218, column: 5, scope: !610)
!625 = !DILocation(line: 220, column: 28, scope: !626)
!626 = distinct !DILexicalBlock(scope: !601, file: !269, line: 218, column: 12)
!627 = !DILocation(line: 220, column: 38, scope: !626)
!628 = !DILocation(line: 220, column: 44, scope: !626)
!629 = !DILocation(line: 220, column: 7, scope: !626)
!630 = distinct !{!630, !337, !631}
!631 = !DILocation(line: 222, column: 3, scope: !268)
!632 = !DILocation(line: 224, column: 33, scope: !268)
!633 = !DILocation(line: 224, column: 42, scope: !268)
!634 = !DILocation(line: 224, column: 32, scope: !268)
!635 = !DILocation(line: 224, column: 47, scope: !268)
!636 = !DILocation(line: 224, column: 25, scope: !268)
!637 = !DILocation(line: 224, column: 16, scope: !268)
!638 = !DILocation(line: 224, column: 14, scope: !268)
!639 = !DILocation(line: 225, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !268, file: !269, line: 225, column: 7)
!641 = !DILocation(line: 225, column: 7, scope: !268)
!642 = !DILocation(line: 226, column: 5, scope: !640)
!643 = !DILocation(line: 227, column: 20, scope: !268)
!644 = !DILocation(line: 227, column: 3, scope: !268)
!645 = !DILocation(line: 228, column: 10, scope: !268)
!646 = !DILocation(line: 228, column: 3, scope: !268)
!647 = !DILocation(line: 228, column: 32, scope: !268)
!648 = !DILocation(line: 228, column: 41, scope: !268)
!649 = !DILocation(line: 229, column: 3, scope: !268)
!650 = !DILocation(line: 229, column: 14, scope: !268)
!651 = !DILocation(line: 229, column: 24, scope: !268)
!652 = !DILocation(line: 231, column: 14, scope: !268)
!653 = !DILocation(line: 231, column: 4, scope: !268)
!654 = !DILocation(line: 231, column: 12, scope: !268)
!655 = !DILocation(line: 232, column: 14, scope: !268)
!656 = !DILocation(line: 232, column: 4, scope: !268)
!657 = !DILocation(line: 232, column: 12, scope: !268)
!658 = !DILocation(line: 234, column: 17, scope: !268)
!659 = !DILocation(line: 234, column: 28, scope: !268)
!660 = !DILocation(line: 234, column: 42, scope: !268)
!661 = !DILocation(line: 234, column: 57, scope: !268)
!662 = !DILocation(line: 235, column: 17, scope: !268)
!663 = !DILocation(line: 235, column: 39, scope: !268)
!664 = !DILocation(line: 234, column: 3, scope: !268)
!665 = !DILocation(line: 236, column: 1, scope: !268)
!666 = distinct !DISubprogram(name: "__streq", scope: !269, file: !269, line: 49, type: !667, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !205, retainedNodes: !4)
!667 = !DISubroutineType(types: !668)
!668 = !{!44, !188, !188}
!669 = !DILocalVariable(name: "a", arg: 1, scope: !666, file: !269, line: 49, type: !188)
!670 = !DILocation(line: 49, column: 32, scope: !666)
!671 = !DILocalVariable(name: "b", arg: 2, scope: !666, file: !269, line: 49, type: !188)
!672 = !DILocation(line: 49, column: 47, scope: !666)
!673 = !DILocation(line: 50, column: 3, scope: !666)
!674 = !DILocation(line: 50, column: 11, scope: !666)
!675 = !DILocation(line: 50, column: 10, scope: !666)
!676 = !DILocation(line: 50, column: 17, scope: !666)
!677 = !DILocation(line: 50, column: 16, scope: !666)
!678 = !DILocation(line: 50, column: 13, scope: !666)
!679 = !DILocation(line: 51, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !269, line: 51, column: 9)
!681 = distinct !DILexicalBlock(scope: !666, file: !269, line: 50, column: 20)
!682 = !DILocation(line: 51, column: 10, scope: !680)
!683 = !DILocation(line: 51, column: 9, scope: !681)
!684 = !DILocation(line: 52, column: 7, scope: !680)
!685 = !DILocation(line: 53, column: 6, scope: !681)
!686 = !DILocation(line: 54, column: 6, scope: !681)
!687 = distinct !{!687, !673, !688}
!688 = !DILocation(line: 55, column: 3, scope: !666)
!689 = !DILocation(line: 56, column: 3, scope: !666)
!690 = !DILocation(line: 57, column: 1, scope: !666)
!691 = distinct !DISubprogram(name: "__emit_error", scope: !269, file: !269, line: 20, type: !692, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !205, retainedNodes: !4)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !188}
!694 = !DILocalVariable(name: "msg", arg: 1, scope: !691, file: !269, line: 20, type: !188)
!695 = !DILocation(line: 20, column: 38, scope: !691)
!696 = !DILocation(line: 21, column: 41, scope: !691)
!697 = !DILocation(line: 21, column: 3, scope: !691)
!698 = distinct !DISubprogram(name: "__str_to_int", scope: !269, file: !269, line: 27, type: !699, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !205, retainedNodes: !4)
!699 = !DISubroutineType(types: !700)
!700 = !{!48, !22, !188}
!701 = !DILocalVariable(name: "s", arg: 1, scope: !698, file: !269, line: 27, type: !22)
!702 = !DILocation(line: 27, column: 36, scope: !698)
!703 = !DILocalVariable(name: "error_msg", arg: 2, scope: !698, file: !269, line: 27, type: !188)
!704 = !DILocation(line: 27, column: 51, scope: !698)
!705 = !DILocalVariable(name: "res", scope: !698, file: !269, line: 28, type: !48)
!706 = !DILocation(line: 28, column: 12, scope: !698)
!707 = !DILocalVariable(name: "c", scope: !698, file: !269, line: 29, type: !23)
!708 = !DILocation(line: 29, column: 8, scope: !698)
!709 = !DILocation(line: 31, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !698, file: !269, line: 31, column: 7)
!711 = !DILocation(line: 31, column: 8, scope: !710)
!712 = !DILocation(line: 31, column: 7, scope: !698)
!713 = !DILocation(line: 32, column: 18, scope: !710)
!714 = !DILocation(line: 32, column: 5, scope: !710)
!715 = !DILocation(line: 34, column: 3, scope: !698)
!716 = !DILocation(line: 34, column: 17, scope: !698)
!717 = !DILocation(line: 34, column: 15, scope: !698)
!718 = !DILocation(line: 34, column: 13, scope: !698)
!719 = !DILocation(line: 35, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !269, line: 35, column: 9)
!721 = distinct !DILexicalBlock(scope: !698, file: !269, line: 34, column: 22)
!722 = !DILocation(line: 35, column: 11, scope: !720)
!723 = !DILocation(line: 35, column: 18, scope: !720)
!724 = !DILocation(line: 35, column: 21, scope: !720)
!725 = !DILocation(line: 35, column: 23, scope: !720)
!726 = !DILocation(line: 35, column: 9, scope: !721)
!727 = !DILocation(line: 36, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !720, file: !269, line: 35, column: 31)
!729 = !DILocation(line: 36, column: 17, scope: !728)
!730 = !DILocation(line: 36, column: 25, scope: !728)
!731 = !DILocation(line: 36, column: 27, scope: !728)
!732 = !DILocation(line: 36, column: 24, scope: !728)
!733 = !DILocation(line: 36, column: 22, scope: !728)
!734 = !DILocation(line: 36, column: 11, scope: !728)
!735 = !DILocation(line: 37, column: 5, scope: !728)
!736 = !DILocation(line: 38, column: 20, scope: !737)
!737 = distinct !DILexicalBlock(scope: !720, file: !269, line: 37, column: 12)
!738 = !DILocation(line: 38, column: 7, scope: !737)
!739 = distinct !{!739, !715, !740}
!740 = !DILocation(line: 40, column: 3, scope: !698)
!741 = !DILocation(line: 41, column: 10, scope: !698)
!742 = !DILocation(line: 41, column: 3, scope: !698)
!743 = distinct !DISubprogram(name: "__add_arg", scope: !269, file: !269, line: 74, type: !744, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !205, retainedNodes: !4)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !72, !208, !22, !44}
!746 = !DILocalVariable(name: "argc", arg: 1, scope: !743, file: !269, line: 74, type: !72)
!747 = !DILocation(line: 74, column: 28, scope: !743)
!748 = !DILocalVariable(name: "argv", arg: 2, scope: !743, file: !269, line: 74, type: !208)
!749 = !DILocation(line: 74, column: 41, scope: !743)
!750 = !DILocalVariable(name: "arg", arg: 3, scope: !743, file: !269, line: 74, type: !22)
!751 = !DILocation(line: 74, column: 53, scope: !743)
!752 = !DILocalVariable(name: "argcMax", arg: 4, scope: !743, file: !269, line: 74, type: !44)
!753 = !DILocation(line: 74, column: 62, scope: !743)
!754 = !DILocation(line: 75, column: 8, scope: !755)
!755 = distinct !DILexicalBlock(scope: !743, file: !269, line: 75, column: 7)
!756 = !DILocation(line: 75, column: 7, scope: !755)
!757 = !DILocation(line: 75, column: 14, scope: !755)
!758 = !DILocation(line: 75, column: 12, scope: !755)
!759 = !DILocation(line: 75, column: 7, scope: !743)
!760 = !DILocation(line: 76, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !269, line: 75, column: 23)
!762 = !DILocation(line: 77, column: 3, scope: !761)
!763 = !DILocation(line: 78, column: 19, scope: !764)
!764 = distinct !DILexicalBlock(scope: !755, file: !269, line: 77, column: 10)
!765 = !DILocation(line: 78, column: 5, scope: !764)
!766 = !DILocation(line: 78, column: 11, scope: !764)
!767 = !DILocation(line: 78, column: 10, scope: !764)
!768 = !DILocation(line: 78, column: 17, scope: !764)
!769 = !DILocation(line: 79, column: 7, scope: !764)
!770 = !DILocation(line: 79, column: 12, scope: !764)
!771 = !DILocation(line: 81, column: 1, scope: !743)
!772 = distinct !DISubprogram(name: "__get_sym_str", scope: !269, file: !269, line: 59, type: !773, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !205, retainedNodes: !4)
!773 = !DISubroutineType(types: !774)
!774 = !{!22, !44, !22}
!775 = !DILocalVariable(name: "numChars", arg: 1, scope: !772, file: !269, line: 59, type: !44)
!776 = !DILocation(line: 59, column: 32, scope: !772)
!777 = !DILocalVariable(name: "name", arg: 2, scope: !772, file: !269, line: 59, type: !22)
!778 = !DILocation(line: 59, column: 48, scope: !772)
!779 = !DILocalVariable(name: "i", scope: !772, file: !269, line: 60, type: !44)
!780 = !DILocation(line: 60, column: 7, scope: !772)
!781 = !DILocalVariable(name: "s", scope: !772, file: !269, line: 61, type: !22)
!782 = !DILocation(line: 61, column: 9, scope: !772)
!783 = !DILocation(line: 61, column: 20, scope: !772)
!784 = !DILocation(line: 61, column: 28, scope: !772)
!785 = !DILocation(line: 61, column: 13, scope: !772)
!786 = !DILocation(line: 62, column: 8, scope: !787)
!787 = distinct !DILexicalBlock(scope: !772, file: !269, line: 62, column: 7)
!788 = !DILocation(line: 62, column: 7, scope: !772)
!789 = !DILocation(line: 63, column: 5, scope: !787)
!790 = !DILocation(line: 64, column: 20, scope: !772)
!791 = !DILocation(line: 64, column: 3, scope: !772)
!792 = !DILocation(line: 65, column: 22, scope: !772)
!793 = !DILocation(line: 65, column: 25, scope: !772)
!794 = !DILocation(line: 65, column: 33, scope: !772)
!795 = !DILocation(line: 65, column: 37, scope: !772)
!796 = !DILocation(line: 65, column: 3, scope: !772)
!797 = !DILocation(line: 67, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !772, file: !269, line: 67, column: 3)
!799 = !DILocation(line: 67, column: 8, scope: !798)
!800 = !DILocation(line: 67, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !269, line: 67, column: 3)
!802 = !DILocation(line: 67, column: 15, scope: !801)
!803 = !DILocation(line: 67, column: 14, scope: !801)
!804 = !DILocation(line: 67, column: 3, scope: !798)
!805 = !DILocation(line: 68, column: 27, scope: !801)
!806 = !DILocation(line: 68, column: 40, scope: !801)
!807 = !DILocation(line: 68, column: 42, scope: !801)
!808 = !DILocation(line: 68, column: 30, scope: !801)
!809 = !DILocation(line: 68, column: 5, scope: !801)
!810 = !DILocation(line: 67, column: 26, scope: !801)
!811 = !DILocation(line: 67, column: 3, scope: !801)
!812 = distinct !{!812, !804, !813}
!813 = !DILocation(line: 68, column: 45, scope: !798)
!814 = !DILocation(line: 70, column: 3, scope: !772)
!815 = !DILocation(line: 70, column: 5, scope: !772)
!816 = !DILocation(line: 70, column: 15, scope: !772)
!817 = !DILocation(line: 71, column: 10, scope: !772)
!818 = !DILocation(line: 71, column: 3, scope: !772)
!819 = distinct !DISubprogram(name: "__klee_posix_wrapper", scope: !269, file: !269, line: 243, type: !820, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !205, retainedNodes: !4)
!820 = !DISubroutineType(types: !821)
!821 = !{!44, !44, !208, !208}
!822 = !DILocalVariable(name: "argcPtr", arg: 1, scope: !819, file: !269, line: 243, type: !44)
!823 = !DILocation(line: 243, column: 30, scope: !819)
!824 = !DILocalVariable(name: "argvPtr", arg: 2, scope: !819, file: !269, line: 243, type: !208)
!825 = !DILocation(line: 243, column: 46, scope: !819)
!826 = !DILocalVariable(name: "envp", arg: 3, scope: !819, file: !269, line: 243, type: !208)
!827 = !DILocation(line: 243, column: 62, scope: !819)
!828 = !DILocation(line: 244, column: 3, scope: !819)
!829 = !DILocation(line: 245, column: 36, scope: !819)
!830 = !DILocation(line: 245, column: 45, scope: !819)
!831 = !DILocation(line: 245, column: 54, scope: !819)
!832 = !DILocation(line: 245, column: 10, scope: !819)
!833 = !DILocation(line: 245, column: 3, scope: !819)
!834 = distinct !DISubprogram(name: "__isprint", scope: !269, file: !269, line: 44, type: !835, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !205, retainedNodes: !4)
!835 = !DISubroutineType(types: !836)
!836 = !{!44, !189}
!837 = !DILocalVariable(name: "c", arg: 1, scope: !834, file: !269, line: 44, type: !189)
!838 = !DILocation(line: 44, column: 33, scope: !834)
!839 = !DILocation(line: 46, column: 17, scope: !834)
!840 = !DILocation(line: 46, column: 14, scope: !834)
!841 = !DILocation(line: 46, column: 19, scope: !834)
!842 = !DILocation(line: 46, column: 3, scope: !834)
!843 = distinct !DISubprogram(name: "aes_print", scope: !210, file: !210, line: 10, type: !844, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !4)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !848, line: 24, baseType: !849)
!848 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !31, line: 38, baseType: !137)
!850 = !DILocalVariable(name: "str", arg: 1, scope: !843, file: !210, line: 10, type: !846)
!851 = !DILocation(line: 10, column: 25, scope: !843)
!852 = !DILocalVariable(name: "i", scope: !843, file: !210, line: 11, type: !137)
!853 = !DILocation(line: 11, column: 19, scope: !843)
!854 = !DILocation(line: 12, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !843, file: !210, line: 12, column: 5)
!856 = !DILocation(line: 12, column: 9, scope: !855)
!857 = !DILocation(line: 12, column: 16, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !210, line: 12, column: 5)
!859 = !DILocation(line: 12, column: 18, scope: !858)
!860 = !DILocation(line: 12, column: 5, scope: !855)
!861 = !DILocation(line: 13, column: 24, scope: !858)
!862 = !DILocation(line: 13, column: 28, scope: !858)
!863 = !DILocation(line: 13, column: 9, scope: !858)
!864 = !DILocation(line: 12, column: 24, scope: !858)
!865 = !DILocation(line: 12, column: 5, scope: !858)
!866 = distinct !{!866, !860, !867, !868}
!867 = !DILocation(line: 13, column: 30, scope: !855)
!868 = !{!"llvm.loop.mustprogress"}
!869 = !DILocation(line: 14, column: 5, scope: !843)
!870 = !DILocation(line: 15, column: 1, scope: !843)
!871 = distinct !DISubprogram(name: "logic_bomb", scope: !210, file: !210, line: 20, type: !872, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !4)
!872 = !DISubroutineType(types: !873)
!873 = !{!44, !22}
!874 = !DILocalVariable(name: "s", arg: 1, scope: !871, file: !210, line: 20, type: !22)
!875 = !DILocation(line: 20, column: 22, scope: !871)
!876 = !DILocation(line: 21, column: 15, scope: !877)
!877 = distinct !DILexicalBlock(scope: !871, file: !210, line: 21, column: 8)
!878 = !DILocation(line: 21, column: 8, scope: !877)
!879 = !DILocation(line: 21, column: 18, scope: !877)
!880 = !DILocation(line: 21, column: 8, scope: !871)
!881 = !DILocation(line: 24, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !210, line: 21, column: 24)
!883 = !DILocalVariable(name: "decodetext", scope: !871, file: !210, line: 28, type: !884)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 128, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 16)
!887 = !DILocation(line: 28, column: 13, scope: !871)
!888 = !DILocalVariable(name: "ciphertext", scope: !871, file: !210, line: 29, type: !884)
!889 = !DILocation(line: 29, column: 13, scope: !871)
!890 = !DILocalVariable(name: "plaintext", scope: !871, file: !210, line: 30, type: !884)
!891 = !DILocation(line: 30, column: 13, scope: !871)
!892 = !DILocation(line: 32, column: 24, scope: !871)
!893 = !DILocation(line: 32, column: 5, scope: !871)
!894 = !DILocation(line: 35, column: 28, scope: !895)
!895 = distinct !DILexicalBlock(scope: !871, file: !210, line: 35, column: 8)
!896 = !DILocation(line: 35, column: 47, scope: !895)
!897 = !DILocation(line: 35, column: 13, scope: !895)
!898 = !DILocation(line: 35, column: 10, scope: !895)
!899 = !DILocation(line: 35, column: 8, scope: !871)
!900 = !DILocation(line: 36, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !895, file: !210, line: 35, column: 63)
!902 = !DILocation(line: 37, column: 5, scope: !901)
!903 = !DILocation(line: 40, column: 1, scope: !871)
!904 = distinct !DISubprogram(name: "main", scope: !210, file: !210, line: 42, type: !905, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !4)
!905 = !DISubroutineType(types: !906)
!906 = !{!44, !44, !208}
!907 = !DILocalVariable(name: "argc", arg: 1, scope: !904, file: !210, line: 42, type: !44)
!908 = !DILocation(line: 42, column: 14, scope: !904)
!909 = !DILocalVariable(name: "argv", arg: 2, scope: !904, file: !210, line: 42, type: !208)
!910 = !DILocation(line: 42, column: 27, scope: !904)
!911 = !DILocalVariable(name: "s", scope: !904, file: !210, line: 43, type: !912)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 264, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 33)
!915 = !DILocation(line: 43, column: 6, scope: !904)
!916 = !DILocation(line: 44, column: 20, scope: !904)
!917 = !DILocation(line: 44, column: 1, scope: !904)
!918 = !DILocation(line: 45, column: 13, scope: !904)
!919 = !DILocation(line: 45, column: 18, scope: !904)
!920 = !DILocation(line: 45, column: 1, scope: !904)
!921 = !DILocation(line: 46, column: 19, scope: !904)
!922 = !DILocation(line: 46, column: 8, scope: !904)
!923 = !DILocation(line: 46, column: 1, scope: !904)
!924 = distinct !DISubprogram(name: "klee_init_fds", scope: !8, file: !8, line: 105, type: !925, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !14, !14, !14, !44, !44, !14}
!927 = !DILocalVariable(name: "n_files", arg: 1, scope: !924, file: !8, line: 105, type: !14)
!928 = !DILocation(line: 105, column: 29, scope: !924)
!929 = !DILocalVariable(name: "file_length", arg: 2, scope: !924, file: !8, line: 105, type: !14)
!930 = !DILocation(line: 105, column: 47, scope: !924)
!931 = !DILocalVariable(name: "stdin_length", arg: 3, scope: !924, file: !8, line: 106, type: !14)
!932 = !DILocation(line: 106, column: 29, scope: !924)
!933 = !DILocalVariable(name: "sym_stdout_flag", arg: 4, scope: !924, file: !8, line: 106, type: !44)
!934 = !DILocation(line: 106, column: 47, scope: !924)
!935 = !DILocalVariable(name: "save_all_writes_flag", arg: 5, scope: !924, file: !8, line: 107, type: !44)
!936 = !DILocation(line: 107, column: 24, scope: !924)
!937 = !DILocalVariable(name: "max_failures", arg: 6, scope: !924, file: !8, line: 107, type: !14)
!938 = !DILocation(line: 107, column: 55, scope: !924)
!939 = !DILocalVariable(name: "k", scope: !924, file: !8, line: 108, type: !14)
!940 = !DILocation(line: 108, column: 12, scope: !924)
!941 = !DILocalVariable(name: "name", scope: !924, file: !8, line: 109, type: !942)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 56, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 7)
!945 = !DILocation(line: 109, column: 8, scope: !924)
!946 = !DILocalVariable(name: "s", scope: !924, file: !8, line: 110, type: !26)
!947 = !DILocation(line: 110, column: 17, scope: !924)
!948 = !DILocation(line: 112, column: 3, scope: !924)
!949 = !DILocation(line: 114, column: 26, scope: !924)
!950 = !DILocation(line: 114, column: 24, scope: !924)
!951 = !DILocation(line: 115, column: 61, scope: !924)
!952 = !DILocation(line: 115, column: 59, scope: !924)
!953 = !DILocation(line: 115, column: 24, scope: !924)
!954 = !DILocation(line: 115, column: 22, scope: !924)
!955 = !DILocation(line: 116, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !924, file: !8, line: 116, column: 7)
!957 = !DILocation(line: 116, column: 15, scope: !956)
!958 = !DILocation(line: 117, column: 5, scope: !956)
!959 = !DILocation(line: 119, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !924, file: !8, line: 119, column: 3)
!961 = !DILocation(line: 119, column: 8, scope: !960)
!962 = !DILocation(line: 119, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !8, line: 119, column: 3)
!964 = !DILocation(line: 119, column: 17, scope: !963)
!965 = !DILocation(line: 119, column: 15, scope: !963)
!966 = !DILocation(line: 119, column: 3, scope: !960)
!967 = !DILocation(line: 120, column: 21, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !8, line: 119, column: 31)
!969 = !DILocation(line: 120, column: 19, scope: !968)
!970 = !DILocation(line: 120, column: 15, scope: !968)
!971 = !DILocation(line: 120, column: 5, scope: !968)
!972 = !DILocation(line: 120, column: 13, scope: !968)
!973 = !DILocation(line: 121, column: 34, scope: !968)
!974 = !DILocation(line: 121, column: 44, scope: !968)
!975 = !DILocation(line: 121, column: 25, scope: !968)
!976 = !DILocation(line: 121, column: 48, scope: !968)
!977 = !DILocation(line: 121, column: 61, scope: !968)
!978 = !DILocation(line: 121, column: 5, scope: !968)
!979 = !DILocation(line: 119, column: 27, scope: !963)
!980 = !DILocation(line: 119, column: 3, scope: !963)
!981 = distinct !{!981, !966, !982}
!982 = !DILocation(line: 122, column: 3, scope: !960)
!983 = !DILocation(line: 125, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !924, file: !8, line: 125, column: 7)
!985 = !DILocation(line: 125, column: 7, scope: !924)
!986 = !DILocation(line: 126, column: 26, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !8, line: 125, column: 21)
!988 = !DILocation(line: 126, column: 24, scope: !987)
!989 = !DILocation(line: 127, column: 19, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !8, line: 127, column: 9)
!991 = !DILocation(line: 127, column: 10, scope: !990)
!992 = !DILocation(line: 127, column: 9, scope: !987)
!993 = !DILocation(line: 128, column: 7, scope: !990)
!994 = !DILocation(line: 129, column: 33, scope: !987)
!995 = !DILocation(line: 129, column: 44, scope: !987)
!996 = !DILocation(line: 129, column: 5, scope: !987)
!997 = !DILocation(line: 130, column: 39, scope: !987)
!998 = !DILocation(line: 130, column: 28, scope: !987)
!999 = !DILocation(line: 131, column: 3, scope: !987)
!1000 = !DILocation(line: 132, column: 27, scope: !984)
!1001 = !DILocation(line: 134, column: 27, scope: !924)
!1002 = !DILocation(line: 134, column: 25, scope: !924)
!1003 = !DILocation(line: 135, column: 16, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !924, file: !8, line: 135, column: 7)
!1005 = !DILocation(line: 135, column: 7, scope: !1004)
!1006 = !DILocation(line: 135, column: 7, scope: !924)
!1007 = !DILocation(line: 136, column: 26, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !8, line: 135, column: 30)
!1009 = !DILocation(line: 136, column: 24, scope: !1008)
!1010 = !DILocation(line: 137, column: 27, scope: !1008)
!1011 = !DILocation(line: 137, column: 25, scope: !1008)
!1012 = !DILocation(line: 138, column: 27, scope: !1008)
!1013 = !DILocation(line: 138, column: 25, scope: !1008)
!1014 = !DILocation(line: 139, column: 31, scope: !1008)
!1015 = !DILocation(line: 139, column: 29, scope: !1008)
!1016 = !DILocation(line: 140, column: 28, scope: !1008)
!1017 = !DILocation(line: 140, column: 26, scope: !1008)
!1018 = !DILocation(line: 141, column: 20, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !8, line: 141, column: 9)
!1020 = !DILocation(line: 141, column: 11, scope: !1019)
!1021 = !DILocation(line: 141, column: 30, scope: !1019)
!1022 = !DILocation(line: 143, column: 7, scope: !1019)
!1023 = !DILocation(line: 145, column: 33, scope: !1008)
!1024 = !DILocation(line: 145, column: 24, scope: !1008)
!1025 = !DILocation(line: 145, column: 5, scope: !1008)
!1026 = !DILocation(line: 146, column: 33, scope: !1008)
!1027 = !DILocation(line: 146, column: 24, scope: !1008)
!1028 = !DILocation(line: 146, column: 5, scope: !1008)
!1029 = !DILocation(line: 147, column: 33, scope: !1008)
!1030 = !DILocation(line: 147, column: 24, scope: !1008)
!1031 = !DILocation(line: 147, column: 5, scope: !1008)
!1032 = !DILocation(line: 148, column: 33, scope: !1008)
!1033 = !DILocation(line: 148, column: 24, scope: !1008)
!1034 = !DILocation(line: 148, column: 5, scope: !1008)
!1035 = !DILocation(line: 149, column: 33, scope: !1008)
!1036 = !DILocation(line: 149, column: 24, scope: !1008)
!1037 = !DILocation(line: 149, column: 5, scope: !1008)
!1038 = !DILocation(line: 150, column: 3, scope: !1008)
!1039 = !DILocation(line: 153, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !924, file: !8, line: 153, column: 7)
!1041 = !DILocation(line: 153, column: 7, scope: !924)
!1042 = !DILocation(line: 154, column: 27, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !8, line: 153, column: 24)
!1044 = !DILocation(line: 154, column: 25, scope: !1043)
!1045 = !DILocation(line: 155, column: 19, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !8, line: 155, column: 9)
!1047 = !DILocation(line: 155, column: 10, scope: !1046)
!1048 = !DILocation(line: 155, column: 9, scope: !1043)
!1049 = !DILocation(line: 156, column: 7, scope: !1046)
!1050 = !DILocation(line: 157, column: 33, scope: !1043)
!1051 = !DILocation(line: 157, column: 5, scope: !1043)
!1052 = !DILocation(line: 158, column: 39, scope: !1043)
!1053 = !DILocation(line: 158, column: 28, scope: !1043)
!1054 = !DILocation(line: 159, column: 28, scope: !1043)
!1055 = !DILocation(line: 160, column: 3, scope: !1043)
!1056 = !DILocation(line: 161, column: 28, scope: !1040)
!1057 = !DILocation(line: 163, column: 31, scope: !924)
!1058 = !DILocation(line: 163, column: 29, scope: !924)
!1059 = !DILocation(line: 164, column: 1, scope: !924)
!1060 = distinct !DISubprogram(name: "__create_new_dfile", scope: !8, file: !8, line: 42, type: !1061, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !16, !14, !188, !25}
!1063 = !DILocalVariable(name: "dfile", arg: 1, scope: !1060, file: !8, line: 42, type: !16)
!1064 = !DILocation(line: 42, column: 49, scope: !1060)
!1065 = !DILocalVariable(name: "size", arg: 2, scope: !1060, file: !8, line: 42, type: !14)
!1066 = !DILocation(line: 42, column: 65, scope: !1060)
!1067 = !DILocalVariable(name: "name", arg: 3, scope: !1060, file: !8, line: 43, type: !188)
!1068 = !DILocation(line: 43, column: 44, scope: !1060)
!1069 = !DILocalVariable(name: "defaults", arg: 4, scope: !1060, file: !8, line: 43, type: !25)
!1070 = !DILocation(line: 43, column: 65, scope: !1060)
!1071 = !DILocalVariable(name: "s", scope: !1060, file: !8, line: 44, type: !25)
!1072 = !DILocation(line: 44, column: 18, scope: !1060)
!1073 = !DILocation(line: 44, column: 22, scope: !1060)
!1074 = !DILocation(line: 45, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1060, file: !8, line: 45, column: 7)
!1076 = !DILocation(line: 45, column: 7, scope: !1060)
!1077 = !DILocation(line: 46, column: 5, scope: !1075)
!1078 = !DILocalVariable(name: "sp", scope: !1060, file: !8, line: 48, type: !188)
!1079 = !DILocation(line: 48, column: 15, scope: !1060)
!1080 = !DILocalVariable(name: "sname", scope: !1060, file: !8, line: 49, type: !1081)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 64)
!1084 = !DILocation(line: 49, column: 8, scope: !1060)
!1085 = !DILocation(line: 50, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1060, file: !8, line: 50, column: 3)
!1087 = !DILocation(line: 50, column: 10, scope: !1086)
!1088 = !DILocation(line: 50, column: 8, scope: !1086)
!1089 = !DILocation(line: 50, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !8, line: 50, column: 3)
!1091 = !DILocation(line: 50, column: 17, scope: !1090)
!1092 = !DILocation(line: 50, column: 3, scope: !1086)
!1093 = !DILocation(line: 51, column: 23, scope: !1090)
!1094 = !DILocation(line: 51, column: 22, scope: !1090)
!1095 = !DILocation(line: 51, column: 11, scope: !1090)
!1096 = !DILocation(line: 51, column: 14, scope: !1090)
!1097 = !DILocation(line: 51, column: 13, scope: !1090)
!1098 = !DILocation(line: 51, column: 5, scope: !1090)
!1099 = !DILocation(line: 51, column: 20, scope: !1090)
!1100 = !DILocation(line: 50, column: 22, scope: !1090)
!1101 = !DILocation(line: 50, column: 3, scope: !1090)
!1102 = distinct !{!1102, !1092, !1103}
!1103 = !DILocation(line: 51, column: 23, scope: !1086)
!1104 = !DILocation(line: 52, column: 17, scope: !1060)
!1105 = !DILocation(line: 52, column: 20, scope: !1060)
!1106 = !DILocation(line: 52, column: 19, scope: !1060)
!1107 = !DILocation(line: 52, column: 11, scope: !1060)
!1108 = !DILocation(line: 52, column: 3, scope: !1060)
!1109 = !DILocation(line: 54, column: 3, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !8, line: 54, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1060, file: !8, line: 54, column: 3)
!1112 = !DILocation(line: 54, column: 3, scope: !1111)
!1113 = !DILocation(line: 56, column: 17, scope: !1060)
!1114 = !DILocation(line: 56, column: 3, scope: !1060)
!1115 = !DILocation(line: 56, column: 10, scope: !1060)
!1116 = !DILocation(line: 56, column: 15, scope: !1060)
!1117 = !DILocation(line: 57, column: 28, scope: !1060)
!1118 = !DILocation(line: 57, column: 35, scope: !1060)
!1119 = !DILocation(line: 57, column: 21, scope: !1060)
!1120 = !DILocation(line: 57, column: 3, scope: !1060)
!1121 = !DILocation(line: 57, column: 10, scope: !1060)
!1122 = !DILocation(line: 57, column: 19, scope: !1060)
!1123 = !DILocation(line: 58, column: 8, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1060, file: !8, line: 58, column: 7)
!1125 = !DILocation(line: 58, column: 15, scope: !1124)
!1126 = !DILocation(line: 58, column: 7, scope: !1060)
!1127 = !DILocation(line: 59, column: 5, scope: !1124)
!1128 = !DILocation(line: 60, column: 22, scope: !1060)
!1129 = !DILocation(line: 60, column: 29, scope: !1060)
!1130 = !DILocation(line: 60, column: 39, scope: !1060)
!1131 = !DILocation(line: 60, column: 46, scope: !1060)
!1132 = !DILocation(line: 60, column: 52, scope: !1060)
!1133 = !DILocation(line: 60, column: 3, scope: !1060)
!1134 = !DILocation(line: 62, column: 22, scope: !1060)
!1135 = !DILocation(line: 62, column: 37, scope: !1060)
!1136 = !DILocation(line: 62, column: 3, scope: !1060)
!1137 = !DILocation(line: 65, column: 25, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1060, file: !8, line: 65, column: 7)
!1139 = !DILocation(line: 65, column: 28, scope: !1138)
!1140 = !DILocation(line: 65, column: 8, scope: !1138)
!1141 = !DILocation(line: 65, column: 36, scope: !1138)
!1142 = !DILocation(line: 66, column: 8, scope: !1138)
!1143 = !DILocation(line: 66, column: 11, scope: !1138)
!1144 = !DILocation(line: 66, column: 18, scope: !1138)
!1145 = !DILocation(line: 66, column: 32, scope: !1138)
!1146 = !DILocation(line: 65, column: 7, scope: !1060)
!1147 = !DILocation(line: 67, column: 17, scope: !1138)
!1148 = !DILocation(line: 67, column: 27, scope: !1138)
!1149 = !DILocation(line: 67, column: 5, scope: !1138)
!1150 = !DILocation(line: 67, column: 8, scope: !1138)
!1151 = !DILocation(line: 67, column: 15, scope: !1138)
!1152 = !DILocation(line: 72, column: 16, scope: !1060)
!1153 = !DILocation(line: 72, column: 19, scope: !1060)
!1154 = !DILocation(line: 72, column: 26, scope: !1060)
!1155 = !DILocation(line: 72, column: 40, scope: !1060)
!1156 = !DILocation(line: 72, column: 15, scope: !1060)
!1157 = !DILocation(line: 72, column: 3, scope: !1060)
!1158 = !DILocation(line: 76, column: 16, scope: !1060)
!1159 = !DILocation(line: 76, column: 19, scope: !1060)
!1160 = !DILocation(line: 76, column: 30, scope: !1060)
!1161 = !DILocation(line: 76, column: 41, scope: !1060)
!1162 = !DILocation(line: 76, column: 15, scope: !1060)
!1163 = !DILocation(line: 76, column: 3, scope: !1060)
!1164 = !DILocation(line: 78, column: 19, scope: !1060)
!1165 = !DILocation(line: 78, column: 24, scope: !1060)
!1166 = !DILocation(line: 78, column: 27, scope: !1060)
!1167 = !DILocation(line: 78, column: 35, scope: !1060)
!1168 = !DILocation(line: 78, column: 22, scope: !1060)
!1169 = !DILocation(line: 78, column: 3, scope: !1060)
!1170 = !DILocation(line: 79, column: 19, scope: !1060)
!1171 = !DILocation(line: 79, column: 22, scope: !1060)
!1172 = !DILocation(line: 79, column: 25, scope: !1060)
!1173 = !DILocation(line: 79, column: 35, scope: !1060)
!1174 = !DILocation(line: 79, column: 45, scope: !1060)
!1175 = !DILocation(line: 79, column: 32, scope: !1060)
!1176 = !DILocation(line: 79, column: 3, scope: !1060)
!1177 = !DILocation(line: 80, column: 19, scope: !1060)
!1178 = !DILocation(line: 80, column: 22, scope: !1060)
!1179 = !DILocation(line: 80, column: 25, scope: !1060)
!1180 = !DILocation(line: 80, column: 36, scope: !1060)
!1181 = !DILocation(line: 80, column: 46, scope: !1060)
!1182 = !DILocation(line: 80, column: 33, scope: !1060)
!1183 = !DILocation(line: 80, column: 3, scope: !1060)
!1184 = !DILocation(line: 81, column: 19, scope: !1060)
!1185 = !DILocation(line: 81, column: 23, scope: !1060)
!1186 = !DILocation(line: 81, column: 26, scope: !1060)
!1187 = !DILocation(line: 81, column: 33, scope: !1060)
!1188 = !DILocation(line: 81, column: 40, scope: !1060)
!1189 = !DILocation(line: 81, column: 22, scope: !1060)
!1190 = !DILocation(line: 81, column: 3, scope: !1060)
!1191 = !DILocation(line: 82, column: 19, scope: !1060)
!1192 = !DILocation(line: 82, column: 23, scope: !1060)
!1193 = !DILocation(line: 82, column: 26, scope: !1060)
!1194 = !DILocation(line: 82, column: 33, scope: !1060)
!1195 = !DILocation(line: 82, column: 40, scope: !1060)
!1196 = !DILocation(line: 82, column: 22, scope: !1060)
!1197 = !DILocation(line: 82, column: 3, scope: !1060)
!1198 = !DILocation(line: 83, column: 19, scope: !1060)
!1199 = !DILocation(line: 83, column: 23, scope: !1060)
!1200 = !DILocation(line: 83, column: 26, scope: !1060)
!1201 = !DILocation(line: 83, column: 33, scope: !1060)
!1202 = !DILocation(line: 83, column: 40, scope: !1060)
!1203 = !DILocation(line: 83, column: 22, scope: !1060)
!1204 = !DILocation(line: 83, column: 3, scope: !1060)
!1205 = !DILocation(line: 84, column: 19, scope: !1060)
!1206 = !DILocation(line: 84, column: 23, scope: !1060)
!1207 = !DILocation(line: 84, column: 26, scope: !1060)
!1208 = !DILocation(line: 84, column: 33, scope: !1060)
!1209 = !DILocation(line: 84, column: 42, scope: !1060)
!1210 = !DILocation(line: 84, column: 22, scope: !1060)
!1211 = !DILocation(line: 84, column: 3, scope: !1060)
!1212 = !DILocation(line: 85, column: 19, scope: !1060)
!1213 = !DILocation(line: 85, column: 22, scope: !1060)
!1214 = !DILocation(line: 85, column: 25, scope: !1060)
!1215 = !DILocation(line: 85, column: 34, scope: !1060)
!1216 = !DILocation(line: 85, column: 3, scope: !1060)
!1217 = !DILocation(line: 86, column: 19, scope: !1060)
!1218 = !DILocation(line: 86, column: 22, scope: !1060)
!1219 = !DILocation(line: 86, column: 25, scope: !1060)
!1220 = !DILocation(line: 86, column: 35, scope: !1060)
!1221 = !DILocation(line: 86, column: 45, scope: !1060)
!1222 = !DILocation(line: 86, column: 32, scope: !1060)
!1223 = !DILocation(line: 86, column: 3, scope: !1060)
!1224 = !DILocation(line: 87, column: 19, scope: !1060)
!1225 = !DILocation(line: 87, column: 22, scope: !1060)
!1226 = !DILocation(line: 87, column: 25, scope: !1060)
!1227 = !DILocation(line: 87, column: 35, scope: !1060)
!1228 = !DILocation(line: 87, column: 45, scope: !1060)
!1229 = !DILocation(line: 87, column: 32, scope: !1060)
!1230 = !DILocation(line: 87, column: 3, scope: !1060)
!1231 = !DILocation(line: 88, column: 19, scope: !1060)
!1232 = !DILocation(line: 88, column: 22, scope: !1060)
!1233 = !DILocation(line: 88, column: 25, scope: !1060)
!1234 = !DILocation(line: 88, column: 36, scope: !1060)
!1235 = !DILocation(line: 88, column: 3, scope: !1060)
!1236 = !DILocation(line: 89, column: 19, scope: !1060)
!1237 = !DILocation(line: 89, column: 22, scope: !1060)
!1238 = !DILocation(line: 89, column: 25, scope: !1060)
!1239 = !DILocation(line: 89, column: 37, scope: !1060)
!1240 = !DILocation(line: 89, column: 47, scope: !1060)
!1241 = !DILocation(line: 89, column: 34, scope: !1060)
!1242 = !DILocation(line: 89, column: 3, scope: !1060)
!1243 = !DILocation(line: 90, column: 19, scope: !1060)
!1244 = !DILocation(line: 90, column: 22, scope: !1060)
!1245 = !DILocation(line: 90, column: 25, scope: !1060)
!1246 = !DILocation(line: 90, column: 37, scope: !1060)
!1247 = !DILocation(line: 90, column: 47, scope: !1060)
!1248 = !DILocation(line: 90, column: 34, scope: !1060)
!1249 = !DILocation(line: 90, column: 3, scope: !1060)
!1250 = !DILocation(line: 91, column: 19, scope: !1060)
!1251 = !DILocation(line: 91, column: 22, scope: !1060)
!1252 = !DILocation(line: 91, column: 25, scope: !1060)
!1253 = !DILocation(line: 91, column: 37, scope: !1060)
!1254 = !DILocation(line: 91, column: 47, scope: !1060)
!1255 = !DILocation(line: 91, column: 34, scope: !1060)
!1256 = !DILocation(line: 91, column: 3, scope: !1060)
!1257 = !DILocation(line: 93, column: 16, scope: !1060)
!1258 = !DILocation(line: 93, column: 23, scope: !1060)
!1259 = !DILocation(line: 93, column: 3, scope: !1060)
!1260 = !DILocation(line: 93, column: 6, scope: !1060)
!1261 = !DILocation(line: 93, column: 14, scope: !1060)
!1262 = !DILocation(line: 94, column: 3, scope: !1060)
!1263 = !DILocation(line: 94, column: 6, scope: !1060)
!1264 = !DILocation(line: 94, column: 16, scope: !1060)
!1265 = !DILocation(line: 95, column: 17, scope: !1060)
!1266 = !DILocation(line: 95, column: 3, scope: !1060)
!1267 = !DILocation(line: 95, column: 10, scope: !1060)
!1268 = !DILocation(line: 95, column: 15, scope: !1060)
!1269 = !DILocation(line: 96, column: 1, scope: !1060)
!1270 = distinct !DISubprogram(name: "klee_range", scope: !1271, file: !1271, line: 14, type: !1272, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !212, retainedNodes: !4)
!1271 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_range.c", directory: "/tmp")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!44, !44, !44, !188}
!1274 = !DILocalVariable(name: "start", arg: 1, scope: !1270, file: !1271, line: 14, type: !44)
!1275 = !DILocation(line: 14, column: 20, scope: !1270)
!1276 = !DILocalVariable(name: "end", arg: 2, scope: !1270, file: !1271, line: 14, type: !44)
!1277 = !DILocation(line: 14, column: 31, scope: !1270)
!1278 = !DILocalVariable(name: "name", arg: 3, scope: !1270, file: !1271, line: 14, type: !188)
!1279 = !DILocation(line: 14, column: 48, scope: !1270)
!1280 = !DILocalVariable(name: "x", scope: !1270, file: !1271, line: 15, type: !44)
!1281 = !DILocation(line: 15, column: 7, scope: !1270)
!1282 = !DILocation(line: 17, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1270, file: !1271, line: 17, column: 7)
!1284 = !DILocation(line: 17, column: 16, scope: !1283)
!1285 = !DILocation(line: 17, column: 13, scope: !1283)
!1286 = !DILocation(line: 17, column: 7, scope: !1270)
!1287 = !DILocation(line: 18, column: 5, scope: !1283)
!1288 = !DILocation(line: 20, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1270, file: !1271, line: 20, column: 7)
!1290 = !DILocation(line: 20, column: 12, scope: !1289)
!1291 = !DILocation(line: 20, column: 16, scope: !1289)
!1292 = !DILocation(line: 20, column: 14, scope: !1289)
!1293 = !DILocation(line: 20, column: 7, scope: !1270)
!1294 = !DILocation(line: 21, column: 12, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1289, file: !1271, line: 20, column: 21)
!1296 = !DILocation(line: 21, column: 5, scope: !1295)
!1297 = !DILocation(line: 23, column: 24, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1289, file: !1271, line: 22, column: 10)
!1299 = !DILocation(line: 23, column: 38, scope: !1298)
!1300 = !DILocation(line: 23, column: 5, scope: !1298)
!1301 = !DILocation(line: 26, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !1271, line: 26, column: 9)
!1303 = !DILocation(line: 26, column: 14, scope: !1302)
!1304 = !DILocation(line: 26, column: 9, scope: !1298)
!1305 = !DILocation(line: 27, column: 30, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !1271, line: 26, column: 19)
!1307 = !DILocation(line: 27, column: 45, scope: !1306)
!1308 = !DILocation(line: 27, column: 32, scope: !1306)
!1309 = !DILocation(line: 27, column: 19, scope: !1306)
!1310 = !DILocation(line: 27, column: 7, scope: !1306)
!1311 = !DILocation(line: 28, column: 5, scope: !1306)
!1312 = !DILocation(line: 29, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1302, file: !1271, line: 28, column: 12)
!1314 = !DILocation(line: 29, column: 28, scope: !1313)
!1315 = !DILocation(line: 29, column: 25, scope: !1313)
!1316 = !DILocation(line: 29, column: 7, scope: !1313)
!1317 = !DILocation(line: 30, column: 19, scope: !1313)
!1318 = !DILocation(line: 30, column: 23, scope: !1313)
!1319 = !DILocation(line: 30, column: 21, scope: !1313)
!1320 = !DILocation(line: 30, column: 7, scope: !1313)
!1321 = !DILocation(line: 33, column: 12, scope: !1298)
!1322 = !DILocation(line: 33, column: 5, scope: !1298)
!1323 = !DILocation(line: 35, column: 1, scope: !1270)
!1324 = distinct !DISubprogram(name: "open", linkageName: "open64", scope: !1325, file: !1325, line: 48, type: !1326, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1325 = !DIFile(filename: "klee_src/runtime/POSIX/fd_64.c", directory: "/tmp")
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!44, !188, !44, null}
!1328 = !DILocalVariable(name: "pathname", arg: 1, scope: !1324, file: !1325, line: 48, type: !188)
!1329 = !DILocation(line: 48, column: 22, scope: !1324)
!1330 = !DILocalVariable(name: "flags", arg: 2, scope: !1324, file: !1325, line: 48, type: !44)
!1331 = !DILocation(line: 48, column: 36, scope: !1324)
!1332 = !DILocalVariable(name: "mode", scope: !1324, file: !1325, line: 49, type: !97)
!1333 = !DILocation(line: 49, column: 10, scope: !1324)
!1334 = !DILocation(line: 51, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !1325, line: 51, column: 7)
!1336 = !DILocation(line: 51, column: 13, scope: !1335)
!1337 = !DILocation(line: 51, column: 7, scope: !1324)
!1338 = !DILocalVariable(name: "ap", scope: !1339, file: !1325, line: 53, type: !1340)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !1325, line: 51, column: 24)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1341, line: 52, baseType: !1342)
!1341 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1343, line: 32, baseType: !1344)
!1343 = !DIFile(filename: "llvm-130-install_O_D_A/lib/clang/13.0.1/include/stdarg.h", directory: "/tmp")
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1325, baseType: !1345)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 192, elements: !1352)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1346, file: !1325, line: 53, baseType: !14, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1346, file: !1325, line: 53, baseType: !14, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1346, file: !1325, line: 53, baseType: !127, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1346, file: !1325, line: 53, baseType: !127, size: 64, offset: 128)
!1352 = !{!1353}
!1353 = !DISubrange(count: 1)
!1354 = !DILocation(line: 53, column: 13, scope: !1339)
!1355 = !DILocation(line: 54, column: 5, scope: !1339)
!1356 = !DILocation(line: 55, column: 12, scope: !1339)
!1357 = !DILocation(line: 55, column: 10, scope: !1339)
!1358 = !DILocation(line: 56, column: 5, scope: !1339)
!1359 = !DILocation(line: 57, column: 3, scope: !1339)
!1360 = !DILocation(line: 59, column: 20, scope: !1324)
!1361 = !DILocation(line: 59, column: 30, scope: !1324)
!1362 = !DILocation(line: 59, column: 37, scope: !1324)
!1363 = !DILocation(line: 59, column: 10, scope: !1324)
!1364 = !DILocation(line: 59, column: 3, scope: !1324)
!1365 = distinct !DISubprogram(name: "openat", linkageName: "openat64", scope: !1325, file: !1325, line: 62, type: !1366, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!44, !44, !188, !44, null}
!1368 = !DILocalVariable(name: "fd", arg: 1, scope: !1365, file: !1325, line: 62, type: !44)
!1369 = !DILocation(line: 62, column: 16, scope: !1365)
!1370 = !DILocalVariable(name: "pathname", arg: 2, scope: !1365, file: !1325, line: 62, type: !188)
!1371 = !DILocation(line: 62, column: 32, scope: !1365)
!1372 = !DILocalVariable(name: "flags", arg: 3, scope: !1365, file: !1325, line: 62, type: !44)
!1373 = !DILocation(line: 62, column: 46, scope: !1365)
!1374 = !DILocalVariable(name: "mode", scope: !1365, file: !1325, line: 63, type: !97)
!1375 = !DILocation(line: 63, column: 10, scope: !1365)
!1376 = !DILocation(line: 65, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1365, file: !1325, line: 65, column: 7)
!1378 = !DILocation(line: 65, column: 13, scope: !1377)
!1379 = !DILocation(line: 65, column: 7, scope: !1365)
!1380 = !DILocalVariable(name: "ap", scope: !1381, file: !1325, line: 67, type: !1340)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !1325, line: 65, column: 24)
!1382 = !DILocation(line: 67, column: 13, scope: !1381)
!1383 = !DILocation(line: 68, column: 5, scope: !1381)
!1384 = !DILocation(line: 69, column: 12, scope: !1381)
!1385 = !DILocation(line: 69, column: 10, scope: !1381)
!1386 = !DILocation(line: 70, column: 5, scope: !1381)
!1387 = !DILocation(line: 71, column: 3, scope: !1381)
!1388 = !DILocation(line: 73, column: 22, scope: !1365)
!1389 = !DILocation(line: 73, column: 26, scope: !1365)
!1390 = !DILocation(line: 73, column: 36, scope: !1365)
!1391 = !DILocation(line: 73, column: 43, scope: !1365)
!1392 = !DILocation(line: 73, column: 10, scope: !1365)
!1393 = !DILocation(line: 73, column: 3, scope: !1365)
!1394 = distinct !DISubprogram(name: "lseek", linkageName: "lseek64", scope: !1325, file: !1325, line: 86, type: !1395, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!92, !44, !90, !44}
!1397 = !DILocalVariable(name: "fd", arg: 1, scope: !1394, file: !1325, line: 86, type: !44)
!1398 = !DILocation(line: 86, column: 19, scope: !1394)
!1399 = !DILocalVariable(name: "offset", arg: 2, scope: !1394, file: !1325, line: 86, type: !90)
!1400 = !DILocation(line: 86, column: 31, scope: !1394)
!1401 = !DILocalVariable(name: "whence", arg: 3, scope: !1394, file: !1325, line: 86, type: !44)
!1402 = !DILocation(line: 86, column: 43, scope: !1394)
!1403 = !DILocation(line: 87, column: 21, scope: !1394)
!1404 = !DILocation(line: 87, column: 25, scope: !1394)
!1405 = !DILocation(line: 87, column: 33, scope: !1394)
!1406 = !DILocation(line: 87, column: 10, scope: !1394)
!1407 = !DILocation(line: 87, column: 3, scope: !1394)
!1408 = distinct !DISubprogram(name: "__xstat", linkageName: "__xstat64", scope: !1325, file: !1325, line: 90, type: !1409, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!44, !44, !188, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !27, line: 26, size: 1152, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1412, file: !27, line: 31, baseType: !30, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1412, file: !27, line: 36, baseType: !147, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1412, file: !27, line: 44, baseType: !36, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1412, file: !27, line: 45, baseType: !38, size: 32, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1412, file: !27, line: 47, baseType: !40, size: 32, offset: 224)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1412, file: !27, line: 48, baseType: !42, size: 32, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1412, file: !27, line: 50, baseType: !44, size: 32, offset: 288)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1412, file: !27, line: 52, baseType: !30, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1412, file: !27, line: 57, baseType: !47, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1412, file: !27, line: 61, baseType: !50, size: 64, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1412, file: !27, line: 63, baseType: !157, size: 64, offset: 512)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1412, file: !27, line: 74, baseType: !233, size: 128, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1412, file: !27, line: 75, baseType: !233, size: 128, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1412, file: !27, line: 76, baseType: !233, size: 128, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1412, file: !27, line: 89, baseType: !64, size: 192, offset: 960)
!1429 = !DILocalVariable(name: "vers", arg: 1, scope: !1408, file: !1325, line: 90, type: !44)
!1430 = !DILocation(line: 90, column: 17, scope: !1408)
!1431 = !DILocalVariable(name: "path", arg: 2, scope: !1408, file: !1325, line: 90, type: !188)
!1432 = !DILocation(line: 90, column: 35, scope: !1408)
!1433 = !DILocalVariable(name: "buf", arg: 3, scope: !1408, file: !1325, line: 90, type: !1411)
!1434 = !DILocation(line: 90, column: 54, scope: !1408)
!1435 = !DILocation(line: 91, column: 20, scope: !1408)
!1436 = !DILocation(line: 91, column: 43, scope: !1408)
!1437 = !DILocation(line: 91, column: 26, scope: !1408)
!1438 = !DILocation(line: 91, column: 10, scope: !1408)
!1439 = !DILocation(line: 91, column: 3, scope: !1408)
!1440 = distinct !DISubprogram(name: "stat", linkageName: "stat64", scope: !1325, file: !1325, line: 94, type: !1441, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!44, !188, !1411}
!1443 = !DILocalVariable(name: "path", arg: 1, scope: !1440, file: !1325, line: 94, type: !188)
!1444 = !DILocation(line: 94, column: 22, scope: !1440)
!1445 = !DILocalVariable(name: "buf", arg: 2, scope: !1440, file: !1325, line: 94, type: !1411)
!1446 = !DILocation(line: 94, column: 41, scope: !1440)
!1447 = !DILocation(line: 95, column: 20, scope: !1440)
!1448 = !DILocation(line: 95, column: 43, scope: !1440)
!1449 = !DILocation(line: 95, column: 26, scope: !1440)
!1450 = !DILocation(line: 95, column: 10, scope: !1440)
!1451 = !DILocation(line: 95, column: 3, scope: !1440)
!1452 = distinct !DISubprogram(name: "__lxstat", linkageName: "__lxstat64", scope: !1325, file: !1325, line: 98, type: !1409, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1453 = !DILocalVariable(name: "vers", arg: 1, scope: !1452, file: !1325, line: 98, type: !44)
!1454 = !DILocation(line: 98, column: 18, scope: !1452)
!1455 = !DILocalVariable(name: "path", arg: 2, scope: !1452, file: !1325, line: 98, type: !188)
!1456 = !DILocation(line: 98, column: 36, scope: !1452)
!1457 = !DILocalVariable(name: "buf", arg: 3, scope: !1452, file: !1325, line: 98, type: !1411)
!1458 = !DILocation(line: 98, column: 55, scope: !1452)
!1459 = !DILocation(line: 99, column: 21, scope: !1452)
!1460 = !DILocation(line: 99, column: 44, scope: !1452)
!1461 = !DILocation(line: 99, column: 27, scope: !1452)
!1462 = !DILocation(line: 99, column: 10, scope: !1452)
!1463 = !DILocation(line: 99, column: 3, scope: !1452)
!1464 = distinct !DISubprogram(name: "lstat", linkageName: "lstat64", scope: !1325, file: !1325, line: 102, type: !1441, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1465 = !DILocalVariable(name: "path", arg: 1, scope: !1464, file: !1325, line: 102, type: !188)
!1466 = !DILocation(line: 102, column: 23, scope: !1464)
!1467 = !DILocalVariable(name: "buf", arg: 2, scope: !1464, file: !1325, line: 102, type: !1411)
!1468 = !DILocation(line: 102, column: 42, scope: !1464)
!1469 = !DILocation(line: 103, column: 21, scope: !1464)
!1470 = !DILocation(line: 103, column: 44, scope: !1464)
!1471 = !DILocation(line: 103, column: 27, scope: !1464)
!1472 = !DILocation(line: 103, column: 10, scope: !1464)
!1473 = !DILocation(line: 103, column: 3, scope: !1464)
!1474 = distinct !DISubprogram(name: "__fxstat", linkageName: "__fxstat64", scope: !1325, file: !1325, line: 106, type: !1475, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!44, !44, !44, !1411}
!1477 = !DILocalVariable(name: "vers", arg: 1, scope: !1474, file: !1325, line: 106, type: !44)
!1478 = !DILocation(line: 106, column: 18, scope: !1474)
!1479 = !DILocalVariable(name: "fd", arg: 2, scope: !1474, file: !1325, line: 106, type: !44)
!1480 = !DILocation(line: 106, column: 28, scope: !1474)
!1481 = !DILocalVariable(name: "buf", arg: 3, scope: !1474, file: !1325, line: 106, type: !1411)
!1482 = !DILocation(line: 106, column: 45, scope: !1474)
!1483 = !DILocation(line: 107, column: 21, scope: !1474)
!1484 = !DILocation(line: 107, column: 42, scope: !1474)
!1485 = !DILocation(line: 107, column: 25, scope: !1474)
!1486 = !DILocation(line: 107, column: 10, scope: !1474)
!1487 = !DILocation(line: 107, column: 3, scope: !1474)
!1488 = distinct !DISubprogram(name: "fstat", linkageName: "fstat64", scope: !1325, file: !1325, line: 110, type: !1489, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!44, !44, !1411}
!1491 = !DILocalVariable(name: "fd", arg: 1, scope: !1488, file: !1325, line: 110, type: !44)
!1492 = !DILocation(line: 110, column: 15, scope: !1488)
!1493 = !DILocalVariable(name: "buf", arg: 2, scope: !1488, file: !1325, line: 110, type: !1411)
!1494 = !DILocation(line: 110, column: 32, scope: !1488)
!1495 = !DILocation(line: 111, column: 21, scope: !1488)
!1496 = !DILocation(line: 111, column: 42, scope: !1488)
!1497 = !DILocation(line: 111, column: 25, scope: !1488)
!1498 = !DILocation(line: 111, column: 10, scope: !1488)
!1499 = !DILocation(line: 111, column: 3, scope: !1488)
!1500 = distinct !DISubprogram(name: "ftruncate64", scope: !1325, file: !1325, line: 114, type: !198, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1501 = !DILocalVariable(name: "fd", arg: 1, scope: !1500, file: !1325, line: 114, type: !44)
!1502 = !DILocation(line: 114, column: 21, scope: !1500)
!1503 = !DILocalVariable(name: "length", arg: 2, scope: !1500, file: !1325, line: 114, type: !90)
!1504 = !DILocation(line: 114, column: 33, scope: !1500)
!1505 = !DILocation(line: 115, column: 25, scope: !1500)
!1506 = !DILocation(line: 115, column: 29, scope: !1500)
!1507 = !DILocation(line: 115, column: 10, scope: !1500)
!1508 = !DILocation(line: 115, column: 3, scope: !1500)
!1509 = distinct !DISubprogram(name: "statfs", linkageName: "statfs64", scope: !1325, file: !1325, line: 119, type: !1510, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!44, !188, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !1514, line: 24, size: 960, elements: !1515)
!1514 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "")
!1515 = !{!1516, !1518, !1519, !1521, !1522, !1523, !1525, !1526, !1534, !1535, !1536, !1537}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !1513, file: !1514, line: 26, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !31, line: 192, baseType: !48)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !1513, file: !1514, line: 27, baseType: !1517, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !1513, file: !1514, line: 35, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !31, line: 185, baseType: !32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !1513, file: !1514, line: 36, baseType: !1520, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !1513, file: !1514, line: 37, baseType: !1520, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !1513, file: !1514, line: 38, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !31, line: 189, baseType: !32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !1513, file: !1514, line: 39, baseType: !1524, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !1513, file: !1514, line: 41, baseType: !1527, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !31, line: 155, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 155, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1528, file: !31, line: 155, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !1532)
!1532 = !{!1533}
!1533 = !DISubrange(count: 2)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !1513, file: !1514, line: 42, baseType: !1517, size: 64, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !1513, file: !1514, line: 43, baseType: !1517, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1513, file: !1514, line: 44, baseType: !1517, size: 64, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !1513, file: !1514, line: 45, baseType: !1538, size: 256, offset: 704)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1517, size: 256, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 4)
!1541 = !DILocalVariable(name: "path", arg: 1, scope: !1509, file: !1325, line: 119, type: !188)
!1542 = !DILocation(line: 119, column: 24, scope: !1509)
!1543 = !DILocalVariable(name: "buf", arg: 2, scope: !1509, file: !1325, line: 119, type: !1512)
!1544 = !DILocation(line: 119, column: 45, scope: !1509)
!1545 = !DILocation(line: 120, column: 22, scope: !1509)
!1546 = !DILocation(line: 120, column: 28, scope: !1509)
!1547 = !DILocation(line: 120, column: 10, scope: !1509)
!1548 = !DILocation(line: 120, column: 3, scope: !1509)
!1549 = distinct !DISubprogram(name: "getdents64", scope: !1325, file: !1325, line: 123, type: !1550, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !215, retainedNodes: !4)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!173, !44, !127, !174}
!1552 = !DILocalVariable(name: "fd", arg: 1, scope: !1549, file: !1325, line: 123, type: !44)
!1553 = !DILocation(line: 123, column: 24, scope: !1549)
!1554 = !DILocalVariable(name: "dirp", arg: 2, scope: !1549, file: !1325, line: 123, type: !127)
!1555 = !DILocation(line: 123, column: 34, scope: !1549)
!1556 = !DILocalVariable(name: "count", arg: 3, scope: !1549, file: !1325, line: 123, type: !174)
!1557 = !DILocation(line: 123, column: 47, scope: !1549)
!1558 = !DILocation(line: 124, column: 24, scope: !1549)
!1559 = !DILocation(line: 124, column: 47, scope: !1549)
!1560 = !DILocation(line: 124, column: 28, scope: !1549)
!1561 = !DILocation(line: 124, column: 53, scope: !1549)
!1562 = !DILocation(line: 124, column: 10, scope: !1549)
!1563 = !DILocation(line: 124, column: 3, scope: !1549)
!1564 = distinct !DISubprogram(name: "strlen", scope: !1565, file: !1565, line: 12, type: !1566, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !4)
!1565 = !DIFile(filename: "klee_src/runtime/klee-libc/strlen.c", directory: "/tmp")
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!32, !188}
!1568 = !DILocalVariable(name: "str", arg: 1, scope: !1564, file: !1565, line: 12, type: !188)
!1569 = !DILocation(line: 12, column: 27, scope: !1564)
!1570 = !DILocalVariable(name: "s", scope: !1564, file: !1565, line: 13, type: !188)
!1571 = !DILocation(line: 13, column: 15, scope: !1564)
!1572 = !DILocation(line: 13, column: 19, scope: !1564)
!1573 = !DILocation(line: 14, column: 3, scope: !1564)
!1574 = !DILocation(line: 14, column: 11, scope: !1564)
!1575 = !DILocation(line: 14, column: 10, scope: !1564)
!1576 = !DILocation(line: 15, column: 5, scope: !1564)
!1577 = distinct !{!1577, !1573, !1578}
!1578 = !DILocation(line: 15, column: 7, scope: !1564)
!1579 = !DILocation(line: 16, column: 10, scope: !1564)
!1580 = !DILocation(line: 16, column: 14, scope: !1564)
!1581 = !DILocation(line: 16, column: 12, scope: !1564)
!1582 = !DILocation(line: 16, column: 3, scope: !1564)
!1583 = distinct !DISubprogram(name: "memcmp", scope: !1584, file: !1584, line: 42, type: !1585, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !4)
!1584 = !DIFile(filename: "klee_src/runtime/Freestanding/memcmp.c", directory: "/tmp")
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!44, !181, !181, !174}
!1587 = !DILocalVariable(name: "s1", arg: 1, scope: !1583, file: !1584, line: 42, type: !181)
!1588 = !DILocation(line: 42, column: 24, scope: !1583)
!1589 = !DILocalVariable(name: "s2", arg: 2, scope: !1583, file: !1584, line: 42, type: !181)
!1590 = !DILocation(line: 42, column: 40, scope: !1583)
!1591 = !DILocalVariable(name: "n", arg: 3, scope: !1583, file: !1584, line: 42, type: !174)
!1592 = !DILocation(line: 42, column: 51, scope: !1583)
!1593 = !DILocation(line: 43, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1583, file: !1584, line: 43, column: 7)
!1595 = !DILocation(line: 43, column: 9, scope: !1594)
!1596 = !DILocation(line: 43, column: 7, scope: !1583)
!1597 = !DILocalVariable(name: "p1", scope: !1598, file: !1584, line: 44, type: !1599)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !1584, line: 43, column: 15)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1601 = !DILocation(line: 44, column: 26, scope: !1598)
!1602 = !DILocation(line: 44, column: 31, scope: !1598)
!1603 = !DILocalVariable(name: "p2", scope: !1598, file: !1584, line: 44, type: !1599)
!1604 = !DILocation(line: 44, column: 36, scope: !1598)
!1605 = !DILocation(line: 44, column: 41, scope: !1598)
!1606 = !DILocation(line: 46, column: 5, scope: !1598)
!1607 = !DILocation(line: 47, column: 14, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !1584, line: 47, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1598, file: !1584, line: 46, column: 8)
!1610 = !DILocation(line: 47, column: 11, scope: !1608)
!1611 = !DILocation(line: 47, column: 23, scope: !1608)
!1612 = !DILocation(line: 47, column: 20, scope: !1608)
!1613 = !DILocation(line: 47, column: 17, scope: !1608)
!1614 = !DILocation(line: 47, column: 11, scope: !1609)
!1615 = !DILocation(line: 48, column: 18, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1608, file: !1584, line: 47, column: 27)
!1617 = !DILocation(line: 48, column: 17, scope: !1616)
!1618 = !DILocation(line: 48, column: 26, scope: !1616)
!1619 = !DILocation(line: 48, column: 25, scope: !1616)
!1620 = !DILocation(line: 48, column: 23, scope: !1616)
!1621 = !DILocation(line: 48, column: 9, scope: !1616)
!1622 = !DILocation(line: 50, column: 14, scope: !1598)
!1623 = !DILocation(line: 50, column: 18, scope: !1598)
!1624 = !DILocation(line: 50, column: 5, scope: !1609)
!1625 = distinct !{!1625, !1606, !1626, !868}
!1626 = !DILocation(line: 50, column: 22, scope: !1598)
!1627 = !DILocation(line: 52, column: 3, scope: !1583)
!1628 = !DILocation(line: 53, column: 1, scope: !1583)
!1629 = distinct !DISubprogram(name: "access", scope: !102, file: !102, line: 90, type: !1630, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!44, !188, !44}
!1632 = !DILocalVariable(name: "pathname", arg: 1, scope: !1629, file: !102, line: 90, type: !188)
!1633 = !DILocation(line: 90, column: 24, scope: !1629)
!1634 = !DILocalVariable(name: "mode", arg: 2, scope: !1629, file: !102, line: 90, type: !44)
!1635 = !DILocation(line: 90, column: 38, scope: !1629)
!1636 = !DILocalVariable(name: "dfile", scope: !1629, file: !102, line: 91, type: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "exe_disk_file_t", file: !10, line: 56, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 52, size: 192, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1639, file: !10, line: 53, baseType: !14, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1639, file: !10, line: 54, baseType: !22, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1639, file: !10, line: 55, baseType: !1644, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !27, line: 103, size: 1152, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1645, file: !27, line: 108, baseType: !30, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1645, file: !27, line: 110, baseType: !34, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1645, file: !27, line: 111, baseType: !36, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1645, file: !27, line: 112, baseType: !38, size: 32, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1645, file: !27, line: 119, baseType: !40, size: 32, offset: 224)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1645, file: !27, line: 120, baseType: !42, size: 32, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1645, file: !27, line: 122, baseType: !44, size: 32, offset: 288)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1645, file: !27, line: 123, baseType: !30, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1645, file: !27, line: 124, baseType: !47, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1645, file: !27, line: 130, baseType: !50, size: 64, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1645, file: !27, line: 131, baseType: !52, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1645, file: !27, line: 139, baseType: !159, size: 128, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1645, file: !27, line: 140, baseType: !159, size: 128, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1645, file: !27, line: 141, baseType: !159, size: 128, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1645, file: !27, line: 151, baseType: !64, size: 192, offset: 960)
!1662 = !DILocation(line: 91, column: 20, scope: !1629)
!1663 = !DILocation(line: 91, column: 43, scope: !1629)
!1664 = !DILocation(line: 91, column: 28, scope: !1629)
!1665 = !DILocation(line: 93, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1629, file: !102, line: 93, column: 7)
!1667 = !DILocation(line: 93, column: 7, scope: !1629)
!1668 = !DILocation(line: 96, column: 5, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !102, line: 93, column: 14)
!1670 = !DILocation(line: 98, column: 51, scope: !1629)
!1671 = !DILocation(line: 98, column: 31, scope: !1629)
!1672 = !DILocation(line: 98, column: 62, scope: !1629)
!1673 = !DILocation(line: 98, column: 10, scope: !1629)
!1674 = !DILocation(line: 98, column: 3, scope: !1629)
!1675 = !DILocation(line: 99, column: 1, scope: !1629)
!1676 = distinct !DISubprogram(name: "__get_sym_file", scope: !102, file: !102, line: 37, type: !1677, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1637, !188}
!1679 = !DILocalVariable(name: "pathname", arg: 1, scope: !1676, file: !102, line: 37, type: !188)
!1680 = !DILocation(line: 37, column: 52, scope: !1676)
!1681 = !DILocation(line: 38, column: 8, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !102, line: 38, column: 7)
!1683 = !DILocation(line: 38, column: 7, scope: !1676)
!1684 = !DILocation(line: 39, column: 5, scope: !1682)
!1685 = !DILocation(line: 43, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1676, file: !102, line: 43, column: 7)
!1687 = !DILocation(line: 43, column: 19, scope: !1686)
!1688 = !DILocation(line: 43, column: 7, scope: !1676)
!1689 = !DILocalVariable(name: "cwd", scope: !1690, file: !102, line: 44, type: !1691)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !102, line: 43, column: 27)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !291)
!1692 = !DILocation(line: 44, column: 10, scope: !1690)
!1693 = !DILocation(line: 45, column: 16, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !102, line: 45, column: 9)
!1695 = !DILocation(line: 45, column: 9, scope: !1694)
!1696 = !DILocation(line: 45, column: 9, scope: !1690)
!1697 = !DILocalVariable(name: "cwd_len", scope: !1698, file: !102, line: 46, type: !174)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !102, line: 45, column: 28)
!1699 = !DILocation(line: 46, column: 14, scope: !1698)
!1700 = !DILocation(line: 46, column: 31, scope: !1698)
!1701 = !DILocation(line: 46, column: 24, scope: !1698)
!1702 = !DILocation(line: 48, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !102, line: 48, column: 11)
!1704 = !DILocation(line: 48, column: 19, scope: !1703)
!1705 = !DILocation(line: 48, column: 23, scope: !1703)
!1706 = !DILocation(line: 48, column: 30, scope: !1703)
!1707 = !DILocation(line: 48, column: 38, scope: !1703)
!1708 = !DILocation(line: 48, column: 26, scope: !1703)
!1709 = !DILocation(line: 48, column: 43, scope: !1703)
!1710 = !DILocation(line: 48, column: 11, scope: !1698)
!1711 = !DILocation(line: 49, column: 13, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !102, line: 48, column: 51)
!1713 = !DILocation(line: 49, column: 9, scope: !1712)
!1714 = !DILocation(line: 49, column: 24, scope: !1712)
!1715 = !DILocation(line: 50, column: 7, scope: !1712)
!1716 = !DILocation(line: 51, column: 19, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !102, line: 51, column: 11)
!1718 = !DILocation(line: 51, column: 29, scope: !1717)
!1719 = !DILocation(line: 51, column: 34, scope: !1717)
!1720 = !DILocation(line: 51, column: 11, scope: !1717)
!1721 = !DILocation(line: 51, column: 43, scope: !1717)
!1722 = !DILocation(line: 51, column: 11, scope: !1698)
!1723 = !DILocation(line: 52, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !102, line: 52, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !102, line: 51, column: 49)
!1726 = !DILocation(line: 52, column: 22, scope: !1724)
!1727 = !DILocation(line: 52, column: 31, scope: !1724)
!1728 = !DILocation(line: 52, column: 13, scope: !1725)
!1729 = !DILocation(line: 53, column: 23, scope: !1724)
!1730 = !DILocation(line: 53, column: 31, scope: !1724)
!1731 = !DILocation(line: 53, column: 20, scope: !1724)
!1732 = !DILocation(line: 53, column: 11, scope: !1724)
!1733 = !DILocalVariable(name: "c", scope: !1676, file: !102, line: 57, type: !23)
!1734 = !DILocation(line: 57, column: 8, scope: !1676)
!1735 = !DILocation(line: 57, column: 12, scope: !1676)
!1736 = !DILocalVariable(name: "i", scope: !1676, file: !102, line: 58, type: !14)
!1737 = !DILocation(line: 58, column: 12, scope: !1676)
!1738 = !DILocation(line: 60, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1676, file: !102, line: 60, column: 7)
!1740 = !DILocation(line: 60, column: 9, scope: !1739)
!1741 = !DILocation(line: 60, column: 14, scope: !1739)
!1742 = !DILocation(line: 60, column: 17, scope: !1739)
!1743 = !DILocation(line: 60, column: 29, scope: !1739)
!1744 = !DILocation(line: 60, column: 7, scope: !1676)
!1745 = !DILocation(line: 61, column: 5, scope: !1739)
!1746 = !DILocation(line: 63, column: 9, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1676, file: !102, line: 63, column: 3)
!1748 = !DILocation(line: 63, column: 8, scope: !1747)
!1749 = !DILocation(line: 63, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !102, line: 63, column: 3)
!1751 = !DILocation(line: 63, column: 24, scope: !1750)
!1752 = !DILocation(line: 63, column: 14, scope: !1750)
!1753 = !DILocation(line: 63, column: 3, scope: !1747)
!1754 = !DILocation(line: 64, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !102, line: 64, column: 9)
!1756 = distinct !DILexicalBlock(scope: !1750, file: !102, line: 63, column: 42)
!1757 = !DILocation(line: 64, column: 27, scope: !1755)
!1758 = !DILocation(line: 64, column: 20, scope: !1755)
!1759 = !DILocation(line: 64, column: 18, scope: !1755)
!1760 = !DILocation(line: 64, column: 11, scope: !1755)
!1761 = !DILocation(line: 64, column: 9, scope: !1756)
!1762 = !DILocalVariable(name: "df", scope: !1763, file: !102, line: 65, type: !1637)
!1763 = distinct !DILexicalBlock(scope: !1755, file: !102, line: 64, column: 30)
!1764 = !DILocation(line: 65, column: 24, scope: !1763)
!1765 = !DILocation(line: 65, column: 39, scope: !1763)
!1766 = !DILocation(line: 65, column: 49, scope: !1763)
!1767 = !DILocation(line: 65, column: 30, scope: !1763)
!1768 = !DILocation(line: 66, column: 11, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !102, line: 66, column: 11)
!1770 = !DILocation(line: 66, column: 15, scope: !1769)
!1771 = !DILocation(line: 66, column: 21, scope: !1769)
!1772 = !DILocation(line: 66, column: 28, scope: !1769)
!1773 = !DILocation(line: 66, column: 11, scope: !1763)
!1774 = !DILocation(line: 67, column: 9, scope: !1769)
!1775 = !DILocation(line: 68, column: 14, scope: !1763)
!1776 = !DILocation(line: 68, column: 7, scope: !1763)
!1777 = !DILocation(line: 63, column: 37, scope: !1750)
!1778 = !DILocation(line: 63, column: 3, scope: !1750)
!1779 = distinct !{!1779, !1753, !1780}
!1780 = !DILocation(line: 70, column: 3, scope: !1747)
!1781 = !DILocation(line: 72, column: 3, scope: !1676)
!1782 = !DILocation(line: 73, column: 1, scope: !1676)
!1783 = distinct !DISubprogram(name: "__concretize_string", scope: !102, file: !102, line: 1396, type: !1784, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!188, !188}
!1786 = !DILocalVariable(name: "s", arg: 1, scope: !1783, file: !102, line: 1396, type: !188)
!1787 = !DILocation(line: 1396, column: 52, scope: !1783)
!1788 = !DILocalVariable(name: "sc", scope: !1783, file: !102, line: 1397, type: !22)
!1789 = !DILocation(line: 1397, column: 9, scope: !1783)
!1790 = !DILocation(line: 1397, column: 31, scope: !1783)
!1791 = !DILocation(line: 1397, column: 14, scope: !1783)
!1792 = !DILocalVariable(name: "i", scope: !1783, file: !102, line: 1398, type: !14)
!1793 = !DILocation(line: 1398, column: 12, scope: !1783)
!1794 = !DILocation(line: 1400, column: 10, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1783, file: !102, line: 1400, column: 3)
!1796 = !DILocation(line: 1400, column: 8, scope: !1795)
!1797 = !DILocalVariable(name: "c", scope: !1798, file: !102, line: 1401, type: !23)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !102, line: 1400, column: 27)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !102, line: 1400, column: 3)
!1800 = !DILocation(line: 1401, column: 10, scope: !1798)
!1801 = !DILocation(line: 1401, column: 15, scope: !1798)
!1802 = !DILocation(line: 1401, column: 14, scope: !1798)
!1803 = !DILocation(line: 1403, column: 27, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !102, line: 1403, column: 9)
!1805 = !DILocation(line: 1403, column: 10, scope: !1804)
!1806 = !DILocation(line: 1403, column: 9, scope: !1798)
!1807 = !DILocation(line: 1404, column: 12, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !102, line: 1404, column: 11)
!1809 = distinct !DILexicalBlock(scope: !1804, file: !102, line: 1403, column: 31)
!1810 = !DILocation(line: 1404, column: 11, scope: !1809)
!1811 = !DILocation(line: 1408, column: 11, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1798, file: !102, line: 1408, column: 9)
!1813 = !DILocation(line: 1408, column: 14, scope: !1812)
!1814 = !DILocation(line: 1408, column: 15, scope: !1812)
!1815 = !DILocation(line: 1408, column: 12, scope: !1812)
!1816 = !DILocation(line: 1408, column: 9, scope: !1798)
!1817 = !DILocation(line: 1409, column: 12, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !102, line: 1409, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1812, file: !102, line: 1408, column: 21)
!1820 = !DILocation(line: 1409, column: 11, scope: !1819)
!1821 = !DILocation(line: 1410, column: 10, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 1409, column: 15)
!1823 = !DILocation(line: 1410, column: 13, scope: !1822)
!1824 = !DILocation(line: 1411, column: 9, scope: !1822)
!1825 = !DILocation(line: 1412, column: 18, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 1412, column: 18)
!1827 = !DILocation(line: 1412, column: 19, scope: !1826)
!1828 = !DILocation(line: 1412, column: 18, scope: !1818)
!1829 = !DILocation(line: 1413, column: 10, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !102, line: 1412, column: 26)
!1831 = !DILocation(line: 1413, column: 13, scope: !1830)
!1832 = !DILocation(line: 1414, column: 7, scope: !1830)
!1833 = !DILocalVariable(name: "cc", scope: !1834, file: !102, line: 1416, type: !23)
!1834 = distinct !DILexicalBlock(scope: !1812, file: !102, line: 1415, column: 12)
!1835 = !DILocation(line: 1416, column: 12, scope: !1834)
!1836 = !DILocation(line: 1416, column: 46, scope: !1834)
!1837 = !DILocation(line: 1416, column: 40, scope: !1834)
!1838 = !DILocation(line: 1416, column: 24, scope: !1834)
!1839 = !DILocation(line: 1416, column: 17, scope: !1834)
!1840 = !DILocation(line: 1417, column: 19, scope: !1834)
!1841 = !DILocation(line: 1417, column: 25, scope: !1834)
!1842 = !DILocation(line: 1417, column: 22, scope: !1834)
!1843 = !DILocation(line: 1417, column: 7, scope: !1834)
!1844 = !DILocation(line: 1418, column: 13, scope: !1834)
!1845 = !DILocation(line: 1418, column: 8, scope: !1834)
!1846 = !DILocation(line: 1418, column: 11, scope: !1834)
!1847 = !DILocation(line: 1419, column: 12, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1834, file: !102, line: 1419, column: 11)
!1849 = !DILocation(line: 1419, column: 11, scope: !1834)
!1850 = !DILocation(line: 1400, column: 16, scope: !1799)
!1851 = !DILocation(line: 1400, column: 21, scope: !1799)
!1852 = !DILocation(line: 1400, column: 3, scope: !1799)
!1853 = distinct !{!1853, !1854, !1855}
!1854 = !DILocation(line: 1400, column: 3, scope: !1795)
!1855 = !DILocation(line: 1421, column: 3, scope: !1795)
!1856 = !DILocation(line: 1423, column: 10, scope: !1783)
!1857 = !DILocation(line: 1423, column: 3, scope: !1783)
!1858 = distinct !DISubprogram(name: "__concretize_ptr", scope: !102, file: !102, line: 1383, type: !1859, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!127, !181}
!1861 = !DILocalVariable(name: "p", arg: 1, scope: !1858, file: !102, line: 1383, type: !181)
!1862 = !DILocation(line: 1383, column: 43, scope: !1858)
!1863 = !DILocalVariable(name: "pc", scope: !1858, file: !102, line: 1385, type: !22)
!1864 = !DILocation(line: 1385, column: 9, scope: !1858)
!1865 = !DILocation(line: 1385, column: 45, scope: !1858)
!1866 = !DILocation(line: 1385, column: 38, scope: !1858)
!1867 = !DILocation(line: 1385, column: 22, scope: !1858)
!1868 = !DILocation(line: 1385, column: 14, scope: !1858)
!1869 = !DILocation(line: 1386, column: 15, scope: !1858)
!1870 = !DILocation(line: 1386, column: 21, scope: !1858)
!1871 = !DILocation(line: 1386, column: 18, scope: !1858)
!1872 = !DILocation(line: 1386, column: 3, scope: !1858)
!1873 = !DILocation(line: 1387, column: 10, scope: !1858)
!1874 = !DILocation(line: 1387, column: 3, scope: !1858)
!1875 = !DILocalVariable(name: "buf", arg: 1, scope: !202, file: !102, line: 1345, type: !22)
!1876 = !DILocation(line: 1345, column: 20, scope: !202)
!1877 = !DILocalVariable(name: "size", arg: 2, scope: !202, file: !102, line: 1345, type: !174)
!1878 = !DILocation(line: 1345, column: 32, scope: !202)
!1879 = !DILocalVariable(name: "r", scope: !202, file: !102, line: 1347, type: !44)
!1880 = !DILocation(line: 1347, column: 7, scope: !202)
!1881 = !DILocation(line: 1349, column: 10, scope: !202)
!1882 = !DILocation(line: 1351, column: 16, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !202, file: !102, line: 1351, column: 7)
!1884 = !DILocation(line: 1351, column: 7, scope: !1883)
!1885 = !DILocation(line: 1351, column: 29, scope: !1883)
!1886 = !DILocation(line: 1351, column: 42, scope: !1883)
!1887 = !DILocation(line: 1351, column: 32, scope: !1883)
!1888 = !DILocation(line: 1351, column: 57, scope: !1883)
!1889 = !DILocation(line: 1351, column: 54, scope: !1883)
!1890 = !DILocation(line: 1351, column: 7, scope: !202)
!1891 = !DILocation(line: 1352, column: 26, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !102, line: 1351, column: 66)
!1893 = !DILocation(line: 1353, column: 5, scope: !1892)
!1894 = !DILocation(line: 1353, column: 11, scope: !1892)
!1895 = !DILocation(line: 1354, column: 5, scope: !1892)
!1896 = !DILocation(line: 1357, column: 8, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !202, file: !102, line: 1357, column: 7)
!1898 = !DILocation(line: 1357, column: 7, scope: !202)
!1899 = !DILocation(line: 1358, column: 10, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 1357, column: 13)
!1901 = !DILocation(line: 1359, column: 18, scope: !1900)
!1902 = !DILocation(line: 1359, column: 11, scope: !1900)
!1903 = !DILocation(line: 1359, column: 9, scope: !1900)
!1904 = !DILocation(line: 1360, column: 10, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !102, line: 1360, column: 9)
!1906 = !DILocation(line: 1360, column: 9, scope: !1900)
!1907 = !DILocation(line: 1361, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !102, line: 1360, column: 15)
!1909 = !DILocation(line: 1361, column: 13, scope: !1908)
!1910 = !DILocation(line: 1362, column: 7, scope: !1908)
!1911 = !DILocation(line: 1364, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 1364, column: 14)
!1913 = !DILocation(line: 1364, column: 14, scope: !1897)
!1914 = !DILocation(line: 1365, column: 5, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !102, line: 1364, column: 21)
!1916 = !DILocation(line: 1365, column: 11, scope: !1915)
!1917 = !DILocation(line: 1366, column: 5, scope: !1915)
!1918 = !DILocation(line: 1369, column: 26, scope: !202)
!1919 = !DILocation(line: 1369, column: 9, scope: !202)
!1920 = !DILocation(line: 1369, column: 7, scope: !202)
!1921 = !DILocation(line: 1370, column: 28, scope: !202)
!1922 = !DILocation(line: 1370, column: 10, scope: !202)
!1923 = !DILocation(line: 1370, column: 8, scope: !202)
!1924 = !DILocation(line: 1374, column: 28, scope: !202)
!1925 = !DILocation(line: 1374, column: 33, scope: !202)
!1926 = !DILocation(line: 1374, column: 3, scope: !202)
!1927 = !DILocation(line: 1375, column: 28, scope: !202)
!1928 = !DILocation(line: 1375, column: 33, scope: !202)
!1929 = !DILocation(line: 1375, column: 7, scope: !202)
!1930 = !DILocation(line: 1375, column: 5, scope: !202)
!1931 = !DILocation(line: 1376, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !202, file: !102, line: 1376, column: 7)
!1933 = !DILocation(line: 1376, column: 9, scope: !1932)
!1934 = !DILocation(line: 1376, column: 7, scope: !202)
!1935 = !DILocation(line: 1377, column: 5, scope: !1932)
!1936 = !DILocation(line: 1378, column: 10, scope: !202)
!1937 = !DILocation(line: 1378, column: 3, scope: !202)
!1938 = !DILocation(line: 1379, column: 1, scope: !202)
!1939 = distinct !DISubprogram(name: "__concretize_size", scope: !102, file: !102, line: 1390, type: !1940, scopeLine: 1390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!174, !174}
!1942 = !DILocalVariable(name: "s", arg: 1, scope: !1939, file: !102, line: 1390, type: !174)
!1943 = !DILocation(line: 1390, column: 40, scope: !1939)
!1944 = !DILocalVariable(name: "sc", scope: !1939, file: !102, line: 1391, type: !174)
!1945 = !DILocation(line: 1391, column: 10, scope: !1939)
!1946 = !DILocation(line: 1391, column: 37, scope: !1939)
!1947 = !DILocation(line: 1391, column: 15, scope: !1939)
!1948 = !DILocation(line: 1392, column: 15, scope: !1939)
!1949 = !DILocation(line: 1392, column: 21, scope: !1939)
!1950 = !DILocation(line: 1392, column: 18, scope: !1939)
!1951 = !DILocation(line: 1392, column: 3, scope: !1939)
!1952 = !DILocation(line: 1393, column: 10, scope: !1939)
!1953 = !DILocation(line: 1393, column: 3, scope: !1939)
!1954 = distinct !DISubprogram(name: "umask", scope: !102, file: !102, line: 101, type: !1955, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!38, !97}
!1957 = !DILocalVariable(name: "mask", arg: 1, scope: !1954, file: !102, line: 101, type: !97)
!1958 = !DILocation(line: 101, column: 21, scope: !1954)
!1959 = !DILocalVariable(name: "r", scope: !1954, file: !102, line: 102, type: !97)
!1960 = !DILocation(line: 102, column: 10, scope: !1954)
!1961 = !DILocation(line: 102, column: 24, scope: !1954)
!1962 = !DILocation(line: 103, column: 21, scope: !1954)
!1963 = !DILocation(line: 103, column: 26, scope: !1954)
!1964 = !DILocation(line: 103, column: 19, scope: !1954)
!1965 = !DILocation(line: 104, column: 10, scope: !1954)
!1966 = !DILocation(line: 104, column: 3, scope: !1954)
!1967 = distinct !DISubprogram(name: "__fd_open", scope: !102, file: !102, line: 141, type: !1968, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!44, !188, !44, !97}
!1970 = !DILocalVariable(name: "pathname", arg: 1, scope: !1967, file: !102, line: 141, type: !188)
!1971 = !DILocation(line: 141, column: 27, scope: !1967)
!1972 = !DILocalVariable(name: "flags", arg: 2, scope: !1967, file: !102, line: 141, type: !44)
!1973 = !DILocation(line: 141, column: 41, scope: !1967)
!1974 = !DILocalVariable(name: "mode", arg: 3, scope: !1967, file: !102, line: 141, type: !97)
!1975 = !DILocation(line: 141, column: 55, scope: !1967)
!1976 = !DILocalVariable(name: "df", scope: !1967, file: !102, line: 142, type: !1637)
!1977 = !DILocation(line: 142, column: 20, scope: !1967)
!1978 = !DILocalVariable(name: "f", scope: !1967, file: !102, line: 143, type: !1979)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "exe_file_t", file: !10, line: 72, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 65, size: 192, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1981, file: !10, line: 66, baseType: !44, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !10, line: 67, baseType: !14, size: 32, offset: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !1981, file: !10, line: 70, baseType: !90, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "dfile", scope: !1981, file: !10, line: 71, baseType: !1637, size: 64, offset: 128)
!1987 = !DILocation(line: 143, column: 15, scope: !1967)
!1988 = !DILocalVariable(name: "fd", scope: !1967, file: !102, line: 144, type: !44)
!1989 = !DILocation(line: 144, column: 7, scope: !1967)
!1990 = !DILocation(line: 146, column: 11, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1967, file: !102, line: 146, column: 3)
!1992 = !DILocation(line: 146, column: 8, scope: !1991)
!1993 = !DILocation(line: 146, column: 16, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !102, line: 146, column: 3)
!1995 = !DILocation(line: 146, column: 19, scope: !1994)
!1996 = !DILocation(line: 146, column: 3, scope: !1991)
!1997 = !DILocation(line: 147, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !102, line: 147, column: 9)
!1999 = !DILocation(line: 147, column: 11, scope: !1998)
!2000 = !DILocation(line: 147, column: 29, scope: !1998)
!2001 = !DILocation(line: 147, column: 35, scope: !1998)
!2002 = !DILocation(line: 147, column: 9, scope: !1994)
!2003 = !DILocation(line: 146, column: 30, scope: !1994)
!2004 = !DILocation(line: 146, column: 3, scope: !1994)
!2005 = distinct !{!2005, !1996, !2006}
!2006 = !DILocation(line: 148, column: 7, scope: !1991)
!2007 = !DILocation(line: 149, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1967, file: !102, line: 149, column: 7)
!2009 = !DILocation(line: 149, column: 10, scope: !2008)
!2010 = !DILocation(line: 149, column: 7, scope: !1967)
!2011 = !DILocation(line: 150, column: 5, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !102, line: 149, column: 22)
!2013 = !DILocation(line: 150, column: 11, scope: !2012)
!2014 = !DILocation(line: 151, column: 5, scope: !2012)
!2015 = !DILocation(line: 154, column: 22, scope: !1967)
!2016 = !DILocation(line: 154, column: 8, scope: !1967)
!2017 = !DILocation(line: 154, column: 5, scope: !1967)
!2018 = !DILocation(line: 157, column: 10, scope: !1967)
!2019 = !DILocation(line: 157, column: 3, scope: !1967)
!2020 = !DILocation(line: 159, column: 23, scope: !1967)
!2021 = !DILocation(line: 159, column: 8, scope: !1967)
!2022 = !DILocation(line: 159, column: 6, scope: !1967)
!2023 = !DILocation(line: 160, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1967, file: !102, line: 160, column: 7)
!2025 = !DILocation(line: 160, column: 7, scope: !1967)
!2026 = !DILocation(line: 163, column: 16, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !102, line: 160, column: 11)
!2028 = !DILocation(line: 163, column: 5, scope: !2027)
!2029 = !DILocation(line: 163, column: 8, scope: !2027)
!2030 = !DILocation(line: 163, column: 14, scope: !2027)
!2031 = !DILocation(line: 165, column: 10, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !102, line: 165, column: 9)
!2033 = !DILocation(line: 165, column: 16, scope: !2032)
!2034 = !DILocation(line: 165, column: 27, scope: !2032)
!2035 = !DILocation(line: 165, column: 31, scope: !2032)
!2036 = !DILocation(line: 165, column: 37, scope: !2032)
!2037 = !DILocation(line: 165, column: 9, scope: !2027)
!2038 = !DILocation(line: 166, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2032, file: !102, line: 165, column: 48)
!2040 = !DILocation(line: 166, column: 13, scope: !2039)
!2041 = !DILocation(line: 167, column: 7, scope: !2039)
!2042 = !DILocation(line: 170, column: 10, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2027, file: !102, line: 170, column: 9)
!2044 = !DILocation(line: 170, column: 16, scope: !2043)
!2045 = !DILocation(line: 170, column: 27, scope: !2043)
!2046 = !DILocation(line: 170, column: 31, scope: !2043)
!2047 = !DILocation(line: 170, column: 37, scope: !2043)
!2048 = !DILocation(line: 170, column: 9, scope: !2027)
!2049 = !DILocation(line: 173, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2043, file: !102, line: 170, column: 50)
!2051 = !DILocation(line: 174, column: 7, scope: !2050)
!2052 = !DILocation(line: 174, column: 13, scope: !2050)
!2053 = !DILocation(line: 175, column: 7, scope: !2050)
!2054 = !DILocation(line: 178, column: 10, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2027, file: !102, line: 178, column: 9)
!2056 = !DILocation(line: 178, column: 16, scope: !2055)
!2057 = !DILocation(line: 178, column: 26, scope: !2055)
!2058 = !DILocation(line: 178, column: 31, scope: !2055)
!2059 = !DILocation(line: 178, column: 37, scope: !2055)
!2060 = !DILocation(line: 178, column: 9, scope: !2027)
!2061 = !DILocation(line: 181, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2055, file: !102, line: 178, column: 49)
!2063 = !DILocation(line: 182, column: 7, scope: !2062)
!2064 = !DILocation(line: 182, column: 13, scope: !2062)
!2065 = !DILocation(line: 183, column: 7, scope: !2062)
!2066 = !DILocation(line: 186, column: 25, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2027, file: !102, line: 186, column: 9)
!2068 = !DILocation(line: 186, column: 32, scope: !2067)
!2069 = !DILocation(line: 186, column: 36, scope: !2067)
!2070 = !DILocation(line: 186, column: 10, scope: !2067)
!2071 = !DILocation(line: 186, column: 9, scope: !2027)
!2072 = !DILocation(line: 187, column: 2, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !102, line: 186, column: 43)
!2074 = !DILocation(line: 187, column: 8, scope: !2073)
!2075 = !DILocation(line: 188, column: 2, scope: !2073)
!2076 = !DILocation(line: 191, column: 35, scope: !2067)
!2077 = !DILocation(line: 191, column: 38, scope: !2067)
!2078 = !DILocation(line: 191, column: 45, scope: !2067)
!2079 = !DILocation(line: 191, column: 51, scope: !2067)
!2080 = !DILocation(line: 191, column: 59, scope: !2067)
!2081 = !DILocation(line: 192, column: 7, scope: !2067)
!2082 = !DILocation(line: 192, column: 25, scope: !2067)
!2083 = !DILocation(line: 192, column: 14, scope: !2067)
!2084 = !DILocation(line: 192, column: 12, scope: !2067)
!2085 = !DILocation(line: 191, column: 68, scope: !2067)
!2086 = !DILocation(line: 191, column: 7, scope: !2067)
!2087 = !DILocation(line: 191, column: 10, scope: !2067)
!2088 = !DILocation(line: 191, column: 17, scope: !2067)
!2089 = !DILocation(line: 191, column: 23, scope: !2067)
!2090 = !DILocation(line: 191, column: 31, scope: !2067)
!2091 = !DILocation(line: 193, column: 3, scope: !2027)
!2092 = !DILocalVariable(name: "os_fd", scope: !2093, file: !102, line: 194, type: !44)
!2093 = distinct !DILexicalBlock(scope: !2024, file: !102, line: 193, column: 10)
!2094 = !DILocation(line: 194, column: 9, scope: !2093)
!2095 = !DILocation(line: 194, column: 56, scope: !2093)
!2096 = !DILocation(line: 194, column: 36, scope: !2093)
!2097 = !DILocation(line: 194, column: 67, scope: !2093)
!2098 = !DILocation(line: 194, column: 74, scope: !2093)
!2099 = !DILocation(line: 194, column: 17, scope: !2093)
!2100 = !DILocation(line: 195, column: 9, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2093, file: !102, line: 195, column: 9)
!2102 = !DILocation(line: 195, column: 15, scope: !2101)
!2103 = !DILocation(line: 195, column: 9, scope: !2093)
!2104 = !DILocation(line: 196, column: 7, scope: !2101)
!2105 = !DILocation(line: 197, column: 13, scope: !2093)
!2106 = !DILocation(line: 197, column: 5, scope: !2093)
!2107 = !DILocation(line: 197, column: 8, scope: !2093)
!2108 = !DILocation(line: 197, column: 11, scope: !2093)
!2109 = !DILocation(line: 200, column: 3, scope: !1967)
!2110 = !DILocation(line: 200, column: 6, scope: !1967)
!2111 = !DILocation(line: 200, column: 12, scope: !1967)
!2112 = !DILocation(line: 201, column: 8, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1967, file: !102, line: 201, column: 7)
!2114 = !DILocation(line: 201, column: 14, scope: !2113)
!2115 = !DILocation(line: 201, column: 27, scope: !2113)
!2116 = !DILocation(line: 201, column: 7, scope: !1967)
!2117 = !DILocation(line: 202, column: 5, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !102, line: 201, column: 40)
!2119 = !DILocation(line: 202, column: 8, scope: !2118)
!2120 = !DILocation(line: 202, column: 14, scope: !2118)
!2121 = !DILocation(line: 203, column: 3, scope: !2118)
!2122 = !DILocation(line: 203, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2113, file: !102, line: 203, column: 14)
!2124 = !DILocation(line: 203, column: 21, scope: !2123)
!2125 = !DILocation(line: 203, column: 34, scope: !2123)
!2126 = !DILocation(line: 203, column: 14, scope: !2113)
!2127 = !DILocation(line: 204, column: 5, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2123, file: !102, line: 203, column: 47)
!2129 = !DILocation(line: 204, column: 8, scope: !2128)
!2130 = !DILocation(line: 204, column: 14, scope: !2128)
!2131 = !DILocation(line: 205, column: 3, scope: !2128)
!2132 = !DILocation(line: 206, column: 5, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2123, file: !102, line: 205, column: 10)
!2134 = !DILocation(line: 206, column: 8, scope: !2133)
!2135 = !DILocation(line: 206, column: 14, scope: !2133)
!2136 = !DILocation(line: 209, column: 10, scope: !1967)
!2137 = !DILocation(line: 209, column: 3, scope: !1967)
!2138 = !DILocation(line: 210, column: 1, scope: !1967)
!2139 = distinct !DISubprogram(name: "has_permission", scope: !102, file: !102, line: 110, type: !2140, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!44, !44, !1644}
!2142 = !DILocalVariable(name: "flags", arg: 1, scope: !2139, file: !102, line: 110, type: !44)
!2143 = !DILocation(line: 110, column: 31, scope: !2139)
!2144 = !DILocalVariable(name: "s", arg: 2, scope: !2139, file: !102, line: 110, type: !1644)
!2145 = !DILocation(line: 110, column: 53, scope: !2139)
!2146 = !DILocalVariable(name: "write_access", scope: !2139, file: !102, line: 111, type: !44)
!2147 = !DILocation(line: 111, column: 7, scope: !2139)
!2148 = !DILocalVariable(name: "read_access", scope: !2139, file: !102, line: 111, type: !44)
!2149 = !DILocation(line: 111, column: 21, scope: !2139)
!2150 = !DILocalVariable(name: "mode", scope: !2139, file: !102, line: 112, type: !97)
!2151 = !DILocation(line: 112, column: 10, scope: !2139)
!2152 = !DILocation(line: 112, column: 17, scope: !2139)
!2153 = !DILocation(line: 112, column: 20, scope: !2139)
!2154 = !DILocation(line: 114, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !102, line: 114, column: 7)
!2156 = !DILocation(line: 114, column: 13, scope: !2155)
!2157 = !DILocation(line: 114, column: 24, scope: !2155)
!2158 = !DILocation(line: 114, column: 27, scope: !2155)
!2159 = !DILocation(line: 114, column: 33, scope: !2155)
!2160 = !DILocation(line: 114, column: 7, scope: !2139)
!2161 = !DILocation(line: 115, column: 17, scope: !2155)
!2162 = !DILocation(line: 115, column: 5, scope: !2155)
!2163 = !DILocation(line: 116, column: 20, scope: !2155)
!2164 = !DILocation(line: 118, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2139, file: !102, line: 118, column: 7)
!2166 = !DILocation(line: 118, column: 13, scope: !2165)
!2167 = !DILocation(line: 118, column: 24, scope: !2165)
!2168 = !DILocation(line: 118, column: 27, scope: !2165)
!2169 = !DILocation(line: 118, column: 33, scope: !2165)
!2170 = !DILocation(line: 118, column: 7, scope: !2139)
!2171 = !DILocation(line: 119, column: 18, scope: !2165)
!2172 = !DILocation(line: 119, column: 5, scope: !2165)
!2173 = !DILocation(line: 120, column: 21, scope: !2165)
!2174 = !DILocation(line: 131, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2139, file: !102, line: 131, column: 7)
!2176 = !DILocation(line: 131, column: 19, scope: !2175)
!2177 = !DILocation(line: 131, column: 24, scope: !2175)
!2178 = !DILocation(line: 131, column: 29, scope: !2175)
!2179 = !DILocation(line: 131, column: 43, scope: !2175)
!2180 = !DILocation(line: 131, column: 48, scope: !2175)
!2181 = !DILocation(line: 131, column: 40, scope: !2175)
!2182 = !DILocation(line: 131, column: 62, scope: !2175)
!2183 = !DILocation(line: 131, column: 67, scope: !2175)
!2184 = !DILocation(line: 131, column: 59, scope: !2175)
!2185 = !DILocation(line: 131, column: 7, scope: !2139)
!2186 = !DILocation(line: 132, column: 5, scope: !2175)
!2187 = !DILocation(line: 134, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2139, file: !102, line: 134, column: 7)
!2189 = !DILocation(line: 134, column: 20, scope: !2188)
!2190 = !DILocation(line: 134, column: 26, scope: !2188)
!2191 = !DILocation(line: 134, column: 31, scope: !2188)
!2192 = !DILocation(line: 134, column: 45, scope: !2188)
!2193 = !DILocation(line: 134, column: 50, scope: !2188)
!2194 = !DILocation(line: 134, column: 42, scope: !2188)
!2195 = !DILocation(line: 134, column: 64, scope: !2188)
!2196 = !DILocation(line: 134, column: 69, scope: !2188)
!2197 = !DILocation(line: 134, column: 61, scope: !2188)
!2198 = !DILocation(line: 134, column: 7, scope: !2139)
!2199 = !DILocation(line: 135, column: 5, scope: !2188)
!2200 = !DILocation(line: 137, column: 3, scope: !2139)
!2201 = !DILocation(line: 138, column: 1, scope: !2139)
!2202 = distinct !DISubprogram(name: "__fd_openat", scope: !102, file: !102, line: 212, type: !2203, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!44, !44, !188, !44, !97}
!2205 = !DILocalVariable(name: "basefd", arg: 1, scope: !2202, file: !102, line: 212, type: !44)
!2206 = !DILocation(line: 212, column: 21, scope: !2202)
!2207 = !DILocalVariable(name: "pathname", arg: 2, scope: !2202, file: !102, line: 212, type: !188)
!2208 = !DILocation(line: 212, column: 41, scope: !2202)
!2209 = !DILocalVariable(name: "flags", arg: 3, scope: !2202, file: !102, line: 212, type: !44)
!2210 = !DILocation(line: 212, column: 55, scope: !2202)
!2211 = !DILocalVariable(name: "mode", arg: 4, scope: !2202, file: !102, line: 212, type: !97)
!2212 = !DILocation(line: 212, column: 69, scope: !2202)
!2213 = !DILocalVariable(name: "f", scope: !2202, file: !102, line: 213, type: !1979)
!2214 = !DILocation(line: 213, column: 15, scope: !2202)
!2215 = !DILocalVariable(name: "fd", scope: !2202, file: !102, line: 214, type: !44)
!2216 = !DILocation(line: 214, column: 7, scope: !2202)
!2217 = !DILocation(line: 215, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 215, column: 7)
!2219 = !DILocation(line: 215, column: 14, scope: !2218)
!2220 = !DILocation(line: 215, column: 7, scope: !2202)
!2221 = !DILocalVariable(name: "bf", scope: !2222, file: !102, line: 216, type: !1979)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !102, line: 215, column: 27)
!2223 = !DILocation(line: 216, column: 17, scope: !2222)
!2224 = !DILocation(line: 216, column: 33, scope: !2222)
!2225 = !DILocation(line: 216, column: 22, scope: !2222)
!2226 = !DILocation(line: 218, column: 10, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !102, line: 218, column: 9)
!2228 = !DILocation(line: 218, column: 9, scope: !2222)
!2229 = !DILocation(line: 219, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !102, line: 218, column: 14)
!2231 = !DILocation(line: 219, column: 13, scope: !2230)
!2232 = !DILocation(line: 220, column: 7, scope: !2230)
!2233 = !DILocation(line: 221, column: 16, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2227, file: !102, line: 221, column: 16)
!2235 = !DILocation(line: 221, column: 20, scope: !2234)
!2236 = !DILocation(line: 221, column: 16, scope: !2227)
!2237 = !DILocation(line: 222, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !102, line: 221, column: 27)
!2239 = !DILocation(line: 223, column: 7, scope: !2238)
!2240 = !DILocation(line: 223, column: 13, scope: !2238)
!2241 = !DILocation(line: 224, column: 7, scope: !2238)
!2242 = !DILocation(line: 226, column: 14, scope: !2222)
!2243 = !DILocation(line: 226, column: 18, scope: !2222)
!2244 = !DILocation(line: 226, column: 12, scope: !2222)
!2245 = !DILocation(line: 227, column: 3, scope: !2222)
!2246 = !DILocation(line: 229, column: 22, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 229, column: 7)
!2248 = !DILocation(line: 229, column: 7, scope: !2247)
!2249 = !DILocation(line: 229, column: 7, scope: !2202)
!2250 = !DILocation(line: 231, column: 22, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !102, line: 229, column: 33)
!2252 = !DILocation(line: 231, column: 32, scope: !2251)
!2253 = !DILocation(line: 231, column: 39, scope: !2251)
!2254 = !DILocation(line: 231, column: 12, scope: !2251)
!2255 = !DILocation(line: 231, column: 5, scope: !2251)
!2256 = !DILocation(line: 234, column: 11, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 234, column: 3)
!2258 = !DILocation(line: 234, column: 8, scope: !2257)
!2259 = !DILocation(line: 234, column: 16, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !102, line: 234, column: 3)
!2261 = !DILocation(line: 234, column: 19, scope: !2260)
!2262 = !DILocation(line: 234, column: 3, scope: !2257)
!2263 = !DILocation(line: 235, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !102, line: 235, column: 9)
!2265 = !DILocation(line: 235, column: 11, scope: !2264)
!2266 = !DILocation(line: 235, column: 29, scope: !2264)
!2267 = !DILocation(line: 235, column: 35, scope: !2264)
!2268 = !DILocation(line: 235, column: 9, scope: !2260)
!2269 = !DILocation(line: 234, column: 30, scope: !2260)
!2270 = !DILocation(line: 234, column: 3, scope: !2260)
!2271 = distinct !{!2271, !2262, !2272}
!2272 = !DILocation(line: 236, column: 7, scope: !2257)
!2273 = !DILocation(line: 237, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 237, column: 7)
!2275 = !DILocation(line: 237, column: 10, scope: !2274)
!2276 = !DILocation(line: 237, column: 7, scope: !2202)
!2277 = !DILocation(line: 238, column: 5, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !102, line: 237, column: 22)
!2279 = !DILocation(line: 238, column: 11, scope: !2278)
!2280 = !DILocation(line: 239, column: 5, scope: !2278)
!2281 = !DILocation(line: 242, column: 22, scope: !2202)
!2282 = !DILocation(line: 242, column: 8, scope: !2202)
!2283 = !DILocation(line: 242, column: 5, scope: !2202)
!2284 = !DILocation(line: 245, column: 10, scope: !2202)
!2285 = !DILocation(line: 245, column: 3, scope: !2202)
!2286 = !DILocalVariable(name: "os_fd", scope: !2202, file: !102, line: 247, type: !44)
!2287 = !DILocation(line: 247, column: 7, scope: !2202)
!2288 = !DILocation(line: 247, column: 42, scope: !2202)
!2289 = !DILocation(line: 247, column: 36, scope: !2202)
!2290 = !DILocation(line: 247, column: 70, scope: !2202)
!2291 = !DILocation(line: 247, column: 50, scope: !2202)
!2292 = !DILocation(line: 247, column: 87, scope: !2202)
!2293 = !DILocation(line: 247, column: 81, scope: !2202)
!2294 = !DILocation(line: 247, column: 94, scope: !2202)
!2295 = !DILocation(line: 247, column: 15, scope: !2202)
!2296 = !DILocation(line: 248, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 248, column: 7)
!2298 = !DILocation(line: 248, column: 13, scope: !2297)
!2299 = !DILocation(line: 248, column: 7, scope: !2202)
!2300 = !DILocation(line: 249, column: 5, scope: !2297)
!2301 = !DILocation(line: 251, column: 11, scope: !2202)
!2302 = !DILocation(line: 251, column: 3, scope: !2202)
!2303 = !DILocation(line: 251, column: 6, scope: !2202)
!2304 = !DILocation(line: 251, column: 9, scope: !2202)
!2305 = !DILocation(line: 252, column: 3, scope: !2202)
!2306 = !DILocation(line: 252, column: 6, scope: !2202)
!2307 = !DILocation(line: 252, column: 12, scope: !2202)
!2308 = !DILocation(line: 253, column: 8, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2202, file: !102, line: 253, column: 7)
!2310 = !DILocation(line: 253, column: 14, scope: !2309)
!2311 = !DILocation(line: 253, column: 27, scope: !2309)
!2312 = !DILocation(line: 253, column: 7, scope: !2202)
!2313 = !DILocation(line: 254, column: 5, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !102, line: 253, column: 40)
!2315 = !DILocation(line: 254, column: 8, scope: !2314)
!2316 = !DILocation(line: 254, column: 14, scope: !2314)
!2317 = !DILocation(line: 255, column: 3, scope: !2314)
!2318 = !DILocation(line: 255, column: 15, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2309, file: !102, line: 255, column: 14)
!2320 = !DILocation(line: 255, column: 21, scope: !2319)
!2321 = !DILocation(line: 255, column: 34, scope: !2319)
!2322 = !DILocation(line: 255, column: 14, scope: !2309)
!2323 = !DILocation(line: 256, column: 5, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !102, line: 255, column: 47)
!2325 = !DILocation(line: 256, column: 8, scope: !2324)
!2326 = !DILocation(line: 256, column: 14, scope: !2324)
!2327 = !DILocation(line: 257, column: 3, scope: !2324)
!2328 = !DILocation(line: 258, column: 5, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2319, file: !102, line: 257, column: 10)
!2330 = !DILocation(line: 258, column: 8, scope: !2329)
!2331 = !DILocation(line: 258, column: 14, scope: !2329)
!2332 = !DILocation(line: 261, column: 10, scope: !2202)
!2333 = !DILocation(line: 261, column: 3, scope: !2202)
!2334 = !DILocation(line: 262, column: 1, scope: !2202)
!2335 = distinct !DISubprogram(name: "__get_file", scope: !102, file: !102, line: 80, type: !2336, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!1979, !44}
!2338 = !DILocalVariable(name: "fd", arg: 1, scope: !2335, file: !102, line: 80, type: !44)
!2339 = !DILocation(line: 80, column: 35, scope: !2335)
!2340 = !DILocation(line: 81, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2335, file: !102, line: 81, column: 7)
!2342 = !DILocation(line: 81, column: 9, scope: !2341)
!2343 = !DILocation(line: 81, column: 13, scope: !2341)
!2344 = !DILocalVariable(name: "f", scope: !2345, file: !102, line: 82, type: !1979)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !102, line: 81, column: 28)
!2346 = !DILocation(line: 82, column: 17, scope: !2345)
!2347 = !DILocation(line: 82, column: 36, scope: !2345)
!2348 = !DILocation(line: 82, column: 22, scope: !2345)
!2349 = !DILocation(line: 83, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !102, line: 83, column: 9)
!2351 = !DILocation(line: 83, column: 12, scope: !2350)
!2352 = !DILocation(line: 83, column: 18, scope: !2350)
!2353 = !DILocation(line: 83, column: 9, scope: !2345)
!2354 = !DILocation(line: 84, column: 14, scope: !2350)
!2355 = !DILocation(line: 84, column: 7, scope: !2350)
!2356 = !DILocation(line: 87, column: 3, scope: !2335)
!2357 = !DILocation(line: 88, column: 1, scope: !2335)
!2358 = distinct !DISubprogram(name: "utimes", scope: !102, file: !102, line: 265, type: !2359, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!44, !188, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2363)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !2364, line: 8, size: 128, elements: !2365)
!2364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2363, file: !2364, line: 14, baseType: !58, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2363, file: !2364, line: 15, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !31, line: 162, baseType: !48)
!2369 = !DILocalVariable(name: "path", arg: 1, scope: !2358, file: !102, line: 265, type: !188)
!2370 = !DILocation(line: 265, column: 24, scope: !2358)
!2371 = !DILocalVariable(name: "times", arg: 2, scope: !2358, file: !102, line: 265, type: !2361)
!2372 = !DILocation(line: 265, column: 51, scope: !2358)
!2373 = !DILocalVariable(name: "dfile", scope: !2358, file: !102, line: 266, type: !1637)
!2374 = !DILocation(line: 266, column: 20, scope: !2358)
!2375 = !DILocation(line: 266, column: 43, scope: !2358)
!2376 = !DILocation(line: 266, column: 28, scope: !2358)
!2377 = !DILocation(line: 268, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2358, file: !102, line: 268, column: 7)
!2379 = !DILocation(line: 268, column: 7, scope: !2358)
!2380 = !DILocation(line: 270, column: 10, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !102, line: 270, column: 9)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !102, line: 268, column: 14)
!2383 = !DILocation(line: 270, column: 9, scope: !2382)
!2384 = !DILocalVariable(name: "newTimes", scope: !2385, file: !102, line: 271, type: !2386)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !102, line: 270, column: 17)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 256, elements: !1532)
!2387 = !DILocation(line: 271, column: 22, scope: !2385)
!2388 = !DILocation(line: 272, column: 22, scope: !2385)
!2389 = !DILocation(line: 272, column: 7, scope: !2385)
!2390 = !DILocation(line: 273, column: 7, scope: !2385)
!2391 = !DILocation(line: 273, column: 21, scope: !2385)
!2392 = !DILocation(line: 274, column: 15, scope: !2385)
!2393 = !DILocation(line: 274, column: 13, scope: !2385)
!2394 = !DILocation(line: 275, column: 5, scope: !2385)
!2395 = !DILocation(line: 278, column: 29, scope: !2382)
!2396 = !DILocation(line: 278, column: 38, scope: !2382)
!2397 = !DILocation(line: 278, column: 5, scope: !2382)
!2398 = !DILocation(line: 278, column: 12, scope: !2382)
!2399 = !DILocation(line: 278, column: 18, scope: !2382)
!2400 = !DILocation(line: 278, column: 27, scope: !2382)
!2401 = !DILocation(line: 279, column: 29, scope: !2382)
!2402 = !DILocation(line: 279, column: 38, scope: !2382)
!2403 = !DILocation(line: 279, column: 5, scope: !2382)
!2404 = !DILocation(line: 279, column: 12, scope: !2382)
!2405 = !DILocation(line: 279, column: 18, scope: !2382)
!2406 = !DILocation(line: 279, column: 27, scope: !2382)
!2407 = !DILocation(line: 284, column: 5, scope: !2382)
!2408 = !DILocation(line: 286, column: 51, scope: !2358)
!2409 = !DILocation(line: 286, column: 31, scope: !2358)
!2410 = !DILocation(line: 286, column: 58, scope: !2358)
!2411 = !DILocation(line: 286, column: 10, scope: !2358)
!2412 = !DILocation(line: 286, column: 3, scope: !2358)
!2413 = !DILocation(line: 287, column: 1, scope: !2358)
!2414 = distinct !DISubprogram(name: "futimesat", scope: !102, file: !102, line: 290, type: !2415, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!44, !44, !188, !2361}
!2417 = !DILocalVariable(name: "fd", arg: 1, scope: !2414, file: !102, line: 290, type: !44)
!2418 = !DILocation(line: 290, column: 19, scope: !2414)
!2419 = !DILocalVariable(name: "path", arg: 2, scope: !2414, file: !102, line: 290, type: !188)
!2420 = !DILocation(line: 290, column: 35, scope: !2414)
!2421 = !DILocalVariable(name: "times", arg: 3, scope: !2414, file: !102, line: 290, type: !2361)
!2422 = !DILocation(line: 290, column: 62, scope: !2414)
!2423 = !DILocation(line: 291, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2414, file: !102, line: 291, column: 7)
!2425 = !DILocation(line: 291, column: 10, scope: !2424)
!2426 = !DILocation(line: 291, column: 7, scope: !2414)
!2427 = !DILocalVariable(name: "f", scope: !2428, file: !102, line: 292, type: !1979)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !102, line: 291, column: 23)
!2429 = !DILocation(line: 292, column: 17, scope: !2428)
!2430 = !DILocation(line: 292, column: 32, scope: !2428)
!2431 = !DILocation(line: 292, column: 21, scope: !2428)
!2432 = !DILocation(line: 294, column: 10, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !102, line: 294, column: 9)
!2434 = !DILocation(line: 294, column: 9, scope: !2428)
!2435 = !DILocation(line: 295, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !102, line: 294, column: 13)
!2437 = !DILocation(line: 295, column: 13, scope: !2436)
!2438 = !DILocation(line: 296, column: 7, scope: !2436)
!2439 = !DILocation(line: 297, column: 16, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2433, file: !102, line: 297, column: 16)
!2441 = !DILocation(line: 297, column: 19, scope: !2440)
!2442 = !DILocation(line: 297, column: 16, scope: !2433)
!2443 = !DILocation(line: 298, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !102, line: 297, column: 26)
!2445 = !DILocation(line: 299, column: 7, scope: !2444)
!2446 = !DILocation(line: 299, column: 13, scope: !2444)
!2447 = !DILocation(line: 300, column: 7, scope: !2444)
!2448 = !DILocation(line: 302, column: 10, scope: !2428)
!2449 = !DILocation(line: 302, column: 13, scope: !2428)
!2450 = !DILocation(line: 302, column: 8, scope: !2428)
!2451 = !DILocation(line: 303, column: 3, scope: !2428)
!2452 = !DILocation(line: 304, column: 22, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2414, file: !102, line: 304, column: 7)
!2454 = !DILocation(line: 304, column: 7, scope: !2453)
!2455 = !DILocation(line: 304, column: 7, scope: !2414)
!2456 = !DILocation(line: 305, column: 19, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 304, column: 29)
!2458 = !DILocation(line: 305, column: 25, scope: !2457)
!2459 = !DILocation(line: 305, column: 12, scope: !2457)
!2460 = !DILocation(line: 305, column: 5, scope: !2457)
!2461 = !DILocation(line: 308, column: 40, scope: !2414)
!2462 = !DILocation(line: 308, column: 34, scope: !2414)
!2463 = !DILocation(line: 309, column: 19, scope: !2414)
!2464 = !DILocation(line: 309, column: 46, scope: !2414)
!2465 = !DILocation(line: 309, column: 26, scope: !2414)
!2466 = !DILocation(line: 309, column: 61, scope: !2414)
!2467 = !DILocation(line: 308, column: 10, scope: !2414)
!2468 = !DILocation(line: 308, column: 3, scope: !2414)
!2469 = !DILocation(line: 310, column: 1, scope: !2414)
!2470 = !DILocalVariable(name: "fd", arg: 1, scope: !101, file: !102, line: 312, type: !44)
!2471 = !DILocation(line: 312, column: 15, scope: !101)
!2472 = !DILocalVariable(name: "f", scope: !101, file: !102, line: 314, type: !1979)
!2473 = !DILocation(line: 314, column: 15, scope: !101)
!2474 = !DILocalVariable(name: "r", scope: !101, file: !102, line: 315, type: !44)
!2475 = !DILocation(line: 315, column: 7, scope: !101)
!2476 = !DILocation(line: 317, column: 10, scope: !101)
!2477 = !DILocation(line: 319, column: 18, scope: !101)
!2478 = !DILocation(line: 319, column: 7, scope: !101)
!2479 = !DILocation(line: 319, column: 5, scope: !101)
!2480 = !DILocation(line: 320, column: 8, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !101, file: !102, line: 320, column: 7)
!2482 = !DILocation(line: 320, column: 7, scope: !101)
!2483 = !DILocation(line: 321, column: 5, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !102, line: 320, column: 11)
!2485 = !DILocation(line: 321, column: 11, scope: !2484)
!2486 = !DILocation(line: 322, column: 5, scope: !2484)
!2487 = !DILocation(line: 325, column: 16, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !101, file: !102, line: 325, column: 7)
!2489 = !DILocation(line: 325, column: 7, scope: !2488)
!2490 = !DILocation(line: 325, column: 29, scope: !2488)
!2491 = !DILocation(line: 325, column: 42, scope: !2488)
!2492 = !DILocation(line: 325, column: 32, scope: !2488)
!2493 = !DILocation(line: 325, column: 56, scope: !2488)
!2494 = !DILocation(line: 325, column: 53, scope: !2488)
!2495 = !DILocation(line: 325, column: 7, scope: !101)
!2496 = !DILocation(line: 326, column: 26, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2488, file: !102, line: 325, column: 65)
!2498 = !DILocation(line: 327, column: 5, scope: !2497)
!2499 = !DILocation(line: 327, column: 11, scope: !2497)
!2500 = !DILocation(line: 328, column: 5, scope: !2497)
!2501 = !DILocation(line: 339, column: 10, scope: !101)
!2502 = !DILocation(line: 339, column: 3, scope: !101)
!2503 = !DILocation(line: 341, column: 10, scope: !101)
!2504 = !DILocation(line: 341, column: 3, scope: !101)
!2505 = !DILocation(line: 342, column: 1, scope: !101)
!2506 = !DILocalVariable(name: "fd", arg: 1, scope: !169, file: !102, line: 344, type: !44)
!2507 = !DILocation(line: 344, column: 18, scope: !169)
!2508 = !DILocalVariable(name: "buf", arg: 2, scope: !169, file: !102, line: 344, type: !127)
!2509 = !DILocation(line: 344, column: 28, scope: !169)
!2510 = !DILocalVariable(name: "count", arg: 3, scope: !169, file: !102, line: 344, type: !174)
!2511 = !DILocation(line: 344, column: 40, scope: !169)
!2512 = !DILocalVariable(name: "f", scope: !169, file: !102, line: 346, type: !1979)
!2513 = !DILocation(line: 346, column: 15, scope: !169)
!2514 = !DILocation(line: 348, column: 10, scope: !169)
!2515 = !DILocation(line: 350, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !169, file: !102, line: 350, column: 7)
!2517 = !DILocation(line: 350, column: 13, scope: !2516)
!2518 = !DILocation(line: 350, column: 7, scope: !169)
!2519 = !DILocation(line: 351, column: 5, scope: !2516)
!2520 = !DILocation(line: 353, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !169, file: !102, line: 353, column: 7)
!2522 = !DILocation(line: 353, column: 11, scope: !2521)
!2523 = !DILocation(line: 353, column: 7, scope: !169)
!2524 = !DILocation(line: 354, column: 5, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !102, line: 353, column: 20)
!2526 = !DILocation(line: 354, column: 11, scope: !2525)
!2527 = !DILocation(line: 355, column: 5, scope: !2525)
!2528 = !DILocation(line: 358, column: 18, scope: !169)
!2529 = !DILocation(line: 358, column: 7, scope: !169)
!2530 = !DILocation(line: 358, column: 5, scope: !169)
!2531 = !DILocation(line: 360, column: 8, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !169, file: !102, line: 360, column: 7)
!2533 = !DILocation(line: 360, column: 7, scope: !169)
!2534 = !DILocation(line: 361, column: 5, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !102, line: 360, column: 11)
!2536 = !DILocation(line: 361, column: 11, scope: !2535)
!2537 = !DILocation(line: 362, column: 5, scope: !2535)
!2538 = !DILocation(line: 365, column: 16, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !169, file: !102, line: 365, column: 7)
!2540 = !DILocation(line: 365, column: 7, scope: !2539)
!2541 = !DILocation(line: 365, column: 29, scope: !2539)
!2542 = !DILocation(line: 365, column: 42, scope: !2539)
!2543 = !DILocation(line: 365, column: 32, scope: !2539)
!2544 = !DILocation(line: 365, column: 55, scope: !2539)
!2545 = !DILocation(line: 365, column: 52, scope: !2539)
!2546 = !DILocation(line: 365, column: 7, scope: !169)
!2547 = !DILocation(line: 366, column: 26, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2539, file: !102, line: 365, column: 64)
!2549 = !DILocation(line: 367, column: 5, scope: !2548)
!2550 = !DILocation(line: 367, column: 11, scope: !2548)
!2551 = !DILocation(line: 368, column: 5, scope: !2548)
!2552 = !DILocation(line: 371, column: 8, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !169, file: !102, line: 371, column: 7)
!2554 = !DILocation(line: 371, column: 11, scope: !2553)
!2555 = !DILocation(line: 371, column: 7, scope: !169)
!2556 = !DILocalVariable(name: "r", scope: !2557, file: !102, line: 373, type: !44)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !102, line: 371, column: 18)
!2558 = !DILocation(line: 373, column: 9, scope: !2557)
!2559 = !DILocation(line: 374, column: 28, scope: !2557)
!2560 = !DILocation(line: 374, column: 11, scope: !2557)
!2561 = !DILocation(line: 374, column: 9, scope: !2557)
!2562 = !DILocation(line: 375, column: 31, scope: !2557)
!2563 = !DILocation(line: 375, column: 13, scope: !2557)
!2564 = !DILocation(line: 375, column: 11, scope: !2557)
!2565 = !DILocation(line: 379, column: 30, scope: !2557)
!2566 = !DILocation(line: 379, column: 35, scope: !2557)
!2567 = !DILocation(line: 379, column: 5, scope: !2557)
!2568 = !DILocation(line: 380, column: 9, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2557, file: !102, line: 380, column: 9)
!2570 = !DILocation(line: 380, column: 12, scope: !2569)
!2571 = !DILocation(line: 380, column: 15, scope: !2569)
!2572 = !DILocation(line: 380, column: 9, scope: !2557)
!2573 = !DILocation(line: 381, column: 30, scope: !2569)
!2574 = !DILocation(line: 381, column: 33, scope: !2569)
!2575 = !DILocation(line: 381, column: 37, scope: !2569)
!2576 = !DILocation(line: 381, column: 42, scope: !2569)
!2577 = !DILocation(line: 381, column: 11, scope: !2569)
!2578 = !DILocation(line: 381, column: 9, scope: !2569)
!2579 = !DILocation(line: 381, column: 7, scope: !2569)
!2580 = !DILocation(line: 383, column: 33, scope: !2569)
!2581 = !DILocation(line: 383, column: 36, scope: !2569)
!2582 = !DILocation(line: 383, column: 40, scope: !2569)
!2583 = !DILocation(line: 383, column: 45, scope: !2569)
!2584 = !DILocation(line: 383, column: 62, scope: !2569)
!2585 = !DILocation(line: 383, column: 65, scope: !2569)
!2586 = !DILocation(line: 383, column: 11, scope: !2569)
!2587 = !DILocation(line: 383, column: 9, scope: !2569)
!2588 = !DILocation(line: 385, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2557, file: !102, line: 385, column: 9)
!2590 = !DILocation(line: 385, column: 11, scope: !2589)
!2591 = !DILocation(line: 385, column: 9, scope: !2557)
!2592 = !DILocation(line: 386, column: 7, scope: !2589)
!2593 = !DILocation(line: 388, column: 9, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2557, file: !102, line: 388, column: 9)
!2595 = !DILocation(line: 388, column: 12, scope: !2594)
!2596 = !DILocation(line: 388, column: 15, scope: !2594)
!2597 = !DILocation(line: 388, column: 9, scope: !2557)
!2598 = !DILocation(line: 389, column: 17, scope: !2594)
!2599 = !DILocation(line: 389, column: 7, scope: !2594)
!2600 = !DILocation(line: 389, column: 10, scope: !2594)
!2601 = !DILocation(line: 389, column: 14, scope: !2594)
!2602 = !DILocation(line: 390, column: 12, scope: !2557)
!2603 = !DILocation(line: 390, column: 5, scope: !2557)
!2604 = !DILocation(line: 393, column: 5, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !102, line: 393, column: 5)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !102, line: 393, column: 5)
!2607 = distinct !DILexicalBlock(scope: !2553, file: !102, line: 392, column: 8)
!2608 = !DILocation(line: 393, column: 5, scope: !2606)
!2609 = !DILocation(line: 394, column: 19, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !102, line: 394, column: 9)
!2611 = !DILocation(line: 394, column: 22, scope: !2610)
!2612 = !DILocation(line: 394, column: 29, scope: !2610)
!2613 = !DILocation(line: 394, column: 10, scope: !2610)
!2614 = !DILocation(line: 394, column: 37, scope: !2610)
!2615 = !DILocation(line: 394, column: 40, scope: !2610)
!2616 = !DILocation(line: 394, column: 35, scope: !2610)
!2617 = !DILocation(line: 394, column: 9, scope: !2607)
!2618 = !DILocation(line: 395, column: 7, scope: !2610)
!2619 = !DILocation(line: 398, column: 9, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2607, file: !102, line: 398, column: 9)
!2621 = !DILocation(line: 398, column: 12, scope: !2620)
!2622 = !DILocation(line: 398, column: 18, scope: !2620)
!2623 = !DILocation(line: 398, column: 16, scope: !2620)
!2624 = !DILocation(line: 398, column: 26, scope: !2620)
!2625 = !DILocation(line: 398, column: 29, scope: !2620)
!2626 = !DILocation(line: 398, column: 36, scope: !2620)
!2627 = !DILocation(line: 398, column: 24, scope: !2620)
!2628 = !DILocation(line: 398, column: 9, scope: !2607)
!2629 = !DILocation(line: 399, column: 15, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2620, file: !102, line: 398, column: 42)
!2631 = !DILocation(line: 399, column: 18, scope: !2630)
!2632 = !DILocation(line: 399, column: 25, scope: !2630)
!2633 = !DILocation(line: 399, column: 32, scope: !2630)
!2634 = !DILocation(line: 399, column: 35, scope: !2630)
!2635 = !DILocation(line: 399, column: 30, scope: !2630)
!2636 = !DILocation(line: 399, column: 13, scope: !2630)
!2637 = !DILocation(line: 400, column: 5, scope: !2630)
!2638 = !DILocation(line: 402, column: 12, scope: !2607)
!2639 = !DILocation(line: 402, column: 17, scope: !2607)
!2640 = !DILocation(line: 402, column: 20, scope: !2607)
!2641 = !DILocation(line: 402, column: 27, scope: !2607)
!2642 = !DILocation(line: 402, column: 38, scope: !2607)
!2643 = !DILocation(line: 402, column: 41, scope: !2607)
!2644 = !DILocation(line: 402, column: 36, scope: !2607)
!2645 = !DILocation(line: 402, column: 46, scope: !2607)
!2646 = !DILocation(line: 402, column: 5, scope: !2607)
!2647 = !DILocation(line: 403, column: 15, scope: !2607)
!2648 = !DILocation(line: 403, column: 5, scope: !2607)
!2649 = !DILocation(line: 403, column: 8, scope: !2607)
!2650 = !DILocation(line: 403, column: 12, scope: !2607)
!2651 = !DILocation(line: 405, column: 12, scope: !2607)
!2652 = !DILocation(line: 405, column: 5, scope: !2607)
!2653 = !DILocation(line: 407, column: 1, scope: !169)
!2654 = !DILocalVariable(name: "fd", arg: 1, scope: !178, file: !102, line: 410, type: !44)
!2655 = !DILocation(line: 410, column: 19, scope: !178)
!2656 = !DILocalVariable(name: "buf", arg: 2, scope: !178, file: !102, line: 410, type: !181)
!2657 = !DILocation(line: 410, column: 35, scope: !178)
!2658 = !DILocalVariable(name: "count", arg: 3, scope: !178, file: !102, line: 410, type: !174)
!2659 = !DILocation(line: 410, column: 47, scope: !178)
!2660 = !DILocalVariable(name: "f", scope: !178, file: !102, line: 412, type: !1979)
!2661 = !DILocation(line: 412, column: 15, scope: !178)
!2662 = !DILocation(line: 414, column: 10, scope: !178)
!2663 = !DILocation(line: 416, column: 18, scope: !178)
!2664 = !DILocation(line: 416, column: 7, scope: !178)
!2665 = !DILocation(line: 416, column: 5, scope: !178)
!2666 = !DILocation(line: 418, column: 8, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !178, file: !102, line: 418, column: 7)
!2668 = !DILocation(line: 418, column: 7, scope: !178)
!2669 = !DILocation(line: 419, column: 5, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !102, line: 418, column: 11)
!2671 = !DILocation(line: 419, column: 11, scope: !2670)
!2672 = !DILocation(line: 420, column: 5, scope: !2670)
!2673 = !DILocation(line: 423, column: 16, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !178, file: !102, line: 423, column: 7)
!2675 = !DILocation(line: 423, column: 7, scope: !2674)
!2676 = !DILocation(line: 423, column: 29, scope: !2674)
!2677 = !DILocation(line: 423, column: 42, scope: !2674)
!2678 = !DILocation(line: 423, column: 32, scope: !2674)
!2679 = !DILocation(line: 423, column: 56, scope: !2674)
!2680 = !DILocation(line: 423, column: 53, scope: !2674)
!2681 = !DILocation(line: 423, column: 7, scope: !178)
!2682 = !DILocation(line: 424, column: 26, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2674, file: !102, line: 423, column: 65)
!2684 = !DILocation(line: 425, column: 5, scope: !2683)
!2685 = !DILocation(line: 425, column: 11, scope: !2683)
!2686 = !DILocation(line: 426, column: 5, scope: !2683)
!2687 = !DILocation(line: 429, column: 8, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !178, file: !102, line: 429, column: 7)
!2689 = !DILocation(line: 429, column: 11, scope: !2688)
!2690 = !DILocation(line: 429, column: 7, scope: !178)
!2691 = !DILocalVariable(name: "r", scope: !2692, file: !102, line: 430, type: !44)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !102, line: 429, column: 18)
!2693 = !DILocation(line: 430, column: 9, scope: !2692)
!2694 = !DILocation(line: 432, column: 28, scope: !2692)
!2695 = !DILocation(line: 432, column: 11, scope: !2692)
!2696 = !DILocation(line: 432, column: 9, scope: !2692)
!2697 = !DILocation(line: 433, column: 31, scope: !2692)
!2698 = !DILocation(line: 433, column: 13, scope: !2692)
!2699 = !DILocation(line: 433, column: 11, scope: !2692)
!2700 = !DILocation(line: 437, column: 30, scope: !2692)
!2701 = !DILocation(line: 437, column: 35, scope: !2692)
!2702 = !DILocation(line: 437, column: 5, scope: !2692)
!2703 = !DILocation(line: 438, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2692, file: !102, line: 438, column: 9)
!2705 = !DILocation(line: 438, column: 12, scope: !2704)
!2706 = !DILocation(line: 438, column: 15, scope: !2704)
!2707 = !DILocation(line: 438, column: 20, scope: !2704)
!2708 = !DILocation(line: 438, column: 23, scope: !2704)
!2709 = !DILocation(line: 438, column: 26, scope: !2704)
!2710 = !DILocation(line: 438, column: 29, scope: !2704)
!2711 = !DILocation(line: 438, column: 9, scope: !2692)
!2712 = !DILocation(line: 439, column: 31, scope: !2704)
!2713 = !DILocation(line: 439, column: 34, scope: !2704)
!2714 = !DILocation(line: 439, column: 38, scope: !2704)
!2715 = !DILocation(line: 439, column: 43, scope: !2704)
!2716 = !DILocation(line: 439, column: 11, scope: !2704)
!2717 = !DILocation(line: 439, column: 9, scope: !2704)
!2718 = !DILocation(line: 439, column: 7, scope: !2704)
!2719 = !DILocation(line: 440, column: 37, scope: !2704)
!2720 = !DILocation(line: 440, column: 40, scope: !2704)
!2721 = !DILocation(line: 440, column: 44, scope: !2704)
!2722 = !DILocation(line: 440, column: 49, scope: !2704)
!2723 = !DILocation(line: 440, column: 66, scope: !2704)
!2724 = !DILocation(line: 440, column: 69, scope: !2704)
!2725 = !DILocation(line: 440, column: 14, scope: !2704)
!2726 = !DILocation(line: 440, column: 12, scope: !2704)
!2727 = !DILocation(line: 442, column: 9, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2692, file: !102, line: 442, column: 9)
!2729 = !DILocation(line: 442, column: 11, scope: !2728)
!2730 = !DILocation(line: 442, column: 9, scope: !2692)
!2731 = !DILocation(line: 443, column: 7, scope: !2728)
!2732 = !DILocation(line: 445, column: 5, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !102, line: 445, column: 5)
!2734 = distinct !DILexicalBlock(scope: !2692, file: !102, line: 445, column: 5)
!2735 = !DILocation(line: 445, column: 5, scope: !2734)
!2736 = !DILocation(line: 446, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2692, file: !102, line: 446, column: 9)
!2738 = !DILocation(line: 446, column: 12, scope: !2737)
!2739 = !DILocation(line: 446, column: 15, scope: !2737)
!2740 = !DILocation(line: 446, column: 20, scope: !2737)
!2741 = !DILocation(line: 446, column: 23, scope: !2737)
!2742 = !DILocation(line: 446, column: 26, scope: !2737)
!2743 = !DILocation(line: 446, column: 29, scope: !2737)
!2744 = !DILocation(line: 446, column: 9, scope: !2692)
!2745 = !DILocation(line: 447, column: 17, scope: !2737)
!2746 = !DILocation(line: 447, column: 7, scope: !2737)
!2747 = !DILocation(line: 447, column: 10, scope: !2737)
!2748 = !DILocation(line: 447, column: 14, scope: !2737)
!2749 = !DILocation(line: 449, column: 12, scope: !2692)
!2750 = !DILocation(line: 449, column: 5, scope: !2692)
!2751 = !DILocalVariable(name: "actual_count", scope: !2752, file: !102, line: 453, type: !174)
!2752 = distinct !DILexicalBlock(scope: !2688, file: !102, line: 451, column: 8)
!2753 = !DILocation(line: 453, column: 12, scope: !2752)
!2754 = !DILocation(line: 454, column: 9, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !102, line: 454, column: 9)
!2756 = !DILocation(line: 454, column: 12, scope: !2755)
!2757 = !DILocation(line: 454, column: 18, scope: !2755)
!2758 = !DILocation(line: 454, column: 16, scope: !2755)
!2759 = !DILocation(line: 454, column: 27, scope: !2755)
!2760 = !DILocation(line: 454, column: 30, scope: !2755)
!2761 = !DILocation(line: 454, column: 37, scope: !2755)
!2762 = !DILocation(line: 454, column: 24, scope: !2755)
!2763 = !DILocation(line: 454, column: 9, scope: !2752)
!2764 = !DILocation(line: 455, column: 22, scope: !2755)
!2765 = !DILocation(line: 455, column: 20, scope: !2755)
!2766 = !DILocation(line: 455, column: 7, scope: !2755)
!2767 = !DILocation(line: 457, column: 21, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !102, line: 457, column: 11)
!2769 = distinct !DILexicalBlock(scope: !2755, file: !102, line: 456, column: 10)
!2770 = !DILocation(line: 457, column: 11, scope: !2768)
!2771 = !DILocation(line: 457, column: 11, scope: !2769)
!2772 = !DILocation(line: 458, column: 2, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !102, line: 458, column: 2)
!2774 = distinct !DILexicalBlock(scope: !2768, file: !102, line: 458, column: 2)
!2775 = !DILocation(line: 460, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !102, line: 460, column: 6)
!2777 = distinct !DILexicalBlock(scope: !2768, file: !102, line: 459, column: 12)
!2778 = !DILocation(line: 460, column: 9, scope: !2776)
!2779 = !DILocation(line: 460, column: 25, scope: !2776)
!2780 = !DILocation(line: 460, column: 28, scope: !2776)
!2781 = !DILocation(line: 460, column: 35, scope: !2776)
!2782 = !DILocation(line: 460, column: 15, scope: !2776)
!2783 = !DILocation(line: 460, column: 13, scope: !2776)
!2784 = !DILocation(line: 460, column: 6, scope: !2777)
!2785 = !DILocation(line: 461, column: 19, scope: !2776)
!2786 = !DILocation(line: 461, column: 22, scope: !2776)
!2787 = !DILocation(line: 461, column: 29, scope: !2776)
!2788 = !DILocation(line: 461, column: 36, scope: !2776)
!2789 = !DILocation(line: 461, column: 39, scope: !2776)
!2790 = !DILocation(line: 461, column: 34, scope: !2776)
!2791 = !DILocation(line: 461, column: 17, scope: !2776)
!2792 = !DILocation(line: 461, column: 4, scope: !2776)
!2793 = !DILocation(line: 465, column: 9, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2752, file: !102, line: 465, column: 9)
!2795 = !DILocation(line: 465, column: 9, scope: !2752)
!2796 = !DILocation(line: 466, column: 14, scope: !2794)
!2797 = !DILocation(line: 466, column: 17, scope: !2794)
!2798 = !DILocation(line: 466, column: 24, scope: !2794)
!2799 = !DILocation(line: 466, column: 35, scope: !2794)
!2800 = !DILocation(line: 466, column: 38, scope: !2794)
!2801 = !DILocation(line: 466, column: 33, scope: !2794)
!2802 = !DILocation(line: 466, column: 43, scope: !2794)
!2803 = !DILocation(line: 466, column: 48, scope: !2794)
!2804 = !DILocation(line: 466, column: 7, scope: !2794)
!2805 = !DILocation(line: 468, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2752, file: !102, line: 468, column: 9)
!2807 = !DILocation(line: 468, column: 18, scope: !2806)
!2808 = !DILocation(line: 468, column: 15, scope: !2806)
!2809 = !DILocation(line: 468, column: 9, scope: !2752)
!2810 = !DILocation(line: 469, column: 7, scope: !2806)
!2811 = !DILocation(line: 471, column: 9, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2752, file: !102, line: 471, column: 9)
!2813 = !DILocation(line: 471, column: 12, scope: !2812)
!2814 = !DILocation(line: 471, column: 30, scope: !2812)
!2815 = !DILocation(line: 471, column: 18, scope: !2812)
!2816 = !DILocation(line: 471, column: 9, scope: !2752)
!2817 = !DILocation(line: 472, column: 33, scope: !2812)
!2818 = !DILocation(line: 472, column: 30, scope: !2812)
!2819 = !DILocation(line: 472, column: 7, scope: !2812)
!2820 = !DILocation(line: 474, column: 15, scope: !2752)
!2821 = !DILocation(line: 474, column: 5, scope: !2752)
!2822 = !DILocation(line: 474, column: 8, scope: !2752)
!2823 = !DILocation(line: 474, column: 12, scope: !2752)
!2824 = !DILocation(line: 475, column: 12, scope: !2752)
!2825 = !DILocation(line: 475, column: 5, scope: !2752)
!2826 = !DILocation(line: 477, column: 1, scope: !178)
!2827 = distinct !DISubprogram(name: "__fd_lseek", scope: !102, file: !102, line: 480, type: !2828, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!90, !44, !90, !44}
!2830 = !DILocalVariable(name: "fd", arg: 1, scope: !2827, file: !102, line: 480, type: !44)
!2831 = !DILocation(line: 480, column: 24, scope: !2827)
!2832 = !DILocalVariable(name: "offset", arg: 2, scope: !2827, file: !102, line: 480, type: !90)
!2833 = !DILocation(line: 480, column: 36, scope: !2827)
!2834 = !DILocalVariable(name: "whence", arg: 3, scope: !2827, file: !102, line: 480, type: !44)
!2835 = !DILocation(line: 480, column: 48, scope: !2827)
!2836 = !DILocalVariable(name: "new_off", scope: !2827, file: !102, line: 481, type: !90)
!2837 = !DILocation(line: 481, column: 11, scope: !2827)
!2838 = !DILocalVariable(name: "f", scope: !2827, file: !102, line: 482, type: !1979)
!2839 = !DILocation(line: 482, column: 15, scope: !2827)
!2840 = !DILocation(line: 482, column: 30, scope: !2827)
!2841 = !DILocation(line: 482, column: 19, scope: !2827)
!2842 = !DILocation(line: 484, column: 8, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2827, file: !102, line: 484, column: 7)
!2844 = !DILocation(line: 484, column: 7, scope: !2827)
!2845 = !DILocation(line: 485, column: 5, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !102, line: 484, column: 11)
!2847 = !DILocation(line: 485, column: 11, scope: !2846)
!2848 = !DILocation(line: 486, column: 5, scope: !2846)
!2849 = !DILocation(line: 489, column: 8, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2827, file: !102, line: 489, column: 7)
!2851 = !DILocation(line: 489, column: 11, scope: !2850)
!2852 = !DILocation(line: 489, column: 7, scope: !2827)
!2853 = !DILocation(line: 496, column: 9, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !102, line: 496, column: 9)
!2855 = distinct !DILexicalBlock(scope: !2850, file: !102, line: 489, column: 18)
!2856 = !DILocation(line: 496, column: 16, scope: !2854)
!2857 = !DILocation(line: 496, column: 9, scope: !2855)
!2858 = !DILocation(line: 497, column: 37, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !102, line: 496, column: 29)
!2860 = !DILocation(line: 497, column: 40, scope: !2859)
!2861 = !DILocation(line: 497, column: 44, scope: !2859)
!2862 = !DILocation(line: 497, column: 17, scope: !2859)
!2863 = !DILocation(line: 497, column: 15, scope: !2859)
!2864 = !DILocation(line: 498, column: 5, scope: !2859)
!2865 = !DILocation(line: 499, column: 37, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2854, file: !102, line: 498, column: 12)
!2867 = !DILocation(line: 499, column: 40, scope: !2866)
!2868 = !DILocation(line: 499, column: 44, scope: !2866)
!2869 = !DILocation(line: 499, column: 47, scope: !2866)
!2870 = !DILocation(line: 499, column: 17, scope: !2866)
!2871 = !DILocation(line: 499, column: 15, scope: !2866)
!2872 = !DILocation(line: 503, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !102, line: 503, column: 11)
!2874 = !DILocation(line: 503, column: 19, scope: !2873)
!2875 = !DILocation(line: 503, column: 11, scope: !2866)
!2876 = !DILocation(line: 504, column: 9, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !102, line: 504, column: 9)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !102, line: 504, column: 9)
!2879 = distinct !DILexicalBlock(scope: !2873, file: !102, line: 503, column: 26)
!2880 = !DILocation(line: 504, column: 9, scope: !2878)
!2881 = !DILocation(line: 505, column: 39, scope: !2879)
!2882 = !DILocation(line: 505, column: 42, scope: !2879)
!2883 = !DILocation(line: 505, column: 46, scope: !2879)
!2884 = !DILocation(line: 505, column: 54, scope: !2879)
!2885 = !DILocation(line: 505, column: 19, scope: !2879)
!2886 = !DILocation(line: 505, column: 17, scope: !2879)
!2887 = !DILocation(line: 506, column: 7, scope: !2879)
!2888 = !DILocation(line: 509, column: 9, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2855, file: !102, line: 509, column: 9)
!2890 = !DILocation(line: 509, column: 17, scope: !2889)
!2891 = !DILocation(line: 509, column: 9, scope: !2855)
!2892 = !DILocation(line: 510, column: 7, scope: !2889)
!2893 = !DILocation(line: 512, column: 14, scope: !2855)
!2894 = !DILocation(line: 512, column: 5, scope: !2855)
!2895 = !DILocation(line: 512, column: 8, scope: !2855)
!2896 = !DILocation(line: 512, column: 12, scope: !2855)
!2897 = !DILocation(line: 513, column: 12, scope: !2855)
!2898 = !DILocation(line: 513, column: 5, scope: !2855)
!2899 = !DILocation(line: 516, column: 11, scope: !2827)
!2900 = !DILocation(line: 516, column: 3, scope: !2827)
!2901 = !DILocation(line: 517, column: 28, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2827, file: !102, line: 516, column: 19)
!2903 = !DILocation(line: 517, column: 26, scope: !2902)
!2904 = !DILocation(line: 517, column: 36, scope: !2902)
!2905 = !DILocation(line: 518, column: 28, scope: !2902)
!2906 = !DILocation(line: 518, column: 31, scope: !2902)
!2907 = !DILocation(line: 518, column: 37, scope: !2902)
!2908 = !DILocation(line: 518, column: 35, scope: !2902)
!2909 = !DILocation(line: 518, column: 26, scope: !2902)
!2910 = !DILocation(line: 518, column: 45, scope: !2902)
!2911 = !DILocation(line: 519, column: 28, scope: !2902)
!2912 = !DILocation(line: 519, column: 31, scope: !2902)
!2913 = !DILocation(line: 519, column: 38, scope: !2902)
!2914 = !DILocation(line: 519, column: 45, scope: !2902)
!2915 = !DILocation(line: 519, column: 43, scope: !2902)
!2916 = !DILocation(line: 519, column: 26, scope: !2902)
!2917 = !DILocation(line: 519, column: 53, scope: !2902)
!2918 = !DILocation(line: 521, column: 5, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2902, file: !102, line: 520, column: 12)
!2920 = !DILocation(line: 521, column: 11, scope: !2919)
!2921 = !DILocation(line: 522, column: 5, scope: !2919)
!2922 = !DILocation(line: 526, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2827, file: !102, line: 526, column: 7)
!2924 = !DILocation(line: 526, column: 15, scope: !2923)
!2925 = !DILocation(line: 526, column: 7, scope: !2827)
!2926 = !DILocation(line: 527, column: 5, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !102, line: 526, column: 20)
!2928 = !DILocation(line: 527, column: 11, scope: !2927)
!2929 = !DILocation(line: 528, column: 5, scope: !2927)
!2930 = !DILocation(line: 531, column: 12, scope: !2827)
!2931 = !DILocation(line: 531, column: 3, scope: !2827)
!2932 = !DILocation(line: 531, column: 6, scope: !2827)
!2933 = !DILocation(line: 531, column: 10, scope: !2827)
!2934 = !DILocation(line: 532, column: 10, scope: !2827)
!2935 = !DILocation(line: 532, column: 13, scope: !2827)
!2936 = !DILocation(line: 532, column: 3, scope: !2827)
!2937 = !DILocation(line: 533, column: 1, scope: !2827)
!2938 = distinct !DISubprogram(name: "__fd_stat", scope: !102, file: !102, line: 535, type: !2939, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!44, !188, !1644}
!2941 = !DILocalVariable(name: "path", arg: 1, scope: !2938, file: !102, line: 535, type: !188)
!2942 = !DILocation(line: 535, column: 27, scope: !2938)
!2943 = !DILocalVariable(name: "buf", arg: 2, scope: !2938, file: !102, line: 535, type: !1644)
!2944 = !DILocation(line: 535, column: 48, scope: !2938)
!2945 = !DILocalVariable(name: "dfile", scope: !2938, file: !102, line: 536, type: !1637)
!2946 = !DILocation(line: 536, column: 20, scope: !2938)
!2947 = !DILocation(line: 536, column: 43, scope: !2938)
!2948 = !DILocation(line: 536, column: 28, scope: !2938)
!2949 = !DILocation(line: 537, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2938, file: !102, line: 537, column: 7)
!2951 = !DILocation(line: 537, column: 7, scope: !2938)
!2952 = !DILocation(line: 538, column: 12, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !102, line: 537, column: 14)
!2954 = !DILocation(line: 538, column: 5, scope: !2953)
!2955 = !DILocation(line: 538, column: 17, scope: !2953)
!2956 = !DILocation(line: 538, column: 24, scope: !2953)
!2957 = !DILocation(line: 539, column: 5, scope: !2953)
!2958 = !DILocation(line: 544, column: 51, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2938, file: !102, line: 542, column: 3)
!2960 = !DILocation(line: 544, column: 31, scope: !2959)
!2961 = !DILocation(line: 544, column: 58, scope: !2959)
!2962 = !DILocation(line: 544, column: 12, scope: !2959)
!2963 = !DILocation(line: 544, column: 5, scope: !2959)
!2964 = !DILocation(line: 549, column: 1, scope: !2938)
!2965 = distinct !DISubprogram(name: "fstatat", scope: !102, file: !102, line: 551, type: !2966, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!44, !44, !188, !142, !44}
!2968 = !DILocalVariable(name: "fd", arg: 1, scope: !2965, file: !102, line: 551, type: !44)
!2969 = !DILocation(line: 551, column: 17, scope: !2965)
!2970 = !DILocalVariable(name: "path", arg: 2, scope: !2965, file: !102, line: 551, type: !188)
!2971 = !DILocation(line: 551, column: 33, scope: !2965)
!2972 = !DILocalVariable(name: "buf", arg: 3, scope: !2965, file: !102, line: 551, type: !142)
!2973 = !DILocation(line: 551, column: 52, scope: !2965)
!2974 = !DILocalVariable(name: "flags", arg: 4, scope: !2965, file: !102, line: 551, type: !44)
!2975 = !DILocation(line: 551, column: 61, scope: !2965)
!2976 = !DILocation(line: 552, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2965, file: !102, line: 552, column: 7)
!2978 = !DILocation(line: 552, column: 10, scope: !2977)
!2979 = !DILocation(line: 552, column: 7, scope: !2965)
!2980 = !DILocalVariable(name: "f", scope: !2981, file: !102, line: 553, type: !1979)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !102, line: 552, column: 23)
!2982 = !DILocation(line: 553, column: 17, scope: !2981)
!2983 = !DILocation(line: 553, column: 32, scope: !2981)
!2984 = !DILocation(line: 553, column: 21, scope: !2981)
!2985 = !DILocation(line: 555, column: 10, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !102, line: 555, column: 9)
!2987 = !DILocation(line: 555, column: 9, scope: !2981)
!2988 = !DILocation(line: 556, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2986, file: !102, line: 555, column: 13)
!2990 = !DILocation(line: 556, column: 13, scope: !2989)
!2991 = !DILocation(line: 557, column: 7, scope: !2989)
!2992 = !DILocation(line: 558, column: 16, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2986, file: !102, line: 558, column: 16)
!2994 = !DILocation(line: 558, column: 19, scope: !2993)
!2995 = !DILocation(line: 558, column: 16, scope: !2986)
!2996 = !DILocation(line: 559, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !102, line: 558, column: 26)
!2998 = !DILocation(line: 560, column: 7, scope: !2997)
!2999 = !DILocation(line: 560, column: 13, scope: !2997)
!3000 = !DILocation(line: 561, column: 7, scope: !2997)
!3001 = !DILocation(line: 563, column: 10, scope: !2981)
!3002 = !DILocation(line: 563, column: 13, scope: !2981)
!3003 = !DILocation(line: 563, column: 8, scope: !2981)
!3004 = !DILocation(line: 564, column: 3, scope: !2981)
!3005 = !DILocalVariable(name: "dfile", scope: !2965, file: !102, line: 565, type: !1637)
!3006 = !DILocation(line: 565, column: 20, scope: !2965)
!3007 = !DILocation(line: 565, column: 43, scope: !2965)
!3008 = !DILocation(line: 565, column: 28, scope: !2965)
!3009 = !DILocation(line: 566, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2965, file: !102, line: 566, column: 7)
!3011 = !DILocation(line: 566, column: 7, scope: !2965)
!3012 = !DILocation(line: 567, column: 12, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !102, line: 566, column: 14)
!3014 = !DILocation(line: 567, column: 5, scope: !3013)
!3015 = !DILocation(line: 567, column: 17, scope: !3013)
!3016 = !DILocation(line: 567, column: 24, scope: !3013)
!3017 = !DILocation(line: 568, column: 5, scope: !3013)
!3018 = !DILocation(line: 574, column: 3, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !102, line: 574, column: 3)
!3020 = distinct !DILexicalBlock(scope: !2965, file: !102, line: 574, column: 3)
!3021 = !DILocation(line: 574, column: 3, scope: !3020)
!3022 = !DILocation(line: 579, column: 41, scope: !2965)
!3023 = !DILocation(line: 579, column: 35, scope: !2965)
!3024 = !DILocation(line: 579, column: 45, scope: !2965)
!3025 = !DILocation(line: 579, column: 56, scope: !2965)
!3026 = !DILocation(line: 579, column: 67, scope: !2965)
!3027 = !DILocation(line: 579, column: 61, scope: !2965)
!3028 = !DILocation(line: 579, column: 10, scope: !2965)
!3029 = !DILocation(line: 579, column: 3, scope: !2965)
!3030 = !DILocation(line: 584, column: 1, scope: !2965)
!3031 = distinct !DISubprogram(name: "__fd_lstat", scope: !102, file: !102, line: 586, type: !2939, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3032 = !DILocalVariable(name: "path", arg: 1, scope: !3031, file: !102, line: 586, type: !188)
!3033 = !DILocation(line: 586, column: 28, scope: !3031)
!3034 = !DILocalVariable(name: "buf", arg: 2, scope: !3031, file: !102, line: 586, type: !1644)
!3035 = !DILocation(line: 586, column: 49, scope: !3031)
!3036 = !DILocalVariable(name: "dfile", scope: !3031, file: !102, line: 587, type: !1637)
!3037 = !DILocation(line: 587, column: 20, scope: !3031)
!3038 = !DILocation(line: 587, column: 43, scope: !3031)
!3039 = !DILocation(line: 587, column: 28, scope: !3031)
!3040 = !DILocation(line: 588, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3031, file: !102, line: 588, column: 7)
!3042 = !DILocation(line: 588, column: 7, scope: !3031)
!3043 = !DILocation(line: 589, column: 12, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !102, line: 588, column: 14)
!3045 = !DILocation(line: 589, column: 5, scope: !3044)
!3046 = !DILocation(line: 589, column: 17, scope: !3044)
!3047 = !DILocation(line: 589, column: 24, scope: !3044)
!3048 = !DILocation(line: 590, column: 5, scope: !3044)
!3049 = !DILocation(line: 595, column: 52, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3031, file: !102, line: 593, column: 3)
!3051 = !DILocation(line: 595, column: 32, scope: !3050)
!3052 = !DILocation(line: 595, column: 59, scope: !3050)
!3053 = !DILocation(line: 595, column: 12, scope: !3050)
!3054 = !DILocation(line: 595, column: 5, scope: !3050)
!3055 = !DILocation(line: 600, column: 1, scope: !3031)
!3056 = distinct !DISubprogram(name: "chdir", scope: !102, file: !102, line: 602, type: !3057, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!44, !188}
!3059 = !DILocalVariable(name: "path", arg: 1, scope: !3056, file: !102, line: 602, type: !188)
!3060 = !DILocation(line: 602, column: 23, scope: !3056)
!3061 = !DILocalVariable(name: "dfile", scope: !3056, file: !102, line: 603, type: !1637)
!3062 = !DILocation(line: 603, column: 20, scope: !3056)
!3063 = !DILocation(line: 603, column: 43, scope: !3056)
!3064 = !DILocation(line: 603, column: 28, scope: !3056)
!3065 = !DILocation(line: 605, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3056, file: !102, line: 605, column: 7)
!3067 = !DILocation(line: 605, column: 7, scope: !3056)
!3068 = !DILocation(line: 607, column: 5, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !102, line: 605, column: 14)
!3070 = !DILocation(line: 608, column: 5, scope: !3069)
!3071 = !DILocation(line: 608, column: 11, scope: !3069)
!3072 = !DILocation(line: 609, column: 5, scope: !3069)
!3073 = !DILocation(line: 612, column: 50, scope: !3056)
!3074 = !DILocation(line: 612, column: 30, scope: !3056)
!3075 = !DILocation(line: 612, column: 10, scope: !3056)
!3076 = !DILocation(line: 612, column: 3, scope: !3056)
!3077 = !DILocation(line: 613, column: 1, scope: !3056)
!3078 = distinct !DISubprogram(name: "fchdir", scope: !102, file: !102, line: 615, type: !103, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3079 = !DILocalVariable(name: "fd", arg: 1, scope: !3078, file: !102, line: 615, type: !44)
!3080 = !DILocation(line: 615, column: 16, scope: !3078)
!3081 = !DILocalVariable(name: "f", scope: !3078, file: !102, line: 616, type: !1979)
!3082 = !DILocation(line: 616, column: 15, scope: !3078)
!3083 = !DILocation(line: 616, column: 30, scope: !3078)
!3084 = !DILocation(line: 616, column: 19, scope: !3078)
!3085 = !DILocation(line: 618, column: 8, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3078, file: !102, line: 618, column: 7)
!3087 = !DILocation(line: 618, column: 7, scope: !3078)
!3088 = !DILocation(line: 619, column: 5, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !102, line: 618, column: 11)
!3090 = !DILocation(line: 619, column: 11, scope: !3089)
!3091 = !DILocation(line: 620, column: 5, scope: !3089)
!3092 = !DILocation(line: 623, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3078, file: !102, line: 623, column: 7)
!3094 = !DILocation(line: 623, column: 10, scope: !3093)
!3095 = !DILocation(line: 623, column: 7, scope: !3078)
!3096 = !DILocation(line: 624, column: 5, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !102, line: 623, column: 17)
!3098 = !DILocation(line: 625, column: 5, scope: !3097)
!3099 = !DILocation(line: 625, column: 11, scope: !3097)
!3100 = !DILocation(line: 626, column: 5, scope: !3097)
!3101 = !DILocation(line: 629, column: 31, scope: !3078)
!3102 = !DILocation(line: 629, column: 34, scope: !3078)
!3103 = !DILocation(line: 629, column: 10, scope: !3078)
!3104 = !DILocation(line: 629, column: 3, scope: !3078)
!3105 = !DILocation(line: 630, column: 1, scope: !3078)
!3106 = !DILocalVariable(name: "path", arg: 1, scope: !185, file: !102, line: 646, type: !188)
!3107 = !DILocation(line: 646, column: 23, scope: !185)
!3108 = !DILocalVariable(name: "mode", arg: 2, scope: !185, file: !102, line: 646, type: !97)
!3109 = !DILocation(line: 646, column: 36, scope: !185)
!3110 = !DILocalVariable(name: "dfile", scope: !185, file: !102, line: 649, type: !1637)
!3111 = !DILocation(line: 649, column: 20, scope: !185)
!3112 = !DILocation(line: 649, column: 43, scope: !185)
!3113 = !DILocation(line: 649, column: 28, scope: !185)
!3114 = !DILocation(line: 651, column: 10, scope: !185)
!3115 = !DILocation(line: 652, column: 16, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !185, file: !102, line: 652, column: 7)
!3117 = !DILocation(line: 652, column: 7, scope: !3116)
!3118 = !DILocation(line: 652, column: 29, scope: !3116)
!3119 = !DILocation(line: 652, column: 42, scope: !3116)
!3120 = !DILocation(line: 652, column: 32, scope: !3116)
!3121 = !DILocation(line: 652, column: 56, scope: !3116)
!3122 = !DILocation(line: 652, column: 53, scope: !3116)
!3123 = !DILocation(line: 652, column: 7, scope: !185)
!3124 = !DILocation(line: 653, column: 26, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3116, file: !102, line: 652, column: 65)
!3126 = !DILocation(line: 654, column: 5, scope: !3125)
!3127 = !DILocation(line: 654, column: 11, scope: !3125)
!3128 = !DILocation(line: 655, column: 5, scope: !3125)
!3129 = !DILocation(line: 658, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !185, file: !102, line: 658, column: 7)
!3131 = !DILocation(line: 658, column: 7, scope: !185)
!3132 = !DILocation(line: 659, column: 23, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3130, file: !102, line: 658, column: 14)
!3134 = !DILocation(line: 659, column: 30, scope: !3133)
!3135 = !DILocation(line: 659, column: 12, scope: !3133)
!3136 = !DILocation(line: 659, column: 5, scope: !3133)
!3137 = !DILocation(line: 662, column: 50, scope: !185)
!3138 = !DILocation(line: 662, column: 30, scope: !185)
!3139 = !DILocation(line: 662, column: 57, scope: !185)
!3140 = !DILocation(line: 662, column: 10, scope: !185)
!3141 = !DILocation(line: 662, column: 3, scope: !185)
!3142 = !DILocation(line: 663, column: 1, scope: !185)
!3143 = distinct !DISubprogram(name: "__df_chmod", scope: !102, file: !102, line: 633, type: !3144, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!44, !1637, !97}
!3146 = !DILocalVariable(name: "df", arg: 1, scope: !3143, file: !102, line: 633, type: !1637)
!3147 = !DILocation(line: 633, column: 40, scope: !3143)
!3148 = !DILocalVariable(name: "mode", arg: 2, scope: !3143, file: !102, line: 633, type: !97)
!3149 = !DILocation(line: 633, column: 51, scope: !3143)
!3150 = !DILocation(line: 634, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !102, line: 634, column: 7)
!3152 = !DILocation(line: 634, column: 20, scope: !3151)
!3153 = !DILocation(line: 634, column: 24, scope: !3151)
!3154 = !DILocation(line: 634, column: 30, scope: !3151)
!3155 = !DILocation(line: 634, column: 17, scope: !3151)
!3156 = !DILocation(line: 634, column: 7, scope: !3143)
!3157 = !DILocation(line: 635, column: 9, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !102, line: 635, column: 9)
!3159 = distinct !DILexicalBlock(scope: !3151, file: !102, line: 634, column: 38)
!3160 = !DILocation(line: 635, column: 21, scope: !3158)
!3161 = !DILocation(line: 635, column: 25, scope: !3158)
!3162 = !DILocation(line: 635, column: 31, scope: !3158)
!3163 = !DILocation(line: 635, column: 18, scope: !3158)
!3164 = !DILocation(line: 635, column: 9, scope: !3159)
!3165 = !DILocation(line: 636, column: 12, scope: !3158)
!3166 = !DILocation(line: 636, column: 7, scope: !3158)
!3167 = !DILocation(line: 637, column: 27, scope: !3159)
!3168 = !DILocation(line: 637, column: 31, scope: !3159)
!3169 = !DILocation(line: 637, column: 37, scope: !3159)
!3170 = !DILocation(line: 637, column: 45, scope: !3159)
!3171 = !DILocation(line: 638, column: 27, scope: !3159)
!3172 = !DILocation(line: 638, column: 32, scope: !3159)
!3173 = !DILocation(line: 637, column: 55, scope: !3159)
!3174 = !DILocation(line: 637, column: 5, scope: !3159)
!3175 = !DILocation(line: 637, column: 9, scope: !3159)
!3176 = !DILocation(line: 637, column: 15, scope: !3159)
!3177 = !DILocation(line: 637, column: 23, scope: !3159)
!3178 = !DILocation(line: 639, column: 5, scope: !3159)
!3179 = !DILocation(line: 641, column: 5, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3151, file: !102, line: 640, column: 10)
!3181 = !DILocation(line: 641, column: 11, scope: !3180)
!3182 = !DILocation(line: 642, column: 5, scope: !3180)
!3183 = !DILocation(line: 644, column: 1, scope: !3143)
!3184 = !DILocalVariable(name: "fd", arg: 1, scope: !192, file: !102, line: 665, type: !44)
!3185 = !DILocation(line: 665, column: 16, scope: !192)
!3186 = !DILocalVariable(name: "mode", arg: 2, scope: !192, file: !102, line: 665, type: !97)
!3187 = !DILocation(line: 665, column: 27, scope: !192)
!3188 = !DILocalVariable(name: "f", scope: !192, file: !102, line: 668, type: !1979)
!3189 = !DILocation(line: 668, column: 15, scope: !192)
!3190 = !DILocation(line: 668, column: 30, scope: !192)
!3191 = !DILocation(line: 668, column: 19, scope: !192)
!3192 = !DILocation(line: 670, column: 8, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !192, file: !102, line: 670, column: 7)
!3194 = !DILocation(line: 670, column: 7, scope: !192)
!3195 = !DILocation(line: 671, column: 5, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !102, line: 670, column: 11)
!3197 = !DILocation(line: 671, column: 11, scope: !3196)
!3198 = !DILocation(line: 672, column: 5, scope: !3196)
!3199 = !DILocation(line: 675, column: 10, scope: !192)
!3200 = !DILocation(line: 676, column: 16, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !192, file: !102, line: 676, column: 7)
!3202 = !DILocation(line: 676, column: 7, scope: !3201)
!3203 = !DILocation(line: 676, column: 29, scope: !3201)
!3204 = !DILocation(line: 676, column: 42, scope: !3201)
!3205 = !DILocation(line: 676, column: 32, scope: !3201)
!3206 = !DILocation(line: 676, column: 57, scope: !3201)
!3207 = !DILocation(line: 676, column: 54, scope: !3201)
!3208 = !DILocation(line: 676, column: 7, scope: !192)
!3209 = !DILocation(line: 677, column: 26, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3201, file: !102, line: 676, column: 66)
!3211 = !DILocation(line: 678, column: 5, scope: !3210)
!3212 = !DILocation(line: 678, column: 11, scope: !3210)
!3213 = !DILocation(line: 679, column: 5, scope: !3210)
!3214 = !DILocation(line: 682, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !192, file: !102, line: 682, column: 7)
!3216 = !DILocation(line: 682, column: 10, scope: !3215)
!3217 = !DILocation(line: 682, column: 7, scope: !192)
!3218 = !DILocation(line: 683, column: 23, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !102, line: 682, column: 17)
!3220 = !DILocation(line: 683, column: 26, scope: !3219)
!3221 = !DILocation(line: 683, column: 33, scope: !3219)
!3222 = !DILocation(line: 683, column: 12, scope: !3219)
!3223 = !DILocation(line: 683, column: 5, scope: !3219)
!3224 = !DILocation(line: 686, column: 31, scope: !192)
!3225 = !DILocation(line: 686, column: 34, scope: !192)
!3226 = !DILocation(line: 686, column: 38, scope: !192)
!3227 = !DILocation(line: 686, column: 10, scope: !192)
!3228 = !DILocation(line: 686, column: 3, scope: !192)
!3229 = !DILocation(line: 687, column: 1, scope: !192)
!3230 = distinct !DISubprogram(name: "chown", scope: !102, file: !102, line: 695, type: !3231, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!44, !188, !3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !91, line: 79, baseType: !40)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !91, line: 64, baseType: !42)
!3235 = !DILocalVariable(name: "path", arg: 1, scope: !3230, file: !102, line: 695, type: !188)
!3236 = !DILocation(line: 695, column: 23, scope: !3230)
!3237 = !DILocalVariable(name: "owner", arg: 2, scope: !3230, file: !102, line: 695, type: !3233)
!3238 = !DILocation(line: 695, column: 35, scope: !3230)
!3239 = !DILocalVariable(name: "group", arg: 3, scope: !3230, file: !102, line: 695, type: !3234)
!3240 = !DILocation(line: 695, column: 48, scope: !3230)
!3241 = !DILocalVariable(name: "df", scope: !3230, file: !102, line: 696, type: !1637)
!3242 = !DILocation(line: 696, column: 20, scope: !3230)
!3243 = !DILocation(line: 696, column: 40, scope: !3230)
!3244 = !DILocation(line: 696, column: 25, scope: !3230)
!3245 = !DILocation(line: 698, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3230, file: !102, line: 698, column: 7)
!3247 = !DILocation(line: 698, column: 7, scope: !3230)
!3248 = !DILocation(line: 699, column: 23, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3246, file: !102, line: 698, column: 11)
!3250 = !DILocation(line: 699, column: 27, scope: !3249)
!3251 = !DILocation(line: 699, column: 34, scope: !3249)
!3252 = !DILocation(line: 699, column: 12, scope: !3249)
!3253 = !DILocation(line: 699, column: 5, scope: !3249)
!3254 = !DILocation(line: 702, column: 50, scope: !3230)
!3255 = !DILocation(line: 702, column: 30, scope: !3230)
!3256 = !DILocation(line: 702, column: 57, scope: !3230)
!3257 = !DILocation(line: 702, column: 64, scope: !3230)
!3258 = !DILocation(line: 702, column: 10, scope: !3230)
!3259 = !DILocation(line: 702, column: 3, scope: !3230)
!3260 = !DILocation(line: 703, column: 1, scope: !3230)
!3261 = distinct !DISubprogram(name: "__df_chown", scope: !102, file: !102, line: 689, type: !3262, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!44, !1637, !3233, !3234}
!3264 = !DILocalVariable(name: "df", arg: 1, scope: !3261, file: !102, line: 689, type: !1637)
!3265 = !DILocation(line: 689, column: 40, scope: !3261)
!3266 = !DILocalVariable(name: "owner", arg: 2, scope: !3261, file: !102, line: 689, type: !3233)
!3267 = !DILocation(line: 689, column: 50, scope: !3261)
!3268 = !DILocalVariable(name: "group", arg: 3, scope: !3261, file: !102, line: 689, type: !3234)
!3269 = !DILocation(line: 689, column: 63, scope: !3261)
!3270 = !DILocation(line: 690, column: 3, scope: !3261)
!3271 = !DILocation(line: 691, column: 3, scope: !3261)
!3272 = !DILocation(line: 691, column: 9, scope: !3261)
!3273 = !DILocation(line: 692, column: 3, scope: !3261)
!3274 = distinct !DISubprogram(name: "fchown", scope: !102, file: !102, line: 705, type: !3275, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!44, !44, !3233, !3234}
!3277 = !DILocalVariable(name: "fd", arg: 1, scope: !3274, file: !102, line: 705, type: !44)
!3278 = !DILocation(line: 705, column: 16, scope: !3274)
!3279 = !DILocalVariable(name: "owner", arg: 2, scope: !3274, file: !102, line: 705, type: !3233)
!3280 = !DILocation(line: 705, column: 26, scope: !3274)
!3281 = !DILocalVariable(name: "group", arg: 3, scope: !3274, file: !102, line: 705, type: !3234)
!3282 = !DILocation(line: 705, column: 39, scope: !3274)
!3283 = !DILocalVariable(name: "f", scope: !3274, file: !102, line: 706, type: !1979)
!3284 = !DILocation(line: 706, column: 15, scope: !3274)
!3285 = !DILocation(line: 706, column: 30, scope: !3274)
!3286 = !DILocation(line: 706, column: 19, scope: !3274)
!3287 = !DILocation(line: 708, column: 8, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3274, file: !102, line: 708, column: 7)
!3289 = !DILocation(line: 708, column: 7, scope: !3274)
!3290 = !DILocation(line: 709, column: 5, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !102, line: 708, column: 11)
!3292 = !DILocation(line: 709, column: 11, scope: !3291)
!3293 = !DILocation(line: 710, column: 5, scope: !3291)
!3294 = !DILocation(line: 713, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3274, file: !102, line: 713, column: 7)
!3296 = !DILocation(line: 713, column: 10, scope: !3295)
!3297 = !DILocation(line: 713, column: 7, scope: !3274)
!3298 = !DILocation(line: 714, column: 23, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !102, line: 713, column: 17)
!3300 = !DILocation(line: 714, column: 26, scope: !3299)
!3301 = !DILocation(line: 714, column: 33, scope: !3299)
!3302 = !DILocation(line: 714, column: 40, scope: !3299)
!3303 = !DILocation(line: 714, column: 12, scope: !3299)
!3304 = !DILocation(line: 714, column: 5, scope: !3299)
!3305 = !DILocation(line: 717, column: 31, scope: !3274)
!3306 = !DILocation(line: 717, column: 35, scope: !3274)
!3307 = !DILocation(line: 717, column: 42, scope: !3274)
!3308 = !DILocation(line: 717, column: 10, scope: !3274)
!3309 = !DILocation(line: 717, column: 3, scope: !3274)
!3310 = !DILocation(line: 718, column: 1, scope: !3274)
!3311 = distinct !DISubprogram(name: "lchown", scope: !102, file: !102, line: 720, type: !3231, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3312 = !DILocalVariable(name: "path", arg: 1, scope: !3311, file: !102, line: 720, type: !188)
!3313 = !DILocation(line: 720, column: 24, scope: !3311)
!3314 = !DILocalVariable(name: "owner", arg: 2, scope: !3311, file: !102, line: 720, type: !3233)
!3315 = !DILocation(line: 720, column: 36, scope: !3311)
!3316 = !DILocalVariable(name: "group", arg: 3, scope: !3311, file: !102, line: 720, type: !3234)
!3317 = !DILocation(line: 720, column: 49, scope: !3311)
!3318 = !DILocalVariable(name: "df", scope: !3311, file: !102, line: 722, type: !1637)
!3319 = !DILocation(line: 722, column: 20, scope: !3311)
!3320 = !DILocation(line: 722, column: 40, scope: !3311)
!3321 = !DILocation(line: 722, column: 25, scope: !3311)
!3322 = !DILocation(line: 724, column: 7, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3311, file: !102, line: 724, column: 7)
!3324 = !DILocation(line: 724, column: 7, scope: !3311)
!3325 = !DILocation(line: 725, column: 23, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !102, line: 724, column: 11)
!3327 = !DILocation(line: 725, column: 27, scope: !3326)
!3328 = !DILocation(line: 725, column: 34, scope: !3326)
!3329 = !DILocation(line: 725, column: 12, scope: !3326)
!3330 = !DILocation(line: 725, column: 5, scope: !3326)
!3331 = !DILocation(line: 728, column: 50, scope: !3311)
!3332 = !DILocation(line: 728, column: 30, scope: !3311)
!3333 = !DILocation(line: 728, column: 57, scope: !3311)
!3334 = !DILocation(line: 728, column: 64, scope: !3311)
!3335 = !DILocation(line: 728, column: 10, scope: !3311)
!3336 = !DILocation(line: 728, column: 3, scope: !3311)
!3337 = !DILocation(line: 729, column: 1, scope: !3311)
!3338 = distinct !DISubprogram(name: "__fd_fstat", scope: !102, file: !102, line: 731, type: !2140, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3339 = !DILocalVariable(name: "fd", arg: 1, scope: !3338, file: !102, line: 731, type: !44)
!3340 = !DILocation(line: 731, column: 20, scope: !3338)
!3341 = !DILocalVariable(name: "buf", arg: 2, scope: !3338, file: !102, line: 731, type: !1644)
!3342 = !DILocation(line: 731, column: 39, scope: !3338)
!3343 = !DILocalVariable(name: "f", scope: !3338, file: !102, line: 732, type: !1979)
!3344 = !DILocation(line: 732, column: 15, scope: !3338)
!3345 = !DILocation(line: 732, column: 30, scope: !3338)
!3346 = !DILocation(line: 732, column: 19, scope: !3338)
!3347 = !DILocation(line: 734, column: 8, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3338, file: !102, line: 734, column: 7)
!3349 = !DILocation(line: 734, column: 7, scope: !3338)
!3350 = !DILocation(line: 735, column: 5, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !102, line: 734, column: 11)
!3352 = !DILocation(line: 735, column: 11, scope: !3351)
!3353 = !DILocation(line: 736, column: 5, scope: !3351)
!3354 = !DILocation(line: 739, column: 8, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3338, file: !102, line: 739, column: 7)
!3356 = !DILocation(line: 739, column: 11, scope: !3355)
!3357 = !DILocation(line: 739, column: 7, scope: !3338)
!3358 = !DILocation(line: 741, column: 32, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !102, line: 739, column: 18)
!3360 = !DILocation(line: 741, column: 35, scope: !3359)
!3361 = !DILocation(line: 741, column: 39, scope: !3359)
!3362 = !DILocation(line: 741, column: 12, scope: !3359)
!3363 = !DILocation(line: 741, column: 5, scope: !3359)
!3364 = !DILocation(line: 747, column: 10, scope: !3338)
!3365 = !DILocation(line: 747, column: 3, scope: !3338)
!3366 = !DILocation(line: 747, column: 15, scope: !3338)
!3367 = !DILocation(line: 747, column: 18, scope: !3338)
!3368 = !DILocation(line: 747, column: 25, scope: !3338)
!3369 = !DILocation(line: 748, column: 3, scope: !3338)
!3370 = !DILocation(line: 749, column: 1, scope: !3338)
!3371 = !DILocalVariable(name: "fd", arg: 1, scope: !197, file: !102, line: 751, type: !44)
!3372 = !DILocation(line: 751, column: 24, scope: !197)
!3373 = !DILocalVariable(name: "length", arg: 2, scope: !197, file: !102, line: 751, type: !90)
!3374 = !DILocation(line: 751, column: 36, scope: !197)
!3375 = !DILocalVariable(name: "f", scope: !197, file: !102, line: 753, type: !1979)
!3376 = !DILocation(line: 753, column: 15, scope: !197)
!3377 = !DILocation(line: 753, column: 30, scope: !197)
!3378 = !DILocation(line: 753, column: 19, scope: !197)
!3379 = !DILocation(line: 755, column: 10, scope: !197)
!3380 = !DILocation(line: 757, column: 8, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !197, file: !102, line: 757, column: 7)
!3382 = !DILocation(line: 757, column: 7, scope: !197)
!3383 = !DILocation(line: 758, column: 5, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !102, line: 757, column: 11)
!3385 = !DILocation(line: 758, column: 11, scope: !3384)
!3386 = !DILocation(line: 759, column: 5, scope: !3384)
!3387 = !DILocation(line: 762, column: 16, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !197, file: !102, line: 762, column: 7)
!3389 = !DILocation(line: 762, column: 7, scope: !3388)
!3390 = !DILocation(line: 762, column: 29, scope: !3388)
!3391 = !DILocation(line: 762, column: 42, scope: !3388)
!3392 = !DILocation(line: 762, column: 32, scope: !3388)
!3393 = !DILocation(line: 762, column: 60, scope: !3388)
!3394 = !DILocation(line: 762, column: 57, scope: !3388)
!3395 = !DILocation(line: 762, column: 7, scope: !197)
!3396 = !DILocation(line: 763, column: 26, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3388, file: !102, line: 762, column: 69)
!3398 = !DILocation(line: 764, column: 5, scope: !3397)
!3399 = !DILocation(line: 764, column: 11, scope: !3397)
!3400 = !DILocation(line: 765, column: 5, scope: !3397)
!3401 = !DILocation(line: 768, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !197, file: !102, line: 768, column: 7)
!3403 = !DILocation(line: 768, column: 10, scope: !3402)
!3404 = !DILocation(line: 768, column: 7, scope: !197)
!3405 = !DILocation(line: 769, column: 5, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !102, line: 768, column: 17)
!3407 = !DILocation(line: 770, column: 5, scope: !3406)
!3408 = !DILocation(line: 770, column: 11, scope: !3406)
!3409 = !DILocation(line: 771, column: 5, scope: !3406)
!3410 = !DILocation(line: 774, column: 34, scope: !197)
!3411 = !DILocation(line: 774, column: 37, scope: !197)
!3412 = !DILocation(line: 774, column: 41, scope: !197)
!3413 = !DILocation(line: 774, column: 10, scope: !197)
!3414 = !DILocation(line: 774, column: 3, scope: !197)
!3415 = !DILocation(line: 778, column: 1, scope: !197)
!3416 = distinct !DISubprogram(name: "__fd_getdents", scope: !102, file: !102, line: 780, type: !3417, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!44, !14, !128, !14}
!3419 = !DILocalVariable(name: "fd", arg: 1, scope: !3416, file: !102, line: 780, type: !14)
!3420 = !DILocation(line: 780, column: 32, scope: !3416)
!3421 = !DILocalVariable(name: "dirp", arg: 2, scope: !3416, file: !102, line: 780, type: !128)
!3422 = !DILocation(line: 780, column: 53, scope: !3416)
!3423 = !DILocalVariable(name: "count", arg: 3, scope: !3416, file: !102, line: 780, type: !14)
!3424 = !DILocation(line: 780, column: 72, scope: !3416)
!3425 = !DILocalVariable(name: "f", scope: !3416, file: !102, line: 781, type: !1979)
!3426 = !DILocation(line: 781, column: 15, scope: !3416)
!3427 = !DILocation(line: 781, column: 30, scope: !3416)
!3428 = !DILocation(line: 781, column: 19, scope: !3416)
!3429 = !DILocation(line: 783, column: 8, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3416, file: !102, line: 783, column: 7)
!3431 = !DILocation(line: 783, column: 7, scope: !3416)
!3432 = !DILocation(line: 784, column: 5, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !102, line: 783, column: 11)
!3434 = !DILocation(line: 784, column: 11, scope: !3433)
!3435 = !DILocation(line: 785, column: 5, scope: !3433)
!3436 = !DILocation(line: 788, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3416, file: !102, line: 788, column: 7)
!3438 = !DILocation(line: 788, column: 10, scope: !3437)
!3439 = !DILocation(line: 788, column: 7, scope: !3416)
!3440 = !DILocation(line: 789, column: 5, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3437, file: !102, line: 788, column: 17)
!3442 = !DILocation(line: 790, column: 5, scope: !3441)
!3443 = !DILocation(line: 790, column: 11, scope: !3441)
!3444 = !DILocation(line: 791, column: 5, scope: !3441)
!3445 = !DILocation(line: 793, column: 25, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !102, line: 793, column: 9)
!3447 = distinct !DILexicalBlock(scope: !3437, file: !102, line: 792, column: 10)
!3448 = !DILocation(line: 793, column: 28, scope: !3446)
!3449 = !DILocation(line: 793, column: 32, scope: !3446)
!3450 = !DILocation(line: 793, column: 9, scope: !3447)
!3451 = !DILocalVariable(name: "i", scope: !3452, file: !102, line: 795, type: !90)
!3452 = distinct !DILexicalBlock(scope: !3446, file: !102, line: 793, column: 41)
!3453 = !DILocation(line: 795, column: 15, scope: !3452)
!3454 = !DILocalVariable(name: "pad", scope: !3452, file: !102, line: 795, type: !90)
!3455 = !DILocation(line: 795, column: 18, scope: !3452)
!3456 = !DILocalVariable(name: "bytes", scope: !3452, file: !102, line: 795, type: !90)
!3457 = !DILocation(line: 795, column: 23, scope: !3452)
!3458 = !DILocation(line: 798, column: 11, scope: !3452)
!3459 = !DILocation(line: 798, column: 14, scope: !3452)
!3460 = !DILocation(line: 798, column: 18, scope: !3452)
!3461 = !DILocation(line: 798, column: 9, scope: !3452)
!3462 = !DILocation(line: 799, column: 23, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3452, file: !102, line: 799, column: 11)
!3464 = !DILocation(line: 799, column: 25, scope: !3463)
!3465 = !DILocation(line: 799, column: 45, scope: !3463)
!3466 = !DILocation(line: 799, column: 48, scope: !3463)
!3467 = !DILocation(line: 799, column: 42, scope: !3463)
!3468 = !DILocation(line: 799, column: 53, scope: !3463)
!3469 = !DILocation(line: 800, column: 11, scope: !3463)
!3470 = !DILocation(line: 800, column: 24, scope: !3463)
!3471 = !DILocation(line: 800, column: 15, scope: !3463)
!3472 = !DILocation(line: 800, column: 13, scope: !3463)
!3473 = !DILocation(line: 799, column: 11, scope: !3452)
!3474 = !DILocation(line: 801, column: 9, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3463, file: !102, line: 800, column: 37)
!3476 = !DILocation(line: 801, column: 15, scope: !3475)
!3477 = !DILocation(line: 802, column: 9, scope: !3475)
!3478 = !DILocation(line: 804, column: 14, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !102, line: 804, column: 7)
!3480 = distinct !DILexicalBlock(scope: !3452, file: !102, line: 804, column: 7)
!3481 = !DILocation(line: 804, column: 25, scope: !3479)
!3482 = !DILocation(line: 804, column: 16, scope: !3479)
!3483 = !DILocation(line: 804, column: 15, scope: !3479)
!3484 = !DILocation(line: 804, column: 7, scope: !3480)
!3485 = !DILocalVariable(name: "df", scope: !3486, file: !102, line: 805, type: !1637)
!3486 = distinct !DILexicalBlock(scope: !3479, file: !102, line: 804, column: 43)
!3487 = !DILocation(line: 805, column: 26, scope: !3486)
!3488 = !DILocation(line: 805, column: 41, scope: !3486)
!3489 = !DILocation(line: 805, column: 51, scope: !3486)
!3490 = !DILocation(line: 805, column: 32, scope: !3486)
!3491 = !DILocation(line: 806, column: 23, scope: !3486)
!3492 = !DILocation(line: 806, column: 27, scope: !3486)
!3493 = !DILocation(line: 806, column: 33, scope: !3486)
!3494 = !DILocation(line: 806, column: 9, scope: !3486)
!3495 = !DILocation(line: 806, column: 15, scope: !3486)
!3496 = !DILocation(line: 806, column: 21, scope: !3486)
!3497 = !DILocation(line: 807, column: 9, scope: !3486)
!3498 = !DILocation(line: 807, column: 15, scope: !3486)
!3499 = !DILocation(line: 807, column: 24, scope: !3486)
!3500 = !DILocation(line: 808, column: 24, scope: !3486)
!3501 = !DILocation(line: 808, column: 9, scope: !3486)
!3502 = !DILocation(line: 808, column: 15, scope: !3486)
!3503 = !DILocation(line: 808, column: 22, scope: !3486)
!3504 = !DILocation(line: 809, column: 33, scope: !3486)
!3505 = !DILocation(line: 809, column: 31, scope: !3486)
!3506 = !DILocation(line: 809, column: 27, scope: !3486)
!3507 = !DILocation(line: 809, column: 9, scope: !3486)
!3508 = !DILocation(line: 809, column: 15, scope: !3486)
!3509 = !DILocation(line: 809, column: 25, scope: !3486)
!3510 = !DILocation(line: 810, column: 9, scope: !3486)
!3511 = !DILocation(line: 810, column: 15, scope: !3486)
!3512 = !DILocation(line: 810, column: 25, scope: !3486)
!3513 = !DILocation(line: 812, column: 24, scope: !3486)
!3514 = !DILocation(line: 812, column: 25, scope: !3486)
!3515 = !DILocation(line: 812, column: 29, scope: !3486)
!3516 = !DILocation(line: 812, column: 9, scope: !3486)
!3517 = !DILocation(line: 812, column: 15, scope: !3486)
!3518 = !DILocation(line: 812, column: 21, scope: !3486)
!3519 = !DILocation(line: 814, column: 18, scope: !3486)
!3520 = !DILocation(line: 814, column: 24, scope: !3486)
!3521 = !DILocation(line: 814, column: 15, scope: !3486)
!3522 = !DILocation(line: 815, column: 9, scope: !3486)
!3523 = !DILocation(line: 804, column: 38, scope: !3479)
!3524 = !DILocation(line: 804, column: 7, scope: !3479)
!3525 = distinct !{!3525, !3484, !3526}
!3526 = !DILocation(line: 816, column: 7, scope: !3480)
!3527 = !DILocation(line: 819, column: 13, scope: !3452)
!3528 = !DILocation(line: 819, column: 18, scope: !3452)
!3529 = !DILocation(line: 819, column: 11, scope: !3452)
!3530 = !DILocation(line: 820, column: 7, scope: !3452)
!3531 = !DILocation(line: 820, column: 13, scope: !3452)
!3532 = !DILocation(line: 820, column: 19, scope: !3452)
!3533 = !DILocation(line: 821, column: 24, scope: !3452)
!3534 = !DILocation(line: 821, column: 30, scope: !3452)
!3535 = !DILocation(line: 821, column: 28, scope: !3452)
!3536 = !DILocation(line: 821, column: 7, scope: !3452)
!3537 = !DILocation(line: 821, column: 13, scope: !3452)
!3538 = !DILocation(line: 821, column: 22, scope: !3452)
!3539 = !DILocation(line: 822, column: 7, scope: !3452)
!3540 = !DILocation(line: 822, column: 13, scope: !3452)
!3541 = !DILocation(line: 822, column: 20, scope: !3452)
!3542 = !DILocation(line: 823, column: 7, scope: !3452)
!3543 = !DILocation(line: 823, column: 13, scope: !3452)
!3544 = !DILocation(line: 823, column: 23, scope: !3452)
!3545 = !DILocation(line: 825, column: 7, scope: !3452)
!3546 = !DILocation(line: 825, column: 13, scope: !3452)
!3547 = !DILocation(line: 825, column: 19, scope: !3452)
!3548 = !DILocation(line: 827, column: 16, scope: !3452)
!3549 = !DILocation(line: 827, column: 22, scope: !3452)
!3550 = !DILocation(line: 827, column: 13, scope: !3452)
!3551 = !DILocation(line: 828, column: 16, scope: !3452)
!3552 = !DILocation(line: 828, column: 7, scope: !3452)
!3553 = !DILocation(line: 828, column: 10, scope: !3452)
!3554 = !DILocation(line: 828, column: 14, scope: !3452)
!3555 = !DILocation(line: 830, column: 14, scope: !3452)
!3556 = !DILocation(line: 830, column: 7, scope: !3452)
!3557 = !DILocalVariable(name: "os_pos", scope: !3558, file: !102, line: 832, type: !90)
!3558 = distinct !DILexicalBlock(scope: !3446, file: !102, line: 831, column: 12)
!3559 = !DILocation(line: 832, column: 15, scope: !3558)
!3560 = !DILocation(line: 832, column: 24, scope: !3558)
!3561 = !DILocation(line: 832, column: 27, scope: !3558)
!3562 = !DILocation(line: 832, column: 31, scope: !3558)
!3563 = !DILocation(line: 841, column: 14, scope: !3558)
!3564 = !DILocation(line: 841, column: 7, scope: !3558)
!3565 = !DILocation(line: 841, column: 23, scope: !3558)
!3566 = !DILocalVariable(name: "s", scope: !3558, file: !102, line: 842, type: !90)
!3567 = !DILocation(line: 842, column: 15, scope: !3558)
!3568 = !DILocation(line: 842, column: 39, scope: !3558)
!3569 = !DILocation(line: 842, column: 42, scope: !3558)
!3570 = !DILocation(line: 842, column: 46, scope: !3558)
!3571 = !DILocation(line: 842, column: 19, scope: !3558)
!3572 = !DILocation(line: 843, column: 13, scope: !3558)
!3573 = !DILocation(line: 844, column: 7, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !102, line: 844, column: 7)
!3575 = distinct !DILexicalBlock(scope: !3558, file: !102, line: 844, column: 7)
!3576 = !DILocation(line: 844, column: 7, scope: !3575)
!3577 = !DILocalVariable(name: "res", scope: !3558, file: !102, line: 845, type: !44)
!3578 = !DILocation(line: 845, column: 11, scope: !3558)
!3579 = !DILocation(line: 845, column: 42, scope: !3558)
!3580 = !DILocation(line: 845, column: 45, scope: !3558)
!3581 = !DILocation(line: 845, column: 49, scope: !3558)
!3582 = !DILocation(line: 845, column: 55, scope: !3558)
!3583 = !DILocation(line: 845, column: 17, scope: !3558)
!3584 = !DILocation(line: 846, column: 11, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3558, file: !102, line: 846, column: 11)
!3586 = !DILocation(line: 846, column: 15, scope: !3585)
!3587 = !DILocation(line: 846, column: 11, scope: !3558)
!3588 = !DILocalVariable(name: "pos", scope: !3589, file: !102, line: 847, type: !44)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !102, line: 846, column: 21)
!3590 = !DILocation(line: 847, column: 13, scope: !3589)
!3591 = !DILocation(line: 848, column: 38, scope: !3589)
!3592 = !DILocation(line: 848, column: 41, scope: !3589)
!3593 = !DILocation(line: 848, column: 18, scope: !3589)
!3594 = !DILocation(line: 848, column: 9, scope: !3589)
!3595 = !DILocation(line: 848, column: 12, scope: !3589)
!3596 = !DILocation(line: 848, column: 16, scope: !3589)
!3597 = !DILocation(line: 849, column: 9, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !102, line: 849, column: 9)
!3599 = distinct !DILexicalBlock(scope: !3589, file: !102, line: 849, column: 9)
!3600 = !DILocation(line: 849, column: 9, scope: !3599)
!3601 = !DILocation(line: 850, column: 9, scope: !3589)
!3602 = !DILocation(line: 850, column: 12, scope: !3589)
!3603 = !DILocation(line: 850, column: 16, scope: !3589)
!3604 = !DILocation(line: 853, column: 9, scope: !3589)
!3605 = !DILocation(line: 853, column: 16, scope: !3589)
!3606 = !DILocation(line: 853, column: 22, scope: !3589)
!3607 = !DILocation(line: 853, column: 20, scope: !3589)
!3608 = !DILocalVariable(name: "dp", scope: !3609, file: !102, line: 854, type: !128)
!3609 = distinct !DILexicalBlock(scope: !3589, file: !102, line: 853, column: 27)
!3610 = !DILocation(line: 854, column: 28, scope: !3609)
!3611 = !DILocation(line: 854, column: 61, scope: !3609)
!3612 = !DILocation(line: 854, column: 53, scope: !3609)
!3613 = !DILocation(line: 854, column: 68, scope: !3609)
!3614 = !DILocation(line: 854, column: 66, scope: !3609)
!3615 = !DILocation(line: 854, column: 33, scope: !3609)
!3616 = !DILocation(line: 856, column: 11, scope: !3609)
!3617 = !DILocation(line: 856, column: 15, scope: !3609)
!3618 = !DILocation(line: 856, column: 21, scope: !3609)
!3619 = !DILocation(line: 858, column: 18, scope: !3609)
!3620 = !DILocation(line: 858, column: 22, scope: !3609)
!3621 = !DILocation(line: 858, column: 15, scope: !3609)
!3622 = distinct !{!3622, !3604, !3623}
!3623 = !DILocation(line: 859, column: 9, scope: !3589)
!3624 = !DILocation(line: 861, column: 14, scope: !3558)
!3625 = !DILocation(line: 861, column: 7, scope: !3558)
!3626 = !DILocation(line: 864, column: 1, scope: !3416)
!3627 = distinct !DISubprogram(name: "ioctl", scope: !102, file: !102, line: 867, type: !3628, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!44, !44, !32, null}
!3630 = !DILocalVariable(name: "fd", arg: 1, scope: !3627, file: !102, line: 867, type: !44)
!3631 = !DILocation(line: 867, column: 15, scope: !3627)
!3632 = !DILocalVariable(name: "request", arg: 2, scope: !3627, file: !102, line: 867, type: !32)
!3633 = !DILocation(line: 867, column: 37, scope: !3627)
!3634 = !DILocalVariable(name: "f", scope: !3627, file: !102, line: 871, type: !1979)
!3635 = !DILocation(line: 871, column: 15, scope: !3627)
!3636 = !DILocation(line: 871, column: 30, scope: !3627)
!3637 = !DILocation(line: 871, column: 19, scope: !3627)
!3638 = !DILocalVariable(name: "ap", scope: !3627, file: !102, line: 872, type: !3639)
!3639 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1341, line: 52, baseType: !3640)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1343, line: 32, baseType: !3641)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, baseType: !3642)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3643, size: 192, elements: !1352)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3643, file: !102, line: 872, baseType: !14, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3643, file: !102, line: 872, baseType: !14, size: 32, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3643, file: !102, line: 872, baseType: !127, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3643, file: !102, line: 872, baseType: !127, size: 64, offset: 128)
!3649 = !DILocation(line: 872, column: 11, scope: !3627)
!3650 = !DILocalVariable(name: "buf", scope: !3627, file: !102, line: 873, type: !127)
!3651 = !DILocation(line: 873, column: 9, scope: !3627)
!3652 = !DILocation(line: 879, column: 8, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3627, file: !102, line: 879, column: 7)
!3654 = !DILocation(line: 879, column: 7, scope: !3627)
!3655 = !DILocation(line: 880, column: 5, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3653, file: !102, line: 879, column: 11)
!3657 = !DILocation(line: 880, column: 11, scope: !3656)
!3658 = !DILocation(line: 881, column: 5, scope: !3656)
!3659 = !DILocation(line: 884, column: 3, scope: !3627)
!3660 = !DILocation(line: 885, column: 9, scope: !3627)
!3661 = !DILocation(line: 885, column: 7, scope: !3627)
!3662 = !DILocation(line: 886, column: 3, scope: !3627)
!3663 = !DILocation(line: 887, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3627, file: !102, line: 887, column: 7)
!3665 = !DILocation(line: 887, column: 10, scope: !3664)
!3666 = !DILocation(line: 887, column: 7, scope: !3627)
!3667 = !DILocalVariable(name: "stat", scope: !3668, file: !102, line: 888, type: !142)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !102, line: 887, column: 17)
!3669 = !DILocation(line: 888, column: 18, scope: !3668)
!3670 = !DILocation(line: 888, column: 40, scope: !3668)
!3671 = !DILocation(line: 888, column: 43, scope: !3668)
!3672 = !DILocation(line: 888, column: 50, scope: !3668)
!3673 = !DILocation(line: 888, column: 25, scope: !3668)
!3674 = !DILocation(line: 890, column: 13, scope: !3668)
!3675 = !DILocation(line: 890, column: 5, scope: !3668)
!3676 = !DILocalVariable(name: "ts", scope: !3677, file: !102, line: 892, type: !3679)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 891, column: 18)
!3678 = distinct !DILexicalBlock(scope: !3668, file: !102, line: 890, column: 22)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !3681, line: 24, size: 480, elements: !3682)
!3681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios-struct.h", directory: "")
!3682 = !{!3683, !3686, !3687, !3688, !3689, !3691, !3693, !3695}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3680, file: !3681, line: 26, baseType: !3684, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3685, line: 25, baseType: !14)
!3685 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/termios.h", directory: "")
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3680, file: !3681, line: 27, baseType: !3684, size: 32, offset: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3680, file: !3681, line: 28, baseType: !3684, size: 32, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3680, file: !3681, line: 29, baseType: !3684, size: 32, offset: 96)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3680, file: !3681, line: 30, baseType: !3690, size: 8, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3685, line: 23, baseType: !137)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3680, file: !3681, line: 31, baseType: !3692, size: 256, offset: 136)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3690, size: 256, elements: !94)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3680, file: !3681, line: 32, baseType: !3694, size: 32, offset: 416)
!3694 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3685, line: 24, baseType: !14)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3680, file: !3681, line: 33, baseType: !3694, size: 32, offset: 448)
!3696 = !DILocation(line: 892, column: 23, scope: !3677)
!3697 = !DILocation(line: 892, column: 28, scope: !3677)
!3698 = !DILocation(line: 894, column: 7, scope: !3677)
!3699 = !DILocation(line: 897, column: 11, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3677, file: !102, line: 897, column: 11)
!3701 = !DILocation(line: 897, column: 11, scope: !3677)
!3702 = !DILocation(line: 900, column: 9, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !102, line: 897, column: 35)
!3704 = !DILocation(line: 900, column: 13, scope: !3703)
!3705 = !DILocation(line: 900, column: 21, scope: !3703)
!3706 = !DILocation(line: 901, column: 9, scope: !3703)
!3707 = !DILocation(line: 901, column: 13, scope: !3703)
!3708 = !DILocation(line: 901, column: 21, scope: !3703)
!3709 = !DILocation(line: 902, column: 9, scope: !3703)
!3710 = !DILocation(line: 902, column: 13, scope: !3703)
!3711 = !DILocation(line: 902, column: 21, scope: !3703)
!3712 = !DILocation(line: 903, column: 9, scope: !3703)
!3713 = !DILocation(line: 903, column: 13, scope: !3703)
!3714 = !DILocation(line: 903, column: 21, scope: !3703)
!3715 = !DILocation(line: 905, column: 9, scope: !3703)
!3716 = !DILocation(line: 905, column: 13, scope: !3703)
!3717 = !DILocation(line: 905, column: 20, scope: !3703)
!3718 = !DILocation(line: 907, column: 9, scope: !3703)
!3719 = !DILocation(line: 907, column: 13, scope: !3703)
!3720 = !DILocation(line: 907, column: 21, scope: !3703)
!3721 = !DILocation(line: 908, column: 9, scope: !3703)
!3722 = !DILocation(line: 908, column: 13, scope: !3703)
!3723 = !DILocation(line: 908, column: 21, scope: !3703)
!3724 = !DILocation(line: 909, column: 9, scope: !3703)
!3725 = !DILocation(line: 909, column: 13, scope: !3703)
!3726 = !DILocation(line: 909, column: 21, scope: !3703)
!3727 = !DILocation(line: 910, column: 9, scope: !3703)
!3728 = !DILocation(line: 910, column: 13, scope: !3703)
!3729 = !DILocation(line: 910, column: 21, scope: !3703)
!3730 = !DILocation(line: 911, column: 9, scope: !3703)
!3731 = !DILocation(line: 911, column: 13, scope: !3703)
!3732 = !DILocation(line: 911, column: 21, scope: !3703)
!3733 = !DILocation(line: 912, column: 9, scope: !3703)
!3734 = !DILocation(line: 912, column: 13, scope: !3703)
!3735 = !DILocation(line: 912, column: 21, scope: !3703)
!3736 = !DILocation(line: 913, column: 9, scope: !3703)
!3737 = !DILocation(line: 913, column: 13, scope: !3703)
!3738 = !DILocation(line: 913, column: 21, scope: !3703)
!3739 = !DILocation(line: 914, column: 9, scope: !3703)
!3740 = !DILocation(line: 914, column: 13, scope: !3703)
!3741 = !DILocation(line: 914, column: 21, scope: !3703)
!3742 = !DILocation(line: 915, column: 9, scope: !3703)
!3743 = !DILocation(line: 915, column: 13, scope: !3703)
!3744 = !DILocation(line: 915, column: 21, scope: !3703)
!3745 = !DILocation(line: 916, column: 9, scope: !3703)
!3746 = !DILocation(line: 916, column: 13, scope: !3703)
!3747 = !DILocation(line: 916, column: 21, scope: !3703)
!3748 = !DILocation(line: 917, column: 9, scope: !3703)
!3749 = !DILocation(line: 917, column: 13, scope: !3703)
!3750 = !DILocation(line: 917, column: 22, scope: !3703)
!3751 = !DILocation(line: 918, column: 9, scope: !3703)
!3752 = !DILocation(line: 918, column: 13, scope: !3703)
!3753 = !DILocation(line: 918, column: 22, scope: !3703)
!3754 = !DILocation(line: 919, column: 9, scope: !3703)
!3755 = !DILocation(line: 919, column: 13, scope: !3703)
!3756 = !DILocation(line: 919, column: 22, scope: !3703)
!3757 = !DILocation(line: 920, column: 9, scope: !3703)
!3758 = !DILocation(line: 920, column: 13, scope: !3703)
!3759 = !DILocation(line: 920, column: 22, scope: !3703)
!3760 = !DILocation(line: 921, column: 9, scope: !3703)
!3761 = !DILocation(line: 921, column: 13, scope: !3703)
!3762 = !DILocation(line: 921, column: 22, scope: !3703)
!3763 = !DILocation(line: 922, column: 9, scope: !3703)
!3764 = !DILocation(line: 922, column: 13, scope: !3703)
!3765 = !DILocation(line: 922, column: 22, scope: !3703)
!3766 = !DILocation(line: 923, column: 9, scope: !3703)
!3767 = !DILocation(line: 923, column: 13, scope: !3703)
!3768 = !DILocation(line: 923, column: 22, scope: !3703)
!3769 = !DILocation(line: 924, column: 9, scope: !3703)
!3770 = !DILocation(line: 924, column: 13, scope: !3703)
!3771 = !DILocation(line: 924, column: 22, scope: !3703)
!3772 = !DILocation(line: 925, column: 9, scope: !3703)
!3773 = !DILocation(line: 925, column: 13, scope: !3703)
!3774 = !DILocation(line: 925, column: 22, scope: !3703)
!3775 = !DILocation(line: 926, column: 9, scope: !3703)
!3776 = !DILocation(line: 928, column: 9, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3700, file: !102, line: 927, column: 14)
!3778 = !DILocation(line: 928, column: 15, scope: !3777)
!3779 = !DILocation(line: 929, column: 9, scope: !3777)
!3780 = !DILocation(line: 934, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 932, column: 18)
!3782 = !DILocation(line: 935, column: 11, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3781, file: !102, line: 935, column: 11)
!3784 = !DILocation(line: 935, column: 11, scope: !3781)
!3785 = !DILocation(line: 936, column: 9, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !102, line: 935, column: 35)
!3787 = !DILocation(line: 938, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3783, file: !102, line: 937, column: 14)
!3789 = !DILocation(line: 938, column: 15, scope: !3788)
!3790 = !DILocation(line: 939, column: 9, scope: !3788)
!3791 = !DILocation(line: 944, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 942, column: 19)
!3793 = !DILocation(line: 945, column: 11, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3792, file: !102, line: 945, column: 11)
!3795 = !DILocation(line: 945, column: 13, scope: !3794)
!3796 = !DILocation(line: 945, column: 11, scope: !3792)
!3797 = !DILocation(line: 946, column: 9, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !102, line: 945, column: 18)
!3799 = !DILocation(line: 948, column: 9, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3794, file: !102, line: 947, column: 14)
!3801 = !DILocation(line: 948, column: 15, scope: !3800)
!3802 = !DILocation(line: 949, column: 9, scope: !3800)
!3803 = !DILocation(line: 954, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 952, column: 19)
!3805 = !DILocation(line: 955, column: 11, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3804, file: !102, line: 955, column: 11)
!3807 = !DILocation(line: 955, column: 11, scope: !3804)
!3808 = !DILocation(line: 956, column: 9, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3806, file: !102, line: 955, column: 35)
!3810 = !DILocation(line: 958, column: 9, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !102, line: 957, column: 14)
!3812 = !DILocation(line: 958, column: 15, scope: !3811)
!3813 = !DILocation(line: 959, column: 9, scope: !3811)
!3814 = !DILocalVariable(name: "ws", scope: !3815, file: !102, line: 963, type: !3816)
!3815 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 962, column: 22)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3818, line: 27, size: 64, elements: !3819)
!3818 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h", directory: "")
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3817, file: !3818, line: 29, baseType: !135, size: 16)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3817, file: !3818, line: 30, baseType: !135, size: 16, offset: 16)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3817, file: !3818, line: 31, baseType: !135, size: 16, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3817, file: !3818, line: 32, baseType: !135, size: 16, offset: 48)
!3824 = !DILocation(line: 963, column: 23, scope: !3815)
!3825 = !DILocation(line: 963, column: 28, scope: !3815)
!3826 = !DILocation(line: 964, column: 7, scope: !3815)
!3827 = !DILocation(line: 964, column: 11, scope: !3815)
!3828 = !DILocation(line: 964, column: 18, scope: !3815)
!3829 = !DILocation(line: 965, column: 7, scope: !3815)
!3830 = !DILocation(line: 965, column: 11, scope: !3815)
!3831 = !DILocation(line: 965, column: 18, scope: !3815)
!3832 = !DILocation(line: 966, column: 7, scope: !3815)
!3833 = !DILocation(line: 967, column: 11, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3815, file: !102, line: 967, column: 11)
!3835 = !DILocation(line: 967, column: 11, scope: !3815)
!3836 = !DILocation(line: 968, column: 9, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !102, line: 967, column: 35)
!3838 = !DILocation(line: 970, column: 9, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3834, file: !102, line: 969, column: 14)
!3840 = !DILocation(line: 970, column: 15, scope: !3839)
!3841 = !DILocation(line: 971, column: 9, scope: !3839)
!3842 = !DILocation(line: 976, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 974, column: 22)
!3844 = !DILocation(line: 977, column: 11, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3843, file: !102, line: 977, column: 11)
!3846 = !DILocation(line: 977, column: 11, scope: !3843)
!3847 = !DILocation(line: 978, column: 9, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3845, file: !102, line: 977, column: 35)
!3849 = !DILocation(line: 978, column: 15, scope: !3848)
!3850 = !DILocation(line: 979, column: 9, scope: !3848)
!3851 = !DILocation(line: 981, column: 9, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3845, file: !102, line: 980, column: 14)
!3853 = !DILocation(line: 981, column: 15, scope: !3852)
!3854 = !DILocation(line: 982, column: 9, scope: !3852)
!3855 = !DILocalVariable(name: "res", scope: !3856, file: !102, line: 986, type: !72)
!3856 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 985, column: 20)
!3857 = !DILocation(line: 986, column: 12, scope: !3856)
!3858 = !DILocation(line: 986, column: 18, scope: !3856)
!3859 = !DILocation(line: 987, column: 7, scope: !3856)
!3860 = !DILocation(line: 988, column: 11, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3856, file: !102, line: 988, column: 11)
!3862 = !DILocation(line: 988, column: 11, scope: !3856)
!3863 = !DILocation(line: 989, column: 13, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !102, line: 989, column: 13)
!3865 = distinct !DILexicalBlock(scope: !3861, file: !102, line: 988, column: 35)
!3866 = !DILocation(line: 989, column: 16, scope: !3864)
!3867 = !DILocation(line: 989, column: 32, scope: !3864)
!3868 = !DILocation(line: 989, column: 35, scope: !3864)
!3869 = !DILocation(line: 989, column: 42, scope: !3864)
!3870 = !DILocation(line: 989, column: 22, scope: !3864)
!3871 = !DILocation(line: 989, column: 20, scope: !3864)
!3872 = !DILocation(line: 989, column: 13, scope: !3865)
!3873 = !DILocation(line: 990, column: 18, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3864, file: !102, line: 989, column: 48)
!3875 = !DILocation(line: 990, column: 21, scope: !3874)
!3876 = !DILocation(line: 990, column: 28, scope: !3874)
!3877 = !DILocation(line: 990, column: 35, scope: !3874)
!3878 = !DILocation(line: 990, column: 38, scope: !3874)
!3879 = !DILocation(line: 990, column: 33, scope: !3874)
!3880 = !DILocation(line: 990, column: 12, scope: !3874)
!3881 = !DILocation(line: 990, column: 16, scope: !3874)
!3882 = !DILocation(line: 991, column: 9, scope: !3874)
!3883 = !DILocation(line: 992, column: 12, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3864, file: !102, line: 991, column: 16)
!3885 = !DILocation(line: 992, column: 16, scope: !3884)
!3886 = !DILocation(line: 994, column: 9, scope: !3865)
!3887 = !DILocation(line: 996, column: 9, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3861, file: !102, line: 995, column: 14)
!3889 = !DILocation(line: 996, column: 15, scope: !3888)
!3890 = !DILocation(line: 997, column: 9, scope: !3888)
!3891 = !DILocation(line: 1001, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3678, file: !102, line: 1000, column: 20)
!3893 = !DILocation(line: 1002, column: 7, scope: !3892)
!3894 = !DILocation(line: 1002, column: 13, scope: !3892)
!3895 = !DILocation(line: 1003, column: 7, scope: !3892)
!3896 = !DILocation(line: 1006, column: 7, scope: !3678)
!3897 = !DILocation(line: 1007, column: 7, scope: !3678)
!3898 = !DILocation(line: 1007, column: 13, scope: !3678)
!3899 = !DILocation(line: 1008, column: 7, scope: !3678)
!3900 = !DILocation(line: 1011, column: 30, scope: !3627)
!3901 = !DILocation(line: 1011, column: 33, scope: !3627)
!3902 = !DILocation(line: 1011, column: 37, scope: !3627)
!3903 = !DILocation(line: 1011, column: 46, scope: !3627)
!3904 = !DILocation(line: 1011, column: 10, scope: !3627)
!3905 = !DILocation(line: 1011, column: 3, scope: !3627)
!3906 = !DILocation(line: 1012, column: 1, scope: !3627)
!3907 = distinct !DISubprogram(name: "fcntl", scope: !102, file: !102, line: 1014, type: !3908, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!44, !44, !44, null}
!3910 = !DILocalVariable(name: "fd", arg: 1, scope: !3907, file: !102, line: 1014, type: !44)
!3911 = !DILocation(line: 1014, column: 15, scope: !3907)
!3912 = !DILocalVariable(name: "cmd", arg: 2, scope: !3907, file: !102, line: 1014, type: !44)
!3913 = !DILocation(line: 1014, column: 23, scope: !3907)
!3914 = !DILocalVariable(name: "f", scope: !3907, file: !102, line: 1015, type: !1979)
!3915 = !DILocation(line: 1015, column: 15, scope: !3907)
!3916 = !DILocation(line: 1015, column: 30, scope: !3907)
!3917 = !DILocation(line: 1015, column: 19, scope: !3907)
!3918 = !DILocalVariable(name: "ap", scope: !3907, file: !102, line: 1016, type: !3639)
!3919 = !DILocation(line: 1016, column: 11, scope: !3907)
!3920 = !DILocalVariable(name: "arg", scope: !3907, file: !102, line: 1017, type: !14)
!3921 = !DILocation(line: 1017, column: 12, scope: !3907)
!3922 = !DILocalVariable(name: "lock", scope: !3907, file: !102, line: 1018, type: !3923)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !3925, line: 35, size: 256, elements: !3926)
!3925 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "")
!3926 = !{!3927, !3929, !3930, !3931, !3932}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !3924, file: !3925, line: 37, baseType: !3928, size: 16)
!3928 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !3924, file: !3925, line: 38, baseType: !3928, size: 16, offset: 16)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !3924, file: !3925, line: 40, baseType: !47, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !3924, file: !3925, line: 41, baseType: !47, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !3924, file: !3925, line: 46, baseType: !3933, size: 32, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !31, line: 154, baseType: !44)
!3934 = !DILocation(line: 1018, column: 17, scope: !3907)
!3935 = !DILocation(line: 1020, column: 8, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3907, file: !102, line: 1020, column: 7)
!3937 = !DILocation(line: 1020, column: 7, scope: !3907)
!3938 = !DILocation(line: 1021, column: 5, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !102, line: 1020, column: 11)
!3940 = !DILocation(line: 1021, column: 11, scope: !3939)
!3941 = !DILocation(line: 1022, column: 5, scope: !3939)
!3942 = !DILocation(line: 1025, column: 7, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3907, file: !102, line: 1025, column: 7)
!3944 = !DILocation(line: 1025, column: 10, scope: !3943)
!3945 = !DILocation(line: 1025, column: 20, scope: !3943)
!3946 = !DILocation(line: 1030, column: 9, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !102, line: 1026, column: 41)
!3948 = !DILocation(line: 1031, column: 3, scope: !3947)
!3949 = !DILocation(line: 1031, column: 14, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3943, file: !102, line: 1031, column: 14)
!3951 = !DILocation(line: 1031, column: 18, scope: !3950)
!3952 = !DILocation(line: 1031, column: 29, scope: !3950)
!3953 = !DILocation(line: 1032, column: 5, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3950, file: !102, line: 1031, column: 67)
!3955 = !DILocation(line: 1033, column: 12, scope: !3954)
!3956 = !DILocation(line: 1033, column: 10, scope: !3954)
!3957 = !DILocation(line: 1034, column: 5, scope: !3954)
!3958 = !DILocation(line: 1035, column: 3, scope: !3954)
!3959 = !DILocation(line: 1036, column: 5, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3950, file: !102, line: 1035, column: 10)
!3961 = !DILocation(line: 1037, column: 11, scope: !3960)
!3962 = !DILocation(line: 1037, column: 9, scope: !3960)
!3963 = !DILocation(line: 1038, column: 5, scope: !3960)
!3964 = !DILocation(line: 1041, column: 7, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3907, file: !102, line: 1041, column: 7)
!3966 = !DILocation(line: 1041, column: 10, scope: !3965)
!3967 = !DILocation(line: 1041, column: 7, scope: !3907)
!3968 = !DILocation(line: 1042, column: 12, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3965, file: !102, line: 1041, column: 17)
!3970 = !DILocation(line: 1042, column: 5, scope: !3969)
!3971 = !DILocalVariable(name: "flags", scope: !3972, file: !102, line: 1044, type: !44)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !102, line: 1043, column: 19)
!3973 = distinct !DILexicalBlock(scope: !3969, file: !102, line: 1042, column: 17)
!3974 = !DILocation(line: 1044, column: 11, scope: !3972)
!3975 = !DILocation(line: 1045, column: 11, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !102, line: 1045, column: 11)
!3977 = !DILocation(line: 1045, column: 14, scope: !3976)
!3978 = !DILocation(line: 1045, column: 20, scope: !3976)
!3979 = !DILocation(line: 1045, column: 11, scope: !3972)
!3980 = !DILocation(line: 1046, column: 15, scope: !3976)
!3981 = !DILocation(line: 1046, column: 9, scope: !3976)
!3982 = !DILocation(line: 1047, column: 14, scope: !3972)
!3983 = !DILocation(line: 1047, column: 7, scope: !3972)
!3984 = !DILocation(line: 1050, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3973, file: !102, line: 1049, column: 19)
!3986 = !DILocation(line: 1050, column: 10, scope: !3985)
!3987 = !DILocation(line: 1050, column: 16, scope: !3985)
!3988 = !DILocation(line: 1051, column: 11, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3985, file: !102, line: 1051, column: 11)
!3990 = !DILocation(line: 1051, column: 15, scope: !3989)
!3991 = !DILocation(line: 1051, column: 11, scope: !3985)
!3992 = !DILocation(line: 1052, column: 9, scope: !3989)
!3993 = !DILocation(line: 1052, column: 12, scope: !3989)
!3994 = !DILocation(line: 1052, column: 18, scope: !3989)
!3995 = !DILocation(line: 1053, column: 7, scope: !3985)
!3996 = !DILocation(line: 1062, column: 7, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3973, file: !102, line: 1055, column: 19)
!3998 = !DILocation(line: 1069, column: 7, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3973, file: !102, line: 1068, column: 19)
!4000 = !DILocation(line: 1069, column: 13, scope: !3999)
!4001 = !DILocation(line: 1069, column: 20, scope: !3999)
!4002 = !DILocation(line: 1070, column: 7, scope: !3999)
!4003 = !DILocation(line: 1076, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3973, file: !102, line: 1075, column: 19)
!4005 = !DILocation(line: 1079, column: 7, scope: !3973)
!4006 = !DILocation(line: 1080, column: 7, scope: !3973)
!4007 = !DILocation(line: 1080, column: 13, scope: !3973)
!4008 = !DILocation(line: 1081, column: 7, scope: !3973)
!4009 = !DILocation(line: 1084, column: 30, scope: !3907)
!4010 = !DILocation(line: 1084, column: 33, scope: !3907)
!4011 = !DILocation(line: 1084, column: 37, scope: !3907)
!4012 = !DILocation(line: 1084, column: 42, scope: !3907)
!4013 = !DILocation(line: 1084, column: 10, scope: !3907)
!4014 = !DILocation(line: 1084, column: 3, scope: !3907)
!4015 = !DILocation(line: 1085, column: 1, scope: !3907)
!4016 = distinct !DISubprogram(name: "__fd_statfs", scope: !102, file: !102, line: 1087, type: !4017, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!44, !188, !4019}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !1514, line: 24, size: 960, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4026, !4027, !4028, !4030, !4031, !4036, !4037, !4038, !4039}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !4020, file: !1514, line: 26, baseType: !1517, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !4020, file: !1514, line: 27, baseType: !1517, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !4020, file: !1514, line: 29, baseType: !4025, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt_t", file: !31, line: 184, baseType: !32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !4020, file: !1514, line: 30, baseType: !4025, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !4020, file: !1514, line: 31, baseType: !4025, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !4020, file: !1514, line: 32, baseType: !4029, size: 64, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt_t", file: !31, line: 188, baseType: !32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !4020, file: !1514, line: 33, baseType: !4029, size: 64, offset: 384)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !4020, file: !1514, line: 41, baseType: !4032, size: 64, offset: 448)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !31, line: 155, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 155, size: 64, elements: !4034)
!4034 = !{!4035}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !4033, file: !31, line: 155, baseType: !1531, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !4020, file: !1514, line: 42, baseType: !1517, size: 64, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !4020, file: !1514, line: 43, baseType: !1517, size: 64, offset: 576)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !4020, file: !1514, line: 44, baseType: !1517, size: 64, offset: 640)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !4020, file: !1514, line: 45, baseType: !1538, size: 256, offset: 704)
!4040 = !DILocalVariable(name: "path", arg: 1, scope: !4016, file: !102, line: 1087, type: !188)
!4041 = !DILocation(line: 1087, column: 29, scope: !4016)
!4042 = !DILocalVariable(name: "buf", arg: 2, scope: !4016, file: !102, line: 1087, type: !4019)
!4043 = !DILocation(line: 1087, column: 50, scope: !4016)
!4044 = !DILocalVariable(name: "dfile", scope: !4016, file: !102, line: 1088, type: !1637)
!4045 = !DILocation(line: 1088, column: 20, scope: !4016)
!4046 = !DILocation(line: 1088, column: 43, scope: !4016)
!4047 = !DILocation(line: 1088, column: 28, scope: !4016)
!4048 = !DILocation(line: 1089, column: 7, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4016, file: !102, line: 1089, column: 7)
!4050 = !DILocation(line: 1089, column: 7, scope: !4016)
!4051 = !DILocation(line: 1091, column: 5, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !102, line: 1089, column: 14)
!4053 = !DILocation(line: 1092, column: 5, scope: !4052)
!4054 = !DILocation(line: 1092, column: 11, scope: !4052)
!4055 = !DILocation(line: 1093, column: 5, scope: !4052)
!4056 = !DILocation(line: 1096, column: 51, scope: !4016)
!4057 = !DILocation(line: 1096, column: 31, scope: !4016)
!4058 = !DILocation(line: 1096, column: 58, scope: !4016)
!4059 = !DILocation(line: 1096, column: 10, scope: !4016)
!4060 = !DILocation(line: 1096, column: 3, scope: !4016)
!4061 = !DILocation(line: 1097, column: 1, scope: !4016)
!4062 = distinct !DISubprogram(name: "fstatfs", scope: !102, file: !102, line: 1099, type: !4063, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!44, !44, !4019}
!4065 = !DILocalVariable(name: "fd", arg: 1, scope: !4062, file: !102, line: 1099, type: !44)
!4066 = !DILocation(line: 1099, column: 17, scope: !4062)
!4067 = !DILocalVariable(name: "buf", arg: 2, scope: !4062, file: !102, line: 1099, type: !4019)
!4068 = !DILocation(line: 1099, column: 36, scope: !4062)
!4069 = !DILocalVariable(name: "f", scope: !4062, file: !102, line: 1100, type: !1979)
!4070 = !DILocation(line: 1100, column: 15, scope: !4062)
!4071 = !DILocation(line: 1100, column: 30, scope: !4062)
!4072 = !DILocation(line: 1100, column: 19, scope: !4062)
!4073 = !DILocation(line: 1102, column: 8, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4062, file: !102, line: 1102, column: 7)
!4075 = !DILocation(line: 1102, column: 7, scope: !4062)
!4076 = !DILocation(line: 1103, column: 5, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4074, file: !102, line: 1102, column: 11)
!4078 = !DILocation(line: 1103, column: 11, scope: !4077)
!4079 = !DILocation(line: 1104, column: 5, scope: !4077)
!4080 = !DILocation(line: 1107, column: 7, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4062, file: !102, line: 1107, column: 7)
!4082 = !DILocation(line: 1107, column: 10, scope: !4081)
!4083 = !DILocation(line: 1107, column: 7, scope: !4062)
!4084 = !DILocation(line: 1108, column: 5, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4081, file: !102, line: 1107, column: 17)
!4086 = !DILocation(line: 1109, column: 5, scope: !4085)
!4087 = !DILocation(line: 1109, column: 11, scope: !4085)
!4088 = !DILocation(line: 1110, column: 5, scope: !4085)
!4089 = !DILocation(line: 1112, column: 32, scope: !4062)
!4090 = !DILocation(line: 1112, column: 35, scope: !4062)
!4091 = !DILocation(line: 1112, column: 39, scope: !4062)
!4092 = !DILocation(line: 1112, column: 10, scope: !4062)
!4093 = !DILocation(line: 1112, column: 3, scope: !4062)
!4094 = !DILocation(line: 1113, column: 1, scope: !4062)
!4095 = distinct !DISubprogram(name: "fsync", scope: !102, file: !102, line: 1115, type: !103, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4096 = !DILocalVariable(name: "fd", arg: 1, scope: !4095, file: !102, line: 1115, type: !44)
!4097 = !DILocation(line: 1115, column: 15, scope: !4095)
!4098 = !DILocalVariable(name: "f", scope: !4095, file: !102, line: 1116, type: !1979)
!4099 = !DILocation(line: 1116, column: 15, scope: !4095)
!4100 = !DILocation(line: 1116, column: 30, scope: !4095)
!4101 = !DILocation(line: 1116, column: 19, scope: !4095)
!4102 = !DILocation(line: 1118, column: 8, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4095, file: !102, line: 1118, column: 7)
!4104 = !DILocation(line: 1118, column: 7, scope: !4095)
!4105 = !DILocation(line: 1119, column: 5, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4103, file: !102, line: 1118, column: 11)
!4107 = !DILocation(line: 1119, column: 11, scope: !4106)
!4108 = !DILocation(line: 1120, column: 5, scope: !4106)
!4109 = !DILocation(line: 1121, column: 14, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4103, file: !102, line: 1121, column: 14)
!4111 = !DILocation(line: 1121, column: 17, scope: !4110)
!4112 = !DILocation(line: 1121, column: 14, scope: !4103)
!4113 = !DILocation(line: 1122, column: 5, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !102, line: 1121, column: 24)
!4115 = !DILocation(line: 1124, column: 30, scope: !4095)
!4116 = !DILocation(line: 1124, column: 33, scope: !4095)
!4117 = !DILocation(line: 1124, column: 10, scope: !4095)
!4118 = !DILocation(line: 1124, column: 3, scope: !4095)
!4119 = !DILocation(line: 1125, column: 1, scope: !4095)
!4120 = distinct !DISubprogram(name: "dup2", scope: !102, file: !102, line: 1127, type: !4121, scopeLine: 1127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!44, !44, !44}
!4123 = !DILocalVariable(name: "oldfd", arg: 1, scope: !4120, file: !102, line: 1127, type: !44)
!4124 = !DILocation(line: 1127, column: 14, scope: !4120)
!4125 = !DILocalVariable(name: "newfd", arg: 2, scope: !4120, file: !102, line: 1127, type: !44)
!4126 = !DILocation(line: 1127, column: 25, scope: !4120)
!4127 = !DILocalVariable(name: "f", scope: !4120, file: !102, line: 1128, type: !1979)
!4128 = !DILocation(line: 1128, column: 15, scope: !4120)
!4129 = !DILocation(line: 1128, column: 30, scope: !4120)
!4130 = !DILocation(line: 1128, column: 19, scope: !4120)
!4131 = !DILocation(line: 1130, column: 8, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4120, file: !102, line: 1130, column: 7)
!4133 = !DILocation(line: 1130, column: 10, scope: !4132)
!4134 = !DILocation(line: 1131, column: 5, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !102, line: 1130, column: 43)
!4136 = !DILocation(line: 1131, column: 11, scope: !4135)
!4137 = !DILocation(line: 1132, column: 5, scope: !4135)
!4138 = !DILocalVariable(name: "f2", scope: !4139, file: !102, line: 1134, type: !1979)
!4139 = distinct !DILexicalBlock(scope: !4132, file: !102, line: 1133, column: 10)
!4140 = !DILocation(line: 1134, column: 17, scope: !4139)
!4141 = !DILocation(line: 1134, column: 37, scope: !4139)
!4142 = !DILocation(line: 1134, column: 23, scope: !4139)
!4143 = !DILocation(line: 1135, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4139, file: !102, line: 1135, column: 9)
!4145 = !DILocation(line: 1135, column: 13, scope: !4144)
!4146 = !DILocation(line: 1135, column: 19, scope: !4144)
!4147 = !DILocation(line: 1135, column: 9, scope: !4139)
!4148 = !DILocation(line: 1135, column: 34, scope: !4144)
!4149 = !DILocation(line: 1135, column: 28, scope: !4144)
!4150 = !DILocation(line: 1139, column: 6, scope: !4139)
!4151 = !DILocation(line: 1139, column: 12, scope: !4139)
!4152 = !DILocation(line: 1139, column: 11, scope: !4139)
!4153 = !DILocation(line: 1141, column: 5, scope: !4139)
!4154 = !DILocation(line: 1141, column: 9, scope: !4139)
!4155 = !DILocation(line: 1141, column: 15, scope: !4139)
!4156 = !DILocation(line: 1148, column: 12, scope: !4139)
!4157 = !DILocation(line: 1148, column: 5, scope: !4139)
!4158 = !DILocation(line: 1150, column: 1, scope: !4120)
!4159 = distinct !DISubprogram(name: "dup", scope: !102, file: !102, line: 1152, type: !103, scopeLine: 1152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4160 = !DILocalVariable(name: "oldfd", arg: 1, scope: !4159, file: !102, line: 1152, type: !44)
!4161 = !DILocation(line: 1152, column: 13, scope: !4159)
!4162 = !DILocalVariable(name: "f", scope: !4159, file: !102, line: 1153, type: !1979)
!4163 = !DILocation(line: 1153, column: 15, scope: !4159)
!4164 = !DILocation(line: 1153, column: 30, scope: !4159)
!4165 = !DILocation(line: 1153, column: 19, scope: !4159)
!4166 = !DILocation(line: 1154, column: 8, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4159, file: !102, line: 1154, column: 7)
!4168 = !DILocation(line: 1154, column: 7, scope: !4159)
!4169 = !DILocation(line: 1155, column: 5, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4167, file: !102, line: 1154, column: 11)
!4171 = !DILocation(line: 1155, column: 11, scope: !4170)
!4172 = !DILocation(line: 1156, column: 5, scope: !4170)
!4173 = !DILocalVariable(name: "fd", scope: !4174, file: !102, line: 1158, type: !44)
!4174 = distinct !DILexicalBlock(scope: !4167, file: !102, line: 1157, column: 10)
!4175 = !DILocation(line: 1158, column: 9, scope: !4174)
!4176 = !DILocation(line: 1159, column: 13, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !102, line: 1159, column: 5)
!4178 = !DILocation(line: 1159, column: 10, scope: !4177)
!4179 = !DILocation(line: 1159, column: 18, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !102, line: 1159, column: 5)
!4181 = !DILocation(line: 1159, column: 21, scope: !4180)
!4182 = !DILocation(line: 1159, column: 5, scope: !4177)
!4183 = !DILocation(line: 1160, column: 27, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4180, file: !102, line: 1160, column: 11)
!4185 = !DILocation(line: 1160, column: 13, scope: !4184)
!4186 = !DILocation(line: 1160, column: 31, scope: !4184)
!4187 = !DILocation(line: 1160, column: 37, scope: !4184)
!4188 = !DILocation(line: 1160, column: 11, scope: !4180)
!4189 = !DILocation(line: 1159, column: 32, scope: !4180)
!4190 = !DILocation(line: 1159, column: 5, scope: !4180)
!4191 = distinct !{!4191, !4182, !4192}
!4192 = !DILocation(line: 1161, column: 9, scope: !4177)
!4193 = !DILocation(line: 1162, column: 9, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4174, file: !102, line: 1162, column: 9)
!4195 = !DILocation(line: 1162, column: 12, scope: !4194)
!4196 = !DILocation(line: 1162, column: 9, scope: !4174)
!4197 = !DILocation(line: 1163, column: 7, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4194, file: !102, line: 1162, column: 24)
!4199 = !DILocation(line: 1163, column: 13, scope: !4198)
!4200 = !DILocation(line: 1164, column: 7, scope: !4198)
!4201 = !DILocation(line: 1166, column: 19, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4194, file: !102, line: 1165, column: 12)
!4203 = !DILocation(line: 1166, column: 26, scope: !4202)
!4204 = !DILocation(line: 1166, column: 14, scope: !4202)
!4205 = !DILocation(line: 1166, column: 7, scope: !4202)
!4206 = !DILocation(line: 1169, column: 1, scope: !4159)
!4207 = distinct !DISubprogram(name: "rmdir", scope: !102, file: !102, line: 1171, type: !3057, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4208 = !DILocalVariable(name: "pathname", arg: 1, scope: !4207, file: !102, line: 1171, type: !188)
!4209 = !DILocation(line: 1171, column: 23, scope: !4207)
!4210 = !DILocalVariable(name: "dfile", scope: !4207, file: !102, line: 1172, type: !1637)
!4211 = !DILocation(line: 1172, column: 20, scope: !4207)
!4212 = !DILocation(line: 1172, column: 43, scope: !4207)
!4213 = !DILocation(line: 1172, column: 28, scope: !4207)
!4214 = !DILocation(line: 1173, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4207, file: !102, line: 1173, column: 7)
!4216 = !DILocation(line: 1173, column: 7, scope: !4207)
!4217 = !DILocation(line: 1175, column: 9, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !102, line: 1175, column: 9)
!4219 = distinct !DILexicalBlock(scope: !4215, file: !102, line: 1173, column: 14)
!4220 = !DILocation(line: 1175, column: 9, scope: !4219)
!4221 = !DILocation(line: 1176, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4218, file: !102, line: 1175, column: 40)
!4223 = !DILocation(line: 1176, column: 14, scope: !4222)
!4224 = !DILocation(line: 1176, column: 20, scope: !4222)
!4225 = !DILocation(line: 1176, column: 27, scope: !4222)
!4226 = !DILocation(line: 1177, column: 7, scope: !4222)
!4227 = !DILocation(line: 1179, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4218, file: !102, line: 1178, column: 12)
!4229 = !DILocation(line: 1179, column: 13, scope: !4228)
!4230 = !DILocation(line: 1180, column: 7, scope: !4228)
!4231 = !DILocation(line: 1184, column: 3, scope: !4207)
!4232 = !DILocation(line: 1185, column: 3, scope: !4207)
!4233 = !DILocation(line: 1185, column: 9, scope: !4207)
!4234 = !DILocation(line: 1186, column: 3, scope: !4207)
!4235 = !DILocation(line: 1187, column: 1, scope: !4207)
!4236 = distinct !DISubprogram(name: "unlink", scope: !102, file: !102, line: 1189, type: !3057, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4237 = !DILocalVariable(name: "pathname", arg: 1, scope: !4236, file: !102, line: 1189, type: !188)
!4238 = !DILocation(line: 1189, column: 24, scope: !4236)
!4239 = !DILocalVariable(name: "dfile", scope: !4236, file: !102, line: 1190, type: !1637)
!4240 = !DILocation(line: 1190, column: 20, scope: !4236)
!4241 = !DILocation(line: 1190, column: 43, scope: !4236)
!4242 = !DILocation(line: 1190, column: 28, scope: !4236)
!4243 = !DILocation(line: 1191, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4236, file: !102, line: 1191, column: 7)
!4245 = !DILocation(line: 1191, column: 7, scope: !4236)
!4246 = !DILocation(line: 1193, column: 9, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !102, line: 1193, column: 9)
!4248 = distinct !DILexicalBlock(scope: !4244, file: !102, line: 1191, column: 14)
!4249 = !DILocation(line: 1193, column: 9, scope: !4248)
!4250 = !DILocation(line: 1194, column: 7, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !102, line: 1193, column: 40)
!4252 = !DILocation(line: 1194, column: 14, scope: !4251)
!4253 = !DILocation(line: 1194, column: 20, scope: !4251)
!4254 = !DILocation(line: 1194, column: 27, scope: !4251)
!4255 = !DILocation(line: 1195, column: 7, scope: !4251)
!4256 = !DILocation(line: 1196, column: 16, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4247, file: !102, line: 1196, column: 16)
!4258 = !DILocation(line: 1196, column: 16, scope: !4247)
!4259 = !DILocation(line: 1197, column: 7, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4257, file: !102, line: 1196, column: 47)
!4261 = !DILocation(line: 1197, column: 13, scope: !4260)
!4262 = !DILocation(line: 1198, column: 7, scope: !4260)
!4263 = !DILocation(line: 1200, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4257, file: !102, line: 1199, column: 12)
!4265 = !DILocation(line: 1200, column: 13, scope: !4264)
!4266 = !DILocation(line: 1201, column: 7, scope: !4264)
!4267 = !DILocation(line: 1205, column: 3, scope: !4236)
!4268 = !DILocation(line: 1206, column: 3, scope: !4236)
!4269 = !DILocation(line: 1206, column: 9, scope: !4236)
!4270 = !DILocation(line: 1207, column: 3, scope: !4236)
!4271 = !DILocation(line: 1208, column: 1, scope: !4236)
!4272 = distinct !DISubprogram(name: "unlinkat", scope: !102, file: !102, line: 1210, type: !4273, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!44, !44, !188, !44}
!4275 = !DILocalVariable(name: "dirfd", arg: 1, scope: !4272, file: !102, line: 1210, type: !44)
!4276 = !DILocation(line: 1210, column: 18, scope: !4272)
!4277 = !DILocalVariable(name: "pathname", arg: 2, scope: !4272, file: !102, line: 1210, type: !188)
!4278 = !DILocation(line: 1210, column: 37, scope: !4272)
!4279 = !DILocalVariable(name: "flags", arg: 3, scope: !4272, file: !102, line: 1210, type: !44)
!4280 = !DILocation(line: 1210, column: 51, scope: !4272)
!4281 = !DILocalVariable(name: "dfile", scope: !4272, file: !102, line: 1213, type: !1637)
!4282 = !DILocation(line: 1213, column: 20, scope: !4272)
!4283 = !DILocation(line: 1213, column: 43, scope: !4272)
!4284 = !DILocation(line: 1213, column: 28, scope: !4272)
!4285 = !DILocation(line: 1214, column: 7, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4272, file: !102, line: 1214, column: 7)
!4287 = !DILocation(line: 1214, column: 7, scope: !4272)
!4288 = !DILocation(line: 1216, column: 9, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !102, line: 1216, column: 9)
!4290 = distinct !DILexicalBlock(scope: !4286, file: !102, line: 1214, column: 14)
!4291 = !DILocation(line: 1216, column: 9, scope: !4290)
!4292 = !DILocation(line: 1217, column: 7, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !102, line: 1216, column: 40)
!4294 = !DILocation(line: 1217, column: 14, scope: !4293)
!4295 = !DILocation(line: 1217, column: 20, scope: !4293)
!4296 = !DILocation(line: 1217, column: 27, scope: !4293)
!4297 = !DILocation(line: 1218, column: 7, scope: !4293)
!4298 = !DILocation(line: 1219, column: 16, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4289, file: !102, line: 1219, column: 16)
!4300 = !DILocation(line: 1219, column: 16, scope: !4289)
!4301 = !DILocation(line: 1220, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4299, file: !102, line: 1219, column: 47)
!4303 = !DILocation(line: 1220, column: 13, scope: !4302)
!4304 = !DILocation(line: 1221, column: 7, scope: !4302)
!4305 = !DILocation(line: 1223, column: 7, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4299, file: !102, line: 1222, column: 12)
!4307 = !DILocation(line: 1223, column: 13, scope: !4306)
!4308 = !DILocation(line: 1224, column: 7, scope: !4306)
!4309 = !DILocation(line: 1228, column: 3, scope: !4272)
!4310 = !DILocation(line: 1229, column: 3, scope: !4272)
!4311 = !DILocation(line: 1229, column: 9, scope: !4272)
!4312 = !DILocation(line: 1230, column: 3, scope: !4272)
!4313 = !DILocation(line: 1231, column: 1, scope: !4272)
!4314 = distinct !DISubprogram(name: "readlink", scope: !102, file: !102, line: 1233, type: !4315, scopeLine: 1233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!172, !188, !22, !174}
!4317 = !DILocalVariable(name: "path", arg: 1, scope: !4314, file: !102, line: 1233, type: !188)
!4318 = !DILocation(line: 1233, column: 30, scope: !4314)
!4319 = !DILocalVariable(name: "buf", arg: 2, scope: !4314, file: !102, line: 1233, type: !22)
!4320 = !DILocation(line: 1233, column: 42, scope: !4314)
!4321 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4314, file: !102, line: 1233, type: !174)
!4322 = !DILocation(line: 1233, column: 54, scope: !4314)
!4323 = !DILocalVariable(name: "dfile", scope: !4314, file: !102, line: 1234, type: !1637)
!4324 = !DILocation(line: 1234, column: 20, scope: !4314)
!4325 = !DILocation(line: 1234, column: 43, scope: !4314)
!4326 = !DILocation(line: 1234, column: 28, scope: !4314)
!4327 = !DILocation(line: 1235, column: 7, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4314, file: !102, line: 1235, column: 7)
!4329 = !DILocation(line: 1235, column: 7, scope: !4314)
!4330 = !DILocation(line: 1238, column: 9, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !102, line: 1238, column: 9)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !102, line: 1235, column: 14)
!4333 = !DILocation(line: 1238, column: 9, scope: !4332)
!4334 = !DILocation(line: 1239, column: 16, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4331, file: !102, line: 1238, column: 40)
!4336 = !DILocation(line: 1239, column: 7, scope: !4335)
!4337 = !DILocation(line: 1239, column: 14, scope: !4335)
!4338 = !DILocation(line: 1240, column: 11, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !102, line: 1240, column: 11)
!4340 = !DILocation(line: 1240, column: 18, scope: !4339)
!4341 = !DILocation(line: 1240, column: 11, scope: !4335)
!4342 = !DILocation(line: 1240, column: 22, scope: !4339)
!4343 = !DILocation(line: 1240, column: 29, scope: !4339)
!4344 = !DILocation(line: 1241, column: 11, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4335, file: !102, line: 1241, column: 11)
!4346 = !DILocation(line: 1241, column: 18, scope: !4345)
!4347 = !DILocation(line: 1241, column: 11, scope: !4335)
!4348 = !DILocation(line: 1241, column: 22, scope: !4345)
!4349 = !DILocation(line: 1241, column: 29, scope: !4345)
!4350 = !DILocation(line: 1242, column: 11, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4335, file: !102, line: 1242, column: 11)
!4352 = !DILocation(line: 1242, column: 18, scope: !4351)
!4353 = !DILocation(line: 1242, column: 11, scope: !4335)
!4354 = !DILocation(line: 1242, column: 22, scope: !4351)
!4355 = !DILocation(line: 1242, column: 29, scope: !4351)
!4356 = !DILocation(line: 1243, column: 11, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4335, file: !102, line: 1243, column: 11)
!4358 = !DILocation(line: 1243, column: 18, scope: !4357)
!4359 = !DILocation(line: 1243, column: 11, scope: !4335)
!4360 = !DILocation(line: 1243, column: 22, scope: !4357)
!4361 = !DILocation(line: 1243, column: 29, scope: !4357)
!4362 = !DILocation(line: 1244, column: 15, scope: !4335)
!4363 = !DILocation(line: 1244, column: 22, scope: !4335)
!4364 = !DILocation(line: 1244, column: 14, scope: !4335)
!4365 = !DILocation(line: 1244, column: 7, scope: !4335)
!4366 = !DILocation(line: 1246, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4331, file: !102, line: 1245, column: 12)
!4368 = !DILocation(line: 1246, column: 13, scope: !4367)
!4369 = !DILocation(line: 1247, column: 7, scope: !4367)
!4370 = !DILocation(line: 1250, column: 33, scope: !4314)
!4371 = !DILocation(line: 1250, column: 39, scope: !4314)
!4372 = !DILocation(line: 1250, column: 44, scope: !4314)
!4373 = !DILocation(line: 1250, column: 10, scope: !4314)
!4374 = !DILocation(line: 1250, column: 3, scope: !4314)
!4375 = !DILocation(line: 1251, column: 1, scope: !4314)
!4376 = distinct !DISubprogram(name: "select", scope: !102, file: !102, line: 1261, type: !4377, scopeLine: 1262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!44, !44, !4379, !4379, !4379, !4387}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !4381, line: 70, baseType: !4382)
!4381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "")
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4381, line: 59, size: 1024, elements: !4383)
!4383 = !{!4384}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !4382, file: !4381, line: 64, baseType: !4385, size: 1024)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4386, size: 1024, elements: !885)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !4381, line: 49, baseType: !48)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!4388 = !DILocalVariable(name: "nfds", arg: 1, scope: !4376, file: !102, line: 1261, type: !44)
!4389 = !DILocation(line: 1261, column: 16, scope: !4376)
!4390 = !DILocalVariable(name: "read", arg: 2, scope: !4376, file: !102, line: 1261, type: !4379)
!4391 = !DILocation(line: 1261, column: 30, scope: !4376)
!4392 = !DILocalVariable(name: "write", arg: 3, scope: !4376, file: !102, line: 1261, type: !4379)
!4393 = !DILocation(line: 1261, column: 44, scope: !4376)
!4394 = !DILocalVariable(name: "except", arg: 4, scope: !4376, file: !102, line: 1262, type: !4379)
!4395 = !DILocation(line: 1262, column: 20, scope: !4376)
!4396 = !DILocalVariable(name: "timeout", arg: 5, scope: !4376, file: !102, line: 1262, type: !4387)
!4397 = !DILocation(line: 1262, column: 44, scope: !4376)
!4398 = !DILocalVariable(name: "in_read", scope: !4376, file: !102, line: 1263, type: !4380)
!4399 = !DILocation(line: 1263, column: 10, scope: !4376)
!4400 = !DILocalVariable(name: "in_write", scope: !4376, file: !102, line: 1263, type: !4380)
!4401 = !DILocation(line: 1263, column: 19, scope: !4376)
!4402 = !DILocalVariable(name: "in_except", scope: !4376, file: !102, line: 1263, type: !4380)
!4403 = !DILocation(line: 1263, column: 29, scope: !4376)
!4404 = !DILocalVariable(name: "os_read", scope: !4376, file: !102, line: 1263, type: !4380)
!4405 = !DILocation(line: 1263, column: 40, scope: !4376)
!4406 = !DILocalVariable(name: "os_write", scope: !4376, file: !102, line: 1263, type: !4380)
!4407 = !DILocation(line: 1263, column: 49, scope: !4376)
!4408 = !DILocalVariable(name: "os_except", scope: !4376, file: !102, line: 1263, type: !4380)
!4409 = !DILocation(line: 1263, column: 59, scope: !4376)
!4410 = !DILocalVariable(name: "i", scope: !4376, file: !102, line: 1264, type: !44)
!4411 = !DILocation(line: 1264, column: 7, scope: !4376)
!4412 = !DILocalVariable(name: "count", scope: !4376, file: !102, line: 1264, type: !44)
!4413 = !DILocation(line: 1264, column: 10, scope: !4376)
!4414 = !DILocalVariable(name: "os_nfds", scope: !4376, file: !102, line: 1264, type: !44)
!4415 = !DILocation(line: 1264, column: 21, scope: !4376)
!4416 = !DILocation(line: 1266, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4376, file: !102, line: 1266, column: 7)
!4418 = !DILocation(line: 1266, column: 7, scope: !4376)
!4419 = !DILocation(line: 1267, column: 16, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4417, file: !102, line: 1266, column: 13)
!4421 = !DILocation(line: 1267, column: 15, scope: !4420)
!4422 = !DILocation(line: 1268, column: 5, scope: !4420)
!4423 = !DILocation(line: 1269, column: 3, scope: !4420)
!4424 = !DILocation(line: 1270, column: 5, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4417, file: !102, line: 1269, column: 10)
!4426 = !DILocation(line: 1273, column: 7, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4376, file: !102, line: 1273, column: 7)
!4428 = !DILocation(line: 1273, column: 7, scope: !4376)
!4429 = !DILocation(line: 1274, column: 17, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !102, line: 1273, column: 14)
!4431 = !DILocation(line: 1274, column: 16, scope: !4430)
!4432 = !DILocation(line: 1275, column: 5, scope: !4430)
!4433 = !DILocation(line: 1276, column: 3, scope: !4430)
!4434 = !DILocation(line: 1277, column: 5, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4427, file: !102, line: 1276, column: 10)
!4436 = !DILocation(line: 1280, column: 7, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4376, file: !102, line: 1280, column: 7)
!4438 = !DILocation(line: 1280, column: 7, scope: !4376)
!4439 = !DILocation(line: 1281, column: 18, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !102, line: 1280, column: 15)
!4441 = !DILocation(line: 1281, column: 17, scope: !4440)
!4442 = !DILocation(line: 1282, column: 5, scope: !4440)
!4443 = !DILocation(line: 1283, column: 3, scope: !4440)
!4444 = !DILocation(line: 1284, column: 5, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4437, file: !102, line: 1283, column: 10)
!4446 = !DILocation(line: 1287, column: 3, scope: !4376)
!4447 = !DILocation(line: 1288, column: 3, scope: !4376)
!4448 = !DILocation(line: 1289, column: 3, scope: !4376)
!4449 = !DILocation(line: 1292, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4376, file: !102, line: 1292, column: 3)
!4451 = !DILocation(line: 1292, column: 8, scope: !4450)
!4452 = !DILocation(line: 1292, column: 13, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4450, file: !102, line: 1292, column: 3)
!4454 = !DILocation(line: 1292, column: 15, scope: !4453)
!4455 = !DILocation(line: 1292, column: 14, scope: !4453)
!4456 = !DILocation(line: 1292, column: 3, scope: !4450)
!4457 = !DILocation(line: 1293, column: 9, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !102, line: 1293, column: 9)
!4459 = distinct !DILexicalBlock(scope: !4453, file: !102, line: 1292, column: 26)
!4460 = !{!"True"}
!4461 = !DILocation(line: 1293, column: 31, scope: !4458)
!4462 = !DILocation(line: 1293, column: 34, scope: !4458)
!4463 = !DILocation(line: 1293, column: 57, scope: !4458)
!4464 = !DILocation(line: 1293, column: 60, scope: !4458)
!4465 = !DILocation(line: 1293, column: 9, scope: !4459)
!4466 = !DILocalVariable(name: "f", scope: !4467, file: !102, line: 1294, type: !1979)
!4467 = distinct !DILexicalBlock(scope: !4458, file: !102, line: 1293, column: 85)
!4468 = !DILocation(line: 1294, column: 19, scope: !4467)
!4469 = !DILocation(line: 1294, column: 34, scope: !4467)
!4470 = !DILocation(line: 1294, column: 23, scope: !4467)
!4471 = !DILocation(line: 1295, column: 12, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4467, file: !102, line: 1295, column: 11)
!4473 = !DILocation(line: 1295, column: 11, scope: !4467)
!4474 = !DILocation(line: 1296, column: 9, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4472, file: !102, line: 1295, column: 15)
!4476 = !DILocation(line: 1296, column: 15, scope: !4475)
!4477 = !DILocation(line: 1297, column: 9, scope: !4475)
!4478 = !DILocation(line: 1298, column: 18, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4472, file: !102, line: 1298, column: 18)
!4480 = !DILocation(line: 1298, column: 21, scope: !4479)
!4481 = !DILocation(line: 1298, column: 18, scope: !4472)
!4482 = !DILocation(line: 1300, column: 13, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !102, line: 1300, column: 13)
!4484 = distinct !DILexicalBlock(scope: !4479, file: !102, line: 1298, column: 28)
!4485 = !DILocation(line: 1300, column: 13, scope: !4484)
!4486 = !DILocation(line: 1300, column: 36, scope: !4483)
!4487 = !DILocation(line: 1301, column: 13, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !102, line: 1301, column: 13)
!4489 = !DILocation(line: 1301, column: 13, scope: !4484)
!4490 = !DILocation(line: 1301, column: 37, scope: !4488)
!4491 = !DILocation(line: 1302, column: 13, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4484, file: !102, line: 1302, column: 13)
!4493 = !DILocation(line: 1302, column: 13, scope: !4484)
!4494 = !DILocation(line: 1302, column: 38, scope: !4492)
!4495 = !DILocation(line: 1303, column: 9, scope: !4484)
!4496 = !DILocation(line: 1304, column: 7, scope: !4484)
!4497 = !DILocation(line: 1305, column: 13, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !102, line: 1305, column: 13)
!4499 = distinct !DILexicalBlock(scope: !4479, file: !102, line: 1304, column: 14)
!4500 = !DILocation(line: 1305, column: 13, scope: !4499)
!4501 = !DILocation(line: 1305, column: 36, scope: !4498)
!4502 = !DILocation(line: 1306, column: 13, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4499, file: !102, line: 1306, column: 13)
!4504 = !DILocation(line: 1306, column: 13, scope: !4499)
!4505 = !DILocation(line: 1306, column: 37, scope: !4503)
!4506 = !DILocation(line: 1307, column: 13, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4499, file: !102, line: 1307, column: 13)
!4508 = !DILocation(line: 1307, column: 13, scope: !4499)
!4509 = !DILocation(line: 1307, column: 38, scope: !4507)
!4510 = !DILocation(line: 1308, column: 13, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4499, file: !102, line: 1308, column: 13)
!4512 = !DILocation(line: 1308, column: 16, scope: !4511)
!4513 = !DILocation(line: 1308, column: 22, scope: !4511)
!4514 = !DILocation(line: 1308, column: 19, scope: !4511)
!4515 = !DILocation(line: 1308, column: 13, scope: !4499)
!4516 = !DILocation(line: 1308, column: 41, scope: !4511)
!4517 = !DILocation(line: 1308, column: 44, scope: !4511)
!4518 = !DILocation(line: 1308, column: 47, scope: !4511)
!4519 = !DILocation(line: 1308, column: 39, scope: !4511)
!4520 = !DILocation(line: 1308, column: 31, scope: !4511)
!4521 = !DILocation(line: 1292, column: 22, scope: !4453)
!4522 = !DILocation(line: 1292, column: 3, scope: !4453)
!4523 = distinct !{!4523, !4456, !4524}
!4524 = !DILocation(line: 1311, column: 3, scope: !4450)
!4525 = !DILocation(line: 1313, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4376, file: !102, line: 1313, column: 7)
!4527 = !DILocation(line: 1313, column: 15, scope: !4526)
!4528 = !DILocation(line: 1313, column: 7, scope: !4376)
!4529 = !DILocalVariable(name: "tv", scope: !4530, file: !102, line: 1316, type: !2363)
!4530 = distinct !DILexicalBlock(scope: !4526, file: !102, line: 1313, column: 20)
!4531 = !DILocation(line: 1316, column: 20, scope: !4530)
!4532 = !DILocalVariable(name: "r", scope: !4530, file: !102, line: 1317, type: !44)
!4533 = !DILocation(line: 1317, column: 9, scope: !4530)
!4534 = !DILocation(line: 1317, column: 34, scope: !4530)
!4535 = !DILocation(line: 1317, column: 13, scope: !4530)
!4536 = !DILocation(line: 1320, column: 9, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4530, file: !102, line: 1320, column: 9)
!4538 = !DILocation(line: 1320, column: 11, scope: !4537)
!4539 = !DILocation(line: 1320, column: 9, scope: !4530)
!4540 = !DILocation(line: 1323, column: 12, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !102, line: 1323, column: 11)
!4542 = distinct !DILexicalBlock(scope: !4537, file: !102, line: 1320, column: 18)
!4543 = !DILocation(line: 1323, column: 11, scope: !4542)
!4544 = !DILocation(line: 1324, column: 9, scope: !4541)
!4545 = !DILocation(line: 1326, column: 16, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4537, file: !102, line: 1325, column: 12)
!4547 = !DILocation(line: 1326, column: 13, scope: !4546)
!4548 = !DILocation(line: 1329, column: 13, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4546, file: !102, line: 1329, column: 7)
!4550 = !DILocation(line: 1329, column: 12, scope: !4549)
!4551 = !DILocation(line: 1329, column: 17, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4549, file: !102, line: 1329, column: 7)
!4553 = !DILocation(line: 1329, column: 19, scope: !4552)
!4554 = !DILocation(line: 1329, column: 18, scope: !4552)
!4555 = !DILocation(line: 1329, column: 7, scope: !4549)
!4556 = !DILocalVariable(name: "f", scope: !4557, file: !102, line: 1330, type: !1979)
!4557 = distinct !DILexicalBlock(scope: !4552, file: !102, line: 1329, column: 30)
!4558 = !DILocation(line: 1330, column: 21, scope: !4557)
!4559 = !DILocation(line: 1330, column: 36, scope: !4557)
!4560 = !DILocation(line: 1330, column: 25, scope: !4557)
!4561 = !DILocation(line: 1331, column: 13, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4557, file: !102, line: 1331, column: 13)
!4563 = !DILocation(line: 1331, column: 15, scope: !4562)
!4564 = !DILocation(line: 1331, column: 19, scope: !4562)
!4565 = !DILocation(line: 1331, column: 22, scope: !4562)
!4566 = !DILocation(line: 1331, column: 13, scope: !4557)
!4567 = !DILocation(line: 1332, column: 15, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !102, line: 1332, column: 15)
!4569 = distinct !DILexicalBlock(scope: !4562, file: !102, line: 1331, column: 29)
!4570 = !DILocation(line: 1332, column: 20, scope: !4568)
!4571 = !DILocation(line: 1332, column: 23, scope: !4568)
!4572 = !DILocation(line: 1332, column: 15, scope: !4569)
!4573 = !DILocation(line: 1332, column: 50, scope: !4568)
!4574 = !DILocation(line: 1333, column: 15, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4569, file: !102, line: 1333, column: 15)
!4576 = !DILocation(line: 1333, column: 21, scope: !4575)
!4577 = !DILocation(line: 1333, column: 24, scope: !4575)
!4578 = !DILocation(line: 1333, column: 15, scope: !4569)
!4579 = !DILocation(line: 1333, column: 52, scope: !4575)
!4580 = !DILocation(line: 1334, column: 15, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4569, file: !102, line: 1334, column: 15)
!4582 = !DILocation(line: 1334, column: 22, scope: !4581)
!4583 = !DILocation(line: 1334, column: 25, scope: !4581)
!4584 = !DILocation(line: 1334, column: 15, scope: !4569)
!4585 = !DILocation(line: 1334, column: 54, scope: !4581)
!4586 = !DILocation(line: 1329, column: 26, scope: !4552)
!4587 = !DILocation(line: 1329, column: 7, scope: !4552)
!4588 = distinct !{!4588, !4555, !4589}
!4589 = !DILocation(line: 1336, column: 7, scope: !4549)
!4590 = !DILocation(line: 1340, column: 10, scope: !4376)
!4591 = !DILocation(line: 1340, column: 3, scope: !4376)
!4592 = !DILocation(line: 1341, column: 1, scope: !4376)
!4593 = distinct !DISubprogram(name: "chroot", scope: !102, file: !102, line: 1431, type: !3057, scopeLine: 1431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!4594 = !DILocalVariable(name: "path", arg: 1, scope: !4593, file: !102, line: 1431, type: !188)
!4595 = !DILocation(line: 1431, column: 24, scope: !4593)
!4596 = !DILocation(line: 1432, column: 7, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4593, file: !102, line: 1432, column: 7)
!4598 = !DILocation(line: 1432, column: 15, scope: !4597)
!4599 = !DILocation(line: 1432, column: 7, scope: !4593)
!4600 = !DILocation(line: 1433, column: 5, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !102, line: 1432, column: 24)
!4602 = !DILocation(line: 1433, column: 11, scope: !4601)
!4603 = !DILocation(line: 1434, column: 5, scope: !4601)
!4604 = !DILocation(line: 1437, column: 7, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4593, file: !102, line: 1437, column: 7)
!4606 = !DILocation(line: 1437, column: 15, scope: !4605)
!4607 = !DILocation(line: 1437, column: 22, scope: !4605)
!4608 = !DILocation(line: 1437, column: 25, scope: !4605)
!4609 = !DILocation(line: 1437, column: 33, scope: !4605)
!4610 = !DILocation(line: 1437, column: 7, scope: !4593)
!4611 = !DILocation(line: 1438, column: 5, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4605, file: !102, line: 1437, column: 42)
!4613 = !DILocation(line: 1441, column: 3, scope: !4593)
!4614 = !DILocation(line: 1442, column: 3, scope: !4593)
!4615 = !DILocation(line: 1442, column: 9, scope: !4593)
!4616 = !DILocation(line: 1443, column: 3, scope: !4593)
!4617 = !DILocation(line: 1444, column: 1, scope: !4593)
!4618 = distinct !DISubprogram(name: "strncmp", scope: !4619, file: !4619, line: 36, type: !4620, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !4)
!4619 = !DIFile(filename: "klee_src/runtime/klee-libc/strncmp.c", directory: "/tmp")
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!44, !188, !188, !174}
!4622 = !DILocalVariable(name: "s1", arg: 1, scope: !4618, file: !4619, line: 36, type: !188)
!4623 = !DILocation(line: 36, column: 25, scope: !4618)
!4624 = !DILocalVariable(name: "s2", arg: 2, scope: !4618, file: !4619, line: 36, type: !188)
!4625 = !DILocation(line: 36, column: 41, scope: !4618)
!4626 = !DILocalVariable(name: "n", arg: 3, scope: !4618, file: !4619, line: 36, type: !174)
!4627 = !DILocation(line: 36, column: 52, scope: !4618)
!4628 = !DILocation(line: 39, column: 6, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4618, file: !4619, line: 39, column: 6)
!4630 = !DILocation(line: 39, column: 8, scope: !4629)
!4631 = !DILocation(line: 39, column: 6, scope: !4618)
!4632 = !DILocation(line: 40, column: 3, scope: !4629)
!4633 = !DILocation(line: 42, column: 8, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !4619, line: 42, column: 7)
!4635 = distinct !DILexicalBlock(scope: !4618, file: !4619, line: 41, column: 5)
!4636 = !DILocation(line: 42, column: 7, scope: !4634)
!4637 = !DILocation(line: 42, column: 17, scope: !4634)
!4638 = !DILocation(line: 42, column: 14, scope: !4634)
!4639 = !DILocation(line: 42, column: 11, scope: !4634)
!4640 = !DILocation(line: 42, column: 7, scope: !4635)
!4641 = !DILocation(line: 43, column: 30, scope: !4634)
!4642 = !DILocation(line: 43, column: 12, scope: !4634)
!4643 = !DILocation(line: 44, column: 24, scope: !4634)
!4644 = !DILocation(line: 44, column: 27, scope: !4634)
!4645 = !DILocation(line: 44, column: 5, scope: !4634)
!4646 = !DILocation(line: 43, column: 33, scope: !4634)
!4647 = !DILocation(line: 43, column: 4, scope: !4634)
!4648 = !DILocation(line: 45, column: 10, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4635, file: !4619, line: 45, column: 7)
!4650 = !DILocation(line: 45, column: 7, scope: !4649)
!4651 = !DILocation(line: 45, column: 13, scope: !4649)
!4652 = !DILocation(line: 45, column: 7, scope: !4635)
!4653 = !DILocation(line: 47, column: 11, scope: !4618)
!4654 = !DILocation(line: 47, column: 15, scope: !4618)
!4655 = !DILocation(line: 47, column: 2, scope: !4635)
!4656 = distinct !{!4656, !4657, !4658}
!4657 = !DILocation(line: 41, column: 2, scope: !4618)
!4658 = !DILocation(line: 47, column: 19, scope: !4618)
!4659 = !DILocation(line: 48, column: 2, scope: !4618)
!4660 = !DILocation(line: 49, column: 1, scope: !4618)
!4661 = distinct !DISubprogram(name: "memcpy", scope: !4662, file: !4662, line: 12, type: !4663, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !4)
!4662 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!127, !127, !181, !174}
!4665 = !DILocalVariable(name: "destaddr", arg: 1, scope: !4661, file: !4662, line: 12, type: !127)
!4666 = !DILocation(line: 12, column: 20, scope: !4661)
!4667 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !4661, file: !4662, line: 12, type: !181)
!4668 = !DILocation(line: 12, column: 42, scope: !4661)
!4669 = !DILocalVariable(name: "len", arg: 3, scope: !4661, file: !4662, line: 12, type: !174)
!4670 = !DILocation(line: 12, column: 58, scope: !4661)
!4671 = !DILocalVariable(name: "dest", scope: !4661, file: !4662, line: 13, type: !22)
!4672 = !DILocation(line: 13, column: 9, scope: !4661)
!4673 = !DILocation(line: 13, column: 16, scope: !4661)
!4674 = !DILocalVariable(name: "src", scope: !4661, file: !4662, line: 14, type: !188)
!4675 = !DILocation(line: 14, column: 15, scope: !4661)
!4676 = !DILocation(line: 14, column: 21, scope: !4661)
!4677 = !DILocation(line: 16, column: 3, scope: !4661)
!4678 = !DILocation(line: 16, column: 13, scope: !4661)
!4679 = !DILocation(line: 16, column: 16, scope: !4661)
!4680 = !DILocation(line: 17, column: 19, scope: !4661)
!4681 = !DILocation(line: 17, column: 15, scope: !4661)
!4682 = !DILocation(line: 17, column: 10, scope: !4661)
!4683 = !DILocation(line: 17, column: 13, scope: !4661)
!4684 = distinct !{!4684, !4677, !4680, !868}
!4685 = !DILocation(line: 18, column: 10, scope: !4661)
!4686 = !DILocation(line: 18, column: 3, scope: !4661)
!4687 = distinct !DISubprogram(name: "memset", scope: !4688, file: !4688, line: 12, type: !4689, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !4)
!4688 = !DIFile(filename: "klee_src/runtime/Freestanding/memset.c", directory: "/tmp")
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!127, !127, !44, !174}
!4691 = !DILocalVariable(name: "dst", arg: 1, scope: !4687, file: !4688, line: 12, type: !127)
!4692 = !DILocation(line: 12, column: 20, scope: !4687)
!4693 = !DILocalVariable(name: "s", arg: 2, scope: !4687, file: !4688, line: 12, type: !44)
!4694 = !DILocation(line: 12, column: 29, scope: !4687)
!4695 = !DILocalVariable(name: "count", arg: 3, scope: !4687, file: !4688, line: 12, type: !174)
!4696 = !DILocation(line: 12, column: 39, scope: !4687)
!4697 = !DILocalVariable(name: "a", scope: !4687, file: !4688, line: 13, type: !22)
!4698 = !DILocation(line: 13, column: 9, scope: !4687)
!4699 = !DILocation(line: 13, column: 13, scope: !4687)
!4700 = !DILocation(line: 14, column: 3, scope: !4687)
!4701 = !DILocation(line: 14, column: 15, scope: !4687)
!4702 = !DILocation(line: 14, column: 18, scope: !4687)
!4703 = !DILocation(line: 15, column: 12, scope: !4687)
!4704 = !DILocation(line: 15, column: 7, scope: !4687)
!4705 = !DILocation(line: 15, column: 10, scope: !4687)
!4706 = distinct !{!4706, !4700, !4703, !868}
!4707 = !DILocation(line: 16, column: 10, scope: !4687)
!4708 = !DILocation(line: 16, column: 3, scope: !4687)
!4709 = distinct !DISubprogram(name: "klee_overshift_check", scope: !4710, file: !4710, line: 20, type: !4711, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !4)
!4710 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4713, !4713}
!4713 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!4714 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !4709, file: !4710, line: 20, type: !4713)
!4715 = !DILocation(line: 20, column: 46, scope: !4709)
!4716 = !DILocalVariable(name: "shift", arg: 2, scope: !4709, file: !4710, line: 20, type: !4713)
!4717 = !DILocation(line: 20, column: 75, scope: !4709)
!4718 = !DILocation(line: 21, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4709, file: !4710, line: 21, column: 7)
!4720 = !DILocation(line: 21, column: 16, scope: !4719)
!4721 = !DILocation(line: 21, column: 13, scope: !4719)
!4722 = !DILocation(line: 21, column: 7, scope: !4709)
!4723 = !DILocation(line: 27, column: 5, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4719, file: !4710, line: 21, column: 26)
!4725 = !DILocation(line: 29, column: 1, scope: !4709)
