; ModuleID = 'stack_cp_l1_klee_annotated_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exe_file_t.18 = type { i32, i32, i64, %struct.exe_disk_file_t.17* }
%struct.exe_disk_file_t.17 = type { i32, i8*, %struct.stat64.16* }
%struct.stat64.16 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec.15, %struct.timespec.15, %struct.timespec.15, [3 x i64] }
%struct.timespec.15 = type { i64, i64 }
%struct.exe_file_system_t.19 = type { i32, %struct.exe_disk_file_t.17*, %struct.exe_disk_file_t.17*, i32, %struct.exe_disk_file_t.17*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.dirent.12 = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag.14 = type { i32, i32, i8*, i8* }
%struct.stat64.9 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec.15, %struct.timespec.15, %struct.timespec.15, [3 x i64] }
%struct.statfs.11 = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t.10, i64, i64, i64, [4 x i64] }
%struct.__fsid_t.10 = type { [2 x i32] }
%struct.dirent64.13 = type { i64, i64, i16, i8, [256 x i8] }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t.17* }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec.15, %struct.timespec.15, %struct.timespec.15, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"stack_cp_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str15 = private unnamed_addr constant [964 x i8] c"klee_init_env\0A\0Ausage: (klee_init_env) [options] [program arguments]\0A  -sym-arg <N>              - Replace by a symbolic argument with length N\0A  -sym-args <MIN> <MAX> <N> - Replace by at least 
@.str26 = private unnamed_addr constant [10 x i8] c"--sym-arg\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"-sym-arg\00", align 1
@.str48 = private unnamed_addr constant [48 x i8] c"--sym-arg expects an integer argument <max-len>\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"--sym-args\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"-sym-args\00", align 1
@.str7 = private unnamed_addr constant [77 x i8] c"--sym-args expects three integer arguments <min-argvs> <max-argvs> <max-len>\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"n_args\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"--sym-files\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"-sym-files\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"--sym-files expects two integer arguments <no-sym-files> <sym-file-len>\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"--sym-stdin\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"-sym-stdin\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"--sym-stdin expects one integer argument <sym-stdin-len>\00", align 1
@.str159 = private unnamed_addr constant [13 x i8] c"--sym-stdout\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"-sym-stdout\00", align 1
@.str17 = private unnamed_addr constant [18 x i8] c"--save-all-writes\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"-save-all-writes\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"--fd-fail\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"-fd-fail\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"--max-fail\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"-max-fail\00", align 1
@.str23 = private unnamed_addr constant [54 x i8] c"--max-fail expects an integer argument <max-failures>\00", align 1
@.str24 = private unnamed_addr constant [37 x i8] c"too many arguments for klee_init_env\00", align 1
@.str25 = private unnamed_addr constant [46 x i8] c"/home/user/klee/runtime/POSIX/klee_init_env.c\00", align 1
@.str2610 = private unnamed_addr constant [9 x i8] c"user.err\00", align 1
@__exe_env = global { [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] } { [32 x %struct.exe_file_t.18] [%struct.exe_file_t.18 { i32 0, i32 5, i64 0, %struct.exe_disk_file_t.17* null }, %struct.exe_file_t.18 { i32 1, i32 9, i64 0, %struct.exe_disk_f
@klee_init_fds.name = private unnamed_addr constant [7 x i8] c"?-data\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__exe_fs = common global %struct.exe_file_system_t.19 zeroinitializer, align 8
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
@.str143 = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 1
@.str244 = private unnamed_addr constant [44 x i8] c"symbolic file descriptor, ignoring (ENOENT)\00", align 1
@close.n_calls = internal unnamed_addr global i32 0, align 4
@read.n_calls = internal unnamed_addr global i32 0, align 4
@.str345 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@.str446 = private unnamed_addr constant [35 x i8] c"/home/user/klee/runtime/POSIX/fd.c\00", align 1
@__PRETTY_FUNCTION__.read = private unnamed_addr constant [34 x i8] c"ssize_t read(int, void *, size_t)\00", align 1
@write.n_calls = internal unnamed_addr global i32 0, align 4
@.str547 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.write = private unnamed_addr constant [41 x i8] c"ssize_t write(int, const void *, size_t)\00", align 1
@.str648 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str749 = private unnamed_addr constant [24 x i8] c"write() ignores bytes.\0A\00", align 1
@.str850 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.__fd_lseek = private unnamed_addr constant [38 x i8] c"off64_t __fd_lseek(int, off64_t, int)\00", align 1
@.str951 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 1
@chmod.n_calls = internal unnamed_addr global i32 0, align 4
@fchmod.n_calls = internal unnamed_addr global i32 0, align 4
@__fd_ftruncate.n_calls = internal unnamed_addr global i32 0, align 4
@.str1052 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str1153 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 1
@.str1254 = private unnamed_addr constant [18 x i8] c"s != (off64_t) -1\00", align 1
@__PRETTY_FUNCTION__.__fd_getdents = private unnamed_addr constant [65 x i8] c"int __fd_getdents(unsigned int, struct dirent64 *, unsigned int)\00", align 1
@.str1355 = private unnamed_addr constant [41 x i8] c"(TCGETS) symbolic file, incomplete model\00", align 1
@.str1456 = private unnamed_addr constant [42 x i8] c"(TCSETS) symbolic file, silently ignoring\00", align 1
@.str1557 = private unnamed_addr constant [43 x i8] c"(TCSETSW) symbolic file, silently ignoring\00", align 1
@.str1658 = private unnamed_addr constant [43 x i8] c"(TCSETSF) symbolic file, silently ignoring\00", align 1
@.str1759 = private unnamed_addr constant [45 x i8] c"(TIOCGWINSZ) symbolic file, incomplete model\00", align 1
@.str1860 = private unnamed_addr constant [46 x i8] c"(TIOCSWINSZ) symbolic file, ignoring (EINVAL)\00", align 1
@.str1961 = private unnamed_addr constant [43 x i8] c"(FIONREAD) symbolic file, incomplete model\00", align 1
@.str2062 = private unnamed_addr constant [44 x i8] c"(MTIOCGET) symbolic file, ignoring (EINVAL)\00", align 1
@.str2163 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EBADF)\00", align 1
@.str2264 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@getcwd.n_calls = internal unnamed_addr global i32 0, align 4
@.str2365 = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1
@.str2466 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EPERM)\00", align 1
@switch.table = private unnamed_addr constant [5 x i32] [i32 0, i32 3073, i32 2048, i32 1024, i32 3072]
@.str85 = private unnamed_addr constant [56 x i8] c"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str186 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str287 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str388 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1489 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str2590 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str691 = private unnamed_addr constant [47 x i8] c"/home/user/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str1792 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str993 = private unnamed_addr constant [59 x i8] c"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c\00", align 1
@.str110 = private unnamed_addr constant [22 x i8] c"Invalid rounding mode\00", align 1
@.str211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

@__getdents64 = alias i32 (i32, %struct.dirent.12*, i32)* @getdents64

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !1272
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !1272
  %1 = load i8* %arrayidx, align 1, !dbg !1272
  %conv = sext i8 %1 to i32, !dbg !1272
  %sub = sub nsw i32 %conv, 48, !dbg !1272
  store i32 %sub, i32* %symvar, align 4, !dbg !1272
  call void asm sideeffect "push $0", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %symvar) #5, !dbg !1273, !srcloc !1274
  call void asm sideeffect "pop $0", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %j) #5, !dbg !1275, !srcloc !1276
  %2 = load i32* %j, align 4, !dbg !1277
  %cmp = icmp eq i32 %2, 7, !dbg !1277
  br i1 %cmp, label %if.then, label %if.else, !dbg !1277

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 13, i8* get
  br label %if.end, !dbg !1281

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 15, i8* g
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32* %retval, !dbg !1284
  ret i32 %3, !dbg !1284
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

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
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval
  store i32 %newArgc, i32* %argc.addr, align 4
  store i8** %newArgv, i8*** %argv.addr, align 8
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !1285
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !1285
  %arrayidx = getelementptr inbounds [5 x i8]* %s, i32 0, i64 4, !dbg !1286
  %1 = load i8* %arrayidx, align 1, !dbg !1286
  %conv = sext i8 %1 to i32, !dbg !1286
  %cmp = icmp eq i32 %conv, 0, !dbg !1286
  %conv1 = zext i1 %cmp to i32, !dbg !1286
  %conv2 = sext i32 %conv1 to i64, !dbg !1286
  call void @klee_assume(i64 %conv2), !dbg !1286
  %arraydecay = getelementptr inbounds [5 x i8]* %s, i32 0, i32 0, !dbg !1287
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !1287
  ret i32 %call, !dbg !1287
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_assume(i64) #3

; Function Attrs: nounwind uwtable
define void @klee_init_env(i32* nocapture %argcPtr, i8*** nocapture %argvPtr) #4 {
entry:
  %new_argv = alloca [1024 x i8*], align 16
  %sym_arg_name = alloca [5 x i8], align 4
  %0 = load i32* %argcPtr, align 4, !dbg !1288, !tbaa !1289
  %1 = load i8*** %argvPtr, align 8, !dbg !1293, !tbaa !1294
  %2 = bitcast [1024 x i8*]* %new_argv to i8*, !dbg !1296
  %3 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 0, !dbg !1297
  %4 = bitcast [5 x i8]* %sym_arg_name to i32*, !dbg !1297
  store i32 6779489, i32* %4, align 4, !dbg !1297
  %arrayidx = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !1298
  store i8 0, i8* %arrayidx, align 4, !dbg !1298, !tbaa !1299
  %cmp = icmp eq i32 %0, 2, !dbg !1300
  br i1 %cmp, label %land.lhs.true, label %while.cond.preheader, !dbg !1300

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8** %1, i64 1, !dbg !1300
  %5 = load i8** %arrayidx1, align 8, !dbg !1300, !tbaa !1294
  %6 = load i8* %5, align 1, !dbg !1302, !tbaa !1299
  %cmp7.i = icmp eq i8 %6, 45, !dbg !1302
  br i1 %cmp7.i, label %while.body.i, label %while.body.lr.ph, !dbg !1302

while.body.i:                                     ; preds = %if.end.i, %land.lhs.true
  %7 = phi i8 [ %8, %if.end.i ], [ 45, %land.lhs.true ]
  %b.addr.09.i = phi i8* [ %incdec.ptr3.i, %if.end.i ], [ getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), %land.lhs.true ]
  %a.addr.08.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %5, %land.lhs.true ]
  %tobool.i = icmp eq i8 %7, 0, !dbg !1303
  br i1 %tobool.i, label %if.then, label %if.end.i, !dbg !1303

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8* %a.addr.08.i, i64 1, !dbg !1306
  %incdec.ptr3.i = getelementptr inbounds i8* %b.addr.09.i, i64 1, !dbg !1307
  %8 = load i8* %incdec.ptr.i, align 1, !dbg !1302, !tbaa !1299
  %9 = load i8* %incdec.ptr3.i, align 1, !dbg !1302, !tbaa !1299
  %cmp.i = icmp eq i8 %8, %9, !dbg !1302
  br i1 %cmp.i, label %while.body.i, label %while.cond.preheader, !dbg !1302

while.cond.preheader:                             ; preds = %if.end.i, %entry
  %cmp2817 = icmp sgt i32 %0, 0, !dbg !1308
  br i1 %cmp2817, label %while.body.lr.ph, label %while.end, !dbg !1308

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %land.lhs.true
  %arrayidx20 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !1309
  br label %while.body, !dbg !1308

if.then:                                          ; preds = %while.body.i
  call fastcc void @__emit_error(i8* getelementptr inbounds ([964 x i8]* @.str15, i64 0, i64 0)), !dbg !1310
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
  %idxprom = sext i32 %k.0842 to i64, !dbg !1312
  %arrayidx3 = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !1312
  %11 = load i8** %arrayidx3, align 8, !dbg !1312, !tbaa !1294
  %12 = load i8* %11, align 1, !dbg !1313, !tbaa !1299
  %cmp7.i279 = icmp eq i8 %12, 45, !dbg !1313
  br i1 %cmp7.i279, label %while.body.i283, label %if.else175, !dbg !1313

while.body.i283:                                  ; preds = %if.end.i287, %while.body
  %13 = phi i8 [ %14, %if.end.i287 ], [ 45, %while.body ]
  %b.addr.09.i280 = phi i8* [ %incdec.ptr3.i285, %if.end.i287 ], [ getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), %while.body ]
  %a.addr.08.i281 = phi i8* [ %incdec.ptr.i284, %if.end.i287 ], [ %11, %while.body ]
  %tobool.i282 = icmp eq i8 %13, 0, !dbg !1314
  br i1 %tobool.i282, label %if.then10, label %if.end.i287, !dbg !1314

if.end.i287:                                      ; preds = %while.body.i283
  %incdec.ptr.i284 = getelementptr inbounds i8* %a.addr.08.i281, i64 1, !dbg !1315
  %incdec.ptr3.i285 = getelementptr inbounds i8* %b.addr.09.i280, i64 1, !dbg !1316
  %14 = load i8* %incdec.ptr.i284, align 1, !dbg !1313, !tbaa !1299
  %15 = load i8* %incdec.ptr3.i285, align 1, !dbg !1313, !tbaa !1299
  %cmp.i286 = icmp eq i8 %14, %15, !dbg !1313
  br i1 %cmp.i286, label %while.body.i283, label %lor.lhs.false, !dbg !1313

lor.lhs.false:                                    ; preds = %if.end.i287
  br i1 %cmp7.i279, label %while.body.i297, label %if.else175, !dbg !1313

while.body.i297:                                  ; preds = %if.end.i301, %lor.lhs.false
  %16 = phi i8 [ %17, %if.end.i301 ], [ 45, %lor.lhs.false ]
  %b.addr.09.i294 = phi i8* [ %incdec.ptr3.i299, %if.end.i301 ], [ getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), %lor.lhs.false ]
  %a.addr.08.i295 = phi i8* [ %incdec.ptr.i298, %if.end.i301 ], [ %11, %lor.lhs.false ]
  %tobool.i296 = icmp eq i8 %16, 0, !dbg !1314
  br i1 %tobool.i296, label %if.then10, label %if.end.i301, !dbg !1314

if.end.i301:                                      ; preds = %while.body.i297
  %incdec.ptr.i298 = getelementptr inbounds i8* %a.addr.08.i295, i64 1, !dbg !1315
  %incdec.ptr3.i299 = getelementptr inbounds i8* %b.addr.09.i294, i64 1, !dbg !1316
  %17 = load i8* %incdec.ptr.i298, align 1, !dbg !1313, !tbaa !1299
  %18 = load i8* %incdec.ptr3.i299, align 1, !dbg !1313, !tbaa !1299
  %cmp.i300 = icmp eq i8 %17, %18, !dbg !1313
  br i1 %cmp.i300, label %while.body.i297, label %if.else, !dbg !1313

if.then10:                                        ; preds = %while.body.i297, %while.body.i283
  %inc = add nsw i32 %k.0842, 1, !dbg !1317
  %cmp11 = icmp eq i32 %inc, %0, !dbg !1317
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1317

if.then12:                                        ; preds = %if.then10
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str48, i64 0, i64 0)), !dbg !1319
  unreachable

if.end13:                                         ; preds = %if.then10
  %inc14 = add nsw i32 %k.0842, 2, !dbg !1320
  %idxprom15 = sext i32 %inc to i64, !dbg !1320
  %arrayidx16 = getelementptr inbounds i8** %1, i64 %idxprom15, !dbg !1320
  %19 = load i8** %arrayidx16, align 8, !dbg !1320, !tbaa !1294
  %20 = load i8* %19, align 1, !dbg !1321, !tbaa !1299
  %tobool.i304 = icmp eq i8 %20, 0, !dbg !1321
  br i1 %tobool.i304, label %if.then.i305, label %while.body.i310, !dbg !1321

if.then.i305:                                     ; preds = %if.end13
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !1321
  unreachable

while.body.i310:                                  ; preds = %if.then10.i316, %if.end13
  %21 = phi i8 [ %23, %if.then10.i316 ], [ %20, %if.end13 ]
  %s.pn.i306 = phi i8* [ %incdec.ptr26.i308, %if.then10.i316 ], [ %19, %if.end13 ]
  %res.025.i307 = phi i64 [ %add.i314, %if.then10.i316 ], [ 0, %if.end13 ]
  %incdec.ptr26.i308 = getelementptr inbounds i8* %s.pn.i306, i64 1, !dbg !1323
  %.off.i309 = add i8 %21, -48, !dbg !1324
  %22 = icmp ult i8 %.off.i309, 10, !dbg !1324
  br i1 %22, label %if.then10.i316, label %if.else13.i317, !dbg !1324

if.then10.i316:                                   ; preds = %while.body.i310
  %conv.i311 = sext i8 %21 to i64, !dbg !1328
  %mul.i312 = mul nsw i64 %res.025.i307, 10, !dbg !1329
  %sub.i313 = add i64 %conv.i311, -48, !dbg !1329
  %add.i314 = add i64 %sub.i313, %mul.i312, !dbg !1329
  %23 = load i8* %incdec.ptr26.i308, align 1, !dbg !1323, !tbaa !1299
  %tobool1.i315 = icmp eq i8 %23, 0, !dbg !1323
  br i1 %tobool1.i315, label %__str_to_int.exit318, label %while.body.i310, !dbg !1323

if.else13.i317:                                   ; preds = %while.body.i310
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !1331
  unreachable

__str_to_int.exit318:                             ; preds = %if.then10.i316
  %conv = trunc i64 %add.i314 to i32, !dbg !1320
  %add = add i32 %sym_arg_num.0833, 48, !dbg !1309
  %conv19 = trunc i32 %add to i8, !dbg !1309
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !1309, !tbaa !1299
  %call22 = call fastcc i8* @__get_sym_str(i32 %conv, i8* %3), !dbg !1333
  %cmp.i319 = icmp eq i32 %10, 1024, !dbg !1334
  br i1 %cmp.i319, label %if.then.i320, label %__add_arg.exit325, !dbg !1334

if.then.i320:                                     ; preds = %__str_to_int.exit318
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !1337
  unreachable

__add_arg.exit325:                                ; preds = %__str_to_int.exit318
  %inc18 = add i32 %sym_arg_num.0833, 1, !dbg !1309
  %idxprom.i321 = sext i32 %10 to i64, !dbg !1339
  %arrayidx.i322 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i321, !dbg !1339
  store i8* %call22, i8** %arrayidx.i322, align 8, !dbg !1339, !tbaa !1294
  %inc.i323 = add nsw i32 %10, 1, !dbg !1341
  br label %while.cond.backedge, !dbg !1342

if.else:                                          ; preds = %if.end.i301
  br i1 %cmp7.i279, label %while.body.i330, label %if.else175, !dbg !1343

while.body.i330:                                  ; preds = %if.end.i334, %if.else
  %24 = phi i8 [ %25, %if.end.i334 ], [ 45, %if.else ]
  %b.addr.09.i327 = phi i8* [ %incdec.ptr3.i332, %if.end.i334 ], [ getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), %if.else ]
  %a.addr.08.i328 = phi i8* [ %incdec.ptr.i331, %if.end.i334 ], [ %11, %if.else ]
  %tobool.i329 = icmp eq i8 %24, 0, !dbg !1345
  br i1 %tobool.i329, label %if.then32, label %if.end.i334, !dbg !1345

if.end.i334:                                      ; preds = %while.body.i330
  %incdec.ptr.i331 = getelementptr inbounds i8* %a.addr.08.i328, i64 1, !dbg !1346
  %incdec.ptr3.i332 = getelementptr inbounds i8* %b.addr.09.i327, i64 1, !dbg !1347
  %25 = load i8* %incdec.ptr.i331, align 1, !dbg !1343, !tbaa !1299
  %26 = load i8* %incdec.ptr3.i332, align 1, !dbg !1343, !tbaa !1299
  %cmp.i333 = icmp eq i8 %25, %26, !dbg !1343
  br i1 %cmp.i333, label %while.body.i330, label %lor.lhs.false27, !dbg !1343

lor.lhs.false27:                                  ; preds = %if.end.i334
  br i1 %cmp7.i279, label %while.body.i341, label %if.else175, !dbg !1343

while.body.i341:                                  ; preds = %if.end.i345, %lor.lhs.false27
  %27 = phi i8 [ %28, %if.end.i345 ], [ 45, %lor.lhs.false27 ]
  %b.addr.09.i338 = phi i8* [ %incdec.ptr3.i343, %if.end.i345 ], [ getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), %lor.lhs.false27 ]
  %a.addr.08.i339 = phi i8* [ %incdec.ptr.i342, %if.end.i345 ], [ %11, %lor.lhs.false27 ]
  %tobool.i340 = icmp eq i8 %27, 0, !dbg !1345
  br i1 %tobool.i340, label %if.then32, label %if.end.i345, !dbg !1345

if.end.i345:                                      ; preds = %while.body.i341
  %incdec.ptr.i342 = getelementptr inbounds i8* %a.addr.08.i339, i64 1, !dbg !1346
  %incdec.ptr3.i343 = getelementptr inbounds i8* %b.addr.09.i338, i64 1, !dbg !1347
  %28 = load i8* %incdec.ptr.i342, align 1, !dbg !1343, !tbaa !1299
  %29 = load i8* %incdec.ptr3.i343, align 1, !dbg !1343, !tbaa !1299
  %cmp.i344 = icmp eq i8 %28, %29, !dbg !1343
  br i1 %cmp.i344, label %while.body.i341, label %if.else67, !dbg !1343

if.then32:                                        ; preds = %while.body.i341, %while.body.i330
  %add34 = add nsw i32 %k.0842, 3, !dbg !1348
  %cmp35 = icmp slt i32 %add34, %0, !dbg !1348
  br i1 %cmp35, label %if.end38, label %if.then37, !dbg !1348

if.then37:                                        ; preds = %if.then32
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)), !dbg !1350
  unreachable

if.end38:                                         ; preds = %if.then32
  %inc39 = add nsw i32 %k.0842, 1, !dbg !1351
  %inc40 = add nsw i32 %k.0842, 2, !dbg !1352
  %idxprom41 = sext i32 %inc39 to i64, !dbg !1352
  %arrayidx42 = getelementptr inbounds i8** %1, i64 %idxprom41, !dbg !1352
  %30 = load i8** %arrayidx42, align 8, !dbg !1352, !tbaa !1294
  %31 = load i8* %30, align 1, !dbg !1353, !tbaa !1299
  %tobool.i348 = icmp eq i8 %31, 0, !dbg !1353
  br i1 %tobool.i348, label %if.then.i349, label %while.body.i354, !dbg !1353

if.then.i349:                                     ; preds = %if.end38
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1353
  unreachable

while.body.i354:                                  ; preds = %if.then10.i360, %if.end38
  %32 = phi i8 [ %34, %if.then10.i360 ], [ %31, %if.end38 ]
  %s.pn.i350 = phi i8* [ %incdec.ptr26.i352, %if.then10.i360 ], [ %30, %if.end38 ]
  %res.025.i351 = phi i64 [ %add.i358, %if.then10.i360 ], [ 0, %if.end38 ]
  %incdec.ptr26.i352 = getelementptr inbounds i8* %s.pn.i350, i64 1, !dbg !1354
  %.off.i353 = add i8 %32, -48, !dbg !1355
  %33 = icmp ult i8 %.off.i353, 10, !dbg !1355
  br i1 %33, label %if.then10.i360, label %if.else13.i361, !dbg !1355

if.then10.i360:                                   ; preds = %while.body.i354
  %conv.i355 = sext i8 %32 to i64, !dbg !1356
  %mul.i356 = mul nsw i64 %res.025.i351, 10, !dbg !1357
  %sub.i357 = add i64 %conv.i355, -48, !dbg !1357
  %add.i358 = add i64 %sub.i357, %mul.i356, !dbg !1357
  %34 = load i8* %incdec.ptr26.i352, align 1, !dbg !1354, !tbaa !1299
  %tobool1.i359 = icmp eq i8 %34, 0, !dbg !1354
  br i1 %tobool1.i359, label %__str_to_int.exit362, label %while.body.i354, !dbg !1354

if.else13.i361:                                   ; preds = %while.body.i354
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1358
  unreachable

__str_to_int.exit362:                             ; preds = %if.then10.i360
  %conv44 = trunc i64 %add.i358 to i32, !dbg !1352
  %idxprom46 = sext i32 %inc40 to i64, !dbg !1359
  %arrayidx47 = getelementptr inbounds i8** %1, i64 %idxprom46, !dbg !1359
  %35 = load i8** %arrayidx47, align 8, !dbg !1359, !tbaa !1294
  %36 = load i8* %35, align 1, !dbg !1360, !tbaa !1299
  %tobool.i363 = icmp eq i8 %36, 0, !dbg !1360
  br i1 %tobool.i363, label %if.then.i364, label %while.body.i369, !dbg !1360

if.then.i364:                                     ; preds = %__str_to_int.exit362
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1360
  unreachable

while.body.i369:                                  ; preds = %if.then10.i375, %__str_to_int.exit362
  %37 = phi i8 [ %39, %if.then10.i375 ], [ %36, %__str_to_int.exit362 ]
  %s.pn.i365 = phi i8* [ %incdec.ptr26.i367, %if.then10.i375 ], [ %35, %__str_to_int.exit362 ]
  %res.025.i366 = phi i64 [ %add.i373, %if.then10.i375 ], [ 0, %__str_to_int.exit362 ]
  %incdec.ptr26.i367 = getelementptr inbounds i8* %s.pn.i365, i64 1, !dbg !1361
  %.off.i368 = add i8 %37, -48, !dbg !1362
  %38 = icmp ult i8 %.off.i368, 10, !dbg !1362
  br i1 %38, label %if.then10.i375, label %if.else13.i376, !dbg !1362

if.then10.i375:                                   ; preds = %while.body.i369
  %conv.i370 = sext i8 %37 to i64, !dbg !1363
  %mul.i371 = mul nsw i64 %res.025.i366, 10, !dbg !1364
  %sub.i372 = add i64 %conv.i370, -48, !dbg !1364
  %add.i373 = add i64 %sub.i372, %mul.i371, !dbg !1364
  %39 = load i8* %incdec.ptr26.i367, align 1, !dbg !1361, !tbaa !1299
  %tobool1.i374 = icmp eq i8 %39, 0, !dbg !1361
  br i1 %tobool1.i374, label %__str_to_int.exit377, label %while.body.i369, !dbg !1361

if.else13.i376:                                   ; preds = %while.body.i369
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1365
  unreachable

__str_to_int.exit377:                             ; preds = %if.then10.i375
  %conv49 = trunc i64 %add.i373 to i32, !dbg !1359
  %inc50 = add nsw i32 %k.0842, 4, !dbg !1366
  %idxprom51 = sext i32 %add34 to i64, !dbg !1366
  %arrayidx52 = getelementptr inbounds i8** %1, i64 %idxprom51, !dbg !1366
  %40 = load i8** %arrayidx52, align 8, !dbg !1366, !tbaa !1294
  %41 = load i8* %40, align 1, !dbg !1367, !tbaa !1299
  %tobool.i378 = icmp eq i8 %41, 0, !dbg !1367
  br i1 %tobool.i378, label %if.then.i379, label %while.body.i384, !dbg !1367

if.then.i379:                                     ; preds = %__str_to_int.exit377
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1367
  unreachable

while.body.i384:                                  ; preds = %if.then10.i390, %__str_to_int.exit377
  %42 = phi i8 [ %44, %if.then10.i390 ], [ %41, %__str_to_int.exit377 ]
  %s.pn.i380 = phi i8* [ %incdec.ptr26.i382, %if.then10.i390 ], [ %40, %__str_to_int.exit377 ]
  %res.025.i381 = phi i64 [ %add.i388, %if.then10.i390 ], [ 0, %__str_to_int.exit377 ]
  %incdec.ptr26.i382 = getelementptr inbounds i8* %s.pn.i380, i64 1, !dbg !1368
  %.off.i383 = add i8 %42, -48, !dbg !1369
  %43 = icmp ult i8 %.off.i383, 10, !dbg !1369
  br i1 %43, label %if.then10.i390, label %if.else13.i391, !dbg !1369

if.then10.i390:                                   ; preds = %while.body.i384
  %conv.i385 = sext i8 %42 to i64, !dbg !1370
  %mul.i386 = mul nsw i64 %res.025.i381, 10, !dbg !1371
  %sub.i387 = add i64 %conv.i385, -48, !dbg !1371
  %add.i388 = add i64 %sub.i387, %mul.i386, !dbg !1371
  %44 = load i8* %incdec.ptr26.i382, align 1, !dbg !1368, !tbaa !1299
  %tobool1.i389 = icmp eq i8 %44, 0, !dbg !1368
  br i1 %tobool1.i389, label %__str_to_int.exit392, label %while.body.i384, !dbg !1368

if.else13.i391:                                   ; preds = %while.body.i384
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1372
  unreachable

__str_to_int.exit392:                             ; preds = %if.then10.i390
  %conv54 = trunc i64 %add.i388 to i32, !dbg !1366
  %add55 = add i32 %conv49, 1, !dbg !1373
  %call56 = call i32 @klee_range(i32 %conv44, i32 %add55, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !1373
  %cmp57644 = icmp sgt i32 %call56, 0, !dbg !1374
  br i1 %cmp57644, label %for.body.lr.ph, label %while.cond.backedge, !dbg !1374

for.body.lr.ph:                                   ; preds = %__str_to_int.exit392
  %45 = sext i32 %10 to i64
  br label %for.body, !dbg !1374

for.body:                                         ; preds = %__add_arg.exit399, %for.body.lr.ph
  %indvars.iv = phi i64 [ %45, %for.body.lr.ph ], [ %indvars.iv.next, %__add_arg.exit399 ]
  %i.0646 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %__add_arg.exit399 ]
  %sym_arg_num.1645 = phi i32 [ %sym_arg_num.0833, %for.body.lr.ph ], [ %inc59, %__add_arg.exit399 ]
  %46 = phi i32 [ %10, %for.body.lr.ph ], [ %inc.i397, %__add_arg.exit399 ]
  %add60 = add i32 %sym_arg_num.1645, 48, !dbg !1376
  %conv61 = trunc i32 %add60 to i8, !dbg !1376
  store i8 %conv61, i8* %arrayidx20, align 1, !dbg !1376, !tbaa !1299
  %call65 = call fastcc i8* @__get_sym_str(i32 %conv54, i8* %3), !dbg !1378
  %47 = trunc i64 %indvars.iv to i32, !dbg !1379
  %cmp.i393 = icmp eq i32 %47, 1024, !dbg !1379
  br i1 %cmp.i393, label %if.then.i394, label %__add_arg.exit399, !dbg !1379

if.then.i394:                                     ; preds = %for.body
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !1381
  unreachable

__add_arg.exit399:                                ; preds = %for.body
  %inc59 = add i32 %sym_arg_num.1645, 1, !dbg !1376
  %arrayidx.i396 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %indvars.iv, !dbg !1382
  store i8* %call65, i8** %arrayidx.i396, align 8, !dbg !1382, !tbaa !1294
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1374
  %inc.i397 = add nsw i32 %46, 1, !dbg !1383
  %inc66 = add nsw i32 %i.0646, 1, !dbg !1374
  %cmp57 = icmp slt i32 %inc66, %call56, !dbg !1374
  br i1 %cmp57, label %for.body, label %while.cond.backedge, !dbg !1374

if.else67:                                        ; preds = %if.end.i345
  br i1 %cmp7.i279, label %while.body.i404, label %if.else175, !dbg !1384

while.body.i404:                                  ; preds = %if.end.i408, %if.else67
  %48 = phi i8 [ %49, %if.end.i408 ], [ 45, %if.else67 ]
  %b.addr.09.i401 = phi i8* [ %incdec.ptr3.i406, %if.end.i408 ], [ getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), %if.else67 ]
  %a.addr.08.i402 = phi i8* [ %incdec.ptr.i405, %if.end.i408 ], [ %11, %if.else67 ]
  %tobool.i403 = icmp eq i8 %48, 0, !dbg !1386
  br i1 %tobool.i403, label %if.then77, label %if.end.i408, !dbg !1386

if.end.i408:                                      ; preds = %while.body.i404
  %incdec.ptr.i405 = getelementptr inbounds i8* %a.addr.08.i402, i64 1, !dbg !1387
  %incdec.ptr3.i406 = getelementptr inbounds i8* %b.addr.09.i401, i64 1, !dbg !1388
  %49 = load i8* %incdec.ptr.i405, align 1, !dbg !1384, !tbaa !1299
  %50 = load i8* %incdec.ptr3.i406, align 1, !dbg !1384, !tbaa !1299
  %cmp.i407 = icmp eq i8 %49, %50, !dbg !1384
  br i1 %cmp.i407, label %while.body.i404, label %lor.lhs.false72, !dbg !1384

lor.lhs.false72:                                  ; preds = %if.end.i408
  br i1 %cmp7.i279, label %while.body.i415, label %if.else175, !dbg !1384

while.body.i415:                                  ; preds = %if.end.i419, %lor.lhs.false72
  %51 = phi i8 [ %52, %if.end.i419 ], [ 45, %lor.lhs.false72 ]
  %b.addr.09.i412 = phi i8* [ %incdec.ptr3.i417, %if.end.i419 ], [ getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), %lor.lhs.false72 ]
  %a.addr.08.i413 = phi i8* [ %incdec.ptr.i416, %if.end.i419 ], [ %11, %lor.lhs.false72 ]
  %tobool.i414 = icmp eq i8 %51, 0, !dbg !1386
  br i1 %tobool.i414, label %if.then77, label %if.end.i419, !dbg !1386

if.end.i419:                                      ; preds = %while.body.i415
  %incdec.ptr.i416 = getelementptr inbounds i8* %a.addr.08.i413, i64 1, !dbg !1387
  %incdec.ptr3.i417 = getelementptr inbounds i8* %b.addr.09.i412, i64 1, !dbg !1388
  %52 = load i8* %incdec.ptr.i416, align 1, !dbg !1384, !tbaa !1299
  %53 = load i8* %incdec.ptr3.i417, align 1, !dbg !1384, !tbaa !1299
  %cmp.i418 = icmp eq i8 %52, %53, !dbg !1384
  br i1 %cmp.i418, label %while.body.i415, label %if.else95, !dbg !1384

if.then77:                                        ; preds = %while.body.i415, %while.body.i404
  %add79 = add nsw i32 %k.0842, 2, !dbg !1389
  %cmp80 = icmp slt i32 %add79, %0, !dbg !1389
  br i1 %cmp80, label %if.end83, label %if.then82, !dbg !1389

if.then82:                                        ; preds = %if.then77
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)), !dbg !1391
  unreachable

if.end83:                                         ; preds = %if.then77
  %inc84 = add nsw i32 %k.0842, 1, !dbg !1392
  %idxprom86 = sext i32 %inc84 to i64, !dbg !1393
  %arrayidx87 = getelementptr inbounds i8** %1, i64 %idxprom86, !dbg !1393
  %54 = load i8** %arrayidx87, align 8, !dbg !1393, !tbaa !1294
  %55 = load i8* %54, align 1, !dbg !1394, !tbaa !1299
  %tobool.i422 = icmp eq i8 %55, 0, !dbg !1394
  br i1 %tobool.i422, label %if.then.i423, label %while.body.i428, !dbg !1394

if.then.i423:                                     ; preds = %if.end83
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1394
  unreachable

while.body.i428:                                  ; preds = %if.then10.i434, %if.end83
  %56 = phi i8 [ %58, %if.then10.i434 ], [ %55, %if.end83 ]
  %s.pn.i424 = phi i8* [ %incdec.ptr26.i426, %if.then10.i434 ], [ %54, %if.end83 ]
  %res.025.i425 = phi i64 [ %add.i432, %if.then10.i434 ], [ 0, %if.end83 ]
  %incdec.ptr26.i426 = getelementptr inbounds i8* %s.pn.i424, i64 1, !dbg !1395
  %.off.i427 = add i8 %56, -48, !dbg !1396
  %57 = icmp ult i8 %.off.i427, 10, !dbg !1396
  br i1 %57, label %if.then10.i434, label %if.else13.i435, !dbg !1396

if.then10.i434:                                   ; preds = %while.body.i428
  %conv.i429 = sext i8 %56 to i64, !dbg !1397
  %mul.i430 = mul nsw i64 %res.025.i425, 10, !dbg !1398
  %sub.i431 = add i64 %conv.i429, -48, !dbg !1398
  %add.i432 = add i64 %sub.i431, %mul.i430, !dbg !1398
  %58 = load i8* %incdec.ptr26.i426, align 1, !dbg !1395, !tbaa !1299
  %tobool1.i433 = icmp eq i8 %58, 0, !dbg !1395
  br i1 %tobool1.i433, label %__str_to_int.exit436, label %while.body.i428, !dbg !1395

if.else13.i435:                                   ; preds = %while.body.i428
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1399
  unreachable

__str_to_int.exit436:                             ; preds = %if.then10.i434
  %conv89 = trunc i64 %add.i432 to i32, !dbg !1393
  %inc90 = add nsw i32 %k.0842, 3, !dbg !1400
  %idxprom91 = sext i32 %add79 to i64, !dbg !1400
  %arrayidx92 = getelementptr inbounds i8** %1, i64 %idxprom91, !dbg !1400
  %59 = load i8** %arrayidx92, align 8, !dbg !1400, !tbaa !1294
  %60 = load i8* %59, align 1, !dbg !1401, !tbaa !1299
  %tobool.i437 = icmp eq i8 %60, 0, !dbg !1401
  br i1 %tobool.i437, label %if.then.i438, label %while.body.i443, !dbg !1401

if.then.i438:                                     ; preds = %__str_to_int.exit436
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1401
  unreachable

while.body.i443:                                  ; preds = %if.then10.i449, %__str_to_int.exit436
  %61 = phi i8 [ %63, %if.then10.i449 ], [ %60, %__str_to_int.exit436 ]
  %s.pn.i439 = phi i8* [ %incdec.ptr26.i441, %if.then10.i449 ], [ %59, %__str_to_int.exit436 ]
  %res.025.i440 = phi i64 [ %add.i447, %if.then10.i449 ], [ 0, %__str_to_int.exit436 ]
  %incdec.ptr26.i441 = getelementptr inbounds i8* %s.pn.i439, i64 1, !dbg !1402
  %.off.i442 = add i8 %61, -48, !dbg !1403
  %62 = icmp ult i8 %.off.i442, 10, !dbg !1403
  br i1 %62, label %if.then10.i449, label %if.else13.i450, !dbg !1403

if.then10.i449:                                   ; preds = %while.body.i443
  %conv.i444 = sext i8 %61 to i64, !dbg !1404
  %mul.i445 = mul nsw i64 %res.025.i440, 10, !dbg !1405
  %sub.i446 = add i64 %conv.i444, -48, !dbg !1405
  %add.i447 = add i64 %sub.i446, %mul.i445, !dbg !1405
  %63 = load i8* %incdec.ptr26.i441, align 1, !dbg !1402, !tbaa !1299
  %tobool1.i448 = icmp eq i8 %63, 0, !dbg !1402
  br i1 %tobool1.i448, label %__str_to_int.exit451, label %while.body.i443, !dbg !1402

if.else13.i450:                                   ; preds = %while.body.i443
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1406
  unreachable

__str_to_int.exit451:                             ; preds = %if.then10.i449
  %conv94 = trunc i64 %add.i447 to i32, !dbg !1400
  br label %while.cond.backedge, !dbg !1407

if.else95:                                        ; preds = %if.end.i419
  br i1 %cmp7.i279, label %while.body.i456, label %if.else175, !dbg !1408

while.body.i456:                                  ; preds = %if.end.i460, %if.else95
  %64 = phi i8 [ %65, %if.end.i460 ], [ 45, %if.else95 ]
  %b.addr.09.i453 = phi i8* [ %incdec.ptr3.i458, %if.end.i460 ], [ getelementptr inbounds ([12 x i8]* @.str12, i64 0, i64 0), %if.else95 ]
  %a.addr.08.i454 = phi i8* [ %incdec.ptr.i457, %if.end.i460 ], [ %11, %if.else95 ]
  %tobool.i455 = icmp eq i8 %64, 0, !dbg !1410
  br i1 %tobool.i455, label %if.then105, label %if.end.i460, !dbg !1410

if.end.i460:                                      ; preds = %while.body.i456
  %incdec.ptr.i457 = getelementptr inbounds i8* %a.addr.08.i454, i64 1, !dbg !1411
  %incdec.ptr3.i458 = getelementptr inbounds i8* %b.addr.09.i453, i64 1, !dbg !1412
  %65 = load i8* %incdec.ptr.i457, align 1, !dbg !1408, !tbaa !1299
  %66 = load i8* %incdec.ptr3.i458, align 1, !dbg !1408, !tbaa !1299
  %cmp.i459 = icmp eq i8 %65, %66, !dbg !1408
  br i1 %cmp.i459, label %while.body.i456, label %lor.lhs.false100, !dbg !1408

lor.lhs.false100:                                 ; preds = %if.end.i460
  br i1 %cmp7.i279, label %while.body.i467, label %if.else175, !dbg !1413

while.body.i467:                                  ; preds = %if.end.i471, %lor.lhs.false100
  %67 = phi i8 [ %68, %if.end.i471 ], [ 45, %lor.lhs.false100 ]
  %b.addr.09.i464 = phi i8* [ %incdec.ptr3.i469, %if.end.i471 ], [ getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0), %lor.lhs.false100 ]
  %a.addr.08.i465 = phi i8* [ %incdec.ptr.i468, %if.end.i471 ], [ %11, %lor.lhs.false100 ]
  %tobool.i466 = icmp eq i8 %67, 0, !dbg !1415
  br i1 %tobool.i466, label %if.then105, label %if.end.i471, !dbg !1415

if.end.i471:                                      ; preds = %while.body.i467
  %incdec.ptr.i468 = getelementptr inbounds i8* %a.addr.08.i465, i64 1, !dbg !1416
  %incdec.ptr3.i469 = getelementptr inbounds i8* %b.addr.09.i464, i64 1, !dbg !1417
  %68 = load i8* %incdec.ptr.i468, align 1, !dbg !1413, !tbaa !1299
  %69 = load i8* %incdec.ptr3.i469, align 1, !dbg !1413, !tbaa !1299
  %cmp.i470 = icmp eq i8 %68, %69, !dbg !1413
  br i1 %cmp.i470, label %while.body.i467, label %if.else117, !dbg !1413

if.then105:                                       ; preds = %while.body.i467, %while.body.i456
  %inc107 = add nsw i32 %k.0842, 1, !dbg !1418
  %cmp108 = icmp eq i32 %inc107, %0, !dbg !1418
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !1418

if.then110:                                       ; preds = %if.then105
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0)), !dbg !1420
  unreachable

if.end111:                                        ; preds = %if.then105
  %inc112 = add nsw i32 %k.0842, 2, !dbg !1421
  %idxprom113 = sext i32 %inc107 to i64, !dbg !1421
  %arrayidx114 = getelementptr inbounds i8** %1, i64 %idxprom113, !dbg !1421
  %70 = load i8** %arrayidx114, align 8, !dbg !1421, !tbaa !1294
  %71 = load i8* %70, align 1, !dbg !1422, !tbaa !1299
  %tobool.i474 = icmp eq i8 %71, 0, !dbg !1422
  br i1 %tobool.i474, label %if.then.i475, label %while.body.i480, !dbg !1422

if.then.i475:                                     ; preds = %if.end111
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !1422
  unreachable

while.body.i480:                                  ; preds = %if.then10.i486, %if.end111
  %72 = phi i8 [ %74, %if.then10.i486 ], [ %71, %if.end111 ]
  %s.pn.i476 = phi i8* [ %incdec.ptr26.i478, %if.then10.i486 ], [ %70, %if.end111 ]
  %res.025.i477 = phi i64 [ %add.i484, %if.then10.i486 ], [ 0, %if.end111 ]
  %incdec.ptr26.i478 = getelementptr inbounds i8* %s.pn.i476, i64 1, !dbg !1423
  %.off.i479 = add i8 %72, -48, !dbg !1424
  %73 = icmp ult i8 %.off.i479, 10, !dbg !1424
  br i1 %73, label %if.then10.i486, label %if.else13.i487, !dbg !1424

if.then10.i486:                                   ; preds = %while.body.i480
  %conv.i481 = sext i8 %72 to i64, !dbg !1425
  %mul.i482 = mul nsw i64 %res.025.i477, 10, !dbg !1426
  %sub.i483 = add i64 %conv.i481, -48, !dbg !1426
  %add.i484 = add i64 %sub.i483, %mul.i482, !dbg !1426
  %74 = load i8* %incdec.ptr26.i478, align 1, !dbg !1423, !tbaa !1299
  %tobool1.i485 = icmp eq i8 %74, 0, !dbg !1423
  br i1 %tobool1.i485, label %__str_to_int.exit488, label %while.body.i480, !dbg !1423

if.else13.i487:                                   ; preds = %while.body.i480
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !1427
  unreachable

__str_to_int.exit488:                             ; preds = %if.then10.i486
  %conv116 = trunc i64 %add.i484 to i32, !dbg !1421
  br label %while.cond.backedge, !dbg !1428

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
  %cmp2 = icmp slt i32 %k.0.be, %0, !dbg !1308
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1308

if.else117:                                       ; preds = %if.end.i471
  br i1 %cmp7.i279, label %while.body.i493, label %if.else175, !dbg !1429

while.body.i493:                                  ; preds = %if.end.i497, %if.else117
  %75 = phi i8 [ %76, %if.end.i497 ], [ 45, %if.else117 ]
  %b.addr.09.i490 = phi i8* [ %incdec.ptr3.i495, %if.end.i497 ], [ getelementptr inbounds ([13 x i8]* @.str159, i64 0, i64 0), %if.else117 ]
  %a.addr.08.i491 = phi i8* [ %incdec.ptr.i494, %if.end.i497 ], [ %11, %if.else117 ]
  %tobool.i492 = icmp eq i8 %75, 0, !dbg !1431
  br i1 %tobool.i492, label %if.then127, label %if.end.i497, !dbg !1431

if.end.i497:                                      ; preds = %while.body.i493
  %incdec.ptr.i494 = getelementptr inbounds i8* %a.addr.08.i491, i64 1, !dbg !1432
  %incdec.ptr3.i495 = getelementptr inbounds i8* %b.addr.09.i490, i64 1, !dbg !1433
  %76 = load i8* %incdec.ptr.i494, align 1, !dbg !1429, !tbaa !1299
  %77 = load i8* %incdec.ptr3.i495, align 1, !dbg !1429, !tbaa !1299
  %cmp.i496 = icmp eq i8 %76, %77, !dbg !1429
  br i1 %cmp.i496, label %while.body.i493, label %lor.lhs.false122, !dbg !1429

lor.lhs.false122:                                 ; preds = %if.end.i497
  br i1 %cmp7.i279, label %while.body.i504, label %if.else175, !dbg !1434

while.body.i504:                                  ; preds = %if.end.i508, %lor.lhs.false122
  %78 = phi i8 [ %79, %if.end.i508 ], [ 45, %lor.lhs.false122 ]
  %b.addr.09.i501 = phi i8* [ %incdec.ptr3.i506, %if.end.i508 ], [ getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), %lor.lhs.false122 ]
  %a.addr.08.i502 = phi i8* [ %incdec.ptr.i505, %if.end.i508 ], [ %11, %lor.lhs.false122 ]
  %tobool.i503 = icmp eq i8 %78, 0, !dbg !1436
  br i1 %tobool.i503, label %if.then127, label %if.end.i508, !dbg !1436

if.end.i508:                                      ; preds = %while.body.i504
  %incdec.ptr.i505 = getelementptr inbounds i8* %a.addr.08.i502, i64 1, !dbg !1437
  %incdec.ptr3.i506 = getelementptr inbounds i8* %b.addr.09.i501, i64 1, !dbg !1438
  %79 = load i8* %incdec.ptr.i505, align 1, !dbg !1434, !tbaa !1299
  %80 = load i8* %incdec.ptr3.i506, align 1, !dbg !1434, !tbaa !1299
  %cmp.i507 = icmp eq i8 %79, %80, !dbg !1434
  br i1 %cmp.i507, label %while.body.i504, label %if.else129, !dbg !1434

if.then127:                                       ; preds = %while.body.i504, %while.body.i493
  %inc128 = add nsw i32 %k.0842, 1, !dbg !1439
  br label %while.cond.backedge, !dbg !1441

if.else129:                                       ; preds = %if.end.i508
  br i1 %cmp7.i279, label %while.body.i515, label %if.else175, !dbg !1442

while.body.i515:                                  ; preds = %if.end.i519, %if.else129
  %81 = phi i8 [ %82, %if.end.i519 ], [ 45, %if.else129 ]
  %b.addr.09.i512 = phi i8* [ %incdec.ptr3.i517, %if.end.i519 ], [ getelementptr inbounds ([18 x i8]* @.str17, i64 0, i64 0), %if.else129 ]
  %a.addr.08.i513 = phi i8* [ %incdec.ptr.i516, %if.end.i519 ], [ %11, %if.else129 ]
  %tobool.i514 = icmp eq i8 %81, 0, !dbg !1444
  br i1 %tobool.i514, label %if.then139, label %if.end.i519, !dbg !1444

if.end.i519:                                      ; preds = %while.body.i515
  %incdec.ptr.i516 = getelementptr inbounds i8* %a.addr.08.i513, i64 1, !dbg !1445
  %incdec.ptr3.i517 = getelementptr inbounds i8* %b.addr.09.i512, i64 1, !dbg !1446
  %82 = load i8* %incdec.ptr.i516, align 1, !dbg !1442, !tbaa !1299
  %83 = load i8* %incdec.ptr3.i517, align 1, !dbg !1442, !tbaa !1299
  %cmp.i518 = icmp eq i8 %82, %83, !dbg !1442
  br i1 %cmp.i518, label %while.body.i515, label %lor.lhs.false134, !dbg !1442

lor.lhs.false134:                                 ; preds = %if.end.i519
  br i1 %cmp7.i279, label %while.body.i570, label %if.else175, !dbg !1442

while.body.i570:                                  ; preds = %if.end.i574, %lor.lhs.false134
  %84 = phi i8 [ %85, %if.end.i574 ], [ 45, %lor.lhs.false134 ]
  %b.addr.09.i567 = phi i8* [ %incdec.ptr3.i572, %if.end.i574 ], [ getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), %lor.lhs.false134 ]
  %a.addr.08.i568 = phi i8* [ %incdec.ptr.i571, %if.end.i574 ], [ %11, %lor.lhs.false134 ]
  %tobool.i569 = icmp eq i8 %84, 0, !dbg !1444
  br i1 %tobool.i569, label %if.then139, label %if.end.i574, !dbg !1444

if.end.i574:                                      ; preds = %while.body.i570
  %incdec.ptr.i571 = getelementptr inbounds i8* %a.addr.08.i568, i64 1, !dbg !1445
  %incdec.ptr3.i572 = getelementptr inbounds i8* %b.addr.09.i567, i64 1, !dbg !1446
  %85 = load i8* %incdec.ptr.i571, align 1, !dbg !1442, !tbaa !1299
  %86 = load i8* %incdec.ptr3.i572, align 1, !dbg !1442, !tbaa !1299
  %cmp.i573 = icmp eq i8 %85, %86, !dbg !1442
  br i1 %cmp.i573, label %while.body.i570, label %if.else141, !dbg !1442

if.then139:                                       ; preds = %while.body.i570, %while.body.i515
  %inc140 = add nsw i32 %k.0842, 1, !dbg !1447
  br label %while.cond.backedge, !dbg !1449

if.else141:                                       ; preds = %if.end.i574
  br i1 %cmp7.i279, label %while.body.i559, label %if.else175, !dbg !1450

while.body.i559:                                  ; preds = %if.end.i563, %if.else141
  %87 = phi i8 [ %88, %if.end.i563 ], [ 45, %if.else141 ]
  %b.addr.09.i556 = phi i8* [ %incdec.ptr3.i561, %if.end.i563 ], [ getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), %if.else141 ]
  %a.addr.08.i557 = phi i8* [ %incdec.ptr.i560, %if.end.i563 ], [ %11, %if.else141 ]
  %tobool.i558 = icmp eq i8 %87, 0, !dbg !1452
  br i1 %tobool.i558, label %if.then151, label %if.end.i563, !dbg !1452

if.end.i563:                                      ; preds = %while.body.i559
  %incdec.ptr.i560 = getelementptr inbounds i8* %a.addr.08.i557, i64 1, !dbg !1453
  %incdec.ptr3.i561 = getelementptr inbounds i8* %b.addr.09.i556, i64 1, !dbg !1454
  %88 = load i8* %incdec.ptr.i560, align 1, !dbg !1450, !tbaa !1299
  %89 = load i8* %incdec.ptr3.i561, align 1, !dbg !1450, !tbaa !1299
  %cmp.i562 = icmp eq i8 %88, %89, !dbg !1450
  br i1 %cmp.i562, label %while.body.i559, label %lor.lhs.false146, !dbg !1450

lor.lhs.false146:                                 ; preds = %if.end.i563
  br i1 %cmp7.i279, label %while.body.i548, label %if.else175, !dbg !1450

while.body.i548:                                  ; preds = %if.end.i552, %lor.lhs.false146
  %90 = phi i8 [ %91, %if.end.i552 ], [ 45, %lor.lhs.false146 ]
  %b.addr.09.i545 = phi i8* [ %incdec.ptr3.i550, %if.end.i552 ], [ getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), %lor.lhs.false146 ]
  %a.addr.08.i546 = phi i8* [ %incdec.ptr.i549, %if.end.i552 ], [ %11, %lor.lhs.false146 ]
  %tobool.i547 = icmp eq i8 %90, 0, !dbg !1452
  br i1 %tobool.i547, label %if.then151, label %if.end.i552, !dbg !1452

if.end.i552:                                      ; preds = %while.body.i548
  %incdec.ptr.i549 = getelementptr inbounds i8* %a.addr.08.i546, i64 1, !dbg !1453
  %incdec.ptr3.i550 = getelementptr inbounds i8* %b.addr.09.i545, i64 1, !dbg !1454
  %91 = load i8* %incdec.ptr.i549, align 1, !dbg !1450, !tbaa !1299
  %92 = load i8* %incdec.ptr3.i550, align 1, !dbg !1450, !tbaa !1299
  %cmp.i551 = icmp eq i8 %91, %92, !dbg !1450
  br i1 %cmp.i551, label %while.body.i548, label %if.else153, !dbg !1450

if.then151:                                       ; preds = %while.body.i548, %while.body.i559
  %inc152 = add nsw i32 %k.0842, 1, !dbg !1455
  br label %while.cond.backedge, !dbg !1457

if.else153:                                       ; preds = %if.end.i552
  br i1 %cmp7.i279, label %while.body.i537, label %if.else175, !dbg !1458

while.body.i537:                                  ; preds = %if.end.i541, %if.else153
  %93 = phi i8 [ %94, %if.end.i541 ], [ 45, %if.else153 ]
  %b.addr.09.i534 = phi i8* [ %incdec.ptr3.i539, %if.end.i541 ], [ getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), %if.else153 ]
  %a.addr.08.i535 = phi i8* [ %incdec.ptr.i538, %if.end.i541 ], [ %11, %if.else153 ]
  %tobool.i536 = icmp eq i8 %93, 0, !dbg !1460
  br i1 %tobool.i536, label %if.then163, label %if.end.i541, !dbg !1460

if.end.i541:                                      ; preds = %while.body.i537
  %incdec.ptr.i538 = getelementptr inbounds i8* %a.addr.08.i535, i64 1, !dbg !1461
  %incdec.ptr3.i539 = getelementptr inbounds i8* %b.addr.09.i534, i64 1, !dbg !1462
  %94 = load i8* %incdec.ptr.i538, align 1, !dbg !1458, !tbaa !1299
  %95 = load i8* %incdec.ptr3.i539, align 1, !dbg !1458, !tbaa !1299
  %cmp.i540 = icmp eq i8 %94, %95, !dbg !1458
  br i1 %cmp.i540, label %while.body.i537, label %lor.lhs.false158, !dbg !1458

lor.lhs.false158:                                 ; preds = %if.end.i541
  br i1 %cmp7.i279, label %while.body.i526, label %if.else175, !dbg !1458

while.body.i526:                                  ; preds = %if.end.i530, %lor.lhs.false158
  %96 = phi i8 [ %97, %if.end.i530 ], [ 45, %lor.lhs.false158 ]
  %b.addr.09.i523 = phi i8* [ %incdec.ptr3.i528, %if.end.i530 ], [ getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), %lor.lhs.false158 ]
  %a.addr.08.i524 = phi i8* [ %incdec.ptr.i527, %if.end.i530 ], [ %11, %lor.lhs.false158 ]
  %tobool.i525 = icmp eq i8 %96, 0, !dbg !1460
  br i1 %tobool.i525, label %if.then163, label %if.end.i530, !dbg !1460

if.end.i530:                                      ; preds = %while.body.i526
  %incdec.ptr.i527 = getelementptr inbounds i8* %a.addr.08.i524, i64 1, !dbg !1461
  %incdec.ptr3.i528 = getelementptr inbounds i8* %b.addr.09.i523, i64 1, !dbg !1462
  %97 = load i8* %incdec.ptr.i527, align 1, !dbg !1458, !tbaa !1299
  %98 = load i8* %incdec.ptr3.i528, align 1, !dbg !1458, !tbaa !1299
  %cmp.i529 = icmp eq i8 %97, %98, !dbg !1458
  br i1 %cmp.i529, label %while.body.i526, label %if.else175, !dbg !1458

if.then163:                                       ; preds = %while.body.i526, %while.body.i537
  %inc165 = add nsw i32 %k.0842, 1, !dbg !1463
  %cmp166 = icmp eq i32 %inc165, %0, !dbg !1463
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !1463

if.then168:                                       ; preds = %if.then163
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0)), !dbg !1465
  unreachable

if.end169:                                        ; preds = %if.then163
  %inc170 = add nsw i32 %k.0842, 2, !dbg !1466
  %idxprom171 = sext i32 %inc165 to i64, !dbg !1466
  %arrayidx172 = getelementptr inbounds i8** %1, i64 %idxprom171, !dbg !1466
  %99 = load i8** %arrayidx172, align 8, !dbg !1466, !tbaa !1294
  %100 = load i8* %99, align 1, !dbg !1467, !tbaa !1299
  %tobool.i290 = icmp eq i8 %100, 0, !dbg !1467
  br i1 %tobool.i290, label %if.then.i291, label %while.body.i292, !dbg !1467

if.then.i291:                                     ; preds = %if.end169
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !1467
  unreachable

while.body.i292:                                  ; preds = %if.then10.i, %if.end169
  %101 = phi i8 [ %103, %if.then10.i ], [ %100, %if.end169 ]
  %s.pn.i = phi i8* [ %incdec.ptr26.i, %if.then10.i ], [ %99, %if.end169 ]
  %res.025.i = phi i64 [ %add.i, %if.then10.i ], [ 0, %if.end169 ]
  %incdec.ptr26.i = getelementptr inbounds i8* %s.pn.i, i64 1, !dbg !1468
  %.off.i = add i8 %101, -48, !dbg !1469
  %102 = icmp ult i8 %.off.i, 10, !dbg !1469
  br i1 %102, label %if.then10.i, label %if.else13.i, !dbg !1469

if.then10.i:                                      ; preds = %while.body.i292
  %conv.i = sext i8 %101 to i64, !dbg !1470
  %mul.i = mul nsw i64 %res.025.i, 10, !dbg !1471
  %sub.i = add i64 %conv.i, -48, !dbg !1471
  %add.i = add i64 %sub.i, %mul.i, !dbg !1471
  %103 = load i8* %incdec.ptr26.i, align 1, !dbg !1468, !tbaa !1299
  %tobool1.i = icmp eq i8 %103, 0, !dbg !1468
  br i1 %tobool1.i, label %__str_to_int.exit, label %while.body.i292, !dbg !1468

if.else13.i:                                      ; preds = %while.body.i292
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !1472
  unreachable

__str_to_int.exit:                                ; preds = %if.then10.i
  %conv174 = trunc i64 %add.i to i32, !dbg !1466
  br label %while.cond.backedge, !dbg !1473

if.else175:                                       ; preds = %if.end.i530, %lor.lhs.false158, %if.else153, %lor.lhs.false146, %if.else141, %lor.lhs.false134, %if.else129, %lor.lhs.false122, %if.else117, %lor.lhs.false100, %if.else95, %lor.lhs.false72, %if
  %cmp.i277 = icmp eq i32 %10, 1024, !dbg !1474
  br i1 %cmp.i277, label %if.then.i, label %__add_arg.exit, !dbg !1474

if.then.i:                                        ; preds = %if.else175
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !1477
  unreachable

__add_arg.exit:                                   ; preds = %if.else175
  %inc177 = add nsw i32 %k.0842, 1, !dbg !1475
  %idxprom.i = sext i32 %10 to i64, !dbg !1478
  %arrayidx.i = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i, !dbg !1478
  store i8* %11, i8** %arrayidx.i, align 8, !dbg !1478, !tbaa !1294
  %inc.i = add nsw i32 %10, 1, !dbg !1479
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %sym_files.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_files.0.be, %while.cond.backedge ]
  %sym_file_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_file_len.0.be, %while.cond.backedge ]
  %sym_stdin_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdin_len.0.be, %while.cond.backedge ]
  %sym_stdout_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdout_flag.0.be, %while.cond.backedge ]
  %save_all_writes_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %save_all_writes_flag.0.be, %while.cond.backedge ]
  %fd_fail.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %fd_fail.0.be, %while.cond.backedge ]
  %.lcssa648 = phi i32 [ 0, %while.cond.preheader ], [ %.be, %while.cond.backedge ]
  %add188 = add nsw i32 %.lcssa648, 1, !dbg !1480
  %conv189 = sext i32 %add188 to i64, !dbg !1480
  %int_cast_to_i64 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !1480
  %mul = shl nsw i64 %conv189, 3, !dbg !1480
  %call190 = call noalias i8* @malloc(i64 %mul) #5, !dbg !1480
  %104 = bitcast i8* %call190 to i8**, !dbg !1480
  call void @klee_mark_global(i8* %call190) #5, !dbg !1481
  %conv191 = sext i32 %.lcssa648 to i64, !dbg !1482
  %int_cast_to_i641 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1482
  %mul192 = shl nsw i64 %conv191, 3, !dbg !1482
  %105 = call i8* @memcpy(i8* %call190, i8* %2, i64 %mul192)
  %arrayidx194 = getelementptr inbounds i8** %104, i64 %conv191, !dbg !1483
  store i8* null, i8** %arrayidx194, align 8, !dbg !1483, !tbaa !1294
  store i32 %.lcssa648, i32* %argcPtr, align 4, !dbg !1484, !tbaa !1289
  store i8** %104, i8*** %argvPtr, align 8, !dbg !1485, !tbaa !1294
  call void @klee_init_fds(i32 %sym_files.0.lcssa, i32 %sym_file_len.0.lcssa, i32 %sym_stdin_len.0.lcssa, i32 %sym_stdout_flag.0.lcssa, i32 %save_all_writes_flag.0.lcssa, i32 %fd_fail.0.lcssa) #5, !dbg !1486
  ret void, !dbg !1487
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

declare void @klee_mark_global(i8*) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

declare void @klee_posix_prefer_cex(i8*, i64) #7

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @__emit_error(i8* %msg) #9 {
entry:
  tail call void @klee_report_error(i8* getelementptr inbounds ([46 x i8]* @.str25, i64 0, i64 0), i32 24, i8* %msg, i8* getelementptr inbounds ([9 x i8]* @.str2610, i64 0, i64 0)) #14, !dbg !1488
  unreachable, !dbg !1488
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @__get_sym_str(i32 %numChars, i8* %name) #4 {
entry:
  %add = add nsw i32 %numChars, 1, !dbg !1489
  %conv = sext i32 %add to i64, !dbg !1489
  %call = tail call noalias i8* @malloc(i64 %conv) #5, !dbg !1489
  tail call void @klee_mark_global(i8* %call) #5, !dbg !1490
  tail call void @klee_make_symbolic(i8* %call, i64 %conv, i8* %name) #5, !dbg !1491
  %cmp18 = icmp sgt i32 %numChars, 0, !dbg !1492
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1492

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !1494
  %0 = load i8* %arrayidx, align 1, !dbg !1494, !tbaa !1299
  %cmp.i = icmp sgt i8 %0, 31, !dbg !1495
  %cmp3.i = icmp ne i8 %0, 127, !dbg !1495
  %cmp3..i = and i1 %cmp.i, %cmp3.i, !dbg !1495
  %conv5 = zext i1 %cmp3..i to i64, !dbg !1494
  tail call void @klee_posix_prefer_cex(i8* %call, i64 %conv5) #5, !dbg !1494
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1492
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1492
  %exitcond = icmp eq i32 %lftr.wideiv, %numChars, !dbg !1492
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1492

for.end:                                          ; preds = %for.body, %entry
  %idxprom6 = sext i32 %numChars to i64, !dbg !1496
  %arrayidx7 = getelementptr inbounds i8* %call, i64 %idxprom6, !dbg !1496
  store i8 0, i8* %arrayidx7, align 1, !dbg !1496, !tbaa !1299
  ret i8* %call, !dbg !1497
}

; Function Attrs: nounwind uwtable
define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %stdin_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) #4 {
entry:
  %x.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %s = alloca %struct.stat64.16, align 8
  %0 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !1498
  %1 = call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([7 x i8]* @klee_init_fds.name, i64 0, i64 0), i64 7)
  %2 = bitcast %struct.stat64.16* %s to i8*, !dbg !1499
  %call.i = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), %struct.stat64.16* %s) #5, !dbg !1500
  store i32 %n_files, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1503, !tbaa !1504
  %conv = zext i32 %n_files to i64, !dbg !1506
  %mul = mul i64 %conv, 24, !dbg !1506
  %call1 = call noalias i8* @malloc(i64 %mul) #5, !dbg !1506
  %3 = bitcast i8* %call1 to %struct.exe_disk_file_t.17*, !dbg !1506
  store %struct.exe_disk_file_t.17* %3, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1506, !tbaa !1507
  %cmp29 = icmp eq i32 %n_files, 0, !dbg !1508
  br i1 %cmp29, label %for.end, label %for.body, !dbg !1508

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %4 = phi %struct.exe_disk_file_t.17* [ %.pre, %for.body.for.body_crit_edge ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %5 = trunc i64 %indvars.iv to i8, !dbg !1510
  %add = add i8 %5, 65, !dbg !1510
  store i8 %add, i8* %0, align 1, !dbg !1510, !tbaa !1299
  %arrayidx4 = getelementptr inbounds %struct.exe_disk_file_t.17* %4, i64 %indvars.iv, !dbg !1512
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* %arrayidx4, i32 %file_length, i8* %0, %struct.stat64.16* %s), !dbg !1512
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1508
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1508
  %exitcond = icmp eq i32 %lftr.wideiv, %n_files, !dbg !1508
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !1508

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1512, !tbaa !1507
  br label %for.body, !dbg !1508

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %stdin_length, 0, !dbg !1513
  br i1 %tobool, label %if.else, label %if.then, !dbg !1513

if.then:                                          ; preds = %for.end
  %call5 = call noalias i8* @malloc(i64 24) #5, !dbg !1515
  %6 = bitcast i8* %call5 to %struct.exe_disk_file_t.17*, !dbg !1515
  store %struct.exe_disk_file_t.17* %6, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 1), align 8, !dbg !1515, !tbaa !1517
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* %6, i32 %stdin_length, i8* getelementptr inbounds ([6 x i8]* @.str128, i64 0, i64 0), %struct.stat64.16* %s), !dbg !1518
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 1), align 8, !dbg !1519, !tbaa !1517
  store %struct.exe_disk_file_t.17* %7, %struct.exe_disk_file_t.17** getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 8, !dbg !1519, !tbaa !1520
  br label %if.end, !dbg !1523

if.else:                                          ; preds = %for.end
  store %struct.exe_disk_file_t.17* null, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 1), align 8, !dbg !1524, !tbaa !1517
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 %max_failures, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1525, !tbaa !1526
  %tobool6 = icmp eq i32 %max_failures, 0, !dbg !1527
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !1527

if.then7:                                         ; preds = %if.end
  %call8 = call noalias i8* @malloc(i64 4) #5, !dbg !1529
  %8 = bitcast i8* %call8 to i32*, !dbg !1529
  store i32* %8, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 6), align 8, !dbg !1529, !tbaa !1531
  %call9 = call noalias i8* @malloc(i64 4) #5, !dbg !1532
  %9 = bitcast i8* %call9 to i32*, !dbg !1532
  store i32* %9, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 7), align 8, !dbg !1532, !tbaa !1533
  %call10 = call noalias i8* @malloc(i64 4) #5, !dbg !1534
  %10 = bitcast i8* %call10 to i32*, !dbg !1534
  store i32* %10, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !1534, !tbaa !1535
  %call11 = call noalias i8* @malloc(i64 4) #5, !dbg !1536
  %11 = bitcast i8* %call11 to i32*, !dbg !1536
  store i32* %11, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 9), align 8, !dbg !1536, !tbaa !1537
  %call12 = call noalias i8* @malloc(i64 4) #5, !dbg !1538
  %12 = bitcast i8* %call12 to i32*, !dbg !1538
  store i32* %12, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 10), align 8, !dbg !1538, !tbaa !1539
  call void @klee_make_symbolic(i8* %call8, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str229, i64 0, i64 0)) #5, !dbg !1540
  %13 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 7), align 8, !dbg !1541, !tbaa !1533
  %14 = bitcast i32* %13 to i8*, !dbg !1541
  call void @klee_make_symbolic(i8* %14, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str330, i64 0, i64 0)) #5, !dbg !1541
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !1542, !tbaa !1535
  %16 = bitcast i32* %15 to i8*, !dbg !1542
  call void @klee_make_symbolic(i8* %16, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str431, i64 0, i64 0)) #5, !dbg !1542
  %17 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 9), align 8, !dbg !1543, !tbaa !1537
  %18 = bitcast i32* %17 to i8*, !dbg !1543
  call void @klee_make_symbolic(i8* %18, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str532, i64 0, i64 0)) #5, !dbg !1543
  %19 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 10), align 8, !dbg !1544, !tbaa !1539
  %20 = bitcast i32* %19 to i8*, !dbg !1544
  call void @klee_make_symbolic(i8* %20, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str633, i64 0, i64 0)) #5, !dbg !1544
  br label %if.end13, !dbg !1545

if.end13:                                         ; preds = %if.then7, %if.end
  %tobool14 = icmp eq i32 %sym_stdout_flag, 0, !dbg !1546
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !1546

if.then15:                                        ; preds = %if.end13
  %call16 = call noalias i8* @malloc(i64 24) #5, !dbg !1548
  %21 = bitcast i8* %call16 to %struct.exe_disk_file_t.17*, !dbg !1548
  store %struct.exe_disk_file_t.17* %21, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !1548, !tbaa !1550
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* %21, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str734, i64 0, i64 0), %struct.stat64.16* %s), !dbg !1551
  %22 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !1552, !tbaa !1550
  store %struct.exe_disk_file_t.17* %22, %struct.exe_disk_file_t.17** getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !1552, !tbaa !1520
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 3), align 8, !dbg !1553, !tbaa !1554
  br label %if.end18, !dbg !1555

if.else17:                                        ; preds = %if.end13
  store %struct.exe_disk_file_t.17* null, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !1556, !tbaa !1550
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  store i32 %save_all_writes_flag, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 3), align 8, !dbg !1557, !tbaa !1558
  %23 = bitcast i32* %x.i to i8*, !dbg !1560
  call void @klee_make_symbolic(i8* %23, i64 4, i8* getelementptr inbounds ([14 x i8]* @.str835, i64 0, i64 0)) #5, !dbg !1562
  %24 = load i32* %x.i, align 4, !dbg !1563, !tbaa !1289
  store i32 %24, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 2), align 4, !dbg !1561, !tbaa !1564
  %cmp20 = icmp eq i32 %24, 1, !dbg !1565
  %conv22 = zext i1 %cmp20 to i64, !dbg !1565
  call void @klee_assume(i64 %conv22) #5, !dbg !1565
  ret void, !dbg !1566
}

declare i32 @klee_is_symbolic(i64) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* nocapture %dfile, i32 %size, i8* %name, %struct.stat64.16* nocapture readonly %defaults) #4 {
entry:
  %sname = alloca [64 x i8], align 16
  %call = call noalias i8* @malloc(i64 144) #5, !dbg !1567
  %0 = bitcast i8* %call to %struct.stat64.16*, !dbg !1567
  %1 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 0, !dbg !1568
  %2 = load i8* %name, align 1, !dbg !1569, !tbaa !1299
  %tobool148 = icmp eq i8 %2, 0, !dbg !1569
  %sub.ptr.rhs.cast2 = ptrtoint i8* %name to i64, !dbg !1571
  br i1 %tobool148, label %for.end, label %for.body, !dbg !1569

for.body:                                         ; preds = %for.body, %entry
  %arrayidx4152 = phi i8* [ %arrayidx4, %for.body ], [ %1, %entry ]
  %3 = phi i8 [ %4, %for.body ], [ %2, %entry ]
  %sp.0151 = phi i8* [ %incdec.ptr, %for.body ], [ %name, %entry ]
  store i8 %3, i8* %arrayidx4152, align 1, !dbg !1572, !tbaa !1299
  %incdec.ptr = getelementptr inbounds i8* %sp.0151, i64 1, !dbg !1569
  %4 = load i8* %incdec.ptr, align 1, !dbg !1569, !tbaa !1299
  %tobool = icmp eq i8 %4, 0, !dbg !1569
  %sub.ptr.lhs.cast1 = ptrtoint i8* %incdec.ptr to i64, !dbg !1571
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2, !dbg !1571
  %arrayidx4 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %sub.ptr.sub3, !dbg !1571
  br i1 %tobool, label %for.end, label %for.body, !dbg !1569

for.end:                                          ; preds = %for.body, %entry
  %arrayidx4.lcssa = phi i8* [ %1, %entry ], [ %arrayidx4, %for.body ]
  %5 = call i8* @memcpy(i8* %arrayidx4.lcssa, i8* getelementptr inbounds ([6 x i8]* @.str936, i64 0, i64 0), i64 6)
  %tobool5 = icmp eq i32 %size, 0, !dbg !1573
  br i1 %tobool5, label %cond.false, label %cond.end, !dbg !1573

cond.false:                                       ; preds = %for.end
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str1037, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str1138, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([88 x i8]* 
  unreachable, !dbg !1573

cond.end:                                         ; preds = %for.end
  %size6 = getelementptr inbounds %struct.exe_disk_file_t.17* %dfile, i64 0, i32 0, !dbg !1574
  store i32 %size, i32* %size6, align 4, !dbg !1574, !tbaa !1575
  %conv = zext i32 %size to i64, !dbg !1577
  %call8 = call noalias i8* @malloc(i64 %conv) #5, !dbg !1577
  %contents = getelementptr inbounds %struct.exe_disk_file_t.17* %dfile, i64 0, i32 1, !dbg !1577
  store i8* %call8, i8** %contents, align 8, !dbg !1577, !tbaa !1578
  call void @klee_make_symbolic(i8* %call8, i64 %conv, i8* %name) #5, !dbg !1579
  call void @klee_make_symbolic(i8* %call, i64 144, i8* %1) #5, !dbg !1580
  %st_ino = getelementptr inbounds i8* %call, i64 8, !dbg !1581
  %6 = bitcast i8* %st_ino to i64*, !dbg !1581
  %7 = load i64* %6, align 8, !dbg !1581, !tbaa !1583
  %call12 = call i32 @klee_is_symbolic(i64 %7) #5, !dbg !1581
  %tobool13 = icmp eq i32 %call12, 0, !dbg !1581
  %8 = load i64* %6, align 8, !dbg !1581, !tbaa !1583
  %and = and i64 %8, 2147483647, !dbg !1581
  %cmp = icmp eq i64 %and, 0, !dbg !1581
  %or.cond = and i1 %tobool13, %cmp, !dbg !1581
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1581

if.then:                                          ; preds = %cond.end
  %st_ino16 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 1, !dbg !1586
  %9 = load i64* %st_ino16, align 8, !dbg !1586, !tbaa !1583
  store i64 %9, i64* %6, align 8, !dbg !1586, !tbaa !1583
  br label %if.end, !dbg !1586

if.end:                                           ; preds = %if.then, %cond.end
  %10 = phi i64 [ %9, %if.then ], [ %8, %cond.end ]
  %and19 = and i64 %10, 2147483647, !dbg !1587
  %cmp20 = icmp ne i64 %and19, 0, !dbg !1587
  %conv22 = zext i1 %cmp20 to i64, !dbg !1587
  call void @klee_assume(i64 %conv22) #5, !dbg !1587
  %st_blksize = getelementptr inbounds i8* %call, i64 56, !dbg !1588
  %11 = bitcast i8* %st_blksize to i64*, !dbg !1588
  %12 = load i64* %11, align 8, !dbg !1588, !tbaa !1589
  %cmp24 = icmp ult i64 %12, 65536, !dbg !1588
  %conv26 = zext i1 %cmp24 to i64, !dbg !1588
  call void @klee_assume(i64 %conv26) #5, !dbg !1588
  %st_mode = getelementptr inbounds i8* %call, i64 24, !dbg !1590
  %13 = bitcast i8* %st_mode to i32*, !dbg !1590
  %14 = load i32* %13, align 4, !dbg !1590, !tbaa !1591
  %and27 = and i32 %14, -61952, !dbg !1590
  %lnot = icmp eq i32 %and27, 0, !dbg !1590
  %conv29 = zext i1 %lnot to i64, !dbg !1590
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv29) #5, !dbg !1590
  %st_dev = bitcast i8* %call to i64*, !dbg !1592
  %15 = load i64* %st_dev, align 8, !dbg !1592, !tbaa !1593
  %st_dev30 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 0, !dbg !1592
  %16 = load i64* %st_dev30, align 8, !dbg !1592, !tbaa !1593
  %cmp31 = icmp eq i64 %15, %16, !dbg !1592
  %conv33 = zext i1 %cmp31 to i64, !dbg !1592
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv33) #5, !dbg !1592
  %st_rdev = getelementptr inbounds i8* %call, i64 40, !dbg !1594
  %17 = bitcast i8* %st_rdev to i64*, !dbg !1594
  %18 = load i64* %17, align 8, !dbg !1594, !tbaa !1595
  %st_rdev34 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 7, !dbg !1594
  %19 = load i64* %st_rdev34, align 8, !dbg !1594, !tbaa !1595
  %cmp35 = icmp eq i64 %18, %19, !dbg !1594
  %conv37 = zext i1 %cmp35 to i64, !dbg !1594
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv37) #5, !dbg !1594
  %20 = load i32* %13, align 4, !dbg !1596, !tbaa !1591
  %and39 = and i32 %20, 448, !dbg !1596
  %cmp40 = icmp eq i32 %and39, 384, !dbg !1596
  %conv42 = zext i1 %cmp40 to i64, !dbg !1596
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv42) #5, !dbg !1596
  %21 = load i32* %13, align 4, !dbg !1597, !tbaa !1591
  %and44 = and i32 %21, 56, !dbg !1597
  %cmp45 = icmp eq i32 %and44, 32, !dbg !1597
  %conv47 = zext i1 %cmp45 to i64, !dbg !1597
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv47) #5, !dbg !1597
  %22 = load i32* %13, align 4, !dbg !1598, !tbaa !1591
  %and49 = and i32 %22, 7, !dbg !1598
  %cmp50 = icmp eq i32 %and49, 4, !dbg !1598
  %conv52 = zext i1 %cmp50 to i64, !dbg !1598
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv52) #5, !dbg !1598
  %23 = load i32* %13, align 4, !dbg !1599, !tbaa !1591
  %and54 = and i32 %23, 61440, !dbg !1599
  %cmp55 = icmp eq i32 %and54, 32768, !dbg !1599
  %conv57 = zext i1 %cmp55 to i64, !dbg !1599
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv57) #5, !dbg !1599
  %st_nlink = getelementptr inbounds i8* %call, i64 16, !dbg !1600
  %24 = bitcast i8* %st_nlink to i64*, !dbg !1600
  %25 = load i64* %24, align 8, !dbg !1600, !tbaa !1601
  %cmp58 = icmp eq i64 %25, 1, !dbg !1600
  %conv60 = zext i1 %cmp58 to i64, !dbg !1600
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv60) #5, !dbg !1600
  %st_uid = getelementptr inbounds i8* %call, i64 28, !dbg !1602
  %26 = bitcast i8* %st_uid to i32*, !dbg !1602
  %27 = load i32* %26, align 4, !dbg !1602, !tbaa !1603
  %st_uid61 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 4, !dbg !1602
  %28 = load i32* %st_uid61, align 4, !dbg !1602, !tbaa !1603
  %cmp62 = icmp eq i32 %27, %28, !dbg !1602
  %conv64 = zext i1 %cmp62 to i64, !dbg !1602
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv64) #5, !dbg !1602
  %st_gid = getelementptr inbounds i8* %call, i64 32, !dbg !1604
  %29 = bitcast i8* %st_gid to i32*, !dbg !1604
  %30 = load i32* %29, align 4, !dbg !1604, !tbaa !1605
  %st_gid65 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 5, !dbg !1604
  %31 = load i32* %st_gid65, align 4, !dbg !1604, !tbaa !1605
  %cmp66 = icmp eq i32 %30, %31, !dbg !1604
  %conv68 = zext i1 %cmp66 to i64, !dbg !1604
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv68) #5, !dbg !1604
  %32 = load i64* %11, align 8, !dbg !1606, !tbaa !1589
  %cmp70 = icmp eq i64 %32, 4096, !dbg !1606
  %conv72 = zext i1 %cmp70 to i64, !dbg !1606
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv72) #5, !dbg !1606
  %st_atim = getelementptr inbounds i8* %call, i64 72, !dbg !1607
  %tv_sec = bitcast i8* %st_atim to i64*, !dbg !1607
  %33 = load i64* %tv_sec, align 8, !dbg !1607, !tbaa !1608
  %tv_sec74 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 11, i32 0, !dbg !1607
  %34 = load i64* %tv_sec74, align 8, !dbg !1607, !tbaa !1608
  %cmp75 = icmp eq i64 %33, %34, !dbg !1607
  %conv77 = zext i1 %cmp75 to i64, !dbg !1607
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv77) #5, !dbg !1607
  %st_mtim = getelementptr inbounds i8* %call, i64 88, !dbg !1609
  %tv_sec78 = bitcast i8* %st_mtim to i64*, !dbg !1609
  %35 = load i64* %tv_sec78, align 8, !dbg !1609, !tbaa !1610
  %tv_sec80 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 12, i32 0, !dbg !1609
  %36 = load i64* %tv_sec80, align 8, !dbg !1609, !tbaa !1610
  %cmp81 = icmp eq i64 %35, %36, !dbg !1609
  %conv83 = zext i1 %cmp81 to i64, !dbg !1609
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv83) #5, !dbg !1609
  %st_ctim = getelementptr inbounds i8* %call, i64 104, !dbg !1611
  %tv_sec84 = bitcast i8* %st_ctim to i64*, !dbg !1611
  %37 = load i64* %tv_sec84, align 8, !dbg !1611, !tbaa !1612
  %tv_sec86 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 13, i32 0, !dbg !1611
  %38 = load i64* %tv_sec86, align 8, !dbg !1611, !tbaa !1612
  %cmp87 = icmp eq i64 %37, %38, !dbg !1611
  %conv89 = zext i1 %cmp87 to i64, !dbg !1611
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv89) #5, !dbg !1611
  %39 = load i32* %size6, align 4, !dbg !1613, !tbaa !1575
  %conv91 = zext i32 %39 to i64, !dbg !1613
  %st_size = getelementptr inbounds i8* %call, i64 48, !dbg !1613
  %40 = bitcast i8* %st_size to i64*, !dbg !1613
  store i64 %conv91, i64* %40, align 8, !dbg !1613, !tbaa !1614
  %st_blocks = getelementptr inbounds i8* %call, i64 64, !dbg !1615
  %41 = bitcast i8* %st_blocks to i64*, !dbg !1615
  store i64 8, i64* %41, align 8, !dbg !1615, !tbaa !1616
  %stat = getelementptr inbounds %struct.exe_disk_file_t.17* %dfile, i64 0, i32 2, !dbg !1617
  store %struct.stat64.16* %0, %struct.stat64.16** %stat, align 8, !dbg !1617, !tbaa !1618
  ret void, !dbg !1619
}

; Function Attrs: nounwind uwtable
define i32 @open64(i8* %pathname, i32 %flags, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag.14], align 16
  %and = and i32 %flags, 64, !dbg !1620
  %tobool = icmp eq i32 %and, 0, !dbg !1620
  br i1 %tobool, label %if.end, label %if.then, !dbg !1620

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag.14]* %ap to i8*, !dbg !1621
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1621
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 0, !dbg !1622
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !1622
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1622
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1622

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 3, !dbg !1622
  %reg_save_area = load i8** %0, align 16, !dbg !1622
  %1 = sext i32 %gp_offset to i64, !dbg !1622
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !1622
  %3 = add i32 %gp_offset, 8, !dbg !1622
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !1622
  br label %vaarg.end, !dbg !1622

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 2, !dbg !1622
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !1622
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !1622
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1622
  br label %vaarg.end, !dbg !1622

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !1622
  %4 = load i32* %vaarg.addr, align 4, !dbg !1622
  call void @llvm.va_end(i8* %arraydecay1), !dbg !1623
  br label %if.end, !dbg !1624

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) #5, !dbg !1625
  ret i32 %call, !dbg !1625
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @openat64(i32 %fd, i8* %pathname, i32 %flags, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag.14], align 16
  %and = and i32 %flags, 64, !dbg !1626
  %tobool = icmp eq i32 %and, 0, !dbg !1626
  br i1 %tobool, label %if.end, label %if.then, !dbg !1626

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag.14]* %ap to i8*, !dbg !1627
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1627
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 0, !dbg !1628
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !1628
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1628
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1628

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 3, !dbg !1628
  %reg_save_area = load i8** %0, align 16, !dbg !1628
  %1 = sext i32 %gp_offset to i64, !dbg !1628
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !1628
  %3 = add i32 %gp_offset, 8, !dbg !1628
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !1628
  br label %vaarg.end, !dbg !1628

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 2, !dbg !1628
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !1628
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !1628
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1628
  br label %vaarg.end, !dbg !1628

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !1628
  %4 = load i32* %vaarg.addr, align 4, !dbg !1628
  call void @llvm.va_end(i8* %arraydecay1), !dbg !1629
  br label %if.end, !dbg !1630

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_openat(i32 %fd, i8* %pathname, i32 %flags, i32 %mode.0) #5, !dbg !1631
  ret i32 %call, !dbg !1631
}

; Function Attrs: nounwind uwtable
define i64 @lseek64(i32 %fd, i64 %offset, i32 %whence) #4 {
entry:
  %call = tail call i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #5, !dbg !1632
  ret i64 %call, !dbg !1632
}

; Function Attrs: nounwind uwtable
define i32 @__xstat64(i32 %vers, i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1633
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_stat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1633
  ret i32 %call, !dbg !1633
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @stat64(i8* %path, %struct.stat64.16* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1634
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_stat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1634
  ret i32 %call, !dbg !1634
}

; Function Attrs: nounwind uwtable
define i32 @__lxstat64(i32 %vers, i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1635
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_lstat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1635
  ret i32 %call, !dbg !1635
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @lstat64(i8* %path, %struct.stat64.16* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1636
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_lstat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1636
  ret i32 %call, !dbg !1636
}

; Function Attrs: nounwind uwtable
define i32 @__fxstat64(i32 %vers, i32 %fd, %struct.stat64.16* %buf) #4 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1637
  %call = tail call i32 bitcast (i32 (i32, %struct.stat64.16*)* @__fd_fstat to i32 (i32, %struct.stat64.9*)*)(i32 %fd, %struct.stat64.9* %0) #5, !dbg !1637
  ret i32 %call, !dbg !1637
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstat64(i32 %fd, %struct.stat64.16* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1638
  %call = tail call i32 bitcast (i32 (i32, %struct.stat64.16*)* @__fd_fstat to i32 (i32, %struct.stat64.9*)*)(i32 %fd, %struct.stat64.9* %0) #5, !dbg !1638
  ret i32 %call, !dbg !1638
}

; Function Attrs: nounwind uwtable
define i32 @ftruncate64(i32 %fd, i64 %length) #4 {
entry:
  %call = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) #5, !dbg !1639
  ret i32 %call, !dbg !1639
}

; Function Attrs: nounwind uwtable
define weak i32 @statfs64(i8* %path, %struct.statfs.11* %buf) #4 {
entry:
  %call = tail call i32 @__fd_statfs(i8* %path, %struct.statfs.11* %buf) #5, !dbg !1640
  ret i32 %call, !dbg !1640
}

; Function Attrs: nounwind uwtable
define i32 @getdents64(i32 %fd, %struct.dirent.12* %dirp, i32 %count) #4 {
entry:
  %0 = bitcast %struct.dirent.12* %dirp to %struct.dirent64.13*, !dbg !1641
  %call = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent64.13* %0, i32 %count) #5, !dbg !1641
  ret i32 %call, !dbg !1641
}

; Function Attrs: nounwind uwtable
define i32 @access(i8* %pathname, i32 %mode) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !1642, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !1644
  %cmp.i = icmp eq i8 %0, 0, !dbg !1644
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !1644

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1644
  %1 = load i8* %arrayidx2.i, align 1, !dbg !1644, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !1644
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !1644

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1646, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !1646
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !1646

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !1646
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !1646

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1647
  %sext.i = shl i32 %i.027.i, 24, !dbg !1647
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1647
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1647
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1647
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1647
  %inc.i = add i32 %i.027.i, 1, !dbg !1646
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1647

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1648
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1648, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !1649
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !1649, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !1649
  %5 = load i64* %st_ino.i, align 8, !dbg !1649, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !1649
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !1648
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1651
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !1649
  br i1 %or.cond, label %if.else, label %return, !dbg !1649

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %pathname to i64, !dbg !1652
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !1652
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !1652
  %cmp.i.i = icmp eq i8* %7, %pathname, !dbg !1655
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1655
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1655
  br label %for.cond.i9, !dbg !1656

for.cond.i9:                                      ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i11, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !1657, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !1658
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1658
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1658
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1658

if.then.i:                                        ; preds = %for.cond.i9
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1659

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1662, !tbaa !1299
  br label %__concretize_string.exit, !dbg !1664

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1665
  store i8 47, i8* %sc.0.i, align 1, !dbg !1665, !tbaa !1299
  br label %for.inc.i, !dbg !1668

if.else7.i:                                       ; preds = %for.cond.i9
  %conv8.i = sext i8 %8 to i64, !dbg !1669
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1669
  %conv10.i10 = trunc i64 %call9.i to i8, !dbg !1669
  %cmp13.i = icmp eq i8 %conv10.i10, %8, !dbg !1670
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1670
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1670
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1671
  store i8 %conv10.i10, i8* %sc.0.i, align 1, !dbg !1671, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i10, 0, !dbg !1672
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1672

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i11 = add i32 %i.0.i, 1, !dbg !1656
  br label %for.cond.i9, !dbg !1656

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 21, i8* %pathname, i32 %mode) #5, !dbg !1654
  %conv = trunc i64 %call2 to i32, !dbg !1654
  %cmp = icmp eq i32 %conv, -1, !dbg !1674
  br i1 %cmp, label %if.then4, label %return, !dbg !1674

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #5, !dbg !1676
  %call6 = tail call i32* @__errno_location() #1, !dbg !1676
  store i32 %call5, i32* %call6, align 4, !dbg !1676, !tbaa !1289
  br label %return, !dbg !1676

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then13.i
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then13.i ]
  ret i32 %retval.0, !dbg !1677
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #6

declare i32 @klee_get_errno() #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #11

; Function Attrs: nounwind uwtable
define i32 @umask(i32 %mask) #4 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1678, !tbaa !1679
  %and = and i32 %mask, 511, !dbg !1680
  store i32 %and, i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1680, !tbaa !1679
  ret i32 %0, !dbg !1681
}

; Function Attrs: nounwind uwtable
define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) #4 {
entry:
  br label %for.body, !dbg !1682

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !1682
  %cmp = icmp slt i32 %0, 32, !dbg !1682
  br i1 %cmp, label %for.body, label %for.end, !dbg !1682

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %fd.0110 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %flags1 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !1684
  %1 = load i32* %flags1, align 4, !dbg !1684, !tbaa !1686
  %and = and i32 %1, 1, !dbg !1684
  %tobool = icmp eq i32 %and, 0, !dbg !1684
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1682
  %inc = add nsw i32 %fd.0110, 1, !dbg !1682
  br i1 %tobool, label %for.end, label %for.cond, !dbg !1684

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.0110, %for.body ], [ %inc, %for.cond ]
  %cmp2 = icmp eq i32 %fd.0.lcssa, 32, !dbg !1687
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1687

if.then3:                                         ; preds = %for.end
  %call = tail call i32* @__errno_location() #1, !dbg !1689
  store i32 24, i32* %call, align 4, !dbg !1689, !tbaa !1289
  br label %return, !dbg !1691

if.end4:                                          ; preds = %for.end
  %idxprom5 = sext i32 %fd.0.lcssa to i64, !dbg !1692
  %arrayidx6 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, !dbg !1692
  %2 = bitcast %struct.exe_file_t* %arrayidx6 to i8*, !dbg !1693
  %3 = call i8* @memset(i8* %2, i32 0, i64 24)
  %4 = load i8* %pathname, align 1, !dbg !1694, !tbaa !1299
  %conv.i = sext i8 %4 to i32, !dbg !1696
  %cmp.i = icmp eq i8 %4, 0, !dbg !1696
  br i1 %cmp.i, label %if.else45, label %lor.lhs.false.i, !dbg !1696

lor.lhs.false.i:                                  ; preds = %if.end4
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1696
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1696, !tbaa !1299
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1696
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else45, !dbg !1696

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1697, !tbaa !1504
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1697
  br i1 %cmp626.i, label %if.else45, label %for.body.i, !dbg !1697

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %6, !dbg !1697
  br i1 %cmp6.i, label %for.body.i, label %if.else45, !dbg !1697

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1698
  %sext.i = shl i32 %i.027.i, 24, !dbg !1698
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1698
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1698
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1698
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1698
  %inc.i = add i32 %i.027.i, 1, !dbg !1697
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1698

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1699
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1699, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i, i32 2, !dbg !1700
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !1700, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !1700
  %9 = load i64* %st_ino.i, align 8, !dbg !1700, !tbaa !1583
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1700
  br i1 %cmp15.i, label %if.else45, label %__get_sym_file.exit, !dbg !1700

__get_sym_file.exit:                              ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i, !dbg !1699
  %tobool8 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1701
  br i1 %tobool8, label %if.else45, label %if.then9, !dbg !1701

if.then9:                                         ; preds = %__get_sym_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 3, !dbg !1702
  store %struct.exe_disk_file_t.17* %arrayidx14.i, %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1702, !tbaa !1520
  %10 = and i32 %flags, 192, !dbg !1704
  switch i32 %10, label %if.end32 [
    i32 192, label %if.then14
    i32 128, label %if.then30
  ], !dbg !1704

if.then14:                                        ; preds = %if.then9
  %call15 = tail call i32* @__errno_location() #1, !dbg !1706
  store i32 17, i32* %call15, align 4, !dbg !1706, !tbaa !1289
  br label %return, !dbg !1708

if.then30:                                        ; preds = %if.then9
  tail call void @klee_warning(i8* getelementptr inbounds ([47 x i8]* @.str143, i64 0, i64 0)) #5, !dbg !1709
  %call31 = tail call i32* @__errno_location() #1, !dbg !1712
  store i32 13, i32* %call31, align 4, !dbg !1712, !tbaa !1289
  br label %return, !dbg !1713

if.end32:                                         ; preds = %if.then9
  %st_mode.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !1714
  %11 = load i32* %st_mode.i, align 4, !dbg !1714, !tbaa !1591
  %and1.i = and i32 %flags, 2, !dbg !1717
  %tobool2.i = icmp eq i32 %and1.i, 0, !dbg !1717
  %or15.i = and i32 %11, 292, !dbg !1719
  %tobool16.i = icmp eq i32 %or15.i, 0, !dbg !1719
  %or.cond37.i = or i1 %tobool2.i, %tobool16.i, !dbg !1719
  br i1 %or.cond37.i, label %has_permission.exit, label %if.then35, !dbg !1719

has_permission.exit:                              ; preds = %if.end32
  %12 = and i32 %flags, 3, !dbg !1721
  %not..i = icmp ne i32 %12, 0, !dbg !1721
  %or25.i = and i32 %11, 146, !dbg !1723
  %tobool26.i = icmp eq i32 %or25.i, 0, !dbg !1723
  %or.cond38.i = and i1 %not..i, %tobool26.i, !dbg !1723
  br i1 %or.cond38.i, label %if.then35, label %if.else, !dbg !1715

if.then35:                                        ; preds = %has_permission.exit, %if.end32
  %call36 = tail call i32* @__errno_location() #1, !dbg !1725
  store i32 13, i32* %call36, align 4, !dbg !1725, !tbaa !1289
  br label %return, !dbg !1727

if.else:                                          ; preds = %has_permission.exit
  %and39 = and i32 %11, -512, !dbg !1728
  %13 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1728, !tbaa !1679
  %neg = xor i32 %13, -1, !dbg !1728
  %and40 = and i32 %neg, %mode, !dbg !1728
  %or = or i32 %and40, %and39, !dbg !1728
  store i32 %or, i32* %st_mode.i, align 4, !dbg !1728, !tbaa !1591
  br label %if.end55, !dbg !1729

if.else45:                                        ; preds = %__get_sym_file.exit, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %if.end4
  %14 = ptrtoint i8* %pathname to i64, !dbg !1730
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #5, !dbg !1730
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !1730
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !1733
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1733
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1733
  br label %for.cond.i101, !dbg !1734

for.cond.i101:                                    ; preds = %for.inc.i, %if.else45
  %i.0.i = phi i32 [ 0, %if.else45 ], [ %inc.i103, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.else45 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !1735, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !1736
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1736
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1736
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1736

if.then.i:                                        ; preds = %for.cond.i101
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1737

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1738, !tbaa !1299
  br label %__concretize_string.exit, !dbg !1739

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1740
  store i8 47, i8* %sc.0.i, align 1, !dbg !1740, !tbaa !1299
  br label %for.inc.i, !dbg !1741

if.else7.i:                                       ; preds = %for.cond.i101
  %conv8.i = sext i8 %16 to i64, !dbg !1742
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1742
  %conv10.i102 = trunc i64 %call9.i to i8, !dbg !1742
  %cmp13.i = icmp eq i8 %conv10.i102, %16, !dbg !1743
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1743
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1743
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1744
  store i8 %conv10.i102, i8* %sc.0.i, align 1, !dbg !1744, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i102, 0, !dbg !1745
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1745

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i103 = add i32 %i.0.i, 1, !dbg !1734
  br label %for.cond.i101, !dbg !1734

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call47 = tail call i64 (i64, ...)* @syscall(i64 2, i8* %pathname, i32 %flags, i32 %mode) #5, !dbg !1732
  %conv = trunc i64 %call47 to i32, !dbg !1732
  %cmp48 = icmp eq i32 %conv, -1, !dbg !1746
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !1746

if.then50:                                        ; preds = %__concretize_string.exit
  %call51 = tail call i32 @klee_get_errno() #5, !dbg !1748
  %call52 = tail call i32* @__errno_location() #1, !dbg !1748
  store i32 %call51, i32* %call52, align 4, !dbg !1748, !tbaa !1289
  br label %return, !dbg !1750

if.end53:                                         ; preds = %__concretize_string.exit
  %fd54 = getelementptr inbounds %struct.exe_file_t* %arrayidx6, i64 0, i32 0, !dbg !1751
  store i32 %conv, i32* %fd54, align 8, !dbg !1751, !tbaa !1752
  %and57.pre = and i32 %flags, 3, !dbg !1753
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.else
  %and57.pre-phi = phi i32 [ %and57.pre, %if.end53 ], [ %12, %if.else ], !dbg !1753
  %flags56 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 1, !dbg !1755
  store i32 1, i32* %flags56, align 4, !dbg !1755, !tbaa !1686
  switch i32 %and57.pre-phi, label %if.else70 [
    i32 0, label %if.then60
    i32 1, label %if.then67
  ], !dbg !1753

if.then60:                                        ; preds = %if.end55
  store i32 5, i32* %flags56, align 4, !dbg !1756, !tbaa !1686
  br label %return, !dbg !1758

if.then67:                                        ; preds = %if.end55
  store i32 9, i32* %flags56, align 4, !dbg !1759, !tbaa !1686
  br label %return, !dbg !1762

if.else70:                                        ; preds = %if.end55
  store i32 13, i32* %flags56, align 4, !dbg !1763, !tbaa !1686
  br label %return

return:                                           ; preds = %if.else70, %if.then67, %if.then60, %if.then50, %if.then35, %if.then30, %if.then14, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then14 ], [ -1, %if.then35 ], [ -1, %if.then30 ], [ -1, %if.then50 ], [ %fd.0.lcssa, %if.then67 ], [ %fd.0.lcssa, %if.else70 ], [ %fd.0.lcssa, %if.then60 ]
  ret i32 %retval.0, !dbg !1765
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @klee_warning(i8*) #7

; Function Attrs: nounwind uwtable
define i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) #4 {
entry:
  %cmp = icmp eq i32 %basefd, -100, !dbg !1766
  br i1 %cmp, label %if.end8, label %if.then, !dbg !1766

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %basefd, 32, !dbg !1767
  br i1 %0, label %if.then.i, label %if.then1, !dbg !1767

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %basefd to i64, !dbg !1769
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1770
  %1 = load i32* %flags.i, align 4, !dbg !1770, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !1770
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1770
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !1770

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1769
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1772
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1772

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !1774
  store i32 9, i32* %call2, align 4, !dbg !1774, !tbaa !1289
  br label %return, !dbg !1776

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1777
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1777, !tbaa !1520
  %tobool3 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !1777
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1777

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str244, i64 0, i64 0)) #5, !dbg !1779
  %call5 = tail call i32* @__errno_location() #1, !dbg !1781
  store i32 2, i32* %call5, align 4, !dbg !1781, !tbaa !1289
  br label %return, !dbg !1782

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1783
  %3 = load i32* %fd7, align 8, !dbg !1783, !tbaa !1752
  %phitmp = sext i32 %3 to i64, !dbg !1784
  br label %if.end8, !dbg !1784

if.end8:                                          ; preds = %if.end6, %entry
  %basefd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %pathname, align 1, !dbg !1785, !tbaa !1299
  %conv.i = sext i8 %4 to i32, !dbg !1788
  %cmp.i = icmp eq i8 %4, 0, !dbg !1788
  br i1 %cmp.i, label %for.body, label %lor.lhs.false.i, !dbg !1788

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1788
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1788, !tbaa !1299
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1788
  br i1 %cmp4.i, label %for.cond.preheader.i, label %for.body, !dbg !1788

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1789, !tbaa !1504
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1789
  br i1 %cmp626.i, label %for.body, label %for.body.i, !dbg !1789

for.cond.i78:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i80, %6, !dbg !1789
  br i1 %cmp6.i, label %for.body.i, label %for.body, !dbg !1789

for.body.i:                                       ; preds = %for.cond.i78, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i80, %for.cond.i78 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1790
  %sext.i = shl i32 %i.027.i, 24, !dbg !1790
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1790
  %conv10.i79 = ashr exact i32 %sext.i, 24, !dbg !1790
  %add.i = add nsw i32 %conv10.i79, 65, !dbg !1790
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1790
  %inc.i80 = add i32 %i.027.i, 1, !dbg !1789
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i78, !dbg !1790

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i81 = zext i32 %i.027.i to i64, !dbg !1791
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1791, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i81, i32 2, !dbg !1792
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !1792, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !1792
  %9 = load i64* %st_ino.i, align 8, !dbg !1792, !tbaa !1583
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1792
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i81, !dbg !1791
  %tobool10 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1786
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !1792
  br i1 %or.cond, label %for.body, label %if.then11, !dbg !1792

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode), !dbg !1793
  br label %return, !dbg !1793

for.cond:                                         ; preds = %for.body
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !1795
  %cmp14 = icmp slt i32 %10, 32, !dbg !1795
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1795

for.body:                                         ; preds = %for.cond, %if.then13.i, %for.cond.i78, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %fd.086 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %flags15 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !1797
  %11 = load i32* %flags15, align 4, !dbg !1797, !tbaa !1686
  %and = and i32 %11, 1, !dbg !1797
  %tobool16 = icmp eq i32 %and, 0, !dbg !1797
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1795
  %inc = add nsw i32 %fd.086, 1, !dbg !1795
  br i1 %tobool16, label %for.end, label %for.cond, !dbg !1797

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.086, %for.body ], [ %inc, %for.cond ]
  %cmp19 = icmp eq i32 %fd.0.lcssa, 32, !dbg !1799
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1799

if.then20:                                        ; preds = %for.end
  %call21 = tail call i32* @__errno_location() #1, !dbg !1801
  store i32 24, i32* %call21, align 4, !dbg !1801, !tbaa !1289
  br label %return, !dbg !1803

if.end22:                                         ; preds = %for.end
  %idxprom23 = sext i32 %fd.0.lcssa to i64, !dbg !1804
  %arrayidx24 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, !dbg !1804
  %12 = bitcast %struct.exe_file_t* %arrayidx24 to i8*, !dbg !1805
  %13 = call i8* @memset(i8* %12, i32 0, i64 24)
  %14 = ptrtoint i8* %pathname to i64, !dbg !1806
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #5, !dbg !1806
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !1806
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !1809
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1809
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1809
  br label %for.cond.i, !dbg !1810

for.cond.i:                                       ; preds = %for.inc.i, %if.end22
  %i.0.i = phi i32 [ 0, %if.end22 ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.end22 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !1811, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !1812
  %and.i74 = and i32 %sub.i, %i.0.i, !dbg !1812
  %tobool.i75 = icmp eq i32 %and.i74, 0, !dbg !1812
  br i1 %tobool.i75, label %if.then.i76, label %if.else7.i, !dbg !1812

if.then.i76:                                      ; preds = %for.cond.i
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i77
    i8 47, label %if.then4.i
  ], !dbg !1813

if.then2.i77:                                     ; preds = %if.then.i76
  store i8 0, i8* %sc.0.i, align 1, !dbg !1814, !tbaa !1299
  br label %__concretize_string.exit, !dbg !1815

if.then4.i:                                       ; preds = %if.then.i76
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1816
  store i8 47, i8* %sc.0.i, align 1, !dbg !1816, !tbaa !1299
  br label %for.inc.i, !dbg !1817

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %16 to i64, !dbg !1818
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1818
  %conv10.i = trunc i64 %call9.i to i8, !dbg !1818
  %cmp13.i = icmp eq i8 %conv10.i, %16, !dbg !1819
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1819
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1819
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1820
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !1820, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !1821
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1821

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i76
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i76 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !1810
  br label %for.cond.i, !dbg !1810

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i77
  %conv26 = sext i32 %flags to i64, !dbg !1808
  %call27 = tail call i64 (i64, ...)* @syscall(i64 257, i64 %basefd.addr.0, i8* %pathname, i64 %conv26, i32 %mode) #5, !dbg !1808
  %conv28 = trunc i64 %call27 to i32, !dbg !1808
  %cmp29 = icmp eq i32 %conv28, -1, !dbg !1822
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !1822

if.then31:                                        ; preds = %__concretize_string.exit
  %call32 = tail call i32 @klee_get_errno() #5, !dbg !1824
  %call33 = tail call i32* @__errno_location() #1, !dbg !1824
  store i32 %call32, i32* %call33, align 4, !dbg !1824, !tbaa !1289
  br label %return, !dbg !1826

if.end34:                                         ; preds = %__concretize_string.exit
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx24, i64 0, i32 0, !dbg !1827
  store i32 %conv28, i32* %fd35, align 8, !dbg !1827, !tbaa !1752
  %flags36 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, i32 1, !dbg !1828
  store i32 1, i32* %flags36, align 4, !dbg !1828, !tbaa !1686
  %and37 = and i32 %flags, 3, !dbg !1829
  switch i32 %and37, label %if.else49 [
    i32 0, label %if.then40
    i32 1, label %if.then46
  ], !dbg !1829

if.then40:                                        ; preds = %if.end34
  store i32 5, i32* %flags36, align 4, !dbg !1831, !tbaa !1686
  br label %return, !dbg !1833

if.then46:                                        ; preds = %if.end34
  store i32 9, i32* %flags36, align 4, !dbg !1834, !tbaa !1686
  br label %return, !dbg !1837

if.else49:                                        ; preds = %if.end34
  store i32 13, i32* %flags36, align 4, !dbg !1838, !tbaa !1686
  br label %return

return:                                           ; preds = %if.else49, %if.then46, %if.then40, %if.then31, %if.then20, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then20 ], [ -1, %if.then31 ], [ -1, %if.then1 ], [ %fd.0.lcssa, %if.then46 ], [ %fd.0.lcssa, %if.else49 ], [ %fd.0.lcssa, %if.then40 ]
  ret i32 %retval.0, !dbg !1840
}

; Function Attrs: nounwind uwtable
define i32 @utimes(i8* %path, %struct.timeval* %times) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !1841, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !1843
  %cmp.i = icmp eq i8 %0, 0, !dbg !1843
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !1843

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !1843
  %1 = load i8* %arrayidx2.i, align 1, !dbg !1843, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !1843
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !1843

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1844, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !1844
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !1844

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !1844
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !1844

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1845
  %sext.i = shl i32 %i.027.i, 24, !dbg !1845
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1845
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1845
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1845
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1845
  %inc.i = add i32 %i.027.i, 1, !dbg !1844
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1845

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1846
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1846, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !1847
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !1847, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !1847
  %5 = load i64* %st_ino.i, align 8, !dbg !1847, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !1847
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !1846
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1848
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !1847
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1847

if.then:                                          ; preds = %if.then13.i
  %tv_sec = getelementptr inbounds %struct.timeval* %times, i64 0, i32 0, !dbg !1850
  %6 = load i64* %tv_sec, align 8, !dbg !1850, !tbaa !1852
  %tv_sec1 = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 11, i32 0, !dbg !1850
  store i64 %6, i64* %tv_sec1, align 8, !dbg !1850, !tbaa !1608
  %tv_sec3 = getelementptr inbounds %struct.timeval* %times, i64 1, i32 0, !dbg !1854
  %7 = load i64* %tv_sec3, align 8, !dbg !1854, !tbaa !1852
  %tv_sec5 = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 12, i32 0, !dbg !1854
  store i64 %7, i64* %tv_sec5, align 8, !dbg !1854, !tbaa !1610
  br label %return, !dbg !1855

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %8 = ptrtoint i8* %path to i64, !dbg !1856
  %call.i.i = tail call i64 @klee_get_valuel(i64 %8) #5, !dbg !1856
  %9 = inttoptr i64 %call.i.i to i8*, !dbg !1856
  %cmp.i.i = icmp eq i8* %9, %path, !dbg !1859
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1859
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1859
  br label %for.cond.i19, !dbg !1860

for.cond.i19:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i21, %for.inc.i ]
  %sc.0.i = phi i8* [ %9, %if.end ], [ %sc.1.i, %for.inc.i ]
  %10 = load i8* %sc.0.i, align 1, !dbg !1861, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !1862
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1862
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1862
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1862

if.then.i:                                        ; preds = %for.cond.i19
  switch i8 %10, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1863

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1864, !tbaa !1299
  br label %__concretize_string.exit, !dbg !1865

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1866
  store i8 47, i8* %sc.0.i, align 1, !dbg !1866, !tbaa !1299
  br label %for.inc.i, !dbg !1867

if.else7.i:                                       ; preds = %for.cond.i19
  %conv8.i = sext i8 %10 to i64, !dbg !1868
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1868
  %conv10.i20 = trunc i64 %call9.i to i8, !dbg !1868
  %cmp13.i = icmp eq i8 %conv10.i20, %10, !dbg !1869
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1869
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1869
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1870
  store i8 %conv10.i20, i8* %sc.0.i, align 1, !dbg !1870, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i20, 0, !dbg !1871
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1871

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i21 = add i32 %i.0.i, 1, !dbg !1860
  br label %for.cond.i19, !dbg !1860

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call7 = tail call i64 (i64, ...)* @syscall(i64 235, i8* %path, %struct.timeval* %times) #5, !dbg !1858
  %conv = trunc i64 %call7 to i32, !dbg !1858
  %cmp = icmp eq i32 %conv, -1, !dbg !1872
  br i1 %cmp, label %if.then9, label %return, !dbg !1872

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #5, !dbg !1874
  %call11 = tail call i32* @__errno_location() #1, !dbg !1874
  store i32 %call10, i32* %call11, align 4, !dbg !1874, !tbaa !1289
  br label %return, !dbg !1874

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !1875
}

; Function Attrs: nounwind uwtable
define i32 @futimesat(i32 %fd, i8* %path, %struct.timeval* %times) #4 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !1876
  br i1 %cmp, label %if.end8, label %if.then, !dbg !1876

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !1877
  br i1 %0, label %if.then.i, label %if.then1, !dbg !1877

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !1879
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1880
  %1 = load i32* %flags.i, align 4, !dbg !1880, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !1880
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1880
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !1880

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1879
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1881
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1881

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !1883
  store i32 9, i32* %call2, align 4, !dbg !1883, !tbaa !1289
  br label %return, !dbg !1885

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1886
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1886, !tbaa !1520
  %tobool3 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !1886
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1886

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str244, i64 0, i64 0)) #5, !dbg !1888
  %call5 = tail call i32* @__errno_location() #1, !dbg !1890
  store i32 2, i32* %call5, align 4, !dbg !1890, !tbaa !1289
  br label %return, !dbg !1891

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1892
  %3 = load i32* %fd7, align 8, !dbg !1892, !tbaa !1752
  %phitmp = sext i32 %3 to i64, !dbg !1893
  br label %if.end8, !dbg !1893

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !1894, !tbaa !1299
  %conv.i = sext i8 %4 to i32, !dbg !1897
  %cmp.i = icmp eq i8 %4, 0, !dbg !1897
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !1897

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !1897
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1897, !tbaa !1299
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1897
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !1897

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1898, !tbaa !1504
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1898
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !1898

for.cond.i37:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i39, %6, !dbg !1898
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !1898

for.body.i:                                       ; preds = %for.cond.i37, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i39, %for.cond.i37 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1899
  %sext.i = shl i32 %i.027.i, 24, !dbg !1899
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1899
  %conv10.i38 = ashr exact i32 %sext.i, 24, !dbg !1899
  %add.i = add nsw i32 %conv10.i38, 65, !dbg !1899
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1899
  %inc.i39 = add i32 %i.027.i, 1, !dbg !1898
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i37, !dbg !1899

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i40 = zext i32 %i.027.i to i64, !dbg !1900
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1900, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i40, i32 2, !dbg !1901
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !1901, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !1901
  %9 = load i64* %st_ino.i, align 8, !dbg !1901, !tbaa !1583
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1901
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i40, !dbg !1900
  %tobool10 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1895
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !1901
  br i1 %or.cond, label %if.end13, label %if.then11, !dbg !1901

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @utimes(i8* %path, %struct.timeval* %times), !dbg !1902
  br label %return, !dbg !1902

if.end13:                                         ; preds = %if.then13.i, %for.cond.i37, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !1904
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !1904

cond.true:                                        ; preds = %if.end13
  %10 = ptrtoint i8* %path to i64, !dbg !1905
  %call.i.i = tail call i64 @klee_get_valuel(i64 %10) #5, !dbg !1905
  %11 = inttoptr i64 %call.i.i to i8*, !dbg !1905
  %cmp.i.i = icmp eq i8* %11, %path, !dbg !1908
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1908
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1908
  br label %for.cond.i, !dbg !1909

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %11, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %12 = load i8* %sc.0.i, align 1, !dbg !1910, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !1911
  %and.i33 = and i32 %sub.i, %i.0.i, !dbg !1911
  %tobool.i34 = icmp eq i32 %and.i33, 0, !dbg !1911
  br i1 %tobool.i34, label %if.then.i35, label %if.else7.i, !dbg !1911

if.then.i35:                                      ; preds = %for.cond.i
  switch i8 %12, label %for.inc.i [
    i8 0, label %if.then2.i36
    i8 47, label %if.then4.i
  ], !dbg !1912

if.then2.i36:                                     ; preds = %if.then.i35
  store i8 0, i8* %sc.0.i, align 1, !dbg !1913, !tbaa !1299
  br label %cond.end, !dbg !1914

if.then4.i:                                       ; preds = %if.then.i35
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1915
  store i8 47, i8* %sc.0.i, align 1, !dbg !1915, !tbaa !1299
  br label %for.inc.i, !dbg !1916

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %12 to i64, !dbg !1917
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1917
  %conv10.i = trunc i64 %call9.i to i8, !dbg !1917
  %cmp13.i = icmp eq i8 %conv10.i, %12, !dbg !1918
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1918
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1918
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1919
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !1919, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !1920
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !1920

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i35
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i35 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !1909
  br label %for.cond.i, !dbg !1909

cond.end:                                         ; preds = %if.else7.i, %if.then2.i36, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i36 ], [ %path, %if.else7.i ], !dbg !1907
  %call16 = tail call i64 (i64, ...)* @syscall(i64 261, i64 %fd.addr.0, i8* %cond, %struct.timeval* %times) #5, !dbg !1904
  %conv17 = trunc i64 %call16 to i32, !dbg !1904
  %cmp18 = icmp eq i32 %conv17, -1, !dbg !1921
  br i1 %cmp18, label %if.then20, label %return, !dbg !1921

if.then20:                                        ; preds = %cond.end
  %call21 = tail call i32 @klee_get_errno() #5, !dbg !1923
  %call22 = tail call i32* @__errno_location() #1, !dbg !1923
  store i32 %call21, i32* %call22, align 4, !dbg !1923, !tbaa !1289
  br label %return, !dbg !1923

return:                                           ; preds = %if.then20, %cond.end, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then1 ], [ -1, %if.then20 ], [ %conv17, %cond.end ]
  ret i32 %retval.0, !dbg !1924
}

; Function Attrs: nounwind uwtable
define i32 @close(i32 %fd) #4 {
entry:
  %0 = load i32* @close.n_calls, align 4, !dbg !1925, !tbaa !1289
  %inc = add nsw i32 %0, 1, !dbg !1925
  store i32 %inc, i32* @close.n_calls, align 4, !dbg !1925, !tbaa !1289
  %1 = icmp ult i32 %fd, 32, !dbg !1926
  br i1 %1, label %if.then.i, label %if.then, !dbg !1926

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !1928
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1929
  %2 = load i32* %flags.i, align 4, !dbg !1929, !tbaa !1686
  %and.i = and i32 %2, 1, !dbg !1929
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1929
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !1929

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1928
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1930
  br i1 %tobool, label %if.then, label %if.end, !dbg !1930

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1932
  store i32 9, i32* %call1, align 4, !dbg !1932, !tbaa !1289
  br label %return, !dbg !1934

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1935, !tbaa !1526
  %tobool2 = icmp eq i32 %3, 0, !dbg !1935
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !1935

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !1935, !tbaa !1535
  %5 = load i32* %4, align 4, !dbg !1935, !tbaa !1289
  %cmp = icmp eq i32 %5, %inc, !dbg !1935
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1935

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1937
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1937, !tbaa !1526
  %call4 = tail call i32* @__errno_location() #1, !dbg !1939
  store i32 5, i32* %call4, align 4, !dbg !1939, !tbaa !1289
  br label %return, !dbg !1940

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %6 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !1941
  %7 = call i8* @memset(i8* %6, i32 0, i64 24)
  br label %return, !dbg !1942

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end5 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1943
}

; Function Attrs: nounwind uwtable
define i64 @read(i32 %fd, i8* %buf, i64 %count) #4 {
entry:
  %0 = load i32* @read.n_calls, align 4, !dbg !1944, !tbaa !1289
  %inc = add nsw i32 %0, 1, !dbg !1944
  store i32 %inc, i32* @read.n_calls, align 4, !dbg !1944, !tbaa !1289
  %cmp = icmp eq i64 %count, 0, !dbg !1945
  br i1 %cmp, label %return, label %if.end, !dbg !1945

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %buf, null, !dbg !1947
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1947

if.then2:                                         ; preds = %if.end
  %call = tail call i32* @__errno_location() #1, !dbg !1949
  store i32 14, i32* %call, align 4, !dbg !1949, !tbaa !1289
  br label %return, !dbg !1951

if.end3:                                          ; preds = %if.end
  %1 = icmp ult i32 %fd, 32, !dbg !1952
  br i1 %1, label %if.then.i, label %if.then5, !dbg !1952

if.then.i:                                        ; preds = %if.end3
  %idxprom.i = sext i32 %fd to i64, !dbg !1954
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1955
  %2 = load i32* %flags.i, align 4, !dbg !1955, !tbaa !1686
  %and.i = and i32 %2, 1, !dbg !1955
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1955
  br i1 %tobool.i, label %if.then5, label %__get_file.exit, !dbg !1955

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1954
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1956
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !1956

if.then5:                                         ; preds = %__get_file.exit, %if.then.i, %if.end3
  %call6 = tail call i32* @__errno_location() #1, !dbg !1958
  store i32 9, i32* %call6, align 4, !dbg !1958, !tbaa !1289
  br label %return, !dbg !1960

if.end7:                                          ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1961, !tbaa !1526
  %tobool8 = icmp eq i32 %3, 0, !dbg !1961
  br i1 %tobool8, label %if.end12, label %land.lhs.true, !dbg !1961

land.lhs.true:                                    ; preds = %if.end7
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 6), align 8, !dbg !1961, !tbaa !1531
  %5 = load i32* %4, align 4, !dbg !1961, !tbaa !1289
  %cmp9 = icmp eq i32 %5, %inc, !dbg !1961
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1961

if.then10:                                        ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1963
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1963, !tbaa !1526
  %call11 = tail call i32* @__errno_location() #1, !dbg !1965
  store i32 5, i32* %call11, align 4, !dbg !1965, !tbaa !1289
  br label %return, !dbg !1966

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1967
  %6 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1967, !tbaa !1520
  %tobool13 = icmp eq %struct.exe_disk_file_t.17* %6, null, !dbg !1967
  br i1 %tobool13, label %if.then14, label %if.else40, !dbg !1967

if.then14:                                        ; preds = %if.end12
  %7 = ptrtoint i8* %buf to i64, !dbg !1968
  %call.i98 = tail call i64 @klee_get_valuel(i64 %7) #5, !dbg !1968
  %8 = inttoptr i64 %call.i98 to i8*, !dbg !1968
  %cmp.i99 = icmp eq i8* %8, %buf, !dbg !1970
  %conv1.i100 = zext i1 %cmp.i99 to i64, !dbg !1970
  tail call void @klee_assume(i64 %conv1.i100) #5, !dbg !1970
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #5, !dbg !1971
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !1973
  %conv1.i = zext i1 %cmp.i to i64, !dbg !1973
  tail call void @klee_assume(i64 %conv1.i) #5, !dbg !1973
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #5, !dbg !1974
  %fd17 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1975
  %9 = load i32* %fd17, align 8, !dbg !1975, !tbaa !1752
  %cmp18 = icmp eq i32 %9, 0, !dbg !1975
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !1975

if.then19:                                        ; preds = %if.then14
  %call21 = tail call i64 (i64, ...)* @syscall(i64 0, i32 0, i8* %8, i64 %call.i) #5, !dbg !1977
  br label %if.end25, !dbg !1977

if.else:                                          ; preds = %if.then14
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1978
  %10 = load i64* %off, align 8, !dbg !1978, !tbaa !1979
  %call23 = tail call i64 (i64, ...)* @syscall(i64 17, i32 %9, i8* %8, i64 %call.i, i64 %10) #5, !dbg !1978
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %r.0.in = phi i64 [ %call21, %if.then19 ], [ %call23, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !1977
  %cmp26 = icmp eq i32 %r.0, -1, !dbg !1980
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1980

if.then28:                                        ; preds = %if.end25
  %call29 = tail call i32 @klee_get_errno() #5, !dbg !1982
  %call30 = tail call i32* @__errno_location() #1, !dbg !1982
  store i32 %call29, i32* %call30, align 4, !dbg !1982, !tbaa !1289
  br label %return, !dbg !1984

if.end31:                                         ; preds = %if.end25
  %11 = load i32* %fd17, align 8, !dbg !1985, !tbaa !1752
  %cmp33 = icmp eq i32 %11, 0, !dbg !1985
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !1987
  %sext.pre = shl i64 %r.0.in, 32, !dbg !1987
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1987
  %conv39.pre = ashr exact i64 %sext.pre, 32, !dbg !1987
  br i1 %cmp33, label %return, label %if.then35, !dbg !1985

if.then35:                                        ; preds = %if.end31
  %off37 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1988
  %12 = load i64* %off37, align 8, !dbg !1988, !tbaa !1979
  %add = add nsw i64 %12, %conv39.pre, !dbg !1988
  store i64 %add, i64* %off37, align 8, !dbg !1988, !tbaa !1979
  br label %return, !dbg !1988

if.else40:                                        ; preds = %if.end12
  %off41 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1989
  %13 = load i64* %off41, align 8, !dbg !1989, !tbaa !1979
  %cmp42 = icmp sgt i64 %13, -1, !dbg !1989
  br i1 %cmp42, label %cond.end, label %cond.false, !dbg !1989

cond.false:                                       ; preds = %if.else40
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str345, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([34 x 
  unreachable, !dbg !1989

cond.end:                                         ; preds = %if.else40
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 0, !dbg !1991
  %14 = load i32* %size, align 4, !dbg !1991, !tbaa !1575
  %conv45 = zext i32 %14 to i64, !dbg !1991
  %cmp47 = icmp slt i64 %conv45, %13, !dbg !1991
  br i1 %cmp47, label %return, label %if.end50, !dbg !1991

if.end50:                                         ; preds = %cond.end
  %add52 = add i64 %13, %count, !dbg !1993
  %cmp56 = icmp ugt i64 %add52, %conv45, !dbg !1993
  %sub = sub nsw i64 %conv45, %13, !dbg !1995
  %sub.count = select i1 %cmp56, i64 %sub, i64 %count, !dbg !1993
  %contents = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 1, !dbg !1997
  %15 = load i8** %contents, align 8, !dbg !1997, !tbaa !1578
  %add.ptr = getelementptr inbounds i8* %15, i64 %13, !dbg !1997
  %16 = call i8* @memcpy(i8* %buf, i8* %add.ptr, i64 %sub.count)
  %17 = load i64* %off41, align 8, !dbg !1998, !tbaa !1979
  %add67 = add i64 %17, %sub.count, !dbg !1998
  store i64 %add67, i64* %off41, align 8, !dbg !1998, !tbaa !1979
  br label %return, !dbg !1999

return:                                           ; preds = %if.end50, %cond.end, %if.then35, %if.end31, %if.then28, %if.then10, %if.then5, %if.then2, %entry
  %retval.0 = phi i64 [ -1, %if.then2 ], [ -1, %if.then10 ], [ %sub.count, %if.end50 ], [ -1, %if.then28 ], [ -1, %if.then5 ], [ 0, %entry ], [ 0, %cond.end ], [ %conv39.pre, %if.then35 ], [ %conv39.pre, %if.end31 ]
  ret i64 %retval.0, !dbg !2000
}

declare void @klee_check_memory_access(i8*, i64) #7

; Function Attrs: nounwind uwtable
define i64 @write(i32 %fd, i8* %buf, i64 %count) #4 {
entry:
  %0 = load i32* @write.n_calls, align 4, !dbg !2001, !tbaa !1289
  %inc = add nsw i32 %0, 1, !dbg !2001
  store i32 %inc, i32* @write.n_calls, align 4, !dbg !2001, !tbaa !1289
  %1 = icmp ult i32 %fd, 32, !dbg !2002
  br i1 %1, label %if.then.i, label %if.then, !dbg !2002

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2004
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2005
  %2 = load i32* %flags.i, align 4, !dbg !2005, !tbaa !1686
  %and.i = and i32 %2, 1, !dbg !2005
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2005
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2005

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2004
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2006
  br i1 %tobool, label %if.then, label %if.end, !dbg !2006

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2008
  store i32 9, i32* %call1, align 4, !dbg !2008, !tbaa !1289
  br label %return, !dbg !2010

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2011, !tbaa !1526
  %tobool2 = icmp eq i32 %3, 0, !dbg !2011
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2011

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 7), align 8, !dbg !2011, !tbaa !1533
  %5 = load i32* %4, align 4, !dbg !2011, !tbaa !1289
  %cmp = icmp eq i32 %5, %inc, !dbg !2011
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2011

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2013
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2013, !tbaa !1526
  %call4 = tail call i32* @__errno_location() #1, !dbg !2015
  store i32 5, i32* %call4, align 4, !dbg !2015, !tbaa !1289
  br label %return, !dbg !2016

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2017
  %6 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2017, !tbaa !1520
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %6, null, !dbg !2017
  br i1 %tobool6, label %if.then7, label %if.else41, !dbg !2017

if.then7:                                         ; preds = %if.end5
  %7 = ptrtoint i8* %buf to i64, !dbg !2018
  %call.i126 = tail call i64 @klee_get_valuel(i64 %7) #5, !dbg !2018
  %8 = inttoptr i64 %call.i126 to i8*, !dbg !2018
  %cmp.i127 = icmp eq i8* %8, %buf, !dbg !2020
  %conv1.i128 = zext i1 %cmp.i127 to i64, !dbg !2020
  tail call void @klee_assume(i64 %conv1.i128) #5, !dbg !2020
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #5, !dbg !2021
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !2023
  %conv1.i = zext i1 %cmp.i to i64, !dbg !2023
  tail call void @klee_assume(i64 %conv1.i) #5, !dbg !2023
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #5, !dbg !2024
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2025
  %9 = load i32* %fd10, align 8, !dbg !2025, !tbaa !1752
  %.off = add i32 %9, -1, !dbg !2025
  %switch = icmp ult i32 %.off, 2, !dbg !2025
  br i1 %switch, label %if.then14, label %if.else, !dbg !2025

if.then14:                                        ; preds = %if.then7
  %call16 = tail call i64 (i64, ...)* @syscall(i64 1, i32 %9, i8* %8, i64 %call.i) #5, !dbg !2027
  br label %if.end20, !dbg !2027

if.else:                                          ; preds = %if.then7
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2028
  %10 = load i64* %off, align 8, !dbg !2028, !tbaa !1979
  %call18 = tail call i64 (i64, ...)* @syscall(i64 18, i32 %9, i8* %8, i64 %call.i, i64 %10) #5, !dbg !2028
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %r.0.in = phi i64 [ %call16, %if.then14 ], [ %call18, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !2027
  %cmp21 = icmp eq i32 %r.0, -1, !dbg !2029
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !2029

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @klee_get_errno() #5, !dbg !2031
  %call25 = tail call i32* @__errno_location() #1, !dbg !2031
  store i32 %call24, i32* %call25, align 4, !dbg !2031, !tbaa !1289
  br label %return, !dbg !2033

if.end26:                                         ; preds = %if.end20
  %cmp27 = icmp sgt i32 %r.0, -1, !dbg !2034
  br i1 %cmp27, label %cond.end, label %cond.false, !dbg !2034

cond.false:                                       ; preds = %if.end26
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str547, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([41 x i
  unreachable, !dbg !2034

cond.end:                                         ; preds = %if.end26
  %11 = load i32* %fd10, align 8, !dbg !2035, !tbaa !1752
  %.off124 = add i32 %11, -1, !dbg !2035
  %switch125 = icmp ult i32 %.off124, 2, !dbg !2035
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !2037
  %sext.pre = shl i64 %r.0.in, 32, !dbg !2037
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !2037
  %conv40.pre = ashr exact i64 %sext.pre, 32, !dbg !2037
  br i1 %switch125, label %return, label %if.then36, !dbg !2035

if.then36:                                        ; preds = %cond.end
  %off38 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2038
  %12 = load i64* %off38, align 8, !dbg !2038, !tbaa !1979
  %add = add nsw i64 %12, %conv40.pre, !dbg !2038
  store i64 %add, i64* %off38, align 8, !dbg !2038, !tbaa !1979
  br label %return, !dbg !2038

if.else41:                                        ; preds = %if.end5
  %off42 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2039
  %13 = load i64* %off42, align 8, !dbg !2039, !tbaa !1979
  %add43 = add i64 %13, %count, !dbg !2039
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 0, !dbg !2039
  %14 = load i32* %size, align 4, !dbg !2039, !tbaa !1575
  %conv45 = zext i32 %14 to i64, !dbg !2039
  %cmp46 = icmp ugt i64 %add43, %conv45, !dbg !2039
  br i1 %cmp46, label %if.else49, label %if.end66, !dbg !2039

if.else49:                                        ; preds = %if.else41
  %15 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 3), align 8, !dbg !2041, !tbaa !1558
  %tobool50 = icmp eq i32 %15, 0, !dbg !2041
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !2041

if.then51:                                        ; preds = %if.else49
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([2 x i8]* @.str648, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([41 x i
  unreachable, !dbg !2044

if.else52:                                        ; preds = %if.else49
  %cmp57 = icmp sgt i64 %conv45, %13, !dbg !2045
  %sub = sub nsw i64 %conv45, %13, !dbg !2048
  br i1 %cmp57, label %if.end66, label %if.end71

if.end66:                                         ; preds = %if.else52, %if.else41
  %actual_count.0 = phi i64 [ %count, %if.else41 ], [ %sub, %if.else52 ]
  %tobool67 = icmp eq i64 %actual_count.0, 0, !dbg !2049
  br i1 %tobool67, label %if.end71, label %if.then68, !dbg !2049

if.then68:                                        ; preds = %if.end66
  %contents = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 1, !dbg !2051
  %16 = load i8** %contents, align 8, !dbg !2051, !tbaa !1578
  %add.ptr = getelementptr inbounds i8* %16, i64 %13, !dbg !2051
  %17 = call i8* @memcpy(i8* %add.ptr, i8* %buf, i64 %actual_count.0)
  br label %if.end71, !dbg !2051

if.end71:                                         ; preds = %if.then68, %if.end66, %if.else52
  %actual_count.0131 = phi i64 [ 0, %if.end66 ], [ %actual_count.0, %if.then68 ], [ 0, %if.else52 ]
  %cmp72 = icmp eq i64 %actual_count.0131, %count, !dbg !2052
  br i1 %cmp72, label %if.end75, label %if.then74, !dbg !2052

if.then74:                                        ; preds = %if.end71
  tail call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str749, i64 0, i64 0)) #5, !dbg !2054
  br label %if.end75, !dbg !2054

if.end75:                                         ; preds = %if.then74, %if.end71
  %18 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2055, !tbaa !1520
  %19 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !2055, !tbaa !1550
  %cmp77 = icmp eq %struct.exe_disk_file_t.17* %18, %19, !dbg !2055
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !2055

if.then79:                                        ; preds = %if.end75
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 3), align 8, !dbg !2057, !tbaa !1554
  %conv80 = zext i32 %20 to i64, !dbg !2057
  %add81 = add i64 %conv80, %actual_count.0131, !dbg !2057
  %conv82 = trunc i64 %add81 to i32, !dbg !2057
  store i32 %conv82, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 3), align 8, !dbg !2057, !tbaa !1554
  br label %if.end83, !dbg !2057

if.end83:                                         ; preds = %if.then79, %if.end75
  %21 = load i64* %off42, align 8, !dbg !2058, !tbaa !1979
  %add85 = add i64 %21, %count, !dbg !2058
  store i64 %add85, i64* %off42, align 8, !dbg !2058, !tbaa !1979
  br label %return, !dbg !2059

return:                                           ; preds = %if.end83, %if.then36, %cond.end, %if.then23, %if.then3, %if.then
  %retval.0 = phi i64 [ -1, %if.then3 ], [ %count, %if.end83 ], [ -1, %if.then23 ], [ -1, %if.then ], [ %conv40.pre, %if.then36 ], [ %conv40.pre, %cond.end ]
  ret i64 %retval.0, !dbg !2060
}

; Function Attrs: nounwind uwtable
define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2061
  br i1 %0, label %if.then.i, label %if.then, !dbg !2061

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2063
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2064
  %1 = load i32* %flags.i, align 4, !dbg !2064, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2064
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2064
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2064

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2063
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2065
  br i1 %tobool, label %if.then, label %if.end, !dbg !2065

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2067
  store i32 9, i32* %call1, align 4, !dbg !2067, !tbaa !1289
  br label %return, !dbg !2069

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2070
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2070, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2070
  br i1 %tobool2, label %if.then3, label %if.end23, !dbg !2070

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq i32 %whence, 0, !dbg !2072
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2075
  %3 = load i32* %fd5, align 8, !dbg !2075, !tbaa !1752
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2072

if.then4:                                         ; preds = %if.then3
  %call6 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %offset, i32 0) #5, !dbg !2075
  br label %if.end16, !dbg !2077

if.else:                                          ; preds = %if.then3
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2078
  %4 = load i64* %off, align 8, !dbg !2078, !tbaa !1979
  %call8 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %4, i32 0) #5, !dbg !2078
  %cmp9 = icmp eq i64 %call8, -1, !dbg !2080
  br i1 %cmp9, label %if.then18, label %if.then10, !dbg !2080

if.then10:                                        ; preds = %if.else
  %5 = load i64* %off, align 8, !dbg !2082, !tbaa !1979
  %cmp12 = icmp eq i64 %call8, %5, !dbg !2082
  br i1 %cmp12, label %cond.end, label %cond.false, !dbg !2082

cond.false:                                       ; preds = %if.then10
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str850, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 499, i8* getelementptr inbounds ([38 x 
  unreachable, !dbg !2082

cond.end:                                         ; preds = %if.then10
  %6 = load i32* %fd5, align 8, !dbg !2084, !tbaa !1752
  %call14 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %6, i64 %offset, i32 %whence) #5, !dbg !2084
  br label %if.end16, !dbg !2085

if.end16:                                         ; preds = %cond.end, %if.then4
  %new_off.0 = phi i64 [ %call6, %if.then4 ], [ %call14, %cond.end ]
  %cmp17 = icmp eq i64 %new_off.0, -1, !dbg !2086
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !2086

if.then18:                                        ; preds = %if.end16, %if.else
  %call19 = tail call i32 @klee_get_errno() #5, !dbg !2088
  %call20 = tail call i32* @__errno_location() #1, !dbg !2088
  store i32 %call19, i32* %call20, align 4, !dbg !2088, !tbaa !1289
  br label %return, !dbg !2090

if.end21:                                         ; preds = %if.end16
  %off22 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2091
  store i64 %new_off.0, i64* %off22, align 8, !dbg !2091, !tbaa !1979
  br label %return, !dbg !2092

if.end23:                                         ; preds = %if.end
  switch i32 %whence, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb24
    i32 2, label %sw.bb26
  ], !dbg !2093

sw.bb24:                                          ; preds = %if.end23
  %off25 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2094
  %7 = load i64* %off25, align 8, !dbg !2094, !tbaa !1979
  %add = add nsw i64 %7, %offset, !dbg !2094
  br label %sw.epilog, !dbg !2094

sw.bb26:                                          ; preds = %if.end23
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %2, i64 0, i32 0, !dbg !2096
  %8 = load i32* %size, align 4, !dbg !2096, !tbaa !1575
  %conv = zext i32 %8 to i64, !dbg !2096
  %add28 = add nsw i64 %conv, %offset, !dbg !2096
  br label %sw.epilog, !dbg !2096

sw.default:                                       ; preds = %if.end23
  %call29 = tail call i32* @__errno_location() #1, !dbg !2097
  store i32 22, i32* %call29, align 4, !dbg !2097, !tbaa !1289
  br label %return, !dbg !2099

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb24, %if.end23
  %new_off.1 = phi i64 [ %add28, %sw.bb26 ], [ %add, %sw.bb24 ], [ %offset, %if.end23 ]
  %cmp30 = icmp slt i64 %new_off.1, 0, !dbg !2100
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !2100

if.then32:                                        ; preds = %sw.epilog
  %call33 = tail call i32* @__errno_location() #1, !dbg !2102
  store i32 22, i32* %call33, align 4, !dbg !2102, !tbaa !1289
  br label %return, !dbg !2104

if.end34:                                         ; preds = %sw.epilog
  %off35 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2105
  store i64 %new_off.1, i64* %off35, align 8, !dbg !2105, !tbaa !1979
  br label %return, !dbg !2106

return:                                           ; preds = %if.end34, %if.then32, %sw.default, %if.end21, %if.then18, %if.then
  %retval.0 = phi i64 [ -1, %sw.default ], [ -1, %if.then32 ], [ %new_off.1, %if.end34 ], [ -1, %if.then18 ], [ %new_off.0, %if.end21 ], [ -1, %if.then ]
  ret i64 %retval.0, !dbg !2107
}

; Function Attrs: nounwind uwtable
define i32 @__fd_stat(i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2108, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2110
  %cmp.i = icmp eq i8 %0, 0, !dbg !2110
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2110

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2110
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2110, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2110
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2110

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2111, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2111
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2111

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2111
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2111

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2112
  %sext.i = shl i32 %i.027.i, 24, !dbg !2112
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2112
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2112
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2112
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2112
  %inc.i = add i32 %i.027.i, 1, !dbg !2111
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2112

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2113
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2113, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2114
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2114, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2114
  %5 = load i64* %st_ino.i, align 8, !dbg !2114, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2114
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2113
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2115
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2114
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2114

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64.16* %buf to i8*, !dbg !2117
  %7 = bitcast %struct.stat64.16* %4 to i8*, !dbg !2117
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2119

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2120
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #5, !dbg !2120
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2120
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2123
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2123
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2123
  br label %for.cond.i12, !dbg !2124

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2125, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2126
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2126
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2126
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2126

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2127

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2128, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2129

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2130
  store i8 47, i8* %sc.0.i, align 1, !dbg !2130, !tbaa !1299
  br label %for.inc.i, !dbg !2131

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2132
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2132
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2132
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2133
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2133
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2133
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2134
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2134, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2135
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2135

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2124
  br label %for.cond.i12, !dbg !2124

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 4, i8* %path, %struct.stat64.16* %buf) #5, !dbg !2122
  %conv = trunc i64 %call2 to i32, !dbg !2122
  %cmp = icmp eq i32 %conv, -1, !dbg !2136
  br i1 %cmp, label %if.then4, label %return, !dbg !2136

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #5, !dbg !2138
  %call6 = tail call i32* @__errno_location() #1, !dbg !2138
  store i32 %call5, i32* %call6, align 4, !dbg !2138, !tbaa !1289
  br label %return, !dbg !2138

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2139
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstatat(i32 %fd, i8* %path, %struct.stat* %buf, i32 %flags) #10 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !2140
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2140

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !2141
  br i1 %0, label %if.then.i, label %if.then1, !dbg !2141

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !2143
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2144
  %1 = load i32* %flags.i, align 4, !dbg !2144, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2144
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2144
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !2144

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2143
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2145
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2145

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !2147
  store i32 9, i32* %call2, align 4, !dbg !2147, !tbaa !1289
  br label %return, !dbg !2149

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2150
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2150, !tbaa !1520
  %tobool3 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2150
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2150

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str244, i64 0, i64 0)) #5, !dbg !2152
  %call5 = tail call i32* @__errno_location() #1, !dbg !2154
  store i32 2, i32* %call5, align 4, !dbg !2154, !tbaa !1289
  br label %return, !dbg !2155

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2156
  %3 = load i32* %fd7, align 8, !dbg !2156, !tbaa !1752
  %phitmp = sext i32 %3 to i64, !dbg !2157
  br label %if.end8, !dbg !2157

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !2158, !tbaa !1299
  %conv.i = sext i8 %4 to i32, !dbg !2160
  %cmp.i = icmp eq i8 %4, 0, !dbg !2160
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !2160

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2160
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2160, !tbaa !1299
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2160
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !2160

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2161, !tbaa !1504
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2161
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !2161

for.cond.i38:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i40, %6, !dbg !2161
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !2161

for.body.i:                                       ; preds = %for.cond.i38, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i40, %for.cond.i38 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2162
  %sext.i = shl i32 %i.027.i, 24, !dbg !2162
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2162
  %conv10.i39 = ashr exact i32 %sext.i, 24, !dbg !2162
  %add.i = add nsw i32 %conv10.i39, 65, !dbg !2162
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2162
  %inc.i40 = add i32 %i.027.i, 1, !dbg !2161
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i38, !dbg !2162

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i41 = zext i32 %i.027.i to i64, !dbg !2163
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2163, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i41, i32 2, !dbg !2164
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !2164, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !2164
  %9 = load i64* %st_ino.i, align 8, !dbg !2164, !tbaa !1583
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2164
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i41, !dbg !2163
  %tobool11 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2165
  %or.cond = or i1 %cmp15.i, %tobool11, !dbg !2164
  br i1 %or.cond, label %if.end13, label %if.then12, !dbg !2164

if.then12:                                        ; preds = %if.then13.i
  %10 = bitcast %struct.stat* %buf to i8*, !dbg !2167
  %11 = bitcast %struct.stat64.16* %8 to i8*, !dbg !2167
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 144)
  br label %return, !dbg !2169

if.end13:                                         ; preds = %if.then13.i, %for.cond.i38, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !2170
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !2170

cond.true:                                        ; preds = %if.end13
  %13 = ptrtoint i8* %path to i64, !dbg !2171
  %call.i.i = tail call i64 @klee_get_valuel(i64 %13) #5, !dbg !2171
  %14 = inttoptr i64 %call.i.i to i8*, !dbg !2171
  %cmp.i.i = icmp eq i8* %14, %path, !dbg !2174
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2174
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2174
  br label %for.cond.i, !dbg !2175

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %14, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %15 = load i8* %sc.0.i, align 1, !dbg !2176, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2177
  %and.i34 = and i32 %sub.i, %i.0.i, !dbg !2177
  %tobool.i35 = icmp eq i32 %and.i34, 0, !dbg !2177
  br i1 %tobool.i35, label %if.then.i36, label %if.else7.i, !dbg !2177

if.then.i36:                                      ; preds = %for.cond.i
  switch i8 %15, label %for.inc.i [
    i8 0, label %if.then2.i37
    i8 47, label %if.then4.i
  ], !dbg !2178

if.then2.i37:                                     ; preds = %if.then.i36
  store i8 0, i8* %sc.0.i, align 1, !dbg !2179, !tbaa !1299
  br label %cond.end, !dbg !2180

if.then4.i:                                       ; preds = %if.then.i36
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2181
  store i8 47, i8* %sc.0.i, align 1, !dbg !2181, !tbaa !1299
  br label %for.inc.i, !dbg !2182

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %15 to i64, !dbg !2183
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2183
  %conv10.i = trunc i64 %call9.i to i8, !dbg !2183
  %cmp13.i = icmp eq i8 %conv10.i, %15, !dbg !2184
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2184
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2184
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2185
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !2185, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !2186
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !2186

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i36
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i36 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !2175
  br label %for.cond.i, !dbg !2175

cond.end:                                         ; preds = %if.else7.i, %if.then2.i37, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i37 ], [ %path, %if.else7.i ], !dbg !2173
  %conv16 = sext i32 %flags to i64, !dbg !2170
  %call17 = tail call i64 (i64, ...)* @syscall(i64 262, i64 %fd.addr.0, i8* %cond, %struct.stat* %buf, i64 %conv16) #5, !dbg !2170
  %conv18 = trunc i64 %call17 to i32, !dbg !2170
  %cmp19 = icmp eq i32 %conv18, -1, !dbg !2187
  br i1 %cmp19, label %if.then21, label %return, !dbg !2187

if.then21:                                        ; preds = %cond.end
  %call22 = tail call i32 @klee_get_errno() #5, !dbg !2189
  %call23 = tail call i32* @__errno_location() #1, !dbg !2189
  store i32 %call22, i32* %call23, align 4, !dbg !2189, !tbaa !1289
  br label %return, !dbg !2189

return:                                           ; preds = %if.then21, %cond.end, %if.then12, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 0, %if.then12 ], [ -1, %if.then1 ], [ -1, %if.then21 ], [ %conv18, %cond.end ]
  ret i32 %retval.0, !dbg !2190
}

; Function Attrs: nounwind uwtable
define i32 @__fd_lstat(i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2191, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2193
  %cmp.i = icmp eq i8 %0, 0, !dbg !2193
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2193

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2193
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2193, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2193
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2193

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2194, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2194
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2194

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2194
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2194

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2195
  %sext.i = shl i32 %i.027.i, 24, !dbg !2195
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2195
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2195
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2195
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2195
  %inc.i = add i32 %i.027.i, 1, !dbg !2194
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2195

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2196
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2196, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2197
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2197, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2197
  %5 = load i64* %st_ino.i, align 8, !dbg !2197, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2197
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2196
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2198
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2197
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2197

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64.16* %buf to i8*, !dbg !2200
  %7 = bitcast %struct.stat64.16* %4 to i8*, !dbg !2200
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2202

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2203
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #5, !dbg !2203
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2203
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2206
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2206
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2206
  br label %for.cond.i12, !dbg !2207

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2208, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2209
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2209
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2209
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2209

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2210

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2211, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2212

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2213
  store i8 47, i8* %sc.0.i, align 1, !dbg !2213, !tbaa !1299
  br label %for.inc.i, !dbg !2214

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2215
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2215
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2215
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2216
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2216
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2216
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2217
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2217, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2218
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2218

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2207
  br label %for.cond.i12, !dbg !2207

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 6, i8* %path, %struct.stat64.16* %buf) #5, !dbg !2205
  %conv = trunc i64 %call2 to i32, !dbg !2205
  %cmp = icmp eq i32 %conv, -1, !dbg !2219
  br i1 %cmp, label %if.then4, label %return, !dbg !2219

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #5, !dbg !2221
  %call6 = tail call i32* @__errno_location() #1, !dbg !2221
  store i32 %call5, i32* %call6, align 4, !dbg !2221, !tbaa !1289
  br label %return, !dbg !2221

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2222
}

; Function Attrs: nounwind uwtable
define i32 @chdir(i8* %path) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2223, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2225
  %cmp.i = icmp eq i8 %0, 0, !dbg !2225
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2225

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2225
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2225, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2225
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2225

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2226, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2226
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2226

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2226
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2226

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2227
  %sext.i = shl i32 %i.027.i, 24, !dbg !2227
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2227
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2227
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2227
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2227
  %inc.i = add i32 %i.027.i, 1, !dbg !2226
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2227

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2228
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2228, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2229
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2229, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2229
  %5 = load i64* %st_ino.i, align 8, !dbg !2229, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2229
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2228
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2230
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2229
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2229

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str951, i64 0, i64 0)) #5, !dbg !2232
  %call1 = tail call i32* @__errno_location() #1, !dbg !2234
  store i32 2, i32* %call1, align 4, !dbg !2234, !tbaa !1289
  br label %return, !dbg !2235

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2236
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2236
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2236
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2239
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2239
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2239
  br label %for.cond.i11, !dbg !2240

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2241, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2242
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2242
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2242
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2242

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2243

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2244, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2245

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2246
  store i8 47, i8* %sc.0.i, align 1, !dbg !2246, !tbaa !1299
  br label %for.inc.i, !dbg !2247

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2248
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2248
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2248
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2249
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2249
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2249
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2250
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2250, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2251
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2251

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2240
  br label %for.cond.i11, !dbg !2240

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 80, i8* %path) #5, !dbg !2238
  %conv = trunc i64 %call3 to i32, !dbg !2238
  %cmp = icmp eq i32 %conv, -1, !dbg !2252
  br i1 %cmp, label %if.then5, label %return, !dbg !2252

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2254
  %call7 = tail call i32* @__errno_location() #1, !dbg !2254
  store i32 %call6, i32* %call7, align 4, !dbg !2254, !tbaa !1289
  br label %return, !dbg !2254

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2255
}

; Function Attrs: nounwind uwtable
define i32 @fchdir(i32 %fd) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2256
  br i1 %0, label %if.then.i, label %if.then, !dbg !2256

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2258
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2259
  %1 = load i32* %flags.i, align 4, !dbg !2259, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2259
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2259
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2259

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2258
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2260
  br i1 %tobool, label %if.then, label %if.end, !dbg !2260

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2262
  store i32 9, i32* %call1, align 4, !dbg !2262, !tbaa !1289
  br label %return, !dbg !2264

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2265
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2265, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2265
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2265

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str951, i64 0, i64 0)) #5, !dbg !2266
  %call4 = tail call i32* @__errno_location() #1, !dbg !2268
  store i32 2, i32* %call4, align 4, !dbg !2268, !tbaa !1289
  br label %return, !dbg !2269

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2270
  %3 = load i32* %fd5, align 8, !dbg !2270, !tbaa !1752
  %call6 = tail call i64 (i64, ...)* @syscall(i64 81, i32 %3) #5, !dbg !2270
  %conv = trunc i64 %call6 to i32, !dbg !2270
  %cmp = icmp eq i32 %conv, -1, !dbg !2271
  br i1 %cmp, label %if.then8, label %return, !dbg !2271

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2273
  %call10 = tail call i32* @__errno_location() #1, !dbg !2273
  store i32 %call9, i32* %call10, align 4, !dbg !2273, !tbaa !1289
  br label %return, !dbg !2273

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2274
}

; Function Attrs: nounwind uwtable
define i32 @chmod(i8* %path, i32 %mode) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2275, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2277
  %cmp.i = icmp eq i8 %0, 0, !dbg !2277
  br i1 %cmp.i, label %__get_sym_file.exit, label %lor.lhs.false.i, !dbg !2277

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2277
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2277, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2277
  br i1 %cmp4.i, label %for.cond.preheader.i, label %__get_sym_file.exit, !dbg !2277

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2278, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2278
  br i1 %cmp626.i, label %__get_sym_file.exit, label %for.body.i, !dbg !2278

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2278
  br i1 %cmp6.i, label %for.body.i, label %__get_sym_file.exit, !dbg !2278

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2279
  %sext.i = shl i32 %i.027.i, 24, !dbg !2279
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2279
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2279
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2279
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2279
  %inc.i = add i32 %i.027.i, 1, !dbg !2278
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2279

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2280
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2280, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2281
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2281, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2281
  %5 = load i64* %st_ino.i, align 8, !dbg !2281, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2281
  br i1 %cmp15.i, label %__get_sym_file.exit, label %if.end18.i, !dbg !2281

if.end18.i:                                       ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2280
  br label %__get_sym_file.exit, !dbg !2282

__get_sym_file.exit:                              ; preds = %if.end18.i, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %retval.0.i = phi %struct.exe_disk_file_t.17* [ %arrayidx14.i, %if.end18.i ], [ null, %lor.lhs.false.i ], [ null, %entry ], [ null, %if.then13.i ], [ null, %for.cond.preheader.i ], [ null, %for.cond.i ]
  %6 = load i32* @chmod.n_calls, align 4, !dbg !2283, !tbaa !1289
  %inc = add nsw i32 %6, 1, !dbg !2283
  store i32 %inc, i32* @chmod.n_calls, align 4, !dbg !2283, !tbaa !1289
  %7 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2284, !tbaa !1526
  %tobool = icmp eq i32 %7, 0, !dbg !2284
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2284

land.lhs.true:                                    ; preds = %__get_sym_file.exit
  %8 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 11), align 8, !dbg !2284, !tbaa !2286
  %9 = load i32* %8, align 4, !dbg !2284, !tbaa !1289
  %cmp = icmp eq i32 %9, %inc, !dbg !2284
  br i1 %cmp, label %if.then, label %if.end, !dbg !2284

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %7, -1, !dbg !2287
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2287, !tbaa !1526
  %call1 = tail call i32* @__errno_location() #1, !dbg !2289
  store i32 5, i32* %call1, align 4, !dbg !2289, !tbaa !1289
  br label %return, !dbg !2290

if.end:                                           ; preds = %land.lhs.true, %__get_sym_file.exit
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %retval.0.i, null, !dbg !2291
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2291

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @geteuid() #5, !dbg !2292
  %stat.i20 = getelementptr inbounds %struct.exe_disk_file_t.17* %retval.0.i, i64 0, i32 2, !dbg !2292
  %10 = load %struct.stat64.16** %stat.i20, align 8, !dbg !2292, !tbaa !1618
  %st_uid.i = getelementptr inbounds %struct.stat64.16* %10, i64 0, i32 4, !dbg !2292
  %11 = load i32* %st_uid.i, align 4, !dbg !2292, !tbaa !1603
  %cmp.i21 = icmp eq i32 %call.i, %11, !dbg !2292
  br i1 %cmp.i21, label %if.then.i23, label %if.else.i, !dbg !2292

if.then.i23:                                      ; preds = %if.then3
  %call1.i = tail call i32 @getgid() #5, !dbg !2296
  %12 = load %struct.stat64.16** %stat.i20, align 8, !dbg !2296, !tbaa !1618
  %st_gid.i = getelementptr inbounds %struct.stat64.16* %12, i64 0, i32 5, !dbg !2296
  %13 = load i32* %st_gid.i, align 4, !dbg !2296, !tbaa !1605
  %cmp3.i = icmp eq i32 %call1.i, %13, !dbg !2296
  %and.i22 = and i32 %mode, 3071, !dbg !2299
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2296
  %st_mode.i = getelementptr inbounds %struct.stat64.16* %12, i64 0, i32 3, !dbg !2300
  %14 = load i32* %st_mode.i, align 4, !dbg !2300, !tbaa !1591
  %and6.i = and i32 %14, -4096, !dbg !2300
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2300
  %or.i = or i32 %and7.i, %and6.i, !dbg !2300
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2300, !tbaa !1591
  br label %return, !dbg !2301

if.else.i:                                        ; preds = %if.then3
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2302
  store i32 1, i32* %call10.i, align 4, !dbg !2302, !tbaa !1289
  br label %return, !dbg !2304

if.else:                                          ; preds = %if.end
  %15 = ptrtoint i8* %path to i64, !dbg !2305
  %call.i.i = tail call i64 @klee_get_valuel(i64 %15) #5, !dbg !2305
  %16 = inttoptr i64 %call.i.i to i8*, !dbg !2305
  %cmp.i.i = icmp eq i8* %16, %path, !dbg !2308
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2308
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2308
  br label %for.cond.i17, !dbg !2309

for.cond.i17:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i19, %for.inc.i ]
  %sc.0.i = phi i8* [ %16, %if.else ], [ %sc.1.i, %for.inc.i ]
  %17 = load i8* %sc.0.i, align 1, !dbg !2310, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2311
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2311
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2311
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2311

if.then.i:                                        ; preds = %for.cond.i17
  switch i8 %17, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2312

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2313, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2314

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2315
  store i8 47, i8* %sc.0.i, align 1, !dbg !2315, !tbaa !1299
  br label %for.inc.i, !dbg !2316

if.else7.i:                                       ; preds = %for.cond.i17
  %conv8.i = sext i8 %17 to i64, !dbg !2317
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2317
  %conv10.i18 = trunc i64 %call9.i to i8, !dbg !2317
  %cmp13.i = icmp eq i8 %conv10.i18, %17, !dbg !2318
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2318
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2318
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2319
  store i8 %conv10.i18, i8* %sc.0.i, align 1, !dbg !2319, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i18, 0, !dbg !2320
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2320

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i19 = add i32 %i.0.i, 1, !dbg !2309
  br label %for.cond.i17, !dbg !2309

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call6 = tail call i64 (i64, ...)* @syscall(i64 90, i8* %path, i32 %mode) #5, !dbg !2307
  %conv = trunc i64 %call6 to i32, !dbg !2307
  %cmp7 = icmp eq i32 %conv, -1, !dbg !2321
  br i1 %cmp7, label %if.then9, label %return, !dbg !2321

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #5, !dbg !2323
  %call11 = tail call i32* @__errno_location() #1, !dbg !2323
  store i32 %call10, i32* %call11, align 4, !dbg !2323, !tbaa !1289
  br label %return, !dbg !2323

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.else.i, %if.then.i23, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2324
}

; Function Attrs: nounwind uwtable
define i32 @fchmod(i32 %fd, i32 %mode) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2325
  br i1 %0, label %if.then.i, label %if.then, !dbg !2325

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2327
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2328
  %1 = load i32* %flags.i, align 4, !dbg !2328, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2328
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2328
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2328

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2327
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2329
  br i1 %tobool, label %if.then, label %if.end, !dbg !2329

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2331
  store i32 9, i32* %call1, align 4, !dbg !2331, !tbaa !1289
  br label %return, !dbg !2333

if.end:                                           ; preds = %__get_file.exit
  %2 = load i32* @fchmod.n_calls, align 4, !dbg !2334, !tbaa !1289
  %inc = add nsw i32 %2, 1, !dbg !2334
  store i32 %inc, i32* @fchmod.n_calls, align 4, !dbg !2334, !tbaa !1289
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2335, !tbaa !1526
  %tobool2 = icmp eq i32 %3, 0, !dbg !2335
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2335

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 12), align 8, !dbg !2335, !tbaa !2337
  %5 = load i32* %4, align 4, !dbg !2335, !tbaa !1289
  %cmp = icmp eq i32 %5, %inc, !dbg !2335
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2335

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2338
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2338, !tbaa !1526
  %call4 = tail call i32* @__errno_location() #1, !dbg !2340
  store i32 5, i32* %call4, align 4, !dbg !2340, !tbaa !1289
  br label %return, !dbg !2341

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2342
  %6 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2342, !tbaa !1520
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %6, null, !dbg !2342
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2342

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @geteuid() #5, !dbg !2343
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 2, !dbg !2343
  %7 = load %struct.stat64.16** %stat.i, align 8, !dbg !2343, !tbaa !1618
  %st_uid.i = getelementptr inbounds %struct.stat64.16* %7, i64 0, i32 4, !dbg !2343
  %8 = load i32* %st_uid.i, align 4, !dbg !2343, !tbaa !1603
  %cmp.i = icmp eq i32 %call.i, %8, !dbg !2343
  br i1 %cmp.i, label %if.then.i23, label %if.else.i, !dbg !2343

if.then.i23:                                      ; preds = %if.then7
  %call1.i = tail call i32 @getgid() #5, !dbg !2346
  %9 = load %struct.stat64.16** %stat.i, align 8, !dbg !2346, !tbaa !1618
  %st_gid.i = getelementptr inbounds %struct.stat64.16* %9, i64 0, i32 5, !dbg !2346
  %10 = load i32* %st_gid.i, align 4, !dbg !2346, !tbaa !1605
  %cmp3.i = icmp eq i32 %call1.i, %10, !dbg !2346
  %and.i22 = and i32 %mode, 3071, !dbg !2347
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2346
  %st_mode.i = getelementptr inbounds %struct.stat64.16* %9, i64 0, i32 3, !dbg !2348
  %11 = load i32* %st_mode.i, align 4, !dbg !2348, !tbaa !1591
  %and6.i = and i32 %11, -4096, !dbg !2348
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2348
  %or.i = or i32 %and7.i, %and6.i, !dbg !2348
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2348, !tbaa !1591
  br label %return, !dbg !2349

if.else.i:                                        ; preds = %if.then7
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2350
  store i32 1, i32* %call10.i, align 4, !dbg !2350, !tbaa !1289
  br label %return, !dbg !2351

if.else:                                          ; preds = %if.end5
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2352
  %12 = load i32* %fd10, align 8, !dbg !2352, !tbaa !1752
  %call11 = tail call i64 (i64, ...)* @syscall(i64 91, i32 %12, i32 %mode) #5, !dbg !2352
  %conv = trunc i64 %call11 to i32, !dbg !2352
  %cmp12 = icmp eq i32 %conv, -1, !dbg !2353
  br i1 %cmp12, label %if.then14, label %return, !dbg !2353

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 @klee_get_errno() #5, !dbg !2355
  %call16 = tail call i32* @__errno_location() #1, !dbg !2355
  store i32 %call15, i32* %call16, align 4, !dbg !2355, !tbaa !1289
  br label %return, !dbg !2355

return:                                           ; preds = %if.then14, %if.else, %if.else.i, %if.then.i23, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then14 ], [ %conv, %if.else ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2356
}

; Function Attrs: nounwind uwtable
define i32 @chown(i8* %path, i32 %owner, i32 %group) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2357, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2359
  %cmp.i = icmp eq i8 %0, 0, !dbg !2359
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2359

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2359
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2359, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2359
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2359

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2360, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2360
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2360

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2360
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2360

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2361
  %sext.i = shl i32 %i.027.i, 24, !dbg !2361
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2361
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2361
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2361
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2361
  %inc.i = add i32 %i.027.i, 1, !dbg !2360
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2361

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2362
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2362, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2363
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2363, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2363
  %5 = load i64* %st_ino.i, align 8, !dbg !2363, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2363
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2362
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2364
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2363
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2363

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2466, i64 0, i64 0)) #5, !dbg !2365
  %call.i = tail call i32* @__errno_location() #1, !dbg !2368
  store i32 1, i32* %call.i, align 4, !dbg !2368, !tbaa !1289
  br label %return, !dbg !2366

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2369
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2369
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2369
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2372
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2372
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2372
  br label %for.cond.i13, !dbg !2373

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2374, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2375
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2375
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2375
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2375

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2376

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2377, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2378

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2379
  store i8 47, i8* %sc.0.i, align 1, !dbg !2379, !tbaa !1299
  br label %for.inc.i, !dbg !2380

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2381
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2381
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2381
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2382
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2382
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2382
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2383
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2383, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2384
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2384

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2373
  br label %for.cond.i13, !dbg !2373

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #5, !dbg !2371
  %conv = trunc i64 %call3 to i32, !dbg !2371
  %cmp = icmp eq i32 %conv, -1, !dbg !2385
  br i1 %cmp, label %if.then5, label %return, !dbg !2385

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2387
  %call7 = tail call i32* @__errno_location() #1, !dbg !2387
  store i32 %call6, i32* %call7, align 4, !dbg !2387, !tbaa !1289
  br label %return, !dbg !2387

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2388
}

; Function Attrs: nounwind uwtable
define i32 @fchown(i32 %fd, i32 %owner, i32 %group) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2389
  br i1 %0, label %if.then.i, label %if.then, !dbg !2389

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2391
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2392
  %1 = load i32* %flags.i, align 4, !dbg !2392, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2392
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2392
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2391
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2393
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2392
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2392

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2395
  store i32 9, i32* %call1, align 4, !dbg !2395, !tbaa !1289
  br label %return, !dbg !2397

if.end:                                           ; preds = %if.then.i
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2398
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2398, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2398
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2398

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2466, i64 0, i64 0)) #5, !dbg !2399
  %call.i = tail call i32* @__errno_location() #1, !dbg !2402
  store i32 1, i32* %call.i, align 4, !dbg !2402, !tbaa !1289
  br label %return, !dbg !2400

if.else:                                          ; preds = %if.end
  %call6 = tail call i64 (i64, ...)* @syscall(i64 93, i32 %fd, i32 %owner, i32 %group) #5, !dbg !2403
  %conv = trunc i64 %call6 to i32, !dbg !2403
  %cmp = icmp eq i32 %conv, -1, !dbg !2404
  br i1 %cmp, label %if.then8, label %return, !dbg !2404

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2406
  %call10 = tail call i32* @__errno_location() #1, !dbg !2406
  store i32 %call9, i32* %call10, align 4, !dbg !2406, !tbaa !1289
  br label %return, !dbg !2406

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2407
}

; Function Attrs: nounwind uwtable
define i32 @lchown(i8* %path, i32 %owner, i32 %group) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2408, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2410
  %cmp.i = icmp eq i8 %0, 0, !dbg !2410
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2410

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2410
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2410, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2410
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2410

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2411, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2411
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2411

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2411
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2411

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2412
  %sext.i = shl i32 %i.027.i, 24, !dbg !2412
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2412
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2412
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2412
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2412
  %inc.i = add i32 %i.027.i, 1, !dbg !2411
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2412

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2413
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2413, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2414
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2414, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2414
  %5 = load i64* %st_ino.i, align 8, !dbg !2414, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2414
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2413
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2415
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2414
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2414

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2466, i64 0, i64 0)) #5, !dbg !2416
  %call.i = tail call i32* @__errno_location() #1, !dbg !2419
  store i32 1, i32* %call.i, align 4, !dbg !2419, !tbaa !1289
  br label %return, !dbg !2417

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2420
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2420
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2420
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2423
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2423
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2423
  br label %for.cond.i13, !dbg !2424

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2425, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2426
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2426
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2426
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2426

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2427

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2428, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2429

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2430
  store i8 47, i8* %sc.0.i, align 1, !dbg !2430, !tbaa !1299
  br label %for.inc.i, !dbg !2431

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2432
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2432
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2432
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2433
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2433
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2433
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2434
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2434, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2435
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2435

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2424
  br label %for.cond.i13, !dbg !2424

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #5, !dbg !2422
  %conv = trunc i64 %call3 to i32, !dbg !2422
  %cmp = icmp eq i32 %conv, -1, !dbg !2436
  br i1 %cmp, label %if.then5, label %return, !dbg !2436

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2438
  %call7 = tail call i32* @__errno_location() #1, !dbg !2438
  store i32 %call6, i32* %call7, align 4, !dbg !2438, !tbaa !1289
  br label %return, !dbg !2438

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2439
}

; Function Attrs: nounwind uwtable
define i32 @__fd_fstat(i32 %fd, %struct.stat64.16* %buf) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2440
  br i1 %0, label %if.then.i, label %if.then, !dbg !2440

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2442
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2443
  %1 = load i32* %flags.i, align 4, !dbg !2443, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2443
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2443
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2443

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2442
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2444
  br i1 %tobool, label %if.then, label %if.end, !dbg !2444

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2446
  store i32 9, i32* %call1, align 4, !dbg !2446, !tbaa !1289
  br label %return, !dbg !2448

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2449
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2449, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2449
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !2449

if.then3:                                         ; preds = %if.end
  %fd4 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2450
  %3 = load i32* %fd4, align 8, !dbg !2450, !tbaa !1752
  %call5 = tail call i64 (i64, ...)* @syscall(i64 5, i32 %3, %struct.stat64.16* %buf) #5, !dbg !2450
  %conv = trunc i64 %call5 to i32, !dbg !2450
  %cmp = icmp eq i32 %conv, -1, !dbg !2451
  br i1 %cmp, label %if.then7, label %return, !dbg !2451

if.then7:                                         ; preds = %if.then3
  %call8 = tail call i32 @klee_get_errno() #5, !dbg !2453
  %call9 = tail call i32* @__errno_location() #1, !dbg !2453
  store i32 %call8, i32* %call9, align 4, !dbg !2453, !tbaa !1289
  br label %return, !dbg !2453

if.end11:                                         ; preds = %if.end
  %4 = bitcast %struct.stat64.16* %buf to i8*, !dbg !2454
  %stat = getelementptr inbounds %struct.exe_disk_file_t.17* %2, i64 0, i32 2, !dbg !2454
  %5 = load %struct.stat64.16** %stat, align 8, !dbg !2454, !tbaa !1618
  %6 = bitcast %struct.stat64.16* %5 to i8*, !dbg !2454
  %7 = call i8* @memcpy(i8* %4, i8* %6, i64 144)
  br label %return, !dbg !2455

return:                                           ; preds = %if.end11, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %if.then ], [ -1, %if.then7 ], [ %conv, %if.then3 ]
  ret i32 %retval.0, !dbg !2456
}

; Function Attrs: nounwind uwtable
define i32 @__fd_ftruncate(i32 %fd, i64 %length) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2457
  br i1 %0, label %if.then.i, label %__get_file.exit.thread, !dbg !2457

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2459
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2460
  %1 = load i32* %flags.i, align 4, !dbg !2460, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2460
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2460
  br i1 %tobool.i, label %__get_file.exit.thread, label %__get_file.exit, !dbg !2460

__get_file.exit.thread:                           ; preds = %if.then.i, %entry
  %2 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !2461, !tbaa !1289
  %inc20 = add nsw i32 %2, 1, !dbg !2461
  store i32 %inc20, i32* @__fd_ftruncate.n_calls, align 4, !dbg !2461, !tbaa !1289
  br label %if.then, !dbg !2462

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2459
  %3 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !2461, !tbaa !1289
  %inc = add nsw i32 %3, 1, !dbg !2461
  store i32 %inc, i32* @__fd_ftruncate.n_calls, align 4, !dbg !2461, !tbaa !1289
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2462
  br i1 %tobool, label %if.then, label %if.end, !dbg !2462

if.then:                                          ; preds = %__get_file.exit, %__get_file.exit.thread
  %call1 = tail call i32* @__errno_location() #1, !dbg !2464
  store i32 9, i32* %call1, align 4, !dbg !2464, !tbaa !1289
  br label %return, !dbg !2466

if.end:                                           ; preds = %__get_file.exit
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2467, !tbaa !1526
  %tobool2 = icmp eq i32 %4, 0, !dbg !2467
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2467

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 9), align 8, !dbg !2467, !tbaa !1537
  %6 = load i32* %5, align 4, !dbg !2467, !tbaa !1289
  %cmp = icmp eq i32 %6, %inc, !dbg !2467
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2467

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %4, -1, !dbg !2469
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2469, !tbaa !1526
  %call4 = tail call i32* @__errno_location() #1, !dbg !2471
  store i32 5, i32* %call4, align 4, !dbg !2471, !tbaa !1289
  br label %return, !dbg !2472

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2473
  %7 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2473, !tbaa !1520
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %7, null, !dbg !2473
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2473

if.then7:                                         ; preds = %if.end5
  tail call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str1052, i64 0, i64 0)) #5, !dbg !2474
  %call8 = tail call i32* @__errno_location() #1, !dbg !2476
  store i32 5, i32* %call8, align 4, !dbg !2476, !tbaa !1289
  br label %return, !dbg !2477

if.else:                                          ; preds = %if.end5
  %fd9 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2478
  %8 = load i32* %fd9, align 8, !dbg !2478, !tbaa !1752
  %call10 = tail call i64 (i64, ...)* @syscall(i64 77, i32 %8, i64 %length) #5, !dbg !2478
  %conv = trunc i64 %call10 to i32, !dbg !2478
  %cmp11 = icmp eq i32 %conv, -1, !dbg !2479
  br i1 %cmp11, label %if.then13, label %return, !dbg !2479

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 @klee_get_errno() #5, !dbg !2481
  %call15 = tail call i32* @__errno_location() #1, !dbg !2481
  store i32 %call14, i32* %call15, align 4, !dbg !2481, !tbaa !1289
  br label %return, !dbg !2481

return:                                           ; preds = %if.then13, %if.else, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then7 ], [ -1, %if.then ], [ -1, %if.then13 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2482
}

; Function Attrs: nounwind uwtable
define i32 @__fd_getdents(i32 %fd, %struct.dirent64.13* %dirp, i32 %count) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2483
  br i1 %0, label %if.then.i, label %if.then, !dbg !2483

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2485
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2486
  %1 = load i32* %flags.i, align 4, !dbg !2486, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2486
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2486
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2486

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2485
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2487
  br i1 %tobool, label %if.then, label %if.end, !dbg !2487

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2489
  store i32 9, i32* %call1, align 4, !dbg !2489, !tbaa !1289
  br label %return, !dbg !2491

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2492
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2492, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2492
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2492

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str1153, i64 0, i64 0)) #5, !dbg !2493
  %call4 = tail call i32* @__errno_location() #1, !dbg !2495
  store i32 22, i32* %call4, align 4, !dbg !2495, !tbaa !1289
  br label %return, !dbg !2496

if.else:                                          ; preds = %if.end
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2497
  %3 = load i64* %off, align 8, !dbg !2497, !tbaa !1979
  %cmp = icmp ult i64 %3, 4096, !dbg !2497
  br i1 %cmp, label %if.then5, label %if.else43, !dbg !2497

if.then5:                                         ; preds = %if.else
  %int_cast_to_i64 = bitcast i64 280 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2498
  %div = udiv i64 %3, 280, !dbg !2498
  %mul = mul i64 %div, 280, !dbg !2499
  %cmp8 = icmp eq i64 %mul, %3, !dbg !2499
  br i1 %cmp8, label %lor.lhs.false, label %if.then11, !dbg !2499

lor.lhs.false:                                    ; preds = %if.then5
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2499, !tbaa !1504
  %conv = zext i32 %4 to i64, !dbg !2499
  %cmp9 = icmp ugt i64 %div, %conv, !dbg !2499
  br i1 %cmp9, label %if.then11, label %for.cond.preheader, !dbg !2499

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp15123 = icmp ult i64 %div, %conv, !dbg !2501
  br i1 %cmp15123, label %for.body, label %for.end, !dbg !2501

if.then11:                                        ; preds = %lor.lhs.false, %if.then5
  %call12 = tail call i32* @__errno_location() #1, !dbg !2502
  store i32 22, i32* %call12, align 4, !dbg !2502, !tbaa !1289
  br label %return, !dbg !2504

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0126 = phi %struct.dirent64.13* [ %incdec.ptr, %for.body ], [ %dirp, %for.cond.preheader ]
  %i.0125 = phi i64 [ %add23, %for.body ], [ %div, %for.cond.preheader ]
  %bytes.0124 = phi i64 [ %add27, %for.body ], [ 0, %for.cond.preheader ]
  %5 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2505, !tbaa !1507
  %stat = getelementptr inbounds %struct.exe_disk_file_t.17* %5, i64 %i.0125, i32 2, !dbg !2506
  %6 = load %struct.stat64.16** %stat, align 8, !dbg !2506, !tbaa !1618
  %st_ino = getelementptr inbounds %struct.stat64.16* %6, i64 0, i32 1, !dbg !2506
  %7 = load i64* %st_ino, align 8, !dbg !2506, !tbaa !1583
  %d_ino = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 0, !dbg !2506
  store i64 %7, i64* %d_ino, align 8, !dbg !2506, !tbaa !2507
  %d_reclen = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 2, !dbg !2510
  store i16 280, i16* %d_reclen, align 2, !dbg !2510, !tbaa !2511
  %st_mode = getelementptr inbounds %struct.stat64.16* %6, i64 0, i32 3, !dbg !2512
  %8 = load i32* %st_mode, align 4, !dbg !2512, !tbaa !1591
  %int_cast_to_i641 = zext i32 12 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2512
  %and = lshr i32 %8, 12, !dbg !2512
  %and.tr = trunc i32 %and to i8, !dbg !2512
  %conv18 = and i8 %and.tr, 15, !dbg !2512
  %d_type = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 3, !dbg !2512
  store i8 %conv18, i8* %d_type, align 1, !dbg !2512, !tbaa !2513
  %add = add nsw i64 %i.0125, 65, !dbg !2514
  %conv19 = trunc i64 %add to i8, !dbg !2514
  %arrayidx20 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 4, i64 0, !dbg !2514
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !2514, !tbaa !1299
  %arrayidx22 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 4, i64 1, !dbg !2515
  store i8 0, i8* %arrayidx22, align 1, !dbg !2515, !tbaa !1299
  %add23 = add nsw i64 %i.0125, 1, !dbg !2516
  %mul24 = mul i64 %add23, 280, !dbg !2516
  %d_off = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 1, !dbg !2516
  store i64 %mul24, i64* %d_off, align 8, !dbg !2516, !tbaa !2517
  %add27 = add nsw i64 %bytes.0124, 280, !dbg !2518
  %incdec.ptr = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 1, !dbg !2519
  %9 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2501, !tbaa !1504
  %conv14 = zext i32 %9 to i64, !dbg !2501
  %cmp15 = icmp slt i64 %add23, %conv14, !dbg !2501
  br i1 %cmp15, label %for.body, label %for.end, !dbg !2501

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0.lcssa = phi %struct.dirent64.13* [ %dirp, %for.cond.preheader ], [ %incdec.ptr, %for.body ]
  %bytes.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add27, %for.body ]
  %cmp28 = icmp ult i32 %count, 4096, !dbg !2520
  %10 = zext i32 %count to i64, !dbg !2520
  %conv30 = select i1 %cmp28, i64 %10, i64 4096, !dbg !2520
  %d_ino31 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 0, !dbg !2521
  store i64 0, i64* %d_ino31, align 8, !dbg !2521, !tbaa !2507
  %sub = sub nsw i64 %conv30, %bytes.0.lcssa, !dbg !2522
  %conv32 = trunc i64 %sub to i16, !dbg !2522
  %d_reclen33 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 2, !dbg !2522
  store i16 %conv32, i16* %d_reclen33, align 2, !dbg !2522, !tbaa !2511
  %d_type34 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 3, !dbg !2523
  store i8 0, i8* %d_type34, align 1, !dbg !2523, !tbaa !2513
  %arrayidx36 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 4, i64 0, !dbg !2524
  store i8 0, i8* %arrayidx36, align 1, !dbg !2524, !tbaa !1299
  %d_off37 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 1, !dbg !2525
  store i64 4096, i64* %d_off37, align 8, !dbg !2525, !tbaa !2517
  %conv39 = and i64 %sub, 65535, !dbg !2526
  %add40 = add nsw i64 %conv39, %bytes.0.lcssa, !dbg !2526
  store i64 %conv30, i64* %off, align 8, !dbg !2527, !tbaa !1979
  %conv42 = trunc i64 %add40 to i32, !dbg !2528
  br label %return, !dbg !2528

if.else43:                                        ; preds = %if.else
  %sub45 = add nsw i64 %3, -4096, !dbg !2529
  %11 = bitcast %struct.dirent64.13* %dirp to i8*, !dbg !2530
  %conv46 = zext i32 %count to i64, !dbg !2530
  %12 = call i8* @memset(i8* %11, i32 0, i64 %conv46)
  %fd47 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2531
  %13 = load i32* %fd47, align 8, !dbg !2531, !tbaa !1752
  %call48 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %13, i64 %sub45, i32 0) #5, !dbg !2531
  %cmp49 = icmp eq i64 %call48, -1, !dbg !2532
  br i1 %cmp49, label %cond.false52, label %cond.end53, !dbg !2532

cond.false52:                                     ; preds = %if.else43
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str1254, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 875, i8* getelementptr inbounds ([65 x
  unreachable, !dbg !2532

cond.end53:                                       ; preds = %if.else43
  %14 = load i32* %fd47, align 8, !dbg !2533, !tbaa !1752
  %call55 = tail call i64 (i64, ...)* @syscall(i64 217, i32 %14, %struct.dirent64.13* %dirp, i32 %count) #5, !dbg !2533
  %conv56 = trunc i64 %call55 to i32, !dbg !2533
  %cmp57 = icmp eq i32 %conv56, -1, !dbg !2534
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !2534

if.then59:                                        ; preds = %cond.end53
  %call60 = tail call i32 @klee_get_errno() #5, !dbg !2535
  %call61 = tail call i32* @__errno_location() #1, !dbg !2535
  store i32 %call60, i32* %call61, align 4, !dbg !2535, !tbaa !1289
  br label %return, !dbg !2537

if.else62:                                        ; preds = %cond.end53
  %15 = load i32* %fd47, align 8, !dbg !2538, !tbaa !1752
  %call64 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %15, i32 0, i32 1) #5, !dbg !2538
  %add65 = add nsw i64 %call64, 4096, !dbg !2538
  store i64 %add65, i64* %off, align 8, !dbg !2538, !tbaa !1979
  %cmp67128 = icmp sgt i32 %conv56, 0, !dbg !2539
  br i1 %cmp67128, label %while.body, label %return, !dbg !2539

while.body:                                       ; preds = %while.body, %if.else62
  %pos.0129 = phi i32 [ %add73, %while.body ], [ 0, %if.else62 ]
  %idx.ext = sext i32 %pos.0129 to i64, !dbg !2540
  %add.ptr.sum = add i64 %idx.ext, 8, !dbg !2541
  %d_off69 = getelementptr inbounds i8* %11, i64 %add.ptr.sum, !dbg !2541
  %16 = bitcast i8* %d_off69 to i64*, !dbg !2541
  %17 = load i64* %16, align 8, !dbg !2541, !tbaa !2517
  %add70 = add nsw i64 %17, 4096, !dbg !2541
  store i64 %add70, i64* %16, align 8, !dbg !2541, !tbaa !2517
  %add.ptr.sum120 = add i64 %idx.ext, 16, !dbg !2542
  %d_reclen71 = getelementptr inbounds i8* %11, i64 %add.ptr.sum120, !dbg !2542
  %18 = bitcast i8* %d_reclen71 to i16*, !dbg !2542
  %19 = load i16* %18, align 2, !dbg !2542, !tbaa !2511
  %conv72 = zext i16 %19 to i32, !dbg !2542
  %add73 = add nsw i32 %conv72, %pos.0129, !dbg !2542
  %cmp67 = icmp slt i32 %add73, %conv56, !dbg !2539
  br i1 %cmp67, label %while.body, label %return, !dbg !2539

return:                                           ; preds = %while.body, %if.else62, %if.then59, %for.end, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then11 ], [ %conv42, %for.end ], [ -1, %if.then ], [ -1, %if.then59 ], [ %conv56, %if.else62 ], [ %conv56, %while.body ]
  ret i32 %retval.0, !dbg !2543
}

; Function Attrs: nounwind uwtable
define i32 @ioctl(i32 %fd, i64 %request, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !2544
  br i1 %0, label %if.then.i, label %if.then, !dbg !2544

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2546
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2547
  %1 = load i32* %flags.i, align 4, !dbg !2547, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2547
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2547
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2547

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2546
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2548
  br i1 %tobool, label %if.then, label %if.end, !dbg !2548

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2550
  store i32 9, i32* %call1, align 4, !dbg !2550, !tbaa !1289
  br label %return, !dbg !2552

if.end:                                           ; preds = %__get_file.exit
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2553
  call void @llvm.va_start(i8* %arraydecay2), !dbg !2553
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2554
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2554
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2554
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2554

vaarg.in_reg:                                     ; preds = %if.end
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2554
  %reg_save_area = load i8** %2, align 16, !dbg !2554
  %3 = sext i32 %gp_offset to i64, !dbg !2554
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !2554
  %5 = add i32 %gp_offset, 8, !dbg !2554
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !2554
  br label %vaarg.end, !dbg !2554

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2554
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2554
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2554
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2554
  br label %vaarg.end, !dbg !2554

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !2554
  %6 = load i8** %vaarg.addr, align 8, !dbg !2554
  call void @llvm.va_end(i8* %arraydecay2), !dbg !2555
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2556
  %7 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2556, !tbaa !1520
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %7, null, !dbg !2556
  br i1 %tobool6, label %if.else103, label %if.then7, !dbg !2556

if.then7:                                         ; preds = %vaarg.end
  %stat9 = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 0, i32 2, !dbg !2557
  %8 = load %struct.stat64.16** %stat9, align 8, !dbg !2557, !tbaa !1618
  switch i64 %request, label %sw.default [
    i64 21505, label %sw.bb
    i64 21506, label %sw.bb48
    i64 21507, label %sw.bb55
    i64 21508, label %sw.bb60
    i64 21523, label %sw.bb67
    i64 21524, label %sw.bb74
    i64 21531, label %sw.bb82
    i64 2150657282, label %sw.bb100
  ], !dbg !2558

sw.bb:                                            ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str1355, i64 0, i64 0)) #5, !dbg !2559
  %9 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2560
  %10 = load i32* %9, align 4, !dbg !2560, !tbaa !2562
  %and = and i32 %10, 61440, !dbg !2560
  %cmp = icmp eq i32 %and, 8192, !dbg !2560
  br i1 %cmp, label %if.then10, label %if.else, !dbg !2560

if.then10:                                        ; preds = %sw.bb
  %c_iflag = bitcast i8* %6 to i32*, !dbg !2564
  store i32 27906, i32* %c_iflag, align 4, !dbg !2564, !tbaa !2566
  %c_oflag = getelementptr inbounds i8* %6, i64 4, !dbg !2568
  %11 = bitcast i8* %c_oflag to i32*, !dbg !2568
  store i32 5, i32* %11, align 4, !dbg !2568, !tbaa !2569
  %c_cflag = getelementptr inbounds i8* %6, i64 8, !dbg !2570
  %12 = bitcast i8* %c_cflag to i32*, !dbg !2570
  store i32 1215, i32* %12, align 4, !dbg !2570, !tbaa !2571
  %c_lflag = getelementptr inbounds i8* %6, i64 12, !dbg !2572
  %13 = bitcast i8* %c_lflag to i32*, !dbg !2572
  store i32 35287, i32* %13, align 4, !dbg !2572, !tbaa !2573
  %14 = getelementptr inbounds i8* %6, i64 16, !dbg !2574
  store i8 0, i8* %14, align 1, !dbg !2574, !tbaa !2575
  %c_cc = getelementptr inbounds i8* %6, i64 17, !dbg !2576
  store i8 3, i8* %c_cc, align 1, !dbg !2576, !tbaa !1299
  %arrayidx12 = getelementptr inbounds i8* %6, i64 18, !dbg !2577
  store i8 28, i8* %arrayidx12, align 1, !dbg !2577, !tbaa !1299
  %arrayidx14 = getelementptr inbounds i8* %6, i64 19, !dbg !2578
  store i8 127, i8* %arrayidx14, align 1, !dbg !2578, !tbaa !1299
  %arrayidx16 = getelementptr inbounds i8* %6, i64 20, !dbg !2579
  store i8 21, i8* %arrayidx16, align 1, !dbg !2579, !tbaa !1299
  %arrayidx18 = getelementptr inbounds i8* %6, i64 21, !dbg !2580
  store i8 4, i8* %arrayidx18, align 1, !dbg !2580, !tbaa !1299
  %arrayidx20 = getelementptr inbounds i8* %6, i64 22, !dbg !2581
  store i8 0, i8* %arrayidx20, align 1, !dbg !2581, !tbaa !1299
  %arrayidx22 = getelementptr inbounds i8* %6, i64 23, !dbg !2582
  store i8 1, i8* %arrayidx22, align 1, !dbg !2582, !tbaa !1299
  %arrayidx24 = getelementptr inbounds i8* %6, i64 24, !dbg !2583
  store i8 -1, i8* %arrayidx24, align 1, !dbg !2583, !tbaa !1299
  %arrayidx26 = getelementptr inbounds i8* %6, i64 25, !dbg !2584
  store i8 17, i8* %arrayidx26, align 1, !dbg !2584, !tbaa !1299
  %arrayidx28 = getelementptr inbounds i8* %6, i64 26, !dbg !2585
  store i8 19, i8* %arrayidx28, align 1, !dbg !2585, !tbaa !1299
  %arrayidx30 = getelementptr inbounds i8* %6, i64 27, !dbg !2586
  store i8 26, i8* %arrayidx30, align 1, !dbg !2586, !tbaa !1299
  %arrayidx32 = getelementptr inbounds i8* %6, i64 28, !dbg !2587
  store i8 -1, i8* %arrayidx32, align 1, !dbg !2587, !tbaa !1299
  %arrayidx34 = getelementptr inbounds i8* %6, i64 29, !dbg !2588
  store i8 18, i8* %arrayidx34, align 1, !dbg !2588, !tbaa !1299
  %arrayidx36 = getelementptr inbounds i8* %6, i64 30, !dbg !2589
  store i8 15, i8* %arrayidx36, align 1, !dbg !2589, !tbaa !1299
  %arrayidx38 = getelementptr inbounds i8* %6, i64 31, !dbg !2590
  store i8 23, i8* %arrayidx38, align 1, !dbg !2590, !tbaa !1299
  %arrayidx40 = getelementptr inbounds i8* %6, i64 32, !dbg !2591
  store i8 22, i8* %arrayidx40, align 1, !dbg !2591, !tbaa !1299
  %arrayidx42 = getelementptr inbounds i8* %6, i64 33, !dbg !2592
  store i8 -1, i8* %arrayidx42, align 1, !dbg !2592, !tbaa !1299
  %arrayidx44 = getelementptr inbounds i8* %6, i64 34, !dbg !2593
  store i8 0, i8* %arrayidx44, align 1, !dbg !2593, !tbaa !1299
  %arrayidx46 = getelementptr inbounds i8* %6, i64 35, !dbg !2594
  store i8 0, i8* %arrayidx46, align 1, !dbg !2594, !tbaa !1299
  br label %return, !dbg !2595

if.else:                                          ; preds = %sw.bb
  %call47 = call i32* @__errno_location() #1, !dbg !2596
  store i32 25, i32* %call47, align 4, !dbg !2596, !tbaa !1289
  br label %return, !dbg !2598

sw.bb48:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str1456, i64 0, i64 0)) #5, !dbg !2599
  %15 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2601
  %16 = load i32* %15, align 4, !dbg !2601, !tbaa !2562
  %and50 = and i32 %16, 61440, !dbg !2601
  %cmp51 = icmp eq i32 %and50, 8192, !dbg !2601
  br i1 %cmp51, label %return, label %if.else53, !dbg !2601

if.else53:                                        ; preds = %sw.bb48
  %call54 = call i32* @__errno_location() #1, !dbg !2603
  store i32 25, i32* %call54, align 4, !dbg !2603, !tbaa !1289
  br label %return, !dbg !2605

sw.bb55:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str1557, i64 0, i64 0)) #5, !dbg !2606
  %cmp56 = icmp eq i32 %fd, 0, !dbg !2608
  br i1 %cmp56, label %return, label %if.else58, !dbg !2608

if.else58:                                        ; preds = %sw.bb55
  %call59 = call i32* @__errno_location() #1, !dbg !2610
  store i32 25, i32* %call59, align 4, !dbg !2610, !tbaa !1289
  br label %return, !dbg !2612

sw.bb60:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str1658, i64 0, i64 0)) #5, !dbg !2613
  %17 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2615
  %18 = load i32* %17, align 4, !dbg !2615, !tbaa !2562
  %and62 = and i32 %18, 61440, !dbg !2615
  %cmp63 = icmp eq i32 %and62, 8192, !dbg !2615
  br i1 %cmp63, label %return, label %if.else65, !dbg !2615

if.else65:                                        ; preds = %sw.bb60
  %call66 = call i32* @__errno_location() #1, !dbg !2617
  store i32 25, i32* %call66, align 4, !dbg !2617, !tbaa !1289
  br label %return, !dbg !2619

sw.bb67:                                          ; preds = %if.then7
  %ws_row = bitcast i8* %6 to i16*, !dbg !2620
  store i16 24, i16* %ws_row, align 2, !dbg !2620, !tbaa !2621
  %ws_col = getelementptr inbounds i8* %6, i64 2, !dbg !2623
  %19 = bitcast i8* %ws_col to i16*, !dbg !2623
  store i16 80, i16* %19, align 2, !dbg !2623, !tbaa !2624
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str1759, i64 0, i64 0)) #5, !dbg !2625
  %20 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2626
  %21 = load i32* %20, align 4, !dbg !2626, !tbaa !2562
  %and69 = and i32 %21, 61440, !dbg !2626
  %cmp70 = icmp eq i32 %and69, 8192, !dbg !2626
  br i1 %cmp70, label %return, label %if.else72, !dbg !2626

if.else72:                                        ; preds = %sw.bb67
  %call73 = call i32* @__errno_location() #1, !dbg !2628
  store i32 25, i32* %call73, align 4, !dbg !2628, !tbaa !1289
  br label %return, !dbg !2630

sw.bb74:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str1860, i64 0, i64 0)) #5, !dbg !2631
  %22 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2633
  %23 = load i32* %22, align 4, !dbg !2633, !tbaa !2562
  %and76 = and i32 %23, 61440, !dbg !2633
  %cmp77 = icmp eq i32 %and76, 8192, !dbg !2633
  %call79 = call i32* @__errno_location() #1, !dbg !2635
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !2633

if.then78:                                        ; preds = %sw.bb74
  store i32 22, i32* %call79, align 4, !dbg !2635, !tbaa !1289
  br label %return, !dbg !2637

if.else80:                                        ; preds = %sw.bb74
  store i32 25, i32* %call79, align 4, !dbg !2638, !tbaa !1289
  br label %return, !dbg !2640

sw.bb82:                                          ; preds = %if.then7
  %24 = bitcast i8* %6 to i32*, !dbg !2641
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str1961, i64 0, i64 0)) #5, !dbg !2642
  %25 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2643
  %26 = load i32* %25, align 4, !dbg !2643, !tbaa !2562
  %and84 = and i32 %26, 61440, !dbg !2643
  %cmp85 = icmp eq i32 %and84, 8192, !dbg !2643
  br i1 %cmp85, label %if.then86, label %if.else98, !dbg !2643

if.then86:                                        ; preds = %sw.bb82
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2645
  %27 = load i64* %off, align 8, !dbg !2645, !tbaa !1979
  %28 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2645, !tbaa !1520
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %28, i64 0, i32 0, !dbg !2645
  %29 = load i32* %size, align 4, !dbg !2645, !tbaa !1575
  %conv = zext i32 %29 to i64, !dbg !2645
  %cmp88 = icmp sgt i64 %conv, %27, !dbg !2645
  br i1 %cmp88, label %if.then90, label %if.end97, !dbg !2645

if.then90:                                        ; preds = %if.then86
  %sub = sub nsw i64 %conv, %27, !dbg !2648
  %conv95 = trunc i64 %sub to i32, !dbg !2648
  br label %if.end97, !dbg !2650

if.end97:                                         ; preds = %if.then90, %if.then86
  %storemerge = phi i32 [ %conv95, %if.then90 ], [ 0, %if.then86 ]
  store i32 %storemerge, i32* %24, align 4, !dbg !2648, !tbaa !1289
  br label %return, !dbg !2651

if.else98:                                        ; preds = %sw.bb82
  %call99 = call i32* @__errno_location() #1, !dbg !2652
  store i32 25, i32* %call99, align 4, !dbg !2652, !tbaa !1289
  br label %return, !dbg !2654

sw.bb100:                                         ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str2062, i64 0, i64 0)) #5, !dbg !2655
  %call101 = call i32* @__errno_location() #1, !dbg !2657
  store i32 22, i32* %call101, align 4, !dbg !2657, !tbaa !1289
  br label %return, !dbg !2658

sw.default:                                       ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str1153, i64 0, i64 0)) #5, !dbg !2659
  %call102 = call i32* @__errno_location() #1, !dbg !2660
  store i32 22, i32* %call102, align 4, !dbg !2660, !tbaa !1289
  br label %return, !dbg !2661

if.else103:                                       ; preds = %vaarg.end
  %fd104 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2662
  %30 = load i32* %fd104, align 8, !dbg !2662, !tbaa !1752
  %call105 = call i64 (i64, ...)* @syscall(i64 16, i32 %30, i64 %request, i8* %6) #5, !dbg !2662
  %conv106 = trunc i64 %call105 to i32, !dbg !2662
  %cmp107 = icmp eq i32 %conv106, -1, !dbg !2663
  br i1 %cmp107, label %if.then109, label %return, !dbg !2663

if.then109:                                       ; preds = %if.else103
  %call110 = call i32 @klee_get_errno() #5, !dbg !2665
  %call111 = call i32* @__errno_location() #1, !dbg !2665
  store i32 %call110, i32* %call111, align 4, !dbg !2665, !tbaa !1289
  br label %return, !dbg !2665

return:                                           ; preds = %if.then109, %if.else103, %sw.default, %sw.bb100, %if.else98, %if.end97, %if.else80, %if.then78, %if.else72, %sw.bb67, %if.else65, %sw.bb60, %if.else58, %sw.bb55, %if.else53, %sw.bb48, %if.else,
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %sw.bb100 ], [ 0, %if.end97 ], [ -1, %if.else98 ], [ -1, %if.then78 ], [ -1, %if.else80 ], [ -1, %if.else72 ], [ -1, %if.else65 ], [ -1, %if.else58 ], [ -1, %if.else53 ], [ 0, %if.then10 ], [ -1, %if.else 
  ret i32 %retval.0, !dbg !2666
}

declare void @klee_warning_once(i8*) #7

; Function Attrs: nounwind uwtable
define i32 @fcntl(i32 %fd, i32 %cmd, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !2667
  br i1 %0, label %if.then.i, label %if.then, !dbg !2667

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2669
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2670
  %1 = load i32* %flags.i, align 4, !dbg !2670, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2670
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2670
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2670

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2669
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2671
  br i1 %tobool, label %if.then, label %if.end, !dbg !2671

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2673
  store i32 9, i32* %call1, align 4, !dbg !2673, !tbaa !1289
  br label %return, !dbg !2675

if.end:                                           ; preds = %__get_file.exit
  switch i32 %cmd, label %if.else [
    i32 1026, label %if.end16
    i32 1025, label %if.end16
    i32 11, label %if.end16
    i32 9, label %if.end16
    i32 3, label %if.end16
    i32 1, label %if.end16
  ], !dbg !2676

if.else:                                          ; preds = %if.end
  %arraydecay12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2678
  call void @llvm.va_start(i8* %arraydecay12), !dbg !2678
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2680
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2680
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2680
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2680

vaarg.in_reg:                                     ; preds = %if.else
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2680
  %reg_save_area = load i8** %2, align 16, !dbg !2680
  %3 = sext i32 %gp_offset to i64, !dbg !2680
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !2680
  %5 = add i32 %gp_offset, 8, !dbg !2680
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !2680
  br label %vaarg.end, !dbg !2680

vaarg.in_mem:                                     ; preds = %if.else
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2680
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2680
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2680
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2680
  br label %vaarg.end, !dbg !2680

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2680
  %6 = load i32* %vaarg.addr, align 4, !dbg !2680
  call void @llvm.va_end(i8* %arraydecay12), !dbg !2681
  br label %if.end16

if.end16:                                         ; preds = %vaarg.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arg.0 = phi i32 [ %6, %vaarg.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ]
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2682
  %7 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2682, !tbaa !1520
  %tobool17 = icmp eq %struct.exe_disk_file_t.17* %7, null, !dbg !2682
  br i1 %tobool17, label %if.else34, label %if.then18, !dbg !2682

if.then18:                                        ; preds = %if.end16
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %return
  ], !dbg !2683

sw.bb:                                            ; preds = %if.then18
  %8 = load i32* %flags.i, align 4, !dbg !2684, !tbaa !1686
  %int_cast_to_i64 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2684
  %and = lshr i32 %8, 1, !dbg !2684
  %and.lobit = and i32 %and, 1, !dbg !2684
  br label %return, !dbg !2686

sw.bb23:                                          ; preds = %if.then18
  %9 = load i32* %flags.i, align 4, !dbg !2687, !tbaa !1686
  %and25 = and i32 %9, -3, !dbg !2687
  %and26 = and i32 %arg.0, 1, !dbg !2689
  %tobool27 = icmp eq i32 %and26, 0, !dbg !2689
  %or30 = or i32 %9, 2, !dbg !2691
  %and25.or30 = select i1 %tobool27, i32 %and25, i32 %or30, !dbg !2689
  store i32 %and25.or30, i32* %flags.i, align 4, !dbg !2687, !tbaa !1686
  br label %return, !dbg !2692

sw.default:                                       ; preds = %if.then18
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str1153, i64 0, i64 0)) #5, !dbg !2693
  %call33 = call i32* @__errno_location() #1, !dbg !2694
  store i32 22, i32* %call33, align 4, !dbg !2694, !tbaa !1289
  br label %return, !dbg !2695

if.else34:                                        ; preds = %if.end16
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2696
  %10 = load i32* %fd35, align 8, !dbg !2696, !tbaa !1752
  %call36 = call i64 (i64, ...)* @syscall(i64 72, i32 %10, i32 %cmd, i32 %arg.0) #5, !dbg !2696
  %conv = trunc i64 %call36 to i32, !dbg !2696
  %cmp37 = icmp eq i32 %conv, -1, !dbg !2697
  br i1 %cmp37, label %if.then39, label %return, !dbg !2697

if.then39:                                        ; preds = %if.else34
  %call40 = call i32 @klee_get_errno() #5, !dbg !2699
  %call41 = call i32* @__errno_location() #1, !dbg !2699
  store i32 %call40, i32* %call41, align 4, !dbg !2699, !tbaa !1289
  br label %return, !dbg !2699

return:                                           ; preds = %if.then39, %if.else34, %sw.default, %sw.bb23, %sw.bb, %if.then18, %if.then
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb23 ], [ %and.lobit, %sw.bb ], [ -1, %if.then ], [ 0, %if.then18 ], [ -1, %if.then39 ], [ %conv, %if.else34 ]
  ret i32 %retval.0, !dbg !2700
}

; Function Attrs: nounwind uwtable
define i32 @__fd_statfs(i8* %path, %struct.statfs.11* %buf) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2701, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2703
  %cmp.i = icmp eq i8 %0, 0, !dbg !2703
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2703

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2703
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2703, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2703
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2703

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2704, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2704
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2704

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2704
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2704

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2705
  %sext.i = shl i32 %i.027.i, 24, !dbg !2705
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2705
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2705
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2705
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2705
  %inc.i = add i32 %i.027.i, 1, !dbg !2704
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2705

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2706
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2706, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2707
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2707, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2707
  %5 = load i64* %st_ino.i, align 8, !dbg !2707, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2707
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2706
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2708
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2707
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2707

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str951, i64 0, i64 0)) #5, !dbg !2710
  %call1 = tail call i32* @__errno_location() #1, !dbg !2712
  store i32 2, i32* %call1, align 4, !dbg !2712, !tbaa !1289
  br label %return, !dbg !2713

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2714
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2714
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2714
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2717
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2717
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2717
  br label %for.cond.i11, !dbg !2718

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2719, !tbaa !1299
  %sub.i = add i32 %i.0.i, -1, !dbg !2720
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2720
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2720
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2720

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2721

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2722, !tbaa !1299
  br label %__concretize_string.exit, !dbg !2723

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2724
  store i8 47, i8* %sc.0.i, align 1, !dbg !2724, !tbaa !1299
  br label %for.inc.i, !dbg !2725

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2726
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2726
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2726
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2727
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2727
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2727
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2728
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2728, !tbaa !1299
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2729
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2729

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2718
  br label %for.cond.i11, !dbg !2718

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 137, i8* %path, %struct.statfs.11* %buf) #5, !dbg !2716
  %conv = trunc i64 %call3 to i32, !dbg !2716
  %cmp = icmp eq i32 %conv, -1, !dbg !2730
  br i1 %cmp, label %if.then5, label %return, !dbg !2730

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2732
  %call7 = tail call i32* @__errno_location() #1, !dbg !2732
  store i32 %call6, i32* %call7, align 4, !dbg !2732, !tbaa !1289
  br label %return, !dbg !2732

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2733
}

; Function Attrs: nounwind uwtable
define i32 @fstatfs(i32 %fd, %struct.statfs.11* %buf) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2734
  br i1 %0, label %if.then.i, label %if.then, !dbg !2734

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2736
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2737
  %1 = load i32* %flags.i, align 4, !dbg !2737, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2737
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2737
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2737

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2736
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2738
  br i1 %tobool, label %if.then, label %if.end, !dbg !2738

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2740
  store i32 9, i32* %call1, align 4, !dbg !2740, !tbaa !1289
  br label %return, !dbg !2742

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2743
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2743, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2743
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2743

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2163, i64 0, i64 0)) #5, !dbg !2744
  %call4 = tail call i32* @__errno_location() #1, !dbg !2746
  store i32 9, i32* %call4, align 4, !dbg !2746, !tbaa !1289
  br label %return, !dbg !2747

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2748
  %3 = load i32* %fd5, align 8, !dbg !2748, !tbaa !1752
  %call6 = tail call i64 (i64, ...)* @syscall(i64 138, i32 %3, %struct.statfs.11* %buf) #5, !dbg !2748
  %conv = trunc i64 %call6 to i32, !dbg !2748
  %cmp = icmp eq i32 %conv, -1, !dbg !2749
  br i1 %cmp, label %if.then8, label %return, !dbg !2749

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2751
  %call10 = tail call i32* @__errno_location() #1, !dbg !2751
  store i32 %call9, i32* %call10, align 4, !dbg !2751, !tbaa !1289
  br label %return, !dbg !2751

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2752
}

; Function Attrs: nounwind uwtable
define i32 @fsync(i32 %fd) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2753
  br i1 %0, label %if.then.i, label %if.then, !dbg !2753

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2755
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2756
  %1 = load i32* %flags.i, align 4, !dbg !2756, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2756
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2756
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2756

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2755
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2757
  br i1 %tobool, label %if.then, label %if.else, !dbg !2757

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2758
  store i32 9, i32* %call1, align 4, !dbg !2758, !tbaa !1289
  br label %return, !dbg !2760

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2761
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2761, !tbaa !1520
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2761
  br i1 %tobool2, label %if.else4, label %return, !dbg !2761

if.else4:                                         ; preds = %if.else
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2762
  %3 = load i32* %fd5, align 8, !dbg !2762, !tbaa !1752
  %call6 = tail call i64 (i64, ...)* @syscall(i64 74, i32 %3) #5, !dbg !2762
  %conv = trunc i64 %call6 to i32, !dbg !2762
  %cmp = icmp eq i32 %conv, -1, !dbg !2763
  br i1 %cmp, label %if.then8, label %return, !dbg !2763

if.then8:                                         ; preds = %if.else4
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2765
  %call10 = tail call i32* @__errno_location() #1, !dbg !2765
  store i32 %call9, i32* %call10, align 4, !dbg !2765, !tbaa !1289
  br label %return, !dbg !2765

return:                                           ; preds = %if.then8, %if.else4, %if.else, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.else ], [ -1, %if.then8 ], [ %conv, %if.else4 ]
  ret i32 %retval.0, !dbg !2766
}

; Function Attrs: nounwind uwtable
define i32 @dup2(i32 %oldfd, i32 %newfd) #4 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !2767
  br i1 %0, label %if.then.i, label %if.then, !dbg !2767

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !2769
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2770
  %1 = load i32* %flags.i, align 4, !dbg !2770, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2770
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2770
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2770

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2769
  %tobool = icmp ne %struct.exe_file_t* %arrayidx.i, null, !dbg !2771
  %cmp = icmp sgt i32 %newfd, -1, !dbg !2771
  %or.cond = and i1 %tobool, %cmp, !dbg !2771
  %cmp1 = icmp slt i32 %newfd, 32, !dbg !2771
  %or.cond8 = and i1 %or.cond, %cmp1, !dbg !2771
  br i1 %or.cond8, label %if.else, label %if.then, !dbg !2771

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call2 = tail call i32* @__errno_location() #1, !dbg !2772
  store i32 9, i32* %call2, align 4, !dbg !2772, !tbaa !1289
  br label %return, !dbg !2774

if.else:                                          ; preds = %__get_file.exit
  %idxprom = sext i32 %newfd to i64, !dbg !2775
  %arrayidx = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, !dbg !2775
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, i32 1, !dbg !2776
  %2 = load i32* %flags, align 4, !dbg !2776, !tbaa !1686
  %and = and i32 %2, 1, !dbg !2776
  %tobool3 = icmp eq i32 %and, 0, !dbg !2776
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2776

if.then4:                                         ; preds = %if.else
  %3 = load i32* @close.n_calls, align 4, !dbg !2778, !tbaa !1289
  %inc.i = add nsw i32 %3, 1, !dbg !2778
  store i32 %inc.i, i32* @close.n_calls, align 4, !dbg !2778, !tbaa !1289
  %4 = icmp ugt i32 %newfd, 31, !dbg !2779
  %tobool.i16 = icmp eq %struct.exe_file_t* %arrayidx, null, !dbg !2781
  %or.cond25 = or i1 %4, %tobool.i16, !dbg !2779
  br i1 %or.cond25, label %if.then.i17, label %if.end.i, !dbg !2779

if.then.i17:                                      ; preds = %if.then4
  %call1.i = tail call i32* @__errno_location() #1, !dbg !2782
  store i32 9, i32* %call1.i, align 4, !dbg !2782, !tbaa !1289
  br label %if.end, !dbg !2783

if.end.i:                                         ; preds = %if.then4
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2784, !tbaa !1526
  %tobool2.i = icmp eq i32 %5, 0, !dbg !2784
  br i1 %tobool2.i, label %if.end5.i, label %land.lhs.true.i, !dbg !2784

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !2784, !tbaa !1535
  %7 = load i32* %6, align 4, !dbg !2784, !tbaa !1289
  %cmp.i = icmp eq i32 %7, %inc.i, !dbg !2784
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i, !dbg !2784

if.then3.i:                                       ; preds = %land.lhs.true.i
  %dec.i = add i32 %5, -1, !dbg !2785
  store i32 %dec.i, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2785, !tbaa !1526
  %call4.i = tail call i32* @__errno_location() #1, !dbg !2786
  store i32 5, i32* %call4.i, align 4, !dbg !2786, !tbaa !1289
  br label %if.end, !dbg !2787

if.end5.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %8 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !2788
  %9 = call i8* @memset(i8* %8, i32 0, i64 24)
  br label %if.end, !dbg !2789

if.end:                                           ; preds = %if.end5.i, %if.then3.i, %if.then.i17, %if.else
  %10 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !2790
  %11 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !2790
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 24)
  %13 = load i32* %flags, align 4, !dbg !2791, !tbaa !1686
  %and7 = and i32 %13, -3, !dbg !2791
  store i32 %and7, i32* %flags, align 4, !dbg !2791, !tbaa !1686
  br label %return, !dbg !2792

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %newfd, %if.end ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2793
}

; Function Attrs: nounwind uwtable
define i32 @dup(i32 %oldfd) #4 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !2794
  br i1 %0, label %if.then.i, label %if.then, !dbg !2794

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !2796
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2797
  %1 = load i32* %flags.i, align 4, !dbg !2797, !tbaa !1686
  %and.i = and i32 %1, 1, !dbg !2797
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2797
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2796
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2798
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2797
  br i1 %or.cond, label %if.then, label %for.body, !dbg !2797

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2799
  store i32 9, i32* %call1, align 4, !dbg !2799, !tbaa !1289
  br label %return, !dbg !2801

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !2802
  %cmp = icmp slt i32 %2, 32, !dbg !2802
  br i1 %cmp, label %for.body, label %for.end, !dbg !2802

for.body:                                         ; preds = %for.cond, %if.then.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then.i ]
  %fd.015 = phi i32 [ %inc, %for.cond ], [ 0, %if.then.i ]
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2804
  %3 = load i32* %flags, align 4, !dbg !2804, !tbaa !1686
  %and = and i32 %3, 1, !dbg !2804
  %tobool2 = icmp eq i32 %and, 0, !dbg !2804
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2802
  %inc = add nsw i32 %fd.015, 1, !dbg !2802
  br i1 %tobool2, label %for.end, label %for.cond, !dbg !2804

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.015, %for.body ], [ %inc, %for.cond ]
  %cmp4 = icmp eq i32 %fd.0.lcssa, 32, !dbg !2806
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !2806

if.then5:                                         ; preds = %for.end
  %call6 = tail call i32* @__errno_location() #1, !dbg !2808
  store i32 24, i32* %call6, align 4, !dbg !2808, !tbaa !1289
  br label %return, !dbg !2810

if.else7:                                         ; preds = %for.end
  %call8 = tail call i32 @dup2(i32 %oldfd, i32 %fd.0.lcssa) #5, !dbg !2811
  br label %return, !dbg !2811

return:                                           ; preds = %if.else7, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %call8, %if.else7 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2813
}

; Function Attrs: nounwind uwtable
define i32 @rmdir(i8* nocapture readonly %pathname) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2814, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2816
  %cmp.i = icmp eq i8 %0, 0, !dbg !2816
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2816

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2816
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2816, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2816
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2816

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2817, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2817
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2817

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2817
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2817

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2818
  %sext.i = shl i32 %i.027.i, 24, !dbg !2818
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2818
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2818
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2818
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2818
  %inc.i = add i32 %i.027.i, 1, !dbg !2817
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2818

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2819
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2819, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2820
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2820, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2820
  %5 = load i64* %st_ino.i, align 8, !dbg !2820, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2820
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2819
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2821
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2820
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2820

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2823
  %6 = load i32* %st_mode, align 4, !dbg !2823, !tbaa !1591
  %and = and i32 %6, 61440, !dbg !2823
  %cmp = icmp eq i32 %and, 16384, !dbg !2823
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2823

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2826, !tbaa !1583
  br label %return, !dbg !2828

if.else:                                          ; preds = %if.then
  %call3 = tail call i32* @__errno_location() #1, !dbg !2829
  store i32 20, i32* %call3, align 4, !dbg !2829, !tbaa !1289
  br label %return, !dbg !2831

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2264, i64 0, i64 0)) #5, !dbg !2832
  %call4 = tail call i32* @__errno_location() #1, !dbg !2833
  store i32 1, i32* %call4, align 4, !dbg !2833, !tbaa !1289
  br label %return, !dbg !2834

return:                                           ; preds = %if.end, %if.else, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2835
}

; Function Attrs: nounwind uwtable
define i32 @unlink(i8* nocapture readonly %pathname) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2836, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2838
  %cmp.i = icmp eq i8 %0, 0, !dbg !2838
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2838

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2838
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2838, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2838
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2838

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2839, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2839
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2839

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2839
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2839

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2840
  %sext.i = shl i32 %i.027.i, 24, !dbg !2840
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2840
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2840
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2840
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2840
  %inc.i = add i32 %i.027.i, 1, !dbg !2839
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2840

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2841
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2841, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2842
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2842, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2842
  %5 = load i64* %st_ino.i, align 8, !dbg !2842, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2842
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2841
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2843
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2842
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2842

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2845
  %6 = load i32* %st_mode, align 4, !dbg !2845, !tbaa !1591
  %and = and i32 %6, 61440, !dbg !2845
  %cmp = icmp eq i32 %and, 32768, !dbg !2845
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2845

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2848, !tbaa !1583
  br label %return, !dbg !2850

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !2851
  %call8 = tail call i32* @__errno_location() #1, !dbg !2853
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !2851

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !2853, !tbaa !1289
  br label %return, !dbg !2855

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !2856, !tbaa !1289
  br label %return, !dbg !2858

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2264, i64 0, i64 0)) #5, !dbg !2859
  %call11 = tail call i32* @__errno_location() #1, !dbg !2860
  store i32 1, i32* %call11, align 4, !dbg !2860, !tbaa !1289
  br label %return, !dbg !2861

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2862
}

; Function Attrs: nounwind uwtable
define i32 @unlinkat(i32 %dirfd, i8* nocapture readonly %pathname, i32 %flags) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2863, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2865
  %cmp.i = icmp eq i8 %0, 0, !dbg !2865
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2865

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2865
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2865, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2865
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2865

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2866, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2866
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2866

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2866
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2866

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2867
  %sext.i = shl i32 %i.027.i, 24, !dbg !2867
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2867
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2867
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2867
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2867
  %inc.i = add i32 %i.027.i, 1, !dbg !2866
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2867

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2868
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2868, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2869
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2869, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2869
  %5 = load i64* %st_ino.i, align 8, !dbg !2869, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2869
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2868
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2870
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2869
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2869

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2872
  %6 = load i32* %st_mode, align 4, !dbg !2872, !tbaa !1591
  %and = and i32 %6, 61440, !dbg !2872
  %cmp = icmp eq i32 %and, 32768, !dbg !2872
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2872

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2875, !tbaa !1583
  br label %return, !dbg !2877

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !2878
  %call8 = tail call i32* @__errno_location() #1, !dbg !2880
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !2878

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !2880, !tbaa !1289
  br label %return, !dbg !2882

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !2883, !tbaa !1289
  br label %return, !dbg !2885

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2264, i64 0, i64 0)) #5, !dbg !2886
  %call11 = tail call i32* @__errno_location() #1, !dbg !2887
  store i32 1, i32* %call11, align 4, !dbg !2887, !tbaa !1289
  br label %return, !dbg !2888

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2889
}

; Function Attrs: nounwind uwtable
define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2890, !tbaa !1299
  %conv.i = sext i8 %0 to i32, !dbg !2892
  %cmp.i = icmp eq i8 %0, 0, !dbg !2892
  br i1 %cmp.i, label %if.else20, label %lor.lhs.false.i, !dbg !2892

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2892
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2892, !tbaa !1299
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2892
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else20, !dbg !2892

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2893, !tbaa !1504
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2893
  br i1 %cmp626.i, label %if.else20, label %for.body.i, !dbg !2893

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2893
  br i1 %cmp6.i, label %for.body.i, label %if.else20, !dbg !2893

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2894
  %sext.i = shl i32 %i.027.i, 24, !dbg !2894
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2894
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2894
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2894
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2894
  %inc.i = add i32 %i.027.i, 1, !dbg !2893
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2894

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2895
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2895, !tbaa !1507
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2896
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2896, !tbaa !1618
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2896
  %5 = load i64* %st_ino.i, align 8, !dbg !2896, !tbaa !1583
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2896
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2895
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2897
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2896
  br i1 %or.cond, label %if.else20, label %if.then, !dbg !2896

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2898
  %6 = load i32* %st_mode, align 4, !dbg !2898, !tbaa !1591
  %and = and i32 %6, 61440, !dbg !2898
  %cmp = icmp eq i32 %and, 40960, !dbg !2898
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2898

if.then1:                                         ; preds = %if.then
  store i8 %0, i8* %buf, align 1, !dbg !2901, !tbaa !1299
  %cmp3 = icmp ugt i64 %bufsize, 1, !dbg !2903
  br i1 %cmp3, label %if.end, label %if.end17, !dbg !2903

if.end:                                           ; preds = %if.then1
  %arrayidx5 = getelementptr inbounds i8* %buf, i64 1, !dbg !2903
  store i8 46, i8* %arrayidx5, align 1, !dbg !2903, !tbaa !1299
  %cmp6 = icmp ugt i64 %bufsize, 2, !dbg !2905
  br i1 %cmp6, label %if.end9, label %if.end17, !dbg !2905

if.end9:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8* %buf, i64 2, !dbg !2905
  store i8 108, i8* %arrayidx8, align 1, !dbg !2905, !tbaa !1299
  %cmp10 = icmp ugt i64 %bufsize, 3, !dbg !2907
  br i1 %cmp10, label %if.end13, label %if.end17, !dbg !2907

if.end13:                                         ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds i8* %buf, i64 3, !dbg !2907
  store i8 110, i8* %arrayidx12, align 1, !dbg !2907, !tbaa !1299
  %cmp14 = icmp ugt i64 %bufsize, 4, !dbg !2909
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2909

if.then15:                                        ; preds = %if.end13
  %arrayidx16 = getelementptr inbounds i8* %buf, i64 4, !dbg !2909
  store i8 107, i8* %arrayidx16, align 1, !dbg !2909, !tbaa !1299
  br label %if.end17, !dbg !2909

if.end17:                                         ; preds = %if.then15, %if.end13, %if.end9, %if.end, %if.then1
  %cmp18 = icmp ugt i64 %bufsize, 5, !dbg !2911
  %cond = select i1 %cmp18, i64 5, i64 %bufsize, !dbg !2911
  br label %return, !dbg !2911

if.else:                                          ; preds = %if.then
  %call19 = tail call i32* @__errno_location() #1, !dbg !2912
  store i32 22, i32* %call19, align 4, !dbg !2912, !tbaa !1289
  br label %return, !dbg !2914

if.else20:                                        ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %call21 = tail call i64 (i64, ...)* @syscall(i64 89, i8* %path, i8* %buf, i64 %bufsize) #5, !dbg !2915
  %conv = trunc i64 %call21 to i32, !dbg !2915
  %cmp22 = icmp eq i32 %conv, -1, !dbg !2916
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !2916

if.then24:                                        ; preds = %if.else20
  %call25 = tail call i32 @klee_get_errno() #5, !dbg !2918
  %call26 = tail call i32* @__errno_location() #1, !dbg !2918
  store i32 %call25, i32* %call26, align 4, !dbg !2918, !tbaa !1289
  br label %if.end27, !dbg !2918

if.end27:                                         ; preds = %if.then24, %if.else20
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !2919
  %sext = shl i64 %call21, 32, !dbg !2919
  %int_cast_to_i643 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i643), !dbg !2919
  %conv28 = ashr exact i64 %sext, 32, !dbg !2919
  br label %return, !dbg !2919

return:                                           ; preds = %if.end27, %if.else, %if.end17
  %retval.0 = phi i64 [ %cond, %if.end17 ], [ -1, %if.else ], [ %conv28, %if.end27 ]
  ret i64 %retval.0, !dbg !2920
}

; Function Attrs: nounwind uwtable
define i32 @select(i32 %nfds, %struct.fd_set* %read, %struct.fd_set* %write, %struct.fd_set* %except, %struct.timeval* nocapture readnone %timeout) #4 {
entry:
  %in_read = alloca %struct.fd_set, align 8
  %in_write = alloca %struct.fd_set, align 8
  %in_except = alloca %struct.fd_set, align 8
  %os_read = alloca %struct.fd_set, align 8
  %os_write = alloca %struct.fd_set, align 8
  %os_except = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.fd_set* %in_read to i8*, !dbg !2921
  %1 = bitcast %struct.fd_set* %in_write to i8*, !dbg !2921
  %2 = bitcast %struct.fd_set* %in_except to i8*, !dbg !2921
  %3 = bitcast %struct.fd_set* %os_read to i8*, !dbg !2921
  %4 = bitcast %struct.fd_set* %os_write to i8*, !dbg !2921
  %5 = bitcast %struct.fd_set* %os_except to i8*, !dbg !2921
  %tobool = icmp ne %struct.fd_set* %read, null, !dbg !2922
  br i1 %tobool, label %if.then, label %if.else, !dbg !2922

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.fd_set* %read to i8*, !dbg !2924
  %7 = call i8* @memcpy(i8* %0, i8* %6, i64 128)
  %8 = call i8* @memset(i8* %6, i32 0, i64 128)
  br label %if.end, !dbg !2926

if.else:                                          ; preds = %entry
  %9 = call i8* @memset(i8* %0, i32 0, i64 128)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool1 = icmp ne %struct.fd_set* %write, null, !dbg !2927
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !2927

if.then2:                                         ; preds = %if.end
  %10 = bitcast %struct.fd_set* %write to i8*, !dbg !2929
  %11 = call i8* @memcpy(i8* %1, i8* %10, i64 128)
  %12 = call i8* @memset(i8* %10, i32 0, i64 128)
  br label %if.end4, !dbg !2931

if.else3:                                         ; preds = %if.end
  %13 = call i8* @memset(i8* %1, i32 0, i64 128)
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %tobool5 = icmp ne %struct.fd_set* %except, null, !dbg !2932
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !2932

if.then6:                                         ; preds = %if.end4
  %14 = bitcast %struct.fd_set* %except to i8*, !dbg !2934
  %15 = call i8* @memcpy(i8* %2, i8* %14, i64 128)
  %16 = call i8* @memset(i8* %14, i32 0, i64 128)
  br label %if.end8, !dbg !2936

if.else7:                                         ; preds = %if.end4
  %17 = call i8* @memset(i8* %2, i32 0, i64 128)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %18 = call i8* @memset(i8* %3, i32 0, i64 128)
  %19 = call i8* @memset(i8* %4, i32 0, i64 128)
  %20 = call i8* @memset(i8* %5, i32 0, i64 128)
  %cmp367 = icmp sgt i32 %nfds, 0, !dbg !2937
  br i1 %cmp367, label %for.body, label %cleanup, !dbg !2937

for.body:                                         ; preds = %for.inc, %if.end8
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %for.inc ], [ 0, %if.end8 ]
  %count.0369 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end8 ]
  %os_nfds.0368 = phi i32 [ %os_nfds.1, %for.inc ], [ 0, %if.end8 ]
  %21 = trunc i64 %indvars.iv373 to i32, !dbg !2938
  %int_cast_to_i64 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2938
  %div = sdiv i32 %21, 64, !dbg !2938
  %idxprom = sext i32 %div to i64, !dbg !2938
  %arrayidx = getelementptr inbounds %struct.fd_set* %in_read, i64 0, i32 0, i64 %idxprom, !dbg !2938
  %22 = load i64* %arrayidx, align 8, !dbg !2938, !tbaa !2939
  %rem347 = and i32 %21, 63, !dbg !2938
  %int_cast_to_i6410 = zext i32 %rem347 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6410), !dbg !2938
  %shl = shl i32 1, %rem347, !dbg !2938
  %conv = sext i32 %shl to i64, !dbg !2938
  %and = and i64 %22, %conv, !dbg !2938
  %tobool9 = icmp eq i64 %and, 0, !dbg !2938
  br i1 %tobool9, label %lor.lhs.false, label %if.then29, !dbg !2938

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx13 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2938
  %23 = load i64* %arrayidx13, align 8, !dbg !2938, !tbaa !2939
  %and17 = and i64 %23, %conv, !dbg !2938
  %tobool18 = icmp eq i64 %and17, 0, !dbg !2938
  br i1 %tobool18, label %lor.lhs.false19, label %if.then29, !dbg !2938

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %arrayidx23 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2938
  %24 = load i64* %arrayidx23, align 8, !dbg !2938, !tbaa !2939
  %and27 = and i64 %24, %conv, !dbg !2938
  %tobool28 = icmp eq i64 %and27, 0, !dbg !2938
  br i1 %tobool28, label %for.inc, label %if.then29, !dbg !2938

if.then29:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %for.body
  %25 = icmp ult i32 %21, 32, !dbg !2940
  br i1 %25, label %if.then.i, label %if.then31, !dbg !2940

if.then.i:                                        ; preds = %if.then29
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 1, !dbg !2942
  %26 = load i32* %flags.i, align 4, !dbg !2942, !tbaa !1686
  %and.i = and i32 %26, 1, !dbg !2942
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2942
  br i1 %tobool.i, label %if.then31, label %__get_file.exit, !dbg !2942

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, !dbg !2943
  %tobool30 = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2944
  br i1 %tobool30, label %if.then31, label %if.else33, !dbg !2944

if.then31:                                        ; preds = %__get_file.exit, %if.then.i, %if.then29
  %call32 = call i32* @__errno_location() #1, !dbg !2946
  store i32 9, i32* %call32, align 4, !dbg !2946, !tbaa !1289
  br label %cleanup, !dbg !2948

if.else33:                                        ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 3, !dbg !2949
  %27 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2949, !tbaa !1520
  %tobool34 = icmp eq %struct.exe_disk_file_t.17* %27, null, !dbg !2949
  %tobool44 = icmp ne i64 %and, 0, !dbg !2951
  br i1 %tobool34, label %if.else92, label %if.then35, !dbg !2949

if.then35:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then45, label %if.end53, !dbg !2951

if.then45:                                        ; preds = %if.then35
  %arrayidx52 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom, !dbg !2951
  %28 = load i64* %arrayidx52, align 8, !dbg !2951, !tbaa !2939
  %or = or i64 %28, %conv, !dbg !2951
  store i64 %or, i64* %arrayidx52, align 8, !dbg !2951, !tbaa !2939
  br label %if.end53, !dbg !2951

if.end53:                                         ; preds = %if.then45, %if.then35
  %arrayidx57 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2954
  %29 = load i64* %arrayidx57, align 8, !dbg !2954, !tbaa !2939
  %and61 = and i64 %29, %conv, !dbg !2954
  %tobool62 = icmp eq i64 %and61, 0, !dbg !2954
  br i1 %tobool62, label %if.end72, label %if.then63, !dbg !2954

if.then63:                                        ; preds = %if.end53
  %arrayidx70 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom, !dbg !2954
  %30 = load i64* %arrayidx70, align 8, !dbg !2954, !tbaa !2939
  %or71 = or i64 %30, %conv, !dbg !2954
  store i64 %or71, i64* %arrayidx70, align 8, !dbg !2954, !tbaa !2939
  br label %if.end72, !dbg !2954

if.end72:                                         ; preds = %if.then63, %if.end53
  %arrayidx76 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2956
  %31 = load i64* %arrayidx76, align 8, !dbg !2956, !tbaa !2939
  %and80 = and i64 %31, %conv, !dbg !2956
  %tobool81 = icmp eq i64 %and80, 0, !dbg !2956
  br i1 %tobool81, label %if.end91, label %if.then82, !dbg !2956

if.then82:                                        ; preds = %if.end72
  %arrayidx89 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom, !dbg !2956
  %32 = load i64* %arrayidx89, align 8, !dbg !2956, !tbaa !2939
  %or90 = or i64 %32, %conv, !dbg !2956
  store i64 %or90, i64* %arrayidx89, align 8, !dbg !2956, !tbaa !2939
  br label %if.end91, !dbg !2956

if.end91:                                         ; preds = %if.then82, %if.end72
  %inc = add nsw i32 %count.0369, 1, !dbg !2958
  br label %for.inc, !dbg !2959

if.else92:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then102, label %if.end112, !dbg !2960

if.then102:                                       ; preds = %if.else92
  %fd = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2960
  %33 = load i32* %fd, align 8, !dbg !2960, !tbaa !1752
  %rem103350 = and i32 %33, 63, !dbg !2960
  %int_cast_to_i6411 = zext i32 %rem103350 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6411), !dbg !2960
  %shl104 = shl i32 1, %rem103350, !dbg !2960
  %conv105 = sext i32 %shl104 to i64, !dbg !2960
  %int_cast_to_i641 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2960
  %div107 = sdiv i32 %33, 64, !dbg !2960
  %idxprom108 = sext i32 %div107 to i64, !dbg !2960
  %arrayidx110 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom108, !dbg !2960
  %34 = load i64* %arrayidx110, align 8, !dbg !2960, !tbaa !2939
  %or111 = or i64 %conv105, %34, !dbg !2960
  store i64 %or111, i64* %arrayidx110, align 8, !dbg !2960, !tbaa !2939
  br label %if.end112, !dbg !2960

if.end112:                                        ; preds = %if.then102, %if.else92
  %arrayidx116 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2963
  %35 = load i64* %arrayidx116, align 8, !dbg !2963, !tbaa !2939
  %and120 = and i64 %35, %conv, !dbg !2963
  %tobool121 = icmp eq i64 %and120, 0, !dbg !2963
  br i1 %tobool121, label %if.end133, label %if.then122, !dbg !2963

if.then122:                                       ; preds = %if.end112
  %fd123 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2963
  %36 = load i32* %fd123, align 8, !dbg !2963, !tbaa !1752
  %rem124349 = and i32 %36, 63, !dbg !2963
  %int_cast_to_i6412 = zext i32 %rem124349 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6412), !dbg !2963
  %shl125 = shl i32 1, %rem124349, !dbg !2963
  %conv126 = sext i32 %shl125 to i64, !dbg !2963
  %int_cast_to_i642 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !2963
  %div128 = sdiv i32 %36, 64, !dbg !2963
  %idxprom129 = sext i32 %div128 to i64, !dbg !2963
  %arrayidx131 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom129, !dbg !2963
  %37 = load i64* %arrayidx131, align 8, !dbg !2963, !tbaa !2939
  %or132 = or i64 %conv126, %37, !dbg !2963
  store i64 %or132, i64* %arrayidx131, align 8, !dbg !2963, !tbaa !2939
  br label %if.end133, !dbg !2963

if.end133:                                        ; preds = %if.then122, %if.end112
  %arrayidx137 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2965
  %38 = load i64* %arrayidx137, align 8, !dbg !2965, !tbaa !2939
  %and141 = and i64 %38, %conv, !dbg !2965
  %tobool142 = icmp eq i64 %and141, 0, !dbg !2965
  %fd155.phi.trans.insert = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0
  %.pre = load i32* %fd155.phi.trans.insert, align 8, !dbg !2967, !tbaa !1752
  br i1 %tobool142, label %if.end154, label %if.then143, !dbg !2965

if.then143:                                       ; preds = %if.end133
  %rem145348 = and i32 %.pre, 63, !dbg !2965
  %int_cast_to_i6413 = zext i32 %rem145348 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6413), !dbg !2965
  %shl146 = shl i32 1, %rem145348, !dbg !2965
  %conv147 = sext i32 %shl146 to i64, !dbg !2965
  %int_cast_to_i643 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !2965
  %div149 = sdiv i32 %.pre, 64, !dbg !2965
  %idxprom150 = sext i32 %div149 to i64, !dbg !2965
  %arrayidx152 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom150, !dbg !2965
  %39 = load i64* %arrayidx152, align 8, !dbg !2965, !tbaa !2939
  %or153 = or i64 %conv147, %39, !dbg !2965
  store i64 %or153, i64* %arrayidx152, align 8, !dbg !2965, !tbaa !2939
  br label %if.end154, !dbg !2965

if.end154:                                        ; preds = %if.then143, %if.end133
  %cmp156 = icmp slt i32 %.pre, %os_nfds.0368, !dbg !2967
  %add = add nsw i32 %.pre, 1, !dbg !2967
  %os_nfds.0.add = select i1 %cmp156, i32 %os_nfds.0368, i32 %add, !dbg !2967
  br label %for.inc, !dbg !2967

for.inc:                                          ; preds = %if.end154, %if.end91, %lor.lhs.false19
  %os_nfds.1 = phi i32 [ %os_nfds.0368, %if.end91 ], [ %os_nfds.0368, %lor.lhs.false19 ], [ %os_nfds.0.add, %if.end154 ]
  %count.1 = phi i32 [ %inc, %if.end91 ], [ %count.0369, %lor.lhs.false19 ], [ %count.0369, %if.end154 ]
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1, !dbg !2937
  %40 = trunc i64 %indvars.iv.next374 to i32, !dbg !2937
  %cmp = icmp slt i32 %40, %nfds, !dbg !2937
  br i1 %cmp, label %for.body, label %for.end, !dbg !2937

for.end:                                          ; preds = %for.inc
  %cmp165 = icmp sgt i32 %os_nfds.1, 0, !dbg !2969
  br i1 %cmp165, label %if.then167, label %cleanup, !dbg !2969

if.then167:                                       ; preds = %for.end
  %41 = bitcast %struct.timeval* %tv to i8*, !dbg !2970
  %42 = call i8* @memset(i8* %41, i32 0, i64 16)
  %call168 = call i64 (i64, ...)* @syscall(i64 23, i32 %os_nfds.1, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timeval* %tv) #5, !dbg !2971
  %conv169 = trunc i64 %call168 to i32, !dbg !2971
  %cmp170 = icmp eq i32 %conv169, -1, !dbg !2972
  br i1 %cmp170, label %if.then172, label %if.else178, !dbg !2972

if.then172:                                       ; preds = %if.then167
  %tobool173 = icmp eq i32 %count.1, 0, !dbg !2973
  br i1 %tobool173, label %if.then174, label %cleanup, !dbg !2973

if.then174:                                       ; preds = %if.then172
  %call175 = call i32 @klee_get_errno() #5, !dbg !2976
  %call176 = call i32* @__errno_location() #1, !dbg !2976
  store i32 %call175, i32* %call176, align 4, !dbg !2976, !tbaa !1289
  br label %cleanup, !dbg !2978

if.else178:                                       ; preds = %if.then167
  %add179 = add nsw i32 %conv169, %count.1, !dbg !2979
  br i1 %cmp367, label %for.body183, label %cleanup, !dbg !2980

for.body183:                                      ; preds = %for.inc260, %if.else178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc260 ], [ 0, %if.else178 ]
  %43 = trunc i64 %indvars.iv to i32, !dbg !2981
  %44 = icmp ult i32 %43, 32, !dbg !2981
  br i1 %44, label %if.then.i355, label %for.inc260, !dbg !2981

if.then.i355:                                     ; preds = %for.body183
  %flags.i352 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2983
  %45 = load i32* %flags.i352, align 4, !dbg !2983, !tbaa !1686
  %and.i353 = and i32 %45, 1, !dbg !2983
  %tobool.i354 = icmp eq i32 %and.i353, 0, !dbg !2983
  br i1 %tobool.i354, label %for.inc260, label %__get_file.exit359, !dbg !2983

__get_file.exit359:                               ; preds = %if.then.i355
  %arrayidx.i356 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, !dbg !2984
  %tobool186 = icmp eq %struct.exe_file_t* %arrayidx.i356, null, !dbg !2985
  br i1 %tobool186, label %for.inc260, label %land.lhs.true, !dbg !2985

land.lhs.true:                                    ; preds = %__get_file.exit359
  %dfile187 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 3, !dbg !2985
  %46 = load %struct.exe_disk_file_t.17** %dfile187, align 8, !dbg !2985, !tbaa !1520
  %tobool188 = icmp eq %struct.exe_disk_file_t.17* %46, null, !dbg !2985
  br i1 %tobool188, label %if.then189, label %for.inc260, !dbg !2985

if.then189:                                       ; preds = %land.lhs.true
  br i1 %tobool, label %land.lhs.true191, label %if.end212, !dbg !2987

land.lhs.true191:                                 ; preds = %if.then189
  %fd192 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !2987
  %47 = load i32* %fd192, align 8, !dbg !2987, !tbaa !1752
  %int_cast_to_i644 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !2987
  %div193 = sdiv i32 %47, 64, !dbg !2987
  %idxprom194 = sext i32 %div193 to i64, !dbg !2987
  %arrayidx196 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom194, !dbg !2987
  %48 = load i64* %arrayidx196, align 8, !dbg !2987, !tbaa !2939
  %rem198345 = and i32 %47, 63, !dbg !2987
  %int_cast_to_i6414 = zext i32 %rem198345 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6414), !dbg !2987
  %shl199 = shl i32 1, %rem198345, !dbg !2987
  %conv200 = sext i32 %shl199 to i64, !dbg !2987
  %and201 = and i64 %conv200, %48, !dbg !2987
  %tobool202 = icmp eq i64 %and201, 0, !dbg !2987
  br i1 %tobool202, label %if.end212, label %if.then203, !dbg !2987

if.then203:                                       ; preds = %land.lhs.true191
  %rem204346 = and i32 %43, 63, !dbg !2987
  %int_cast_to_i6415 = zext i32 %rem204346 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6415), !dbg !2987
  %shl205 = shl i32 1, %rem204346, !dbg !2987
  %conv206 = sext i32 %shl205 to i64, !dbg !2987
  %int_cast_to_i645 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !2987
  %div207 = sdiv i32 %43, 64, !dbg !2987
  %idxprom208 = sext i32 %div207 to i64, !dbg !2987
  %arrayidx210 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom208, !dbg !2987
  %49 = load i64* %arrayidx210, align 8, !dbg !2987, !tbaa !2939
  %or211 = or i64 %49, %conv206, !dbg !2987
  store i64 %or211, i64* %arrayidx210, align 8, !dbg !2987, !tbaa !2939
  br label %if.end212, !dbg !2987

if.end212:                                        ; preds = %if.then203, %land.lhs.true191, %if.then189
  br i1 %tobool1, label %land.lhs.true214, label %if.end235, !dbg !2990

land.lhs.true214:                                 ; preds = %if.end212
  %fd215 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !2990
  %50 = load i32* %fd215, align 8, !dbg !2990, !tbaa !1752
  %int_cast_to_i646 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !2990
  %div216 = sdiv i32 %50, 64, !dbg !2990
  %idxprom217 = sext i32 %div216 to i64, !dbg !2990
  %arrayidx219 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom217, !dbg !2990
  %51 = load i64* %arrayidx219, align 8, !dbg !2990, !tbaa !2939
  %rem221343 = and i32 %50, 63, !dbg !2990
  %int_cast_to_i6416 = zext i32 %rem221343 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6416), !dbg !2990
  %shl222 = shl i32 1, %rem221343, !dbg !2990
  %conv223 = sext i32 %shl222 to i64, !dbg !2990
  %and224 = and i64 %conv223, %51, !dbg !2990
  %tobool225 = icmp eq i64 %and224, 0, !dbg !2990
  br i1 %tobool225, label %if.end235, label %if.then226, !dbg !2990

if.then226:                                       ; preds = %land.lhs.true214
  %rem227344 = and i32 %43, 63, !dbg !2990
  %int_cast_to_i6417 = zext i32 %rem227344 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6417), !dbg !2990
  %shl228 = shl i32 1, %rem227344, !dbg !2990
  %conv229 = sext i32 %shl228 to i64, !dbg !2990
  %int_cast_to_i647 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !2990
  %div230 = sdiv i32 %43, 64, !dbg !2990
  %idxprom231 = sext i32 %div230 to i64, !dbg !2990
  %arrayidx233 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom231, !dbg !2990
  %52 = load i64* %arrayidx233, align 8, !dbg !2990, !tbaa !2939
  %or234 = or i64 %52, %conv229, !dbg !2990
  store i64 %or234, i64* %arrayidx233, align 8, !dbg !2990, !tbaa !2939
  br label %if.end235, !dbg !2990

if.end235:                                        ; preds = %if.then226, %land.lhs.true214, %if.end212
  br i1 %tobool5, label %land.lhs.true237, label %for.inc260, !dbg !2992

land.lhs.true237:                                 ; preds = %if.end235
  %fd238 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !2992
  %53 = load i32* %fd238, align 8, !dbg !2992, !tbaa !1752
  %int_cast_to_i648 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !2992
  %div239 = sdiv i32 %53, 64, !dbg !2992
  %idxprom240 = sext i32 %div239 to i64, !dbg !2992
  %arrayidx242 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom240, !dbg !2992
  %54 = load i64* %arrayidx242, align 8, !dbg !2992, !tbaa !2939
  %rem244341 = and i32 %53, 63, !dbg !2992
  %int_cast_to_i6418 = zext i32 %rem244341 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6418), !dbg !2992
  %shl245 = shl i32 1, %rem244341, !dbg !2992
  %conv246 = sext i32 %shl245 to i64, !dbg !2992
  %and247 = and i64 %conv246, %54, !dbg !2992
  %tobool248 = icmp eq i64 %and247, 0, !dbg !2992
  br i1 %tobool248, label %for.inc260, label %if.then249, !dbg !2992

if.then249:                                       ; preds = %land.lhs.true237
  %rem250342 = and i32 %43, 63, !dbg !2992
  %int_cast_to_i6419 = zext i32 %rem250342 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6419), !dbg !2992
  %shl251 = shl i32 1, %rem250342, !dbg !2992
  %conv252 = sext i32 %shl251 to i64, !dbg !2992
  %int_cast_to_i649 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i649), !dbg !2992
  %div253 = sdiv i32 %43, 64, !dbg !2992
  %idxprom254 = sext i32 %div253 to i64, !dbg !2992
  %arrayidx256 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom254, !dbg !2992
  %55 = load i64* %arrayidx256, align 8, !dbg !2992, !tbaa !2939
  %or257 = or i64 %55, %conv252, !dbg !2992
  store i64 %or257, i64* %arrayidx256, align 8, !dbg !2992, !tbaa !2939
  br label %for.inc260, !dbg !2992

for.inc260:                                       ; preds = %if.then249, %land.lhs.true237, %if.end235, %land.lhs.true, %__get_file.exit359, %if.then.i355, %for.body183
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2980
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2980
  %exitcond = icmp eq i32 %lftr.wideiv, %nfds, !dbg !2980
  br i1 %exitcond, label %cleanup, label %for.body183, !dbg !2980

cleanup:                                          ; preds = %for.inc260, %if.else178, %if.then174, %if.then172, %for.end, %if.then31, %if.end8
  %retval.0 = phi i32 [ -1, %if.then31 ], [ -1, %if.then174 ], [ %count.1, %if.then172 ], [ %count.1, %for.end ], [ %add179, %if.else178 ], [ 0, %if.end8 ], [ %add179, %for.inc260 ]
  ret i32 %retval.0, !dbg !2994
}

; Function Attrs: nounwind uwtable
define i8* @getcwd(i8* %buf, i64 %size) #4 {
entry:
  %0 = load i32* @getcwd.n_calls, align 4, !dbg !2995, !tbaa !1289
  %inc = add nsw i32 %0, 1, !dbg !2995
  store i32 %inc, i32* @getcwd.n_calls, align 4, !dbg !2995, !tbaa !1289
  %1 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2996, !tbaa !1526
  %tobool = icmp eq i32 %1, 0, !dbg !2996
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2996

land.lhs.true:                                    ; preds = %entry
  %2 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 10), align 8, !dbg !2996, !tbaa !1539
  %3 = load i32* %2, align 4, !dbg !2996, !tbaa !1289
  %cmp = icmp eq i32 %3, %inc, !dbg !2996
  br i1 %cmp, label %if.then, label %if.end, !dbg !2996

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %1, -1, !dbg !2998
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2998, !tbaa !1526
  %call = tail call i32* @__errno_location() #1, !dbg !3000
  store i32 34, i32* %call, align 4, !dbg !3000, !tbaa !1289
  br label %return, !dbg !3001

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool1 = icmp eq i8* %buf, null, !dbg !3002
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3002

if.then2:                                         ; preds = %if.end
  %tobool3 = icmp eq i64 %size, 0, !dbg !3004
  %.size = select i1 %tobool3, i64 1024, i64 %size, !dbg !3004
  %call6 = tail call noalias i8* @malloc(i64 %.size) #5, !dbg !3007
  br label %if.end7, !dbg !3008

if.end7:                                          ; preds = %if.then2, %if.end
  %buf.addr.0 = phi i8* [ %buf, %if.end ], [ %call6, %if.then2 ]
  %size.addr.1 = phi i64 [ %size, %if.end ], [ %.size, %if.then2 ]
  %4 = ptrtoint i8* %buf.addr.0 to i64, !dbg !3009
  %call.i = tail call i64 @klee_get_valuel(i64 %4) #5, !dbg !3009
  %5 = inttoptr i64 %call.i to i8*, !dbg !3009
  %cmp.i = icmp eq i8* %5, %buf.addr.0, !dbg !3011
  %conv1.i = zext i1 %cmp.i to i64, !dbg !3011
  tail call void @klee_assume(i64 %conv1.i) #5, !dbg !3011
  %call.i25 = tail call i64 @klee_get_valuel(i64 %size.addr.1) #5, !dbg !3012
  %cmp.i26 = icmp eq i64 %call.i25, %size.addr.1, !dbg !3014
  %conv1.i27 = zext i1 %cmp.i26 to i64, !dbg !3014
  tail call void @klee_assume(i64 %conv1.i27) #5, !dbg !3014
  tail call void @klee_check_memory_access(i8* %5, i64 %call.i25) #5, !dbg !3015
  %call10 = tail call i64 (i64, ...)* @syscall(i64 79, i8* %5, i64 %call.i25) #5, !dbg !3016
  %conv = trunc i64 %call10 to i32, !dbg !3016
  %cmp11 = icmp eq i32 %conv, -1, !dbg !3017
  br i1 %cmp11, label %if.then13, label %return, !dbg !3017

if.then13:                                        ; preds = %if.end7
  %call14 = tail call i32 @klee_get_errno() #5, !dbg !3019
  %call15 = tail call i32* @__errno_location() #1, !dbg !3019
  store i32 %call14, i32* %call15, align 4, !dbg !3019, !tbaa !1289
  br label %return, !dbg !3021

return:                                           ; preds = %if.then13, %if.end7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then13 ], [ %5, %if.end7 ]
  ret i8* %retval.0, !dbg !3022
}

; Function Attrs: nounwind uwtable
define i32 @chroot(i8* nocapture readonly %path) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !3023, !tbaa !1299
  switch i8 %0, label %if.end11 [
    i8 0, label %if.then
    i8 47, label %land.lhs.true
  ], !dbg !3023

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #1, !dbg !3025
  store i32 2, i32* %call, align 4, !dbg !3025, !tbaa !1289
  br label %return, !dbg !3027

land.lhs.true:                                    ; preds = %entry
  %arrayidx6 = getelementptr inbounds i8* %path, i64 1, !dbg !3028
  %1 = load i8* %arrayidx6, align 1, !dbg !3028, !tbaa !1299
  %cmp8 = icmp eq i8 %1, 0, !dbg !3028
  br i1 %cmp8, label %return, label %if.end11, !dbg !3028

if.end11:                                         ; preds = %land.lhs.true, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str2365, i64 0, i64 0)) #5, !dbg !3030
  %call12 = tail call i32* @__errno_location() #1, !dbg !3031
  store i32 2, i32* %call12, align 4, !dbg !3031, !tbaa !1289
  br label %return, !dbg !3032

return:                                           ; preds = %if.end11, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.end11 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !3033
}

declare i64 @klee_get_valuel(i64) #7

; Function Attrs: nounwind
declare i32 @geteuid() #6

; Function Attrs: nounwind
declare i32 @getgid() #6

declare zeroext i1 @klee_is_infinite_float(float) #7

declare zeroext i1 @klee_is_infinite_double(double) #7

declare zeroext i1 @klee_is_infinite_long_double(x86_fp80) #7

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinff(float %f) #12 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_float(float %f) #15
  %cmp = fcmp ogt float %f, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinf(double %d) #12 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_double(double %d) #15
  %cmp = fcmp ogt double %d, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline optnone
define i32 @klee_internal_isinfl(x86_fp80 %d) #13 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %d) #15
  %cmp = fcmp ogt x86_fp80 %d, 0xK00000000000000000000
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: nounwind uwtable
define double @klee_internal_fabs(double %d) #4 {
entry:
  %call = tail call double @klee_abs_double(double %d) #15, !dbg !3034
  ret double %call, !dbg !3034
}

declare double @klee_abs_double(double) #7

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #4 {
entry:
  %call = tail call float @klee_abs_float(float %f) #15, !dbg !3035
  ret float %call, !dbg !3035
}

declare float @klee_abs_float(float) #7

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #4 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #15, !dbg !3036
  ret x86_fp80 %call, !dbg !3036
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #4 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #15, !dbg !3037
  %0 = icmp ult i32 %call, 5, !dbg !3038
  br i1 %0, label %switch.lookup, label %return, !dbg !3038

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !3038
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !3038
  %switch.load = load i32* %switch.gep, align 4, !dbg !3038
  ret i32 %switch.load, !dbg !3038

return:                                           ; preds = %entry
  ret i32 -1, !dbg !3039
}

declare i32 @klee_get_rounding_mode(...) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fesetround(i32 %rm) #4 {
entry:
  switch i32 %rm, label %return [
    i32 0, label %sw.bb
    i32 2048, label %sw.bb1
    i32 1024, label %sw.bb2
    i32 3072, label %sw.bb3
  ], !dbg !3040

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #15, !dbg !3041
  br label %return, !dbg !3043

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #15, !dbg !3044
  br label %return, !dbg !3045

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #15, !dbg !3046
  br label %return, !dbg !3047

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #15, !dbg !3048
  br label %return, !dbg !3049

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !3050
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #15, !dbg !3051
  %conv = zext i1 %call to i32, !dbg !3051
  ret i32 %conv, !dbg !3051
}

declare zeroext i1 @klee_is_nan_float(float) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #15, !dbg !3052
  %conv = zext i1 %call to i32, !dbg !3052
  ret i32 %conv, !dbg !3052
}

declare zeroext i1 @klee_is_nan_double(double) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #15, !dbg !3053
  %conv = zext i1 %call to i32, !dbg !3053
  ret i32 %conv, !dbg !3053
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #15, !dbg !3054
  br i1 %call, label %return, label %if.else, !dbg !3054

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #15, !dbg !3056
  br i1 %call1, label %return, label %if.else3, !dbg !3056

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !3058
  br i1 %cmp, label %return, label %if.else5, !dbg !3058

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #15, !dbg !3060
  %. = select i1 %call6, i32 4, i32 3, !dbg !3062
  br label %return, !dbg !3062

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3064
}

declare zeroext i1 @klee_is_normal_float(float) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #15, !dbg !3065
  br i1 %call, label %return, label %if.else, !dbg !3065

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #15, !dbg !3067
  br i1 %call1, label %return, label %if.else3, !dbg !3067

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !3069
  br i1 %cmp, label %return, label %if.else5, !dbg !3069

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #15, !dbg !3071
  %. = select i1 %call6, i32 4, i32 3, !dbg !3073
  br label %return, !dbg !3073

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3075
}

declare zeroext i1 @klee_is_normal_double(double) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #15, !dbg !3076
  br i1 %call, label %return, label %if.else, !dbg !3076

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #15, !dbg !3078
  br i1 %call1, label %return, label %if.else3, !dbg !3078

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !3080
  br i1 %cmp, label %return, label %if.else5, !dbg !3080

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #15, !dbg !3082
  %. = select i1 %call6, i32 4, i32 3, !dbg !3084
  br label %return, !dbg !3084

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3086
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #15, !dbg !3087
  %0 = zext i1 %call to i32, !dbg !3087
  %lnot.ext = xor i32 %0, 1, !dbg !3087
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #15, !dbg !3087
  %1 = zext i1 %call1 to i32, !dbg !3087
  %lnot.ext3 = xor i32 %1, 1, !dbg !3087
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3087
  ret i32 %and, !dbg !3087
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #15, !dbg !3088
  %0 = zext i1 %call to i32, !dbg !3088
  %lnot.ext = xor i32 %0, 1, !dbg !3088
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #15, !dbg !3088
  %1 = zext i1 %call1 to i32, !dbg !3088
  %lnot.ext3 = xor i32 %1, 1, !dbg !3088
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3088
  ret i32 %and, !dbg !3088
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #15, !dbg !3089
  %0 = zext i1 %call to i32, !dbg !3089
  %lnot.ext = xor i32 %0, 1, !dbg !3089
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #15, !dbg !3089
  %1 = zext i1 %call1 to i32, !dbg !3089
  %lnot.ext3 = xor i32 %1, 1, !dbg !3089
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3089
  ret i32 %and, !dbg !3089
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !3090
  br i1 %cmp, label %if.then, label %if.end, !dbg !3090

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str85, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str287, i64 0, i64 0)) #16, !dbg !3092
  unreachable, !dbg !3092

if.end:                                           ; preds = %entry
  ret void, !dbg !3093
}

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !3094
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #15, !dbg !3094
  %1 = load i32* %x, align 4, !dbg !3095, !tbaa !1289
  ret i32 %1, !dbg !3095
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !3096
  br i1 %cmp, label %if.end, label %if.then, !dbg !3096

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str388, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1489, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2590, i64 0, i64 0)) #16, !dbg !3098
  unreachable, !dbg !3098

if.end:                                           ; preds = %entry
  ret void, !dbg !3100
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !3101
  br i1 %cmp, label %if.end, label %if.then, !dbg !3101

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str691, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1792, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #16, !dbg !3103
  unreachable, !dbg !3103

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !3104
  %cmp1 = icmp eq i32 %add, %end, !dbg !3104
  br i1 %cmp1, label %return, label %if.else, !dbg !3104

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !3106
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #15, !dbg !3106
  %cmp3 = icmp eq i32 %start, 0, !dbg !3108
  %1 = load i32* %x, align 4, !dbg !3110, !tbaa !1289
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !3108

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !3110
  %conv6 = zext i1 %cmp5 to i64, !dbg !3110
  call void @klee_assume(i64 %conv6) #15, !dbg !3110
  br label %if.end14, !dbg !3112

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !3113
  %conv10 = zext i1 %cmp8 to i64, !dbg !3113
  call void @klee_assume(i64 %conv10) #15, !dbg !3113
  %2 = load i32* %x, align 4, !dbg !3115, !tbaa !1289
  %cmp11 = icmp slt i32 %2, %end, !dbg !3115
  %conv13 = zext i1 %cmp11 to i64, !dbg !3115
  call void @klee_assume(i64 %conv13) #15, !dbg !3115
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !3116, !tbaa !1289
  br label %return, !dbg !3116

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !3117
}

; Function Attrs: nounwind uwtable
define void @klee_set_rounding_mode(i32 %rm) #4 {
entry:
  switch i32 %rm, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !3118

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #15, !dbg !3119
  br label %sw.epilog, !dbg !3119

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #15, !dbg !3121
  br label %sw.epilog, !dbg !3121

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #15, !dbg !3122
  br label %sw.epilog, !dbg !3122

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #15, !dbg !3123
  br label %sw.epilog, !dbg !3123

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #15, !dbg !3124
  br label %sw.epilog, !dbg !3124

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str993, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #16, !dbg !3125
  unreachable, !dbg !3125

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !3126
}

declare void @klee_set_rounding_mode_internal(i32) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !3127
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !3127

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3128
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3128
  %next.gep.sum282 = or i64 %index, 16, !dbg !3128
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !3128
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3128
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !3128
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !3128
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3128
  %next.gep106.sum299 = or i64 %index, 16, !dbg !3128
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !3128
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3128
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !3128
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3129

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
  %dec = add i64 %len.addr.04, -1, !dbg !3127
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !3128
  %8 = load i8* %src.06, align 1, !dbg !3128, !tbaa !1299
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !3128
  store i8 %8, i8* %dest.05, align 1, !dbg !3128, !tbaa !1299
  %cmp = icmp eq i64 %dec, 0, !dbg !3127
  br i1 %cmp, label %while.end, label %while.body, !dbg !3127, !llvm.loop !3132

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !3133
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !3134
  br i1 %cmp, label %return, label %if.end, !dbg !3134

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !3136
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !3136

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !3138
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !3138

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3138
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3138
  %next.gep.sum610 = or i64 %index, 16, !dbg !3138
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !3138
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3138
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !3138
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !3138
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3138
  %next.gep136.sum627 = or i64 %index, 16, !dbg !3138
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !3138
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3138
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !3138
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3140

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
  %dec = add i64 %count.addr.028, -1, !dbg !3138
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !3138
  %8 = load i8* %b.030, align 1, !dbg !3138, !tbaa !1299
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !3138
  store i8 %8, i8* %a.029, align 1, !dbg !3138, !tbaa !1299
  %tobool = icmp eq i64 %dec, 0, !dbg !3138
  br i1 %tobool, label %return, label %while.body, !dbg !3138, !llvm.loop !3141

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !3142
  %tobool832 = icmp eq i64 %count, 0, !dbg !3144
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !3144

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !3145
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !3142
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !3144
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !3144
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !3144
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !3144
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3144
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !3144
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !3144
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !3144
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !3144
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3144
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3144
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !3144
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !3144
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !3144
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !3144
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3144
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !3144
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !3144
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !3144
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !3144
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !3146

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !3144
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !3144
  %19 = load i8* %b.135, align 1, !dbg !3144, !tbaa !1299
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !3144
  store i8 %19, i8* %a.134, align 1, !dbg !3144, !tbaa !1299
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !3144
  br i1 %tobool8, label %return, label %while.body9, !dbg !3144, !llvm.loop !3147

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !3148
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !3149
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !3149

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3150
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3150
  %next.gep.sum283 = or i64 %index, 16, !dbg !3150
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !3150
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3150
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !3150
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !3150
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3150
  %next.gep107.sum300 = or i64 %index, 16, !dbg !3150
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !3150
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3150
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !3150
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3151

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
  %dec = add i64 %len.addr.04, -1, !dbg !3149
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !3150
  %8 = load i8* %src.06, align 1, !dbg !3150, !tbaa !1299
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !3150
  store i8 %8, i8* %dest.05, align 1, !dbg !3150, !tbaa !1299
  %cmp = icmp eq i64 %dec, 0, !dbg !3149
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !3149, !llvm.loop !3152

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !3149

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !3153
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !3154
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !3154

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !3155
  br label %while.body, !dbg !3154

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !3154
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !3155
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !3155, !tbaa !1299
  %cmp = icmp eq i64 %dec, 0, !dbg !3154
  br i1 %cmp, label %while.end, label %while.body, !dbg !3154

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !3156
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #4 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #15, !dbg !3157
  ret double %call, !dbg !3157
}

declare double @klee_sqrt_double(double) #7

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #4 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #15, !dbg !3158
  ret float %call, !dbg !3158
}

declare float @klee_sqrt_float(float) #7

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #4 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #15, !dbg !3159
  ret x86_fp80 %call, !dbg !3159
}

declare x86_fp80 @klee_sqrt_long_double(x86_fp80) #7

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline nounwind optnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline optnone }
attributes #14 = { noreturn nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !15, !115, !249, !422, !1052, !1074, !1103, !1148, !1158, !1166, !1177, !1189, !1199, !1213, !1227, !1241, !1256}
!llvm.module.flags = !{!1269, !1270}
!llvm.ident = !{!1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271, !1271}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"stack_cp_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/covert_propogation"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !2, i32 7} ; [ 
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/covert_propogation/stack_cp_l1_klee_annotated.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_s
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786449, metadata !16, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!16 = metadata !{metadata !"/home/user/klee/runtime/POSIX/klee_init_env.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!17 = metadata !{metadata !18, metadata !74, metadata !82, metadata !87, metadata !95, metadata !104, metadata !109}
!18 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"klee_init_env", metadata !"klee_init_env", metadata !"", i32 85, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8***)* @klee_init_env, null, null, me
!19 = metadata !{i32 786473, metadata !16}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!20 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{null, metadata !22, metadata !23}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45,
!25 = metadata !{i32 786689, metadata !18, metadata !"argcPtr", metadata !19, i32 16777301, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcPtr] [line 85]
!26 = metadata !{i32 786689, metadata !18, metadata !"argvPtr", metadata !19, i32 33554517, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argvPtr] [line 85]
!27 = metadata !{i32 786688, metadata !18, metadata !"argc", metadata !19, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argc] [line 86]
!28 = metadata !{i32 786688, metadata !18, metadata !"argv", metadata !19, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 87]
!29 = metadata !{i32 786688, metadata !18, metadata !"new_argc", metadata !19, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argc] [line 89]
!30 = metadata !{i32 786688, metadata !18, metadata !"n_args", metadata !19, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_args] [line 89]
!31 = metadata !{i32 786688, metadata !18, metadata !"new_argv", metadata !19, i32 90, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argv] [line 90]
!32 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 64, i32 0, i32 0, metadata !9, metadata !33, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 64, offset 0] [from ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 1024}     ; [ DW_TAG_subrange_type ] [0, 1023]
!35 = metadata !{i32 786688, metadata !18, metadata !"max_len", metadata !19, i32 91, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_len] [line 91]
!36 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!37 = metadata !{i32 786688, metadata !18, metadata !"min_argvs", metadata !19, i32 91, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_argvs] [line 91]
!38 = metadata !{i32 786688, metadata !18, metadata !"max_argvs", metadata !19, i32 91, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_argvs] [line 91]
!39 = metadata !{i32 786688, metadata !18, metadata !"sym_files", metadata !19, i32 92, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_files] [line 92]
!40 = metadata !{i32 786688, metadata !18, metadata !"sym_file_len", metadata !19, i32 92, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_file_len] [line 92]
!41 = metadata !{i32 786688, metadata !18, metadata !"sym_stdin_len", metadata !19, i32 93, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdin_len] [line 93]
!42 = metadata !{i32 786688, metadata !18, metadata !"sym_stdout_flag", metadata !19, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdout_flag] [line 94]
!43 = metadata !{i32 786688, metadata !18, metadata !"save_all_writes_flag", metadata !19, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save_all_writes_flag] [line 95]
!44 = metadata !{i32 786688, metadata !18, metadata !"fd_fail", metadata !19, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd_fail] [line 96]
!45 = metadata !{i32 786688, metadata !18, metadata !"final_argv", metadata !19, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [final_argv] [line 97]
!46 = metadata !{i32 786688, metadata !18, metadata !"sym_arg_name", metadata !19, i32 98, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_name] [line 98]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !10, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!50 = metadata !{i32 786688, metadata !18, metadata !"sym_arg_num", metadata !19, i32 99, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_num] [line 99]
!51 = metadata !{i32 786688, metadata !18, metadata !"k", metadata !19, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 100]
!52 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !19, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!53 = metadata !{i32 786688, metadata !54, metadata !"msg", metadata !19, i32 125, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 125]
!54 = metadata !{i32 786443, metadata !16, metadata !55, i32 124, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!55 = metadata !{i32 786443, metadata !16, metadata !56, i32 124, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!56 = metadata !{i32 786443, metadata !16, metadata !18, i32 123, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!59 = metadata !{i32 786688, metadata !60, metadata !"msg", metadata !19, i32 136, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 136]
!60 = metadata !{i32 786443, metadata !16, metadata !61, i32 135, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!61 = metadata !{i32 786443, metadata !16, metadata !55, i32 135, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!62 = metadata !{i32 786688, metadata !63, metadata !"msg", metadata !19, i32 156, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 156]
!63 = metadata !{i32 786443, metadata !16, metadata !64, i32 155, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!64 = metadata !{i32 786443, metadata !16, metadata !61, i32 155, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!65 = metadata !{i32 786688, metadata !66, metadata !"msg", metadata !19, i32 167, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 167]
!66 = metadata !{i32 786443, metadata !16, metadata !67, i32 166, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!67 = metadata !{i32 786443, metadata !16, metadata !64, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!68 = metadata !{i32 786688, metadata !69, metadata !"msg", metadata !19, i32 188, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 188]
!69 = metadata !{i32 786443, metadata !16, metadata !70, i32 187, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!70 = metadata !{i32 786443, metadata !16, metadata !71, i32 187, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!71 = metadata !{i32 786443, metadata !16, metadata !72, i32 183, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!72 = metadata !{i32 786443, metadata !16, metadata !73, i32 179, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!73 = metadata !{i32 786443, metadata !16, metadata !67, i32 174, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!74 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"__get_sym_str", metadata !"__get_sym_str", metadata !"", i32 63, metadata !75, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @__get_sym_str, null, null, metadat
!75 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !9, metadata !8, metadata !9}
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81}
!78 = metadata !{i32 786689, metadata !74, metadata !"numChars", metadata !19, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [numChars] [line 63]
!79 = metadata !{i32 786689, metadata !74, metadata !"name", metadata !19, i32 33554495, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 63]
!80 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !19, i32 64, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!81 = metadata !{i32 786688, metadata !74, metadata !"s", metadata !19, i32 65, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 65]
!82 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"__isprint", metadata !"__isprint", metadata !"", i32 48, metadata !83, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !85, i32 48} ; [ DW_TAG_subprogr
!83 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !8, metadata !58}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786689, metadata !82, metadata !"c", metadata !19, i32 16777264, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 48]
!87 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"__add_arg", metadata !"__add_arg", metadata !"", i32 76, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !90, i32 76} ; [ DW_TAG_subprogr
!88 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !22, metadata !14, metadata !9, metadata !8}
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94}
!91 = metadata !{i32 786689, metadata !87, metadata !"argc", metadata !19, i32 16777292, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 76]
!92 = metadata !{i32 786689, metadata !87, metadata !"argv", metadata !19, i32 33554508, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 76]
!93 = metadata !{i32 786689, metadata !87, metadata !"arg", metadata !19, i32 50331724, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 76]
!94 = metadata !{i32 786689, metadata !87, metadata !"argcMax", metadata !19, i32 67108940, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcMax] [line 76]
!95 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"__str_to_int", metadata !"__str_to_int", metadata !"", i32 30, metadata !96, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !99, i32 30} ; [ DW_TAG_su
!96 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{metadata !98, metadata !9, metadata !57}
!98 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103}
!100 = metadata !{i32 786689, metadata !95, metadata !"s", metadata !19, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 30]
!101 = metadata !{i32 786689, metadata !95, metadata !"error_msg", metadata !19, i32 33554462, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [error_msg] [line 30]
!102 = metadata !{i32 786688, metadata !95, metadata !"res", metadata !19, i32 31, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 31]
!103 = metadata !{i32 786688, metadata !95, metadata !"c", metadata !19, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 32]
!104 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"__emit_error", metadata !"__emit_error", metadata !"", i32 23, metadata !105, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @__emit_error, null, null, metadata !10
!105 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{null, metadata !57}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786689, metadata !104, metadata !"msg", metadata !19, i32 16777239, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 23]
!109 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"__streq", metadata !"__streq", metadata !"", i32 53, metadata !110, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !112, i32 53} ; [ DW_TAG_subprogra
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !8, metadata !57, metadata !57}
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786689, metadata !109, metadata !"a", metadata !19, i32 16777269, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 53]
!114 = metadata !{i32 786689, metadata !109, metadata !"b", metadata !19, i32 33554485, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 53]
!115 = metadata !{i32 786449, metadata !116, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!116 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_init.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!117 = metadata !{metadata !118, metadata !173, metadata !179, metadata !202}
!118 = metadata !{i32 786478, metadata !116, metadata !119, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"", i32 110, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32)* @klee_in
!119 = metadata !{i32 786473, metadata !116}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!120 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{null, metadata !36, metadata !36, metadata !36, metadata !8, metadata !8, metadata !36}
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !134}
!123 = metadata !{i32 786689, metadata !118, metadata !"n_files", metadata !119, i32 16777326, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_files] [line 110]
!124 = metadata !{i32 786689, metadata !118, metadata !"file_length", metadata !119, i32 33554542, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file_length] [line 110]
!125 = metadata !{i32 786689, metadata !118, metadata !"stdin_length", metadata !119, i32 50331759, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stdin_length] [line 111]
!126 = metadata !{i32 786689, metadata !118, metadata !"sym_stdout_flag", metadata !119, i32 67108975, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym_stdout_flag] [line 111]
!127 = metadata !{i32 786689, metadata !118, metadata !"save_all_writes_flag", metadata !119, i32 83886192, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [save_all_writes_flag] [line 112]
!128 = metadata !{i32 786689, metadata !118, metadata !"max_failures", metadata !119, i32 100663408, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_failures] [line 112]
!129 = metadata !{i32 786688, metadata !118, metadata !"k", metadata !119, i32 113, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 113]
!130 = metadata !{i32 786688, metadata !118, metadata !"name", metadata !119, i32 114, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 114]
!131 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !10, metadata !132, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!132 = metadata !{metadata !133}
!133 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!134 = metadata !{i32 786688, metadata !118, metadata !"s", metadata !119, i32 115, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 115]
!135 = metadata !{i32 786451, metadata !136, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!136 = metadata !{metadata !"/usr/include/bits/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!137 = metadata !{metadata !138, metadata !141, metadata !143, metadata !145, metadata !147, metadata !149, metadata !151, metadata !152, metadata !153, metadata !155, metadata !157, metadata !159, metadata !167, metadata !168, metadata !169}
!138 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!139 = metadata !{i32 786454, metadata !136, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!140 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!141 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !142} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!142 = metadata !{i32 786454, metadata !136, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!143 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !144} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!144 = metadata !{i32 786454, metadata !136, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!145 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !146} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!146 = metadata !{i32 786454, metadata !136, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!147 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !148} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!148 = metadata !{i32 786454, metadata !136, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!149 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !150} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!150 = metadata !{i32 786454, metadata !136, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!151 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!152 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !139} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!153 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !154} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!154 = metadata !{i32 786454, metadata !136, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!155 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !156} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!156 = metadata !{i32 786454, metadata !136, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!157 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !158} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!158 = metadata !{i32 786454, metadata !136, null, metadata !"__blkcnt64_t", i32 159, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 159, size 0, align 0, offset 0] [from long int]
!159 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !160} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!160 = metadata !{i32 786451, metadata !161, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !162, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!161 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!162 = metadata !{metadata !163, metadata !165}
!163 = metadata !{i32 786445, metadata !161, metadata !160, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!164 = metadata !{i32 786454, metadata !161, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!165 = metadata !{i32 786445, metadata !161, metadata !160, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !166} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!166 = metadata !{i32 786454, metadata !161, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!167 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !160} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!168 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !160} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!169 = metadata !{i32 786445, metadata !136, metadata !135, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !170} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!170 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !166, metadata !171, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!171 = metadata !{metadata !172}
!172 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!173 = metadata !{i32 786478, metadata !116, metadata !119, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", i32 97, metadata !174, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !176, i32 97} ; [ DW_T
!174 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{metadata !36, metadata !57}
!176 = metadata !{metadata !177, metadata !178}
!177 = metadata !{i32 786689, metadata !173, metadata !"name", metadata !119, i32 16777313, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 97]
!178 = metadata !{i32 786688, metadata !173, metadata !"x", metadata !119, i32 98, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 98]
!179 = metadata !{i32 786478, metadata !116, metadata !119, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", i32 46, metadata !180, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t.17*, i3
!180 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{null, metadata !182, metadata !36, metadata !57, metadata !190}
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!183 = metadata !{i32 786454, metadata !184, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!184 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!185 = metadata !{i32 786451, metadata !184, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !186, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!186 = metadata !{metadata !187, metadata !188, metadata !189}
!187 = metadata !{i32 786445, metadata !184, metadata !185, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!188 = metadata !{i32 786445, metadata !184, metadata !185, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!189 = metadata !{i32 786445, metadata !184, metadata !185, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !190} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198}
!192 = metadata !{i32 786689, metadata !179, metadata !"dfile", metadata !119, i32 16777262, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dfile] [line 46]
!193 = metadata !{i32 786689, metadata !179, metadata !"size", metadata !119, i32 33554478, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 46]
!194 = metadata !{i32 786689, metadata !179, metadata !"name", metadata !119, i32 50331695, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 47]
!195 = metadata !{i32 786689, metadata !179, metadata !"defaults", metadata !119, i32 67108911, metadata !190, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defaults] [line 47]
!196 = metadata !{i32 786688, metadata !179, metadata !"s", metadata !119, i32 48, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 48]
!197 = metadata !{i32 786688, metadata !179, metadata !"sp", metadata !119, i32 49, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sp] [line 49]
!198 = metadata !{i32 786688, metadata !179, metadata !"sname", metadata !119, i32 50, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname] [line 50]
!199 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !200, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!200 = metadata !{metadata !201}
!201 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!202 = metadata !{i32 786478, metadata !203, metadata !204, metadata !"stat64", metadata !"stat64", metadata !"", i32 501, metadata !205, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !207, i32 502} ; [ DW_TAG_subpro
!203 = metadata !{metadata !"/usr/include/sys/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!204 = metadata !{i32 786473, metadata !203}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!205 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{metadata !8, metadata !57, metadata !190}
!207 = metadata !{metadata !208, metadata !209}
!208 = metadata !{i32 786689, metadata !202, metadata !"__path", metadata !204, i32 16777717, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__path] [line 501]
!209 = metadata !{i32 786689, metadata !202, metadata !"__statbuf", metadata !204, i32 33554933, metadata !190, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 501]
!210 = metadata !{metadata !211, metadata !232}
!211 = metadata !{i32 786484, i32 0, null, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !119, i32 37, metadata !212, i32 0, i32 1, { [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, null} ; [ DW_TAG_variable ] 
!212 = metadata !{i32 786454, metadata !116, null, metadata !"exe_sym_env_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ] [exe_sym_env_t] [line 69, size 0, align 0, offset 0] [from ]
!213 = metadata !{i32 786451, metadata !184, null, metadata !"", i32 61, i64 6272, i64 64, i32 0, i32 0, null, metadata !214, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 61, size 6272, align 64, offset 0] [def] [from ]
!214 = metadata !{metadata !215, metadata !228, metadata !230, metadata !231}
!215 = metadata !{i32 786445, metadata !184, metadata !213, metadata !"fds", i32 62, i64 6144, i64 64, i64 0, i32 0, metadata !216} ; [ DW_TAG_member ] [fds] [line 62, size 6144, align 64, offset 0] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 64, i32 0, i32 0, metadata !217, metadata !226, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6144, align 64, offset 0] [from exe_file_t]
!217 = metadata !{i32 786454, metadata !184, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!218 = metadata !{i32 786451, metadata !184, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !219, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !225}
!220 = metadata !{i32 786445, metadata !184, metadata !218, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!221 = metadata !{i32 786445, metadata !184, metadata !218, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!222 = metadata !{i32 786445, metadata !184, metadata !218, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !223} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!223 = metadata !{i32 786454, metadata !184, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!224 = metadata !{i32 786454, metadata !184, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!225 = metadata !{i32 786445, metadata !184, metadata !218, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !182} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!226 = metadata !{metadata !227}
!227 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!228 = metadata !{i32 786445, metadata !184, metadata !213, metadata !"umask", i32 63, i64 32, i64 32, i64 6144, i32 0, metadata !229} ; [ DW_TAG_member ] [umask] [line 63, size 32, align 32, offset 6144] [from mode_t]
!229 = metadata !{i32 786454, metadata !184, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!230 = metadata !{i32 786445, metadata !184, metadata !213, metadata !"version", i32 64, i64 32, i64 32, i64 6176, i32 0, metadata !36} ; [ DW_TAG_member ] [version] [line 64, size 32, align 32, offset 6176] [from unsigned int]
!231 = metadata !{i32 786445, metadata !184, metadata !213, metadata !"save_all_writes", i32 68, i64 32, i64 32, i64 6208, i32 0, metadata !8} ; [ DW_TAG_member ] [save_all_writes] [line 68, size 32, align 32, offset 6208] [from int]
!232 = metadata !{i32 786484, i32 0, null, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !119, i32 24, metadata !233, i32 0, i32 1, %struct.exe_file_system_t.19* @__exe_fs, null} ; [ DW_TAG_variable ] [__exe_fs] [line 24] [def]
!233 = metadata !{i32 786454, metadata !116, null, metadata !"exe_file_system_t", i32 54, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [exe_file_system_t] [line 54, size 0, align 0, offset 0] [from ]
!234 = metadata !{i32 786451, metadata !184, null, metadata !"", i32 42, i64 832, i64 64, i32 0, i32 0, null, metadata !235, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 42, size 832, align 64, offset 0] [def] [from ]
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248}
!236 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"n_sym_files", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [n_sym_files] [line 43, size 32, align 32, offset 0] [from unsigned int]
!237 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"sym_stdin", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [sym_stdin] [line 44, size 64, align 64, offset 64] [from ]
!238 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"sym_stdout", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !182} ; [ DW_TAG_member ] [sym_stdout] [line 44, size 64, align 64, offset 128] [from ]
!239 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"stdout_writes", i32 45, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [stdout_writes] [line 45, size 32, align 32, offset 192] [from unsigned int]
!240 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"sym_files", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !182} ; [ DW_TAG_member ] [sym_files] [line 46, size 64, align 64, offset 256] [from ]
!241 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"max_failures", i32 49, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [max_failures] [line 49, size 32, align 32, offset 320] [from unsigned int]
!242 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"read_fail", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [read_fail] [line 52, size 64, align 64, offset 384] [from ]
!243 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"write_fail", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [write_fail] [line 52, size 64, align 64, offset 448] [from ]
!244 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"close_fail", i32 52, i64 64, i64 64, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [close_fail] [line 52, size 64, align 64, offset 512] [from ]
!245 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"ftruncate_fail", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ] [ftruncate_fail] [line 52, size 64, align 64, offset 576] [from ]
!246 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"getcwd_fail", i32 52, i64 64, i64 64, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [getcwd_fail] [line 52, size 64, align 64, offset 640] [from ]
!247 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"chmod_fail", i32 53, i64 64, i64 64, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [chmod_fail] [line 53, size 64, align 64, offset 704] [from ]
!248 = metadata !{i32 786445, metadata !184, metadata !234, metadata !"fchmod_fail", i32 53, i64 64, i64 64, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [fchmod_fail] [line 53, size 64, align 64, offset 768] [from ]
!249 = metadata !{i32 786449, metadata !250, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!250 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_64.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!251 = metadata !{metadata !252, metadata !279, metadata !290, metadata !299, metadata !330, metadata !336, metadata !341, metadata !345, metadata !352, metadata !358, metadata !364, metadata !400}
!252 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"open", metadata !"open", metadata !"open64", i32 45, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64, null, null, metadata !256, i
!253 = metadata !{i32 786473, metadata !250}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!254 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!255 = metadata !{metadata !8, metadata !57, metadata !8}
!256 = metadata !{metadata !257, metadata !258, metadata !259, metadata !262}
!257 = metadata !{i32 786689, metadata !252, metadata !"pathname", metadata !253, i32 16777261, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 45]
!258 = metadata !{i32 786689, metadata !252, metadata !"flags", metadata !253, i32 33554477, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 45]
!259 = metadata !{i32 786688, metadata !252, metadata !"mode", metadata !253, i32 46, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 46]
!260 = metadata !{i32 786454, metadata !250, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!261 = metadata !{i32 786454, metadata !250, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!262 = metadata !{i32 786688, metadata !263, metadata !"ap", metadata !253, i32 50, metadata !265, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 50]
!263 = metadata !{i32 786443, metadata !250, metadata !264, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!264 = metadata !{i32 786443, metadata !250, metadata !252, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!265 = metadata !{i32 786454, metadata !250, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!266 = metadata !{i32 786454, metadata !250, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!267 = metadata !{i32 786454, metadata !250, null, metadata !"__builtin_va_list", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 50, size 0, align 0, offset 0] [from ]
!268 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !269, metadata !277, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!269 = metadata !{i32 786454, metadata !250, null, metadata !"__va_list_tag", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [__va_list_tag] [line 50, size 0, align 0, offset 0] [from __va_list_tag]
!270 = metadata !{i32 786451, metadata !250, null, metadata !"__va_list_tag", i32 50, i64 192, i64 64, i32 0, i32 0, null, metadata !271, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 50, size 192, align 64, offset 0] [def] [
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !276}
!272 = metadata !{i32 786445, metadata !250, metadata !270, metadata !"gp_offset", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [gp_offset] [line 50, size 32, align 32, offset 0] [from unsigned int]
!273 = metadata !{i32 786445, metadata !250, metadata !270, metadata !"fp_offset", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [fp_offset] [line 50, size 32, align 32, offset 32] [from unsigned int]
!274 = metadata !{i32 786445, metadata !250, metadata !270, metadata !"overflow_arg_area", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !275} ; [ DW_TAG_member ] [overflow_arg_area] [line 50, size 64, align 64, offset 64] [from ]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!276 = metadata !{i32 786445, metadata !250, metadata !270, metadata !"reg_save_area", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !275} ; [ DW_TAG_member ] [reg_save_area] [line 50, size 64, align 64, offset 128] [from ]
!277 = metadata !{metadata !278}
!278 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!279 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"openat", metadata !"openat", metadata !"openat64", i32 59, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, ...)* @openat64, null, null, met
!280 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{metadata !8, metadata !8, metadata !57, metadata !8}
!282 = metadata !{metadata !283, metadata !284, metadata !285, metadata !286, metadata !287}
!283 = metadata !{i32 786689, metadata !279, metadata !"fd", metadata !253, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 59]
!284 = metadata !{i32 786689, metadata !279, metadata !"pathname", metadata !253, i32 33554491, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 59]
!285 = metadata !{i32 786689, metadata !279, metadata !"flags", metadata !253, i32 50331707, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 59]
!286 = metadata !{i32 786688, metadata !279, metadata !"mode", metadata !253, i32 60, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 60]
!287 = metadata !{i32 786688, metadata !288, metadata !"ap", metadata !253, i32 64, metadata !265, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 64]
!288 = metadata !{i32 786443, metadata !250, metadata !289, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!289 = metadata !{i32 786443, metadata !250, metadata !279, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!290 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"lseek", metadata !"lseek", metadata !"lseek64", i32 73, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64, null, null, metadata !29
!291 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!292 = metadata !{metadata !293, metadata !8, metadata !294, metadata !8}
!293 = metadata !{i32 786454, metadata !250, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!294 = metadata !{i32 786454, metadata !250, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!295 = metadata !{metadata !296, metadata !297, metadata !298}
!296 = metadata !{i32 786689, metadata !290, metadata !"fd", metadata !253, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 73]
!297 = metadata !{i32 786689, metadata !290, metadata !"offset", metadata !253, i32 33554505, metadata !294, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 73]
!298 = metadata !{i32 786689, metadata !290, metadata !"whence", metadata !253, i32 50331721, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 73]
!299 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat64", i32 77, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64.16*)* @__xstat64, n
!300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !8, metadata !8, metadata !57, metadata !302}
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!303 = metadata !{i32 786451, metadata !136, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !304, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!304 = metadata !{metadata !305, metadata !306, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !318, metadata !323, metadata !324, metadata !325}
!305 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!306 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !307} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!307 = metadata !{i32 786454, metadata !136, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!308 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !144} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!309 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !261} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!310 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !148} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!311 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !150} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!312 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!313 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !139} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!314 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !154} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!315 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !156} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!316 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !317} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!317 = metadata !{i32 786454, metadata !136, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!318 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !319} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!319 = metadata !{i32 786451, metadata !161, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !320, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!320 = metadata !{metadata !321, metadata !322}
!321 = metadata !{i32 786445, metadata !161, metadata !319, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!322 = metadata !{i32 786445, metadata !161, metadata !319, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !166} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!323 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !319} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!324 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !319} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!325 = metadata !{i32 786445, metadata !136, metadata !303, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !170} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!326 = metadata !{metadata !327, metadata !328, metadata !329}
!327 = metadata !{i32 786689, metadata !299, metadata !"vers", metadata !253, i32 16777293, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 77]
!328 = metadata !{i32 786689, metadata !299, metadata !"path", metadata !253, i32 33554509, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 77]
!329 = metadata !{i32 786689, metadata !299, metadata !"buf", metadata !253, i32 50331725, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 77]
!330 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"stat", metadata !"stat", metadata !"stat64", i32 81, metadata !331, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @stat64, null, null, metada
!331 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !332, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!332 = metadata !{metadata !8, metadata !57, metadata !302}
!333 = metadata !{metadata !334, metadata !335}
!334 = metadata !{i32 786689, metadata !330, metadata !"path", metadata !253, i32 16777297, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 81]
!335 = metadata !{i32 786689, metadata !330, metadata !"buf", metadata !253, i32 33554513, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 81]
!336 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat64", i32 85, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64.16*)* @__lxstat6
!337 = metadata !{metadata !338, metadata !339, metadata !340}
!338 = metadata !{i32 786689, metadata !336, metadata !"vers", metadata !253, i32 16777301, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 85]
!339 = metadata !{i32 786689, metadata !336, metadata !"path", metadata !253, i32 33554517, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 85]
!340 = metadata !{i32 786689, metadata !336, metadata !"buf", metadata !253, i32 50331733, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 85]
!341 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"lstat", metadata !"lstat", metadata !"lstat64", i32 89, metadata !331, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @lstat64, null, null, me
!342 = metadata !{metadata !343, metadata !344}
!343 = metadata !{i32 786689, metadata !341, metadata !"path", metadata !253, i32 16777305, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 89]
!344 = metadata !{i32 786689, metadata !341, metadata !"buf", metadata !253, i32 33554521, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 89]
!345 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat64", i32 93, metadata !346, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat64.16*)* @__fxstat6
!346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{metadata !8, metadata !8, metadata !8, metadata !302}
!348 = metadata !{metadata !349, metadata !350, metadata !351}
!349 = metadata !{i32 786689, metadata !345, metadata !"vers", metadata !253, i32 16777309, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 93]
!350 = metadata !{i32 786689, metadata !345, metadata !"fd", metadata !253, i32 33554525, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 93]
!351 = metadata !{i32 786689, metadata !345, metadata !"buf", metadata !253, i32 50331741, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 93]
!352 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"fstat", metadata !"fstat", metadata !"fstat64", i32 97, metadata !353, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64.16*)* @fstat64, null, null, me
!353 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{metadata !8, metadata !8, metadata !302}
!355 = metadata !{metadata !356, metadata !357}
!356 = metadata !{i32 786689, metadata !352, metadata !"fd", metadata !253, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 97]
!357 = metadata !{i32 786689, metadata !352, metadata !"buf", metadata !253, i32 33554529, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 97]
!358 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"ftruncate64", metadata !"ftruncate64", metadata !"", i32 101, metadata !359, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate64, null, null, metadat
!359 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!360 = metadata !{metadata !8, metadata !8, metadata !294}
!361 = metadata !{metadata !362, metadata !363}
!362 = metadata !{i32 786689, metadata !358, metadata !"fd", metadata !253, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 101]
!363 = metadata !{i32 786689, metadata !358, metadata !"length", metadata !253, i32 33554533, metadata !294, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 101]
!364 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"statfs", metadata !"statfs", metadata !"statfs64", i32 106, metadata !365, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs.11*)* @statfs64, null, nul
!365 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!366 = metadata !{metadata !8, metadata !57, metadata !367}
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!368 = metadata !{i32 786451, metadata !369, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !370, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!369 = metadata !{metadata !"/usr/include/bits/statfs.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!370 = metadata !{metadata !371, metadata !373, metadata !374, metadata !376, metadata !377, metadata !378, metadata !380, metadata !381, metadata !390, metadata !391, metadata !392, metadata !393}
!371 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!372 = metadata !{i32 786454, metadata !369, null, metadata !"__fsword_t", i32 170, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__fsword_t] [line 170, size 0, align 0, offset 0] [from long int]
!373 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !372} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!374 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_blocks", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !375} ; [ DW_TAG_member ] [f_blocks] [line 35, size 64, align 64, offset 128] [from __fsblkcnt64_t]
!375 = metadata !{i32 786454, metadata !369, null, metadata !"__fsblkcnt64_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__fsblkcnt64_t] [line 163, size 0, align 0, offset 0] [from long unsigned int]
!376 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_bfree", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !375} ; [ DW_TAG_member ] [f_bfree] [line 36, size 64, align 64, offset 192] [from __fsblkcnt64_t]
!377 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_bavail", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !375} ; [ DW_TAG_member ] [f_bavail] [line 37, size 64, align 64, offset 256] [from __fsblkcnt64_t]
!378 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_files", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !379} ; [ DW_TAG_member ] [f_files] [line 38, size 64, align 64, offset 320] [from __fsfilcnt64_t]
!379 = metadata !{i32 786454, metadata !369, null, metadata !"__fsfilcnt64_t", i32 167, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__fsfilcnt64_t] [line 167, size 0, align 0, offset 0] [from long unsigned int]
!380 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_ffree", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !379} ; [ DW_TAG_member ] [f_ffree] [line 39, size 64, align 64, offset 384] [from __fsfilcnt64_t]
!381 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !382} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!382 = metadata !{i32 786454, metadata !369, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !383} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!383 = metadata !{i32 786451, metadata !384, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !385, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!384 = metadata !{metadata !"/usr/include/bits/types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!385 = metadata !{metadata !386}
!386 = metadata !{i32 786445, metadata !384, metadata !383, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !387} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!387 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !388, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!388 = metadata !{metadata !389}
!389 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!390 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !372} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!391 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !372} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!392 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !372} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!393 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !394} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!394 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !372, metadata !395, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from __fsword_t]
!395 = metadata !{metadata !396}
!396 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!397 = metadata !{metadata !398, metadata !399}
!398 = metadata !{i32 786689, metadata !364, metadata !"path", metadata !253, i32 16777322, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 106]
!399 = metadata !{i32 786689, metadata !364, metadata !"buf", metadata !253, i32 33554538, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 106]
!400 = metadata !{i32 786478, metadata !250, metadata !253, metadata !"getdents64", metadata !"getdents64", metadata !"", i32 110, metadata !401, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent.12*, i32)* @getdents64, nu
!401 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!402 = metadata !{metadata !8, metadata !36, metadata !403, metadata !36}
!403 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent]
!404 = metadata !{i32 786451, metadata !405, null, metadata !"dirent", i32 22, i64 2240, i64 64, i32 0, i32 0, null, metadata !406, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent] [line 22, size 2240, align 64, offset 0] [def] [from ]
!405 = metadata !{metadata !"/usr/include/bits/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!406 = metadata !{metadata !407, metadata !409, metadata !410, metadata !412, metadata !414}
!407 = metadata !{i32 786445, metadata !405, metadata !404, metadata !"d_ino", i32 28, i64 64, i64 64, i64 0, i32 0, metadata !408} ; [ DW_TAG_member ] [d_ino] [line 28, size 64, align 64, offset 0] [from __ino64_t]
!408 = metadata !{i32 786454, metadata !405, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!409 = metadata !{i32 786445, metadata !405, metadata !404, metadata !"d_off", i32 29, i64 64, i64 64, i64 64, i32 0, metadata !293} ; [ DW_TAG_member ] [d_off] [line 29, size 64, align 64, offset 64] [from __off64_t]
!410 = metadata !{i32 786445, metadata !405, metadata !404, metadata !"d_reclen", i32 31, i64 16, i64 16, i64 128, i32 0, metadata !411} ; [ DW_TAG_member ] [d_reclen] [line 31, size 16, align 16, offset 128] [from unsigned short]
!411 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!412 = metadata !{i32 786445, metadata !405, metadata !404, metadata !"d_type", i32 32, i64 8, i64 8, i64 144, i32 0, metadata !413} ; [ DW_TAG_member ] [d_type] [line 32, size 8, align 8, offset 144] [from unsigned char]
!413 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!414 = metadata !{i32 786445, metadata !405, metadata !404, metadata !"d_name", i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !415} ; [ DW_TAG_member ] [d_name] [line 33, size 2048, align 8, offset 152] [from ]
!415 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !416, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!416 = metadata !{metadata !417}
!417 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!418 = metadata !{metadata !419, metadata !420, metadata !421}
!419 = metadata !{i32 786689, metadata !400, metadata !"fd", metadata !253, i32 16777326, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 110]
!420 = metadata !{i32 786689, metadata !400, metadata !"dirp", metadata !253, i32 33554542, metadata !403, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 110]
!421 = metadata !{i32 786689, metadata !400, metadata !"count", metadata !253, i32 50331758, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 110]
!422 = metadata !{i32 786449, metadata !423, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!423 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!424 = metadata !{metadata !425, metadata !431}
!425 = metadata !{i32 786436, metadata !184, null, metadata !"", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !426, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 26, size 32, align 32, offset 0] [def] [from ]
!426 = metadata !{metadata !427, metadata !428, metadata !429, metadata !430}
!427 = metadata !{i32 786472, metadata !"eOpen", i64 1} ; [ DW_TAG_enumerator ] [eOpen :: 1]
!428 = metadata !{i32 786472, metadata !"eCloseOnExec", i64 2} ; [ DW_TAG_enumerator ] [eCloseOnExec :: 2]
!429 = metadata !{i32 786472, metadata !"eReadable", i64 4} ; [ DW_TAG_enumerator ] [eReadable :: 4]
!430 = metadata !{i32 786472, metadata !"eWriteable", i64 8} ; [ DW_TAG_enumerator ] [eWriteable :: 8]
!431 = metadata !{i32 786436, metadata !432, null, metadata !"", i32 97, i64 32, i64 32, i32 0, i32 0, null, metadata !433, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 97, size 32, align 32, offset 0] [def] [from ]
!432 = metadata !{metadata !"/usr/include/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!433 = metadata !{metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442}
!434 = metadata !{i32 786472, metadata !"DT_UNKNOWN", i64 0} ; [ DW_TAG_enumerator ] [DT_UNKNOWN :: 0]
!435 = metadata !{i32 786472, metadata !"DT_FIFO", i64 1} ; [ DW_TAG_enumerator ] [DT_FIFO :: 1]
!436 = metadata !{i32 786472, metadata !"DT_CHR", i64 2} ; [ DW_TAG_enumerator ] [DT_CHR :: 2]
!437 = metadata !{i32 786472, metadata !"DT_DIR", i64 4} ; [ DW_TAG_enumerator ] [DT_DIR :: 4]
!438 = metadata !{i32 786472, metadata !"DT_BLK", i64 6} ; [ DW_TAG_enumerator ] [DT_BLK :: 6]
!439 = metadata !{i32 786472, metadata !"DT_REG", i64 8} ; [ DW_TAG_enumerator ] [DT_REG :: 8]
!440 = metadata !{i32 786472, metadata !"DT_LNK", i64 10} ; [ DW_TAG_enumerator ] [DT_LNK :: 10]
!441 = metadata !{i32 786472, metadata !"DT_SOCK", i64 12} ; [ DW_TAG_enumerator ] [DT_SOCK :: 12]
!442 = metadata !{i32 786472, metadata !"DT_WHT", i64 14} ; [ DW_TAG_enumerator ] [DT_WHT :: 14]
!443 = metadata !{metadata !444, metadata !482, metadata !489, metadata !510, metadata !524, metadata !540, metadata !551, metadata !558, metadata !572, metadata !587, metadata !596, metadata !605, metadata !636, metadata !643, metadata !651, metadata !6
!444 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"access", metadata !"access", metadata !"", i32 73, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @access, null, null, metadata !446, i32 73} 
!445 = metadata !{i32 786473, metadata !423}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!446 = metadata !{metadata !447, metadata !448, metadata !449, metadata !479}
!447 = metadata !{i32 786689, metadata !444, metadata !"pathname", metadata !445, i32 16777289, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 73]
!448 = metadata !{i32 786689, metadata !444, metadata !"mode", metadata !445, i32 33554505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 73]
!449 = metadata !{i32 786688, metadata !444, metadata !"dfile", metadata !445, i32 74, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 74]
!450 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !451} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!451 = metadata !{i32 786454, metadata !423, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !452} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!452 = metadata !{i32 786451, metadata !184, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !453, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!453 = metadata !{metadata !454, metadata !455, metadata !456}
!454 = metadata !{i32 786445, metadata !184, metadata !452, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!455 = metadata !{i32 786445, metadata !184, metadata !452, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!456 = metadata !{i32 786445, metadata !184, metadata !452, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !457} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!457 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !458} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!458 = metadata !{i32 786451, metadata !136, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !459, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!459 = metadata !{metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !476, metadata !477, metadata !478}
!460 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!461 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !142} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!462 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !144} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!463 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !146} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!464 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !148} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!465 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !150} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!466 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!467 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !139} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!468 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !154} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!469 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !156} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!470 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !158} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!471 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !472} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!472 = metadata !{i32 786451, metadata !161, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !473, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!473 = metadata !{metadata !474, metadata !475}
!474 = metadata !{i32 786445, metadata !161, metadata !472, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!475 = metadata !{i32 786445, metadata !161, metadata !472, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !166} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!476 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !472} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!477 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !472} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!478 = metadata !{i32 786445, metadata !136, metadata !458, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !170} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!479 = metadata !{i32 786688, metadata !480, metadata !"r", metadata !445, i32 81, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 81]
!480 = metadata !{i32 786443, metadata !423, metadata !481, i32 80, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!481 = metadata !{i32 786443, metadata !423, metadata !444, i32 76, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!482 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"umask", metadata !"umask", metadata !"", i32 88, metadata !483, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @umask, null, null, metadata !486, i32 88} ; [ DW_T
!483 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!484 = metadata !{metadata !146, metadata !485}
!485 = metadata !{i32 786454, metadata !423, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!486 = metadata !{metadata !487, metadata !488}
!487 = metadata !{i32 786689, metadata !482, metadata !"mask", metadata !445, i32 16777304, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 88]
!488 = metadata !{i32 786688, metadata !482, metadata !"r", metadata !445, i32 89, metadata !485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 89]
!489 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_open", metadata !"__fd_open", metadata !"", i32 128, metadata !490, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @__fd_open, null, null, metadata
!490 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !491, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!491 = metadata !{metadata !8, metadata !57, metadata !8, metadata !485}
!492 = metadata !{metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !506, metadata !507}
!493 = metadata !{i32 786689, metadata !489, metadata !"pathname", metadata !445, i32 16777344, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 128]
!494 = metadata !{i32 786689, metadata !489, metadata !"flags", metadata !445, i32 33554560, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 128]
!495 = metadata !{i32 786689, metadata !489, metadata !"mode", metadata !445, i32 50331776, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 128]
!496 = metadata !{i32 786688, metadata !489, metadata !"df", metadata !445, i32 129, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 129]
!497 = metadata !{i32 786688, metadata !489, metadata !"f", metadata !445, i32 130, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 130]
!498 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !499} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_file_t]
!499 = metadata !{i32 786454, metadata !423, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !500} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!500 = metadata !{i32 786451, metadata !184, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !501, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!501 = metadata !{metadata !502, metadata !503, metadata !504, metadata !505}
!502 = metadata !{i32 786445, metadata !184, metadata !500, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!503 = metadata !{i32 786445, metadata !184, metadata !500, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!504 = metadata !{i32 786445, metadata !184, metadata !500, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !223} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!505 = metadata !{i32 786445, metadata !184, metadata !500, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !450} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!506 = metadata !{i32 786688, metadata !489, metadata !"fd", metadata !445, i32 131, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 131]
!507 = metadata !{i32 786688, metadata !508, metadata !"os_fd", metadata !445, i32 181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 181]
!508 = metadata !{i32 786443, metadata !423, metadata !509, i32 180, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!509 = metadata !{i32 786443, metadata !423, metadata !489, i32 147, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!510 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_openat", metadata !"__fd_openat", metadata !"", i32 201, metadata !511, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, i32)* @__fd_openat, null, nul
!511 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!512 = metadata !{metadata !8, metadata !8, metadata !57, metadata !8, metadata !485}
!513 = metadata !{metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !523}
!514 = metadata !{i32 786689, metadata !510, metadata !"basefd", metadata !445, i32 16777417, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [basefd] [line 201]
!515 = metadata !{i32 786689, metadata !510, metadata !"pathname", metadata !445, i32 33554633, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 201]
!516 = metadata !{i32 786689, metadata !510, metadata !"flags", metadata !445, i32 50331849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 201]
!517 = metadata !{i32 786689, metadata !510, metadata !"mode", metadata !445, i32 67109065, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 201]
!518 = metadata !{i32 786688, metadata !510, metadata !"f", metadata !445, i32 202, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 202]
!519 = metadata !{i32 786688, metadata !510, metadata !"fd", metadata !445, i32 203, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 203]
!520 = metadata !{i32 786688, metadata !521, metadata !"bf", metadata !445, i32 205, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bf] [line 205]
!521 = metadata !{i32 786443, metadata !423, metadata !522, i32 204, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!522 = metadata !{i32 786443, metadata !423, metadata !510, i32 204, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!523 = metadata !{i32 786688, metadata !510, metadata !"os_fd", metadata !445, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 236]
!524 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"utimes", metadata !"utimes", metadata !"", i32 256, metadata !525, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.timeval*)* @utimes, null, null, metadata 
!525 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !526, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!526 = metadata !{metadata !8, metadata !57, metadata !527}
!527 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !528} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!528 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !529} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timeval]
!529 = metadata !{i32 786451, metadata !530, null, metadata !"timeval", i32 30, i64 128, i64 64, i32 0, i32 0, null, metadata !531, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timeval] [line 30, size 128, align 64, offset 0] [def] [from ]
!530 = metadata !{metadata !"/usr/include/bits/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!531 = metadata !{metadata !532, metadata !533}
!532 = metadata !{i32 786445, metadata !530, metadata !529, metadata !"tv_sec", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [tv_sec] [line 32, size 64, align 64, offset 0] [from __time_t]
!533 = metadata !{i32 786445, metadata !530, metadata !529, metadata !"tv_usec", i32 33, i64 64, i64 64, i64 64, i32 0, metadata !534} ; [ DW_TAG_member ] [tv_usec] [line 33, size 64, align 64, offset 64] [from __suseconds_t]
!534 = metadata !{i32 786454, metadata !530, null, metadata !"__suseconds_t", i32 141, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__suseconds_t] [line 141, size 0, align 0, offset 0] [from long int]
!535 = metadata !{metadata !536, metadata !537, metadata !538, metadata !539}
!536 = metadata !{i32 786689, metadata !524, metadata !"path", metadata !445, i32 16777472, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 256]
!537 = metadata !{i32 786689, metadata !524, metadata !"times", metadata !445, i32 33554688, metadata !527, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 256]
!538 = metadata !{i32 786688, metadata !524, metadata !"dfile", metadata !445, i32 257, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 257]
!539 = metadata !{i32 786688, metadata !524, metadata !"r", metadata !445, i32 269, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 269]
!540 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"futimesat", metadata !"futimesat", metadata !"", i32 277, metadata !541, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.timeval*)* @futimesat, null, n
!541 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!542 = metadata !{metadata !8, metadata !8, metadata !57, metadata !527}
!543 = metadata !{metadata !544, metadata !545, metadata !546, metadata !547, metadata !550}
!544 = metadata !{i32 786689, metadata !540, metadata !"fd", metadata !445, i32 16777493, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 277]
!545 = metadata !{i32 786689, metadata !540, metadata !"path", metadata !445, i32 33554709, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 277]
!546 = metadata !{i32 786689, metadata !540, metadata !"times", metadata !445, i32 50331925, metadata !527, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 277]
!547 = metadata !{i32 786688, metadata !548, metadata !"f", metadata !445, i32 279, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 279]
!548 = metadata !{i32 786443, metadata !423, metadata !549, i32 278, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!549 = metadata !{i32 786443, metadata !423, metadata !540, i32 278, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!550 = metadata !{i32 786688, metadata !540, metadata !"r", metadata !445, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 295]
!551 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"close", metadata !"close", metadata !"", i32 303, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @close, null, null, metadata !554, i32 303} ; [ DW
!552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{metadata !8, metadata !8}
!554 = metadata !{metadata !555, metadata !556, metadata !557}
!555 = metadata !{i32 786689, metadata !551, metadata !"fd", metadata !445, i32 16777519, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 303]
!556 = metadata !{i32 786688, metadata !551, metadata !"f", metadata !445, i32 305, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 305]
!557 = metadata !{i32 786688, metadata !551, metadata !"r", metadata !445, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 306]
!558 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"read", metadata !"read", metadata !"", i32 335, metadata !559, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @read, null, null, metadata !564, i32 335}
!559 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!560 = metadata !{metadata !561, metadata !8, metadata !275, metadata !563}
!561 = metadata !{i32 786454, metadata !423, null, metadata !"ssize_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !562} ; [ DW_TAG_typedef ] [ssize_t] [line 109, size 0, align 0, offset 0] [from __ssize_t]
!562 = metadata !{i32 786454, metadata !423, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!563 = metadata !{i32 786454, metadata !423, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!564 = metadata !{metadata !565, metadata !566, metadata !567, metadata !568, metadata !569}
!565 = metadata !{i32 786689, metadata !558, metadata !"fd", metadata !445, i32 16777551, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 335]
!566 = metadata !{i32 786689, metadata !558, metadata !"buf", metadata !445, i32 33554767, metadata !275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 335]
!567 = metadata !{i32 786689, metadata !558, metadata !"count", metadata !445, i32 50331983, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 335]
!568 = metadata !{i32 786688, metadata !558, metadata !"f", metadata !445, i32 337, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 337]
!569 = metadata !{i32 786688, metadata !570, metadata !"r", metadata !445, i32 364, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 364]
!570 = metadata !{i32 786443, metadata !423, metadata !571, i32 362, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!571 = metadata !{i32 786443, metadata !423, metadata !558, i32 362, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!572 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"write", metadata !"write", metadata !"", i32 403, metadata !573, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @write, null, null, metadata !577, i32 4
!573 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !574, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!574 = metadata !{metadata !561, metadata !8, metadata !575, metadata !563}
!575 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !576} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!576 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!577 = metadata !{metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !585}
!578 = metadata !{i32 786689, metadata !572, metadata !"fd", metadata !445, i32 16777619, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 403]
!579 = metadata !{i32 786689, metadata !572, metadata !"buf", metadata !445, i32 33554835, metadata !575, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 403]
!580 = metadata !{i32 786689, metadata !572, metadata !"count", metadata !445, i32 50332051, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 403]
!581 = metadata !{i32 786688, metadata !572, metadata !"f", metadata !445, i32 405, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 405]
!582 = metadata !{i32 786688, metadata !583, metadata !"r", metadata !445, i32 423, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 423]
!583 = metadata !{i32 786443, metadata !423, metadata !584, i32 422, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!584 = metadata !{i32 786443, metadata !423, metadata !572, i32 422, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!585 = metadata !{i32 786688, metadata !586, metadata !"actual_count", metadata !445, i32 448, metadata !563, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [actual_count] [line 448]
!586 = metadata !{i32 786443, metadata !423, metadata !584, i32 446, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!587 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"", i32 475, metadata !588, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @__fd_lseek, null, null, metad
!588 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !589, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!589 = metadata !{metadata !223, metadata !8, metadata !223, metadata !8}
!590 = metadata !{metadata !591, metadata !592, metadata !593, metadata !594, metadata !595}
!591 = metadata !{i32 786689, metadata !587, metadata !"fd", metadata !445, i32 16777691, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 475]
!592 = metadata !{i32 786689, metadata !587, metadata !"offset", metadata !445, i32 33554907, metadata !223, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 475]
!593 = metadata !{i32 786689, metadata !587, metadata !"whence", metadata !445, i32 50332123, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 475]
!594 = metadata !{i32 786688, metadata !587, metadata !"new_off", metadata !445, i32 476, metadata !223, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_off] [line 476]
!595 = metadata !{i32 786688, metadata !587, metadata !"f", metadata !445, i32 477, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 477]
!596 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"", i32 532, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @__fd_stat, null, null
!597 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!598 = metadata !{metadata !8, metadata !57, metadata !457}
!599 = metadata !{metadata !600, metadata !601, metadata !602, metadata !603}
!600 = metadata !{i32 786689, metadata !596, metadata !"path", metadata !445, i32 16777748, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 532]
!601 = metadata !{i32 786689, metadata !596, metadata !"buf", metadata !445, i32 33554964, metadata !457, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 532]
!602 = metadata !{i32 786688, metadata !596, metadata !"dfile", metadata !445, i32 533, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 533]
!603 = metadata !{i32 786688, metadata !604, metadata !"r", metadata !445, i32 541, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 541]
!604 = metadata !{i32 786443, metadata !423, metadata !596, i32 539, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!605 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fstatat", metadata !"fstatat", metadata !"", i32 551, metadata !606, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*, i32)* @fstatat, null, null,
!606 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!607 = metadata !{metadata !8, metadata !8, metadata !57, metadata !608, metadata !8}
!608 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !609} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!609 = metadata !{i32 786451, metadata !136, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !610, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!610 = metadata !{metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625}
!611 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!612 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !307} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!613 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !144} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!614 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !146} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!615 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !148} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!616 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !150} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!617 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!618 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !139} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!619 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !154} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!620 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !156} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!621 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !317} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!622 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !472} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!623 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !472} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!624 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !472} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!625 = metadata !{i32 786445, metadata !136, metadata !609, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !170} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!626 = metadata !{metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !634, metadata !635}
!627 = metadata !{i32 786689, metadata !605, metadata !"fd", metadata !445, i32 16777767, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 551]
!628 = metadata !{i32 786689, metadata !605, metadata !"path", metadata !445, i32 33554983, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 551]
!629 = metadata !{i32 786689, metadata !605, metadata !"buf", metadata !445, i32 50332199, metadata !608, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 551]
!630 = metadata !{i32 786689, metadata !605, metadata !"flags", metadata !445, i32 67109415, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 551]
!631 = metadata !{i32 786688, metadata !632, metadata !"f", metadata !445, i32 553, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 553]
!632 = metadata !{i32 786443, metadata !423, metadata !633, i32 552, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!633 = metadata !{i32 786443, metadata !423, metadata !605, i32 552, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!634 = metadata !{i32 786688, metadata !605, metadata !"dfile", metadata !445, i32 565, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 565]
!635 = metadata !{i32 786688, metadata !605, metadata !"r", metadata !445, i32 572, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 572]
!636 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"", i32 587, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @__fd_lstat, null, n
!637 = metadata !{metadata !638, metadata !639, metadata !640, metadata !641}
!638 = metadata !{i32 786689, metadata !636, metadata !"path", metadata !445, i32 16777803, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 587]
!639 = metadata !{i32 786689, metadata !636, metadata !"buf", metadata !445, i32 33555019, metadata !457, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 587]
!640 = metadata !{i32 786688, metadata !636, metadata !"dfile", metadata !445, i32 588, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 588]
!641 = metadata !{i32 786688, metadata !642, metadata !"r", metadata !445, i32 596, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 596]
!642 = metadata !{i32 786443, metadata !423, metadata !636, i32 594, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!643 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"chdir", metadata !"chdir", metadata !"", i32 606, metadata !644, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chdir, null, null, metadata !646, i32 606} ; [ DW
!644 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !645, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!645 = metadata !{metadata !8, metadata !57}
!646 = metadata !{metadata !647, metadata !648, metadata !649}
!647 = metadata !{i32 786689, metadata !643, metadata !"path", metadata !445, i32 16777822, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 606]
!648 = metadata !{i32 786688, metadata !643, metadata !"dfile", metadata !445, i32 607, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 607]
!649 = metadata !{i32 786688, metadata !650, metadata !"r", metadata !445, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 617]
!650 = metadata !{i32 786443, metadata !423, metadata !643, i32 616, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!651 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fchdir", metadata !"fchdir", metadata !"", i32 624, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fchdir, null, null, metadata !652, i32 624} ; [
!652 = metadata !{metadata !653, metadata !654, metadata !655}
!653 = metadata !{i32 786689, metadata !651, metadata !"fd", metadata !445, i32 16777840, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 624]
!654 = metadata !{i32 786688, metadata !651, metadata !"f", metadata !445, i32 625, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 625]
!655 = metadata !{i32 786688, metadata !656, metadata !"r", metadata !445, i32 637, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 637]
!656 = metadata !{i32 786443, metadata !423, metadata !657, i32 636, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!657 = metadata !{i32 786443, metadata !423, metadata !651, i32 632, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!658 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"chmod", metadata !"chmod", metadata !"", i32 658, metadata !659, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @chmod, null, null, metadata !661, i32 658} ;
!659 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{metadata !8, metadata !57, metadata !485}
!661 = metadata !{metadata !662, metadata !663, metadata !664, metadata !665}
!662 = metadata !{i32 786689, metadata !658, metadata !"path", metadata !445, i32 16777874, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 658]
!663 = metadata !{i32 786689, metadata !658, metadata !"mode", metadata !445, i32 33555090, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 658]
!664 = metadata !{i32 786688, metadata !658, metadata !"dfile", metadata !445, i32 661, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 661]
!665 = metadata !{i32 786688, metadata !666, metadata !"r", metadata !445, i32 673, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 673]
!666 = metadata !{i32 786443, metadata !423, metadata !667, i32 672, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!667 = metadata !{i32 786443, metadata !423, metadata !658, i32 670, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!668 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fchmod", metadata !"fchmod", metadata !"", i32 680, metadata !669, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @fchmod, null, null, metadata !671, i32 680
!669 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !670, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!670 = metadata !{metadata !8, metadata !8, metadata !485}
!671 = metadata !{metadata !672, metadata !673, metadata !674, metadata !675}
!672 = metadata !{i32 786689, metadata !668, metadata !"fd", metadata !445, i32 16777896, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 680]
!673 = metadata !{i32 786689, metadata !668, metadata !"mode", metadata !445, i32 33555112, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 680]
!674 = metadata !{i32 786688, metadata !668, metadata !"f", metadata !445, i32 683, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 683]
!675 = metadata !{i32 786688, metadata !676, metadata !"r", metadata !445, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 700]
!676 = metadata !{i32 786443, metadata !423, metadata !677, i32 699, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!677 = metadata !{i32 786443, metadata !423, metadata !668, i32 697, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!678 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"chown", metadata !"chown", metadata !"", i32 713, metadata !679, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @chown, null, null, metadata !683, i32 7
!679 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !680, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!680 = metadata !{metadata !8, metadata !57, metadata !681, metadata !682}
!681 = metadata !{i32 786454, metadata !423, null, metadata !"uid_t", i32 80, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [uid_t] [line 80, size 0, align 0, offset 0] [from __uid_t]
!682 = metadata !{i32 786454, metadata !423, null, metadata !"gid_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [gid_t] [line 65, size 0, align 0, offset 0] [from __gid_t]
!683 = metadata !{metadata !684, metadata !685, metadata !686, metadata !687, metadata !688}
!684 = metadata !{i32 786689, metadata !678, metadata !"path", metadata !445, i32 16777929, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 713]
!685 = metadata !{i32 786689, metadata !678, metadata !"owner", metadata !445, i32 33555145, metadata !681, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 713]
!686 = metadata !{i32 786689, metadata !678, metadata !"group", metadata !445, i32 50332361, metadata !682, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 713]
!687 = metadata !{i32 786688, metadata !678, metadata !"df", metadata !445, i32 714, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 714]
!688 = metadata !{i32 786688, metadata !689, metadata !"r", metadata !445, i32 719, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 719]
!689 = metadata !{i32 786443, metadata !423, metadata !690, i32 718, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!690 = metadata !{i32 786443, metadata !423, metadata !678, i32 716, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!691 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fchown", metadata !"fchown", metadata !"", i32 726, metadata !692, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @fchown, null, null, metadata !694, i3
!692 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !693, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!693 = metadata !{metadata !8, metadata !8, metadata !681, metadata !682}
!694 = metadata !{metadata !695, metadata !696, metadata !697, metadata !698, metadata !699}
!695 = metadata !{i32 786689, metadata !691, metadata !"fd", metadata !445, i32 16777942, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 726]
!696 = metadata !{i32 786689, metadata !691, metadata !"owner", metadata !445, i32 33555158, metadata !681, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 726]
!697 = metadata !{i32 786689, metadata !691, metadata !"group", metadata !445, i32 50332374, metadata !682, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 726]
!698 = metadata !{i32 786688, metadata !691, metadata !"f", metadata !445, i32 727, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 727]
!699 = metadata !{i32 786688, metadata !700, metadata !"r", metadata !445, i32 737, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 737]
!700 = metadata !{i32 786443, metadata !423, metadata !701, i32 736, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!701 = metadata !{i32 786443, metadata !423, metadata !691, i32 734, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!702 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"lchown", metadata !"lchown", metadata !"", i32 744, metadata !679, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @lchown, null, null, metadata !703, i3
!703 = metadata !{metadata !704, metadata !705, metadata !706, metadata !707, metadata !708}
!704 = metadata !{i32 786689, metadata !702, metadata !"path", metadata !445, i32 16777960, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 744]
!705 = metadata !{i32 786689, metadata !702, metadata !"owner", metadata !445, i32 33555176, metadata !681, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 744]
!706 = metadata !{i32 786689, metadata !702, metadata !"group", metadata !445, i32 50332392, metadata !682, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 744]
!707 = metadata !{i32 786688, metadata !702, metadata !"df", metadata !445, i32 746, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 746]
!708 = metadata !{i32 786688, metadata !709, metadata !"r", metadata !445, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 751]
!709 = metadata !{i32 786443, metadata !423, metadata !710, i32 750, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!710 = metadata !{i32 786443, metadata !423, metadata !702, i32 748, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!711 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"", i32 758, metadata !712, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64.16*)* @__fd_fstat, null, n
!712 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !713, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!713 = metadata !{metadata !8, metadata !8, metadata !457}
!714 = metadata !{metadata !715, metadata !716, metadata !717, metadata !718}
!715 = metadata !{i32 786689, metadata !711, metadata !"fd", metadata !445, i32 16777974, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 758]
!716 = metadata !{i32 786689, metadata !711, metadata !"buf", metadata !445, i32 33555190, metadata !457, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 758]
!717 = metadata !{i32 786688, metadata !711, metadata !"f", metadata !445, i32 759, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 759]
!718 = metadata !{i32 786688, metadata !719, metadata !"r", metadata !445, i32 768, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 768]
!719 = metadata !{i32 786443, metadata !423, metadata !720, i32 766, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!720 = metadata !{i32 786443, metadata !423, metadata !711, i32 766, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!721 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"", i32 781, metadata !722, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @__fd_ftruncate, null, null
!722 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !723, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!723 = metadata !{metadata !8, metadata !8, metadata !223}
!724 = metadata !{metadata !725, metadata !726, metadata !727, metadata !728}
!725 = metadata !{i32 786689, metadata !721, metadata !"fd", metadata !445, i32 16777997, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 781]
!726 = metadata !{i32 786689, metadata !721, metadata !"length", metadata !445, i32 33555213, metadata !223, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 781]
!727 = metadata !{i32 786688, metadata !721, metadata !"f", metadata !445, i32 783, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 783]
!728 = metadata !{i32 786688, metadata !729, metadata !"r", metadata !445, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 804]
!729 = metadata !{i32 786443, metadata !423, metadata !730, i32 802, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!730 = metadata !{i32 786443, metadata !423, metadata !721, i32 798, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!731 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"", i32 814, metadata !732, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent64.13*, i32)* @__fd_g
!732 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !733, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!733 = metadata !{metadata !8, metadata !36, metadata !734, metadata !36}
!734 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !735} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent64]
!735 = metadata !{i32 786451, metadata !405, null, metadata !"dirent64", i32 37, i64 2240, i64 64, i32 0, i32 0, null, metadata !736, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent64] [line 37, size 2240, align 64, offset 0] [def] [from ]
!736 = metadata !{metadata !737, metadata !738, metadata !739, metadata !740, metadata !741}
!737 = metadata !{i32 786445, metadata !405, metadata !735, metadata !"d_ino", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [d_ino] [line 39, size 64, align 64, offset 0] [from __ino64_t]
!738 = metadata !{i32 786445, metadata !405, metadata !735, metadata !"d_off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !224} ; [ DW_TAG_member ] [d_off] [line 40, size 64, align 64, offset 64] [from __off64_t]
!739 = metadata !{i32 786445, metadata !405, metadata !735, metadata !"d_reclen", i32 41, i64 16, i64 16, i64 128, i32 0, metadata !411} ; [ DW_TAG_member ] [d_reclen] [line 41, size 16, align 16, offset 128] [from unsigned short]
!740 = metadata !{i32 786445, metadata !405, metadata !735, metadata !"d_type", i32 42, i64 8, i64 8, i64 144, i32 0, metadata !413} ; [ DW_TAG_member ] [d_type] [line 42, size 8, align 8, offset 144] [from unsigned char]
!741 = metadata !{i32 786445, metadata !405, metadata !735, metadata !"d_name", i32 43, i64 2048, i64 8, i64 152, i32 0, metadata !415} ; [ DW_TAG_member ] [d_name] [line 43, size 2048, align 8, offset 152] [from ]
!742 = metadata !{metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !752, metadata !753, metadata !754, metadata !757, metadata !759, metadata !760, metadata !761, metadata !764}
!743 = metadata !{i32 786689, metadata !731, metadata !"fd", metadata !445, i32 16778030, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 814]
!744 = metadata !{i32 786689, metadata !731, metadata !"dirp", metadata !445, i32 33555246, metadata !734, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 814]
!745 = metadata !{i32 786689, metadata !731, metadata !"count", metadata !445, i32 50332462, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 814]
!746 = metadata !{i32 786688, metadata !731, metadata !"f", metadata !445, i32 815, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 815]
!747 = metadata !{i32 786688, metadata !748, metadata !"i", metadata !445, i32 829, metadata !223, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 829]
!748 = metadata !{i32 786443, metadata !423, metadata !749, i32 827, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!749 = metadata !{i32 786443, metadata !423, metadata !750, i32 827, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!750 = metadata !{i32 786443, metadata !423, metadata !751, i32 826, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!751 = metadata !{i32 786443, metadata !423, metadata !731, i32 822, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!752 = metadata !{i32 786688, metadata !748, metadata !"pad", metadata !445, i32 829, metadata !223, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pad] [line 829]
!753 = metadata !{i32 786688, metadata !748, metadata !"bytes", metadata !445, i32 829, metadata !223, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 829]
!754 = metadata !{i32 786688, metadata !755, metadata !"df", metadata !445, i32 839, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 839]
!755 = metadata !{i32 786443, metadata !423, metadata !756, i32 838, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!756 = metadata !{i32 786443, metadata !423, metadata !748, i32 838, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!757 = metadata !{i32 786688, metadata !758, metadata !"os_pos", metadata !445, i32 862, metadata !223, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_pos] [line 862]
!758 = metadata !{i32 786443, metadata !423, metadata !749, i32 861, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!759 = metadata !{i32 786688, metadata !758, metadata !"res", metadata !445, i32 863, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 863]
!760 = metadata !{i32 786688, metadata !758, metadata !"s", metadata !445, i32 864, metadata !223, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 864]
!761 = metadata !{i32 786688, metadata !762, metadata !"pos", metadata !445, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 880]
!762 = metadata !{i32 786443, metadata !423, metadata !763, i32 879, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!763 = metadata !{i32 786443, metadata !423, metadata !758, i32 877, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!764 = metadata !{i32 786688, metadata !765, metadata !"dp", metadata !445, i32 886, metadata !734, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 886]
!765 = metadata !{i32 786443, metadata !423, metadata !762, i32 885, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!766 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"ioctl", metadata !"ioctl", metadata !"", i32 898, metadata !767, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64, ...)* @ioctl, null, null, metadata !769, i32 8
!767 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!768 = metadata !{metadata !8, metadata !8, metadata !140}
!769 = metadata !{metadata !770, metadata !771, metadata !772, metadata !773, metadata !785, metadata !786, metadata !789, metadata !808, metadata !818, metadata !820}
!770 = metadata !{i32 786689, metadata !766, metadata !"fd", metadata !445, i32 16778114, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 898]
!771 = metadata !{i32 786689, metadata !766, metadata !"request", metadata !445, i32 33555330, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [request] [line 898]
!772 = metadata !{i32 786688, metadata !766, metadata !"f", metadata !445, i32 902, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 902]
!773 = metadata !{i32 786688, metadata !766, metadata !"ap", metadata !445, i32 903, metadata !774, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 903]
!774 = metadata !{i32 786454, metadata !423, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !775} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!775 = metadata !{i32 786454, metadata !423, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !776} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!776 = metadata !{i32 786454, metadata !423, null, metadata !"__builtin_va_list", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !777} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 903, size 0, align 0, offset 0] [from ]
!777 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !778, metadata !277, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!778 = metadata !{i32 786454, metadata !423, null, metadata !"__va_list_tag", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !779} ; [ DW_TAG_typedef ] [__va_list_tag] [line 903, size 0, align 0, offset 0] [from __va_list_tag]
!779 = metadata !{i32 786451, metadata !423, null, metadata !"__va_list_tag", i32 903, i64 192, i64 64, i32 0, i32 0, null, metadata !780, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 903, size 192, align 64, offset 0] [def]
!780 = metadata !{metadata !781, metadata !782, metadata !783, metadata !784}
!781 = metadata !{i32 786445, metadata !423, metadata !779, metadata !"gp_offset", i32 903, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [gp_offset] [line 903, size 32, align 32, offset 0] [from unsigned int]
!782 = metadata !{i32 786445, metadata !423, metadata !779, metadata !"fp_offset", i32 903, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [fp_offset] [line 903, size 32, align 32, offset 32] [from unsigned int]
!783 = metadata !{i32 786445, metadata !423, metadata !779, metadata !"overflow_arg_area", i32 903, i64 64, i64 64, i64 64, i32 0, metadata !275} ; [ DW_TAG_member ] [overflow_arg_area] [line 903, size 64, align 64, offset 64] [from ]
!784 = metadata !{i32 786445, metadata !423, metadata !779, metadata !"reg_save_area", i32 903, i64 64, i64 64, i64 128, i32 0, metadata !275} ; [ DW_TAG_member ] [reg_save_area] [line 903, size 64, align 64, offset 128] [from ]
!785 = metadata !{i32 786688, metadata !766, metadata !"buf", metadata !445, i32 904, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 904]
!786 = metadata !{i32 786688, metadata !787, metadata !"stat", metadata !445, i32 920, metadata !608, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 920]
!787 = metadata !{i32 786443, metadata !423, metadata !788, i32 919, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!788 = metadata !{i32 786443, metadata !423, metadata !766, i32 919, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!789 = metadata !{i32 786688, metadata !790, metadata !"ts", metadata !445, i32 924, metadata !792, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 924]
!790 = metadata !{i32 786443, metadata !423, metadata !791, i32 923, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!791 = metadata !{i32 786443, metadata !423, metadata !787, i32 922, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!792 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !793} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!793 = metadata !{i32 786451, metadata !794, null, metadata !"termios", i32 28, i64 480, i64 32, i32 0, i32 0, null, metadata !795, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 28, size 480, align 32, offset 0] [def] [from ]
!794 = metadata !{metadata !"/usr/include/bits/termios.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!795 = metadata !{metadata !796, metadata !798, metadata !799, metadata !800, metadata !801, metadata !803, metadata !805, metadata !807}
!796 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_iflag", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !797} ; [ DW_TAG_member ] [c_iflag] [line 30, size 32, align 32, offset 0] [from tcflag_t]
!797 = metadata !{i32 786454, metadata !794, null, metadata !"tcflag_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [tcflag_t] [line 25, size 0, align 0, offset 0] [from unsigned int]
!798 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_oflag", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !797} ; [ DW_TAG_member ] [c_oflag] [line 31, size 32, align 32, offset 32] [from tcflag_t]
!799 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_cflag", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !797} ; [ DW_TAG_member ] [c_cflag] [line 32, size 32, align 32, offset 64] [from tcflag_t]
!800 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_lflag", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !797} ; [ DW_TAG_member ] [c_lflag] [line 33, size 32, align 32, offset 96] [from tcflag_t]
!801 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_line", i32 34, i64 8, i64 8, i64 128, i32 0, metadata !802} ; [ DW_TAG_member ] [c_line] [line 34, size 8, align 8, offset 128] [from cc_t]
!802 = metadata !{i32 786454, metadata !794, null, metadata !"cc_t", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !413} ; [ DW_TAG_typedef ] [cc_t] [line 23, size 0, align 0, offset 0] [from unsigned char]
!803 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_cc", i32 35, i64 256, i64 8, i64 136, i32 0, metadata !804} ; [ DW_TAG_member ] [c_cc] [line 35, size 256, align 8, offset 136] [from ]
!804 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !802, metadata !226, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!805 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_ispeed", i32 36, i64 32, i64 32, i64 416, i32 0, metadata !806} ; [ DW_TAG_member ] [c_ispeed] [line 36, size 32, align 32, offset 416] [from speed_t]
!806 = metadata !{i32 786454, metadata !794, null, metadata !"speed_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [speed_t] [line 24, size 0, align 0, offset 0] [from unsigned int]
!807 = metadata !{i32 786445, metadata !794, metadata !793, metadata !"c_ospeed", i32 37, i64 32, i64 32, i64 448, i32 0, metadata !806} ; [ DW_TAG_member ] [c_ospeed] [line 37, size 32, align 32, offset 448] [from speed_t]
!808 = metadata !{i32 786688, metadata !809, metadata !"ws", metadata !445, i32 993, metadata !810, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ws] [line 993]
!809 = metadata !{i32 786443, metadata !423, metadata !791, i32 992, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!810 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !811} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from winsize]
!811 = metadata !{i32 786451, metadata !812, null, metadata !"winsize", i32 27, i64 64, i64 16, i32 0, i32 0, null, metadata !813, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [winsize] [line 27, size 64, align 16, offset 0] [def] [from ]
!812 = metadata !{metadata !"/usr/include/bits/ioctl-types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!813 = metadata !{metadata !814, metadata !815, metadata !816, metadata !817}
!814 = metadata !{i32 786445, metadata !812, metadata !811, metadata !"ws_row", i32 29, i64 16, i64 16, i64 0, i32 0, metadata !411} ; [ DW_TAG_member ] [ws_row] [line 29, size 16, align 16, offset 0] [from unsigned short]
!815 = metadata !{i32 786445, metadata !812, metadata !811, metadata !"ws_col", i32 30, i64 16, i64 16, i64 16, i32 0, metadata !411} ; [ DW_TAG_member ] [ws_col] [line 30, size 16, align 16, offset 16] [from unsigned short]
!816 = metadata !{i32 786445, metadata !812, metadata !811, metadata !"ws_xpixel", i32 31, i64 16, i64 16, i64 32, i32 0, metadata !411} ; [ DW_TAG_member ] [ws_xpixel] [line 31, size 16, align 16, offset 32] [from unsigned short]
!817 = metadata !{i32 786445, metadata !812, metadata !811, metadata !"ws_ypixel", i32 32, i64 16, i64 16, i64 48, i32 0, metadata !411} ; [ DW_TAG_member ] [ws_ypixel] [line 32, size 16, align 16, offset 48] [from unsigned short]
!818 = metadata !{i32 786688, metadata !819, metadata !"res", metadata !445, i32 1016, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1016]
!819 = metadata !{i32 786443, metadata !423, metadata !791, i32 1015, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!820 = metadata !{i32 786688, metadata !821, metadata !"r", metadata !445, i32 1041, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1041]
!821 = metadata !{i32 786443, metadata !423, metadata !788, i32 1040, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!822 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fcntl", metadata !"fcntl", metadata !"", i32 1048, metadata !823, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @fcntl, null, null, metadata !825, i32 
!823 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!824 = metadata !{metadata !8, metadata !8, metadata !8}
!825 = metadata !{metadata !826, metadata !827, metadata !828, metadata !829, metadata !830, metadata !831, metadata !836}
!826 = metadata !{i32 786689, metadata !822, metadata !"fd", metadata !445, i32 16778264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1048]
!827 = metadata !{i32 786689, metadata !822, metadata !"cmd", metadata !445, i32 33555480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1048]
!828 = metadata !{i32 786688, metadata !822, metadata !"f", metadata !445, i32 1049, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1049]
!829 = metadata !{i32 786688, metadata !822, metadata !"ap", metadata !445, i32 1050, metadata !774, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1050]
!830 = metadata !{i32 786688, metadata !822, metadata !"arg", metadata !445, i32 1051, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1051]
!831 = metadata !{i32 786688, metadata !832, metadata !"flags", metadata !445, i32 1070, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 1070]
!832 = metadata !{i32 786443, metadata !423, metadata !833, i32 1069, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!833 = metadata !{i32 786443, metadata !423, metadata !834, i32 1068, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!834 = metadata !{i32 786443, metadata !423, metadata !835, i32 1067, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!835 = metadata !{i32 786443, metadata !423, metadata !822, i32 1067, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!836 = metadata !{i32 786688, metadata !837, metadata !"r", metadata !445, i32 1096, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1096]
!837 = metadata !{i32 786443, metadata !423, metadata !835, i32 1095, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!838 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"", i32 1103, metadata !839, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs.11*)* @__fd_statfs, nul
!839 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !840, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!840 = metadata !{metadata !8, metadata !57, metadata !841}
!841 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !842} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!842 = metadata !{i32 786451, metadata !369, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !843, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!843 = metadata !{metadata !844, metadata !845, metadata !846, metadata !848, metadata !849, metadata !850, metadata !852, metadata !853, metadata !858, metadata !859, metadata !860, metadata !861}
!844 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!845 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !372} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!846 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_blocks", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !847} ; [ DW_TAG_member ] [f_blocks] [line 29, size 64, align 64, offset 128] [from __fsblkcnt_t]
!847 = metadata !{i32 786454, metadata !369, null, metadata !"__fsblkcnt_t", i32 162, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__fsblkcnt_t] [line 162, size 0, align 0, offset 0] [from long unsigned int]
!848 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_bfree", i32 30, i64 64, i64 64, i64 192, i32 0, metadata !847} ; [ DW_TAG_member ] [f_bfree] [line 30, size 64, align 64, offset 192] [from __fsblkcnt_t]
!849 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_bavail", i32 31, i64 64, i64 64, i64 256, i32 0, metadata !847} ; [ DW_TAG_member ] [f_bavail] [line 31, size 64, align 64, offset 256] [from __fsblkcnt_t]
!850 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_files", i32 32, i64 64, i64 64, i64 320, i32 0, metadata !851} ; [ DW_TAG_member ] [f_files] [line 32, size 64, align 64, offset 320] [from __fsfilcnt_t]
!851 = metadata !{i32 786454, metadata !369, null, metadata !"__fsfilcnt_t", i32 166, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [__fsfilcnt_t] [line 166, size 0, align 0, offset 0] [from long unsigned int]
!852 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_ffree", i32 33, i64 64, i64 64, i64 384, i32 0, metadata !851} ; [ DW_TAG_member ] [f_ffree] [line 33, size 64, align 64, offset 384] [from __fsfilcnt_t]
!853 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !854} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!854 = metadata !{i32 786454, metadata !369, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !855} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!855 = metadata !{i32 786451, metadata !384, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !856, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!856 = metadata !{metadata !857}
!857 = metadata !{i32 786445, metadata !384, metadata !855, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !387} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!858 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !372} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!859 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !372} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!860 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !372} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!861 = metadata !{i32 786445, metadata !369, metadata !842, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !394} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!862 = metadata !{metadata !863, metadata !864, metadata !865, metadata !866}
!863 = metadata !{i32 786689, metadata !838, metadata !"path", metadata !445, i32 16778319, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1103]
!864 = metadata !{i32 786689, metadata !838, metadata !"buf", metadata !445, i32 33555535, metadata !841, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1103]
!865 = metadata !{i32 786688, metadata !838, metadata !"dfile", metadata !445, i32 1104, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1104]
!866 = metadata !{i32 786688, metadata !867, metadata !"r", metadata !445, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1113]
!867 = metadata !{i32 786443, metadata !423, metadata !838, i32 1112, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!868 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fstatfs", metadata !"fstatfs", metadata !"", i32 1120, metadata !869, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.statfs.11*)* @fstatfs, null, null, met
!869 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !870, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!870 = metadata !{metadata !8, metadata !8, metadata !841}
!871 = metadata !{metadata !872, metadata !873, metadata !874, metadata !875}
!872 = metadata !{i32 786689, metadata !868, metadata !"fd", metadata !445, i32 16778336, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1120]
!873 = metadata !{i32 786689, metadata !868, metadata !"buf", metadata !445, i32 33555552, metadata !841, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1120]
!874 = metadata !{i32 786688, metadata !868, metadata !"f", metadata !445, i32 1121, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1121]
!875 = metadata !{i32 786688, metadata !876, metadata !"r", metadata !445, i32 1133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1133]
!876 = metadata !{i32 786443, metadata !423, metadata !877, i32 1132, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!877 = metadata !{i32 786443, metadata !423, metadata !868, i32 1128, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!878 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"fsync", metadata !"fsync", metadata !"", i32 1140, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fsync, null, null, metadata !879, i32 1140} ; [ 
!879 = metadata !{metadata !880, metadata !881, metadata !882}
!880 = metadata !{i32 786689, metadata !878, metadata !"fd", metadata !445, i32 16778356, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1140]
!881 = metadata !{i32 786688, metadata !878, metadata !"f", metadata !445, i32 1141, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1141]
!882 = metadata !{i32 786688, metadata !883, metadata !"r", metadata !445, i32 1149, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1149]
!883 = metadata !{i32 786443, metadata !423, metadata !884, i32 1148, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!884 = metadata !{i32 786443, metadata !423, metadata !885, i32 1146, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!885 = metadata !{i32 786443, metadata !423, metadata !878, i32 1143, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!886 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"dup2", metadata !"dup2", metadata !"", i32 1156, metadata !823, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dup2, null, null, metadata !887, i32 1156} ; 
!887 = metadata !{metadata !888, metadata !889, metadata !890, metadata !891}
!888 = metadata !{i32 786689, metadata !886, metadata !"oldfd", metadata !445, i32 16778372, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1156]
!889 = metadata !{i32 786689, metadata !886, metadata !"newfd", metadata !445, i32 33555588, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newfd] [line 1156]
!890 = metadata !{i32 786688, metadata !886, metadata !"f", metadata !445, i32 1157, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1157]
!891 = metadata !{i32 786688, metadata !892, metadata !"f2", metadata !445, i32 1163, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 1163]
!892 = metadata !{i32 786443, metadata !423, metadata !893, i32 1162, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!893 = metadata !{i32 786443, metadata !423, metadata !886, i32 1159, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!894 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"dup", metadata !"dup", metadata !"", i32 1181, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dup, null, null, metadata !895, i32 1181} ; [ DW_TAG
!895 = metadata !{metadata !896, metadata !897, metadata !898}
!896 = metadata !{i32 786689, metadata !894, metadata !"oldfd", metadata !445, i32 16778397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1181]
!897 = metadata !{i32 786688, metadata !894, metadata !"f", metadata !445, i32 1182, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1182]
!898 = metadata !{i32 786688, metadata !899, metadata !"fd", metadata !445, i32 1187, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 1187]
!899 = metadata !{i32 786443, metadata !423, metadata !900, i32 1186, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!900 = metadata !{i32 786443, metadata !423, metadata !894, i32 1183, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!901 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"rmdir", metadata !"rmdir", metadata !"", i32 1200, metadata !644, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @rmdir, null, null, metadata !902, i32 1200} ; [ 
!902 = metadata !{metadata !903, metadata !904}
!903 = metadata !{i32 786689, metadata !901, metadata !"pathname", metadata !445, i32 16778416, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1200]
!904 = metadata !{i32 786688, metadata !901, metadata !"dfile", metadata !445, i32 1201, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1201]
!905 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"unlink", metadata !"unlink", metadata !"", i32 1218, metadata !644, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @unlink, null, null, metadata !906, i32 1218} ;
!906 = metadata !{metadata !907, metadata !908}
!907 = metadata !{i32 786689, metadata !905, metadata !"pathname", metadata !445, i32 16778434, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1218]
!908 = metadata !{i32 786688, metadata !905, metadata !"dfile", metadata !445, i32 1219, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1219]
!909 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"unlinkat", metadata !"unlinkat", metadata !"", i32 1239, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @unlinkat, null, null, metadata !
!910 = metadata !{metadata !911, metadata !912, metadata !913, metadata !914}
!911 = metadata !{i32 786689, metadata !909, metadata !"dirfd", metadata !445, i32 16778455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirfd] [line 1239]
!912 = metadata !{i32 786689, metadata !909, metadata !"pathname", metadata !445, i32 33555671, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1239]
!913 = metadata !{i32 786689, metadata !909, metadata !"flags", metadata !445, i32 50332887, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 1239]
!914 = metadata !{i32 786688, metadata !909, metadata !"dfile", metadata !445, i32 1242, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1242]
!915 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"readlink", metadata !"readlink", metadata !"", i32 1262, metadata !916, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i8*, i64)* @readlink, null, null, metadata !
!916 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !917, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!917 = metadata !{metadata !561, metadata !57, metadata !9, metadata !563}
!918 = metadata !{metadata !919, metadata !920, metadata !921, metadata !922, metadata !923}
!919 = metadata !{i32 786689, metadata !915, metadata !"path", metadata !445, i32 16778478, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1262]
!920 = metadata !{i32 786689, metadata !915, metadata !"buf", metadata !445, i32 33555694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1262]
!921 = metadata !{i32 786689, metadata !915, metadata !"bufsize", metadata !445, i32 50332910, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 1262]
!922 = metadata !{i32 786688, metadata !915, metadata !"dfile", metadata !445, i32 1263, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1263]
!923 = metadata !{i32 786688, metadata !924, metadata !"r", metadata !445, i32 1279, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1279]
!924 = metadata !{i32 786443, metadata !423, metadata !925, i32 1278, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!925 = metadata !{i32 786443, metadata !423, metadata !915, i32 1264, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!926 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"select", metadata !"select", metadata !"", i32 1294, metadata !927, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set
!927 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !928, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!928 = metadata !{metadata !8, metadata !8, metadata !929, metadata !929, metadata !929, metadata !939}
!929 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !930} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fd_set]
!930 = metadata !{i32 786454, metadata !423, null, metadata !"fd_set", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !931} ; [ DW_TAG_typedef ] [fd_set] [line 77, size 0, align 0, offset 0] [from ]
!931 = metadata !{i32 786451, metadata !932, null, metadata !"", i32 66, i64 1024, i64 64, i32 0, i32 0, null, metadata !933, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 66, size 1024, align 64, offset 0] [def] [from ]
!932 = metadata !{metadata !"/usr/include/sys/select.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!933 = metadata !{metadata !934}
!934 = metadata !{i32 786445, metadata !932, metadata !931, metadata !"fds_bits", i32 71, i64 1024, i64 64, i64 0, i32 0, metadata !935} ; [ DW_TAG_member ] [fds_bits] [line 71, size 1024, align 64, offset 0] [from ]
!935 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !936, metadata !937, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from __fd_mask]
!936 = metadata !{i32 786454, metadata !932, null, metadata !"__fd_mask", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__fd_mask] [line 56, size 0, align 0, offset 0] [from long int]
!937 = metadata !{metadata !938}
!938 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!939 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !529} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from timeval]
!940 = metadata !{metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !9
!941 = metadata !{i32 786689, metadata !926, metadata !"nfds", metadata !445, i32 16778510, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfds] [line 1294]
!942 = metadata !{i32 786689, metadata !926, metadata !"read", metadata !445, i32 33555726, metadata !929, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [read] [line 1294]
!943 = metadata !{i32 786689, metadata !926, metadata !"write", metadata !445, i32 50332942, metadata !929, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [write] [line 1294]
!944 = metadata !{i32 786689, metadata !926, metadata !"except", metadata !445, i32 67110159, metadata !929, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [except] [line 1295]
!945 = metadata !{i32 786689, metadata !926, metadata !"timeout", metadata !445, i32 83887375, metadata !939, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timeout] [line 1295]
!946 = metadata !{i32 786688, metadata !926, metadata !"in_read", metadata !445, i32 1296, metadata !930, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_read] [line 1296]
!947 = metadata !{i32 786688, metadata !926, metadata !"in_write", metadata !445, i32 1296, metadata !930, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_write] [line 1296]
!948 = metadata !{i32 786688, metadata !926, metadata !"in_except", metadata !445, i32 1296, metadata !930, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_except] [line 1296]
!949 = metadata !{i32 786688, metadata !926, metadata !"os_read", metadata !445, i32 1296, metadata !930, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_read] [line 1296]
!950 = metadata !{i32 786688, metadata !926, metadata !"os_write", metadata !445, i32 1296, metadata !930, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_write] [line 1296]
!951 = metadata !{i32 786688, metadata !926, metadata !"os_except", metadata !445, i32 1296, metadata !930, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_except] [line 1296]
!952 = metadata !{i32 786688, metadata !926, metadata !"i", metadata !445, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1297]
!953 = metadata !{i32 786688, metadata !926, metadata !"count", metadata !445, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 1297]
!954 = metadata !{i32 786688, metadata !926, metadata !"os_nfds", metadata !445, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_nfds] [line 1297]
!955 = metadata !{i32 786688, metadata !956, metadata !"f", metadata !445, i32 1327, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1327]
!956 = metadata !{i32 786443, metadata !423, metadata !957, i32 1326, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!957 = metadata !{i32 786443, metadata !423, metadata !958, i32 1326, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!958 = metadata !{i32 786443, metadata !423, metadata !959, i32 1325, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!959 = metadata !{i32 786443, metadata !423, metadata !926, i32 1325, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!960 = metadata !{i32 786688, metadata !961, metadata !"tv", metadata !445, i32 1349, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 1349]
!961 = metadata !{i32 786443, metadata !423, metadata !962, i32 1346, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!962 = metadata !{i32 786443, metadata !423, metadata !926, i32 1346, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!963 = metadata !{i32 786688, metadata !961, metadata !"r", metadata !445, i32 1350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1350]
!964 = metadata !{i32 786688, metadata !965, metadata !"f", metadata !445, i32 1365, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1365]
!965 = metadata !{i32 786443, metadata !423, metadata !966, i32 1364, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!966 = metadata !{i32 786443, metadata !423, metadata !967, i32 1364, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!967 = metadata !{i32 786443, metadata !423, metadata !968, i32 1360, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!968 = metadata !{i32 786443, metadata !423, metadata !961, i32 1353, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!969 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"getcwd", metadata !"getcwd", metadata !"", i32 1380, metadata !970, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64)* @getcwd, null, null, metadata !972, i32 13
!970 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !971, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!971 = metadata !{metadata !9, metadata !9, metadata !563}
!972 = metadata !{metadata !973, metadata !974, metadata !975}
!973 = metadata !{i32 786689, metadata !969, metadata !"buf", metadata !445, i32 16778596, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1380]
!974 = metadata !{i32 786689, metadata !969, metadata !"size", metadata !445, i32 33555812, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1380]
!975 = metadata !{i32 786688, metadata !969, metadata !"r", metadata !445, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1382]
!976 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"chroot", metadata !"chroot", metadata !"", i32 1457, metadata !644, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chroot, null, null, metadata !977, i32 1457} ;
!977 = metadata !{metadata !978}
!978 = metadata !{i32 786689, metadata !976, metadata !"path", metadata !445, i32 16778673, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1457]
!979 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", i32 1428, metadata !980, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !982, 
!980 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !981, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!981 = metadata !{metadata !57, metadata !57}
!982 = metadata !{metadata !983, metadata !984, metadata !985, metadata !986, metadata !989}
!983 = metadata !{i32 786689, metadata !979, metadata !"s", metadata !445, i32 16778644, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1428]
!984 = metadata !{i32 786688, metadata !979, metadata !"sc", metadata !445, i32 1429, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1429]
!985 = metadata !{i32 786688, metadata !979, metadata !"i", metadata !445, i32 1430, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1430]
!986 = metadata !{i32 786688, metadata !987, metadata !"c", metadata !445, i32 1433, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1433]
!987 = metadata !{i32 786443, metadata !423, metadata !988, i32 1432, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!988 = metadata !{i32 786443, metadata !423, metadata !979, i32 1432, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!989 = metadata !{i32 786688, metadata !990, metadata !"cc", metadata !445, i32 1442, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 1442]
!990 = metadata !{i32 786443, metadata !423, metadata !991, i32 1441, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!991 = metadata !{i32 786443, metadata !423, metadata !987, i32 1434, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!992 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", i32 1422, metadata !993, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !995, i32 
!993 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !994, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!994 = metadata !{metadata !563, metadata !563}
!995 = metadata !{metadata !996, metadata !997}
!996 = metadata !{i32 786689, metadata !992, metadata !"s", metadata !445, i32 16778638, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1422]
!997 = metadata !{i32 786688, metadata !992, metadata !"sc", metadata !445, i32 1423, metadata !563, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1423]
!998 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", i32 1415, metadata !999, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1001, i32 1
!999 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1000, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1000 = metadata !{metadata !275, metadata !575}
!1001 = metadata !{metadata !1002, metadata !1003}
!1002 = metadata !{i32 786689, metadata !998, metadata !"p", metadata !445, i32 16778631, metadata !575, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1415]
!1003 = metadata !{i32 786688, metadata !998, metadata !"pc", metadata !445, i32 1417, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 1417]
!1004 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__df_chown", metadata !"__df_chown", metadata !"", i32 707, metadata !1005, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1007, i32 707} ; [ DW_
!1005 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1006, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1006 = metadata !{metadata !8, metadata !450, metadata !681, metadata !682}
!1007 = metadata !{metadata !1008, metadata !1009, metadata !1010}
!1008 = metadata !{i32 786689, metadata !1004, metadata !"df", metadata !445, i32 16777923, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 707]
!1009 = metadata !{i32 786689, metadata !1004, metadata !"owner", metadata !445, i32 33555139, metadata !681, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 707]
!1010 = metadata !{i32 786689, metadata !1004, metadata !"group", metadata !445, i32 50332355, metadata !682, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 707]
!1011 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", i32 645, metadata !1012, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1014, i32 645} ; [ DW_
!1012 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1013, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1013 = metadata !{metadata !8, metadata !450, metadata !485}
!1014 = metadata !{metadata !1015, metadata !1016}
!1015 = metadata !{i32 786689, metadata !1011, metadata !"df", metadata !445, i32 16777861, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 645]
!1016 = metadata !{i32 786689, metadata !1011, metadata !"mode", metadata !445, i32 33555077, metadata !485, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 645]
!1017 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__get_file", metadata !"__get_file", metadata !"", i32 63, metadata !1018, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1020, i32 63} ; [ DW_TA
!1018 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1019, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1019 = metadata !{metadata !498, metadata !8}
!1020 = metadata !{metadata !1021, metadata !1022}
!1021 = metadata !{i32 786689, metadata !1017, metadata !"fd", metadata !445, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 63]
!1022 = metadata !{i32 786688, metadata !1023, metadata !"f", metadata !445, i32 65, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 65]
!1023 = metadata !{i32 786443, metadata !423, metadata !1024, i32 64, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1024 = metadata !{i32 786443, metadata !423, metadata !1017, i32 64, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1025 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"has_permission", metadata !"has_permission", metadata !"", i32 97, metadata !712, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1026, i32 97} ; 
!1026 = metadata !{metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031}
!1027 = metadata !{i32 786689, metadata !1025, metadata !"flags", metadata !445, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 97]
!1028 = metadata !{i32 786689, metadata !1025, metadata !"s", metadata !445, i32 33554529, metadata !457, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 97]
!1029 = metadata !{i32 786688, metadata !1025, metadata !"write_access", metadata !445, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_access] [line 98]
!1030 = metadata !{i32 786688, metadata !1025, metadata !"read_access", metadata !445, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [read_access] [line 98]
!1031 = metadata !{i32 786688, metadata !1025, metadata !"mode", metadata !445, i32 99, metadata !485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 99]
!1032 = metadata !{i32 786478, metadata !423, metadata !445, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", i32 39, metadata !1033, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1035, i32 39} ;
!1033 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1034, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1034 = metadata !{metadata !450, metadata !57}
!1035 = metadata !{metadata !1036, metadata !1037, metadata !1038, metadata !1039}
!1036 = metadata !{i32 786689, metadata !1032, metadata !"pathname", metadata !445, i32 16777255, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 39]
!1037 = metadata !{i32 786688, metadata !1032, metadata !"c", metadata !445, i32 40, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 40]
!1038 = metadata !{i32 786688, metadata !1032, metadata !"i", metadata !445, i32 41, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!1039 = metadata !{i32 786688, metadata !1040, metadata !"df", metadata !445, i32 48, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 48]
!1040 = metadata !{i32 786443, metadata !423, metadata !1041, i32 47, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1041 = metadata !{i32 786443, metadata !423, metadata !1042, i32 47, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1042 = metadata !{i32 786443, metadata !423, metadata !1043, i32 46, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1043 = metadata !{i32 786443, metadata !423, metadata !1032, i32 46, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1044 = metadata !{metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051}
!1045 = metadata !{i32 786484, i32 0, metadata !551, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 304, metadata !8, i32 1, i32 1, i32* @close.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 304] [local] [def]
!1046 = metadata !{i32 786484, i32 0, metadata !558, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 336, metadata !8, i32 1, i32 1, i32* @read.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 336] [local] [def]
!1047 = metadata !{i32 786484, i32 0, metadata !572, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 404, metadata !8, i32 1, i32 1, i32* @write.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 404] [local] [def]
!1048 = metadata !{i32 786484, i32 0, metadata !658, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 659, metadata !8, i32 1, i32 1, i32* @chmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 659] [local] [def]
!1049 = metadata !{i32 786484, i32 0, metadata !668, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 681, metadata !8, i32 1, i32 1, i32* @fchmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 681] [local] [def]
!1050 = metadata !{i32 786484, i32 0, metadata !721, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 782, metadata !8, i32 1, i32 1, i32* @__fd_ftruncate.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 782] [local] [def]
!1051 = metadata !{i32 786484, i32 0, metadata !969, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !445, i32 1381, metadata !8, i32 1, i32 1, i32* @getcwd.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 1381] [local] [def]
!1052 = metadata !{i32 786449, metadata !1053, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1053 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1054 = metadata !{metadata !1055, metadata !1062, metadata !1068}
!1055 = metadata !{i32 786478, metadata !1053, metadata !1056, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !1057, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1056 = metadata !{i32 786473, metadata !1053}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!1057 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1058, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1058 = metadata !{metadata !1059, metadata !1059}
!1059 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!1060 = metadata !{metadata !1061}
!1061 = metadata !{i32 786689, metadata !1055, metadata !"d", metadata !1056, i32 16777227, metadata !1059, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1062 = metadata !{i32 786478, metadata !1053, metadata !1056, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !1063, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1063 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1064, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1064 = metadata !{metadata !1065, metadata !1065}
!1065 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!1066 = metadata !{metadata !1067}
!1067 = metadata !{i32 786689, metadata !1062, metadata !"f", metadata !1056, i32 16777231, metadata !1065, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1068 = metadata !{i32 786478, metadata !1053, metadata !1056, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !1069, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1069 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1070 = metadata !{metadata !1071, metadata !1071}
!1071 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!1072 = metadata !{metadata !1073}
!1073 = metadata !{i32 786689, metadata !1068, metadata !"f", metadata !1056, i32 16777236, metadata !1071, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1074 = metadata !{i32 786449, metadata !1075, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1075 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fenv.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1076 = metadata !{metadata !1077, metadata !1086}
!1077 = metadata !{i32 786436, metadata !1078, null, metadata !"KleeRoundingMode", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !1079, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KleeRoundingMode] [line 185, size 32, align 32, offset
!1078 = metadata !{metadata !"/home/user/klee/include/klee/klee.h", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1079 = metadata !{metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085}
!1080 = metadata !{i32 786472, metadata !"KLEE_FP_RNE", i64 0} ; [ DW_TAG_enumerator ] [KLEE_FP_RNE :: 0]
!1081 = metadata !{i32 786472, metadata !"KLEE_FP_RNA", i64 1} ; [ DW_TAG_enumerator ] [KLEE_FP_RNA :: 1]
!1082 = metadata !{i32 786472, metadata !"KLEE_FP_RU", i64 2} ; [ DW_TAG_enumerator ] [KLEE_FP_RU :: 2]
!1083 = metadata !{i32 786472, metadata !"KLEE_FP_RD", i64 3} ; [ DW_TAG_enumerator ] [KLEE_FP_RD :: 3]
!1084 = metadata !{i32 786472, metadata !"KLEE_FP_RZ", i64 4} ; [ DW_TAG_enumerator ] [KLEE_FP_RZ :: 4]
!1085 = metadata !{i32 786472, metadata !"KLEE_FP_UNKNOWN", i64 5} ; [ DW_TAG_enumerator ] [KLEE_FP_UNKNOWN :: 5]
!1086 = metadata !{i32 786436, metadata !1075, null, metadata !"", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !1087, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 15, size 32, align 32, offset 0] [def] [from ]
!1087 = metadata !{metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092}
!1088 = metadata !{i32 786472, metadata !"FE_TONEAREST", i64 0} ; [ DW_TAG_enumerator ] [FE_TONEAREST :: 0]
!1089 = metadata !{i32 786472, metadata !"FE_DOWNWARD", i64 1024} ; [ DW_TAG_enumerator ] [FE_DOWNWARD :: 1024]
!1090 = metadata !{i32 786472, metadata !"FE_UPWARD", i64 2048} ; [ DW_TAG_enumerator ] [FE_UPWARD :: 2048]
!1091 = metadata !{i32 786472, metadata !"FE_TOWARDZERO", i64 3072} ; [ DW_TAG_enumerator ] [FE_TOWARDZERO :: 3072]
!1092 = metadata !{i32 786472, metadata !"FE_TONEAREST_TIES_TO_AWAY", i64 3073} ; [ DW_TAG_enumerator ] [FE_TONEAREST_TIES_TO_AWAY :: 3073]
!1093 = metadata !{metadata !1094, metadata !1100}
!1094 = metadata !{i32 786478, metadata !1075, metadata !1095, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !1096, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_intern
!1095 = metadata !{i32 786473, metadata !1075}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!1096 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1097, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1097 = metadata !{metadata !8}
!1098 = metadata !{metadata !1099}
!1099 = metadata !{i32 786688, metadata !1094, metadata !"rm", metadata !1095, i32 34, metadata !1077, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!1100 = metadata !{i32 786478, metadata !1075, metadata !1095, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_inte
!1101 = metadata !{metadata !1102}
!1102 = metadata !{i32 786689, metadata !1100, metadata !"rm", metadata !1095, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!1103 = metadata !{i32 786449, metadata !1104, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1104 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1105 = metadata !{metadata !1106}
!1106 = metadata !{i32 786436, metadata !1104, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !1107, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!1107 = metadata !{metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112}
!1108 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!1109 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!1110 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!1111 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!1112 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!1113 = metadata !{metadata !1114, metadata !1120, metadata !1125, metadata !1130, metadata !1133, metadata !1136, metadata !1139, metadata !1142, metadata !1145}
!1114 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !1116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_
!1115 = metadata !{i32 786473, metadata !1104}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!1116 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1117, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1117 = metadata !{metadata !8, metadata !1065}
!1118 = metadata !{metadata !1119}
!1119 = metadata !{i32 786689, metadata !1114, metadata !"f", metadata !1115, i32 16777232, metadata !1065, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!1120 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !1121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_i
!1121 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1122, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1122 = metadata !{metadata !8, metadata !1059}
!1123 = metadata !{metadata !1124}
!1124 = metadata !{i32 786689, metadata !1120, metadata !"d", metadata !1115, i32 16777237, metadata !1059, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!1125 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !1126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_intern
!1126 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1127, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1127 = metadata !{metadata !8, metadata !1071}
!1128 = metadata !{metadata !1129}
!1129 = metadata !{i32 786689, metadata !1125, metadata !"d", metadata !1115, i32 16777242, metadata !1071, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!1130 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !1116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee
!1131 = metadata !{metadata !1132}
!1132 = metadata !{i32 786689, metadata !1130, metadata !"f", metadata !1115, i32 16777283, metadata !1065, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!1133 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !1121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_
!1134 = metadata !{metadata !1135}
!1135 = metadata !{i32 786689, metadata !1133, metadata !"f", metadata !1115, i32 16777298, metadata !1059, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!1136 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !1126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @k
!1137 = metadata !{metadata !1138}
!1138 = metadata !{i32 786689, metadata !1136, metadata !"ld", metadata !1115, i32 16777314, metadata !1071, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!1139 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !1116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_intern
!1140 = metadata !{metadata !1141}
!1141 = metadata !{i32 786689, metadata !1139, metadata !"f", metadata !1115, i32 16777330, metadata !1065, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!1142 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !1121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_interna
!1143 = metadata !{metadata !1144}
!1144 = metadata !{i32 786689, metadata !1142, metadata !"f", metadata !1115, i32 16777335, metadata !1059, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!1145 = metadata !{i32 786478, metadata !1104, metadata !1115, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !1126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_int
!1146 = metadata !{metadata !1147}
!1147 = metadata !{i32 786689, metadata !1145, metadata !"f", metadata !1115, i32 16777340, metadata !1071, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!1148 = metadata !{i32 786449, metadata !1149, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1149 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1150 = metadata !{metadata !1151}
!1151 = metadata !{i32 786478, metadata !1149, metadata !1152, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !1153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_che
!1152 = metadata !{i32 786473, metadata !1149}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!1153 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1154, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1154 = metadata !{null, metadata !1155}
!1155 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!1156 = metadata !{metadata !1157}
!1157 = metadata !{i32 786689, metadata !1151, metadata !"z", metadata !1152, i32 16777228, metadata !1155, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!1158 = metadata !{i32 786449, metadata !1159, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1159 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1160 = metadata !{metadata !1161}
!1161 = metadata !{i32 786478, metadata !1159, metadata !1162, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !644, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !1163, i32
!1162 = metadata !{i32 786473, metadata !1159}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!1163 = metadata !{metadata !1164, metadata !1165}
!1164 = metadata !{i32 786689, metadata !1161, metadata !"name", metadata !1162, i32 16777229, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1165 = metadata !{i32 786688, metadata !1161, metadata !"x", metadata !1162, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1166 = metadata !{i32 786449, metadata !1167, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1167 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1168 = metadata !{metadata !1169}
!1169 = metadata !{i32 786478, metadata !1167, metadata !1170, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !1171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overs
!1170 = metadata !{i32 786473, metadata !1167}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!1171 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1172, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1172 = metadata !{null, metadata !1173, metadata !1173}
!1173 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!1174 = metadata !{metadata !1175, metadata !1176}
!1175 = metadata !{i32 786689, metadata !1169, metadata !"bitWidth", metadata !1170, i32 16777236, metadata !1173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!1176 = metadata !{i32 786689, metadata !1169, metadata !"shift", metadata !1170, i32 33554452, metadata !1173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!1177 = metadata !{i32 786449, metadata !1178, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1178 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1179 = metadata !{metadata !1180}
!1180 = metadata !{i32 786478, metadata !1178, metadata !1181, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !1182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, me
!1181 = metadata !{i32 786473, metadata !1178}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!1182 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1183, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1183 = metadata !{metadata !8, metadata !8, metadata !8, metadata !57}
!1184 = metadata !{metadata !1185, metadata !1186, metadata !1187, metadata !1188}
!1185 = metadata !{i32 786689, metadata !1180, metadata !"start", metadata !1181, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!1186 = metadata !{i32 786689, metadata !1180, metadata !"end", metadata !1181, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!1187 = metadata !{i32 786689, metadata !1180, metadata !"name", metadata !1181, i32 50331661, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1188 = metadata !{i32 786688, metadata !1180, metadata !"x", metadata !1181, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1189 = metadata !{i32 786449, metadata !1190, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1190 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1191 = metadata !{metadata !1077}
!1192 = metadata !{metadata !1193}
!1193 = metadata !{i32 786478, metadata !1190, metadata !1194, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !1195, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_ro
!1194 = metadata !{i32 786473, metadata !1190}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!1195 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1196, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1196 = metadata !{null, metadata !1077}
!1197 = metadata !{metadata !1198}
!1198 = metadata !{i32 786689, metadata !1193, metadata !"rm", metadata !1194, i32 16777232, metadata !1077, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!1199 = metadata !{i32 786449, metadata !1200, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1200 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1201 = metadata !{metadata !1202}
!1202 = metadata !{i32 786478, metadata !1200, metadata !1203, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !1204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !1207
!1203 = metadata !{i32 786473, metadata !1200}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!1204 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1205, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1205 = metadata !{metadata !275, metadata !275, metadata !575, metadata !1206}
!1206 = metadata !{i32 786454, metadata !1200, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1207 = metadata !{metadata !1208, metadata !1209, metadata !1210, metadata !1211, metadata !1212}
!1208 = metadata !{i32 786689, metadata !1202, metadata !"destaddr", metadata !1203, i32 16777228, metadata !275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!1209 = metadata !{i32 786689, metadata !1202, metadata !"srcaddr", metadata !1203, i32 33554444, metadata !575, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!1210 = metadata !{i32 786689, metadata !1202, metadata !"len", metadata !1203, i32 50331660, metadata !1206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!1211 = metadata !{i32 786688, metadata !1202, metadata !"dest", metadata !1203, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!1212 = metadata !{i32 786688, metadata !1202, metadata !"src", metadata !1203, i32 14, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!1213 = metadata !{i32 786449, metadata !1214, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1214 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1215 = metadata !{metadata !1216}
!1216 = metadata !{i32 786478, metadata !1214, metadata !1217, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !1218, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !1
!1217 = metadata !{i32 786473, metadata !1214}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!1218 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1219, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1219 = metadata !{metadata !275, metadata !275, metadata !575, metadata !1220}
!1220 = metadata !{i32 786454, metadata !1214, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1221 = metadata !{metadata !1222, metadata !1223, metadata !1224, metadata !1225, metadata !1226}
!1222 = metadata !{i32 786689, metadata !1216, metadata !"dst", metadata !1217, i32 16777228, metadata !275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!1223 = metadata !{i32 786689, metadata !1216, metadata !"src", metadata !1217, i32 33554444, metadata !575, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!1224 = metadata !{i32 786689, metadata !1216, metadata !"count", metadata !1217, i32 50331660, metadata !1220, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!1225 = metadata !{i32 786688, metadata !1216, metadata !"a", metadata !1217, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!1226 = metadata !{i32 786688, metadata !1216, metadata !"b", metadata !1217, i32 14, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!1227 = metadata !{i32 786449, metadata !1228, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1228 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1229 = metadata !{metadata !1230}
!1230 = metadata !{i32 786478, metadata !1228, metadata !1231, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !1232, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !1
!1231 = metadata !{i32 786473, metadata !1228}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!1232 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1233, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1233 = metadata !{metadata !275, metadata !275, metadata !575, metadata !1234}
!1234 = metadata !{i32 786454, metadata !1228, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1235 = metadata !{metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1240}
!1236 = metadata !{i32 786689, metadata !1230, metadata !"destaddr", metadata !1231, i32 16777227, metadata !275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!1237 = metadata !{i32 786689, metadata !1230, metadata !"srcaddr", metadata !1231, i32 33554443, metadata !575, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!1238 = metadata !{i32 786689, metadata !1230, metadata !"len", metadata !1231, i32 50331659, metadata !1234, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!1239 = metadata !{i32 786688, metadata !1230, metadata !"dest", metadata !1231, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!1240 = metadata !{i32 786688, metadata !1230, metadata !"src", metadata !1231, i32 13, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!1241 = metadata !{i32 786449, metadata !1242, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1242 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1243 = metadata !{metadata !1244}
!1244 = metadata !{i32 786478, metadata !1242, metadata !1245, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !1246, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !1249
!1245 = metadata !{i32 786473, metadata !1242}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!1246 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1247, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1247 = metadata !{metadata !275, metadata !275, metadata !8, metadata !1248}
!1248 = metadata !{i32 786454, metadata !1242, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1249 = metadata !{metadata !1250, metadata !1251, metadata !1252, metadata !1253}
!1250 = metadata !{i32 786689, metadata !1244, metadata !"dst", metadata !1245, i32 16777227, metadata !275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!1251 = metadata !{i32 786689, metadata !1244, metadata !"s", metadata !1245, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!1252 = metadata !{i32 786689, metadata !1244, metadata !"count", metadata !1245, i32 50331659, metadata !1248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!1253 = metadata !{i32 786688, metadata !1244, metadata !"a", metadata !1245, i32 12, metadata !1254, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!1254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1255 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!1256 = metadata !{i32 786449, metadata !1257, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1257 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1258 = metadata !{metadata !1259, metadata !1263, metadata !1266}
!1259 = metadata !{i32 786478, metadata !1257, metadata !1260, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !1057, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1260 = metadata !{i32 786473, metadata !1257}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!1261 = metadata !{metadata !1262}
!1262 = metadata !{i32 786689, metadata !1259, metadata !"d", metadata !1260, i32 16777227, metadata !1059, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1263 = metadata !{i32 786478, metadata !1257, metadata !1260, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !1063, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1264 = metadata !{metadata !1265}
!1265 = metadata !{i32 786689, metadata !1263, metadata !"f", metadata !1260, i32 16777231, metadata !1065, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1266 = metadata !{i32 786478, metadata !1257, metadata !1260, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !1069, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1267 = metadata !{metadata !1268}
!1268 = metadata !{i32 786689, metadata !1266, metadata !"f", metadata !1260, i32 16777236, metadata !1071, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1269 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!1270 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1271 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!1272 = metadata !{i32 8, i32 0, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!1273 = metadata !{i32 10, i32 0, metadata !4, null}
!1274 = metadata !{i32 213}
!1275 = metadata !{i32 11, i32 0, metadata !4, null}
!1276 = metadata !{i32 265}
!1277 = metadata !{i32 12, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/stack_cp_l1_klee_annotated.c]
!1279 = metadata !{i32 13, i32 0, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !1, metadata !1278, i32 12, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/stack_cp_l1_klee_annotated.c]
!1281 = metadata !{i32 14, i32 0, metadata !1280, null}
!1282 = metadata !{i32 15, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !1278, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/stack_cp_l1_klee_annotated.c]
!1284 = metadata !{i32 17, i32 0, metadata !4, null}
!1285 = metadata !{i32 21, i32 0, metadata !11, null}
!1286 = metadata !{i32 22, i32 0, metadata !11, null}
!1287 = metadata !{i32 23, i32 0, metadata !11, null}
!1288 = metadata !{i32 86, i32 0, metadata !18, null}
!1289 = metadata !{metadata !1290, metadata !1290, i64 0}
!1290 = metadata !{metadata !"int", metadata !1291, i64 0}
!1291 = metadata !{metadata !"omnipotent char", metadata !1292, i64 0}
!1292 = metadata !{metadata !"Simple C/C++ TBAA"}
!1293 = metadata !{i32 87, i32 0, metadata !18, null}
!1294 = metadata !{metadata !1295, metadata !1295, i64 0}
!1295 = metadata !{metadata !"any pointer", metadata !1291, i64 0}
!1296 = metadata !{i32 90, i32 0, metadata !18, null}
!1297 = metadata !{i32 98, i32 0, metadata !18, null}
!1298 = metadata !{i32 102, i32 0, metadata !18, null}
!1299 = metadata !{metadata !1291, metadata !1291, i64 0}
!1300 = metadata !{i32 105, i32 0, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !16, metadata !18, i32 105, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1302 = metadata !{i32 54, i32 0, metadata !109, metadata !1300}
!1303 = metadata !{i32 55, i32 0, metadata !1304, metadata !1300}
!1304 = metadata !{i32 786443, metadata !16, metadata !1305, i32 55, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1305 = metadata !{i32 786443, metadata !16, metadata !109, i32 54, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1306 = metadata !{i32 57, i32 0, metadata !1305, metadata !1300}
!1307 = metadata !{i32 58, i32 0, metadata !1305, metadata !1300} ; [ DW_TAG_imported_module ]
!1308 = metadata !{i32 123, i32 0, metadata !18, null}
!1309 = metadata !{i32 130, i32 0, metadata !54, null}
!1310 = metadata !{i32 106, i32 0, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !16, metadata !1301, i32 105, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1312 = metadata !{i32 124, i32 0, metadata !55, null}
!1313 = metadata !{i32 54, i32 0, metadata !109, metadata !1312}
!1314 = metadata !{i32 55, i32 0, metadata !1304, metadata !1312}
!1315 = metadata !{i32 57, i32 0, metadata !1305, metadata !1312}
!1316 = metadata !{i32 58, i32 0, metadata !1305, metadata !1312} ; [ DW_TAG_imported_module ]
!1317 = metadata !{i32 126, i32 0, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !16, metadata !54, i32 126, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1319 = metadata !{i32 127, i32 0, metadata !1318, null}
!1320 = metadata !{i32 129, i32 0, metadata !54, null}
!1321 = metadata !{i32 34, i32 0, metadata !1322, metadata !1320}
!1322 = metadata !{i32 786443, metadata !16, metadata !95, i32 34, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1323 = metadata !{i32 36, i32 0, metadata !95, metadata !1320}
!1324 = metadata !{i32 39, i32 0, metadata !1325, metadata !1320}
!1325 = metadata !{i32 786443, metadata !16, metadata !1326, i32 39, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1326 = metadata !{i32 786443, metadata !16, metadata !1327, i32 37, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1327 = metadata !{i32 786443, metadata !16, metadata !95, i32 36, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1328 = metadata !{i32 37, i32 0, metadata !1326, metadata !1320}
!1329 = metadata !{i32 40, i32 0, metadata !1330, metadata !1320}
!1330 = metadata !{i32 786443, metadata !16, metadata !1325, i32 39, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1331 = metadata !{i32 42, i32 0, metadata !1332, metadata !1320}
!1332 = metadata !{i32 786443, metadata !16, metadata !1325, i32 41, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1333 = metadata !{i32 132, i32 0, metadata !54, null}
!1334 = metadata !{i32 77, i32 0, metadata !1335, metadata !1336}
!1335 = metadata !{i32 786443, metadata !16, metadata !87, i32 77, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1336 = metadata !{i32 131, i32 0, metadata !54, null}
!1337 = metadata !{i32 78, i32 0, metadata !1338, metadata !1336}
!1338 = metadata !{i32 786443, metadata !16, metadata !1335, i32 77, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1339 = metadata !{i32 80, i32 0, metadata !1340, metadata !1336}
!1340 = metadata !{i32 786443, metadata !16, metadata !1335, i32 79, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1341 = metadata !{i32 81, i32 0, metadata !1340, metadata !1336}
!1342 = metadata !{i32 134, i32 0, metadata !54, null}
!1343 = metadata !{i32 54, i32 0, metadata !109, metadata !1344}
!1344 = metadata !{i32 135, i32 0, metadata !61, null}
!1345 = metadata !{i32 55, i32 0, metadata !1304, metadata !1344}
!1346 = metadata !{i32 57, i32 0, metadata !1305, metadata !1344}
!1347 = metadata !{i32 58, i32 0, metadata !1305, metadata !1344} ; [ DW_TAG_imported_module ]
!1348 = metadata !{i32 139, i32 0, metadata !1349, null}
!1349 = metadata !{i32 786443, metadata !16, metadata !60, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1350 = metadata !{i32 140, i32 0, metadata !1349, null}
!1351 = metadata !{i32 142, i32 0, metadata !60, null}
!1352 = metadata !{i32 143, i32 0, metadata !60, null}
!1353 = metadata !{i32 34, i32 0, metadata !1322, metadata !1352}
!1354 = metadata !{i32 36, i32 0, metadata !95, metadata !1352}
!1355 = metadata !{i32 39, i32 0, metadata !1325, metadata !1352}
!1356 = metadata !{i32 37, i32 0, metadata !1326, metadata !1352}
!1357 = metadata !{i32 40, i32 0, metadata !1330, metadata !1352}
!1358 = metadata !{i32 42, i32 0, metadata !1332, metadata !1352}
!1359 = metadata !{i32 144, i32 0, metadata !60, null}
!1360 = metadata !{i32 34, i32 0, metadata !1322, metadata !1359}
!1361 = metadata !{i32 36, i32 0, metadata !95, metadata !1359}
!1362 = metadata !{i32 39, i32 0, metadata !1325, metadata !1359}
!1363 = metadata !{i32 37, i32 0, metadata !1326, metadata !1359}
!1364 = metadata !{i32 40, i32 0, metadata !1330, metadata !1359}
!1365 = metadata !{i32 42, i32 0, metadata !1332, metadata !1359}
!1366 = metadata !{i32 145, i32 0, metadata !60, null}
!1367 = metadata !{i32 34, i32 0, metadata !1322, metadata !1366}
!1368 = metadata !{i32 36, i32 0, metadata !95, metadata !1366}
!1369 = metadata !{i32 39, i32 0, metadata !1325, metadata !1366}
!1370 = metadata !{i32 37, i32 0, metadata !1326, metadata !1366}
!1371 = metadata !{i32 40, i32 0, metadata !1330, metadata !1366}
!1372 = metadata !{i32 42, i32 0, metadata !1332, metadata !1366}
!1373 = metadata !{i32 147, i32 0, metadata !60, null}
!1374 = metadata !{i32 148, i32 0, metadata !1375, null}
!1375 = metadata !{i32 786443, metadata !16, metadata !60, i32 148, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1376 = metadata !{i32 149, i32 0, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !16, metadata !1375, i32 148, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1378 = metadata !{i32 151, i32 0, metadata !1377, null}
!1379 = metadata !{i32 77, i32 0, metadata !1335, metadata !1380}
!1380 = metadata !{i32 150, i32 0, metadata !1377, null}
!1381 = metadata !{i32 78, i32 0, metadata !1338, metadata !1380}
!1382 = metadata !{i32 80, i32 0, metadata !1340, metadata !1380}
!1383 = metadata !{i32 81, i32 0, metadata !1340, metadata !1380}
!1384 = metadata !{i32 54, i32 0, metadata !109, metadata !1385}
!1385 = metadata !{i32 155, i32 0, metadata !64, null}
!1386 = metadata !{i32 55, i32 0, metadata !1304, metadata !1385}
!1387 = metadata !{i32 57, i32 0, metadata !1305, metadata !1385}
!1388 = metadata !{i32 58, i32 0, metadata !1305, metadata !1385} ; [ DW_TAG_imported_module ]
!1389 = metadata !{i32 158, i32 0, metadata !1390, null}
!1390 = metadata !{i32 786443, metadata !16, metadata !63, i32 158, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1391 = metadata !{i32 159, i32 0, metadata !1390, null}
!1392 = metadata !{i32 161, i32 0, metadata !63, null}
!1393 = metadata !{i32 162, i32 0, metadata !63, null}
!1394 = metadata !{i32 34, i32 0, metadata !1322, metadata !1393}
!1395 = metadata !{i32 36, i32 0, metadata !95, metadata !1393}
!1396 = metadata !{i32 39, i32 0, metadata !1325, metadata !1393}
!1397 = metadata !{i32 37, i32 0, metadata !1326, metadata !1393}
!1398 = metadata !{i32 40, i32 0, metadata !1330, metadata !1393}
!1399 = metadata !{i32 42, i32 0, metadata !1332, metadata !1393}
!1400 = metadata !{i32 163, i32 0, metadata !63, null}
!1401 = metadata !{i32 34, i32 0, metadata !1322, metadata !1400}
!1402 = metadata !{i32 36, i32 0, metadata !95, metadata !1400}
!1403 = metadata !{i32 39, i32 0, metadata !1325, metadata !1400}
!1404 = metadata !{i32 37, i32 0, metadata !1326, metadata !1400}
!1405 = metadata !{i32 40, i32 0, metadata !1330, metadata !1400}
!1406 = metadata !{i32 42, i32 0, metadata !1332, metadata !1400}
!1407 = metadata !{i32 165, i32 0, metadata !63, null}
!1408 = metadata !{i32 54, i32 0, metadata !109, metadata !1409}
!1409 = metadata !{i32 165, i32 0, metadata !67, null}
!1410 = metadata !{i32 55, i32 0, metadata !1304, metadata !1409}
!1411 = metadata !{i32 57, i32 0, metadata !1305, metadata !1409}
!1412 = metadata !{i32 58, i32 0, metadata !1305, metadata !1409} ; [ DW_TAG_imported_module ]
!1413 = metadata !{i32 54, i32 0, metadata !109, metadata !1414}
!1414 = metadata !{i32 166, i32 0, metadata !67, null}
!1415 = metadata !{i32 55, i32 0, metadata !1304, metadata !1414}
!1416 = metadata !{i32 57, i32 0, metadata !1305, metadata !1414}
!1417 = metadata !{i32 58, i32 0, metadata !1305, metadata !1414} ; [ DW_TAG_imported_module ]
!1418 = metadata !{i32 170, i32 0, metadata !1419, null}
!1419 = metadata !{i32 786443, metadata !16, metadata !66, i32 170, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1420 = metadata !{i32 171, i32 0, metadata !1419, null}
!1421 = metadata !{i32 173, i32 0, metadata !66, null}
!1422 = metadata !{i32 34, i32 0, metadata !1322, metadata !1421}
!1423 = metadata !{i32 36, i32 0, metadata !95, metadata !1421}
!1424 = metadata !{i32 39, i32 0, metadata !1325, metadata !1421}
!1425 = metadata !{i32 37, i32 0, metadata !1326, metadata !1421}
!1426 = metadata !{i32 40, i32 0, metadata !1330, metadata !1421}
!1427 = metadata !{i32 42, i32 0, metadata !1332, metadata !1421}
!1428 = metadata !{i32 174, i32 0, metadata !66, null}
!1429 = metadata !{i32 54, i32 0, metadata !109, metadata !1430}
!1430 = metadata !{i32 174, i32 0, metadata !73, null}
!1431 = metadata !{i32 55, i32 0, metadata !1304, metadata !1430}
!1432 = metadata !{i32 57, i32 0, metadata !1305, metadata !1430}
!1433 = metadata !{i32 58, i32 0, metadata !1305, metadata !1430} ; [ DW_TAG_imported_module ]
!1434 = metadata !{i32 54, i32 0, metadata !109, metadata !1435}
!1435 = metadata !{i32 175, i32 0, metadata !73, null}
!1436 = metadata !{i32 55, i32 0, metadata !1304, metadata !1435}
!1437 = metadata !{i32 57, i32 0, metadata !1305, metadata !1435}
!1438 = metadata !{i32 58, i32 0, metadata !1305, metadata !1435} ; [ DW_TAG_imported_module ]
!1439 = metadata !{i32 177, i32 0, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !16, metadata !73, i32 175, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1441 = metadata !{i32 178, i32 0, metadata !1440, null}
!1442 = metadata !{i32 54, i32 0, metadata !109, metadata !1443}
!1443 = metadata !{i32 179, i32 0, metadata !72, null}
!1444 = metadata !{i32 55, i32 0, metadata !1304, metadata !1443}
!1445 = metadata !{i32 57, i32 0, metadata !1305, metadata !1443}
!1446 = metadata !{i32 58, i32 0, metadata !1305, metadata !1443} ; [ DW_TAG_imported_module ]
!1447 = metadata !{i32 181, i32 0, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !16, metadata !72, i32 179, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1449 = metadata !{i32 182, i32 0, metadata !1448, null}
!1450 = metadata !{i32 54, i32 0, metadata !109, metadata !1451}
!1451 = metadata !{i32 183, i32 0, metadata !71, null}
!1452 = metadata !{i32 55, i32 0, metadata !1304, metadata !1451}
!1453 = metadata !{i32 57, i32 0, metadata !1305, metadata !1451}
!1454 = metadata !{i32 58, i32 0, metadata !1305, metadata !1451} ; [ DW_TAG_imported_module ]
!1455 = metadata !{i32 185, i32 0, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !16, metadata !71, i32 183, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1457 = metadata !{i32 186, i32 0, metadata !1456, null}
!1458 = metadata !{i32 54, i32 0, metadata !109, metadata !1459}
!1459 = metadata !{i32 187, i32 0, metadata !70, null}
!1460 = metadata !{i32 55, i32 0, metadata !1304, metadata !1459}
!1461 = metadata !{i32 57, i32 0, metadata !1305, metadata !1459}
!1462 = metadata !{i32 58, i32 0, metadata !1305, metadata !1459} ; [ DW_TAG_imported_module ]
!1463 = metadata !{i32 189, i32 0, metadata !1464, null}
!1464 = metadata !{i32 786443, metadata !16, metadata !69, i32 189, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1465 = metadata !{i32 190, i32 0, metadata !1464, null}
!1466 = metadata !{i32 192, i32 0, metadata !69, null}
!1467 = metadata !{i32 34, i32 0, metadata !1322, metadata !1466}
!1468 = metadata !{i32 36, i32 0, metadata !95, metadata !1466}
!1469 = metadata !{i32 39, i32 0, metadata !1325, metadata !1466}
!1470 = metadata !{i32 37, i32 0, metadata !1326, metadata !1466}
!1471 = metadata !{i32 40, i32 0, metadata !1330, metadata !1466}
!1472 = metadata !{i32 42, i32 0, metadata !1332, metadata !1466}
!1473 = metadata !{i32 193, i32 0, metadata !69, null}
!1474 = metadata !{i32 77, i32 0, metadata !1335, metadata !1475}
!1475 = metadata !{i32 196, i32 0, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !16, metadata !70, i32 194, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1477 = metadata !{i32 78, i32 0, metadata !1338, metadata !1475}
!1478 = metadata !{i32 80, i32 0, metadata !1340, metadata !1475}
!1479 = metadata !{i32 81, i32 0, metadata !1340, metadata !1475}
!1480 = metadata !{i32 200, i32 0, metadata !18, null}
!1481 = metadata !{i32 201, i32 0, metadata !18, null}
!1482 = metadata !{i32 202, i32 0, metadata !18, null}
!1483 = metadata !{i32 203, i32 0, metadata !18, null}
!1484 = metadata !{i32 205, i32 0, metadata !18, null}
!1485 = metadata !{i32 206, i32 0, metadata !18, null}
!1486 = metadata !{i32 208, i32 0, metadata !18, null}
!1487 = metadata !{i32 210, i32 0, metadata !18, null}
!1488 = metadata !{i32 24, i32 0, metadata !104, null}
!1489 = metadata !{i32 65, i32 0, metadata !74, null}
!1490 = metadata !{i32 66, i32 0, metadata !74, null}
!1491 = metadata !{i32 67, i32 0, metadata !74, null}
!1492 = metadata !{i32 69, i32 0, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !16, metadata !74, i32 69, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1494 = metadata !{i32 70, i32 0, metadata !1493, null}
!1495 = metadata !{i32 50, i32 0, metadata !82, metadata !1494}
!1496 = metadata !{i32 72, i32 0, metadata !74, null}
!1497 = metadata !{i32 73, i32 0, metadata !74, null}
!1498 = metadata !{i32 114, i32 0, metadata !118, null}
!1499 = metadata !{i32 115, i32 0, metadata !118, null}
!1500 = metadata !{i32 503, i32 0, metadata !1501, metadata !1502}
!1501 = metadata !{i32 786443, metadata !203, metadata !202} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!1502 = metadata !{i32 117, i32 0, metadata !118, null}
!1503 = metadata !{i32 119, i32 0, metadata !118, null}
!1504 = metadata !{metadata !1505, metadata !1290, i64 0}
!1505 = metadata !{metadata !"", metadata !1290, i64 0, metadata !1295, i64 8, metadata !1295, i64 16, metadata !1290, i64 24, metadata !1295, i64 32, metadata !1290, i64 40, metadata !1295, i64 48, metadata !1295, i64 56, metadata !1295, i64 64, metadat
!1506 = metadata !{i32 120, i32 0, metadata !118, null}
!1507 = metadata !{metadata !1505, metadata !1295, i64 32}
!1508 = metadata !{i32 121, i32 0, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !116, metadata !118, i32 121, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1510 = metadata !{i32 122, i32 0, metadata !1511, null}
!1511 = metadata !{i32 786443, metadata !116, metadata !1509, i32 121, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1512 = metadata !{i32 123, i32 0, metadata !1511, null}
!1513 = metadata !{i32 127, i32 0, metadata !1514, null}
!1514 = metadata !{i32 786443, metadata !116, metadata !118, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1515 = metadata !{i32 128, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !116, metadata !1514, i32 127, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1517 = metadata !{metadata !1505, metadata !1295, i64 8}
!1518 = metadata !{i32 129, i32 0, metadata !1516, null}
!1519 = metadata !{i32 130, i32 0, metadata !1516, null}
!1520 = metadata !{metadata !1521, metadata !1295, i64 16}
!1521 = metadata !{metadata !"", metadata !1290, i64 0, metadata !1290, i64 4, metadata !1522, i64 8, metadata !1295, i64 16}
!1522 = metadata !{metadata !"long", metadata !1291, i64 0}
!1523 = metadata !{i32 131, i32 0, metadata !1516, null}
!1524 = metadata !{i32 132, i32 0, metadata !1514, null}
!1525 = metadata !{i32 134, i32 0, metadata !118, null}
!1526 = metadata !{metadata !1505, metadata !1290, i64 40}
!1527 = metadata !{i32 135, i32 0, metadata !1528, null}
!1528 = metadata !{i32 786443, metadata !116, metadata !118, i32 135, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1529 = metadata !{i32 136, i32 0, metadata !1530, null}
!1530 = metadata !{i32 786443, metadata !116, metadata !1528, i32 135, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1531 = metadata !{metadata !1505, metadata !1295, i64 48}
!1532 = metadata !{i32 137, i32 0, metadata !1530, null}
!1533 = metadata !{metadata !1505, metadata !1295, i64 56}
!1534 = metadata !{i32 138, i32 0, metadata !1530, null}
!1535 = metadata !{metadata !1505, metadata !1295, i64 64}
!1536 = metadata !{i32 139, i32 0, metadata !1530, null}
!1537 = metadata !{metadata !1505, metadata !1295, i64 72}
!1538 = metadata !{i32 140, i32 0, metadata !1530, null}
!1539 = metadata !{metadata !1505, metadata !1295, i64 80}
!1540 = metadata !{i32 142, i32 0, metadata !1530, null}
!1541 = metadata !{i32 143, i32 0, metadata !1530, null}
!1542 = metadata !{i32 144, i32 0, metadata !1530, null}
!1543 = metadata !{i32 145, i32 0, metadata !1530, null}
!1544 = metadata !{i32 146, i32 0, metadata !1530, null}
!1545 = metadata !{i32 147, i32 0, metadata !1530, null}
!1546 = metadata !{i32 150, i32 0, metadata !1547, null}
!1547 = metadata !{i32 786443, metadata !116, metadata !118, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1548 = metadata !{i32 151, i32 0, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !116, metadata !1547, i32 150, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1550 = metadata !{metadata !1505, metadata !1295, i64 16}
!1551 = metadata !{i32 152, i32 0, metadata !1549, null}
!1552 = metadata !{i32 153, i32 0, metadata !1549, null}
!1553 = metadata !{i32 154, i32 0, metadata !1549, null}
!1554 = metadata !{metadata !1505, metadata !1290, i64 24}
!1555 = metadata !{i32 155, i32 0, metadata !1549, null}
!1556 = metadata !{i32 156, i32 0, metadata !1547, null}
!1557 = metadata !{i32 158, i32 0, metadata !118, null}
!1558 = metadata !{metadata !1559, metadata !1290, i64 776}
!1559 = metadata !{metadata !"", metadata !1291, i64 0, metadata !1290, i64 768, metadata !1290, i64 772, metadata !1290, i64 776}
!1560 = metadata !{i32 97, i32 0, metadata !173, metadata !1561}
!1561 = metadata !{i32 159, i32 0, metadata !118, null}
!1562 = metadata !{i32 99, i32 0, metadata !173, metadata !1561}
!1563 = metadata !{i32 100, i32 0, metadata !173, metadata !1561}
!1564 = metadata !{metadata !1559, metadata !1290, i64 772}
!1565 = metadata !{i32 160, i32 0, metadata !118, null}
!1566 = metadata !{i32 161, i32 0, metadata !118, null}
!1567 = metadata !{i32 48, i32 0, metadata !179, null}
!1568 = metadata !{i32 50, i32 0, metadata !179, null}
!1569 = metadata !{i32 51, i32 0, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !116, metadata !179, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1571 = metadata !{i32 53, i32 0, metadata !179, null}
!1572 = metadata !{i32 52, i32 0, metadata !1570, null}
!1573 = metadata !{i32 55, i32 0, metadata !179, null}
!1574 = metadata !{i32 57, i32 0, metadata !179, null}
!1575 = metadata !{metadata !1576, metadata !1290, i64 0}
!1576 = metadata !{metadata !"", metadata !1290, i64 0, metadata !1295, i64 8, metadata !1295, i64 16}
!1577 = metadata !{i32 58, i32 0, metadata !179, null} ; [ DW_TAG_imported_module ]
!1578 = metadata !{metadata !1576, metadata !1295, i64 8}
!1579 = metadata !{i32 59, i32 0, metadata !179, null}
!1580 = metadata !{i32 61, i32 0, metadata !179, null}
!1581 = metadata !{i32 64, i32 0, metadata !1582, null}
!1582 = metadata !{i32 786443, metadata !116, metadata !179, i32 64, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1583 = metadata !{metadata !1584, metadata !1522, i64 8}
!1584 = metadata !{metadata !"stat64", metadata !1522, i64 0, metadata !1522, i64 8, metadata !1522, i64 16, metadata !1290, i64 24, metadata !1290, i64 28, metadata !1290, i64 32, metadata !1290, i64 36, metadata !1522, i64 40, metadata !1522, i64 48, m
!1585 = metadata !{metadata !"timespec", metadata !1522, i64 0, metadata !1522, i64 8}
!1586 = metadata !{i32 66, i32 0, metadata !1582, null}
!1587 = metadata !{i32 71, i32 0, metadata !179, null}
!1588 = metadata !{i32 75, i32 0, metadata !179, null}
!1589 = metadata !{metadata !1584, metadata !1522, i64 56}
!1590 = metadata !{i32 77, i32 0, metadata !179, null}
!1591 = metadata !{metadata !1584, metadata !1290, i64 24}
!1592 = metadata !{i32 78, i32 0, metadata !179, null}
!1593 = metadata !{metadata !1584, metadata !1522, i64 0}
!1594 = metadata !{i32 79, i32 0, metadata !179, null}
!1595 = metadata !{metadata !1584, metadata !1522, i64 40}
!1596 = metadata !{i32 80, i32 0, metadata !179, null}
!1597 = metadata !{i32 81, i32 0, metadata !179, null}
!1598 = metadata !{i32 82, i32 0, metadata !179, null}
!1599 = metadata !{i32 83, i32 0, metadata !179, null}
!1600 = metadata !{i32 84, i32 0, metadata !179, null}
!1601 = metadata !{metadata !1584, metadata !1522, i64 16}
!1602 = metadata !{i32 85, i32 0, metadata !179, null}
!1603 = metadata !{metadata !1584, metadata !1290, i64 28}
!1604 = metadata !{i32 86, i32 0, metadata !179, null}
!1605 = metadata !{metadata !1584, metadata !1290, i64 32}
!1606 = metadata !{i32 87, i32 0, metadata !179, null}
!1607 = metadata !{i32 88, i32 0, metadata !179, null}
!1608 = metadata !{metadata !1584, metadata !1522, i64 72}
!1609 = metadata !{i32 89, i32 0, metadata !179, null}
!1610 = metadata !{metadata !1584, metadata !1522, i64 88}
!1611 = metadata !{i32 90, i32 0, metadata !179, null}
!1612 = metadata !{metadata !1584, metadata !1522, i64 104}
!1613 = metadata !{i32 92, i32 0, metadata !179, null}
!1614 = metadata !{metadata !1584, metadata !1522, i64 48}
!1615 = metadata !{i32 93, i32 0, metadata !179, null}
!1616 = metadata !{metadata !1584, metadata !1522, i64 64}
!1617 = metadata !{i32 94, i32 0, metadata !179, null}
!1618 = metadata !{metadata !1576, metadata !1295, i64 16}
!1619 = metadata !{i32 95, i32 0, metadata !179, null}
!1620 = metadata !{i32 48, i32 0, metadata !264, null}
!1621 = metadata !{i32 51, i32 0, metadata !263, null}
!1622 = metadata !{i32 52, i32 0, metadata !263, null}
!1623 = metadata !{i32 53, i32 0, metadata !263, null}
!1624 = metadata !{i32 54, i32 0, metadata !263, null}
!1625 = metadata !{i32 56, i32 0, metadata !252, null}
!1626 = metadata !{i32 62, i32 0, metadata !289, null}
!1627 = metadata !{i32 65, i32 0, metadata !288, null}
!1628 = metadata !{i32 66, i32 0, metadata !288, null}
!1629 = metadata !{i32 67, i32 0, metadata !288, null}
!1630 = metadata !{i32 68, i32 0, metadata !288, null}
!1631 = metadata !{i32 70, i32 0, metadata !279, null}
!1632 = metadata !{i32 74, i32 0, metadata !290, null}
!1633 = metadata !{i32 78, i32 0, metadata !299, null}
!1634 = metadata !{i32 82, i32 0, metadata !330, null}
!1635 = metadata !{i32 86, i32 0, metadata !336, null}
!1636 = metadata !{i32 90, i32 0, metadata !341, null}
!1637 = metadata !{i32 94, i32 0, metadata !345, null}
!1638 = metadata !{i32 98, i32 0, metadata !352, null}
!1639 = metadata !{i32 102, i32 0, metadata !358, null}
!1640 = metadata !{i32 107, i32 0, metadata !364, null}
!1641 = metadata !{i32 111, i32 0, metadata !400, null}
!1642 = metadata !{i32 40, i32 0, metadata !1032, metadata !1643}
!1643 = metadata !{i32 74, i32 0, metadata !444, null}
!1644 = metadata !{i32 43, i32 0, metadata !1645, metadata !1643}
!1645 = metadata !{i32 786443, metadata !423, metadata !1032, i32 43, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1646 = metadata !{i32 46, i32 0, metadata !1043, metadata !1643}
!1647 = metadata !{i32 47, i32 0, metadata !1041, metadata !1643}
!1648 = metadata !{i32 48, i32 0, metadata !1040, metadata !1643}
!1649 = metadata !{i32 49, i32 0, metadata !1650, metadata !1643}
!1650 = metadata !{i32 786443, metadata !423, metadata !1040, i32 49, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1651 = metadata !{i32 76, i32 0, metadata !481, null}
!1652 = metadata !{i32 1417, i32 0, metadata !998, metadata !1653}
!1653 = metadata !{i32 1429, i32 0, metadata !979, metadata !1654}
!1654 = metadata !{i32 81, i32 0, metadata !480, null}
!1655 = metadata !{i32 1418, i32 0, metadata !998, metadata !1653}
!1656 = metadata !{i32 1432, i32 0, metadata !988, metadata !1654}
!1657 = metadata !{i32 1433, i32 0, metadata !987, metadata !1654}
!1658 = metadata !{i32 1434, i32 0, metadata !991, metadata !1654}
!1659 = metadata !{i32 1435, i32 0, metadata !1660, metadata !1654}
!1660 = metadata !{i32 786443, metadata !423, metadata !1661, i32 1435, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1661 = metadata !{i32 786443, metadata !423, metadata !991, i32 1434, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1662 = metadata !{i32 1436, i32 0, metadata !1663, metadata !1654}
!1663 = metadata !{i32 786443, metadata !423, metadata !1660, i32 1435, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1664 = metadata !{i32 1437, i32 0, metadata !1663, metadata !1654}
!1665 = metadata !{i32 1439, i32 0, metadata !1666, metadata !1654}
!1666 = metadata !{i32 786443, metadata !423, metadata !1667, i32 1438, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1667 = metadata !{i32 786443, metadata !423, metadata !1660, i32 1438, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1668 = metadata !{i32 1440, i32 0, metadata !1666, metadata !1654}
!1669 = metadata !{i32 1442, i32 0, metadata !990, metadata !1654}
!1670 = metadata !{i32 1443, i32 0, metadata !990, metadata !1654}
!1671 = metadata !{i32 1444, i32 0, metadata !990, metadata !1654}
!1672 = metadata !{i32 1445, i32 0, metadata !1673, metadata !1654}
!1673 = metadata !{i32 786443, metadata !423, metadata !990, i32 1445, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1674 = metadata !{i32 82, i32 0, metadata !1675, null}
!1675 = metadata !{i32 786443, metadata !423, metadata !480, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1676 = metadata !{i32 83, i32 0, metadata !1675, null}
!1677 = metadata !{i32 86, i32 0, metadata !444, null}
!1678 = metadata !{i32 89, i32 0, metadata !482, null}
!1679 = metadata !{metadata !1559, metadata !1290, i64 768}
!1680 = metadata !{i32 90, i32 0, metadata !482, null}
!1681 = metadata !{i32 91, i32 0, metadata !482, null}
!1682 = metadata !{i32 133, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !423, metadata !489, i32 133, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1684 = metadata !{i32 134, i32 0, metadata !1685, null}
!1685 = metadata !{i32 786443, metadata !423, metadata !1683, i32 134, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1686 = metadata !{metadata !1521, metadata !1290, i64 4}
!1687 = metadata !{i32 136, i32 0, metadata !1688, null}
!1688 = metadata !{i32 786443, metadata !423, metadata !489, i32 136, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1689 = metadata !{i32 137, i32 0, metadata !1690, null}
!1690 = metadata !{i32 786443, metadata !423, metadata !1688, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1691 = metadata !{i32 138, i32 0, metadata !1690, null}
!1692 = metadata !{i32 141, i32 0, metadata !489, null}
!1693 = metadata !{i32 144, i32 0, metadata !489, null}
!1694 = metadata !{i32 40, i32 0, metadata !1032, metadata !1695}
!1695 = metadata !{i32 146, i32 0, metadata !489, null}
!1696 = metadata !{i32 43, i32 0, metadata !1645, metadata !1695}
!1697 = metadata !{i32 46, i32 0, metadata !1043, metadata !1695}
!1698 = metadata !{i32 47, i32 0, metadata !1041, metadata !1695}
!1699 = metadata !{i32 48, i32 0, metadata !1040, metadata !1695}
!1700 = metadata !{i32 49, i32 0, metadata !1650, metadata !1695}
!1701 = metadata !{i32 147, i32 0, metadata !509, null}
!1702 = metadata !{i32 150, i32 0, metadata !1703, null}
!1703 = metadata !{i32 786443, metadata !423, metadata !509, i32 147, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1704 = metadata !{i32 152, i32 0, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !423, metadata !1703, i32 152, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1706 = metadata !{i32 153, i32 0, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !423, metadata !1705, i32 152, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1708 = metadata !{i32 154, i32 0, metadata !1707, null}
!1709 = metadata !{i32 168, i32 0, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !423, metadata !1711, i32 165, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1711 = metadata !{i32 786443, metadata !423, metadata !1703, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1712 = metadata !{i32 169, i32 0, metadata !1710, null}
!1713 = metadata !{i32 170, i32 0, metadata !1710, null}
!1714 = metadata !{i32 99, i32 0, metadata !1025, metadata !1715}
!1715 = metadata !{i32 173, i32 0, metadata !1716, null}
!1716 = metadata !{i32 786443, metadata !423, metadata !1703, i32 173, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1717 = metadata !{i32 101, i32 0, metadata !1718, metadata !1715}
!1718 = metadata !{i32 786443, metadata !423, metadata !1025, i32 101, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1719 = metadata !{i32 118, i32 0, metadata !1720, metadata !1715}
!1720 = metadata !{i32 786443, metadata !423, metadata !1025, i32 118, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1721 = metadata !{i32 105, i32 0, metadata !1722, metadata !1715}
!1722 = metadata !{i32 786443, metadata !423, metadata !1025, i32 105, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1723 = metadata !{i32 121, i32 0, metadata !1724, metadata !1715}
!1724 = metadata !{i32 786443, metadata !423, metadata !1025, i32 121, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1725 = metadata !{i32 174, i32 0, metadata !1726, null}
!1726 = metadata !{i32 786443, metadata !423, metadata !1716, i32 173, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1727 = metadata !{i32 175, i32 0, metadata !1726, null}
!1728 = metadata !{i32 178, i32 0, metadata !1716, null}
!1729 = metadata !{i32 180, i32 0, metadata !1703, null}
!1730 = metadata !{i32 1417, i32 0, metadata !998, metadata !1731}
!1731 = metadata !{i32 1429, i32 0, metadata !979, metadata !1732}
!1732 = metadata !{i32 181, i32 0, metadata !508, null}
!1733 = metadata !{i32 1418, i32 0, metadata !998, metadata !1731}
!1734 = metadata !{i32 1432, i32 0, metadata !988, metadata !1732}
!1735 = metadata !{i32 1433, i32 0, metadata !987, metadata !1732}
!1736 = metadata !{i32 1434, i32 0, metadata !991, metadata !1732}
!1737 = metadata !{i32 1435, i32 0, metadata !1660, metadata !1732}
!1738 = metadata !{i32 1436, i32 0, metadata !1663, metadata !1732}
!1739 = metadata !{i32 1437, i32 0, metadata !1663, metadata !1732}
!1740 = metadata !{i32 1439, i32 0, metadata !1666, metadata !1732}
!1741 = metadata !{i32 1440, i32 0, metadata !1666, metadata !1732}
!1742 = metadata !{i32 1442, i32 0, metadata !990, metadata !1732}
!1743 = metadata !{i32 1443, i32 0, metadata !990, metadata !1732}
!1744 = metadata !{i32 1444, i32 0, metadata !990, metadata !1732}
!1745 = metadata !{i32 1445, i32 0, metadata !1673, metadata !1732}
!1746 = metadata !{i32 182, i32 0, metadata !1747, null}
!1747 = metadata !{i32 786443, metadata !423, metadata !508, i32 182, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1748 = metadata !{i32 183, i32 0, metadata !1749, null}
!1749 = metadata !{i32 786443, metadata !423, metadata !1747, i32 182, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1750 = metadata !{i32 184, i32 0, metadata !1749, null}
!1751 = metadata !{i32 186, i32 0, metadata !508, null}
!1752 = metadata !{metadata !1521, metadata !1290, i64 0}
!1753 = metadata !{i32 190, i32 0, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !423, metadata !489, i32 190, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1755 = metadata !{i32 189, i32 0, metadata !489, null}
!1756 = metadata !{i32 191, i32 0, metadata !1757, null}
!1757 = metadata !{i32 786443, metadata !423, metadata !1754, i32 190, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1758 = metadata !{i32 192, i32 0, metadata !1757, null}
!1759 = metadata !{i32 193, i32 0, metadata !1760, null}
!1760 = metadata !{i32 786443, metadata !423, metadata !1761, i32 192, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1761 = metadata !{i32 786443, metadata !423, metadata !1754, i32 192, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1762 = metadata !{i32 194, i32 0, metadata !1760, null}
!1763 = metadata !{i32 195, i32 0, metadata !1764, null}
!1764 = metadata !{i32 786443, metadata !423, metadata !1761, i32 194, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1765 = metadata !{i32 199, i32 0, metadata !489, null}
!1766 = metadata !{i32 204, i32 0, metadata !522, null}
!1767 = metadata !{i32 64, i32 0, metadata !1024, metadata !1768}
!1768 = metadata !{i32 205, i32 0, metadata !521, null}
!1769 = metadata !{i32 65, i32 0, metadata !1023, metadata !1768}
!1770 = metadata !{i32 66, i32 0, metadata !1771, metadata !1768}
!1771 = metadata !{i32 786443, metadata !423, metadata !1023, i32 66, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1772 = metadata !{i32 207, i32 0, metadata !1773, null}
!1773 = metadata !{i32 786443, metadata !423, metadata !521, i32 207, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1774 = metadata !{i32 208, i32 0, metadata !1775, null}
!1775 = metadata !{i32 786443, metadata !423, metadata !1773, i32 207, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1776 = metadata !{i32 209, i32 0, metadata !1775, null}
!1777 = metadata !{i32 210, i32 0, metadata !1778, null}
!1778 = metadata !{i32 786443, metadata !423, metadata !1773, i32 210, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1779 = metadata !{i32 211, i32 0, metadata !1780, null}
!1780 = metadata !{i32 786443, metadata !423, metadata !1778, i32 210, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1781 = metadata !{i32 212, i32 0, metadata !1780, null}
!1782 = metadata !{i32 213, i32 0, metadata !1780, null}
!1783 = metadata !{i32 215, i32 0, metadata !521, null}
!1784 = metadata !{i32 216, i32 0, metadata !521, null}
!1785 = metadata !{i32 40, i32 0, metadata !1032, metadata !1786}
!1786 = metadata !{i32 218, i32 0, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !423, metadata !510, i32 218, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1788 = metadata !{i32 43, i32 0, metadata !1645, metadata !1786}
!1789 = metadata !{i32 46, i32 0, metadata !1043, metadata !1786}
!1790 = metadata !{i32 47, i32 0, metadata !1041, metadata !1786}
!1791 = metadata !{i32 48, i32 0, metadata !1040, metadata !1786}
!1792 = metadata !{i32 49, i32 0, metadata !1650, metadata !1786}
!1793 = metadata !{i32 220, i32 0, metadata !1794, null}
!1794 = metadata !{i32 786443, metadata !423, metadata !1787, i32 218, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1795 = metadata !{i32 223, i32 0, metadata !1796, null}
!1796 = metadata !{i32 786443, metadata !423, metadata !510, i32 223, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1797 = metadata !{i32 224, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !423, metadata !1796, i32 224, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1799 = metadata !{i32 226, i32 0, metadata !1800, null}
!1800 = metadata !{i32 786443, metadata !423, metadata !510, i32 226, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1801 = metadata !{i32 227, i32 0, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !423, metadata !1800, i32 226, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1803 = metadata !{i32 228, i32 0, metadata !1802, null}
!1804 = metadata !{i32 231, i32 0, metadata !510, null}
!1805 = metadata !{i32 234, i32 0, metadata !510, null}
!1806 = metadata !{i32 1417, i32 0, metadata !998, metadata !1807}
!1807 = metadata !{i32 1429, i32 0, metadata !979, metadata !1808}
!1808 = metadata !{i32 236, i32 0, metadata !510, null}
!1809 = metadata !{i32 1418, i32 0, metadata !998, metadata !1807}
!1810 = metadata !{i32 1432, i32 0, metadata !988, metadata !1808}
!1811 = metadata !{i32 1433, i32 0, metadata !987, metadata !1808}
!1812 = metadata !{i32 1434, i32 0, metadata !991, metadata !1808}
!1813 = metadata !{i32 1435, i32 0, metadata !1660, metadata !1808}
!1814 = metadata !{i32 1436, i32 0, metadata !1663, metadata !1808}
!1815 = metadata !{i32 1437, i32 0, metadata !1663, metadata !1808}
!1816 = metadata !{i32 1439, i32 0, metadata !1666, metadata !1808}
!1817 = metadata !{i32 1440, i32 0, metadata !1666, metadata !1808}
!1818 = metadata !{i32 1442, i32 0, metadata !990, metadata !1808}
!1819 = metadata !{i32 1443, i32 0, metadata !990, metadata !1808}
!1820 = metadata !{i32 1444, i32 0, metadata !990, metadata !1808}
!1821 = metadata !{i32 1445, i32 0, metadata !1673, metadata !1808}
!1822 = metadata !{i32 237, i32 0, metadata !1823, null}
!1823 = metadata !{i32 786443, metadata !423, metadata !510, i32 237, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1824 = metadata !{i32 238, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !423, metadata !1823, i32 237, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1826 = metadata !{i32 239, i32 0, metadata !1825, null}
!1827 = metadata !{i32 242, i32 0, metadata !510, null}
!1828 = metadata !{i32 243, i32 0, metadata !510, null}
!1829 = metadata !{i32 244, i32 0, metadata !1830, null}
!1830 = metadata !{i32 786443, metadata !423, metadata !510, i32 244, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1831 = metadata !{i32 245, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !423, metadata !1830, i32 244, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1833 = metadata !{i32 246, i32 0, metadata !1832, null}
!1834 = metadata !{i32 247, i32 0, metadata !1835, null}
!1835 = metadata !{i32 786443, metadata !423, metadata !1836, i32 246, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1836 = metadata !{i32 786443, metadata !423, metadata !1830, i32 246, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1837 = metadata !{i32 248, i32 0, metadata !1835, null}
!1838 = metadata !{i32 249, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !423, metadata !1836, i32 248, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1840 = metadata !{i32 253, i32 0, metadata !510, null}
!1841 = metadata !{i32 40, i32 0, metadata !1032, metadata !1842}
!1842 = metadata !{i32 257, i32 0, metadata !524, null}
!1843 = metadata !{i32 43, i32 0, metadata !1645, metadata !1842}
!1844 = metadata !{i32 46, i32 0, metadata !1043, metadata !1842}
!1845 = metadata !{i32 47, i32 0, metadata !1041, metadata !1842}
!1846 = metadata !{i32 48, i32 0, metadata !1040, metadata !1842}
!1847 = metadata !{i32 49, i32 0, metadata !1650, metadata !1842}
!1848 = metadata !{i32 259, i32 0, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !423, metadata !524, i32 259, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1850 = metadata !{i32 261, i32 0, metadata !1851, null}
!1851 = metadata !{i32 786443, metadata !423, metadata !1849, i32 259, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1852 = metadata !{metadata !1853, metadata !1522, i64 0}
!1853 = metadata !{metadata !"timeval", metadata !1522, i64 0, metadata !1522, i64 8}
!1854 = metadata !{i32 262, i32 0, metadata !1851, null}
!1855 = metadata !{i32 267, i32 0, metadata !1851, null}
!1856 = metadata !{i32 1417, i32 0, metadata !998, metadata !1857}
!1857 = metadata !{i32 1429, i32 0, metadata !979, metadata !1858}
!1858 = metadata !{i32 269, i32 0, metadata !524, null}
!1859 = metadata !{i32 1418, i32 0, metadata !998, metadata !1857}
!1860 = metadata !{i32 1432, i32 0, metadata !988, metadata !1858}
!1861 = metadata !{i32 1433, i32 0, metadata !987, metadata !1858}
!1862 = metadata !{i32 1434, i32 0, metadata !991, metadata !1858}
!1863 = metadata !{i32 1435, i32 0, metadata !1660, metadata !1858}
!1864 = metadata !{i32 1436, i32 0, metadata !1663, metadata !1858}
!1865 = metadata !{i32 1437, i32 0, metadata !1663, metadata !1858}
!1866 = metadata !{i32 1439, i32 0, metadata !1666, metadata !1858}
!1867 = metadata !{i32 1440, i32 0, metadata !1666, metadata !1858}
!1868 = metadata !{i32 1442, i32 0, metadata !990, metadata !1858}
!1869 = metadata !{i32 1443, i32 0, metadata !990, metadata !1858}
!1870 = metadata !{i32 1444, i32 0, metadata !990, metadata !1858}
!1871 = metadata !{i32 1445, i32 0, metadata !1673, metadata !1858}
!1872 = metadata !{i32 270, i32 0, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !423, metadata !524, i32 270, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1874 = metadata !{i32 271, i32 0, metadata !1873, null}
!1875 = metadata !{i32 274, i32 0, metadata !524, null}
!1876 = metadata !{i32 278, i32 0, metadata !549, null}
!1877 = metadata !{i32 64, i32 0, metadata !1024, metadata !1878}
!1878 = metadata !{i32 279, i32 0, metadata !548, null}
!1879 = metadata !{i32 65, i32 0, metadata !1023, metadata !1878}
!1880 = metadata !{i32 66, i32 0, metadata !1771, metadata !1878}
!1881 = metadata !{i32 281, i32 0, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !423, metadata !548, i32 281, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1883 = metadata !{i32 282, i32 0, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !423, metadata !1882, i32 281, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1885 = metadata !{i32 283, i32 0, metadata !1884, null}
!1886 = metadata !{i32 284, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !423, metadata !1882, i32 284, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1888 = metadata !{i32 285, i32 0, metadata !1889, null}
!1889 = metadata !{i32 786443, metadata !423, metadata !1887, i32 284, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1890 = metadata !{i32 286, i32 0, metadata !1889, null}
!1891 = metadata !{i32 287, i32 0, metadata !1889, null}
!1892 = metadata !{i32 289, i32 0, metadata !548, null}
!1893 = metadata !{i32 290, i32 0, metadata !548, null}
!1894 = metadata !{i32 40, i32 0, metadata !1032, metadata !1895}
!1895 = metadata !{i32 291, i32 0, metadata !1896, null}
!1896 = metadata !{i32 786443, metadata !423, metadata !540, i32 291, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1897 = metadata !{i32 43, i32 0, metadata !1645, metadata !1895}
!1898 = metadata !{i32 46, i32 0, metadata !1043, metadata !1895}
!1899 = metadata !{i32 47, i32 0, metadata !1041, metadata !1895}
!1900 = metadata !{i32 48, i32 0, metadata !1040, metadata !1895}
!1901 = metadata !{i32 49, i32 0, metadata !1650, metadata !1895}
!1902 = metadata !{i32 292, i32 0, metadata !1903, null}
!1903 = metadata !{i32 786443, metadata !423, metadata !1896, i32 291, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1904 = metadata !{i32 295, i32 0, metadata !540, null}
!1905 = metadata !{i32 1417, i32 0, metadata !998, metadata !1906}
!1906 = metadata !{i32 1429, i32 0, metadata !979, metadata !1907}
!1907 = metadata !{i32 296, i32 0, metadata !540, null}
!1908 = metadata !{i32 1418, i32 0, metadata !998, metadata !1906}
!1909 = metadata !{i32 1432, i32 0, metadata !988, metadata !1907}
!1910 = metadata !{i32 1433, i32 0, metadata !987, metadata !1907}
!1911 = metadata !{i32 1434, i32 0, metadata !991, metadata !1907}
!1912 = metadata !{i32 1435, i32 0, metadata !1660, metadata !1907}
!1913 = metadata !{i32 1436, i32 0, metadata !1663, metadata !1907}
!1914 = metadata !{i32 1437, i32 0, metadata !1663, metadata !1907}
!1915 = metadata !{i32 1439, i32 0, metadata !1666, metadata !1907}
!1916 = metadata !{i32 1440, i32 0, metadata !1666, metadata !1907}
!1917 = metadata !{i32 1442, i32 0, metadata !990, metadata !1907}
!1918 = metadata !{i32 1443, i32 0, metadata !990, metadata !1907}
!1919 = metadata !{i32 1444, i32 0, metadata !990, metadata !1907}
!1920 = metadata !{i32 1445, i32 0, metadata !1673, metadata !1907}
!1921 = metadata !{i32 298, i32 0, metadata !1922, null}
!1922 = metadata !{i32 786443, metadata !423, metadata !540, i32 298, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1923 = metadata !{i32 299, i32 0, metadata !1922, null}
!1924 = metadata !{i32 301, i32 0, metadata !540, null}
!1925 = metadata !{i32 308, i32 0, metadata !551, null}
!1926 = metadata !{i32 64, i32 0, metadata !1024, metadata !1927}
!1927 = metadata !{i32 310, i32 0, metadata !551, null}
!1928 = metadata !{i32 65, i32 0, metadata !1023, metadata !1927}
!1929 = metadata !{i32 66, i32 0, metadata !1771, metadata !1927}
!1930 = metadata !{i32 311, i32 0, metadata !1931, null}
!1931 = metadata !{i32 786443, metadata !423, metadata !551, i32 311, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1932 = metadata !{i32 312, i32 0, metadata !1933, null}
!1933 = metadata !{i32 786443, metadata !423, metadata !1931, i32 311, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1934 = metadata !{i32 313, i32 0, metadata !1933, null}
!1935 = metadata !{i32 316, i32 0, metadata !1936, null}
!1936 = metadata !{i32 786443, metadata !423, metadata !551, i32 316, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1937 = metadata !{i32 317, i32 0, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !423, metadata !1936, i32 316, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1939 = metadata !{i32 318, i32 0, metadata !1938, null}
!1940 = metadata !{i32 319, i32 0, metadata !1938, null}
!1941 = metadata !{i32 330, i32 0, metadata !551, null}
!1942 = metadata !{i32 332, i32 0, metadata !551, null}
!1943 = metadata !{i32 333, i32 0, metadata !551, null}
!1944 = metadata !{i32 339, i32 0, metadata !558, null}
!1945 = metadata !{i32 341, i32 0, metadata !1946, null}
!1946 = metadata !{i32 786443, metadata !423, metadata !558, i32 341, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1947 = metadata !{i32 344, i32 0, metadata !1948, null}
!1948 = metadata !{i32 786443, metadata !423, metadata !558, i32 344, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1949 = metadata !{i32 345, i32 0, metadata !1950, null}
!1950 = metadata !{i32 786443, metadata !423, metadata !1948, i32 344, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1951 = metadata !{i32 346, i32 0, metadata !1950, null}
!1952 = metadata !{i32 64, i32 0, metadata !1024, metadata !1953}
!1953 = metadata !{i32 349, i32 0, metadata !558, null}
!1954 = metadata !{i32 65, i32 0, metadata !1023, metadata !1953}
!1955 = metadata !{i32 66, i32 0, metadata !1771, metadata !1953}
!1956 = metadata !{i32 351, i32 0, metadata !1957, null}
!1957 = metadata !{i32 786443, metadata !423, metadata !558, i32 351, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1958 = metadata !{i32 352, i32 0, metadata !1959, null}
!1959 = metadata !{i32 786443, metadata !423, metadata !1957, i32 351, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1960 = metadata !{i32 353, i32 0, metadata !1959, null}
!1961 = metadata !{i32 356, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !423, metadata !558, i32 356, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1963 = metadata !{i32 357, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !423, metadata !1962, i32 356, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1965 = metadata !{i32 358, i32 0, metadata !1964, null}
!1966 = metadata !{i32 359, i32 0, metadata !1964, null}
!1967 = metadata !{i32 362, i32 0, metadata !571, null}
!1968 = metadata !{i32 1417, i32 0, metadata !998, metadata !1969}
!1969 = metadata !{i32 365, i32 0, metadata !570, null}
!1970 = metadata !{i32 1418, i32 0, metadata !998, metadata !1969}
!1971 = metadata !{i32 1423, i32 0, metadata !992, metadata !1972}
!1972 = metadata !{i32 366, i32 0, metadata !570, null}
!1973 = metadata !{i32 1424, i32 0, metadata !992, metadata !1972}
!1974 = metadata !{i32 370, i32 0, metadata !570, null}
!1975 = metadata !{i32 371, i32 0, metadata !1976, null}
!1976 = metadata !{i32 786443, metadata !423, metadata !570, i32 371, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1977 = metadata !{i32 372, i32 0, metadata !1976, null}
!1978 = metadata !{i32 374, i32 0, metadata !1976, null}
!1979 = metadata !{metadata !1521, metadata !1522, i64 8}
!1980 = metadata !{i32 376, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !423, metadata !570, i32 376, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1982 = metadata !{i32 377, i32 0, metadata !1983, null}
!1983 = metadata !{i32 786443, metadata !423, metadata !1981, i32 376, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1984 = metadata !{i32 378, i32 0, metadata !1983, null}
!1985 = metadata !{i32 381, i32 0, metadata !1986, null}
!1986 = metadata !{i32 786443, metadata !423, metadata !570, i32 381, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1987 = metadata !{i32 383, i32 0, metadata !570, null}
!1988 = metadata !{i32 382, i32 0, metadata !1986, null}
!1989 = metadata !{i32 386, i32 0, metadata !1990, null}
!1990 = metadata !{i32 786443, metadata !423, metadata !571, i32 385, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1991 = metadata !{i32 387, i32 0, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !423, metadata !1990, i32 387, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1993 = metadata !{i32 391, i32 0, metadata !1994, null}
!1994 = metadata !{i32 786443, metadata !423, metadata !1990, i32 391, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1995 = metadata !{i32 392, i32 0, metadata !1996, null}
!1996 = metadata !{i32 786443, metadata !423, metadata !1994, i32 391, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1997 = metadata !{i32 395, i32 0, metadata !1990, null}
!1998 = metadata !{i32 396, i32 0, metadata !1990, null}
!1999 = metadata !{i32 398, i32 0, metadata !1990, null}
!2000 = metadata !{i32 400, i32 0, metadata !558, null}
!2001 = metadata !{i32 407, i32 0, metadata !572, null}
!2002 = metadata !{i32 64, i32 0, metadata !1024, metadata !2003}
!2003 = metadata !{i32 409, i32 0, metadata !572, null}
!2004 = metadata !{i32 65, i32 0, metadata !1023, metadata !2003}
!2005 = metadata !{i32 66, i32 0, metadata !1771, metadata !2003}
!2006 = metadata !{i32 411, i32 0, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !423, metadata !572, i32 411, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2008 = metadata !{i32 412, i32 0, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !423, metadata !2007, i32 411, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2010 = metadata !{i32 413, i32 0, metadata !2009, null}
!2011 = metadata !{i32 416, i32 0, metadata !2012, null}
!2012 = metadata !{i32 786443, metadata !423, metadata !572, i32 416, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2013 = metadata !{i32 417, i32 0, metadata !2014, null}
!2014 = metadata !{i32 786443, metadata !423, metadata !2012, i32 416, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2015 = metadata !{i32 418, i32 0, metadata !2014, null}
!2016 = metadata !{i32 419, i32 0, metadata !2014, null}
!2017 = metadata !{i32 422, i32 0, metadata !584, null}
!2018 = metadata !{i32 1417, i32 0, metadata !998, metadata !2019}
!2019 = metadata !{i32 425, i32 0, metadata !583, null}
!2020 = metadata !{i32 1418, i32 0, metadata !998, metadata !2019}
!2021 = metadata !{i32 1423, i32 0, metadata !992, metadata !2022}
!2022 = metadata !{i32 426, i32 0, metadata !583, null}
!2023 = metadata !{i32 1424, i32 0, metadata !992, metadata !2022}
!2024 = metadata !{i32 430, i32 0, metadata !583, null}
!2025 = metadata !{i32 431, i32 0, metadata !2026, null}
!2026 = metadata !{i32 786443, metadata !423, metadata !583, i32 431, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2027 = metadata !{i32 432, i32 0, metadata !2026, null}
!2028 = metadata !{i32 433, i32 0, metadata !2026, null}
!2029 = metadata !{i32 435, i32 0, metadata !2030, null}
!2030 = metadata !{i32 786443, metadata !423, metadata !583, i32 435, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2031 = metadata !{i32 436, i32 0, metadata !2032, null}
!2032 = metadata !{i32 786443, metadata !423, metadata !2030, i32 435, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2033 = metadata !{i32 437, i32 0, metadata !2032, null}
!2034 = metadata !{i32 440, i32 0, metadata !583, null}
!2035 = metadata !{i32 441, i32 0, metadata !2036, null}
!2036 = metadata !{i32 786443, metadata !423, metadata !583, i32 441, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2037 = metadata !{i32 444, i32 0, metadata !583, null}
!2038 = metadata !{i32 442, i32 0, metadata !2036, null}
!2039 = metadata !{i32 449, i32 0, metadata !2040, null}
!2040 = metadata !{i32 786443, metadata !423, metadata !586, i32 449, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2041 = metadata !{i32 452, i32 0, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !423, metadata !2043, i32 452, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2043 = metadata !{i32 786443, metadata !423, metadata !2040, i32 451, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2044 = metadata !{i32 453, i32 0, metadata !2042, null}
!2045 = metadata !{i32 455, i32 0, metadata !2046, null}
!2046 = metadata !{i32 786443, metadata !423, metadata !2047, i32 455, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2047 = metadata !{i32 786443, metadata !423, metadata !2042, i32 454, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2048 = metadata !{i32 456, i32 0, metadata !2046, null}
!2049 = metadata !{i32 460, i32 0, metadata !2050, null}
!2050 = metadata !{i32 786443, metadata !423, metadata !586, i32 460, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2051 = metadata !{i32 461, i32 0, metadata !2050, null}
!2052 = metadata !{i32 463, i32 0, metadata !2053, null}
!2053 = metadata !{i32 786443, metadata !423, metadata !586, i32 463, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2054 = metadata !{i32 464, i32 0, metadata !2053, null}
!2055 = metadata !{i32 466, i32 0, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !423, metadata !586, i32 466, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2057 = metadata !{i32 467, i32 0, metadata !2056, null}
!2058 = metadata !{i32 469, i32 0, metadata !586, null}
!2059 = metadata !{i32 470, i32 0, metadata !586, null}
!2060 = metadata !{i32 472, i32 0, metadata !572, null}
!2061 = metadata !{i32 64, i32 0, metadata !1024, metadata !2062}
!2062 = metadata !{i32 477, i32 0, metadata !587, null}
!2063 = metadata !{i32 65, i32 0, metadata !1023, metadata !2062}
!2064 = metadata !{i32 66, i32 0, metadata !1771, metadata !2062}
!2065 = metadata !{i32 479, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !423, metadata !587, i32 479, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2067 = metadata !{i32 480, i32 0, metadata !2068, null}
!2068 = metadata !{i32 786443, metadata !423, metadata !2066, i32 479, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2069 = metadata !{i32 481, i32 0, metadata !2068, null}
!2070 = metadata !{i32 484, i32 0, metadata !2071, null}
!2071 = metadata !{i32 786443, metadata !423, metadata !587, i32 484, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2072 = metadata !{i32 491, i32 0, metadata !2073, null}
!2073 = metadata !{i32 786443, metadata !423, metadata !2074, i32 491, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2074 = metadata !{i32 786443, metadata !423, metadata !2071, i32 484, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2075 = metadata !{i32 492, i32 0, metadata !2076, null}
!2076 = metadata !{i32 786443, metadata !423, metadata !2073, i32 491, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2077 = metadata !{i32 493, i32 0, metadata !2076, null}
!2078 = metadata !{i32 494, i32 0, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !423, metadata !2073, i32 493, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2080 = metadata !{i32 498, i32 0, metadata !2081, null}
!2081 = metadata !{i32 786443, metadata !423, metadata !2079, i32 498, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2082 = metadata !{i32 499, i32 0, metadata !2083, null}
!2083 = metadata !{i32 786443, metadata !423, metadata !2081, i32 498, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2084 = metadata !{i32 500, i32 0, metadata !2083, null}
!2085 = metadata !{i32 501, i32 0, metadata !2083, null}
!2086 = metadata !{i32 504, i32 0, metadata !2087, null}
!2087 = metadata !{i32 786443, metadata !423, metadata !2074, i32 504, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2088 = metadata !{i32 505, i32 0, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !423, metadata !2087, i32 504, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2090 = metadata !{i32 506, i32 0, metadata !2089, null}
!2091 = metadata !{i32 509, i32 0, metadata !2074, null}
!2092 = metadata !{i32 510, i32 0, metadata !2074, null}
!2093 = metadata !{i32 513, i32 0, metadata !587, null}
!2094 = metadata !{i32 515, i32 0, metadata !2095, null}
!2095 = metadata !{i32 786443, metadata !423, metadata !587, i32 513, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2096 = metadata !{i32 516, i32 0, metadata !2095, null}
!2097 = metadata !{i32 518, i32 0, metadata !2098, null}
!2098 = metadata !{i32 786443, metadata !423, metadata !2095, i32 517, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2099 = metadata !{i32 519, i32 0, metadata !2098, null}
!2100 = metadata !{i32 523, i32 0, metadata !2101, null}
!2101 = metadata !{i32 786443, metadata !423, metadata !587, i32 523, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2102 = metadata !{i32 524, i32 0, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !423, metadata !2101, i32 523, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2104 = metadata !{i32 525, i32 0, metadata !2103, null}
!2105 = metadata !{i32 528, i32 0, metadata !587, null}
!2106 = metadata !{i32 529, i32 0, metadata !587, null}
!2107 = metadata !{i32 530, i32 0, metadata !587, null}
!2108 = metadata !{i32 40, i32 0, metadata !1032, metadata !2109}
!2109 = metadata !{i32 533, i32 0, metadata !596, null}
!2110 = metadata !{i32 43, i32 0, metadata !1645, metadata !2109}
!2111 = metadata !{i32 46, i32 0, metadata !1043, metadata !2109}
!2112 = metadata !{i32 47, i32 0, metadata !1041, metadata !2109}
!2113 = metadata !{i32 48, i32 0, metadata !1040, metadata !2109}
!2114 = metadata !{i32 49, i32 0, metadata !1650, metadata !2109}
!2115 = metadata !{i32 534, i32 0, metadata !2116, null}
!2116 = metadata !{i32 786443, metadata !423, metadata !596, i32 534, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2117 = metadata !{i32 535, i32 0, metadata !2118, null}
!2118 = metadata !{i32 786443, metadata !423, metadata !2116, i32 534, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2119 = metadata !{i32 536, i32 0, metadata !2118, null}
!2120 = metadata !{i32 1417, i32 0, metadata !998, metadata !2121}
!2121 = metadata !{i32 1429, i32 0, metadata !979, metadata !2122}
!2122 = metadata !{i32 541, i32 0, metadata !604, null}
!2123 = metadata !{i32 1418, i32 0, metadata !998, metadata !2121}
!2124 = metadata !{i32 1432, i32 0, metadata !988, metadata !2122}
!2125 = metadata !{i32 1433, i32 0, metadata !987, metadata !2122}
!2126 = metadata !{i32 1434, i32 0, metadata !991, metadata !2122}
!2127 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2122}
!2128 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2122}
!2129 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2122}
!2130 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2122}
!2131 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2122}
!2132 = metadata !{i32 1442, i32 0, metadata !990, metadata !2122}
!2133 = metadata !{i32 1443, i32 0, metadata !990, metadata !2122}
!2134 = metadata !{i32 1444, i32 0, metadata !990, metadata !2122}
!2135 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2122}
!2136 = metadata !{i32 545, i32 0, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !423, metadata !604, i32 545, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2138 = metadata !{i32 546, i32 0, metadata !2137, null}
!2139 = metadata !{i32 549, i32 0, metadata !596, null}
!2140 = metadata !{i32 552, i32 0, metadata !633, null}
!2141 = metadata !{i32 64, i32 0, metadata !1024, metadata !2142}
!2142 = metadata !{i32 553, i32 0, metadata !632, null}
!2143 = metadata !{i32 65, i32 0, metadata !1023, metadata !2142}
!2144 = metadata !{i32 66, i32 0, metadata !1771, metadata !2142}
!2145 = metadata !{i32 555, i32 0, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !423, metadata !632, i32 555, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2147 = metadata !{i32 556, i32 0, metadata !2148, null}
!2148 = metadata !{i32 786443, metadata !423, metadata !2146, i32 555, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2149 = metadata !{i32 557, i32 0, metadata !2148, null}
!2150 = metadata !{i32 558, i32 0, metadata !2151, null}
!2151 = metadata !{i32 786443, metadata !423, metadata !2146, i32 558, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2152 = metadata !{i32 559, i32 0, metadata !2153, null}
!2153 = metadata !{i32 786443, metadata !423, metadata !2151, i32 558, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2154 = metadata !{i32 560, i32 0, metadata !2153, null}
!2155 = metadata !{i32 561, i32 0, metadata !2153, null}
!2156 = metadata !{i32 563, i32 0, metadata !632, null}
!2157 = metadata !{i32 564, i32 0, metadata !632, null}
!2158 = metadata !{i32 40, i32 0, metadata !1032, metadata !2159}
!2159 = metadata !{i32 565, i32 0, metadata !605, null}
!2160 = metadata !{i32 43, i32 0, metadata !1645, metadata !2159}
!2161 = metadata !{i32 46, i32 0, metadata !1043, metadata !2159}
!2162 = metadata !{i32 47, i32 0, metadata !1041, metadata !2159}
!2163 = metadata !{i32 48, i32 0, metadata !1040, metadata !2159}
!2164 = metadata !{i32 49, i32 0, metadata !1650, metadata !2159}
!2165 = metadata !{i32 566, i32 0, metadata !2166, null}
!2166 = metadata !{i32 786443, metadata !423, metadata !605, i32 566, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2167 = metadata !{i32 567, i32 0, metadata !2168, null}
!2168 = metadata !{i32 786443, metadata !423, metadata !2166, i32 566, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2169 = metadata !{i32 568, i32 0, metadata !2168, null}
!2170 = metadata !{i32 572, i32 0, metadata !605, null}
!2171 = metadata !{i32 1417, i32 0, metadata !998, metadata !2172}
!2172 = metadata !{i32 1429, i32 0, metadata !979, metadata !2173}
!2173 = metadata !{i32 573, i32 0, metadata !605, null}
!2174 = metadata !{i32 1418, i32 0, metadata !998, metadata !2172}
!2175 = metadata !{i32 1432, i32 0, metadata !988, metadata !2173}
!2176 = metadata !{i32 1433, i32 0, metadata !987, metadata !2173}
!2177 = metadata !{i32 1434, i32 0, metadata !991, metadata !2173}
!2178 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2173}
!2179 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2173}
!2180 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2173}
!2181 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2173}
!2182 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2173}
!2183 = metadata !{i32 1442, i32 0, metadata !990, metadata !2173}
!2184 = metadata !{i32 1443, i32 0, metadata !990, metadata !2173}
!2185 = metadata !{i32 1444, i32 0, metadata !990, metadata !2173}
!2186 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2173}
!2187 = metadata !{i32 581, i32 0, metadata !2188, null}
!2188 = metadata !{i32 786443, metadata !423, metadata !605, i32 581, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2189 = metadata !{i32 582, i32 0, metadata !2188, null}
!2190 = metadata !{i32 584, i32 0, metadata !605, null}
!2191 = metadata !{i32 40, i32 0, metadata !1032, metadata !2192}
!2192 = metadata !{i32 588, i32 0, metadata !636, null}
!2193 = metadata !{i32 43, i32 0, metadata !1645, metadata !2192}
!2194 = metadata !{i32 46, i32 0, metadata !1043, metadata !2192}
!2195 = metadata !{i32 47, i32 0, metadata !1041, metadata !2192}
!2196 = metadata !{i32 48, i32 0, metadata !1040, metadata !2192}
!2197 = metadata !{i32 49, i32 0, metadata !1650, metadata !2192}
!2198 = metadata !{i32 589, i32 0, metadata !2199, null}
!2199 = metadata !{i32 786443, metadata !423, metadata !636, i32 589, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2200 = metadata !{i32 590, i32 0, metadata !2201, null}
!2201 = metadata !{i32 786443, metadata !423, metadata !2199, i32 589, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2202 = metadata !{i32 591, i32 0, metadata !2201, null}
!2203 = metadata !{i32 1417, i32 0, metadata !998, metadata !2204}
!2204 = metadata !{i32 1429, i32 0, metadata !979, metadata !2205}
!2205 = metadata !{i32 596, i32 0, metadata !642, null}
!2206 = metadata !{i32 1418, i32 0, metadata !998, metadata !2204}
!2207 = metadata !{i32 1432, i32 0, metadata !988, metadata !2205}
!2208 = metadata !{i32 1433, i32 0, metadata !987, metadata !2205}
!2209 = metadata !{i32 1434, i32 0, metadata !991, metadata !2205}
!2210 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2205}
!2211 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2205}
!2212 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2205}
!2213 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2205}
!2214 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2205}
!2215 = metadata !{i32 1442, i32 0, metadata !990, metadata !2205}
!2216 = metadata !{i32 1443, i32 0, metadata !990, metadata !2205}
!2217 = metadata !{i32 1444, i32 0, metadata !990, metadata !2205}
!2218 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2205}
!2219 = metadata !{i32 600, i32 0, metadata !2220, null}
!2220 = metadata !{i32 786443, metadata !423, metadata !642, i32 600, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2221 = metadata !{i32 601, i32 0, metadata !2220, null}
!2222 = metadata !{i32 604, i32 0, metadata !636, null}
!2223 = metadata !{i32 40, i32 0, metadata !1032, metadata !2224}
!2224 = metadata !{i32 607, i32 0, metadata !643, null}
!2225 = metadata !{i32 43, i32 0, metadata !1645, metadata !2224}
!2226 = metadata !{i32 46, i32 0, metadata !1043, metadata !2224}
!2227 = metadata !{i32 47, i32 0, metadata !1041, metadata !2224}
!2228 = metadata !{i32 48, i32 0, metadata !1040, metadata !2224}
!2229 = metadata !{i32 49, i32 0, metadata !1650, metadata !2224}
!2230 = metadata !{i32 609, i32 0, metadata !2231, null}
!2231 = metadata !{i32 786443, metadata !423, metadata !643, i32 609, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2232 = metadata !{i32 611, i32 0, metadata !2233, null}
!2233 = metadata !{i32 786443, metadata !423, metadata !2231, i32 609, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2234 = metadata !{i32 612, i32 0, metadata !2233, null}
!2235 = metadata !{i32 613, i32 0, metadata !2233, null}
!2236 = metadata !{i32 1417, i32 0, metadata !998, metadata !2237}
!2237 = metadata !{i32 1429, i32 0, metadata !979, metadata !2238}
!2238 = metadata !{i32 617, i32 0, metadata !650, null}
!2239 = metadata !{i32 1418, i32 0, metadata !998, metadata !2237}
!2240 = metadata !{i32 1432, i32 0, metadata !988, metadata !2238}
!2241 = metadata !{i32 1433, i32 0, metadata !987, metadata !2238}
!2242 = metadata !{i32 1434, i32 0, metadata !991, metadata !2238}
!2243 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2238}
!2244 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2238}
!2245 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2238}
!2246 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2238}
!2247 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2238}
!2248 = metadata !{i32 1442, i32 0, metadata !990, metadata !2238}
!2249 = metadata !{i32 1443, i32 0, metadata !990, metadata !2238}
!2250 = metadata !{i32 1444, i32 0, metadata !990, metadata !2238}
!2251 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2238}
!2252 = metadata !{i32 618, i32 0, metadata !2253, null}
!2253 = metadata !{i32 786443, metadata !423, metadata !650, i32 618, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2254 = metadata !{i32 619, i32 0, metadata !2253, null}
!2255 = metadata !{i32 622, i32 0, metadata !643, null}
!2256 = metadata !{i32 64, i32 0, metadata !1024, metadata !2257}
!2257 = metadata !{i32 625, i32 0, metadata !651, null}
!2258 = metadata !{i32 65, i32 0, metadata !1023, metadata !2257}
!2259 = metadata !{i32 66, i32 0, metadata !1771, metadata !2257}
!2260 = metadata !{i32 627, i32 0, metadata !2261, null}
!2261 = metadata !{i32 786443, metadata !423, metadata !651, i32 627, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2262 = metadata !{i32 628, i32 0, metadata !2263, null}
!2263 = metadata !{i32 786443, metadata !423, metadata !2261, i32 627, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2264 = metadata !{i32 629, i32 0, metadata !2263, null}
!2265 = metadata !{i32 632, i32 0, metadata !657, null}
!2266 = metadata !{i32 633, i32 0, metadata !2267, null}
!2267 = metadata !{i32 786443, metadata !423, metadata !657, i32 632, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2268 = metadata !{i32 634, i32 0, metadata !2267, null}
!2269 = metadata !{i32 635, i32 0, metadata !2267, null}
!2270 = metadata !{i32 637, i32 0, metadata !656, null}
!2271 = metadata !{i32 638, i32 0, metadata !2272, null}
!2272 = metadata !{i32 786443, metadata !423, metadata !656, i32 638, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2273 = metadata !{i32 639, i32 0, metadata !2272, null}
!2274 = metadata !{i32 642, i32 0, metadata !651, null}
!2275 = metadata !{i32 40, i32 0, metadata !1032, metadata !2276}
!2276 = metadata !{i32 661, i32 0, metadata !658, null}
!2277 = metadata !{i32 43, i32 0, metadata !1645, metadata !2276}
!2278 = metadata !{i32 46, i32 0, metadata !1043, metadata !2276}
!2279 = metadata !{i32 47, i32 0, metadata !1041, metadata !2276}
!2280 = metadata !{i32 48, i32 0, metadata !1040, metadata !2276}
!2281 = metadata !{i32 49, i32 0, metadata !1650, metadata !2276}
!2282 = metadata !{i32 51, i32 0, metadata !1040, metadata !2276}
!2283 = metadata !{i32 663, i32 0, metadata !658, null}
!2284 = metadata !{i32 664, i32 0, metadata !2285, null}
!2285 = metadata !{i32 786443, metadata !423, metadata !658, i32 664, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2286 = metadata !{metadata !1505, metadata !1295, i64 88}
!2287 = metadata !{i32 665, i32 0, metadata !2288, null}
!2288 = metadata !{i32 786443, metadata !423, metadata !2285, i32 664, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2289 = metadata !{i32 666, i32 0, metadata !2288, null}
!2290 = metadata !{i32 667, i32 0, metadata !2288, null}
!2291 = metadata !{i32 670, i32 0, metadata !667, null}
!2292 = metadata !{i32 646, i32 0, metadata !2293, metadata !2294}
!2293 = metadata !{i32 786443, metadata !423, metadata !1011, i32 646, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2294 = metadata !{i32 671, i32 0, metadata !2295, null}
!2295 = metadata !{i32 786443, metadata !423, metadata !667, i32 670, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2296 = metadata !{i32 647, i32 0, metadata !2297, metadata !2294}
!2297 = metadata !{i32 786443, metadata !423, metadata !2298, i32 647, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2298 = metadata !{i32 786443, metadata !423, metadata !2293, i32 646, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2299 = metadata !{i32 648, i32 0, metadata !2297, metadata !2294}
!2300 = metadata !{i32 649, i32 0, metadata !2298, metadata !2294}
!2301 = metadata !{i32 651, i32 0, metadata !2298, metadata !2294}
!2302 = metadata !{i32 653, i32 0, metadata !2303, metadata !2294}
!2303 = metadata !{i32 786443, metadata !423, metadata !2293, i32 652, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2304 = metadata !{i32 654, i32 0, metadata !2303, metadata !2294}
!2305 = metadata !{i32 1417, i32 0, metadata !998, metadata !2306}
!2306 = metadata !{i32 1429, i32 0, metadata !979, metadata !2307}
!2307 = metadata !{i32 673, i32 0, metadata !666, null}
!2308 = metadata !{i32 1418, i32 0, metadata !998, metadata !2306}
!2309 = metadata !{i32 1432, i32 0, metadata !988, metadata !2307}
!2310 = metadata !{i32 1433, i32 0, metadata !987, metadata !2307}
!2311 = metadata !{i32 1434, i32 0, metadata !991, metadata !2307}
!2312 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2307}
!2313 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2307}
!2314 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2307}
!2315 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2307}
!2316 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2307}
!2317 = metadata !{i32 1442, i32 0, metadata !990, metadata !2307}
!2318 = metadata !{i32 1443, i32 0, metadata !990, metadata !2307}
!2319 = metadata !{i32 1444, i32 0, metadata !990, metadata !2307}
!2320 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2307}
!2321 = metadata !{i32 674, i32 0, metadata !2322, null}
!2322 = metadata !{i32 786443, metadata !423, metadata !666, i32 674, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2323 = metadata !{i32 675, i32 0, metadata !2322, null}
!2324 = metadata !{i32 678, i32 0, metadata !658, null}
!2325 = metadata !{i32 64, i32 0, metadata !1024, metadata !2326}
!2326 = metadata !{i32 683, i32 0, metadata !668, null}
!2327 = metadata !{i32 65, i32 0, metadata !1023, metadata !2326}
!2328 = metadata !{i32 66, i32 0, metadata !1771, metadata !2326}
!2329 = metadata !{i32 685, i32 0, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !423, metadata !668, i32 685, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2331 = metadata !{i32 686, i32 0, metadata !2332, null}
!2332 = metadata !{i32 786443, metadata !423, metadata !2330, i32 685, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2333 = metadata !{i32 687, i32 0, metadata !2332, null}
!2334 = metadata !{i32 690, i32 0, metadata !668, null}
!2335 = metadata !{i32 691, i32 0, metadata !2336, null}
!2336 = metadata !{i32 786443, metadata !423, metadata !668, i32 691, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2337 = metadata !{metadata !1505, metadata !1295, i64 96}
!2338 = metadata !{i32 692, i32 0, metadata !2339, null}
!2339 = metadata !{i32 786443, metadata !423, metadata !2336, i32 691, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2340 = metadata !{i32 693, i32 0, metadata !2339, null}
!2341 = metadata !{i32 694, i32 0, metadata !2339, null}
!2342 = metadata !{i32 697, i32 0, metadata !677, null}
!2343 = metadata !{i32 646, i32 0, metadata !2293, metadata !2344}
!2344 = metadata !{i32 698, i32 0, metadata !2345, null}
!2345 = metadata !{i32 786443, metadata !423, metadata !677, i32 697, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2346 = metadata !{i32 647, i32 0, metadata !2297, metadata !2344}
!2347 = metadata !{i32 648, i32 0, metadata !2297, metadata !2344}
!2348 = metadata !{i32 649, i32 0, metadata !2298, metadata !2344}
!2349 = metadata !{i32 651, i32 0, metadata !2298, metadata !2344}
!2350 = metadata !{i32 653, i32 0, metadata !2303, metadata !2344}
!2351 = metadata !{i32 654, i32 0, metadata !2303, metadata !2344}
!2352 = metadata !{i32 700, i32 0, metadata !676, null}
!2353 = metadata !{i32 701, i32 0, metadata !2354, null}
!2354 = metadata !{i32 786443, metadata !423, metadata !676, i32 701, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2355 = metadata !{i32 702, i32 0, metadata !2354, null}
!2356 = metadata !{i32 705, i32 0, metadata !668, null}
!2357 = metadata !{i32 40, i32 0, metadata !1032, metadata !2358}
!2358 = metadata !{i32 714, i32 0, metadata !678, null}
!2359 = metadata !{i32 43, i32 0, metadata !1645, metadata !2358}
!2360 = metadata !{i32 46, i32 0, metadata !1043, metadata !2358}
!2361 = metadata !{i32 47, i32 0, metadata !1041, metadata !2358}
!2362 = metadata !{i32 48, i32 0, metadata !1040, metadata !2358}
!2363 = metadata !{i32 49, i32 0, metadata !1650, metadata !2358}
!2364 = metadata !{i32 716, i32 0, metadata !690, null}
!2365 = metadata !{i32 708, i32 0, metadata !1004, metadata !2366}
!2366 = metadata !{i32 717, i32 0, metadata !2367, null}
!2367 = metadata !{i32 786443, metadata !423, metadata !690, i32 716, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2368 = metadata !{i32 709, i32 0, metadata !1004, metadata !2366}
!2369 = metadata !{i32 1417, i32 0, metadata !998, metadata !2370}
!2370 = metadata !{i32 1429, i32 0, metadata !979, metadata !2371}
!2371 = metadata !{i32 719, i32 0, metadata !689, null}
!2372 = metadata !{i32 1418, i32 0, metadata !998, metadata !2370}
!2373 = metadata !{i32 1432, i32 0, metadata !988, metadata !2371}
!2374 = metadata !{i32 1433, i32 0, metadata !987, metadata !2371}
!2375 = metadata !{i32 1434, i32 0, metadata !991, metadata !2371}
!2376 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2371}
!2377 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2371}
!2378 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2371}
!2379 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2371}
!2380 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2371}
!2381 = metadata !{i32 1442, i32 0, metadata !990, metadata !2371}
!2382 = metadata !{i32 1443, i32 0, metadata !990, metadata !2371}
!2383 = metadata !{i32 1444, i32 0, metadata !990, metadata !2371}
!2384 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2371}
!2385 = metadata !{i32 720, i32 0, metadata !2386, null}
!2386 = metadata !{i32 786443, metadata !423, metadata !689, i32 720, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2387 = metadata !{i32 721, i32 0, metadata !2386, null}
!2388 = metadata !{i32 724, i32 0, metadata !678, null}
!2389 = metadata !{i32 64, i32 0, metadata !1024, metadata !2390}
!2390 = metadata !{i32 727, i32 0, metadata !691, null}
!2391 = metadata !{i32 65, i32 0, metadata !1023, metadata !2390}
!2392 = metadata !{i32 66, i32 0, metadata !1771, metadata !2390}
!2393 = metadata !{i32 729, i32 0, metadata !2394, null}
!2394 = metadata !{i32 786443, metadata !423, metadata !691, i32 729, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2395 = metadata !{i32 730, i32 0, metadata !2396, null}
!2396 = metadata !{i32 786443, metadata !423, metadata !2394, i32 729, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2397 = metadata !{i32 731, i32 0, metadata !2396, null}
!2398 = metadata !{i32 734, i32 0, metadata !701, null}
!2399 = metadata !{i32 708, i32 0, metadata !1004, metadata !2400}
!2400 = metadata !{i32 735, i32 0, metadata !2401, null}
!2401 = metadata !{i32 786443, metadata !423, metadata !701, i32 734, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2402 = metadata !{i32 709, i32 0, metadata !1004, metadata !2400}
!2403 = metadata !{i32 737, i32 0, metadata !700, null}
!2404 = metadata !{i32 738, i32 0, metadata !2405, null}
!2405 = metadata !{i32 786443, metadata !423, metadata !700, i32 738, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2406 = metadata !{i32 739, i32 0, metadata !2405, null}
!2407 = metadata !{i32 742, i32 0, metadata !691, null}
!2408 = metadata !{i32 40, i32 0, metadata !1032, metadata !2409}
!2409 = metadata !{i32 746, i32 0, metadata !702, null}
!2410 = metadata !{i32 43, i32 0, metadata !1645, metadata !2409}
!2411 = metadata !{i32 46, i32 0, metadata !1043, metadata !2409}
!2412 = metadata !{i32 47, i32 0, metadata !1041, metadata !2409}
!2413 = metadata !{i32 48, i32 0, metadata !1040, metadata !2409}
!2414 = metadata !{i32 49, i32 0, metadata !1650, metadata !2409}
!2415 = metadata !{i32 748, i32 0, metadata !710, null}
!2416 = metadata !{i32 708, i32 0, metadata !1004, metadata !2417}
!2417 = metadata !{i32 749, i32 0, metadata !2418, null}
!2418 = metadata !{i32 786443, metadata !423, metadata !710, i32 748, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2419 = metadata !{i32 709, i32 0, metadata !1004, metadata !2417}
!2420 = metadata !{i32 1417, i32 0, metadata !998, metadata !2421}
!2421 = metadata !{i32 1429, i32 0, metadata !979, metadata !2422}
!2422 = metadata !{i32 751, i32 0, metadata !709, null}
!2423 = metadata !{i32 1418, i32 0, metadata !998, metadata !2421}
!2424 = metadata !{i32 1432, i32 0, metadata !988, metadata !2422}
!2425 = metadata !{i32 1433, i32 0, metadata !987, metadata !2422}
!2426 = metadata !{i32 1434, i32 0, metadata !991, metadata !2422}
!2427 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2422}
!2428 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2422}
!2429 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2422}
!2430 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2422}
!2431 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2422}
!2432 = metadata !{i32 1442, i32 0, metadata !990, metadata !2422}
!2433 = metadata !{i32 1443, i32 0, metadata !990, metadata !2422}
!2434 = metadata !{i32 1444, i32 0, metadata !990, metadata !2422}
!2435 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2422}
!2436 = metadata !{i32 752, i32 0, metadata !2437, null}
!2437 = metadata !{i32 786443, metadata !423, metadata !709, i32 752, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2438 = metadata !{i32 753, i32 0, metadata !2437, null}
!2439 = metadata !{i32 756, i32 0, metadata !702, null}
!2440 = metadata !{i32 64, i32 0, metadata !1024, metadata !2441}
!2441 = metadata !{i32 759, i32 0, metadata !711, null}
!2442 = metadata !{i32 65, i32 0, metadata !1023, metadata !2441}
!2443 = metadata !{i32 66, i32 0, metadata !1771, metadata !2441}
!2444 = metadata !{i32 761, i32 0, metadata !2445, null}
!2445 = metadata !{i32 786443, metadata !423, metadata !711, i32 761, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2446 = metadata !{i32 762, i32 0, metadata !2447, null}
!2447 = metadata !{i32 786443, metadata !423, metadata !2445, i32 761, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2448 = metadata !{i32 763, i32 0, metadata !2447, null}
!2449 = metadata !{i32 766, i32 0, metadata !720, null}
!2450 = metadata !{i32 768, i32 0, metadata !719, null}
!2451 = metadata !{i32 772, i32 0, metadata !2452, null}
!2452 = metadata !{i32 786443, metadata !423, metadata !719, i32 772, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2453 = metadata !{i32 773, i32 0, metadata !2452, null}
!2454 = metadata !{i32 777, i32 0, metadata !711, null}
!2455 = metadata !{i32 778, i32 0, metadata !711, null}
!2456 = metadata !{i32 779, i32 0, metadata !711, null}
!2457 = metadata !{i32 64, i32 0, metadata !1024, metadata !2458}
!2458 = metadata !{i32 783, i32 0, metadata !721, null}
!2459 = metadata !{i32 65, i32 0, metadata !1023, metadata !2458}
!2460 = metadata !{i32 66, i32 0, metadata !1771, metadata !2458}
!2461 = metadata !{i32 785, i32 0, metadata !721, null}
!2462 = metadata !{i32 787, i32 0, metadata !2463, null}
!2463 = metadata !{i32 786443, metadata !423, metadata !721, i32 787, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2464 = metadata !{i32 788, i32 0, metadata !2465, null}
!2465 = metadata !{i32 786443, metadata !423, metadata !2463, i32 787, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2466 = metadata !{i32 789, i32 0, metadata !2465, null}
!2467 = metadata !{i32 792, i32 0, metadata !2468, null}
!2468 = metadata !{i32 786443, metadata !423, metadata !721, i32 792, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2469 = metadata !{i32 793, i32 0, metadata !2470, null}
!2470 = metadata !{i32 786443, metadata !423, metadata !2468, i32 792, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2471 = metadata !{i32 794, i32 0, metadata !2470, null}
!2472 = metadata !{i32 795, i32 0, metadata !2470, null}
!2473 = metadata !{i32 798, i32 0, metadata !730, null}
!2474 = metadata !{i32 799, i32 0, metadata !2475, null}
!2475 = metadata !{i32 786443, metadata !423, metadata !730, i32 798, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2476 = metadata !{i32 800, i32 0, metadata !2475, null}
!2477 = metadata !{i32 801, i32 0, metadata !2475, null}
!2478 = metadata !{i32 804, i32 0, metadata !729, null}
!2479 = metadata !{i32 808, i32 0, metadata !2480, null}
!2480 = metadata !{i32 786443, metadata !423, metadata !729, i32 808, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2481 = metadata !{i32 809, i32 0, metadata !2480, null}
!2482 = metadata !{i32 812, i32 0, metadata !721, null}
!2483 = metadata !{i32 64, i32 0, metadata !1024, metadata !2484}
!2484 = metadata !{i32 815, i32 0, metadata !731, null}
!2485 = metadata !{i32 65, i32 0, metadata !1023, metadata !2484}
!2486 = metadata !{i32 66, i32 0, metadata !1771, metadata !2484}
!2487 = metadata !{i32 817, i32 0, metadata !2488, null}
!2488 = metadata !{i32 786443, metadata !423, metadata !731, i32 817, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2489 = metadata !{i32 818, i32 0, metadata !2490, null}
!2490 = metadata !{i32 786443, metadata !423, metadata !2488, i32 817, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2491 = metadata !{i32 819, i32 0, metadata !2490, null}
!2492 = metadata !{i32 822, i32 0, metadata !751, null}
!2493 = metadata !{i32 823, i32 0, metadata !2494, null}
!2494 = metadata !{i32 786443, metadata !423, metadata !751, i32 822, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2495 = metadata !{i32 824, i32 0, metadata !2494, null}
!2496 = metadata !{i32 825, i32 0, metadata !2494, null}
!2497 = metadata !{i32 827, i32 0, metadata !749, null}
!2498 = metadata !{i32 832, i32 0, metadata !748, null}
!2499 = metadata !{i32 833, i32 0, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !423, metadata !748, i32 833, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2501 = metadata !{i32 838, i32 0, metadata !756, null}
!2502 = metadata !{i32 835, i32 0, metadata !2503, null}
!2503 = metadata !{i32 786443, metadata !423, metadata !2500, i32 834, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2504 = metadata !{i32 836, i32 0, metadata !2503, null}
!2505 = metadata !{i32 839, i32 0, metadata !755, null}
!2506 = metadata !{i32 840, i32 0, metadata !755, null}
!2507 = metadata !{metadata !2508, metadata !1522, i64 0}
!2508 = metadata !{metadata !"dirent64", metadata !1522, i64 0, metadata !1522, i64 8, metadata !2509, i64 16, metadata !1291, i64 18, metadata !1291, i64 19}
!2509 = metadata !{metadata !"short", metadata !1291, i64 0}
!2510 = metadata !{i32 841, i32 0, metadata !755, null}
!2511 = metadata !{metadata !2508, metadata !2509, i64 16}
!2512 = metadata !{i32 842, i32 0, metadata !755, null}
!2513 = metadata !{metadata !2508, metadata !1291, i64 18}
!2514 = metadata !{i32 843, i32 0, metadata !755, null}
!2515 = metadata !{i32 844, i32 0, metadata !755, null}
!2516 = metadata !{i32 845, i32 0, metadata !755, null}
!2517 = metadata !{metadata !2508, metadata !1522, i64 8}
!2518 = metadata !{i32 846, i32 0, metadata !755, null}
!2519 = metadata !{i32 847, i32 0, metadata !755, null}
!2520 = metadata !{i32 851, i32 0, metadata !748, null}
!2521 = metadata !{i32 852, i32 0, metadata !748, null}
!2522 = metadata !{i32 853, i32 0, metadata !748, null}
!2523 = metadata !{i32 854, i32 0, metadata !748, null}
!2524 = metadata !{i32 855, i32 0, metadata !748, null}
!2525 = metadata !{i32 856, i32 0, metadata !748, null}
!2526 = metadata !{i32 857, i32 0, metadata !748, null}
!2527 = metadata !{i32 858, i32 0, metadata !748, null}
!2528 = metadata !{i32 860, i32 0, metadata !748, null}
!2529 = metadata !{i32 862, i32 0, metadata !758, null}
!2530 = metadata !{i32 873, i32 0, metadata !758, null}
!2531 = metadata !{i32 874, i32 0, metadata !758, null}
!2532 = metadata !{i32 875, i32 0, metadata !758, null}
!2533 = metadata !{i32 876, i32 0, metadata !758, null}
!2534 = metadata !{i32 877, i32 0, metadata !763, null}
!2535 = metadata !{i32 878, i32 0, metadata !2536, null}
!2536 = metadata !{i32 786443, metadata !423, metadata !763, i32 877, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2537 = metadata !{i32 879, i32 0, metadata !2536, null}
!2538 = metadata !{i32 881, i32 0, metadata !762, null}
!2539 = metadata !{i32 885, i32 0, metadata !762, null}
!2540 = metadata !{i32 886, i32 0, metadata !765, null}
!2541 = metadata !{i32 887, i32 0, metadata !765, null}
!2542 = metadata !{i32 888, i32 0, metadata !765, null}
!2543 = metadata !{i32 895, i32 0, metadata !731, null}
!2544 = metadata !{i32 64, i32 0, metadata !1024, metadata !2545}
!2545 = metadata !{i32 902, i32 0, metadata !766, null}
!2546 = metadata !{i32 65, i32 0, metadata !1023, metadata !2545}
!2547 = metadata !{i32 66, i32 0, metadata !1771, metadata !2545}
!2548 = metadata !{i32 910, i32 0, metadata !2549, null}
!2549 = metadata !{i32 786443, metadata !423, metadata !766, i32 910, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2550 = metadata !{i32 911, i32 0, metadata !2551, null}
!2551 = metadata !{i32 786443, metadata !423, metadata !2549, i32 910, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2552 = metadata !{i32 912, i32 0, metadata !2551, null}
!2553 = metadata !{i32 915, i32 0, metadata !766, null}
!2554 = metadata !{i32 916, i32 0, metadata !766, null}
!2555 = metadata !{i32 917, i32 0, metadata !766, null}
!2556 = metadata !{i32 919, i32 0, metadata !788, null}
!2557 = metadata !{i32 920, i32 0, metadata !787, null}
!2558 = metadata !{i32 922, i32 0, metadata !787, null}
!2559 = metadata !{i32 926, i32 0, metadata !790, null}
!2560 = metadata !{i32 929, i32 0, metadata !2561, null}
!2561 = metadata !{i32 786443, metadata !423, metadata !790, i32 929, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2562 = metadata !{metadata !2563, metadata !1290, i64 24}
!2563 = metadata !{metadata !"stat", metadata !1522, i64 0, metadata !1522, i64 8, metadata !1522, i64 16, metadata !1290, i64 24, metadata !1290, i64 28, metadata !1290, i64 32, metadata !1290, i64 36, metadata !1522, i64 40, metadata !1522, i64 48, met
!2564 = metadata !{i32 932, i32 0, metadata !2565, null}
!2565 = metadata !{i32 786443, metadata !423, metadata !2561, i32 929, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2566 = metadata !{metadata !2567, metadata !1290, i64 0}
!2567 = metadata !{metadata !"termios", metadata !1290, i64 0, metadata !1290, i64 4, metadata !1290, i64 8, metadata !1290, i64 12, metadata !1291, i64 16, metadata !1291, i64 17, metadata !1290, i64 52, metadata !1290, i64 56}
!2568 = metadata !{i32 933, i32 0, metadata !2565, null}
!2569 = metadata !{metadata !2567, metadata !1290, i64 4}
!2570 = metadata !{i32 934, i32 0, metadata !2565, null}
!2571 = metadata !{metadata !2567, metadata !1290, i64 8}
!2572 = metadata !{i32 935, i32 0, metadata !2565, null}
!2573 = metadata !{metadata !2567, metadata !1290, i64 12}
!2574 = metadata !{i32 936, i32 0, metadata !2565, null}
!2575 = metadata !{metadata !2567, metadata !1291, i64 16}
!2576 = metadata !{i32 937, i32 0, metadata !2565, null}
!2577 = metadata !{i32 938, i32 0, metadata !2565, null}
!2578 = metadata !{i32 939, i32 0, metadata !2565, null}
!2579 = metadata !{i32 940, i32 0, metadata !2565, null}
!2580 = metadata !{i32 941, i32 0, metadata !2565, null}
!2581 = metadata !{i32 942, i32 0, metadata !2565, null}
!2582 = metadata !{i32 943, i32 0, metadata !2565, null}
!2583 = metadata !{i32 944, i32 0, metadata !2565, null}
!2584 = metadata !{i32 945, i32 0, metadata !2565, null}
!2585 = metadata !{i32 946, i32 0, metadata !2565, null}
!2586 = metadata !{i32 947, i32 0, metadata !2565, null}
!2587 = metadata !{i32 948, i32 0, metadata !2565, null}
!2588 = metadata !{i32 949, i32 0, metadata !2565, null}
!2589 = metadata !{i32 950, i32 0, metadata !2565, null}
!2590 = metadata !{i32 951, i32 0, metadata !2565, null}
!2591 = metadata !{i32 952, i32 0, metadata !2565, null}
!2592 = metadata !{i32 953, i32 0, metadata !2565, null}
!2593 = metadata !{i32 954, i32 0, metadata !2565, null}
!2594 = metadata !{i32 955, i32 0, metadata !2565, null}
!2595 = metadata !{i32 956, i32 0, metadata !2565, null}
!2596 = metadata !{i32 958, i32 0, metadata !2597, null}
!2597 = metadata !{i32 786443, metadata !423, metadata !2561, i32 957, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2598 = metadata !{i32 959, i32 0, metadata !2597, null}
!2599 = metadata !{i32 964, i32 0, metadata !2600, null}
!2600 = metadata !{i32 786443, metadata !423, metadata !791, i32 962, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2601 = metadata !{i32 965, i32 0, metadata !2602, null}
!2602 = metadata !{i32 786443, metadata !423, metadata !2600, i32 965, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2603 = metadata !{i32 968, i32 0, metadata !2604, null}
!2604 = metadata !{i32 786443, metadata !423, metadata !2602, i32 967, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2605 = metadata !{i32 969, i32 0, metadata !2604, null}
!2606 = metadata !{i32 974, i32 0, metadata !2607, null}
!2607 = metadata !{i32 786443, metadata !423, metadata !791, i32 972, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2608 = metadata !{i32 975, i32 0, metadata !2609, null}
!2609 = metadata !{i32 786443, metadata !423, metadata !2607, i32 975, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2610 = metadata !{i32 978, i32 0, metadata !2611, null}
!2611 = metadata !{i32 786443, metadata !423, metadata !2609, i32 977, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2612 = metadata !{i32 979, i32 0, metadata !2611, null}
!2613 = metadata !{i32 984, i32 0, metadata !2614, null}
!2614 = metadata !{i32 786443, metadata !423, metadata !791, i32 982, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2615 = metadata !{i32 985, i32 0, metadata !2616, null}
!2616 = metadata !{i32 786443, metadata !423, metadata !2614, i32 985, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2617 = metadata !{i32 988, i32 0, metadata !2618, null}
!2618 = metadata !{i32 786443, metadata !423, metadata !2616, i32 987, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2619 = metadata !{i32 989, i32 0, metadata !2618, null}
!2620 = metadata !{i32 994, i32 0, metadata !809, null}
!2621 = metadata !{metadata !2622, metadata !2509, i64 0}
!2622 = metadata !{metadata !"winsize", metadata !2509, i64 0, metadata !2509, i64 2, metadata !2509, i64 4, metadata !2509, i64 6}
!2623 = metadata !{i32 995, i32 0, metadata !809, null}
!2624 = metadata !{metadata !2622, metadata !2509, i64 2}
!2625 = metadata !{i32 996, i32 0, metadata !809, null}
!2626 = metadata !{i32 997, i32 0, metadata !2627, null}
!2627 = metadata !{i32 786443, metadata !423, metadata !809, i32 997, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2628 = metadata !{i32 1000, i32 0, metadata !2629, null}
!2629 = metadata !{i32 786443, metadata !423, metadata !2627, i32 999, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2630 = metadata !{i32 1001, i32 0, metadata !2629, null}
!2631 = metadata !{i32 1006, i32 0, metadata !2632, null}
!2632 = metadata !{i32 786443, metadata !423, metadata !791, i32 1004, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2633 = metadata !{i32 1007, i32 0, metadata !2634, null}
!2634 = metadata !{i32 786443, metadata !423, metadata !2632, i32 1007, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2635 = metadata !{i32 1008, i32 0, metadata !2636, null}
!2636 = metadata !{i32 786443, metadata !423, metadata !2634, i32 1007, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2637 = metadata !{i32 1009, i32 0, metadata !2636, null}
!2638 = metadata !{i32 1011, i32 0, metadata !2639, null}
!2639 = metadata !{i32 786443, metadata !423, metadata !2634, i32 1010, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2640 = metadata !{i32 1012, i32 0, metadata !2639, null}
!2641 = metadata !{i32 1016, i32 0, metadata !819, null}
!2642 = metadata !{i32 1017, i32 0, metadata !819, null}
!2643 = metadata !{i32 1018, i32 0, metadata !2644, null}
!2644 = metadata !{i32 786443, metadata !423, metadata !819, i32 1018, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2645 = metadata !{i32 1019, i32 0, metadata !2646, null}
!2646 = metadata !{i32 786443, metadata !423, metadata !2647, i32 1019, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2647 = metadata !{i32 786443, metadata !423, metadata !2644, i32 1018, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2648 = metadata !{i32 1020, i32 0, metadata !2649, null}
!2649 = metadata !{i32 786443, metadata !423, metadata !2646, i32 1019, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2650 = metadata !{i32 1021, i32 0, metadata !2649, null}
!2651 = metadata !{i32 1024, i32 0, metadata !2647, null}
!2652 = metadata !{i32 1026, i32 0, metadata !2653, null}
!2653 = metadata !{i32 786443, metadata !423, metadata !2644, i32 1025, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2654 = metadata !{i32 1027, i32 0, metadata !2653, null}
!2655 = metadata !{i32 1031, i32 0, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !423, metadata !791, i32 1030, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2657 = metadata !{i32 1032, i32 0, metadata !2656, null}
!2658 = metadata !{i32 1033, i32 0, metadata !2656, null}
!2659 = metadata !{i32 1036, i32 0, metadata !791, null}
!2660 = metadata !{i32 1037, i32 0, metadata !791, null}
!2661 = metadata !{i32 1038, i32 0, metadata !791, null}
!2662 = metadata !{i32 1041, i32 0, metadata !821, null}
!2663 = metadata !{i32 1042, i32 0, metadata !2664, null}
!2664 = metadata !{i32 786443, metadata !423, metadata !821, i32 1042, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2665 = metadata !{i32 1043, i32 0, metadata !2664, null}
!2666 = metadata !{i32 1046, i32 0, metadata !766, null}
!2667 = metadata !{i32 64, i32 0, metadata !1024, metadata !2668}
!2668 = metadata !{i32 1049, i32 0, metadata !822, null}
!2669 = metadata !{i32 65, i32 0, metadata !1023, metadata !2668}
!2670 = metadata !{i32 66, i32 0, metadata !1771, metadata !2668}
!2671 = metadata !{i32 1053, i32 0, metadata !2672, null}
!2672 = metadata !{i32 786443, metadata !423, metadata !822, i32 1053, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2673 = metadata !{i32 1054, i32 0, metadata !2674, null}
!2674 = metadata !{i32 786443, metadata !423, metadata !2672, i32 1053, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2675 = metadata !{i32 1055, i32 0, metadata !2674, null}
!2676 = metadata !{i32 1058, i32 0, metadata !2677, null}
!2677 = metadata !{i32 786443, metadata !423, metadata !822, i32 1058, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2678 = metadata !{i32 1062, i32 0, metadata !2679, null}
!2679 = metadata !{i32 786443, metadata !423, metadata !2677, i32 1061, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2680 = metadata !{i32 1063, i32 0, metadata !2679, null}
!2681 = metadata !{i32 1064, i32 0, metadata !2679, null}
!2682 = metadata !{i32 1067, i32 0, metadata !835, null}
!2683 = metadata !{i32 1068, i32 0, metadata !834, null}
!2684 = metadata !{i32 1071, i32 0, metadata !2685, null}
!2685 = metadata !{i32 786443, metadata !423, metadata !832, i32 1071, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2686 = metadata !{i32 1073, i32 0, metadata !832, null}
!2687 = metadata !{i32 1076, i32 0, metadata !2688, null}
!2688 = metadata !{i32 786443, metadata !423, metadata !833, i32 1075, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2689 = metadata !{i32 1077, i32 0, metadata !2690, null}
!2690 = metadata !{i32 786443, metadata !423, metadata !2688, i32 1077, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2691 = metadata !{i32 1078, i32 0, metadata !2690, null}
!2692 = metadata !{i32 1079, i32 0, metadata !2688, null}
!2693 = metadata !{i32 1091, i32 0, metadata !833, null}
!2694 = metadata !{i32 1092, i32 0, metadata !833, null}
!2695 = metadata !{i32 1093, i32 0, metadata !833, null}
!2696 = metadata !{i32 1096, i32 0, metadata !837, null}
!2697 = metadata !{i32 1097, i32 0, metadata !2698, null}
!2698 = metadata !{i32 786443, metadata !423, metadata !837, i32 1097, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2699 = metadata !{i32 1098, i32 0, metadata !2698, null}
!2700 = metadata !{i32 1101, i32 0, metadata !822, null}
!2701 = metadata !{i32 40, i32 0, metadata !1032, metadata !2702}
!2702 = metadata !{i32 1104, i32 0, metadata !838, null}
!2703 = metadata !{i32 43, i32 0, metadata !1645, metadata !2702}
!2704 = metadata !{i32 46, i32 0, metadata !1043, metadata !2702}
!2705 = metadata !{i32 47, i32 0, metadata !1041, metadata !2702}
!2706 = metadata !{i32 48, i32 0, metadata !1040, metadata !2702}
!2707 = metadata !{i32 49, i32 0, metadata !1650, metadata !2702}
!2708 = metadata !{i32 1105, i32 0, metadata !2709, null}
!2709 = metadata !{i32 786443, metadata !423, metadata !838, i32 1105, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2710 = metadata !{i32 1107, i32 0, metadata !2711, null}
!2711 = metadata !{i32 786443, metadata !423, metadata !2709, i32 1105, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2712 = metadata !{i32 1108, i32 0, metadata !2711, null}
!2713 = metadata !{i32 1109, i32 0, metadata !2711, null}
!2714 = metadata !{i32 1417, i32 0, metadata !998, metadata !2715}
!2715 = metadata !{i32 1429, i32 0, metadata !979, metadata !2716}
!2716 = metadata !{i32 1113, i32 0, metadata !867, null}
!2717 = metadata !{i32 1418, i32 0, metadata !998, metadata !2715}
!2718 = metadata !{i32 1432, i32 0, metadata !988, metadata !2716}
!2719 = metadata !{i32 1433, i32 0, metadata !987, metadata !2716}
!2720 = metadata !{i32 1434, i32 0, metadata !991, metadata !2716}
!2721 = metadata !{i32 1435, i32 0, metadata !1660, metadata !2716}
!2722 = metadata !{i32 1436, i32 0, metadata !1663, metadata !2716}
!2723 = metadata !{i32 1437, i32 0, metadata !1663, metadata !2716}
!2724 = metadata !{i32 1439, i32 0, metadata !1666, metadata !2716}
!2725 = metadata !{i32 1440, i32 0, metadata !1666, metadata !2716}
!2726 = metadata !{i32 1442, i32 0, metadata !990, metadata !2716}
!2727 = metadata !{i32 1443, i32 0, metadata !990, metadata !2716}
!2728 = metadata !{i32 1444, i32 0, metadata !990, metadata !2716}
!2729 = metadata !{i32 1445, i32 0, metadata !1673, metadata !2716}
!2730 = metadata !{i32 1114, i32 0, metadata !2731, null}
!2731 = metadata !{i32 786443, metadata !423, metadata !867, i32 1114, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2732 = metadata !{i32 1115, i32 0, metadata !2731, null}
!2733 = metadata !{i32 1118, i32 0, metadata !838, null}
!2734 = metadata !{i32 64, i32 0, metadata !1024, metadata !2735}
!2735 = metadata !{i32 1121, i32 0, metadata !868, null}
!2736 = metadata !{i32 65, i32 0, metadata !1023, metadata !2735}
!2737 = metadata !{i32 66, i32 0, metadata !1771, metadata !2735}
!2738 = metadata !{i32 1123, i32 0, metadata !2739, null}
!2739 = metadata !{i32 786443, metadata !423, metadata !868, i32 1123, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2740 = metadata !{i32 1124, i32 0, metadata !2741, null}
!2741 = metadata !{i32 786443, metadata !423, metadata !2739, i32 1123, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2742 = metadata !{i32 1125, i32 0, metadata !2741, null}
!2743 = metadata !{i32 1128, i32 0, metadata !877, null}
!2744 = metadata !{i32 1129, i32 0, metadata !2745, null}
!2745 = metadata !{i32 786443, metadata !423, metadata !877, i32 1128, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2746 = metadata !{i32 1130, i32 0, metadata !2745, null}
!2747 = metadata !{i32 1131, i32 0, metadata !2745, null}
!2748 = metadata !{i32 1133, i32 0, metadata !876, null}
!2749 = metadata !{i32 1134, i32 0, metadata !2750, null}
!2750 = metadata !{i32 786443, metadata !423, metadata !876, i32 1134, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2751 = metadata !{i32 1135, i32 0, metadata !2750, null}
!2752 = metadata !{i32 1138, i32 0, metadata !868, null}
!2753 = metadata !{i32 64, i32 0, metadata !1024, metadata !2754}
!2754 = metadata !{i32 1141, i32 0, metadata !878, null}
!2755 = metadata !{i32 65, i32 0, metadata !1023, metadata !2754}
!2756 = metadata !{i32 66, i32 0, metadata !1771, metadata !2754}
!2757 = metadata !{i32 1143, i32 0, metadata !885, null}
!2758 = metadata !{i32 1144, i32 0, metadata !2759, null}
!2759 = metadata !{i32 786443, metadata !423, metadata !885, i32 1143, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2760 = metadata !{i32 1145, i32 0, metadata !2759, null}
!2761 = metadata !{i32 1146, i32 0, metadata !884, null}
!2762 = metadata !{i32 1149, i32 0, metadata !883, null}
!2763 = metadata !{i32 1150, i32 0, metadata !2764, null}
!2764 = metadata !{i32 786443, metadata !423, metadata !883, i32 1150, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2765 = metadata !{i32 1151, i32 0, metadata !2764, null}
!2766 = metadata !{i32 1154, i32 0, metadata !878, null}
!2767 = metadata !{i32 64, i32 0, metadata !1024, metadata !2768}
!2768 = metadata !{i32 1157, i32 0, metadata !886, null}
!2769 = metadata !{i32 65, i32 0, metadata !1023, metadata !2768}
!2770 = metadata !{i32 66, i32 0, metadata !1771, metadata !2768}
!2771 = metadata !{i32 1159, i32 0, metadata !893, null}
!2772 = metadata !{i32 1160, i32 0, metadata !2773, null}
!2773 = metadata !{i32 786443, metadata !423, metadata !893, i32 1159, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2774 = metadata !{i32 1161, i32 0, metadata !2773, null}
!2775 = metadata !{i32 1163, i32 0, metadata !892, null}
!2776 = metadata !{i32 1164, i32 0, metadata !2777, null}
!2777 = metadata !{i32 786443, metadata !423, metadata !892, i32 1164, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2778 = metadata !{i32 308, i32 0, metadata !551, metadata !2776}
!2779 = metadata !{i32 64, i32 0, metadata !1024, metadata !2780}
!2780 = metadata !{i32 310, i32 0, metadata !551, metadata !2776}
!2781 = metadata !{i32 311, i32 0, metadata !1931, metadata !2776}
!2782 = metadata !{i32 312, i32 0, metadata !1933, metadata !2776}
!2783 = metadata !{i32 313, i32 0, metadata !1933, metadata !2776}
!2784 = metadata !{i32 316, i32 0, metadata !1936, metadata !2776}
!2785 = metadata !{i32 317, i32 0, metadata !1938, metadata !2776}
!2786 = metadata !{i32 318, i32 0, metadata !1938, metadata !2776}
!2787 = metadata !{i32 319, i32 0, metadata !1938, metadata !2776}
!2788 = metadata !{i32 330, i32 0, metadata !551, metadata !2776}
!2789 = metadata !{i32 332, i32 0, metadata !551, metadata !2776}
!2790 = metadata !{i32 1168, i32 0, metadata !892, null}
!2791 = metadata !{i32 1170, i32 0, metadata !892, null}
!2792 = metadata !{i32 1177, i32 0, metadata !892, null}
!2793 = metadata !{i32 1179, i32 0, metadata !886, null}
!2794 = metadata !{i32 64, i32 0, metadata !1024, metadata !2795}
!2795 = metadata !{i32 1182, i32 0, metadata !894, null}
!2796 = metadata !{i32 65, i32 0, metadata !1023, metadata !2795}
!2797 = metadata !{i32 66, i32 0, metadata !1771, metadata !2795}
!2798 = metadata !{i32 1183, i32 0, metadata !900, null}
!2799 = metadata !{i32 1184, i32 0, metadata !2800, null}
!2800 = metadata !{i32 786443, metadata !423, metadata !900, i32 1183, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2801 = metadata !{i32 1185, i32 0, metadata !2800, null}
!2802 = metadata !{i32 1188, i32 0, metadata !2803, null}
!2803 = metadata !{i32 786443, metadata !423, metadata !899, i32 1188, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2804 = metadata !{i32 1189, i32 0, metadata !2805, null}
!2805 = metadata !{i32 786443, metadata !423, metadata !2803, i32 1189, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2806 = metadata !{i32 1191, i32 0, metadata !2807, null}
!2807 = metadata !{i32 786443, metadata !423, metadata !899, i32 1191, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2808 = metadata !{i32 1192, i32 0, metadata !2809, null}
!2809 = metadata !{i32 786443, metadata !423, metadata !2807, i32 1191, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2810 = metadata !{i32 1193, i32 0, metadata !2809, null}
!2811 = metadata !{i32 1195, i32 0, metadata !2812, null}
!2812 = metadata !{i32 786443, metadata !423, metadata !2807, i32 1194, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2813 = metadata !{i32 1198, i32 0, metadata !894, null}
!2814 = metadata !{i32 40, i32 0, metadata !1032, metadata !2815}
!2815 = metadata !{i32 1201, i32 0, metadata !901, null}
!2816 = metadata !{i32 43, i32 0, metadata !1645, metadata !2815}
!2817 = metadata !{i32 46, i32 0, metadata !1043, metadata !2815}
!2818 = metadata !{i32 47, i32 0, metadata !1041, metadata !2815}
!2819 = metadata !{i32 48, i32 0, metadata !1040, metadata !2815}
!2820 = metadata !{i32 49, i32 0, metadata !1650, metadata !2815}
!2821 = metadata !{i32 1202, i32 0, metadata !2822, null}
!2822 = metadata !{i32 786443, metadata !423, metadata !901, i32 1202, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2823 = metadata !{i32 1204, i32 0, metadata !2824, null}
!2824 = metadata !{i32 786443, metadata !423, metadata !2825, i32 1204, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2825 = metadata !{i32 786443, metadata !423, metadata !2822, i32 1202, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2826 = metadata !{i32 1205, i32 0, metadata !2827, null}
!2827 = metadata !{i32 786443, metadata !423, metadata !2824, i32 1204, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2828 = metadata !{i32 1206, i32 0, metadata !2827, null}
!2829 = metadata !{i32 1208, i32 0, metadata !2830, null}
!2830 = metadata !{i32 786443, metadata !423, metadata !2824, i32 1207, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2831 = metadata !{i32 1209, i32 0, metadata !2830, null}
!2832 = metadata !{i32 1213, i32 0, metadata !901, null}
!2833 = metadata !{i32 1214, i32 0, metadata !901, null}
!2834 = metadata !{i32 1215, i32 0, metadata !901, null}
!2835 = metadata !{i32 1216, i32 0, metadata !901, null}
!2836 = metadata !{i32 40, i32 0, metadata !1032, metadata !2837}
!2837 = metadata !{i32 1219, i32 0, metadata !905, null}
!2838 = metadata !{i32 43, i32 0, metadata !1645, metadata !2837}
!2839 = metadata !{i32 46, i32 0, metadata !1043, metadata !2837}
!2840 = metadata !{i32 47, i32 0, metadata !1041, metadata !2837}
!2841 = metadata !{i32 48, i32 0, metadata !1040, metadata !2837}
!2842 = metadata !{i32 49, i32 0, metadata !1650, metadata !2837}
!2843 = metadata !{i32 1220, i32 0, metadata !2844, null}
!2844 = metadata !{i32 786443, metadata !423, metadata !905, i32 1220, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2845 = metadata !{i32 1222, i32 0, metadata !2846, null}
!2846 = metadata !{i32 786443, metadata !423, metadata !2847, i32 1222, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2847 = metadata !{i32 786443, metadata !423, metadata !2844, i32 1220, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2848 = metadata !{i32 1223, i32 0, metadata !2849, null}
!2849 = metadata !{i32 786443, metadata !423, metadata !2846, i32 1222, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2850 = metadata !{i32 1224, i32 0, metadata !2849, null}
!2851 = metadata !{i32 1225, i32 0, metadata !2852, null}
!2852 = metadata !{i32 786443, metadata !423, metadata !2846, i32 1225, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2853 = metadata !{i32 1226, i32 0, metadata !2854, null}
!2854 = metadata !{i32 786443, metadata !423, metadata !2852, i32 1225, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2855 = metadata !{i32 1227, i32 0, metadata !2854, null}
!2856 = metadata !{i32 1229, i32 0, metadata !2857, null}
!2857 = metadata !{i32 786443, metadata !423, metadata !2852, i32 1228, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2858 = metadata !{i32 1230, i32 0, metadata !2857, null}
!2859 = metadata !{i32 1234, i32 0, metadata !905, null}
!2860 = metadata !{i32 1235, i32 0, metadata !905, null}
!2861 = metadata !{i32 1236, i32 0, metadata !905, null}
!2862 = metadata !{i32 1237, i32 0, metadata !905, null}
!2863 = metadata !{i32 40, i32 0, metadata !1032, metadata !2864}
!2864 = metadata !{i32 1242, i32 0, metadata !909, null}
!2865 = metadata !{i32 43, i32 0, metadata !1645, metadata !2864}
!2866 = metadata !{i32 46, i32 0, metadata !1043, metadata !2864}
!2867 = metadata !{i32 47, i32 0, metadata !1041, metadata !2864}
!2868 = metadata !{i32 48, i32 0, metadata !1040, metadata !2864}
!2869 = metadata !{i32 49, i32 0, metadata !1650, metadata !2864}
!2870 = metadata !{i32 1243, i32 0, metadata !2871, null}
!2871 = metadata !{i32 786443, metadata !423, metadata !909, i32 1243, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2872 = metadata !{i32 1245, i32 0, metadata !2873, null}
!2873 = metadata !{i32 786443, metadata !423, metadata !2874, i32 1245, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2874 = metadata !{i32 786443, metadata !423, metadata !2871, i32 1243, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2875 = metadata !{i32 1246, i32 0, metadata !2876, null}
!2876 = metadata !{i32 786443, metadata !423, metadata !2873, i32 1245, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2877 = metadata !{i32 1247, i32 0, metadata !2876, null}
!2878 = metadata !{i32 1248, i32 0, metadata !2879, null}
!2879 = metadata !{i32 786443, metadata !423, metadata !2873, i32 1248, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2880 = metadata !{i32 1249, i32 0, metadata !2881, null}
!2881 = metadata !{i32 786443, metadata !423, metadata !2879, i32 1248, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2882 = metadata !{i32 1250, i32 0, metadata !2881, null}
!2883 = metadata !{i32 1252, i32 0, metadata !2884, null}
!2884 = metadata !{i32 786443, metadata !423, metadata !2879, i32 1251, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2885 = metadata !{i32 1253, i32 0, metadata !2884, null}
!2886 = metadata !{i32 1257, i32 0, metadata !909, null}
!2887 = metadata !{i32 1258, i32 0, metadata !909, null}
!2888 = metadata !{i32 1259, i32 0, metadata !909, null}
!2889 = metadata !{i32 1260, i32 0, metadata !909, null}
!2890 = metadata !{i32 40, i32 0, metadata !1032, metadata !2891}
!2891 = metadata !{i32 1263, i32 0, metadata !915, null}
!2892 = metadata !{i32 43, i32 0, metadata !1645, metadata !2891}
!2893 = metadata !{i32 46, i32 0, metadata !1043, metadata !2891}
!2894 = metadata !{i32 47, i32 0, metadata !1041, metadata !2891}
!2895 = metadata !{i32 48, i32 0, metadata !1040, metadata !2891}
!2896 = metadata !{i32 49, i32 0, metadata !1650, metadata !2891}
!2897 = metadata !{i32 1264, i32 0, metadata !925, null}
!2898 = metadata !{i32 1267, i32 0, metadata !2899, null}
!2899 = metadata !{i32 786443, metadata !423, metadata !2900, i32 1267, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2900 = metadata !{i32 786443, metadata !423, metadata !925, i32 1264, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2901 = metadata !{i32 1268, i32 0, metadata !2902, null}
!2902 = metadata !{i32 786443, metadata !423, metadata !2899, i32 1267, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2903 = metadata !{i32 1269, i32 0, metadata !2904, null}
!2904 = metadata !{i32 786443, metadata !423, metadata !2902, i32 1269, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2905 = metadata !{i32 1270, i32 0, metadata !2906, null}
!2906 = metadata !{i32 786443, metadata !423, metadata !2902, i32 1270, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2907 = metadata !{i32 1271, i32 0, metadata !2908, null}
!2908 = metadata !{i32 786443, metadata !423, metadata !2902, i32 1271, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2909 = metadata !{i32 1272, i32 0, metadata !2910, null}
!2910 = metadata !{i32 786443, metadata !423, metadata !2902, i32 1272, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2911 = metadata !{i32 1273, i32 0, metadata !2902, null}
!2912 = metadata !{i32 1275, i32 0, metadata !2913, null}
!2913 = metadata !{i32 786443, metadata !423, metadata !2899, i32 1274, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2914 = metadata !{i32 1276, i32 0, metadata !2913, null}
!2915 = metadata !{i32 1279, i32 0, metadata !924, null}
!2916 = metadata !{i32 1280, i32 0, metadata !2917, null}
!2917 = metadata !{i32 786443, metadata !423, metadata !924, i32 1280, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2918 = metadata !{i32 1281, i32 0, metadata !2917, null}
!2919 = metadata !{i32 1282, i32 0, metadata !924, null}
!2920 = metadata !{i32 1284, i32 0, metadata !915, null}
!2921 = metadata !{i32 1296, i32 0, metadata !926, null}
!2922 = metadata !{i32 1299, i32 0, metadata !2923, null}
!2923 = metadata !{i32 786443, metadata !423, metadata !926, i32 1299, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2924 = metadata !{i32 1300, i32 0, metadata !2925, null}
!2925 = metadata !{i32 786443, metadata !423, metadata !2923, i32 1299, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2926 = metadata !{i32 1302, i32 0, metadata !2925, null}
!2927 = metadata !{i32 1306, i32 0, metadata !2928, null}
!2928 = metadata !{i32 786443, metadata !423, metadata !926, i32 1306, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2929 = metadata !{i32 1307, i32 0, metadata !2930, null}
!2930 = metadata !{i32 786443, metadata !423, metadata !2928, i32 1306, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2931 = metadata !{i32 1309, i32 0, metadata !2930, null}
!2932 = metadata !{i32 1313, i32 0, metadata !2933, null}
!2933 = metadata !{i32 786443, metadata !423, metadata !926, i32 1313, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2934 = metadata !{i32 1314, i32 0, metadata !2935, null}
!2935 = metadata !{i32 786443, metadata !423, metadata !2933, i32 1313, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2936 = metadata !{i32 1316, i32 0, metadata !2935, null}
!2937 = metadata !{i32 1325, i32 0, metadata !959, null}
!2938 = metadata !{i32 1326, i32 0, metadata !957, null}
!2939 = metadata !{metadata !1522, metadata !1522, i64 0}
!2940 = metadata !{i32 64, i32 0, metadata !1024, metadata !2941}
!2941 = metadata !{i32 1327, i32 0, metadata !956, null}
!2942 = metadata !{i32 66, i32 0, metadata !1771, metadata !2941}
!2943 = metadata !{i32 65, i32 0, metadata !1023, metadata !2941}
!2944 = metadata !{i32 1328, i32 0, metadata !2945, null}
!2945 = metadata !{i32 786443, metadata !423, metadata !956, i32 1328, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2946 = metadata !{i32 1329, i32 0, metadata !2947, null}
!2947 = metadata !{i32 786443, metadata !423, metadata !2945, i32 1328, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2948 = metadata !{i32 1330, i32 0, metadata !2947, null}
!2949 = metadata !{i32 1331, i32 0, metadata !2950, null}
!2950 = metadata !{i32 786443, metadata !423, metadata !2945, i32 1331, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2951 = metadata !{i32 1333, i32 0, metadata !2952, null}
!2952 = metadata !{i32 786443, metadata !423, metadata !2953, i32 1333, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2953 = metadata !{i32 786443, metadata !423, metadata !2950, i32 1331, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2954 = metadata !{i32 1334, i32 0, metadata !2955, null}
!2955 = metadata !{i32 786443, metadata !423, metadata !2953, i32 1334, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2956 = metadata !{i32 1335, i32 0, metadata !2957, null}
!2957 = metadata !{i32 786443, metadata !423, metadata !2953, i32 1335, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2958 = metadata !{i32 1336, i32 0, metadata !2953, null}
!2959 = metadata !{i32 1337, i32 0, metadata !2953, null}
!2960 = metadata !{i32 1338, i32 0, metadata !2961, null}
!2961 = metadata !{i32 786443, metadata !423, metadata !2962, i32 1338, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2962 = metadata !{i32 786443, metadata !423, metadata !2950, i32 1337, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2963 = metadata !{i32 1339, i32 0, metadata !2964, null}
!2964 = metadata !{i32 786443, metadata !423, metadata !2962, i32 1339, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2965 = metadata !{i32 1340, i32 0, metadata !2966, null}
!2966 = metadata !{i32 786443, metadata !423, metadata !2962, i32 1340, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2967 = metadata !{i32 1341, i32 0, metadata !2968, null}
!2968 = metadata !{i32 786443, metadata !423, metadata !2962, i32 1341, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2969 = metadata !{i32 1346, i32 0, metadata !962, null}
!2970 = metadata !{i32 1349, i32 0, metadata !961, null}
!2971 = metadata !{i32 1350, i32 0, metadata !961, null}
!2972 = metadata !{i32 1353, i32 0, metadata !968, null}
!2973 = metadata !{i32 1356, i32 0, metadata !2974, null}
!2974 = metadata !{i32 786443, metadata !423, metadata !2975, i32 1356, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2975 = metadata !{i32 786443, metadata !423, metadata !968, i32 1353, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2976 = metadata !{i32 1357, i32 0, metadata !2977, null}
!2977 = metadata !{i32 786443, metadata !423, metadata !2974, i32 1356, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2978 = metadata !{i32 1358, i32 0, metadata !2977, null}
!2979 = metadata !{i32 1361, i32 0, metadata !967, null}
!2980 = metadata !{i32 1364, i32 0, metadata !966, null}
!2981 = metadata !{i32 64, i32 0, metadata !1024, metadata !2982}
!2982 = metadata !{i32 1365, i32 0, metadata !965, null}
!2983 = metadata !{i32 66, i32 0, metadata !1771, metadata !2982}
!2984 = metadata !{i32 65, i32 0, metadata !1023, metadata !2982}
!2985 = metadata !{i32 1366, i32 0, metadata !2986, null}
!2986 = metadata !{i32 786443, metadata !423, metadata !965, i32 1366, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2987 = metadata !{i32 1367, i32 0, metadata !2988, null}
!2988 = metadata !{i32 786443, metadata !423, metadata !2989, i32 1367, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2989 = metadata !{i32 786443, metadata !423, metadata !2986, i32 1366, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2990 = metadata !{i32 1368, i32 0, metadata !2991, null}
!2991 = metadata !{i32 786443, metadata !423, metadata !2989, i32 1368, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2992 = metadata !{i32 1369, i32 0, metadata !2993, null}
!2993 = metadata !{i32 786443, metadata !423, metadata !2989, i32 1369, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2994 = metadata !{i32 1376, i32 0, metadata !926, null}
!2995 = metadata !{i32 1384, i32 0, metadata !969, null}
!2996 = metadata !{i32 1386, i32 0, metadata !2997, null}
!2997 = metadata !{i32 786443, metadata !423, metadata !969, i32 1386, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2998 = metadata !{i32 1387, i32 0, metadata !2999, null}
!2999 = metadata !{i32 786443, metadata !423, metadata !2997, i32 1386, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3000 = metadata !{i32 1388, i32 0, metadata !2999, null}
!3001 = metadata !{i32 1389, i32 0, metadata !2999, null}
!3002 = metadata !{i32 1392, i32 0, metadata !3003, null}
!3003 = metadata !{i32 786443, metadata !423, metadata !969, i32 1392, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3004 = metadata !{i32 1393, i32 0, metadata !3005, null}
!3005 = metadata !{i32 786443, metadata !423, metadata !3006, i32 1393, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3006 = metadata !{i32 786443, metadata !423, metadata !3003, i32 1392, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3007 = metadata !{i32 1395, i32 0, metadata !3006, null}
!3008 = metadata !{i32 1396, i32 0, metadata !3006, null}
!3009 = metadata !{i32 1417, i32 0, metadata !998, metadata !3010}
!3010 = metadata !{i32 1398, i32 0, metadata !969, null}
!3011 = metadata !{i32 1418, i32 0, metadata !998, metadata !3010}
!3012 = metadata !{i32 1423, i32 0, metadata !992, metadata !3013}
!3013 = metadata !{i32 1399, i32 0, metadata !969, null}
!3014 = metadata !{i32 1424, i32 0, metadata !992, metadata !3013}
!3015 = metadata !{i32 1403, i32 0, metadata !969, null}
!3016 = metadata !{i32 1404, i32 0, metadata !969, null}
!3017 = metadata !{i32 1405, i32 0, metadata !3018, null}
!3018 = metadata !{i32 786443, metadata !423, metadata !969, i32 1405, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3019 = metadata !{i32 1406, i32 0, metadata !3020, null}
!3020 = metadata !{i32 786443, metadata !423, metadata !3018, i32 1405, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3021 = metadata !{i32 1407, i32 0, metadata !3020, null}
!3022 = metadata !{i32 1411, i32 0, metadata !969, null}
!3023 = metadata !{i32 1458, i32 0, metadata !3024, null}
!3024 = metadata !{i32 786443, metadata !423, metadata !976, i32 1458, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3025 = metadata !{i32 1459, i32 0, metadata !3026, null}
!3026 = metadata !{i32 786443, metadata !423, metadata !3024, i32 1458, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3027 = metadata !{i32 1460, i32 0, metadata !3026, null}
!3028 = metadata !{i32 1463, i32 0, metadata !3029, null}
!3029 = metadata !{i32 786443, metadata !423, metadata !976, i32 1463, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3030 = metadata !{i32 1467, i32 0, metadata !976, null}
!3031 = metadata !{i32 1468, i32 0, metadata !976, null}
!3032 = metadata !{i32 1469, i32 0, metadata !976, null}
!3033 = metadata !{i32 1470, i32 0, metadata !976, null}
!3034 = metadata !{i32 12, i32 0, metadata !1055, null}
!3035 = metadata !{i32 16, i32 0, metadata !1062, null}
!3036 = metadata !{i32 21, i32 0, metadata !1068, null}
!3037 = metadata !{i32 34, i32 0, metadata !1094, null}
!3038 = metadata !{i32 35, i32 0, metadata !1094, null}
!3039 = metadata !{i32 50, i32 0, metadata !1094, null}
!3040 = metadata !{i32 53, i32 0, metadata !1100, null}
!3041 = metadata !{i32 55, i32 0, metadata !3042, null}
!3042 = metadata !{i32 786443, metadata !1075, metadata !1100, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!3043 = metadata !{i32 56, i32 0, metadata !3042, null}
!3044 = metadata !{i32 66, i32 0, metadata !3042, null}
!3045 = metadata !{i32 67, i32 0, metadata !3042, null}
!3046 = metadata !{i32 69, i32 0, metadata !3042, null}
!3047 = metadata !{i32 70, i32 0, metadata !3042, null}
!3048 = metadata !{i32 72, i32 0, metadata !3042, null}
!3049 = metadata !{i32 73, i32 0, metadata !3042, null}
!3050 = metadata !{i32 79, i32 0, metadata !1100, null}
!3051 = metadata !{i32 17, i32 0, metadata !1114, null}
!3052 = metadata !{i32 22, i32 0, metadata !1120, null}
!3053 = metadata !{i32 27, i32 0, metadata !1125, null}
!3054 = metadata !{i32 69, i32 0, metadata !3055, null}
!3055 = metadata !{i32 786443, metadata !1104, metadata !1130, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3056 = metadata !{i32 71, i32 0, metadata !3057, null}
!3057 = metadata !{i32 786443, metadata !1104, metadata !3055, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3058 = metadata !{i32 73, i32 0, metadata !3059, null}
!3059 = metadata !{i32 786443, metadata !1104, metadata !3057, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3060 = metadata !{i32 75, i32 0, metadata !3061, null}
!3061 = metadata !{i32 786443, metadata !1104, metadata !3059, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3062 = metadata !{i32 76, i32 0, metadata !3063, null}
!3063 = metadata !{i32 786443, metadata !1104, metadata !3061, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3064 = metadata !{i32 79, i32 0, metadata !1130, null}
!3065 = metadata !{i32 84, i32 0, metadata !3066, null}
!3066 = metadata !{i32 786443, metadata !1104, metadata !1133, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3067 = metadata !{i32 86, i32 0, metadata !3068, null}
!3068 = metadata !{i32 786443, metadata !1104, metadata !3066, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3069 = metadata !{i32 88, i32 0, metadata !3070, null}
!3070 = metadata !{i32 786443, metadata !1104, metadata !3068, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3071 = metadata !{i32 90, i32 0, metadata !3072, null}
!3072 = metadata !{i32 786443, metadata !1104, metadata !3070, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3073 = metadata !{i32 91, i32 0, metadata !3074, null}
!3074 = metadata !{i32 786443, metadata !1104, metadata !3072, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3075 = metadata !{i32 94, i32 0, metadata !1133, null}
!3076 = metadata !{i32 100, i32 0, metadata !3077, null}
!3077 = metadata !{i32 786443, metadata !1104, metadata !1136, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3078 = metadata !{i32 102, i32 0, metadata !3079, null}
!3079 = metadata !{i32 786443, metadata !1104, metadata !3077, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3080 = metadata !{i32 104, i32 0, metadata !3081, null}
!3081 = metadata !{i32 786443, metadata !1104, metadata !3079, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3082 = metadata !{i32 106, i32 0, metadata !3083, null}
!3083 = metadata !{i32 786443, metadata !1104, metadata !3081, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3084 = metadata !{i32 107, i32 0, metadata !3085, null}
!3085 = metadata !{i32 786443, metadata !1104, metadata !3083, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3086 = metadata !{i32 110, i32 0, metadata !1136, null}
!3087 = metadata !{i32 115, i32 0, metadata !1139, null}
!3088 = metadata !{i32 120, i32 0, metadata !1142, null}
!3089 = metadata !{i32 125, i32 0, metadata !1145, null}
!3090 = metadata !{i32 13, i32 0, metadata !3091, null}
!3091 = metadata !{i32 786443, metadata !1149, metadata !1151, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!3092 = metadata !{i32 14, i32 0, metadata !3091, null}
!3093 = metadata !{i32 15, i32 0, metadata !1151, null}
!3094 = metadata !{i32 15, i32 0, metadata !1161, null}
!3095 = metadata !{i32 16, i32 0, metadata !1161, null}
!3096 = metadata !{i32 21, i32 0, metadata !3097, null}
!3097 = metadata !{i32 786443, metadata !1167, metadata !1169, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3098 = metadata !{i32 27, i32 0, metadata !3099, null}
!3099 = metadata !{i32 786443, metadata !1167, metadata !3097, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3100 = metadata !{i32 29, i32 0, metadata !1169, null}
!3101 = metadata !{i32 16, i32 0, metadata !3102, null}
!3102 = metadata !{i32 786443, metadata !1178, metadata !1180, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3103 = metadata !{i32 17, i32 0, metadata !3102, null}
!3104 = metadata !{i32 19, i32 0, metadata !3105, null}
!3105 = metadata !{i32 786443, metadata !1178, metadata !1180, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3106 = metadata !{i32 22, i32 0, metadata !3107, null}
!3107 = metadata !{i32 786443, metadata !1178, metadata !3105, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3108 = metadata !{i32 25, i32 0, metadata !3109, null}
!3109 = metadata !{i32 786443, metadata !1178, metadata !3107, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3110 = metadata !{i32 26, i32 0, metadata !3111, null}
!3111 = metadata !{i32 786443, metadata !1178, metadata !3109, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3112 = metadata !{i32 27, i32 0, metadata !3111, null}
!3113 = metadata !{i32 28, i32 0, metadata !3114, null}
!3114 = metadata !{i32 786443, metadata !1178, metadata !3109, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3115 = metadata !{i32 29, i32 0, metadata !3114, null}
!3116 = metadata !{i32 32, i32 0, metadata !3107, null}
!3117 = metadata !{i32 34, i32 0, metadata !1180, null}
!3118 = metadata !{i32 19, i32 0, metadata !1193, null}
!3119 = metadata !{i32 21, i32 0, metadata !3120, null}
!3120 = metadata !{i32 786443, metadata !1190, metadata !1193, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!3121 = metadata !{i32 23, i32 0, metadata !3120, null}
!3122 = metadata !{i32 25, i32 0, metadata !3120, null}
!3123 = metadata !{i32 27, i32 0, metadata !3120, null}
!3124 = metadata !{i32 29, i32 0, metadata !3120, null}
!3125 = metadata !{i32 31, i32 0, metadata !3120, null}
!3126 = metadata !{i32 33, i32 0, metadata !1193, null}
!3127 = metadata !{i32 16, i32 0, metadata !1202, null}
!3128 = metadata !{i32 17, i32 0, metadata !1202, null}
!3129 = metadata !{metadata !3129, metadata !3130, metadata !3131}
!3130 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!3131 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!3132 = metadata !{metadata !3132, metadata !3130, metadata !3131}
!3133 = metadata !{i32 18, i32 0, metadata !1202, null}
!3134 = metadata !{i32 16, i32 0, metadata !3135, null}
!3135 = metadata !{i32 786443, metadata !1214, metadata !1216, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3136 = metadata !{i32 19, i32 0, metadata !3137, null}
!3137 = metadata !{i32 786443, metadata !1214, metadata !1216, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3138 = metadata !{i32 20, i32 0, metadata !3139, null}
!3139 = metadata !{i32 786443, metadata !1214, metadata !3137, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3140 = metadata !{metadata !3140, metadata !3130, metadata !3131}
!3141 = metadata !{metadata !3141, metadata !3130, metadata !3131}
!3142 = metadata !{i32 22, i32 0, metadata !3143, null}
!3143 = metadata !{i32 786443, metadata !1214, metadata !3137, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3144 = metadata !{i32 24, i32 0, metadata !3143, null}
!3145 = metadata !{i32 23, i32 0, metadata !3143, null}
!3146 = metadata !{metadata !3146, metadata !3130, metadata !3131}
!3147 = metadata !{metadata !3147, metadata !3130, metadata !3131}
!3148 = metadata !{i32 28, i32 0, metadata !1216, null}
!3149 = metadata !{i32 15, i32 0, metadata !1230, null}
!3150 = metadata !{i32 16, i32 0, metadata !1230, null}
!3151 = metadata !{metadata !3151, metadata !3130, metadata !3131}
!3152 = metadata !{metadata !3152, metadata !3130, metadata !3131}
!3153 = metadata !{i32 17, i32 0, metadata !1230, null}
!3154 = metadata !{i32 13, i32 0, metadata !1244, null}
!3155 = metadata !{i32 14, i32 0, metadata !1244, null}
!3156 = metadata !{i32 15, i32 0, metadata !1244, null}
!3157 = metadata !{i32 12, i32 0, metadata !1259, null}
!3158 = metadata !{i32 16, i32 0, metadata !1263, null}
!3159 = metadata !{i32 21, i32 0, metadata !1266, null}
