; ModuleID = 'df2cf_cp_l1_klee_annotated_float.bc'
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
@.str1 = private unnamed_addr constant [29 x i8] c"df2cf_cp_l1_klee_annotated.c\00", align 1
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
define i32 @df2cf(i8 signext %a) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b = alloca i32, align 4
  store i8 %a, i8* %a.addr, align 1
  %0 = load i8* %a.addr, align 1, !dbg !1275
  %conv = sext i8 %0 to i32, !dbg !1275
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
  ], !dbg !1275

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %b, align 4, !dbg !1276
  br label %sw.epilog, !dbg !1278

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %b, align 4, !dbg !1279
  br label %sw.epilog, !dbg !1280

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %b, align 4, !dbg !1281
  br label %sw.epilog, !dbg !1282

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %b, align 4, !dbg !1283
  br label %sw.epilog, !dbg !1284

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %b, align 4, !dbg !1285
  br label %sw.epilog, !dbg !1286

sw.bb5:                                           ; preds = %entry
  store i32 5, i32* %b, align 4, !dbg !1287
  br label %sw.epilog, !dbg !1288

sw.bb6:                                           ; preds = %entry
  store i32 6, i32* %b, align 4, !dbg !1289
  br label %sw.epilog, !dbg !1290

sw.bb7:                                           ; preds = %entry
  store i32 7, i32* %b, align 4, !dbg !1291
  br label %sw.epilog, !dbg !1292

sw.bb8:                                           ; preds = %entry
  store i32 8, i32* %b, align 4, !dbg !1293
  br label %sw.epilog, !dbg !1294

sw.bb9:                                           ; preds = %entry
  store i32 9, i32* %b, align 4, !dbg !1295
  br label %sw.epilog, !dbg !1296

sw.default:                                       ; preds = %entry
  store i32 0, i32* %b, align 4, !dbg !1297
  br label %sw.epilog, !dbg !1298

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32* %b, align 4, !dbg !1299
  ret i32 %1, !dbg !1299
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !1300
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !1300
  %1 = load i8* %arrayidx, align 1, !dbg !1300
  %conv = sext i8 %1 to i32, !dbg !1300
  %sub = sub nsw i32 %conv, 48, !dbg !1300
  store i32 %sub, i32* %symvar, align 4, !dbg !1300
  %2 = load i32* %symvar, align 4, !dbg !1301
  %int_cast_to_i64 = zext i32 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1301
  %rem = srem i32 %2, 10, !dbg !1301
  %conv1 = trunc i32 %rem to i8, !dbg !1301
  %call = call i32 @df2cf(i8 signext %conv1), !dbg !1301
  store i32 %call, i32* %a, align 4, !dbg !1301
  %3 = load i32* %a, align 4, !dbg !1302
  %inc = add nsw i32 %3, 1, !dbg !1302
  store i32 %inc, i32* %a, align 4, !dbg !1302
  %4 = load i32* %symvar, align 4, !dbg !1303
  %5 = load i32* %a, align 4, !dbg !1303
  %add = add nsw i32 %4, %5, !dbg !1303
  store i32 %add, i32* %b, align 4, !dbg !1303
  %6 = load i32* %b, align 4, !dbg !1304
  %cmp = icmp eq i32 %6, 15, !dbg !1304
  br i1 %cmp, label %if.then, label %if.else, !dbg !1304

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 58, i8* ge
  br label %if.end, !dbg !1306

if.else:                                          ; preds = %entry
  %call4 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 60, i8* g
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32* %retval, !dbg !1308
  ret i32 %7, !dbg !1308
}

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
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !1309
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !1309
  %arrayidx = getelementptr inbounds [5 x i8]* %s, i32 0, i64 4, !dbg !1310
  %1 = load i8* %arrayidx, align 1, !dbg !1310
  %conv = sext i8 %1 to i32, !dbg !1310
  %cmp = icmp eq i32 %conv, 0, !dbg !1310
  %conv1 = zext i1 %cmp to i32, !dbg !1310
  %conv2 = sext i32 %conv1 to i64, !dbg !1310
  call void @klee_assume(i64 %conv2), !dbg !1310
  %arraydecay = getelementptr inbounds [5 x i8]* %s, i32 0, i32 0, !dbg !1311
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !1311
  ret i32 %call, !dbg !1311
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_assume(i64) #3

; Function Attrs: nounwind uwtable
define void @klee_init_env(i32* nocapture %argcPtr, i8*** nocapture %argvPtr) #4 {
entry:
  %new_argv = alloca [1024 x i8*], align 16
  %sym_arg_name = alloca [5 x i8], align 4
  %0 = load i32* %argcPtr, align 4, !dbg !1312, !tbaa !1313
  %1 = load i8*** %argvPtr, align 8, !dbg !1317, !tbaa !1318
  %2 = bitcast [1024 x i8*]* %new_argv to i8*, !dbg !1320
  %3 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 0, !dbg !1321
  %4 = bitcast [5 x i8]* %sym_arg_name to i32*, !dbg !1321
  store i32 6779489, i32* %4, align 4, !dbg !1321
  %arrayidx = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !1322
  store i8 0, i8* %arrayidx, align 4, !dbg !1322, !tbaa !1323
  %cmp = icmp eq i32 %0, 2, !dbg !1324
  br i1 %cmp, label %land.lhs.true, label %while.cond.preheader, !dbg !1324

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8** %1, i64 1, !dbg !1324
  %5 = load i8** %arrayidx1, align 8, !dbg !1324, !tbaa !1318
  %6 = load i8* %5, align 1, !dbg !1326, !tbaa !1323
  %cmp7.i = icmp eq i8 %6, 45, !dbg !1326
  br i1 %cmp7.i, label %while.body.i, label %while.body.lr.ph, !dbg !1326

while.body.i:                                     ; preds = %if.end.i, %land.lhs.true
  %7 = phi i8 [ %8, %if.end.i ], [ 45, %land.lhs.true ]
  %b.addr.09.i = phi i8* [ %incdec.ptr3.i, %if.end.i ], [ getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), %land.lhs.true ]
  %a.addr.08.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %5, %land.lhs.true ]
  %tobool.i = icmp eq i8 %7, 0, !dbg !1327
  br i1 %tobool.i, label %if.then, label %if.end.i, !dbg !1327

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8* %a.addr.08.i, i64 1, !dbg !1330
  %incdec.ptr3.i = getelementptr inbounds i8* %b.addr.09.i, i64 1, !dbg !1331
  %8 = load i8* %incdec.ptr.i, align 1, !dbg !1326, !tbaa !1323
  %9 = load i8* %incdec.ptr3.i, align 1, !dbg !1326, !tbaa !1323
  %cmp.i = icmp eq i8 %8, %9, !dbg !1326
  br i1 %cmp.i, label %while.body.i, label %while.cond.preheader, !dbg !1326

while.cond.preheader:                             ; preds = %if.end.i, %entry
  %cmp2817 = icmp sgt i32 %0, 0, !dbg !1332
  br i1 %cmp2817, label %while.body.lr.ph, label %while.end, !dbg !1332

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %land.lhs.true
  %arrayidx20 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !1333
  br label %while.body, !dbg !1332

if.then:                                          ; preds = %while.body.i
  call fastcc void @__emit_error(i8* getelementptr inbounds ([964 x i8]* @.str15, i64 0, i64 0)), !dbg !1334
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
  %idxprom = sext i32 %k.0842 to i64, !dbg !1336
  %arrayidx3 = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !1336
  %11 = load i8** %arrayidx3, align 8, !dbg !1336, !tbaa !1318
  %12 = load i8* %11, align 1, !dbg !1337, !tbaa !1323
  %cmp7.i279 = icmp eq i8 %12, 45, !dbg !1337
  br i1 %cmp7.i279, label %while.body.i283, label %if.else175, !dbg !1337

while.body.i283:                                  ; preds = %if.end.i287, %while.body
  %13 = phi i8 [ %14, %if.end.i287 ], [ 45, %while.body ]
  %b.addr.09.i280 = phi i8* [ %incdec.ptr3.i285, %if.end.i287 ], [ getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), %while.body ]
  %a.addr.08.i281 = phi i8* [ %incdec.ptr.i284, %if.end.i287 ], [ %11, %while.body ]
  %tobool.i282 = icmp eq i8 %13, 0, !dbg !1338
  br i1 %tobool.i282, label %if.then10, label %if.end.i287, !dbg !1338

if.end.i287:                                      ; preds = %while.body.i283
  %incdec.ptr.i284 = getelementptr inbounds i8* %a.addr.08.i281, i64 1, !dbg !1339
  %incdec.ptr3.i285 = getelementptr inbounds i8* %b.addr.09.i280, i64 1, !dbg !1340
  %14 = load i8* %incdec.ptr.i284, align 1, !dbg !1337, !tbaa !1323
  %15 = load i8* %incdec.ptr3.i285, align 1, !dbg !1337, !tbaa !1323
  %cmp.i286 = icmp eq i8 %14, %15, !dbg !1337
  br i1 %cmp.i286, label %while.body.i283, label %lor.lhs.false, !dbg !1337

lor.lhs.false:                                    ; preds = %if.end.i287
  br i1 %cmp7.i279, label %while.body.i297, label %if.else175, !dbg !1337

while.body.i297:                                  ; preds = %if.end.i301, %lor.lhs.false
  %16 = phi i8 [ %17, %if.end.i301 ], [ 45, %lor.lhs.false ]
  %b.addr.09.i294 = phi i8* [ %incdec.ptr3.i299, %if.end.i301 ], [ getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), %lor.lhs.false ]
  %a.addr.08.i295 = phi i8* [ %incdec.ptr.i298, %if.end.i301 ], [ %11, %lor.lhs.false ]
  %tobool.i296 = icmp eq i8 %16, 0, !dbg !1338
  br i1 %tobool.i296, label %if.then10, label %if.end.i301, !dbg !1338

if.end.i301:                                      ; preds = %while.body.i297
  %incdec.ptr.i298 = getelementptr inbounds i8* %a.addr.08.i295, i64 1, !dbg !1339
  %incdec.ptr3.i299 = getelementptr inbounds i8* %b.addr.09.i294, i64 1, !dbg !1340
  %17 = load i8* %incdec.ptr.i298, align 1, !dbg !1337, !tbaa !1323
  %18 = load i8* %incdec.ptr3.i299, align 1, !dbg !1337, !tbaa !1323
  %cmp.i300 = icmp eq i8 %17, %18, !dbg !1337
  br i1 %cmp.i300, label %while.body.i297, label %if.else, !dbg !1337

if.then10:                                        ; preds = %while.body.i297, %while.body.i283
  %inc = add nsw i32 %k.0842, 1, !dbg !1341
  %cmp11 = icmp eq i32 %inc, %0, !dbg !1341
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1341

if.then12:                                        ; preds = %if.then10
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str48, i64 0, i64 0)), !dbg !1343
  unreachable

if.end13:                                         ; preds = %if.then10
  %inc14 = add nsw i32 %k.0842, 2, !dbg !1344
  %idxprom15 = sext i32 %inc to i64, !dbg !1344
  %arrayidx16 = getelementptr inbounds i8** %1, i64 %idxprom15, !dbg !1344
  %19 = load i8** %arrayidx16, align 8, !dbg !1344, !tbaa !1318
  %20 = load i8* %19, align 1, !dbg !1345, !tbaa !1323
  %tobool.i304 = icmp eq i8 %20, 0, !dbg !1345
  br i1 %tobool.i304, label %if.then.i305, label %while.body.i310, !dbg !1345

if.then.i305:                                     ; preds = %if.end13
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !1345
  unreachable

while.body.i310:                                  ; preds = %if.then10.i316, %if.end13
  %21 = phi i8 [ %23, %if.then10.i316 ], [ %20, %if.end13 ]
  %s.pn.i306 = phi i8* [ %incdec.ptr26.i308, %if.then10.i316 ], [ %19, %if.end13 ]
  %res.025.i307 = phi i64 [ %add.i314, %if.then10.i316 ], [ 0, %if.end13 ]
  %incdec.ptr26.i308 = getelementptr inbounds i8* %s.pn.i306, i64 1, !dbg !1347
  %.off.i309 = add i8 %21, -48, !dbg !1348
  %22 = icmp ult i8 %.off.i309, 10, !dbg !1348
  br i1 %22, label %if.then10.i316, label %if.else13.i317, !dbg !1348

if.then10.i316:                                   ; preds = %while.body.i310
  %conv.i311 = sext i8 %21 to i64, !dbg !1352
  %mul.i312 = mul nsw i64 %res.025.i307, 10, !dbg !1353
  %sub.i313 = add i64 %conv.i311, -48, !dbg !1353
  %add.i314 = add i64 %sub.i313, %mul.i312, !dbg !1353
  %23 = load i8* %incdec.ptr26.i308, align 1, !dbg !1347, !tbaa !1323
  %tobool1.i315 = icmp eq i8 %23, 0, !dbg !1347
  br i1 %tobool1.i315, label %__str_to_int.exit318, label %while.body.i310, !dbg !1347

if.else13.i317:                                   ; preds = %while.body.i310
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !1355
  unreachable

__str_to_int.exit318:                             ; preds = %if.then10.i316
  %conv = trunc i64 %add.i314 to i32, !dbg !1344
  %add = add i32 %sym_arg_num.0833, 48, !dbg !1333
  %conv19 = trunc i32 %add to i8, !dbg !1333
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !1333, !tbaa !1323
  %call22 = call fastcc i8* @__get_sym_str(i32 %conv, i8* %3), !dbg !1357
  %cmp.i319 = icmp eq i32 %10, 1024, !dbg !1358
  br i1 %cmp.i319, label %if.then.i320, label %__add_arg.exit325, !dbg !1358

if.then.i320:                                     ; preds = %__str_to_int.exit318
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !1361
  unreachable

__add_arg.exit325:                                ; preds = %__str_to_int.exit318
  %inc18 = add i32 %sym_arg_num.0833, 1, !dbg !1333
  %idxprom.i321 = sext i32 %10 to i64, !dbg !1363
  %arrayidx.i322 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i321, !dbg !1363
  store i8* %call22, i8** %arrayidx.i322, align 8, !dbg !1363, !tbaa !1318
  %inc.i323 = add nsw i32 %10, 1, !dbg !1365
  br label %while.cond.backedge, !dbg !1366

if.else:                                          ; preds = %if.end.i301
  br i1 %cmp7.i279, label %while.body.i330, label %if.else175, !dbg !1367

while.body.i330:                                  ; preds = %if.end.i334, %if.else
  %24 = phi i8 [ %25, %if.end.i334 ], [ 45, %if.else ]
  %b.addr.09.i327 = phi i8* [ %incdec.ptr3.i332, %if.end.i334 ], [ getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), %if.else ]
  %a.addr.08.i328 = phi i8* [ %incdec.ptr.i331, %if.end.i334 ], [ %11, %if.else ]
  %tobool.i329 = icmp eq i8 %24, 0, !dbg !1369
  br i1 %tobool.i329, label %if.then32, label %if.end.i334, !dbg !1369

if.end.i334:                                      ; preds = %while.body.i330
  %incdec.ptr.i331 = getelementptr inbounds i8* %a.addr.08.i328, i64 1, !dbg !1370
  %incdec.ptr3.i332 = getelementptr inbounds i8* %b.addr.09.i327, i64 1, !dbg !1371
  %25 = load i8* %incdec.ptr.i331, align 1, !dbg !1367, !tbaa !1323
  %26 = load i8* %incdec.ptr3.i332, align 1, !dbg !1367, !tbaa !1323
  %cmp.i333 = icmp eq i8 %25, %26, !dbg !1367
  br i1 %cmp.i333, label %while.body.i330, label %lor.lhs.false27, !dbg !1367

lor.lhs.false27:                                  ; preds = %if.end.i334
  br i1 %cmp7.i279, label %while.body.i341, label %if.else175, !dbg !1367

while.body.i341:                                  ; preds = %if.end.i345, %lor.lhs.false27
  %27 = phi i8 [ %28, %if.end.i345 ], [ 45, %lor.lhs.false27 ]
  %b.addr.09.i338 = phi i8* [ %incdec.ptr3.i343, %if.end.i345 ], [ getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), %lor.lhs.false27 ]
  %a.addr.08.i339 = phi i8* [ %incdec.ptr.i342, %if.end.i345 ], [ %11, %lor.lhs.false27 ]
  %tobool.i340 = icmp eq i8 %27, 0, !dbg !1369
  br i1 %tobool.i340, label %if.then32, label %if.end.i345, !dbg !1369

if.end.i345:                                      ; preds = %while.body.i341
  %incdec.ptr.i342 = getelementptr inbounds i8* %a.addr.08.i339, i64 1, !dbg !1370
  %incdec.ptr3.i343 = getelementptr inbounds i8* %b.addr.09.i338, i64 1, !dbg !1371
  %28 = load i8* %incdec.ptr.i342, align 1, !dbg !1367, !tbaa !1323
  %29 = load i8* %incdec.ptr3.i343, align 1, !dbg !1367, !tbaa !1323
  %cmp.i344 = icmp eq i8 %28, %29, !dbg !1367
  br i1 %cmp.i344, label %while.body.i341, label %if.else67, !dbg !1367

if.then32:                                        ; preds = %while.body.i341, %while.body.i330
  %add34 = add nsw i32 %k.0842, 3, !dbg !1372
  %cmp35 = icmp slt i32 %add34, %0, !dbg !1372
  br i1 %cmp35, label %if.end38, label %if.then37, !dbg !1372

if.then37:                                        ; preds = %if.then32
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)), !dbg !1374
  unreachable

if.end38:                                         ; preds = %if.then32
  %inc39 = add nsw i32 %k.0842, 1, !dbg !1375
  %inc40 = add nsw i32 %k.0842, 2, !dbg !1376
  %idxprom41 = sext i32 %inc39 to i64, !dbg !1376
  %arrayidx42 = getelementptr inbounds i8** %1, i64 %idxprom41, !dbg !1376
  %30 = load i8** %arrayidx42, align 8, !dbg !1376, !tbaa !1318
  %31 = load i8* %30, align 1, !dbg !1377, !tbaa !1323
  %tobool.i348 = icmp eq i8 %31, 0, !dbg !1377
  br i1 %tobool.i348, label %if.then.i349, label %while.body.i354, !dbg !1377

if.then.i349:                                     ; preds = %if.end38
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1377
  unreachable

while.body.i354:                                  ; preds = %if.then10.i360, %if.end38
  %32 = phi i8 [ %34, %if.then10.i360 ], [ %31, %if.end38 ]
  %s.pn.i350 = phi i8* [ %incdec.ptr26.i352, %if.then10.i360 ], [ %30, %if.end38 ]
  %res.025.i351 = phi i64 [ %add.i358, %if.then10.i360 ], [ 0, %if.end38 ]
  %incdec.ptr26.i352 = getelementptr inbounds i8* %s.pn.i350, i64 1, !dbg !1378
  %.off.i353 = add i8 %32, -48, !dbg !1379
  %33 = icmp ult i8 %.off.i353, 10, !dbg !1379
  br i1 %33, label %if.then10.i360, label %if.else13.i361, !dbg !1379

if.then10.i360:                                   ; preds = %while.body.i354
  %conv.i355 = sext i8 %32 to i64, !dbg !1380
  %mul.i356 = mul nsw i64 %res.025.i351, 10, !dbg !1381
  %sub.i357 = add i64 %conv.i355, -48, !dbg !1381
  %add.i358 = add i64 %sub.i357, %mul.i356, !dbg !1381
  %34 = load i8* %incdec.ptr26.i352, align 1, !dbg !1378, !tbaa !1323
  %tobool1.i359 = icmp eq i8 %34, 0, !dbg !1378
  br i1 %tobool1.i359, label %__str_to_int.exit362, label %while.body.i354, !dbg !1378

if.else13.i361:                                   ; preds = %while.body.i354
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1382
  unreachable

__str_to_int.exit362:                             ; preds = %if.then10.i360
  %conv44 = trunc i64 %add.i358 to i32, !dbg !1376
  %idxprom46 = sext i32 %inc40 to i64, !dbg !1383
  %arrayidx47 = getelementptr inbounds i8** %1, i64 %idxprom46, !dbg !1383
  %35 = load i8** %arrayidx47, align 8, !dbg !1383, !tbaa !1318
  %36 = load i8* %35, align 1, !dbg !1384, !tbaa !1323
  %tobool.i363 = icmp eq i8 %36, 0, !dbg !1384
  br i1 %tobool.i363, label %if.then.i364, label %while.body.i369, !dbg !1384

if.then.i364:                                     ; preds = %__str_to_int.exit362
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1384
  unreachable

while.body.i369:                                  ; preds = %if.then10.i375, %__str_to_int.exit362
  %37 = phi i8 [ %39, %if.then10.i375 ], [ %36, %__str_to_int.exit362 ]
  %s.pn.i365 = phi i8* [ %incdec.ptr26.i367, %if.then10.i375 ], [ %35, %__str_to_int.exit362 ]
  %res.025.i366 = phi i64 [ %add.i373, %if.then10.i375 ], [ 0, %__str_to_int.exit362 ]
  %incdec.ptr26.i367 = getelementptr inbounds i8* %s.pn.i365, i64 1, !dbg !1385
  %.off.i368 = add i8 %37, -48, !dbg !1386
  %38 = icmp ult i8 %.off.i368, 10, !dbg !1386
  br i1 %38, label %if.then10.i375, label %if.else13.i376, !dbg !1386

if.then10.i375:                                   ; preds = %while.body.i369
  %conv.i370 = sext i8 %37 to i64, !dbg !1387
  %mul.i371 = mul nsw i64 %res.025.i366, 10, !dbg !1388
  %sub.i372 = add i64 %conv.i370, -48, !dbg !1388
  %add.i373 = add i64 %sub.i372, %mul.i371, !dbg !1388
  %39 = load i8* %incdec.ptr26.i367, align 1, !dbg !1385, !tbaa !1323
  %tobool1.i374 = icmp eq i8 %39, 0, !dbg !1385
  br i1 %tobool1.i374, label %__str_to_int.exit377, label %while.body.i369, !dbg !1385

if.else13.i376:                                   ; preds = %while.body.i369
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1389
  unreachable

__str_to_int.exit377:                             ; preds = %if.then10.i375
  %conv49 = trunc i64 %add.i373 to i32, !dbg !1383
  %inc50 = add nsw i32 %k.0842, 4, !dbg !1390
  %idxprom51 = sext i32 %add34 to i64, !dbg !1390
  %arrayidx52 = getelementptr inbounds i8** %1, i64 %idxprom51, !dbg !1390
  %40 = load i8** %arrayidx52, align 8, !dbg !1390, !tbaa !1318
  %41 = load i8* %40, align 1, !dbg !1391, !tbaa !1323
  %tobool.i378 = icmp eq i8 %41, 0, !dbg !1391
  br i1 %tobool.i378, label %if.then.i379, label %while.body.i384, !dbg !1391

if.then.i379:                                     ; preds = %__str_to_int.exit377
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1391
  unreachable

while.body.i384:                                  ; preds = %if.then10.i390, %__str_to_int.exit377
  %42 = phi i8 [ %44, %if.then10.i390 ], [ %41, %__str_to_int.exit377 ]
  %s.pn.i380 = phi i8* [ %incdec.ptr26.i382, %if.then10.i390 ], [ %40, %__str_to_int.exit377 ]
  %res.025.i381 = phi i64 [ %add.i388, %if.then10.i390 ], [ 0, %__str_to_int.exit377 ]
  %incdec.ptr26.i382 = getelementptr inbounds i8* %s.pn.i380, i64 1, !dbg !1392
  %.off.i383 = add i8 %42, -48, !dbg !1393
  %43 = icmp ult i8 %.off.i383, 10, !dbg !1393
  br i1 %43, label %if.then10.i390, label %if.else13.i391, !dbg !1393

if.then10.i390:                                   ; preds = %while.body.i384
  %conv.i385 = sext i8 %42 to i64, !dbg !1394
  %mul.i386 = mul nsw i64 %res.025.i381, 10, !dbg !1395
  %sub.i387 = add i64 %conv.i385, -48, !dbg !1395
  %add.i388 = add i64 %sub.i387, %mul.i386, !dbg !1395
  %44 = load i8* %incdec.ptr26.i382, align 1, !dbg !1392, !tbaa !1323
  %tobool1.i389 = icmp eq i8 %44, 0, !dbg !1392
  br i1 %tobool1.i389, label %__str_to_int.exit392, label %while.body.i384, !dbg !1392

if.else13.i391:                                   ; preds = %while.body.i384
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1396
  unreachable

__str_to_int.exit392:                             ; preds = %if.then10.i390
  %conv54 = trunc i64 %add.i388 to i32, !dbg !1390
  %add55 = add i32 %conv49, 1, !dbg !1397
  %call56 = call i32 @klee_range(i32 %conv44, i32 %add55, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !1397
  %cmp57644 = icmp sgt i32 %call56, 0, !dbg !1398
  br i1 %cmp57644, label %for.body.lr.ph, label %while.cond.backedge, !dbg !1398

for.body.lr.ph:                                   ; preds = %__str_to_int.exit392
  %45 = sext i32 %10 to i64
  br label %for.body, !dbg !1398

for.body:                                         ; preds = %__add_arg.exit399, %for.body.lr.ph
  %indvars.iv = phi i64 [ %45, %for.body.lr.ph ], [ %indvars.iv.next, %__add_arg.exit399 ]
  %i.0646 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %__add_arg.exit399 ]
  %sym_arg_num.1645 = phi i32 [ %sym_arg_num.0833, %for.body.lr.ph ], [ %inc59, %__add_arg.exit399 ]
  %46 = phi i32 [ %10, %for.body.lr.ph ], [ %inc.i397, %__add_arg.exit399 ]
  %add60 = add i32 %sym_arg_num.1645, 48, !dbg !1400
  %conv61 = trunc i32 %add60 to i8, !dbg !1400
  store i8 %conv61, i8* %arrayidx20, align 1, !dbg !1400, !tbaa !1323
  %call65 = call fastcc i8* @__get_sym_str(i32 %conv54, i8* %3), !dbg !1402
  %47 = trunc i64 %indvars.iv to i32, !dbg !1403
  %cmp.i393 = icmp eq i32 %47, 1024, !dbg !1403
  br i1 %cmp.i393, label %if.then.i394, label %__add_arg.exit399, !dbg !1403

if.then.i394:                                     ; preds = %for.body
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !1405
  unreachable

__add_arg.exit399:                                ; preds = %for.body
  %inc59 = add i32 %sym_arg_num.1645, 1, !dbg !1400
  %arrayidx.i396 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %indvars.iv, !dbg !1406
  store i8* %call65, i8** %arrayidx.i396, align 8, !dbg !1406, !tbaa !1318
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1398
  %inc.i397 = add nsw i32 %46, 1, !dbg !1407
  %inc66 = add nsw i32 %i.0646, 1, !dbg !1398
  %cmp57 = icmp slt i32 %inc66, %call56, !dbg !1398
  br i1 %cmp57, label %for.body, label %while.cond.backedge, !dbg !1398

if.else67:                                        ; preds = %if.end.i345
  br i1 %cmp7.i279, label %while.body.i404, label %if.else175, !dbg !1408

while.body.i404:                                  ; preds = %if.end.i408, %if.else67
  %48 = phi i8 [ %49, %if.end.i408 ], [ 45, %if.else67 ]
  %b.addr.09.i401 = phi i8* [ %incdec.ptr3.i406, %if.end.i408 ], [ getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), %if.else67 ]
  %a.addr.08.i402 = phi i8* [ %incdec.ptr.i405, %if.end.i408 ], [ %11, %if.else67 ]
  %tobool.i403 = icmp eq i8 %48, 0, !dbg !1410
  br i1 %tobool.i403, label %if.then77, label %if.end.i408, !dbg !1410

if.end.i408:                                      ; preds = %while.body.i404
  %incdec.ptr.i405 = getelementptr inbounds i8* %a.addr.08.i402, i64 1, !dbg !1411
  %incdec.ptr3.i406 = getelementptr inbounds i8* %b.addr.09.i401, i64 1, !dbg !1412
  %49 = load i8* %incdec.ptr.i405, align 1, !dbg !1408, !tbaa !1323
  %50 = load i8* %incdec.ptr3.i406, align 1, !dbg !1408, !tbaa !1323
  %cmp.i407 = icmp eq i8 %49, %50, !dbg !1408
  br i1 %cmp.i407, label %while.body.i404, label %lor.lhs.false72, !dbg !1408

lor.lhs.false72:                                  ; preds = %if.end.i408
  br i1 %cmp7.i279, label %while.body.i415, label %if.else175, !dbg !1408

while.body.i415:                                  ; preds = %if.end.i419, %lor.lhs.false72
  %51 = phi i8 [ %52, %if.end.i419 ], [ 45, %lor.lhs.false72 ]
  %b.addr.09.i412 = phi i8* [ %incdec.ptr3.i417, %if.end.i419 ], [ getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), %lor.lhs.false72 ]
  %a.addr.08.i413 = phi i8* [ %incdec.ptr.i416, %if.end.i419 ], [ %11, %lor.lhs.false72 ]
  %tobool.i414 = icmp eq i8 %51, 0, !dbg !1410
  br i1 %tobool.i414, label %if.then77, label %if.end.i419, !dbg !1410

if.end.i419:                                      ; preds = %while.body.i415
  %incdec.ptr.i416 = getelementptr inbounds i8* %a.addr.08.i413, i64 1, !dbg !1411
  %incdec.ptr3.i417 = getelementptr inbounds i8* %b.addr.09.i412, i64 1, !dbg !1412
  %52 = load i8* %incdec.ptr.i416, align 1, !dbg !1408, !tbaa !1323
  %53 = load i8* %incdec.ptr3.i417, align 1, !dbg !1408, !tbaa !1323
  %cmp.i418 = icmp eq i8 %52, %53, !dbg !1408
  br i1 %cmp.i418, label %while.body.i415, label %if.else95, !dbg !1408

if.then77:                                        ; preds = %while.body.i415, %while.body.i404
  %add79 = add nsw i32 %k.0842, 2, !dbg !1413
  %cmp80 = icmp slt i32 %add79, %0, !dbg !1413
  br i1 %cmp80, label %if.end83, label %if.then82, !dbg !1413

if.then82:                                        ; preds = %if.then77
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)), !dbg !1415
  unreachable

if.end83:                                         ; preds = %if.then77
  %inc84 = add nsw i32 %k.0842, 1, !dbg !1416
  %idxprom86 = sext i32 %inc84 to i64, !dbg !1417
  %arrayidx87 = getelementptr inbounds i8** %1, i64 %idxprom86, !dbg !1417
  %54 = load i8** %arrayidx87, align 8, !dbg !1417, !tbaa !1318
  %55 = load i8* %54, align 1, !dbg !1418, !tbaa !1323
  %tobool.i422 = icmp eq i8 %55, 0, !dbg !1418
  br i1 %tobool.i422, label %if.then.i423, label %while.body.i428, !dbg !1418

if.then.i423:                                     ; preds = %if.end83
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1418
  unreachable

while.body.i428:                                  ; preds = %if.then10.i434, %if.end83
  %56 = phi i8 [ %58, %if.then10.i434 ], [ %55, %if.end83 ]
  %s.pn.i424 = phi i8* [ %incdec.ptr26.i426, %if.then10.i434 ], [ %54, %if.end83 ]
  %res.025.i425 = phi i64 [ %add.i432, %if.then10.i434 ], [ 0, %if.end83 ]
  %incdec.ptr26.i426 = getelementptr inbounds i8* %s.pn.i424, i64 1, !dbg !1419
  %.off.i427 = add i8 %56, -48, !dbg !1420
  %57 = icmp ult i8 %.off.i427, 10, !dbg !1420
  br i1 %57, label %if.then10.i434, label %if.else13.i435, !dbg !1420

if.then10.i434:                                   ; preds = %while.body.i428
  %conv.i429 = sext i8 %56 to i64, !dbg !1421
  %mul.i430 = mul nsw i64 %res.025.i425, 10, !dbg !1422
  %sub.i431 = add i64 %conv.i429, -48, !dbg !1422
  %add.i432 = add i64 %sub.i431, %mul.i430, !dbg !1422
  %58 = load i8* %incdec.ptr26.i426, align 1, !dbg !1419, !tbaa !1323
  %tobool1.i433 = icmp eq i8 %58, 0, !dbg !1419
  br i1 %tobool1.i433, label %__str_to_int.exit436, label %while.body.i428, !dbg !1419

if.else13.i435:                                   ; preds = %while.body.i428
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1423
  unreachable

__str_to_int.exit436:                             ; preds = %if.then10.i434
  %conv89 = trunc i64 %add.i432 to i32, !dbg !1417
  %inc90 = add nsw i32 %k.0842, 3, !dbg !1424
  %idxprom91 = sext i32 %add79 to i64, !dbg !1424
  %arrayidx92 = getelementptr inbounds i8** %1, i64 %idxprom91, !dbg !1424
  %59 = load i8** %arrayidx92, align 8, !dbg !1424, !tbaa !1318
  %60 = load i8* %59, align 1, !dbg !1425, !tbaa !1323
  %tobool.i437 = icmp eq i8 %60, 0, !dbg !1425
  br i1 %tobool.i437, label %if.then.i438, label %while.body.i443, !dbg !1425

if.then.i438:                                     ; preds = %__str_to_int.exit436
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1425
  unreachable

while.body.i443:                                  ; preds = %if.then10.i449, %__str_to_int.exit436
  %61 = phi i8 [ %63, %if.then10.i449 ], [ %60, %__str_to_int.exit436 ]
  %s.pn.i439 = phi i8* [ %incdec.ptr26.i441, %if.then10.i449 ], [ %59, %__str_to_int.exit436 ]
  %res.025.i440 = phi i64 [ %add.i447, %if.then10.i449 ], [ 0, %__str_to_int.exit436 ]
  %incdec.ptr26.i441 = getelementptr inbounds i8* %s.pn.i439, i64 1, !dbg !1426
  %.off.i442 = add i8 %61, -48, !dbg !1427
  %62 = icmp ult i8 %.off.i442, 10, !dbg !1427
  br i1 %62, label %if.then10.i449, label %if.else13.i450, !dbg !1427

if.then10.i449:                                   ; preds = %while.body.i443
  %conv.i444 = sext i8 %61 to i64, !dbg !1428
  %mul.i445 = mul nsw i64 %res.025.i440, 10, !dbg !1429
  %sub.i446 = add i64 %conv.i444, -48, !dbg !1429
  %add.i447 = add i64 %sub.i446, %mul.i445, !dbg !1429
  %63 = load i8* %incdec.ptr26.i441, align 1, !dbg !1426, !tbaa !1323
  %tobool1.i448 = icmp eq i8 %63, 0, !dbg !1426
  br i1 %tobool1.i448, label %__str_to_int.exit451, label %while.body.i443, !dbg !1426

if.else13.i450:                                   ; preds = %while.body.i443
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1430
  unreachable

__str_to_int.exit451:                             ; preds = %if.then10.i449
  %conv94 = trunc i64 %add.i447 to i32, !dbg !1424
  br label %while.cond.backedge, !dbg !1431

if.else95:                                        ; preds = %if.end.i419
  br i1 %cmp7.i279, label %while.body.i456, label %if.else175, !dbg !1432

while.body.i456:                                  ; preds = %if.end.i460, %if.else95
  %64 = phi i8 [ %65, %if.end.i460 ], [ 45, %if.else95 ]
  %b.addr.09.i453 = phi i8* [ %incdec.ptr3.i458, %if.end.i460 ], [ getelementptr inbounds ([12 x i8]* @.str12, i64 0, i64 0), %if.else95 ]
  %a.addr.08.i454 = phi i8* [ %incdec.ptr.i457, %if.end.i460 ], [ %11, %if.else95 ]
  %tobool.i455 = icmp eq i8 %64, 0, !dbg !1434
  br i1 %tobool.i455, label %if.then105, label %if.end.i460, !dbg !1434

if.end.i460:                                      ; preds = %while.body.i456
  %incdec.ptr.i457 = getelementptr inbounds i8* %a.addr.08.i454, i64 1, !dbg !1435
  %incdec.ptr3.i458 = getelementptr inbounds i8* %b.addr.09.i453, i64 1, !dbg !1436
  %65 = load i8* %incdec.ptr.i457, align 1, !dbg !1432, !tbaa !1323
  %66 = load i8* %incdec.ptr3.i458, align 1, !dbg !1432, !tbaa !1323
  %cmp.i459 = icmp eq i8 %65, %66, !dbg !1432
  br i1 %cmp.i459, label %while.body.i456, label %lor.lhs.false100, !dbg !1432

lor.lhs.false100:                                 ; preds = %if.end.i460
  br i1 %cmp7.i279, label %while.body.i467, label %if.else175, !dbg !1437

while.body.i467:                                  ; preds = %if.end.i471, %lor.lhs.false100
  %67 = phi i8 [ %68, %if.end.i471 ], [ 45, %lor.lhs.false100 ]
  %b.addr.09.i464 = phi i8* [ %incdec.ptr3.i469, %if.end.i471 ], [ getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0), %lor.lhs.false100 ]
  %a.addr.08.i465 = phi i8* [ %incdec.ptr.i468, %if.end.i471 ], [ %11, %lor.lhs.false100 ]
  %tobool.i466 = icmp eq i8 %67, 0, !dbg !1439
  br i1 %tobool.i466, label %if.then105, label %if.end.i471, !dbg !1439

if.end.i471:                                      ; preds = %while.body.i467
  %incdec.ptr.i468 = getelementptr inbounds i8* %a.addr.08.i465, i64 1, !dbg !1440
  %incdec.ptr3.i469 = getelementptr inbounds i8* %b.addr.09.i464, i64 1, !dbg !1441
  %68 = load i8* %incdec.ptr.i468, align 1, !dbg !1437, !tbaa !1323
  %69 = load i8* %incdec.ptr3.i469, align 1, !dbg !1437, !tbaa !1323
  %cmp.i470 = icmp eq i8 %68, %69, !dbg !1437
  br i1 %cmp.i470, label %while.body.i467, label %if.else117, !dbg !1437

if.then105:                                       ; preds = %while.body.i467, %while.body.i456
  %inc107 = add nsw i32 %k.0842, 1, !dbg !1442
  %cmp108 = icmp eq i32 %inc107, %0, !dbg !1442
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !1442

if.then110:                                       ; preds = %if.then105
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0)), !dbg !1444
  unreachable

if.end111:                                        ; preds = %if.then105
  %inc112 = add nsw i32 %k.0842, 2, !dbg !1445
  %idxprom113 = sext i32 %inc107 to i64, !dbg !1445
  %arrayidx114 = getelementptr inbounds i8** %1, i64 %idxprom113, !dbg !1445
  %70 = load i8** %arrayidx114, align 8, !dbg !1445, !tbaa !1318
  %71 = load i8* %70, align 1, !dbg !1446, !tbaa !1323
  %tobool.i474 = icmp eq i8 %71, 0, !dbg !1446
  br i1 %tobool.i474, label %if.then.i475, label %while.body.i480, !dbg !1446

if.then.i475:                                     ; preds = %if.end111
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !1446
  unreachable

while.body.i480:                                  ; preds = %if.then10.i486, %if.end111
  %72 = phi i8 [ %74, %if.then10.i486 ], [ %71, %if.end111 ]
  %s.pn.i476 = phi i8* [ %incdec.ptr26.i478, %if.then10.i486 ], [ %70, %if.end111 ]
  %res.025.i477 = phi i64 [ %add.i484, %if.then10.i486 ], [ 0, %if.end111 ]
  %incdec.ptr26.i478 = getelementptr inbounds i8* %s.pn.i476, i64 1, !dbg !1447
  %.off.i479 = add i8 %72, -48, !dbg !1448
  %73 = icmp ult i8 %.off.i479, 10, !dbg !1448
  br i1 %73, label %if.then10.i486, label %if.else13.i487, !dbg !1448

if.then10.i486:                                   ; preds = %while.body.i480
  %conv.i481 = sext i8 %72 to i64, !dbg !1449
  %mul.i482 = mul nsw i64 %res.025.i477, 10, !dbg !1450
  %sub.i483 = add i64 %conv.i481, -48, !dbg !1450
  %add.i484 = add i64 %sub.i483, %mul.i482, !dbg !1450
  %74 = load i8* %incdec.ptr26.i478, align 1, !dbg !1447, !tbaa !1323
  %tobool1.i485 = icmp eq i8 %74, 0, !dbg !1447
  br i1 %tobool1.i485, label %__str_to_int.exit488, label %while.body.i480, !dbg !1447

if.else13.i487:                                   ; preds = %while.body.i480
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !1451
  unreachable

__str_to_int.exit488:                             ; preds = %if.then10.i486
  %conv116 = trunc i64 %add.i484 to i32, !dbg !1445
  br label %while.cond.backedge, !dbg !1452

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
  %cmp2 = icmp slt i32 %k.0.be, %0, !dbg !1332
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1332

if.else117:                                       ; preds = %if.end.i471
  br i1 %cmp7.i279, label %while.body.i493, label %if.else175, !dbg !1453

while.body.i493:                                  ; preds = %if.end.i497, %if.else117
  %75 = phi i8 [ %76, %if.end.i497 ], [ 45, %if.else117 ]
  %b.addr.09.i490 = phi i8* [ %incdec.ptr3.i495, %if.end.i497 ], [ getelementptr inbounds ([13 x i8]* @.str159, i64 0, i64 0), %if.else117 ]
  %a.addr.08.i491 = phi i8* [ %incdec.ptr.i494, %if.end.i497 ], [ %11, %if.else117 ]
  %tobool.i492 = icmp eq i8 %75, 0, !dbg !1455
  br i1 %tobool.i492, label %if.then127, label %if.end.i497, !dbg !1455

if.end.i497:                                      ; preds = %while.body.i493
  %incdec.ptr.i494 = getelementptr inbounds i8* %a.addr.08.i491, i64 1, !dbg !1456
  %incdec.ptr3.i495 = getelementptr inbounds i8* %b.addr.09.i490, i64 1, !dbg !1457
  %76 = load i8* %incdec.ptr.i494, align 1, !dbg !1453, !tbaa !1323
  %77 = load i8* %incdec.ptr3.i495, align 1, !dbg !1453, !tbaa !1323
  %cmp.i496 = icmp eq i8 %76, %77, !dbg !1453
  br i1 %cmp.i496, label %while.body.i493, label %lor.lhs.false122, !dbg !1453

lor.lhs.false122:                                 ; preds = %if.end.i497
  br i1 %cmp7.i279, label %while.body.i504, label %if.else175, !dbg !1458

while.body.i504:                                  ; preds = %if.end.i508, %lor.lhs.false122
  %78 = phi i8 [ %79, %if.end.i508 ], [ 45, %lor.lhs.false122 ]
  %b.addr.09.i501 = phi i8* [ %incdec.ptr3.i506, %if.end.i508 ], [ getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), %lor.lhs.false122 ]
  %a.addr.08.i502 = phi i8* [ %incdec.ptr.i505, %if.end.i508 ], [ %11, %lor.lhs.false122 ]
  %tobool.i503 = icmp eq i8 %78, 0, !dbg !1460
  br i1 %tobool.i503, label %if.then127, label %if.end.i508, !dbg !1460

if.end.i508:                                      ; preds = %while.body.i504
  %incdec.ptr.i505 = getelementptr inbounds i8* %a.addr.08.i502, i64 1, !dbg !1461
  %incdec.ptr3.i506 = getelementptr inbounds i8* %b.addr.09.i501, i64 1, !dbg !1462
  %79 = load i8* %incdec.ptr.i505, align 1, !dbg !1458, !tbaa !1323
  %80 = load i8* %incdec.ptr3.i506, align 1, !dbg !1458, !tbaa !1323
  %cmp.i507 = icmp eq i8 %79, %80, !dbg !1458
  br i1 %cmp.i507, label %while.body.i504, label %if.else129, !dbg !1458

if.then127:                                       ; preds = %while.body.i504, %while.body.i493
  %inc128 = add nsw i32 %k.0842, 1, !dbg !1463
  br label %while.cond.backedge, !dbg !1465

if.else129:                                       ; preds = %if.end.i508
  br i1 %cmp7.i279, label %while.body.i515, label %if.else175, !dbg !1466

while.body.i515:                                  ; preds = %if.end.i519, %if.else129
  %81 = phi i8 [ %82, %if.end.i519 ], [ 45, %if.else129 ]
  %b.addr.09.i512 = phi i8* [ %incdec.ptr3.i517, %if.end.i519 ], [ getelementptr inbounds ([18 x i8]* @.str17, i64 0, i64 0), %if.else129 ]
  %a.addr.08.i513 = phi i8* [ %incdec.ptr.i516, %if.end.i519 ], [ %11, %if.else129 ]
  %tobool.i514 = icmp eq i8 %81, 0, !dbg !1468
  br i1 %tobool.i514, label %if.then139, label %if.end.i519, !dbg !1468

if.end.i519:                                      ; preds = %while.body.i515
  %incdec.ptr.i516 = getelementptr inbounds i8* %a.addr.08.i513, i64 1, !dbg !1469
  %incdec.ptr3.i517 = getelementptr inbounds i8* %b.addr.09.i512, i64 1, !dbg !1470
  %82 = load i8* %incdec.ptr.i516, align 1, !dbg !1466, !tbaa !1323
  %83 = load i8* %incdec.ptr3.i517, align 1, !dbg !1466, !tbaa !1323
  %cmp.i518 = icmp eq i8 %82, %83, !dbg !1466
  br i1 %cmp.i518, label %while.body.i515, label %lor.lhs.false134, !dbg !1466

lor.lhs.false134:                                 ; preds = %if.end.i519
  br i1 %cmp7.i279, label %while.body.i570, label %if.else175, !dbg !1466

while.body.i570:                                  ; preds = %if.end.i574, %lor.lhs.false134
  %84 = phi i8 [ %85, %if.end.i574 ], [ 45, %lor.lhs.false134 ]
  %b.addr.09.i567 = phi i8* [ %incdec.ptr3.i572, %if.end.i574 ], [ getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), %lor.lhs.false134 ]
  %a.addr.08.i568 = phi i8* [ %incdec.ptr.i571, %if.end.i574 ], [ %11, %lor.lhs.false134 ]
  %tobool.i569 = icmp eq i8 %84, 0, !dbg !1468
  br i1 %tobool.i569, label %if.then139, label %if.end.i574, !dbg !1468

if.end.i574:                                      ; preds = %while.body.i570
  %incdec.ptr.i571 = getelementptr inbounds i8* %a.addr.08.i568, i64 1, !dbg !1469
  %incdec.ptr3.i572 = getelementptr inbounds i8* %b.addr.09.i567, i64 1, !dbg !1470
  %85 = load i8* %incdec.ptr.i571, align 1, !dbg !1466, !tbaa !1323
  %86 = load i8* %incdec.ptr3.i572, align 1, !dbg !1466, !tbaa !1323
  %cmp.i573 = icmp eq i8 %85, %86, !dbg !1466
  br i1 %cmp.i573, label %while.body.i570, label %if.else141, !dbg !1466

if.then139:                                       ; preds = %while.body.i570, %while.body.i515
  %inc140 = add nsw i32 %k.0842, 1, !dbg !1471
  br label %while.cond.backedge, !dbg !1473

if.else141:                                       ; preds = %if.end.i574
  br i1 %cmp7.i279, label %while.body.i559, label %if.else175, !dbg !1474

while.body.i559:                                  ; preds = %if.end.i563, %if.else141
  %87 = phi i8 [ %88, %if.end.i563 ], [ 45, %if.else141 ]
  %b.addr.09.i556 = phi i8* [ %incdec.ptr3.i561, %if.end.i563 ], [ getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), %if.else141 ]
  %a.addr.08.i557 = phi i8* [ %incdec.ptr.i560, %if.end.i563 ], [ %11, %if.else141 ]
  %tobool.i558 = icmp eq i8 %87, 0, !dbg !1476
  br i1 %tobool.i558, label %if.then151, label %if.end.i563, !dbg !1476

if.end.i563:                                      ; preds = %while.body.i559
  %incdec.ptr.i560 = getelementptr inbounds i8* %a.addr.08.i557, i64 1, !dbg !1477
  %incdec.ptr3.i561 = getelementptr inbounds i8* %b.addr.09.i556, i64 1, !dbg !1478
  %88 = load i8* %incdec.ptr.i560, align 1, !dbg !1474, !tbaa !1323
  %89 = load i8* %incdec.ptr3.i561, align 1, !dbg !1474, !tbaa !1323
  %cmp.i562 = icmp eq i8 %88, %89, !dbg !1474
  br i1 %cmp.i562, label %while.body.i559, label %lor.lhs.false146, !dbg !1474

lor.lhs.false146:                                 ; preds = %if.end.i563
  br i1 %cmp7.i279, label %while.body.i548, label %if.else175, !dbg !1474

while.body.i548:                                  ; preds = %if.end.i552, %lor.lhs.false146
  %90 = phi i8 [ %91, %if.end.i552 ], [ 45, %lor.lhs.false146 ]
  %b.addr.09.i545 = phi i8* [ %incdec.ptr3.i550, %if.end.i552 ], [ getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), %lor.lhs.false146 ]
  %a.addr.08.i546 = phi i8* [ %incdec.ptr.i549, %if.end.i552 ], [ %11, %lor.lhs.false146 ]
  %tobool.i547 = icmp eq i8 %90, 0, !dbg !1476
  br i1 %tobool.i547, label %if.then151, label %if.end.i552, !dbg !1476

if.end.i552:                                      ; preds = %while.body.i548
  %incdec.ptr.i549 = getelementptr inbounds i8* %a.addr.08.i546, i64 1, !dbg !1477
  %incdec.ptr3.i550 = getelementptr inbounds i8* %b.addr.09.i545, i64 1, !dbg !1478
  %91 = load i8* %incdec.ptr.i549, align 1, !dbg !1474, !tbaa !1323
  %92 = load i8* %incdec.ptr3.i550, align 1, !dbg !1474, !tbaa !1323
  %cmp.i551 = icmp eq i8 %91, %92, !dbg !1474
  br i1 %cmp.i551, label %while.body.i548, label %if.else153, !dbg !1474

if.then151:                                       ; preds = %while.body.i548, %while.body.i559
  %inc152 = add nsw i32 %k.0842, 1, !dbg !1479
  br label %while.cond.backedge, !dbg !1481

if.else153:                                       ; preds = %if.end.i552
  br i1 %cmp7.i279, label %while.body.i537, label %if.else175, !dbg !1482

while.body.i537:                                  ; preds = %if.end.i541, %if.else153
  %93 = phi i8 [ %94, %if.end.i541 ], [ 45, %if.else153 ]
  %b.addr.09.i534 = phi i8* [ %incdec.ptr3.i539, %if.end.i541 ], [ getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), %if.else153 ]
  %a.addr.08.i535 = phi i8* [ %incdec.ptr.i538, %if.end.i541 ], [ %11, %if.else153 ]
  %tobool.i536 = icmp eq i8 %93, 0, !dbg !1484
  br i1 %tobool.i536, label %if.then163, label %if.end.i541, !dbg !1484

if.end.i541:                                      ; preds = %while.body.i537
  %incdec.ptr.i538 = getelementptr inbounds i8* %a.addr.08.i535, i64 1, !dbg !1485
  %incdec.ptr3.i539 = getelementptr inbounds i8* %b.addr.09.i534, i64 1, !dbg !1486
  %94 = load i8* %incdec.ptr.i538, align 1, !dbg !1482, !tbaa !1323
  %95 = load i8* %incdec.ptr3.i539, align 1, !dbg !1482, !tbaa !1323
  %cmp.i540 = icmp eq i8 %94, %95, !dbg !1482
  br i1 %cmp.i540, label %while.body.i537, label %lor.lhs.false158, !dbg !1482

lor.lhs.false158:                                 ; preds = %if.end.i541
  br i1 %cmp7.i279, label %while.body.i526, label %if.else175, !dbg !1482

while.body.i526:                                  ; preds = %if.end.i530, %lor.lhs.false158
  %96 = phi i8 [ %97, %if.end.i530 ], [ 45, %lor.lhs.false158 ]
  %b.addr.09.i523 = phi i8* [ %incdec.ptr3.i528, %if.end.i530 ], [ getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), %lor.lhs.false158 ]
  %a.addr.08.i524 = phi i8* [ %incdec.ptr.i527, %if.end.i530 ], [ %11, %lor.lhs.false158 ]
  %tobool.i525 = icmp eq i8 %96, 0, !dbg !1484
  br i1 %tobool.i525, label %if.then163, label %if.end.i530, !dbg !1484

if.end.i530:                                      ; preds = %while.body.i526
  %incdec.ptr.i527 = getelementptr inbounds i8* %a.addr.08.i524, i64 1, !dbg !1485
  %incdec.ptr3.i528 = getelementptr inbounds i8* %b.addr.09.i523, i64 1, !dbg !1486
  %97 = load i8* %incdec.ptr.i527, align 1, !dbg !1482, !tbaa !1323
  %98 = load i8* %incdec.ptr3.i528, align 1, !dbg !1482, !tbaa !1323
  %cmp.i529 = icmp eq i8 %97, %98, !dbg !1482
  br i1 %cmp.i529, label %while.body.i526, label %if.else175, !dbg !1482

if.then163:                                       ; preds = %while.body.i526, %while.body.i537
  %inc165 = add nsw i32 %k.0842, 1, !dbg !1487
  %cmp166 = icmp eq i32 %inc165, %0, !dbg !1487
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !1487

if.then168:                                       ; preds = %if.then163
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0)), !dbg !1489
  unreachable

if.end169:                                        ; preds = %if.then163
  %inc170 = add nsw i32 %k.0842, 2, !dbg !1490
  %idxprom171 = sext i32 %inc165 to i64, !dbg !1490
  %arrayidx172 = getelementptr inbounds i8** %1, i64 %idxprom171, !dbg !1490
  %99 = load i8** %arrayidx172, align 8, !dbg !1490, !tbaa !1318
  %100 = load i8* %99, align 1, !dbg !1491, !tbaa !1323
  %tobool.i290 = icmp eq i8 %100, 0, !dbg !1491
  br i1 %tobool.i290, label %if.then.i291, label %while.body.i292, !dbg !1491

if.then.i291:                                     ; preds = %if.end169
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !1491
  unreachable

while.body.i292:                                  ; preds = %if.then10.i, %if.end169
  %101 = phi i8 [ %103, %if.then10.i ], [ %100, %if.end169 ]
  %s.pn.i = phi i8* [ %incdec.ptr26.i, %if.then10.i ], [ %99, %if.end169 ]
  %res.025.i = phi i64 [ %add.i, %if.then10.i ], [ 0, %if.end169 ]
  %incdec.ptr26.i = getelementptr inbounds i8* %s.pn.i, i64 1, !dbg !1492
  %.off.i = add i8 %101, -48, !dbg !1493
  %102 = icmp ult i8 %.off.i, 10, !dbg !1493
  br i1 %102, label %if.then10.i, label %if.else13.i, !dbg !1493

if.then10.i:                                      ; preds = %while.body.i292
  %conv.i = sext i8 %101 to i64, !dbg !1494
  %mul.i = mul nsw i64 %res.025.i, 10, !dbg !1495
  %sub.i = add i64 %conv.i, -48, !dbg !1495
  %add.i = add i64 %sub.i, %mul.i, !dbg !1495
  %103 = load i8* %incdec.ptr26.i, align 1, !dbg !1492, !tbaa !1323
  %tobool1.i = icmp eq i8 %103, 0, !dbg !1492
  br i1 %tobool1.i, label %__str_to_int.exit, label %while.body.i292, !dbg !1492

if.else13.i:                                      ; preds = %while.body.i292
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !1496
  unreachable

__str_to_int.exit:                                ; preds = %if.then10.i
  %conv174 = trunc i64 %add.i to i32, !dbg !1490
  br label %while.cond.backedge, !dbg !1497

if.else175:                                       ; preds = %if.end.i530, %lor.lhs.false158, %if.else153, %lor.lhs.false146, %if.else141, %lor.lhs.false134, %if.else129, %lor.lhs.false122, %if.else117, %lor.lhs.false100, %if.else95, %lor.lhs.false72, %if
  %cmp.i277 = icmp eq i32 %10, 1024, !dbg !1498
  br i1 %cmp.i277, label %if.then.i, label %__add_arg.exit, !dbg !1498

if.then.i:                                        ; preds = %if.else175
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !1501
  unreachable

__add_arg.exit:                                   ; preds = %if.else175
  %inc177 = add nsw i32 %k.0842, 1, !dbg !1499
  %idxprom.i = sext i32 %10 to i64, !dbg !1502
  %arrayidx.i = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i, !dbg !1502
  store i8* %11, i8** %arrayidx.i, align 8, !dbg !1502, !tbaa !1318
  %inc.i = add nsw i32 %10, 1, !dbg !1503
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %sym_files.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_files.0.be, %while.cond.backedge ]
  %sym_file_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_file_len.0.be, %while.cond.backedge ]
  %sym_stdin_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdin_len.0.be, %while.cond.backedge ]
  %sym_stdout_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdout_flag.0.be, %while.cond.backedge ]
  %save_all_writes_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %save_all_writes_flag.0.be, %while.cond.backedge ]
  %fd_fail.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %fd_fail.0.be, %while.cond.backedge ]
  %.lcssa648 = phi i32 [ 0, %while.cond.preheader ], [ %.be, %while.cond.backedge ]
  %add188 = add nsw i32 %.lcssa648, 1, !dbg !1504
  %conv189 = sext i32 %add188 to i64, !dbg !1504
  %int_cast_to_i64 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !1504
  %mul = shl nsw i64 %conv189, 3, !dbg !1504
  %call190 = call noalias i8* @malloc(i64 %mul) #5, !dbg !1504
  %104 = bitcast i8* %call190 to i8**, !dbg !1504
  call void @klee_mark_global(i8* %call190) #5, !dbg !1505
  %conv191 = sext i32 %.lcssa648 to i64, !dbg !1506
  %int_cast_to_i641 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1506
  %mul192 = shl nsw i64 %conv191, 3, !dbg !1506
  %105 = call i8* @memcpy(i8* %call190, i8* %2, i64 %mul192)
  %arrayidx194 = getelementptr inbounds i8** %104, i64 %conv191, !dbg !1507
  store i8* null, i8** %arrayidx194, align 8, !dbg !1507, !tbaa !1318
  store i32 %.lcssa648, i32* %argcPtr, align 4, !dbg !1508, !tbaa !1313
  store i8** %104, i8*** %argvPtr, align 8, !dbg !1509, !tbaa !1318
  call void @klee_init_fds(i32 %sym_files.0.lcssa, i32 %sym_file_len.0.lcssa, i32 %sym_stdin_len.0.lcssa, i32 %sym_stdout_flag.0.lcssa, i32 %save_all_writes_flag.0.lcssa, i32 %fd_fail.0.lcssa) #5, !dbg !1510
  ret void, !dbg !1511
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
  tail call void @klee_report_error(i8* getelementptr inbounds ([46 x i8]* @.str25, i64 0, i64 0), i32 24, i8* %msg, i8* getelementptr inbounds ([9 x i8]* @.str2610, i64 0, i64 0)) #14, !dbg !1512
  unreachable, !dbg !1512
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @__get_sym_str(i32 %numChars, i8* %name) #4 {
entry:
  %add = add nsw i32 %numChars, 1, !dbg !1513
  %conv = sext i32 %add to i64, !dbg !1513
  %call = tail call noalias i8* @malloc(i64 %conv) #5, !dbg !1513
  tail call void @klee_mark_global(i8* %call) #5, !dbg !1514
  tail call void @klee_make_symbolic(i8* %call, i64 %conv, i8* %name) #5, !dbg !1515
  %cmp18 = icmp sgt i32 %numChars, 0, !dbg !1516
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1516

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !1518
  %0 = load i8* %arrayidx, align 1, !dbg !1518, !tbaa !1323
  %cmp.i = icmp sgt i8 %0, 31, !dbg !1519
  %cmp3.i = icmp ne i8 %0, 127, !dbg !1519
  %cmp3..i = and i1 %cmp.i, %cmp3.i, !dbg !1519
  %conv5 = zext i1 %cmp3..i to i64, !dbg !1518
  tail call void @klee_posix_prefer_cex(i8* %call, i64 %conv5) #5, !dbg !1518
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1516
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1516
  %exitcond = icmp eq i32 %lftr.wideiv, %numChars, !dbg !1516
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1516

for.end:                                          ; preds = %for.body, %entry
  %idxprom6 = sext i32 %numChars to i64, !dbg !1520
  %arrayidx7 = getelementptr inbounds i8* %call, i64 %idxprom6, !dbg !1520
  store i8 0, i8* %arrayidx7, align 1, !dbg !1520, !tbaa !1323
  ret i8* %call, !dbg !1521
}

; Function Attrs: nounwind uwtable
define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %stdin_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) #4 {
entry:
  %x.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %s = alloca %struct.stat64.16, align 8
  %0 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !1522
  %1 = call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([7 x i8]* @klee_init_fds.name, i64 0, i64 0), i64 7)
  %2 = bitcast %struct.stat64.16* %s to i8*, !dbg !1523
  %call.i = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0), %struct.stat64.16* %s) #5, !dbg !1524
  store i32 %n_files, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1527, !tbaa !1528
  %conv = zext i32 %n_files to i64, !dbg !1530
  %mul = mul i64 %conv, 24, !dbg !1530
  %call1 = call noalias i8* @malloc(i64 %mul) #5, !dbg !1530
  %3 = bitcast i8* %call1 to %struct.exe_disk_file_t.17*, !dbg !1530
  store %struct.exe_disk_file_t.17* %3, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1530, !tbaa !1531
  %cmp29 = icmp eq i32 %n_files, 0, !dbg !1532
  br i1 %cmp29, label %for.end, label %for.body, !dbg !1532

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %4 = phi %struct.exe_disk_file_t.17* [ %.pre, %for.body.for.body_crit_edge ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %5 = trunc i64 %indvars.iv to i8, !dbg !1534
  %add = add i8 %5, 65, !dbg !1534
  store i8 %add, i8* %0, align 1, !dbg !1534, !tbaa !1323
  %arrayidx4 = getelementptr inbounds %struct.exe_disk_file_t.17* %4, i64 %indvars.iv, !dbg !1536
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* %arrayidx4, i32 %file_length, i8* %0, %struct.stat64.16* %s), !dbg !1536
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1532
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1532
  %exitcond = icmp eq i32 %lftr.wideiv, %n_files, !dbg !1532
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !1532

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1536, !tbaa !1531
  br label %for.body, !dbg !1532

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %stdin_length, 0, !dbg !1537
  br i1 %tobool, label %if.else, label %if.then, !dbg !1537

if.then:                                          ; preds = %for.end
  %call5 = call noalias i8* @malloc(i64 24) #5, !dbg !1539
  %6 = bitcast i8* %call5 to %struct.exe_disk_file_t.17*, !dbg !1539
  store %struct.exe_disk_file_t.17* %6, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 1), align 8, !dbg !1539, !tbaa !1541
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* %6, i32 %stdin_length, i8* getelementptr inbounds ([6 x i8]* @.str128, i64 0, i64 0), %struct.stat64.16* %s), !dbg !1542
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 1), align 8, !dbg !1543, !tbaa !1541
  store %struct.exe_disk_file_t.17* %7, %struct.exe_disk_file_t.17** getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 8, !dbg !1543, !tbaa !1544
  br label %if.end, !dbg !1547

if.else:                                          ; preds = %for.end
  store %struct.exe_disk_file_t.17* null, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 1), align 8, !dbg !1548, !tbaa !1541
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 %max_failures, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1549, !tbaa !1550
  %tobool6 = icmp eq i32 %max_failures, 0, !dbg !1551
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !1551

if.then7:                                         ; preds = %if.end
  %call8 = call noalias i8* @malloc(i64 4) #5, !dbg !1553
  %8 = bitcast i8* %call8 to i32*, !dbg !1553
  store i32* %8, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 6), align 8, !dbg !1553, !tbaa !1555
  %call9 = call noalias i8* @malloc(i64 4) #5, !dbg !1556
  %9 = bitcast i8* %call9 to i32*, !dbg !1556
  store i32* %9, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 7), align 8, !dbg !1556, !tbaa !1557
  %call10 = call noalias i8* @malloc(i64 4) #5, !dbg !1558
  %10 = bitcast i8* %call10 to i32*, !dbg !1558
  store i32* %10, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !1558, !tbaa !1559
  %call11 = call noalias i8* @malloc(i64 4) #5, !dbg !1560
  %11 = bitcast i8* %call11 to i32*, !dbg !1560
  store i32* %11, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 9), align 8, !dbg !1560, !tbaa !1561
  %call12 = call noalias i8* @malloc(i64 4) #5, !dbg !1562
  %12 = bitcast i8* %call12 to i32*, !dbg !1562
  store i32* %12, i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 10), align 8, !dbg !1562, !tbaa !1563
  call void @klee_make_symbolic(i8* %call8, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str229, i64 0, i64 0)) #5, !dbg !1564
  %13 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 7), align 8, !dbg !1565, !tbaa !1557
  %14 = bitcast i32* %13 to i8*, !dbg !1565
  call void @klee_make_symbolic(i8* %14, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str330, i64 0, i64 0)) #5, !dbg !1565
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !1566, !tbaa !1559
  %16 = bitcast i32* %15 to i8*, !dbg !1566
  call void @klee_make_symbolic(i8* %16, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str431, i64 0, i64 0)) #5, !dbg !1566
  %17 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 9), align 8, !dbg !1567, !tbaa !1561
  %18 = bitcast i32* %17 to i8*, !dbg !1567
  call void @klee_make_symbolic(i8* %18, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str532, i64 0, i64 0)) #5, !dbg !1567
  %19 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 10), align 8, !dbg !1568, !tbaa !1563
  %20 = bitcast i32* %19 to i8*, !dbg !1568
  call void @klee_make_symbolic(i8* %20, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str633, i64 0, i64 0)) #5, !dbg !1568
  br label %if.end13, !dbg !1569

if.end13:                                         ; preds = %if.then7, %if.end
  %tobool14 = icmp eq i32 %sym_stdout_flag, 0, !dbg !1570
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !1570

if.then15:                                        ; preds = %if.end13
  %call16 = call noalias i8* @malloc(i64 24) #5, !dbg !1572
  %21 = bitcast i8* %call16 to %struct.exe_disk_file_t.17*, !dbg !1572
  store %struct.exe_disk_file_t.17* %21, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !1572, !tbaa !1574
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* %21, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str734, i64 0, i64 0), %struct.stat64.16* %s), !dbg !1575
  %22 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !1576, !tbaa !1574
  store %struct.exe_disk_file_t.17* %22, %struct.exe_disk_file_t.17** getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !1576, !tbaa !1544
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 3), align 8, !dbg !1577, !tbaa !1578
  br label %if.end18, !dbg !1579

if.else17:                                        ; preds = %if.end13
  store %struct.exe_disk_file_t.17* null, %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !1580, !tbaa !1574
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  store i32 %save_all_writes_flag, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 3), align 8, !dbg !1581, !tbaa !1582
  %23 = bitcast i32* %x.i to i8*, !dbg !1584
  call void @klee_make_symbolic(i8* %23, i64 4, i8* getelementptr inbounds ([14 x i8]* @.str835, i64 0, i64 0)) #5, !dbg !1586
  %24 = load i32* %x.i, align 4, !dbg !1587, !tbaa !1313
  store i32 %24, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 2), align 4, !dbg !1585, !tbaa !1588
  %cmp20 = icmp eq i32 %24, 1, !dbg !1589
  %conv22 = zext i1 %cmp20 to i64, !dbg !1589
  call void @klee_assume(i64 %conv22) #5, !dbg !1589
  ret void, !dbg !1590
}

declare i32 @klee_is_symbolic(i64) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @__create_new_dfile(%struct.exe_disk_file_t.17* nocapture %dfile, i32 %size, i8* %name, %struct.stat64.16* nocapture readonly %defaults) #4 {
entry:
  %sname = alloca [64 x i8], align 16
  %call = call noalias i8* @malloc(i64 144) #5, !dbg !1591
  %0 = bitcast i8* %call to %struct.stat64.16*, !dbg !1591
  %1 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 0, !dbg !1592
  %2 = load i8* %name, align 1, !dbg !1593, !tbaa !1323
  %tobool148 = icmp eq i8 %2, 0, !dbg !1593
  %sub.ptr.rhs.cast2 = ptrtoint i8* %name to i64, !dbg !1595
  br i1 %tobool148, label %for.end, label %for.body, !dbg !1593

for.body:                                         ; preds = %for.body, %entry
  %arrayidx4152 = phi i8* [ %arrayidx4, %for.body ], [ %1, %entry ]
  %3 = phi i8 [ %4, %for.body ], [ %2, %entry ]
  %sp.0151 = phi i8* [ %incdec.ptr, %for.body ], [ %name, %entry ]
  store i8 %3, i8* %arrayidx4152, align 1, !dbg !1596, !tbaa !1323
  %incdec.ptr = getelementptr inbounds i8* %sp.0151, i64 1, !dbg !1593
  %4 = load i8* %incdec.ptr, align 1, !dbg !1593, !tbaa !1323
  %tobool = icmp eq i8 %4, 0, !dbg !1593
  %sub.ptr.lhs.cast1 = ptrtoint i8* %incdec.ptr to i64, !dbg !1595
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2, !dbg !1595
  %arrayidx4 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %sub.ptr.sub3, !dbg !1595
  br i1 %tobool, label %for.end, label %for.body, !dbg !1593

for.end:                                          ; preds = %for.body, %entry
  %arrayidx4.lcssa = phi i8* [ %1, %entry ], [ %arrayidx4, %for.body ]
  %5 = call i8* @memcpy(i8* %arrayidx4.lcssa, i8* getelementptr inbounds ([6 x i8]* @.str936, i64 0, i64 0), i64 6)
  %tobool5 = icmp eq i32 %size, 0, !dbg !1597
  br i1 %tobool5, label %cond.false, label %cond.end, !dbg !1597

cond.false:                                       ; preds = %for.end
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str1037, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str1138, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([88 x i8]* 
  unreachable, !dbg !1597

cond.end:                                         ; preds = %for.end
  %size6 = getelementptr inbounds %struct.exe_disk_file_t.17* %dfile, i64 0, i32 0, !dbg !1598
  store i32 %size, i32* %size6, align 4, !dbg !1598, !tbaa !1599
  %conv = zext i32 %size to i64, !dbg !1601
  %call8 = call noalias i8* @malloc(i64 %conv) #5, !dbg !1601
  %contents = getelementptr inbounds %struct.exe_disk_file_t.17* %dfile, i64 0, i32 1, !dbg !1601
  store i8* %call8, i8** %contents, align 8, !dbg !1601, !tbaa !1602
  call void @klee_make_symbolic(i8* %call8, i64 %conv, i8* %name) #5, !dbg !1603
  call void @klee_make_symbolic(i8* %call, i64 144, i8* %1) #5, !dbg !1604
  %st_ino = getelementptr inbounds i8* %call, i64 8, !dbg !1605
  %6 = bitcast i8* %st_ino to i64*, !dbg !1605
  %7 = load i64* %6, align 8, !dbg !1605, !tbaa !1607
  %call12 = call i32 @klee_is_symbolic(i64 %7) #5, !dbg !1605
  %tobool13 = icmp eq i32 %call12, 0, !dbg !1605
  %8 = load i64* %6, align 8, !dbg !1605, !tbaa !1607
  %and = and i64 %8, 2147483647, !dbg !1605
  %cmp = icmp eq i64 %and, 0, !dbg !1605
  %or.cond = and i1 %tobool13, %cmp, !dbg !1605
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1605

if.then:                                          ; preds = %cond.end
  %st_ino16 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 1, !dbg !1610
  %9 = load i64* %st_ino16, align 8, !dbg !1610, !tbaa !1607
  store i64 %9, i64* %6, align 8, !dbg !1610, !tbaa !1607
  br label %if.end, !dbg !1610

if.end:                                           ; preds = %if.then, %cond.end
  %10 = phi i64 [ %9, %if.then ], [ %8, %cond.end ]
  %and19 = and i64 %10, 2147483647, !dbg !1611
  %cmp20 = icmp ne i64 %and19, 0, !dbg !1611
  %conv22 = zext i1 %cmp20 to i64, !dbg !1611
  call void @klee_assume(i64 %conv22) #5, !dbg !1611
  %st_blksize = getelementptr inbounds i8* %call, i64 56, !dbg !1612
  %11 = bitcast i8* %st_blksize to i64*, !dbg !1612
  %12 = load i64* %11, align 8, !dbg !1612, !tbaa !1613
  %cmp24 = icmp ult i64 %12, 65536, !dbg !1612
  %conv26 = zext i1 %cmp24 to i64, !dbg !1612
  call void @klee_assume(i64 %conv26) #5, !dbg !1612
  %st_mode = getelementptr inbounds i8* %call, i64 24, !dbg !1614
  %13 = bitcast i8* %st_mode to i32*, !dbg !1614
  %14 = load i32* %13, align 4, !dbg !1614, !tbaa !1615
  %and27 = and i32 %14, -61952, !dbg !1614
  %lnot = icmp eq i32 %and27, 0, !dbg !1614
  %conv29 = zext i1 %lnot to i64, !dbg !1614
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv29) #5, !dbg !1614
  %st_dev = bitcast i8* %call to i64*, !dbg !1616
  %15 = load i64* %st_dev, align 8, !dbg !1616, !tbaa !1617
  %st_dev30 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 0, !dbg !1616
  %16 = load i64* %st_dev30, align 8, !dbg !1616, !tbaa !1617
  %cmp31 = icmp eq i64 %15, %16, !dbg !1616
  %conv33 = zext i1 %cmp31 to i64, !dbg !1616
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv33) #5, !dbg !1616
  %st_rdev = getelementptr inbounds i8* %call, i64 40, !dbg !1618
  %17 = bitcast i8* %st_rdev to i64*, !dbg !1618
  %18 = load i64* %17, align 8, !dbg !1618, !tbaa !1619
  %st_rdev34 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 7, !dbg !1618
  %19 = load i64* %st_rdev34, align 8, !dbg !1618, !tbaa !1619
  %cmp35 = icmp eq i64 %18, %19, !dbg !1618
  %conv37 = zext i1 %cmp35 to i64, !dbg !1618
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv37) #5, !dbg !1618
  %20 = load i32* %13, align 4, !dbg !1620, !tbaa !1615
  %and39 = and i32 %20, 448, !dbg !1620
  %cmp40 = icmp eq i32 %and39, 384, !dbg !1620
  %conv42 = zext i1 %cmp40 to i64, !dbg !1620
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv42) #5, !dbg !1620
  %21 = load i32* %13, align 4, !dbg !1621, !tbaa !1615
  %and44 = and i32 %21, 56, !dbg !1621
  %cmp45 = icmp eq i32 %and44, 32, !dbg !1621
  %conv47 = zext i1 %cmp45 to i64, !dbg !1621
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv47) #5, !dbg !1621
  %22 = load i32* %13, align 4, !dbg !1622, !tbaa !1615
  %and49 = and i32 %22, 7, !dbg !1622
  %cmp50 = icmp eq i32 %and49, 4, !dbg !1622
  %conv52 = zext i1 %cmp50 to i64, !dbg !1622
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv52) #5, !dbg !1622
  %23 = load i32* %13, align 4, !dbg !1623, !tbaa !1615
  %and54 = and i32 %23, 61440, !dbg !1623
  %cmp55 = icmp eq i32 %and54, 32768, !dbg !1623
  %conv57 = zext i1 %cmp55 to i64, !dbg !1623
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv57) #5, !dbg !1623
  %st_nlink = getelementptr inbounds i8* %call, i64 16, !dbg !1624
  %24 = bitcast i8* %st_nlink to i64*, !dbg !1624
  %25 = load i64* %24, align 8, !dbg !1624, !tbaa !1625
  %cmp58 = icmp eq i64 %25, 1, !dbg !1624
  %conv60 = zext i1 %cmp58 to i64, !dbg !1624
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv60) #5, !dbg !1624
  %st_uid = getelementptr inbounds i8* %call, i64 28, !dbg !1626
  %26 = bitcast i8* %st_uid to i32*, !dbg !1626
  %27 = load i32* %26, align 4, !dbg !1626, !tbaa !1627
  %st_uid61 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 4, !dbg !1626
  %28 = load i32* %st_uid61, align 4, !dbg !1626, !tbaa !1627
  %cmp62 = icmp eq i32 %27, %28, !dbg !1626
  %conv64 = zext i1 %cmp62 to i64, !dbg !1626
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv64) #5, !dbg !1626
  %st_gid = getelementptr inbounds i8* %call, i64 32, !dbg !1628
  %29 = bitcast i8* %st_gid to i32*, !dbg !1628
  %30 = load i32* %29, align 4, !dbg !1628, !tbaa !1629
  %st_gid65 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 5, !dbg !1628
  %31 = load i32* %st_gid65, align 4, !dbg !1628, !tbaa !1629
  %cmp66 = icmp eq i32 %30, %31, !dbg !1628
  %conv68 = zext i1 %cmp66 to i64, !dbg !1628
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv68) #5, !dbg !1628
  %32 = load i64* %11, align 8, !dbg !1630, !tbaa !1613
  %cmp70 = icmp eq i64 %32, 4096, !dbg !1630
  %conv72 = zext i1 %cmp70 to i64, !dbg !1630
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv72) #5, !dbg !1630
  %st_atim = getelementptr inbounds i8* %call, i64 72, !dbg !1631
  %tv_sec = bitcast i8* %st_atim to i64*, !dbg !1631
  %33 = load i64* %tv_sec, align 8, !dbg !1631, !tbaa !1632
  %tv_sec74 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 11, i32 0, !dbg !1631
  %34 = load i64* %tv_sec74, align 8, !dbg !1631, !tbaa !1632
  %cmp75 = icmp eq i64 %33, %34, !dbg !1631
  %conv77 = zext i1 %cmp75 to i64, !dbg !1631
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv77) #5, !dbg !1631
  %st_mtim = getelementptr inbounds i8* %call, i64 88, !dbg !1633
  %tv_sec78 = bitcast i8* %st_mtim to i64*, !dbg !1633
  %35 = load i64* %tv_sec78, align 8, !dbg !1633, !tbaa !1634
  %tv_sec80 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 12, i32 0, !dbg !1633
  %36 = load i64* %tv_sec80, align 8, !dbg !1633, !tbaa !1634
  %cmp81 = icmp eq i64 %35, %36, !dbg !1633
  %conv83 = zext i1 %cmp81 to i64, !dbg !1633
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv83) #5, !dbg !1633
  %st_ctim = getelementptr inbounds i8* %call, i64 104, !dbg !1635
  %tv_sec84 = bitcast i8* %st_ctim to i64*, !dbg !1635
  %37 = load i64* %tv_sec84, align 8, !dbg !1635, !tbaa !1636
  %tv_sec86 = getelementptr inbounds %struct.stat64.16* %defaults, i64 0, i32 13, i32 0, !dbg !1635
  %38 = load i64* %tv_sec86, align 8, !dbg !1635, !tbaa !1636
  %cmp87 = icmp eq i64 %37, %38, !dbg !1635
  %conv89 = zext i1 %cmp87 to i64, !dbg !1635
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv89) #5, !dbg !1635
  %39 = load i32* %size6, align 4, !dbg !1637, !tbaa !1599
  %conv91 = zext i32 %39 to i64, !dbg !1637
  %st_size = getelementptr inbounds i8* %call, i64 48, !dbg !1637
  %40 = bitcast i8* %st_size to i64*, !dbg !1637
  store i64 %conv91, i64* %40, align 8, !dbg !1637, !tbaa !1638
  %st_blocks = getelementptr inbounds i8* %call, i64 64, !dbg !1639
  %41 = bitcast i8* %st_blocks to i64*, !dbg !1639
  store i64 8, i64* %41, align 8, !dbg !1639, !tbaa !1640
  %stat = getelementptr inbounds %struct.exe_disk_file_t.17* %dfile, i64 0, i32 2, !dbg !1641
  store %struct.stat64.16* %0, %struct.stat64.16** %stat, align 8, !dbg !1641, !tbaa !1642
  ret void, !dbg !1643
}

; Function Attrs: nounwind uwtable
define i32 @open64(i8* %pathname, i32 %flags, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag.14], align 16
  %and = and i32 %flags, 64, !dbg !1644
  %tobool = icmp eq i32 %and, 0, !dbg !1644
  br i1 %tobool, label %if.end, label %if.then, !dbg !1644

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag.14]* %ap to i8*, !dbg !1645
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1645
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 0, !dbg !1646
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !1646
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1646
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1646

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 3, !dbg !1646
  %reg_save_area = load i8** %0, align 16, !dbg !1646
  %1 = sext i32 %gp_offset to i64, !dbg !1646
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !1646
  %3 = add i32 %gp_offset, 8, !dbg !1646
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !1646
  br label %vaarg.end, !dbg !1646

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 2, !dbg !1646
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !1646
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !1646
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1646
  br label %vaarg.end, !dbg !1646

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !1646
  %4 = load i32* %vaarg.addr, align 4, !dbg !1646
  call void @llvm.va_end(i8* %arraydecay1), !dbg !1647
  br label %if.end, !dbg !1648

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) #5, !dbg !1649
  ret i32 %call, !dbg !1649
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @openat64(i32 %fd, i8* %pathname, i32 %flags, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag.14], align 16
  %and = and i32 %flags, 64, !dbg !1650
  %tobool = icmp eq i32 %and, 0, !dbg !1650
  br i1 %tobool, label %if.end, label %if.then, !dbg !1650

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag.14]* %ap to i8*, !dbg !1651
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1651
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 0, !dbg !1652
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !1652
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1652
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1652

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 3, !dbg !1652
  %reg_save_area = load i8** %0, align 16, !dbg !1652
  %1 = sext i32 %gp_offset to i64, !dbg !1652
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !1652
  %3 = add i32 %gp_offset, 8, !dbg !1652
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !1652
  br label %vaarg.end, !dbg !1652

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag.14]* %ap, i64 0, i64 0, i32 2, !dbg !1652
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !1652
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !1652
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1652
  br label %vaarg.end, !dbg !1652

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !1652
  %4 = load i32* %vaarg.addr, align 4, !dbg !1652
  call void @llvm.va_end(i8* %arraydecay1), !dbg !1653
  br label %if.end, !dbg !1654

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_openat(i32 %fd, i8* %pathname, i32 %flags, i32 %mode.0) #5, !dbg !1655
  ret i32 %call, !dbg !1655
}

; Function Attrs: nounwind uwtable
define i64 @lseek64(i32 %fd, i64 %offset, i32 %whence) #4 {
entry:
  %call = tail call i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #5, !dbg !1656
  ret i64 %call, !dbg !1656
}

; Function Attrs: nounwind uwtable
define i32 @__xstat64(i32 %vers, i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1657
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_stat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1657
  ret i32 %call, !dbg !1657
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @stat64(i8* %path, %struct.stat64.16* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1658
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_stat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1658
  ret i32 %call, !dbg !1658
}

; Function Attrs: nounwind uwtable
define i32 @__lxstat64(i32 %vers, i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1659
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_lstat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1659
  ret i32 %call, !dbg !1659
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @lstat64(i8* %path, %struct.stat64.16* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1660
  %call = tail call i32 bitcast (i32 (i8*, %struct.stat64.16*)* @__fd_lstat to i32 (i8*, %struct.stat64.9*)*)(i8* %path, %struct.stat64.9* %0) #5, !dbg !1660
  ret i32 %call, !dbg !1660
}

; Function Attrs: nounwind uwtable
define i32 @__fxstat64(i32 %vers, i32 %fd, %struct.stat64.16* %buf) #4 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1661
  %call = tail call i32 bitcast (i32 (i32, %struct.stat64.16*)* @__fd_fstat to i32 (i32, %struct.stat64.9*)*)(i32 %fd, %struct.stat64.9* %0) #5, !dbg !1661
  ret i32 %call, !dbg !1661
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstat64(i32 %fd, %struct.stat64.16* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64.16* %buf to %struct.stat64.9*, !dbg !1662
  %call = tail call i32 bitcast (i32 (i32, %struct.stat64.16*)* @__fd_fstat to i32 (i32, %struct.stat64.9*)*)(i32 %fd, %struct.stat64.9* %0) #5, !dbg !1662
  ret i32 %call, !dbg !1662
}

; Function Attrs: nounwind uwtable
define i32 @ftruncate64(i32 %fd, i64 %length) #4 {
entry:
  %call = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) #5, !dbg !1663
  ret i32 %call, !dbg !1663
}

; Function Attrs: nounwind uwtable
define weak i32 @statfs64(i8* %path, %struct.statfs.11* %buf) #4 {
entry:
  %call = tail call i32 @__fd_statfs(i8* %path, %struct.statfs.11* %buf) #5, !dbg !1664
  ret i32 %call, !dbg !1664
}

; Function Attrs: nounwind uwtable
define i32 @getdents64(i32 %fd, %struct.dirent.12* %dirp, i32 %count) #4 {
entry:
  %0 = bitcast %struct.dirent.12* %dirp to %struct.dirent64.13*, !dbg !1665
  %call = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent64.13* %0, i32 %count) #5, !dbg !1665
  ret i32 %call, !dbg !1665
}

; Function Attrs: nounwind uwtable
define i32 @access(i8* %pathname, i32 %mode) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !1666, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !1668
  %cmp.i = icmp eq i8 %0, 0, !dbg !1668
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !1668

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1668
  %1 = load i8* %arrayidx2.i, align 1, !dbg !1668, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !1668
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !1668

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1670, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !1670
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !1670

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !1670
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !1670

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1671
  %sext.i = shl i32 %i.027.i, 24, !dbg !1671
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1671
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1671
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1671
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1671
  %inc.i = add i32 %i.027.i, 1, !dbg !1670
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1671

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1672
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1672, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !1673
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !1673, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !1673
  %5 = load i64* %st_ino.i, align 8, !dbg !1673, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !1673
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !1672
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1675
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !1673
  br i1 %or.cond, label %if.else, label %return, !dbg !1673

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %pathname to i64, !dbg !1676
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !1676
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !1676
  %cmp.i.i = icmp eq i8* %7, %pathname, !dbg !1679
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1679
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1679
  br label %for.cond.i9, !dbg !1680

for.cond.i9:                                      ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i11, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !1681, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !1682
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1682
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1682
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1682

if.then.i:                                        ; preds = %for.cond.i9
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1683

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1686, !tbaa !1323
  br label %__concretize_string.exit, !dbg !1688

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1689
  store i8 47, i8* %sc.0.i, align 1, !dbg !1689, !tbaa !1323
  br label %for.inc.i, !dbg !1692

if.else7.i:                                       ; preds = %for.cond.i9
  %conv8.i = sext i8 %8 to i64, !dbg !1693
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1693
  %conv10.i10 = trunc i64 %call9.i to i8, !dbg !1693
  %cmp13.i = icmp eq i8 %conv10.i10, %8, !dbg !1694
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1694
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1694
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1695
  store i8 %conv10.i10, i8* %sc.0.i, align 1, !dbg !1695, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i10, 0, !dbg !1696
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1696

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i11 = add i32 %i.0.i, 1, !dbg !1680
  br label %for.cond.i9, !dbg !1680

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 21, i8* %pathname, i32 %mode) #5, !dbg !1678
  %conv = trunc i64 %call2 to i32, !dbg !1678
  %cmp = icmp eq i32 %conv, -1, !dbg !1698
  br i1 %cmp, label %if.then4, label %return, !dbg !1698

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #5, !dbg !1700
  %call6 = tail call i32* @__errno_location() #1, !dbg !1700
  store i32 %call5, i32* %call6, align 4, !dbg !1700, !tbaa !1313
  br label %return, !dbg !1700

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then13.i
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then13.i ]
  ret i32 %retval.0, !dbg !1701
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #6

declare i32 @klee_get_errno() #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #11

; Function Attrs: nounwind uwtable
define i32 @umask(i32 %mask) #4 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1702, !tbaa !1703
  %and = and i32 %mask, 511, !dbg !1704
  store i32 %and, i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1704, !tbaa !1703
  ret i32 %0, !dbg !1705
}

; Function Attrs: nounwind uwtable
define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) #4 {
entry:
  br label %for.body, !dbg !1706

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !1706
  %cmp = icmp slt i32 %0, 32, !dbg !1706
  br i1 %cmp, label %for.body, label %for.end, !dbg !1706

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %fd.0110 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %flags1 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !1708
  %1 = load i32* %flags1, align 4, !dbg !1708, !tbaa !1710
  %and = and i32 %1, 1, !dbg !1708
  %tobool = icmp eq i32 %and, 0, !dbg !1708
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1706
  %inc = add nsw i32 %fd.0110, 1, !dbg !1706
  br i1 %tobool, label %for.end, label %for.cond, !dbg !1708

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.0110, %for.body ], [ %inc, %for.cond ]
  %cmp2 = icmp eq i32 %fd.0.lcssa, 32, !dbg !1711
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1711

if.then3:                                         ; preds = %for.end
  %call = tail call i32* @__errno_location() #1, !dbg !1713
  store i32 24, i32* %call, align 4, !dbg !1713, !tbaa !1313
  br label %return, !dbg !1715

if.end4:                                          ; preds = %for.end
  %idxprom5 = sext i32 %fd.0.lcssa to i64, !dbg !1716
  %arrayidx6 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, !dbg !1716
  %2 = bitcast %struct.exe_file_t* %arrayidx6 to i8*, !dbg !1717
  %3 = call i8* @memset(i8* %2, i32 0, i64 24)
  %4 = load i8* %pathname, align 1, !dbg !1718, !tbaa !1323
  %conv.i = sext i8 %4 to i32, !dbg !1720
  %cmp.i = icmp eq i8 %4, 0, !dbg !1720
  br i1 %cmp.i, label %if.else45, label %lor.lhs.false.i, !dbg !1720

lor.lhs.false.i:                                  ; preds = %if.end4
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1720
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1720, !tbaa !1323
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1720
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else45, !dbg !1720

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1721, !tbaa !1528
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1721
  br i1 %cmp626.i, label %if.else45, label %for.body.i, !dbg !1721

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %6, !dbg !1721
  br i1 %cmp6.i, label %for.body.i, label %if.else45, !dbg !1721

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1722
  %sext.i = shl i32 %i.027.i, 24, !dbg !1722
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1722
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1722
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1722
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1722
  %inc.i = add i32 %i.027.i, 1, !dbg !1721
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1722

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1723
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1723, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i, i32 2, !dbg !1724
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !1724, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !1724
  %9 = load i64* %st_ino.i, align 8, !dbg !1724, !tbaa !1607
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1724
  br i1 %cmp15.i, label %if.else45, label %__get_sym_file.exit, !dbg !1724

__get_sym_file.exit:                              ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i, !dbg !1723
  %tobool8 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1725
  br i1 %tobool8, label %if.else45, label %if.then9, !dbg !1725

if.then9:                                         ; preds = %__get_sym_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 3, !dbg !1726
  store %struct.exe_disk_file_t.17* %arrayidx14.i, %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1726, !tbaa !1544
  %10 = and i32 %flags, 192, !dbg !1728
  switch i32 %10, label %if.end32 [
    i32 192, label %if.then14
    i32 128, label %if.then30
  ], !dbg !1728

if.then14:                                        ; preds = %if.then9
  %call15 = tail call i32* @__errno_location() #1, !dbg !1730
  store i32 17, i32* %call15, align 4, !dbg !1730, !tbaa !1313
  br label %return, !dbg !1732

if.then30:                                        ; preds = %if.then9
  tail call void @klee_warning(i8* getelementptr inbounds ([47 x i8]* @.str143, i64 0, i64 0)) #5, !dbg !1733
  %call31 = tail call i32* @__errno_location() #1, !dbg !1736
  store i32 13, i32* %call31, align 4, !dbg !1736, !tbaa !1313
  br label %return, !dbg !1737

if.end32:                                         ; preds = %if.then9
  %st_mode.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !1738
  %11 = load i32* %st_mode.i, align 4, !dbg !1738, !tbaa !1615
  %and1.i = and i32 %flags, 2, !dbg !1741
  %tobool2.i = icmp eq i32 %and1.i, 0, !dbg !1741
  %or15.i = and i32 %11, 292, !dbg !1743
  %tobool16.i = icmp eq i32 %or15.i, 0, !dbg !1743
  %or.cond37.i = or i1 %tobool2.i, %tobool16.i, !dbg !1743
  br i1 %or.cond37.i, label %has_permission.exit, label %if.then35, !dbg !1743

has_permission.exit:                              ; preds = %if.end32
  %12 = and i32 %flags, 3, !dbg !1745
  %not..i = icmp ne i32 %12, 0, !dbg !1745
  %or25.i = and i32 %11, 146, !dbg !1747
  %tobool26.i = icmp eq i32 %or25.i, 0, !dbg !1747
  %or.cond38.i = and i1 %not..i, %tobool26.i, !dbg !1747
  br i1 %or.cond38.i, label %if.then35, label %if.else, !dbg !1739

if.then35:                                        ; preds = %has_permission.exit, %if.end32
  %call36 = tail call i32* @__errno_location() #1, !dbg !1749
  store i32 13, i32* %call36, align 4, !dbg !1749, !tbaa !1313
  br label %return, !dbg !1751

if.else:                                          ; preds = %has_permission.exit
  %and39 = and i32 %11, -512, !dbg !1752
  %13 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1752, !tbaa !1703
  %neg = xor i32 %13, -1, !dbg !1752
  %and40 = and i32 %neg, %mode, !dbg !1752
  %or = or i32 %and40, %and39, !dbg !1752
  store i32 %or, i32* %st_mode.i, align 4, !dbg !1752, !tbaa !1615
  br label %if.end55, !dbg !1753

if.else45:                                        ; preds = %__get_sym_file.exit, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %if.end4
  %14 = ptrtoint i8* %pathname to i64, !dbg !1754
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #5, !dbg !1754
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !1754
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !1757
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1757
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1757
  br label %for.cond.i101, !dbg !1758

for.cond.i101:                                    ; preds = %for.inc.i, %if.else45
  %i.0.i = phi i32 [ 0, %if.else45 ], [ %inc.i103, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.else45 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !1759, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !1760
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1760
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1760
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1760

if.then.i:                                        ; preds = %for.cond.i101
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1761

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1762, !tbaa !1323
  br label %__concretize_string.exit, !dbg !1763

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1764
  store i8 47, i8* %sc.0.i, align 1, !dbg !1764, !tbaa !1323
  br label %for.inc.i, !dbg !1765

if.else7.i:                                       ; preds = %for.cond.i101
  %conv8.i = sext i8 %16 to i64, !dbg !1766
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1766
  %conv10.i102 = trunc i64 %call9.i to i8, !dbg !1766
  %cmp13.i = icmp eq i8 %conv10.i102, %16, !dbg !1767
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1767
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1767
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1768
  store i8 %conv10.i102, i8* %sc.0.i, align 1, !dbg !1768, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i102, 0, !dbg !1769
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1769

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i103 = add i32 %i.0.i, 1, !dbg !1758
  br label %for.cond.i101, !dbg !1758

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call47 = tail call i64 (i64, ...)* @syscall(i64 2, i8* %pathname, i32 %flags, i32 %mode) #5, !dbg !1756
  %conv = trunc i64 %call47 to i32, !dbg !1756
  %cmp48 = icmp eq i32 %conv, -1, !dbg !1770
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !1770

if.then50:                                        ; preds = %__concretize_string.exit
  %call51 = tail call i32 @klee_get_errno() #5, !dbg !1772
  %call52 = tail call i32* @__errno_location() #1, !dbg !1772
  store i32 %call51, i32* %call52, align 4, !dbg !1772, !tbaa !1313
  br label %return, !dbg !1774

if.end53:                                         ; preds = %__concretize_string.exit
  %fd54 = getelementptr inbounds %struct.exe_file_t* %arrayidx6, i64 0, i32 0, !dbg !1775
  store i32 %conv, i32* %fd54, align 8, !dbg !1775, !tbaa !1776
  %and57.pre = and i32 %flags, 3, !dbg !1777
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.else
  %and57.pre-phi = phi i32 [ %and57.pre, %if.end53 ], [ %12, %if.else ], !dbg !1777
  %flags56 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 1, !dbg !1779
  store i32 1, i32* %flags56, align 4, !dbg !1779, !tbaa !1710
  switch i32 %and57.pre-phi, label %if.else70 [
    i32 0, label %if.then60
    i32 1, label %if.then67
  ], !dbg !1777

if.then60:                                        ; preds = %if.end55
  store i32 5, i32* %flags56, align 4, !dbg !1780, !tbaa !1710
  br label %return, !dbg !1782

if.then67:                                        ; preds = %if.end55
  store i32 9, i32* %flags56, align 4, !dbg !1783, !tbaa !1710
  br label %return, !dbg !1786

if.else70:                                        ; preds = %if.end55
  store i32 13, i32* %flags56, align 4, !dbg !1787, !tbaa !1710
  br label %return

return:                                           ; preds = %if.else70, %if.then67, %if.then60, %if.then50, %if.then35, %if.then30, %if.then14, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then14 ], [ -1, %if.then35 ], [ -1, %if.then30 ], [ -1, %if.then50 ], [ %fd.0.lcssa, %if.then67 ], [ %fd.0.lcssa, %if.else70 ], [ %fd.0.lcssa, %if.then60 ]
  ret i32 %retval.0, !dbg !1789
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @klee_warning(i8*) #7

; Function Attrs: nounwind uwtable
define i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) #4 {
entry:
  %cmp = icmp eq i32 %basefd, -100, !dbg !1790
  br i1 %cmp, label %if.end8, label %if.then, !dbg !1790

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %basefd, 32, !dbg !1791
  br i1 %0, label %if.then.i, label %if.then1, !dbg !1791

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %basefd to i64, !dbg !1793
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1794
  %1 = load i32* %flags.i, align 4, !dbg !1794, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !1794
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1794
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !1794

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1793
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1796
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1796

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !1798
  store i32 9, i32* %call2, align 4, !dbg !1798, !tbaa !1313
  br label %return, !dbg !1800

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1801
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1801, !tbaa !1544
  %tobool3 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !1801
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1801

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str244, i64 0, i64 0)) #5, !dbg !1803
  %call5 = tail call i32* @__errno_location() #1, !dbg !1805
  store i32 2, i32* %call5, align 4, !dbg !1805, !tbaa !1313
  br label %return, !dbg !1806

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1807
  %3 = load i32* %fd7, align 8, !dbg !1807, !tbaa !1776
  %phitmp = sext i32 %3 to i64, !dbg !1808
  br label %if.end8, !dbg !1808

if.end8:                                          ; preds = %if.end6, %entry
  %basefd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %pathname, align 1, !dbg !1809, !tbaa !1323
  %conv.i = sext i8 %4 to i32, !dbg !1812
  %cmp.i = icmp eq i8 %4, 0, !dbg !1812
  br i1 %cmp.i, label %for.body, label %lor.lhs.false.i, !dbg !1812

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1812
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1812, !tbaa !1323
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1812
  br i1 %cmp4.i, label %for.cond.preheader.i, label %for.body, !dbg !1812

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1813, !tbaa !1528
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1813
  br i1 %cmp626.i, label %for.body, label %for.body.i, !dbg !1813

for.cond.i78:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i80, %6, !dbg !1813
  br i1 %cmp6.i, label %for.body.i, label %for.body, !dbg !1813

for.body.i:                                       ; preds = %for.cond.i78, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i80, %for.cond.i78 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1814
  %sext.i = shl i32 %i.027.i, 24, !dbg !1814
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1814
  %conv10.i79 = ashr exact i32 %sext.i, 24, !dbg !1814
  %add.i = add nsw i32 %conv10.i79, 65, !dbg !1814
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1814
  %inc.i80 = add i32 %i.027.i, 1, !dbg !1813
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i78, !dbg !1814

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i81 = zext i32 %i.027.i to i64, !dbg !1815
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1815, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i81, i32 2, !dbg !1816
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !1816, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !1816
  %9 = load i64* %st_ino.i, align 8, !dbg !1816, !tbaa !1607
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1816
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i81, !dbg !1815
  %tobool10 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1810
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !1816
  br i1 %or.cond, label %for.body, label %if.then11, !dbg !1816

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode), !dbg !1817
  br label %return, !dbg !1817

for.cond:                                         ; preds = %for.body
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !1819
  %cmp14 = icmp slt i32 %10, 32, !dbg !1819
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1819

for.body:                                         ; preds = %for.cond, %if.then13.i, %for.cond.i78, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %fd.086 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %flags15 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !1821
  %11 = load i32* %flags15, align 4, !dbg !1821, !tbaa !1710
  %and = and i32 %11, 1, !dbg !1821
  %tobool16 = icmp eq i32 %and, 0, !dbg !1821
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1819
  %inc = add nsw i32 %fd.086, 1, !dbg !1819
  br i1 %tobool16, label %for.end, label %for.cond, !dbg !1821

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.086, %for.body ], [ %inc, %for.cond ]
  %cmp19 = icmp eq i32 %fd.0.lcssa, 32, !dbg !1823
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1823

if.then20:                                        ; preds = %for.end
  %call21 = tail call i32* @__errno_location() #1, !dbg !1825
  store i32 24, i32* %call21, align 4, !dbg !1825, !tbaa !1313
  br label %return, !dbg !1827

if.end22:                                         ; preds = %for.end
  %idxprom23 = sext i32 %fd.0.lcssa to i64, !dbg !1828
  %arrayidx24 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, !dbg !1828
  %12 = bitcast %struct.exe_file_t* %arrayidx24 to i8*, !dbg !1829
  %13 = call i8* @memset(i8* %12, i32 0, i64 24)
  %14 = ptrtoint i8* %pathname to i64, !dbg !1830
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #5, !dbg !1830
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !1830
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !1833
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1833
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1833
  br label %for.cond.i, !dbg !1834

for.cond.i:                                       ; preds = %for.inc.i, %if.end22
  %i.0.i = phi i32 [ 0, %if.end22 ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.end22 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !1835, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !1836
  %and.i74 = and i32 %sub.i, %i.0.i, !dbg !1836
  %tobool.i75 = icmp eq i32 %and.i74, 0, !dbg !1836
  br i1 %tobool.i75, label %if.then.i76, label %if.else7.i, !dbg !1836

if.then.i76:                                      ; preds = %for.cond.i
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i77
    i8 47, label %if.then4.i
  ], !dbg !1837

if.then2.i77:                                     ; preds = %if.then.i76
  store i8 0, i8* %sc.0.i, align 1, !dbg !1838, !tbaa !1323
  br label %__concretize_string.exit, !dbg !1839

if.then4.i:                                       ; preds = %if.then.i76
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1840
  store i8 47, i8* %sc.0.i, align 1, !dbg !1840, !tbaa !1323
  br label %for.inc.i, !dbg !1841

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %16 to i64, !dbg !1842
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1842
  %conv10.i = trunc i64 %call9.i to i8, !dbg !1842
  %cmp13.i = icmp eq i8 %conv10.i, %16, !dbg !1843
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1843
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1843
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1844
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !1844, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !1845
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1845

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i76
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i76 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !1834
  br label %for.cond.i, !dbg !1834

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i77
  %conv26 = sext i32 %flags to i64, !dbg !1832
  %call27 = tail call i64 (i64, ...)* @syscall(i64 257, i64 %basefd.addr.0, i8* %pathname, i64 %conv26, i32 %mode) #5, !dbg !1832
  %conv28 = trunc i64 %call27 to i32, !dbg !1832
  %cmp29 = icmp eq i32 %conv28, -1, !dbg !1846
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !1846

if.then31:                                        ; preds = %__concretize_string.exit
  %call32 = tail call i32 @klee_get_errno() #5, !dbg !1848
  %call33 = tail call i32* @__errno_location() #1, !dbg !1848
  store i32 %call32, i32* %call33, align 4, !dbg !1848, !tbaa !1313
  br label %return, !dbg !1850

if.end34:                                         ; preds = %__concretize_string.exit
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx24, i64 0, i32 0, !dbg !1851
  store i32 %conv28, i32* %fd35, align 8, !dbg !1851, !tbaa !1776
  %flags36 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, i32 1, !dbg !1852
  store i32 1, i32* %flags36, align 4, !dbg !1852, !tbaa !1710
  %and37 = and i32 %flags, 3, !dbg !1853
  switch i32 %and37, label %if.else49 [
    i32 0, label %if.then40
    i32 1, label %if.then46
  ], !dbg !1853

if.then40:                                        ; preds = %if.end34
  store i32 5, i32* %flags36, align 4, !dbg !1855, !tbaa !1710
  br label %return, !dbg !1857

if.then46:                                        ; preds = %if.end34
  store i32 9, i32* %flags36, align 4, !dbg !1858, !tbaa !1710
  br label %return, !dbg !1861

if.else49:                                        ; preds = %if.end34
  store i32 13, i32* %flags36, align 4, !dbg !1862, !tbaa !1710
  br label %return

return:                                           ; preds = %if.else49, %if.then46, %if.then40, %if.then31, %if.then20, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then20 ], [ -1, %if.then31 ], [ -1, %if.then1 ], [ %fd.0.lcssa, %if.then46 ], [ %fd.0.lcssa, %if.else49 ], [ %fd.0.lcssa, %if.then40 ]
  ret i32 %retval.0, !dbg !1864
}

; Function Attrs: nounwind uwtable
define i32 @utimes(i8* %path, %struct.timeval* %times) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !1865, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !1867
  %cmp.i = icmp eq i8 %0, 0, !dbg !1867
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !1867

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !1867
  %1 = load i8* %arrayidx2.i, align 1, !dbg !1867, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !1867
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !1867

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1868, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !1868
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !1868

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !1868
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !1868

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1869
  %sext.i = shl i32 %i.027.i, 24, !dbg !1869
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1869
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1869
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1869
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1869
  %inc.i = add i32 %i.027.i, 1, !dbg !1868
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1869

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1870
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1870, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !1871
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !1871, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !1871
  %5 = load i64* %st_ino.i, align 8, !dbg !1871, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !1871
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !1870
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1872
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !1871
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1871

if.then:                                          ; preds = %if.then13.i
  %tv_sec = getelementptr inbounds %struct.timeval* %times, i64 0, i32 0, !dbg !1874
  %6 = load i64* %tv_sec, align 8, !dbg !1874, !tbaa !1876
  %tv_sec1 = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 11, i32 0, !dbg !1874
  store i64 %6, i64* %tv_sec1, align 8, !dbg !1874, !tbaa !1632
  %tv_sec3 = getelementptr inbounds %struct.timeval* %times, i64 1, i32 0, !dbg !1878
  %7 = load i64* %tv_sec3, align 8, !dbg !1878, !tbaa !1876
  %tv_sec5 = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 12, i32 0, !dbg !1878
  store i64 %7, i64* %tv_sec5, align 8, !dbg !1878, !tbaa !1634
  br label %return, !dbg !1879

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %8 = ptrtoint i8* %path to i64, !dbg !1880
  %call.i.i = tail call i64 @klee_get_valuel(i64 %8) #5, !dbg !1880
  %9 = inttoptr i64 %call.i.i to i8*, !dbg !1880
  %cmp.i.i = icmp eq i8* %9, %path, !dbg !1883
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1883
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1883
  br label %for.cond.i19, !dbg !1884

for.cond.i19:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i21, %for.inc.i ]
  %sc.0.i = phi i8* [ %9, %if.end ], [ %sc.1.i, %for.inc.i ]
  %10 = load i8* %sc.0.i, align 1, !dbg !1885, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !1886
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1886
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1886
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1886

if.then.i:                                        ; preds = %for.cond.i19
  switch i8 %10, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1887

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1888, !tbaa !1323
  br label %__concretize_string.exit, !dbg !1889

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1890
  store i8 47, i8* %sc.0.i, align 1, !dbg !1890, !tbaa !1323
  br label %for.inc.i, !dbg !1891

if.else7.i:                                       ; preds = %for.cond.i19
  %conv8.i = sext i8 %10 to i64, !dbg !1892
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1892
  %conv10.i20 = trunc i64 %call9.i to i8, !dbg !1892
  %cmp13.i = icmp eq i8 %conv10.i20, %10, !dbg !1893
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1893
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1893
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1894
  store i8 %conv10.i20, i8* %sc.0.i, align 1, !dbg !1894, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i20, 0, !dbg !1895
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1895

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i21 = add i32 %i.0.i, 1, !dbg !1884
  br label %for.cond.i19, !dbg !1884

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call7 = tail call i64 (i64, ...)* @syscall(i64 235, i8* %path, %struct.timeval* %times) #5, !dbg !1882
  %conv = trunc i64 %call7 to i32, !dbg !1882
  %cmp = icmp eq i32 %conv, -1, !dbg !1896
  br i1 %cmp, label %if.then9, label %return, !dbg !1896

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #5, !dbg !1898
  %call11 = tail call i32* @__errno_location() #1, !dbg !1898
  store i32 %call10, i32* %call11, align 4, !dbg !1898, !tbaa !1313
  br label %return, !dbg !1898

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !1899
}

; Function Attrs: nounwind uwtable
define i32 @futimesat(i32 %fd, i8* %path, %struct.timeval* %times) #4 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !1900
  br i1 %cmp, label %if.end8, label %if.then, !dbg !1900

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !1901
  br i1 %0, label %if.then.i, label %if.then1, !dbg !1901

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !1903
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1904
  %1 = load i32* %flags.i, align 4, !dbg !1904, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !1904
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1904
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !1904

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1903
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1905
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1905

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !1907
  store i32 9, i32* %call2, align 4, !dbg !1907, !tbaa !1313
  br label %return, !dbg !1909

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1910
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1910, !tbaa !1544
  %tobool3 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !1910
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1910

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str244, i64 0, i64 0)) #5, !dbg !1912
  %call5 = tail call i32* @__errno_location() #1, !dbg !1914
  store i32 2, i32* %call5, align 4, !dbg !1914, !tbaa !1313
  br label %return, !dbg !1915

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1916
  %3 = load i32* %fd7, align 8, !dbg !1916, !tbaa !1776
  %phitmp = sext i32 %3 to i64, !dbg !1917
  br label %if.end8, !dbg !1917

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !1918, !tbaa !1323
  %conv.i = sext i8 %4 to i32, !dbg !1921
  %cmp.i = icmp eq i8 %4, 0, !dbg !1921
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !1921

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !1921
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1921, !tbaa !1323
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1921
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !1921

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !1922, !tbaa !1528
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1922
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !1922

for.cond.i37:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i39, %6, !dbg !1922
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !1922

for.body.i:                                       ; preds = %for.cond.i37, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i39, %for.cond.i37 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1923
  %sext.i = shl i32 %i.027.i, 24, !dbg !1923
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1923
  %conv10.i38 = ashr exact i32 %sext.i, 24, !dbg !1923
  %add.i = add nsw i32 %conv10.i38, 65, !dbg !1923
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1923
  %inc.i39 = add i32 %i.027.i, 1, !dbg !1922
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i37, !dbg !1923

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i40 = zext i32 %i.027.i to i64, !dbg !1924
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !1924, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i40, i32 2, !dbg !1925
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !1925, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !1925
  %9 = load i64* %st_ino.i, align 8, !dbg !1925, !tbaa !1607
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1925
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i40, !dbg !1924
  %tobool10 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !1919
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !1925
  br i1 %or.cond, label %if.end13, label %if.then11, !dbg !1925

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @utimes(i8* %path, %struct.timeval* %times), !dbg !1926
  br label %return, !dbg !1926

if.end13:                                         ; preds = %if.then13.i, %for.cond.i37, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !1928
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !1928

cond.true:                                        ; preds = %if.end13
  %10 = ptrtoint i8* %path to i64, !dbg !1929
  %call.i.i = tail call i64 @klee_get_valuel(i64 %10) #5, !dbg !1929
  %11 = inttoptr i64 %call.i.i to i8*, !dbg !1929
  %cmp.i.i = icmp eq i8* %11, %path, !dbg !1932
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1932
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !1932
  br label %for.cond.i, !dbg !1933

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %11, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %12 = load i8* %sc.0.i, align 1, !dbg !1934, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !1935
  %and.i33 = and i32 %sub.i, %i.0.i, !dbg !1935
  %tobool.i34 = icmp eq i32 %and.i33, 0, !dbg !1935
  br i1 %tobool.i34, label %if.then.i35, label %if.else7.i, !dbg !1935

if.then.i35:                                      ; preds = %for.cond.i
  switch i8 %12, label %for.inc.i [
    i8 0, label %if.then2.i36
    i8 47, label %if.then4.i
  ], !dbg !1936

if.then2.i36:                                     ; preds = %if.then.i35
  store i8 0, i8* %sc.0.i, align 1, !dbg !1937, !tbaa !1323
  br label %cond.end, !dbg !1938

if.then4.i:                                       ; preds = %if.then.i35
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1939
  store i8 47, i8* %sc.0.i, align 1, !dbg !1939, !tbaa !1323
  br label %for.inc.i, !dbg !1940

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %12 to i64, !dbg !1941
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !1941
  %conv10.i = trunc i64 %call9.i to i8, !dbg !1941
  %cmp13.i = icmp eq i8 %conv10.i, %12, !dbg !1942
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1942
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !1942
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1943
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !1943, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !1944
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !1944

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i35
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i35 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !1933
  br label %for.cond.i, !dbg !1933

cond.end:                                         ; preds = %if.else7.i, %if.then2.i36, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i36 ], [ %path, %if.else7.i ], !dbg !1931
  %call16 = tail call i64 (i64, ...)* @syscall(i64 261, i64 %fd.addr.0, i8* %cond, %struct.timeval* %times) #5, !dbg !1928
  %conv17 = trunc i64 %call16 to i32, !dbg !1928
  %cmp18 = icmp eq i32 %conv17, -1, !dbg !1945
  br i1 %cmp18, label %if.then20, label %return, !dbg !1945

if.then20:                                        ; preds = %cond.end
  %call21 = tail call i32 @klee_get_errno() #5, !dbg !1947
  %call22 = tail call i32* @__errno_location() #1, !dbg !1947
  store i32 %call21, i32* %call22, align 4, !dbg !1947, !tbaa !1313
  br label %return, !dbg !1947

return:                                           ; preds = %if.then20, %cond.end, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then1 ], [ -1, %if.then20 ], [ %conv17, %cond.end ]
  ret i32 %retval.0, !dbg !1948
}

; Function Attrs: nounwind uwtable
define i32 @close(i32 %fd) #4 {
entry:
  %0 = load i32* @close.n_calls, align 4, !dbg !1949, !tbaa !1313
  %inc = add nsw i32 %0, 1, !dbg !1949
  store i32 %inc, i32* @close.n_calls, align 4, !dbg !1949, !tbaa !1313
  %1 = icmp ult i32 %fd, 32, !dbg !1950
  br i1 %1, label %if.then.i, label %if.then, !dbg !1950

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !1952
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1953
  %2 = load i32* %flags.i, align 4, !dbg !1953, !tbaa !1710
  %and.i = and i32 %2, 1, !dbg !1953
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1953
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !1953

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1952
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1954
  br i1 %tobool, label %if.then, label %if.end, !dbg !1954

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1956
  store i32 9, i32* %call1, align 4, !dbg !1956, !tbaa !1313
  br label %return, !dbg !1958

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1959, !tbaa !1550
  %tobool2 = icmp eq i32 %3, 0, !dbg !1959
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !1959

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !1959, !tbaa !1559
  %5 = load i32* %4, align 4, !dbg !1959, !tbaa !1313
  %cmp = icmp eq i32 %5, %inc, !dbg !1959
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1959

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1961
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1961, !tbaa !1550
  %call4 = tail call i32* @__errno_location() #1, !dbg !1963
  store i32 5, i32* %call4, align 4, !dbg !1963, !tbaa !1313
  br label %return, !dbg !1964

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %6 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !1965
  %7 = call i8* @memset(i8* %6, i32 0, i64 24)
  br label %return, !dbg !1966

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end5 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1967
}

; Function Attrs: nounwind uwtable
define i64 @read(i32 %fd, i8* %buf, i64 %count) #4 {
entry:
  %0 = load i32* @read.n_calls, align 4, !dbg !1968, !tbaa !1313
  %inc = add nsw i32 %0, 1, !dbg !1968
  store i32 %inc, i32* @read.n_calls, align 4, !dbg !1968, !tbaa !1313
  %cmp = icmp eq i64 %count, 0, !dbg !1969
  br i1 %cmp, label %return, label %if.end, !dbg !1969

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %buf, null, !dbg !1971
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1971

if.then2:                                         ; preds = %if.end
  %call = tail call i32* @__errno_location() #1, !dbg !1973
  store i32 14, i32* %call, align 4, !dbg !1973, !tbaa !1313
  br label %return, !dbg !1975

if.end3:                                          ; preds = %if.end
  %1 = icmp ult i32 %fd, 32, !dbg !1976
  br i1 %1, label %if.then.i, label %if.then5, !dbg !1976

if.then.i:                                        ; preds = %if.end3
  %idxprom.i = sext i32 %fd to i64, !dbg !1978
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1979
  %2 = load i32* %flags.i, align 4, !dbg !1979, !tbaa !1710
  %and.i = and i32 %2, 1, !dbg !1979
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1979
  br i1 %tobool.i, label %if.then5, label %__get_file.exit, !dbg !1979

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1978
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1980
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !1980

if.then5:                                         ; preds = %__get_file.exit, %if.then.i, %if.end3
  %call6 = tail call i32* @__errno_location() #1, !dbg !1982
  store i32 9, i32* %call6, align 4, !dbg !1982, !tbaa !1313
  br label %return, !dbg !1984

if.end7:                                          ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1985, !tbaa !1550
  %tobool8 = icmp eq i32 %3, 0, !dbg !1985
  br i1 %tobool8, label %if.end12, label %land.lhs.true, !dbg !1985

land.lhs.true:                                    ; preds = %if.end7
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 6), align 8, !dbg !1985, !tbaa !1555
  %5 = load i32* %4, align 4, !dbg !1985, !tbaa !1313
  %cmp9 = icmp eq i32 %5, %inc, !dbg !1985
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1985

if.then10:                                        ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1987
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !1987, !tbaa !1550
  %call11 = tail call i32* @__errno_location() #1, !dbg !1989
  store i32 5, i32* %call11, align 4, !dbg !1989, !tbaa !1313
  br label %return, !dbg !1990

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1991
  %6 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !1991, !tbaa !1544
  %tobool13 = icmp eq %struct.exe_disk_file_t.17* %6, null, !dbg !1991
  br i1 %tobool13, label %if.then14, label %if.else40, !dbg !1991

if.then14:                                        ; preds = %if.end12
  %7 = ptrtoint i8* %buf to i64, !dbg !1992
  %call.i98 = tail call i64 @klee_get_valuel(i64 %7) #5, !dbg !1992
  %8 = inttoptr i64 %call.i98 to i8*, !dbg !1992
  %cmp.i99 = icmp eq i8* %8, %buf, !dbg !1994
  %conv1.i100 = zext i1 %cmp.i99 to i64, !dbg !1994
  tail call void @klee_assume(i64 %conv1.i100) #5, !dbg !1994
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #5, !dbg !1995
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !1997
  %conv1.i = zext i1 %cmp.i to i64, !dbg !1997
  tail call void @klee_assume(i64 %conv1.i) #5, !dbg !1997
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #5, !dbg !1998
  %fd17 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1999
  %9 = load i32* %fd17, align 8, !dbg !1999, !tbaa !1776
  %cmp18 = icmp eq i32 %9, 0, !dbg !1999
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !1999

if.then19:                                        ; preds = %if.then14
  %call21 = tail call i64 (i64, ...)* @syscall(i64 0, i32 0, i8* %8, i64 %call.i) #5, !dbg !2001
  br label %if.end25, !dbg !2001

if.else:                                          ; preds = %if.then14
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2002
  %10 = load i64* %off, align 8, !dbg !2002, !tbaa !2003
  %call23 = tail call i64 (i64, ...)* @syscall(i64 17, i32 %9, i8* %8, i64 %call.i, i64 %10) #5, !dbg !2002
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %r.0.in = phi i64 [ %call21, %if.then19 ], [ %call23, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !2001
  %cmp26 = icmp eq i32 %r.0, -1, !dbg !2004
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !2004

if.then28:                                        ; preds = %if.end25
  %call29 = tail call i32 @klee_get_errno() #5, !dbg !2006
  %call30 = tail call i32* @__errno_location() #1, !dbg !2006
  store i32 %call29, i32* %call30, align 4, !dbg !2006, !tbaa !1313
  br label %return, !dbg !2008

if.end31:                                         ; preds = %if.end25
  %11 = load i32* %fd17, align 8, !dbg !2009, !tbaa !1776
  %cmp33 = icmp eq i32 %11, 0, !dbg !2009
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !2011
  %sext.pre = shl i64 %r.0.in, 32, !dbg !2011
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !2011
  %conv39.pre = ashr exact i64 %sext.pre, 32, !dbg !2011
  br i1 %cmp33, label %return, label %if.then35, !dbg !2009

if.then35:                                        ; preds = %if.end31
  %off37 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2012
  %12 = load i64* %off37, align 8, !dbg !2012, !tbaa !2003
  %add = add nsw i64 %12, %conv39.pre, !dbg !2012
  store i64 %add, i64* %off37, align 8, !dbg !2012, !tbaa !2003
  br label %return, !dbg !2012

if.else40:                                        ; preds = %if.end12
  %off41 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2013
  %13 = load i64* %off41, align 8, !dbg !2013, !tbaa !2003
  %cmp42 = icmp sgt i64 %13, -1, !dbg !2013
  br i1 %cmp42, label %cond.end, label %cond.false, !dbg !2013

cond.false:                                       ; preds = %if.else40
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str345, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([34 x 
  unreachable, !dbg !2013

cond.end:                                         ; preds = %if.else40
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 0, !dbg !2015
  %14 = load i32* %size, align 4, !dbg !2015, !tbaa !1599
  %conv45 = zext i32 %14 to i64, !dbg !2015
  %cmp47 = icmp slt i64 %conv45, %13, !dbg !2015
  br i1 %cmp47, label %return, label %if.end50, !dbg !2015

if.end50:                                         ; preds = %cond.end
  %add52 = add i64 %13, %count, !dbg !2017
  %cmp56 = icmp ugt i64 %add52, %conv45, !dbg !2017
  %sub = sub nsw i64 %conv45, %13, !dbg !2019
  %sub.count = select i1 %cmp56, i64 %sub, i64 %count, !dbg !2017
  %contents = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 1, !dbg !2021
  %15 = load i8** %contents, align 8, !dbg !2021, !tbaa !1602
  %add.ptr = getelementptr inbounds i8* %15, i64 %13, !dbg !2021
  %16 = call i8* @memcpy(i8* %buf, i8* %add.ptr, i64 %sub.count)
  %17 = load i64* %off41, align 8, !dbg !2022, !tbaa !2003
  %add67 = add i64 %17, %sub.count, !dbg !2022
  store i64 %add67, i64* %off41, align 8, !dbg !2022, !tbaa !2003
  br label %return, !dbg !2023

return:                                           ; preds = %if.end50, %cond.end, %if.then35, %if.end31, %if.then28, %if.then10, %if.then5, %if.then2, %entry
  %retval.0 = phi i64 [ -1, %if.then2 ], [ -1, %if.then10 ], [ %sub.count, %if.end50 ], [ -1, %if.then28 ], [ -1, %if.then5 ], [ 0, %entry ], [ 0, %cond.end ], [ %conv39.pre, %if.then35 ], [ %conv39.pre, %if.end31 ]
  ret i64 %retval.0, !dbg !2024
}

declare void @klee_check_memory_access(i8*, i64) #7

; Function Attrs: nounwind uwtable
define i64 @write(i32 %fd, i8* %buf, i64 %count) #4 {
entry:
  %0 = load i32* @write.n_calls, align 4, !dbg !2025, !tbaa !1313
  %inc = add nsw i32 %0, 1, !dbg !2025
  store i32 %inc, i32* @write.n_calls, align 4, !dbg !2025, !tbaa !1313
  %1 = icmp ult i32 %fd, 32, !dbg !2026
  br i1 %1, label %if.then.i, label %if.then, !dbg !2026

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2028
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2029
  %2 = load i32* %flags.i, align 4, !dbg !2029, !tbaa !1710
  %and.i = and i32 %2, 1, !dbg !2029
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2029
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2029

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2028
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2030
  br i1 %tobool, label %if.then, label %if.end, !dbg !2030

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2032
  store i32 9, i32* %call1, align 4, !dbg !2032, !tbaa !1313
  br label %return, !dbg !2034

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2035, !tbaa !1550
  %tobool2 = icmp eq i32 %3, 0, !dbg !2035
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2035

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 7), align 8, !dbg !2035, !tbaa !1557
  %5 = load i32* %4, align 4, !dbg !2035, !tbaa !1313
  %cmp = icmp eq i32 %5, %inc, !dbg !2035
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2035

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2037
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2037, !tbaa !1550
  %call4 = tail call i32* @__errno_location() #1, !dbg !2039
  store i32 5, i32* %call4, align 4, !dbg !2039, !tbaa !1313
  br label %return, !dbg !2040

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2041
  %6 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2041, !tbaa !1544
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %6, null, !dbg !2041
  br i1 %tobool6, label %if.then7, label %if.else41, !dbg !2041

if.then7:                                         ; preds = %if.end5
  %7 = ptrtoint i8* %buf to i64, !dbg !2042
  %call.i126 = tail call i64 @klee_get_valuel(i64 %7) #5, !dbg !2042
  %8 = inttoptr i64 %call.i126 to i8*, !dbg !2042
  %cmp.i127 = icmp eq i8* %8, %buf, !dbg !2044
  %conv1.i128 = zext i1 %cmp.i127 to i64, !dbg !2044
  tail call void @klee_assume(i64 %conv1.i128) #5, !dbg !2044
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #5, !dbg !2045
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !2047
  %conv1.i = zext i1 %cmp.i to i64, !dbg !2047
  tail call void @klee_assume(i64 %conv1.i) #5, !dbg !2047
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #5, !dbg !2048
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2049
  %9 = load i32* %fd10, align 8, !dbg !2049, !tbaa !1776
  %.off = add i32 %9, -1, !dbg !2049
  %switch = icmp ult i32 %.off, 2, !dbg !2049
  br i1 %switch, label %if.then14, label %if.else, !dbg !2049

if.then14:                                        ; preds = %if.then7
  %call16 = tail call i64 (i64, ...)* @syscall(i64 1, i32 %9, i8* %8, i64 %call.i) #5, !dbg !2051
  br label %if.end20, !dbg !2051

if.else:                                          ; preds = %if.then7
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2052
  %10 = load i64* %off, align 8, !dbg !2052, !tbaa !2003
  %call18 = tail call i64 (i64, ...)* @syscall(i64 18, i32 %9, i8* %8, i64 %call.i, i64 %10) #5, !dbg !2052
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %r.0.in = phi i64 [ %call16, %if.then14 ], [ %call18, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !2051
  %cmp21 = icmp eq i32 %r.0, -1, !dbg !2053
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !2053

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @klee_get_errno() #5, !dbg !2055
  %call25 = tail call i32* @__errno_location() #1, !dbg !2055
  store i32 %call24, i32* %call25, align 4, !dbg !2055, !tbaa !1313
  br label %return, !dbg !2057

if.end26:                                         ; preds = %if.end20
  %cmp27 = icmp sgt i32 %r.0, -1, !dbg !2058
  br i1 %cmp27, label %cond.end, label %cond.false, !dbg !2058

cond.false:                                       ; preds = %if.end26
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str547, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([41 x i
  unreachable, !dbg !2058

cond.end:                                         ; preds = %if.end26
  %11 = load i32* %fd10, align 8, !dbg !2059, !tbaa !1776
  %.off124 = add i32 %11, -1, !dbg !2059
  %switch125 = icmp ult i32 %.off124, 2, !dbg !2059
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !2061
  %sext.pre = shl i64 %r.0.in, 32, !dbg !2061
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !2061
  %conv40.pre = ashr exact i64 %sext.pre, 32, !dbg !2061
  br i1 %switch125, label %return, label %if.then36, !dbg !2059

if.then36:                                        ; preds = %cond.end
  %off38 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2062
  %12 = load i64* %off38, align 8, !dbg !2062, !tbaa !2003
  %add = add nsw i64 %12, %conv40.pre, !dbg !2062
  store i64 %add, i64* %off38, align 8, !dbg !2062, !tbaa !2003
  br label %return, !dbg !2062

if.else41:                                        ; preds = %if.end5
  %off42 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2063
  %13 = load i64* %off42, align 8, !dbg !2063, !tbaa !2003
  %add43 = add i64 %13, %count, !dbg !2063
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 0, !dbg !2063
  %14 = load i32* %size, align 4, !dbg !2063, !tbaa !1599
  %conv45 = zext i32 %14 to i64, !dbg !2063
  %cmp46 = icmp ugt i64 %add43, %conv45, !dbg !2063
  br i1 %cmp46, label %if.else49, label %if.end66, !dbg !2063

if.else49:                                        ; preds = %if.else41
  %15 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 3), align 8, !dbg !2065, !tbaa !1582
  %tobool50 = icmp eq i32 %15, 0, !dbg !2065
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !2065

if.then51:                                        ; preds = %if.else49
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([2 x i8]* @.str648, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([41 x i
  unreachable, !dbg !2068

if.else52:                                        ; preds = %if.else49
  %cmp57 = icmp sgt i64 %conv45, %13, !dbg !2069
  %sub = sub nsw i64 %conv45, %13, !dbg !2072
  br i1 %cmp57, label %if.end66, label %if.end71

if.end66:                                         ; preds = %if.else52, %if.else41
  %actual_count.0 = phi i64 [ %count, %if.else41 ], [ %sub, %if.else52 ]
  %tobool67 = icmp eq i64 %actual_count.0, 0, !dbg !2073
  br i1 %tobool67, label %if.end71, label %if.then68, !dbg !2073

if.then68:                                        ; preds = %if.end66
  %contents = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 1, !dbg !2075
  %16 = load i8** %contents, align 8, !dbg !2075, !tbaa !1602
  %add.ptr = getelementptr inbounds i8* %16, i64 %13, !dbg !2075
  %17 = call i8* @memcpy(i8* %add.ptr, i8* %buf, i64 %actual_count.0)
  br label %if.end71, !dbg !2075

if.end71:                                         ; preds = %if.then68, %if.end66, %if.else52
  %actual_count.0131 = phi i64 [ 0, %if.end66 ], [ %actual_count.0, %if.then68 ], [ 0, %if.else52 ]
  %cmp72 = icmp eq i64 %actual_count.0131, %count, !dbg !2076
  br i1 %cmp72, label %if.end75, label %if.then74, !dbg !2076

if.then74:                                        ; preds = %if.end71
  tail call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str749, i64 0, i64 0)) #5, !dbg !2078
  br label %if.end75, !dbg !2078

if.end75:                                         ; preds = %if.then74, %if.end71
  %18 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2079, !tbaa !1544
  %19 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 2), align 8, !dbg !2079, !tbaa !1574
  %cmp77 = icmp eq %struct.exe_disk_file_t.17* %18, %19, !dbg !2079
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !2079

if.then79:                                        ; preds = %if.end75
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 3), align 8, !dbg !2081, !tbaa !1578
  %conv80 = zext i32 %20 to i64, !dbg !2081
  %add81 = add i64 %conv80, %actual_count.0131, !dbg !2081
  %conv82 = trunc i64 %add81 to i32, !dbg !2081
  store i32 %conv82, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 3), align 8, !dbg !2081, !tbaa !1578
  br label %if.end83, !dbg !2081

if.end83:                                         ; preds = %if.then79, %if.end75
  %21 = load i64* %off42, align 8, !dbg !2082, !tbaa !2003
  %add85 = add i64 %21, %count, !dbg !2082
  store i64 %add85, i64* %off42, align 8, !dbg !2082, !tbaa !2003
  br label %return, !dbg !2083

return:                                           ; preds = %if.end83, %if.then36, %cond.end, %if.then23, %if.then3, %if.then
  %retval.0 = phi i64 [ -1, %if.then3 ], [ %count, %if.end83 ], [ -1, %if.then23 ], [ -1, %if.then ], [ %conv40.pre, %if.then36 ], [ %conv40.pre, %cond.end ]
  ret i64 %retval.0, !dbg !2084
}

; Function Attrs: nounwind uwtable
define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2085
  br i1 %0, label %if.then.i, label %if.then, !dbg !2085

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2087
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2088
  %1 = load i32* %flags.i, align 4, !dbg !2088, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2088
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2088
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2088

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2087
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2089
  br i1 %tobool, label %if.then, label %if.end, !dbg !2089

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2091
  store i32 9, i32* %call1, align 4, !dbg !2091, !tbaa !1313
  br label %return, !dbg !2093

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2094
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2094, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2094
  br i1 %tobool2, label %if.then3, label %if.end23, !dbg !2094

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq i32 %whence, 0, !dbg !2096
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2099
  %3 = load i32* %fd5, align 8, !dbg !2099, !tbaa !1776
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2096

if.then4:                                         ; preds = %if.then3
  %call6 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %offset, i32 0) #5, !dbg !2099
  br label %if.end16, !dbg !2101

if.else:                                          ; preds = %if.then3
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2102
  %4 = load i64* %off, align 8, !dbg !2102, !tbaa !2003
  %call8 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %4, i32 0) #5, !dbg !2102
  %cmp9 = icmp eq i64 %call8, -1, !dbg !2104
  br i1 %cmp9, label %if.then18, label %if.then10, !dbg !2104

if.then10:                                        ; preds = %if.else
  %5 = load i64* %off, align 8, !dbg !2106, !tbaa !2003
  %cmp12 = icmp eq i64 %call8, %5, !dbg !2106
  br i1 %cmp12, label %cond.end, label %cond.false, !dbg !2106

cond.false:                                       ; preds = %if.then10
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str850, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 499, i8* getelementptr inbounds ([38 x 
  unreachable, !dbg !2106

cond.end:                                         ; preds = %if.then10
  %6 = load i32* %fd5, align 8, !dbg !2108, !tbaa !1776
  %call14 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %6, i64 %offset, i32 %whence) #5, !dbg !2108
  br label %if.end16, !dbg !2109

if.end16:                                         ; preds = %cond.end, %if.then4
  %new_off.0 = phi i64 [ %call6, %if.then4 ], [ %call14, %cond.end ]
  %cmp17 = icmp eq i64 %new_off.0, -1, !dbg !2110
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !2110

if.then18:                                        ; preds = %if.end16, %if.else
  %call19 = tail call i32 @klee_get_errno() #5, !dbg !2112
  %call20 = tail call i32* @__errno_location() #1, !dbg !2112
  store i32 %call19, i32* %call20, align 4, !dbg !2112, !tbaa !1313
  br label %return, !dbg !2114

if.end21:                                         ; preds = %if.end16
  %off22 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2115
  store i64 %new_off.0, i64* %off22, align 8, !dbg !2115, !tbaa !2003
  br label %return, !dbg !2116

if.end23:                                         ; preds = %if.end
  switch i32 %whence, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb24
    i32 2, label %sw.bb26
  ], !dbg !2117

sw.bb24:                                          ; preds = %if.end23
  %off25 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2118
  %7 = load i64* %off25, align 8, !dbg !2118, !tbaa !2003
  %add = add nsw i64 %7, %offset, !dbg !2118
  br label %sw.epilog, !dbg !2118

sw.bb26:                                          ; preds = %if.end23
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %2, i64 0, i32 0, !dbg !2120
  %8 = load i32* %size, align 4, !dbg !2120, !tbaa !1599
  %conv = zext i32 %8 to i64, !dbg !2120
  %add28 = add nsw i64 %conv, %offset, !dbg !2120
  br label %sw.epilog, !dbg !2120

sw.default:                                       ; preds = %if.end23
  %call29 = tail call i32* @__errno_location() #1, !dbg !2121
  store i32 22, i32* %call29, align 4, !dbg !2121, !tbaa !1313
  br label %return, !dbg !2123

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb24, %if.end23
  %new_off.1 = phi i64 [ %add28, %sw.bb26 ], [ %add, %sw.bb24 ], [ %offset, %if.end23 ]
  %cmp30 = icmp slt i64 %new_off.1, 0, !dbg !2124
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !2124

if.then32:                                        ; preds = %sw.epilog
  %call33 = tail call i32* @__errno_location() #1, !dbg !2126
  store i32 22, i32* %call33, align 4, !dbg !2126, !tbaa !1313
  br label %return, !dbg !2128

if.end34:                                         ; preds = %sw.epilog
  %off35 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2129
  store i64 %new_off.1, i64* %off35, align 8, !dbg !2129, !tbaa !2003
  br label %return, !dbg !2130

return:                                           ; preds = %if.end34, %if.then32, %sw.default, %if.end21, %if.then18, %if.then
  %retval.0 = phi i64 [ -1, %sw.default ], [ -1, %if.then32 ], [ %new_off.1, %if.end34 ], [ -1, %if.then18 ], [ %new_off.0, %if.end21 ], [ -1, %if.then ]
  ret i64 %retval.0, !dbg !2131
}

; Function Attrs: nounwind uwtable
define i32 @__fd_stat(i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2132, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2134
  %cmp.i = icmp eq i8 %0, 0, !dbg !2134
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2134

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2134
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2134, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2134
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2134

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2135, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2135
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2135

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2135
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2135

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2136
  %sext.i = shl i32 %i.027.i, 24, !dbg !2136
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2136
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2136
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2136
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2136
  %inc.i = add i32 %i.027.i, 1, !dbg !2135
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2136

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2137
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2137, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2138
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2138, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2138
  %5 = load i64* %st_ino.i, align 8, !dbg !2138, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2138
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2137
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2139
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2138
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2138

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64.16* %buf to i8*, !dbg !2141
  %7 = bitcast %struct.stat64.16* %4 to i8*, !dbg !2141
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2143

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2144
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #5, !dbg !2144
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2144
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2147
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2147
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2147
  br label %for.cond.i12, !dbg !2148

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2149, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2150
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2150
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2150
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2150

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2151

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2152, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2153

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2154
  store i8 47, i8* %sc.0.i, align 1, !dbg !2154, !tbaa !1323
  br label %for.inc.i, !dbg !2155

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2156
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2156
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2156
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2157
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2157
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2157
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2158
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2158, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2159
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2159

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2148
  br label %for.cond.i12, !dbg !2148

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 4, i8* %path, %struct.stat64.16* %buf) #5, !dbg !2146
  %conv = trunc i64 %call2 to i32, !dbg !2146
  %cmp = icmp eq i32 %conv, -1, !dbg !2160
  br i1 %cmp, label %if.then4, label %return, !dbg !2160

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #5, !dbg !2162
  %call6 = tail call i32* @__errno_location() #1, !dbg !2162
  store i32 %call5, i32* %call6, align 4, !dbg !2162, !tbaa !1313
  br label %return, !dbg !2162

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2163
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstatat(i32 %fd, i8* %path, %struct.stat* %buf, i32 %flags) #10 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !2164
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2164

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !2165
  br i1 %0, label %if.then.i, label %if.then1, !dbg !2165

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !2167
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2168
  %1 = load i32* %flags.i, align 4, !dbg !2168, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2168
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2168
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !2168

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2167
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2169
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2169

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !2171
  store i32 9, i32* %call2, align 4, !dbg !2171, !tbaa !1313
  br label %return, !dbg !2173

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2174
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2174, !tbaa !1544
  %tobool3 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2174
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2174

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str244, i64 0, i64 0)) #5, !dbg !2176
  %call5 = tail call i32* @__errno_location() #1, !dbg !2178
  store i32 2, i32* %call5, align 4, !dbg !2178, !tbaa !1313
  br label %return, !dbg !2179

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2180
  %3 = load i32* %fd7, align 8, !dbg !2180, !tbaa !1776
  %phitmp = sext i32 %3 to i64, !dbg !2181
  br label %if.end8, !dbg !2181

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !2182, !tbaa !1323
  %conv.i = sext i8 %4 to i32, !dbg !2184
  %cmp.i = icmp eq i8 %4, 0, !dbg !2184
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !2184

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2184
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2184, !tbaa !1323
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2184
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !2184

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2185, !tbaa !1528
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2185
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !2185

for.cond.i38:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i40, %6, !dbg !2185
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !2185

for.body.i:                                       ; preds = %for.cond.i38, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i40, %for.cond.i38 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2186
  %sext.i = shl i32 %i.027.i, 24, !dbg !2186
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2186
  %conv10.i39 = ashr exact i32 %sext.i, 24, !dbg !2186
  %add.i = add nsw i32 %conv10.i39, 65, !dbg !2186
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2186
  %inc.i40 = add i32 %i.027.i, 1, !dbg !2185
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i38, !dbg !2186

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i41 = zext i32 %i.027.i to i64, !dbg !2187
  %7 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2187, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i41, i32 2, !dbg !2188
  %8 = load %struct.stat64.16** %stat.i, align 8, !dbg !2188, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 1, !dbg !2188
  %9 = load i64* %st_ino.i, align 8, !dbg !2188, !tbaa !1607
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2188
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 %idxprom.i41, !dbg !2187
  %tobool11 = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2189
  %or.cond = or i1 %cmp15.i, %tobool11, !dbg !2188
  br i1 %or.cond, label %if.end13, label %if.then12, !dbg !2188

if.then12:                                        ; preds = %if.then13.i
  %10 = bitcast %struct.stat* %buf to i8*, !dbg !2191
  %11 = bitcast %struct.stat64.16* %8 to i8*, !dbg !2191
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 144)
  br label %return, !dbg !2193

if.end13:                                         ; preds = %if.then13.i, %for.cond.i38, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !2194
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !2194

cond.true:                                        ; preds = %if.end13
  %13 = ptrtoint i8* %path to i64, !dbg !2195
  %call.i.i = tail call i64 @klee_get_valuel(i64 %13) #5, !dbg !2195
  %14 = inttoptr i64 %call.i.i to i8*, !dbg !2195
  %cmp.i.i = icmp eq i8* %14, %path, !dbg !2198
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2198
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2198
  br label %for.cond.i, !dbg !2199

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %14, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %15 = load i8* %sc.0.i, align 1, !dbg !2200, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2201
  %and.i34 = and i32 %sub.i, %i.0.i, !dbg !2201
  %tobool.i35 = icmp eq i32 %and.i34, 0, !dbg !2201
  br i1 %tobool.i35, label %if.then.i36, label %if.else7.i, !dbg !2201

if.then.i36:                                      ; preds = %for.cond.i
  switch i8 %15, label %for.inc.i [
    i8 0, label %if.then2.i37
    i8 47, label %if.then4.i
  ], !dbg !2202

if.then2.i37:                                     ; preds = %if.then.i36
  store i8 0, i8* %sc.0.i, align 1, !dbg !2203, !tbaa !1323
  br label %cond.end, !dbg !2204

if.then4.i:                                       ; preds = %if.then.i36
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2205
  store i8 47, i8* %sc.0.i, align 1, !dbg !2205, !tbaa !1323
  br label %for.inc.i, !dbg !2206

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %15 to i64, !dbg !2207
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2207
  %conv10.i = trunc i64 %call9.i to i8, !dbg !2207
  %cmp13.i = icmp eq i8 %conv10.i, %15, !dbg !2208
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2208
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2208
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2209
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !2209, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !2210
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !2210

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i36
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i36 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !2199
  br label %for.cond.i, !dbg !2199

cond.end:                                         ; preds = %if.else7.i, %if.then2.i37, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i37 ], [ %path, %if.else7.i ], !dbg !2197
  %conv16 = sext i32 %flags to i64, !dbg !2194
  %call17 = tail call i64 (i64, ...)* @syscall(i64 262, i64 %fd.addr.0, i8* %cond, %struct.stat* %buf, i64 %conv16) #5, !dbg !2194
  %conv18 = trunc i64 %call17 to i32, !dbg !2194
  %cmp19 = icmp eq i32 %conv18, -1, !dbg !2211
  br i1 %cmp19, label %if.then21, label %return, !dbg !2211

if.then21:                                        ; preds = %cond.end
  %call22 = tail call i32 @klee_get_errno() #5, !dbg !2213
  %call23 = tail call i32* @__errno_location() #1, !dbg !2213
  store i32 %call22, i32* %call23, align 4, !dbg !2213, !tbaa !1313
  br label %return, !dbg !2213

return:                                           ; preds = %if.then21, %cond.end, %if.then12, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 0, %if.then12 ], [ -1, %if.then1 ], [ -1, %if.then21 ], [ %conv18, %cond.end ]
  ret i32 %retval.0, !dbg !2214
}

; Function Attrs: nounwind uwtable
define i32 @__fd_lstat(i8* %path, %struct.stat64.16* %buf) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2215, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2217
  %cmp.i = icmp eq i8 %0, 0, !dbg !2217
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2217

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2217
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2217, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2217
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2217

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2218, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2218
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2218

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2218
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2218

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2219
  %sext.i = shl i32 %i.027.i, 24, !dbg !2219
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2219
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2219
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2219
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2219
  %inc.i = add i32 %i.027.i, 1, !dbg !2218
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2219

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2220
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2220, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2221
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2221, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2221
  %5 = load i64* %st_ino.i, align 8, !dbg !2221, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2221
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2220
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2222
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2221
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2221

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64.16* %buf to i8*, !dbg !2224
  %7 = bitcast %struct.stat64.16* %4 to i8*, !dbg !2224
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2226

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2227
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #5, !dbg !2227
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2227
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2230
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2230
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2230
  br label %for.cond.i12, !dbg !2231

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2232, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2233
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2233
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2233
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2233

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2234

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2235, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2236

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2237
  store i8 47, i8* %sc.0.i, align 1, !dbg !2237, !tbaa !1323
  br label %for.inc.i, !dbg !2238

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2239
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2239
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2239
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2240
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2240
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2240
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2241
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2241, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2242
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2242

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2231
  br label %for.cond.i12, !dbg !2231

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 6, i8* %path, %struct.stat64.16* %buf) #5, !dbg !2229
  %conv = trunc i64 %call2 to i32, !dbg !2229
  %cmp = icmp eq i32 %conv, -1, !dbg !2243
  br i1 %cmp, label %if.then4, label %return, !dbg !2243

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #5, !dbg !2245
  %call6 = tail call i32* @__errno_location() #1, !dbg !2245
  store i32 %call5, i32* %call6, align 4, !dbg !2245, !tbaa !1313
  br label %return, !dbg !2245

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2246
}

; Function Attrs: nounwind uwtable
define i32 @chdir(i8* %path) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2247, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2249
  %cmp.i = icmp eq i8 %0, 0, !dbg !2249
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2249

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2249
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2249, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2249
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2249

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2250, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2250
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2250

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2250
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2250

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2251
  %sext.i = shl i32 %i.027.i, 24, !dbg !2251
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2251
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2251
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2251
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2251
  %inc.i = add i32 %i.027.i, 1, !dbg !2250
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2251

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2252
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2252, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2253
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2253, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2253
  %5 = load i64* %st_ino.i, align 8, !dbg !2253, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2253
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2252
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2254
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2253
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2253

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str951, i64 0, i64 0)) #5, !dbg !2256
  %call1 = tail call i32* @__errno_location() #1, !dbg !2258
  store i32 2, i32* %call1, align 4, !dbg !2258, !tbaa !1313
  br label %return, !dbg !2259

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2260
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2260
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2260
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2263
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2263
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2263
  br label %for.cond.i11, !dbg !2264

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2265, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2266
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2266
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2266
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2266

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2267

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2268, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2269

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2270
  store i8 47, i8* %sc.0.i, align 1, !dbg !2270, !tbaa !1323
  br label %for.inc.i, !dbg !2271

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2272
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2272
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2272
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2273
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2273
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2273
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2274
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2274, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2275
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2275

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2264
  br label %for.cond.i11, !dbg !2264

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 80, i8* %path) #5, !dbg !2262
  %conv = trunc i64 %call3 to i32, !dbg !2262
  %cmp = icmp eq i32 %conv, -1, !dbg !2276
  br i1 %cmp, label %if.then5, label %return, !dbg !2276

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2278
  %call7 = tail call i32* @__errno_location() #1, !dbg !2278
  store i32 %call6, i32* %call7, align 4, !dbg !2278, !tbaa !1313
  br label %return, !dbg !2278

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2279
}

; Function Attrs: nounwind uwtable
define i32 @fchdir(i32 %fd) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2280
  br i1 %0, label %if.then.i, label %if.then, !dbg !2280

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2282
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2283
  %1 = load i32* %flags.i, align 4, !dbg !2283, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2283
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2283
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2283

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2282
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2284
  br i1 %tobool, label %if.then, label %if.end, !dbg !2284

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2286
  store i32 9, i32* %call1, align 4, !dbg !2286, !tbaa !1313
  br label %return, !dbg !2288

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2289
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2289, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2289
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2289

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str951, i64 0, i64 0)) #5, !dbg !2290
  %call4 = tail call i32* @__errno_location() #1, !dbg !2292
  store i32 2, i32* %call4, align 4, !dbg !2292, !tbaa !1313
  br label %return, !dbg !2293

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2294
  %3 = load i32* %fd5, align 8, !dbg !2294, !tbaa !1776
  %call6 = tail call i64 (i64, ...)* @syscall(i64 81, i32 %3) #5, !dbg !2294
  %conv = trunc i64 %call6 to i32, !dbg !2294
  %cmp = icmp eq i32 %conv, -1, !dbg !2295
  br i1 %cmp, label %if.then8, label %return, !dbg !2295

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2297
  %call10 = tail call i32* @__errno_location() #1, !dbg !2297
  store i32 %call9, i32* %call10, align 4, !dbg !2297, !tbaa !1313
  br label %return, !dbg !2297

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2298
}

; Function Attrs: nounwind uwtable
define i32 @chmod(i8* %path, i32 %mode) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2299, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2301
  %cmp.i = icmp eq i8 %0, 0, !dbg !2301
  br i1 %cmp.i, label %__get_sym_file.exit, label %lor.lhs.false.i, !dbg !2301

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2301
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2301, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2301
  br i1 %cmp4.i, label %for.cond.preheader.i, label %__get_sym_file.exit, !dbg !2301

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2302, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2302
  br i1 %cmp626.i, label %__get_sym_file.exit, label %for.body.i, !dbg !2302

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2302
  br i1 %cmp6.i, label %for.body.i, label %__get_sym_file.exit, !dbg !2302

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2303
  %sext.i = shl i32 %i.027.i, 24, !dbg !2303
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2303
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2303
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2303
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2303
  %inc.i = add i32 %i.027.i, 1, !dbg !2302
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2303

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2304
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2304, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2305
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2305, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2305
  %5 = load i64* %st_ino.i, align 8, !dbg !2305, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2305
  br i1 %cmp15.i, label %__get_sym_file.exit, label %if.end18.i, !dbg !2305

if.end18.i:                                       ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2304
  br label %__get_sym_file.exit, !dbg !2306

__get_sym_file.exit:                              ; preds = %if.end18.i, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %retval.0.i = phi %struct.exe_disk_file_t.17* [ %arrayidx14.i, %if.end18.i ], [ null, %lor.lhs.false.i ], [ null, %entry ], [ null, %if.then13.i ], [ null, %for.cond.preheader.i ], [ null, %for.cond.i ]
  %6 = load i32* @chmod.n_calls, align 4, !dbg !2307, !tbaa !1313
  %inc = add nsw i32 %6, 1, !dbg !2307
  store i32 %inc, i32* @chmod.n_calls, align 4, !dbg !2307, !tbaa !1313
  %7 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2308, !tbaa !1550
  %tobool = icmp eq i32 %7, 0, !dbg !2308
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2308

land.lhs.true:                                    ; preds = %__get_sym_file.exit
  %8 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 11), align 8, !dbg !2308, !tbaa !2310
  %9 = load i32* %8, align 4, !dbg !2308, !tbaa !1313
  %cmp = icmp eq i32 %9, %inc, !dbg !2308
  br i1 %cmp, label %if.then, label %if.end, !dbg !2308

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %7, -1, !dbg !2311
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2311, !tbaa !1550
  %call1 = tail call i32* @__errno_location() #1, !dbg !2313
  store i32 5, i32* %call1, align 4, !dbg !2313, !tbaa !1313
  br label %return, !dbg !2314

if.end:                                           ; preds = %land.lhs.true, %__get_sym_file.exit
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %retval.0.i, null, !dbg !2315
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2315

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @geteuid() #5, !dbg !2316
  %stat.i20 = getelementptr inbounds %struct.exe_disk_file_t.17* %retval.0.i, i64 0, i32 2, !dbg !2316
  %10 = load %struct.stat64.16** %stat.i20, align 8, !dbg !2316, !tbaa !1642
  %st_uid.i = getelementptr inbounds %struct.stat64.16* %10, i64 0, i32 4, !dbg !2316
  %11 = load i32* %st_uid.i, align 4, !dbg !2316, !tbaa !1627
  %cmp.i21 = icmp eq i32 %call.i, %11, !dbg !2316
  br i1 %cmp.i21, label %if.then.i23, label %if.else.i, !dbg !2316

if.then.i23:                                      ; preds = %if.then3
  %call1.i = tail call i32 @getgid() #5, !dbg !2320
  %12 = load %struct.stat64.16** %stat.i20, align 8, !dbg !2320, !tbaa !1642
  %st_gid.i = getelementptr inbounds %struct.stat64.16* %12, i64 0, i32 5, !dbg !2320
  %13 = load i32* %st_gid.i, align 4, !dbg !2320, !tbaa !1629
  %cmp3.i = icmp eq i32 %call1.i, %13, !dbg !2320
  %and.i22 = and i32 %mode, 3071, !dbg !2323
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2320
  %st_mode.i = getelementptr inbounds %struct.stat64.16* %12, i64 0, i32 3, !dbg !2324
  %14 = load i32* %st_mode.i, align 4, !dbg !2324, !tbaa !1615
  %and6.i = and i32 %14, -4096, !dbg !2324
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2324
  %or.i = or i32 %and7.i, %and6.i, !dbg !2324
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2324, !tbaa !1615
  br label %return, !dbg !2325

if.else.i:                                        ; preds = %if.then3
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2326
  store i32 1, i32* %call10.i, align 4, !dbg !2326, !tbaa !1313
  br label %return, !dbg !2328

if.else:                                          ; preds = %if.end
  %15 = ptrtoint i8* %path to i64, !dbg !2329
  %call.i.i = tail call i64 @klee_get_valuel(i64 %15) #5, !dbg !2329
  %16 = inttoptr i64 %call.i.i to i8*, !dbg !2329
  %cmp.i.i = icmp eq i8* %16, %path, !dbg !2332
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2332
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2332
  br label %for.cond.i17, !dbg !2333

for.cond.i17:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i19, %for.inc.i ]
  %sc.0.i = phi i8* [ %16, %if.else ], [ %sc.1.i, %for.inc.i ]
  %17 = load i8* %sc.0.i, align 1, !dbg !2334, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2335
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2335
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2335
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2335

if.then.i:                                        ; preds = %for.cond.i17
  switch i8 %17, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2336

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2337, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2338

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2339
  store i8 47, i8* %sc.0.i, align 1, !dbg !2339, !tbaa !1323
  br label %for.inc.i, !dbg !2340

if.else7.i:                                       ; preds = %for.cond.i17
  %conv8.i = sext i8 %17 to i64, !dbg !2341
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2341
  %conv10.i18 = trunc i64 %call9.i to i8, !dbg !2341
  %cmp13.i = icmp eq i8 %conv10.i18, %17, !dbg !2342
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2342
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2342
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2343
  store i8 %conv10.i18, i8* %sc.0.i, align 1, !dbg !2343, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i18, 0, !dbg !2344
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2344

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i19 = add i32 %i.0.i, 1, !dbg !2333
  br label %for.cond.i17, !dbg !2333

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call6 = tail call i64 (i64, ...)* @syscall(i64 90, i8* %path, i32 %mode) #5, !dbg !2331
  %conv = trunc i64 %call6 to i32, !dbg !2331
  %cmp7 = icmp eq i32 %conv, -1, !dbg !2345
  br i1 %cmp7, label %if.then9, label %return, !dbg !2345

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #5, !dbg !2347
  %call11 = tail call i32* @__errno_location() #1, !dbg !2347
  store i32 %call10, i32* %call11, align 4, !dbg !2347, !tbaa !1313
  br label %return, !dbg !2347

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.else.i, %if.then.i23, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2348
}

; Function Attrs: nounwind uwtable
define i32 @fchmod(i32 %fd, i32 %mode) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2349
  br i1 %0, label %if.then.i, label %if.then, !dbg !2349

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2351
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2352
  %1 = load i32* %flags.i, align 4, !dbg !2352, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2352
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2352
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2352

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2351
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2353
  br i1 %tobool, label %if.then, label %if.end, !dbg !2353

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2355
  store i32 9, i32* %call1, align 4, !dbg !2355, !tbaa !1313
  br label %return, !dbg !2357

if.end:                                           ; preds = %__get_file.exit
  %2 = load i32* @fchmod.n_calls, align 4, !dbg !2358, !tbaa !1313
  %inc = add nsw i32 %2, 1, !dbg !2358
  store i32 %inc, i32* @fchmod.n_calls, align 4, !dbg !2358, !tbaa !1313
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2359, !tbaa !1550
  %tobool2 = icmp eq i32 %3, 0, !dbg !2359
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2359

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 12), align 8, !dbg !2359, !tbaa !2361
  %5 = load i32* %4, align 4, !dbg !2359, !tbaa !1313
  %cmp = icmp eq i32 %5, %inc, !dbg !2359
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2359

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2362
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2362, !tbaa !1550
  %call4 = tail call i32* @__errno_location() #1, !dbg !2364
  store i32 5, i32* %call4, align 4, !dbg !2364, !tbaa !1313
  br label %return, !dbg !2365

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2366
  %6 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2366, !tbaa !1544
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %6, null, !dbg !2366
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2366

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @geteuid() #5, !dbg !2367
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %6, i64 0, i32 2, !dbg !2367
  %7 = load %struct.stat64.16** %stat.i, align 8, !dbg !2367, !tbaa !1642
  %st_uid.i = getelementptr inbounds %struct.stat64.16* %7, i64 0, i32 4, !dbg !2367
  %8 = load i32* %st_uid.i, align 4, !dbg !2367, !tbaa !1627
  %cmp.i = icmp eq i32 %call.i, %8, !dbg !2367
  br i1 %cmp.i, label %if.then.i23, label %if.else.i, !dbg !2367

if.then.i23:                                      ; preds = %if.then7
  %call1.i = tail call i32 @getgid() #5, !dbg !2370
  %9 = load %struct.stat64.16** %stat.i, align 8, !dbg !2370, !tbaa !1642
  %st_gid.i = getelementptr inbounds %struct.stat64.16* %9, i64 0, i32 5, !dbg !2370
  %10 = load i32* %st_gid.i, align 4, !dbg !2370, !tbaa !1629
  %cmp3.i = icmp eq i32 %call1.i, %10, !dbg !2370
  %and.i22 = and i32 %mode, 3071, !dbg !2371
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2370
  %st_mode.i = getelementptr inbounds %struct.stat64.16* %9, i64 0, i32 3, !dbg !2372
  %11 = load i32* %st_mode.i, align 4, !dbg !2372, !tbaa !1615
  %and6.i = and i32 %11, -4096, !dbg !2372
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2372
  %or.i = or i32 %and7.i, %and6.i, !dbg !2372
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2372, !tbaa !1615
  br label %return, !dbg !2373

if.else.i:                                        ; preds = %if.then7
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2374
  store i32 1, i32* %call10.i, align 4, !dbg !2374, !tbaa !1313
  br label %return, !dbg !2375

if.else:                                          ; preds = %if.end5
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2376
  %12 = load i32* %fd10, align 8, !dbg !2376, !tbaa !1776
  %call11 = tail call i64 (i64, ...)* @syscall(i64 91, i32 %12, i32 %mode) #5, !dbg !2376
  %conv = trunc i64 %call11 to i32, !dbg !2376
  %cmp12 = icmp eq i32 %conv, -1, !dbg !2377
  br i1 %cmp12, label %if.then14, label %return, !dbg !2377

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 @klee_get_errno() #5, !dbg !2379
  %call16 = tail call i32* @__errno_location() #1, !dbg !2379
  store i32 %call15, i32* %call16, align 4, !dbg !2379, !tbaa !1313
  br label %return, !dbg !2379

return:                                           ; preds = %if.then14, %if.else, %if.else.i, %if.then.i23, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then14 ], [ %conv, %if.else ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2380
}

; Function Attrs: nounwind uwtable
define i32 @chown(i8* %path, i32 %owner, i32 %group) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2381, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2383
  %cmp.i = icmp eq i8 %0, 0, !dbg !2383
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2383

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2383
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2383, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2383
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2383

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2384, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2384
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2384

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2384
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2384

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2385
  %sext.i = shl i32 %i.027.i, 24, !dbg !2385
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2385
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2385
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2385
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2385
  %inc.i = add i32 %i.027.i, 1, !dbg !2384
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2385

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2386
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2386, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2387
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2387, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2387
  %5 = load i64* %st_ino.i, align 8, !dbg !2387, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2387
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2386
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2388
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2387
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2387

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2466, i64 0, i64 0)) #5, !dbg !2389
  %call.i = tail call i32* @__errno_location() #1, !dbg !2392
  store i32 1, i32* %call.i, align 4, !dbg !2392, !tbaa !1313
  br label %return, !dbg !2390

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2393
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2393
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2393
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2396
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2396
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2396
  br label %for.cond.i13, !dbg !2397

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2398, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2399
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2399
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2399
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2399

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2400

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2401, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2402

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2403
  store i8 47, i8* %sc.0.i, align 1, !dbg !2403, !tbaa !1323
  br label %for.inc.i, !dbg !2404

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2405
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2405
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2405
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2406
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2406
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2406
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2407
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2407, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2408
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2408

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2397
  br label %for.cond.i13, !dbg !2397

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #5, !dbg !2395
  %conv = trunc i64 %call3 to i32, !dbg !2395
  %cmp = icmp eq i32 %conv, -1, !dbg !2409
  br i1 %cmp, label %if.then5, label %return, !dbg !2409

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2411
  %call7 = tail call i32* @__errno_location() #1, !dbg !2411
  store i32 %call6, i32* %call7, align 4, !dbg !2411, !tbaa !1313
  br label %return, !dbg !2411

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2412
}

; Function Attrs: nounwind uwtable
define i32 @fchown(i32 %fd, i32 %owner, i32 %group) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2413
  br i1 %0, label %if.then.i, label %if.then, !dbg !2413

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2415
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2416
  %1 = load i32* %flags.i, align 4, !dbg !2416, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2416
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2416
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2415
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2417
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2416
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2416

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2419
  store i32 9, i32* %call1, align 4, !dbg !2419, !tbaa !1313
  br label %return, !dbg !2421

if.end:                                           ; preds = %if.then.i
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2422
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2422, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2422
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2422

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2466, i64 0, i64 0)) #5, !dbg !2423
  %call.i = tail call i32* @__errno_location() #1, !dbg !2426
  store i32 1, i32* %call.i, align 4, !dbg !2426, !tbaa !1313
  br label %return, !dbg !2424

if.else:                                          ; preds = %if.end
  %call6 = tail call i64 (i64, ...)* @syscall(i64 93, i32 %fd, i32 %owner, i32 %group) #5, !dbg !2427
  %conv = trunc i64 %call6 to i32, !dbg !2427
  %cmp = icmp eq i32 %conv, -1, !dbg !2428
  br i1 %cmp, label %if.then8, label %return, !dbg !2428

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2430
  %call10 = tail call i32* @__errno_location() #1, !dbg !2430
  store i32 %call9, i32* %call10, align 4, !dbg !2430, !tbaa !1313
  br label %return, !dbg !2430

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2431
}

; Function Attrs: nounwind uwtable
define i32 @lchown(i8* %path, i32 %owner, i32 %group) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2432, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2434
  %cmp.i = icmp eq i8 %0, 0, !dbg !2434
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2434

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2434
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2434, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2434
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2434

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2435, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2435
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2435

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2435
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2435

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2436
  %sext.i = shl i32 %i.027.i, 24, !dbg !2436
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2436
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2436
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2436
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2436
  %inc.i = add i32 %i.027.i, 1, !dbg !2435
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2436

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2437
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2437, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2438
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2438, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2438
  %5 = load i64* %st_ino.i, align 8, !dbg !2438, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2438
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2437
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2439
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2438
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2438

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2466, i64 0, i64 0)) #5, !dbg !2440
  %call.i = tail call i32* @__errno_location() #1, !dbg !2443
  store i32 1, i32* %call.i, align 4, !dbg !2443, !tbaa !1313
  br label %return, !dbg !2441

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2444
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2444
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2444
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2447
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2447
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2447
  br label %for.cond.i13, !dbg !2448

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2449, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2450
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2450
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2450
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2450

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2451

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2452, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2453

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2454
  store i8 47, i8* %sc.0.i, align 1, !dbg !2454, !tbaa !1323
  br label %for.inc.i, !dbg !2455

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2456
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2456
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2456
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2457
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2457
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2457
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2458
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2458, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2459
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2459

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2448
  br label %for.cond.i13, !dbg !2448

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #5, !dbg !2446
  %conv = trunc i64 %call3 to i32, !dbg !2446
  %cmp = icmp eq i32 %conv, -1, !dbg !2460
  br i1 %cmp, label %if.then5, label %return, !dbg !2460

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2462
  %call7 = tail call i32* @__errno_location() #1, !dbg !2462
  store i32 %call6, i32* %call7, align 4, !dbg !2462, !tbaa !1313
  br label %return, !dbg !2462

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2463
}

; Function Attrs: nounwind uwtable
define i32 @__fd_fstat(i32 %fd, %struct.stat64.16* %buf) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2464
  br i1 %0, label %if.then.i, label %if.then, !dbg !2464

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2466
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2467
  %1 = load i32* %flags.i, align 4, !dbg !2467, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2467
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2467
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2467

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2466
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2468
  br i1 %tobool, label %if.then, label %if.end, !dbg !2468

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2470
  store i32 9, i32* %call1, align 4, !dbg !2470, !tbaa !1313
  br label %return, !dbg !2472

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2473
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2473, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2473
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !2473

if.then3:                                         ; preds = %if.end
  %fd4 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2474
  %3 = load i32* %fd4, align 8, !dbg !2474, !tbaa !1776
  %call5 = tail call i64 (i64, ...)* @syscall(i64 5, i32 %3, %struct.stat64.16* %buf) #5, !dbg !2474
  %conv = trunc i64 %call5 to i32, !dbg !2474
  %cmp = icmp eq i32 %conv, -1, !dbg !2475
  br i1 %cmp, label %if.then7, label %return, !dbg !2475

if.then7:                                         ; preds = %if.then3
  %call8 = tail call i32 @klee_get_errno() #5, !dbg !2477
  %call9 = tail call i32* @__errno_location() #1, !dbg !2477
  store i32 %call8, i32* %call9, align 4, !dbg !2477, !tbaa !1313
  br label %return, !dbg !2477

if.end11:                                         ; preds = %if.end
  %4 = bitcast %struct.stat64.16* %buf to i8*, !dbg !2478
  %stat = getelementptr inbounds %struct.exe_disk_file_t.17* %2, i64 0, i32 2, !dbg !2478
  %5 = load %struct.stat64.16** %stat, align 8, !dbg !2478, !tbaa !1642
  %6 = bitcast %struct.stat64.16* %5 to i8*, !dbg !2478
  %7 = call i8* @memcpy(i8* %4, i8* %6, i64 144)
  br label %return, !dbg !2479

return:                                           ; preds = %if.end11, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %if.then ], [ -1, %if.then7 ], [ %conv, %if.then3 ]
  ret i32 %retval.0, !dbg !2480
}

; Function Attrs: nounwind uwtable
define i32 @__fd_ftruncate(i32 %fd, i64 %length) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2481
  br i1 %0, label %if.then.i, label %__get_file.exit.thread, !dbg !2481

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2483
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2484
  %1 = load i32* %flags.i, align 4, !dbg !2484, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2484
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2484
  br i1 %tobool.i, label %__get_file.exit.thread, label %__get_file.exit, !dbg !2484

__get_file.exit.thread:                           ; preds = %if.then.i, %entry
  %2 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !2485, !tbaa !1313
  %inc20 = add nsw i32 %2, 1, !dbg !2485
  store i32 %inc20, i32* @__fd_ftruncate.n_calls, align 4, !dbg !2485, !tbaa !1313
  br label %if.then, !dbg !2486

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2483
  %3 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !2485, !tbaa !1313
  %inc = add nsw i32 %3, 1, !dbg !2485
  store i32 %inc, i32* @__fd_ftruncate.n_calls, align 4, !dbg !2485, !tbaa !1313
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2486
  br i1 %tobool, label %if.then, label %if.end, !dbg !2486

if.then:                                          ; preds = %__get_file.exit, %__get_file.exit.thread
  %call1 = tail call i32* @__errno_location() #1, !dbg !2488
  store i32 9, i32* %call1, align 4, !dbg !2488, !tbaa !1313
  br label %return, !dbg !2490

if.end:                                           ; preds = %__get_file.exit
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2491, !tbaa !1550
  %tobool2 = icmp eq i32 %4, 0, !dbg !2491
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2491

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 9), align 8, !dbg !2491, !tbaa !1561
  %6 = load i32* %5, align 4, !dbg !2491, !tbaa !1313
  %cmp = icmp eq i32 %6, %inc, !dbg !2491
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2491

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %4, -1, !dbg !2493
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2493, !tbaa !1550
  %call4 = tail call i32* @__errno_location() #1, !dbg !2495
  store i32 5, i32* %call4, align 4, !dbg !2495, !tbaa !1313
  br label %return, !dbg !2496

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2497
  %7 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2497, !tbaa !1544
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %7, null, !dbg !2497
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2497

if.then7:                                         ; preds = %if.end5
  tail call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str1052, i64 0, i64 0)) #5, !dbg !2498
  %call8 = tail call i32* @__errno_location() #1, !dbg !2500
  store i32 5, i32* %call8, align 4, !dbg !2500, !tbaa !1313
  br label %return, !dbg !2501

if.else:                                          ; preds = %if.end5
  %fd9 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2502
  %8 = load i32* %fd9, align 8, !dbg !2502, !tbaa !1776
  %call10 = tail call i64 (i64, ...)* @syscall(i64 77, i32 %8, i64 %length) #5, !dbg !2502
  %conv = trunc i64 %call10 to i32, !dbg !2502
  %cmp11 = icmp eq i32 %conv, -1, !dbg !2503
  br i1 %cmp11, label %if.then13, label %return, !dbg !2503

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 @klee_get_errno() #5, !dbg !2505
  %call15 = tail call i32* @__errno_location() #1, !dbg !2505
  store i32 %call14, i32* %call15, align 4, !dbg !2505, !tbaa !1313
  br label %return, !dbg !2505

return:                                           ; preds = %if.then13, %if.else, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then7 ], [ -1, %if.then ], [ -1, %if.then13 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2506
}

; Function Attrs: nounwind uwtable
define i32 @__fd_getdents(i32 %fd, %struct.dirent64.13* %dirp, i32 %count) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2507
  br i1 %0, label %if.then.i, label %if.then, !dbg !2507

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2509
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2510
  %1 = load i32* %flags.i, align 4, !dbg !2510, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2510
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2510
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2510

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2509
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2511
  br i1 %tobool, label %if.then, label %if.end, !dbg !2511

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2513
  store i32 9, i32* %call1, align 4, !dbg !2513, !tbaa !1313
  br label %return, !dbg !2515

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2516
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2516, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2516
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2516

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str1153, i64 0, i64 0)) #5, !dbg !2517
  %call4 = tail call i32* @__errno_location() #1, !dbg !2519
  store i32 22, i32* %call4, align 4, !dbg !2519, !tbaa !1313
  br label %return, !dbg !2520

if.else:                                          ; preds = %if.end
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2521
  %3 = load i64* %off, align 8, !dbg !2521, !tbaa !2003
  %cmp = icmp ult i64 %3, 4096, !dbg !2521
  br i1 %cmp, label %if.then5, label %if.else43, !dbg !2521

if.then5:                                         ; preds = %if.else
  %int_cast_to_i64 = bitcast i64 280 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2522
  %div = udiv i64 %3, 280, !dbg !2522
  %mul = mul i64 %div, 280, !dbg !2523
  %cmp8 = icmp eq i64 %mul, %3, !dbg !2523
  br i1 %cmp8, label %lor.lhs.false, label %if.then11, !dbg !2523

lor.lhs.false:                                    ; preds = %if.then5
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2523, !tbaa !1528
  %conv = zext i32 %4 to i64, !dbg !2523
  %cmp9 = icmp ugt i64 %div, %conv, !dbg !2523
  br i1 %cmp9, label %if.then11, label %for.cond.preheader, !dbg !2523

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp15123 = icmp ult i64 %div, %conv, !dbg !2525
  br i1 %cmp15123, label %for.body, label %for.end, !dbg !2525

if.then11:                                        ; preds = %lor.lhs.false, %if.then5
  %call12 = tail call i32* @__errno_location() #1, !dbg !2526
  store i32 22, i32* %call12, align 4, !dbg !2526, !tbaa !1313
  br label %return, !dbg !2528

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0126 = phi %struct.dirent64.13* [ %incdec.ptr, %for.body ], [ %dirp, %for.cond.preheader ]
  %i.0125 = phi i64 [ %add23, %for.body ], [ %div, %for.cond.preheader ]
  %bytes.0124 = phi i64 [ %add27, %for.body ], [ 0, %for.cond.preheader ]
  %5 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2529, !tbaa !1531
  %stat = getelementptr inbounds %struct.exe_disk_file_t.17* %5, i64 %i.0125, i32 2, !dbg !2530
  %6 = load %struct.stat64.16** %stat, align 8, !dbg !2530, !tbaa !1642
  %st_ino = getelementptr inbounds %struct.stat64.16* %6, i64 0, i32 1, !dbg !2530
  %7 = load i64* %st_ino, align 8, !dbg !2530, !tbaa !1607
  %d_ino = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 0, !dbg !2530
  store i64 %7, i64* %d_ino, align 8, !dbg !2530, !tbaa !2531
  %d_reclen = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 2, !dbg !2534
  store i16 280, i16* %d_reclen, align 2, !dbg !2534, !tbaa !2535
  %st_mode = getelementptr inbounds %struct.stat64.16* %6, i64 0, i32 3, !dbg !2536
  %8 = load i32* %st_mode, align 4, !dbg !2536, !tbaa !1615
  %int_cast_to_i641 = zext i32 12 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2536
  %and = lshr i32 %8, 12, !dbg !2536
  %and.tr = trunc i32 %and to i8, !dbg !2536
  %conv18 = and i8 %and.tr, 15, !dbg !2536
  %d_type = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 3, !dbg !2536
  store i8 %conv18, i8* %d_type, align 1, !dbg !2536, !tbaa !2537
  %add = add nsw i64 %i.0125, 65, !dbg !2538
  %conv19 = trunc i64 %add to i8, !dbg !2538
  %arrayidx20 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 4, i64 0, !dbg !2538
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !2538, !tbaa !1323
  %arrayidx22 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 4, i64 1, !dbg !2539
  store i8 0, i8* %arrayidx22, align 1, !dbg !2539, !tbaa !1323
  %add23 = add nsw i64 %i.0125, 1, !dbg !2540
  %mul24 = mul i64 %add23, 280, !dbg !2540
  %d_off = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 0, i32 1, !dbg !2540
  store i64 %mul24, i64* %d_off, align 8, !dbg !2540, !tbaa !2541
  %add27 = add nsw i64 %bytes.0124, 280, !dbg !2542
  %incdec.ptr = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0126, i64 1, !dbg !2543
  %9 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2525, !tbaa !1528
  %conv14 = zext i32 %9 to i64, !dbg !2525
  %cmp15 = icmp slt i64 %add23, %conv14, !dbg !2525
  br i1 %cmp15, label %for.body, label %for.end, !dbg !2525

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0.lcssa = phi %struct.dirent64.13* [ %dirp, %for.cond.preheader ], [ %incdec.ptr, %for.body ]
  %bytes.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add27, %for.body ]
  %cmp28 = icmp ult i32 %count, 4096, !dbg !2544
  %10 = zext i32 %count to i64, !dbg !2544
  %conv30 = select i1 %cmp28, i64 %10, i64 4096, !dbg !2544
  %d_ino31 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 0, !dbg !2545
  store i64 0, i64* %d_ino31, align 8, !dbg !2545, !tbaa !2531
  %sub = sub nsw i64 %conv30, %bytes.0.lcssa, !dbg !2546
  %conv32 = trunc i64 %sub to i16, !dbg !2546
  %d_reclen33 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 2, !dbg !2546
  store i16 %conv32, i16* %d_reclen33, align 2, !dbg !2546, !tbaa !2535
  %d_type34 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 3, !dbg !2547
  store i8 0, i8* %d_type34, align 1, !dbg !2547, !tbaa !2537
  %arrayidx36 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 4, i64 0, !dbg !2548
  store i8 0, i8* %arrayidx36, align 1, !dbg !2548, !tbaa !1323
  %d_off37 = getelementptr inbounds %struct.dirent64.13* %dirp.addr.0.lcssa, i64 0, i32 1, !dbg !2549
  store i64 4096, i64* %d_off37, align 8, !dbg !2549, !tbaa !2541
  %conv39 = and i64 %sub, 65535, !dbg !2550
  %add40 = add nsw i64 %conv39, %bytes.0.lcssa, !dbg !2550
  store i64 %conv30, i64* %off, align 8, !dbg !2551, !tbaa !2003
  %conv42 = trunc i64 %add40 to i32, !dbg !2552
  br label %return, !dbg !2552

if.else43:                                        ; preds = %if.else
  %sub45 = add nsw i64 %3, -4096, !dbg !2553
  %11 = bitcast %struct.dirent64.13* %dirp to i8*, !dbg !2554
  %conv46 = zext i32 %count to i64, !dbg !2554
  %12 = call i8* @memset(i8* %11, i32 0, i64 %conv46)
  %fd47 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2555
  %13 = load i32* %fd47, align 8, !dbg !2555, !tbaa !1776
  %call48 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %13, i64 %sub45, i32 0) #5, !dbg !2555
  %cmp49 = icmp eq i64 %call48, -1, !dbg !2556
  br i1 %cmp49, label %cond.false52, label %cond.end53, !dbg !2556

cond.false52:                                     ; preds = %if.else43
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str1254, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str446, i64 0, i64 0), i32 875, i8* getelementptr inbounds ([65 x
  unreachable, !dbg !2556

cond.end53:                                       ; preds = %if.else43
  %14 = load i32* %fd47, align 8, !dbg !2557, !tbaa !1776
  %call55 = tail call i64 (i64, ...)* @syscall(i64 217, i32 %14, %struct.dirent64.13* %dirp, i32 %count) #5, !dbg !2557
  %conv56 = trunc i64 %call55 to i32, !dbg !2557
  %cmp57 = icmp eq i32 %conv56, -1, !dbg !2558
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !2558

if.then59:                                        ; preds = %cond.end53
  %call60 = tail call i32 @klee_get_errno() #5, !dbg !2559
  %call61 = tail call i32* @__errno_location() #1, !dbg !2559
  store i32 %call60, i32* %call61, align 4, !dbg !2559, !tbaa !1313
  br label %return, !dbg !2561

if.else62:                                        ; preds = %cond.end53
  %15 = load i32* %fd47, align 8, !dbg !2562, !tbaa !1776
  %call64 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %15, i32 0, i32 1) #5, !dbg !2562
  %add65 = add nsw i64 %call64, 4096, !dbg !2562
  store i64 %add65, i64* %off, align 8, !dbg !2562, !tbaa !2003
  %cmp67128 = icmp sgt i32 %conv56, 0, !dbg !2563
  br i1 %cmp67128, label %while.body, label %return, !dbg !2563

while.body:                                       ; preds = %while.body, %if.else62
  %pos.0129 = phi i32 [ %add73, %while.body ], [ 0, %if.else62 ]
  %idx.ext = sext i32 %pos.0129 to i64, !dbg !2564
  %add.ptr.sum = add i64 %idx.ext, 8, !dbg !2565
  %d_off69 = getelementptr inbounds i8* %11, i64 %add.ptr.sum, !dbg !2565
  %16 = bitcast i8* %d_off69 to i64*, !dbg !2565
  %17 = load i64* %16, align 8, !dbg !2565, !tbaa !2541
  %add70 = add nsw i64 %17, 4096, !dbg !2565
  store i64 %add70, i64* %16, align 8, !dbg !2565, !tbaa !2541
  %add.ptr.sum120 = add i64 %idx.ext, 16, !dbg !2566
  %d_reclen71 = getelementptr inbounds i8* %11, i64 %add.ptr.sum120, !dbg !2566
  %18 = bitcast i8* %d_reclen71 to i16*, !dbg !2566
  %19 = load i16* %18, align 2, !dbg !2566, !tbaa !2535
  %conv72 = zext i16 %19 to i32, !dbg !2566
  %add73 = add nsw i32 %conv72, %pos.0129, !dbg !2566
  %cmp67 = icmp slt i32 %add73, %conv56, !dbg !2563
  br i1 %cmp67, label %while.body, label %return, !dbg !2563

return:                                           ; preds = %while.body, %if.else62, %if.then59, %for.end, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then11 ], [ %conv42, %for.end ], [ -1, %if.then ], [ -1, %if.then59 ], [ %conv56, %if.else62 ], [ %conv56, %while.body ]
  ret i32 %retval.0, !dbg !2567
}

; Function Attrs: nounwind uwtable
define i32 @ioctl(i32 %fd, i64 %request, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !2568
  br i1 %0, label %if.then.i, label %if.then, !dbg !2568

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2570
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2571
  %1 = load i32* %flags.i, align 4, !dbg !2571, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2571
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2571
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2571

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2570
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2572
  br i1 %tobool, label %if.then, label %if.end, !dbg !2572

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2574
  store i32 9, i32* %call1, align 4, !dbg !2574, !tbaa !1313
  br label %return, !dbg !2576

if.end:                                           ; preds = %__get_file.exit
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2577
  call void @llvm.va_start(i8* %arraydecay2), !dbg !2577
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2578
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2578
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2578
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2578

vaarg.in_reg:                                     ; preds = %if.end
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2578
  %reg_save_area = load i8** %2, align 16, !dbg !2578
  %3 = sext i32 %gp_offset to i64, !dbg !2578
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !2578
  %5 = add i32 %gp_offset, 8, !dbg !2578
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !2578
  br label %vaarg.end, !dbg !2578

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2578
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2578
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2578
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2578
  br label %vaarg.end, !dbg !2578

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !2578
  %6 = load i8** %vaarg.addr, align 8, !dbg !2578
  call void @llvm.va_end(i8* %arraydecay2), !dbg !2579
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2580
  %7 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2580, !tbaa !1544
  %tobool6 = icmp eq %struct.exe_disk_file_t.17* %7, null, !dbg !2580
  br i1 %tobool6, label %if.else103, label %if.then7, !dbg !2580

if.then7:                                         ; preds = %vaarg.end
  %stat9 = getelementptr inbounds %struct.exe_disk_file_t.17* %7, i64 0, i32 2, !dbg !2581
  %8 = load %struct.stat64.16** %stat9, align 8, !dbg !2581, !tbaa !1642
  switch i64 %request, label %sw.default [
    i64 21505, label %sw.bb
    i64 21506, label %sw.bb48
    i64 21507, label %sw.bb55
    i64 21508, label %sw.bb60
    i64 21523, label %sw.bb67
    i64 21524, label %sw.bb74
    i64 21531, label %sw.bb82
    i64 2150657282, label %sw.bb100
  ], !dbg !2582

sw.bb:                                            ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str1355, i64 0, i64 0)) #5, !dbg !2583
  %9 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2584
  %10 = load i32* %9, align 4, !dbg !2584, !tbaa !2586
  %and = and i32 %10, 61440, !dbg !2584
  %cmp = icmp eq i32 %and, 8192, !dbg !2584
  br i1 %cmp, label %if.then10, label %if.else, !dbg !2584

if.then10:                                        ; preds = %sw.bb
  %c_iflag = bitcast i8* %6 to i32*, !dbg !2588
  store i32 27906, i32* %c_iflag, align 4, !dbg !2588, !tbaa !2590
  %c_oflag = getelementptr inbounds i8* %6, i64 4, !dbg !2592
  %11 = bitcast i8* %c_oflag to i32*, !dbg !2592
  store i32 5, i32* %11, align 4, !dbg !2592, !tbaa !2593
  %c_cflag = getelementptr inbounds i8* %6, i64 8, !dbg !2594
  %12 = bitcast i8* %c_cflag to i32*, !dbg !2594
  store i32 1215, i32* %12, align 4, !dbg !2594, !tbaa !2595
  %c_lflag = getelementptr inbounds i8* %6, i64 12, !dbg !2596
  %13 = bitcast i8* %c_lflag to i32*, !dbg !2596
  store i32 35287, i32* %13, align 4, !dbg !2596, !tbaa !2597
  %14 = getelementptr inbounds i8* %6, i64 16, !dbg !2598
  store i8 0, i8* %14, align 1, !dbg !2598, !tbaa !2599
  %c_cc = getelementptr inbounds i8* %6, i64 17, !dbg !2600
  store i8 3, i8* %c_cc, align 1, !dbg !2600, !tbaa !1323
  %arrayidx12 = getelementptr inbounds i8* %6, i64 18, !dbg !2601
  store i8 28, i8* %arrayidx12, align 1, !dbg !2601, !tbaa !1323
  %arrayidx14 = getelementptr inbounds i8* %6, i64 19, !dbg !2602
  store i8 127, i8* %arrayidx14, align 1, !dbg !2602, !tbaa !1323
  %arrayidx16 = getelementptr inbounds i8* %6, i64 20, !dbg !2603
  store i8 21, i8* %arrayidx16, align 1, !dbg !2603, !tbaa !1323
  %arrayidx18 = getelementptr inbounds i8* %6, i64 21, !dbg !2604
  store i8 4, i8* %arrayidx18, align 1, !dbg !2604, !tbaa !1323
  %arrayidx20 = getelementptr inbounds i8* %6, i64 22, !dbg !2605
  store i8 0, i8* %arrayidx20, align 1, !dbg !2605, !tbaa !1323
  %arrayidx22 = getelementptr inbounds i8* %6, i64 23, !dbg !2606
  store i8 1, i8* %arrayidx22, align 1, !dbg !2606, !tbaa !1323
  %arrayidx24 = getelementptr inbounds i8* %6, i64 24, !dbg !2607
  store i8 -1, i8* %arrayidx24, align 1, !dbg !2607, !tbaa !1323
  %arrayidx26 = getelementptr inbounds i8* %6, i64 25, !dbg !2608
  store i8 17, i8* %arrayidx26, align 1, !dbg !2608, !tbaa !1323
  %arrayidx28 = getelementptr inbounds i8* %6, i64 26, !dbg !2609
  store i8 19, i8* %arrayidx28, align 1, !dbg !2609, !tbaa !1323
  %arrayidx30 = getelementptr inbounds i8* %6, i64 27, !dbg !2610
  store i8 26, i8* %arrayidx30, align 1, !dbg !2610, !tbaa !1323
  %arrayidx32 = getelementptr inbounds i8* %6, i64 28, !dbg !2611
  store i8 -1, i8* %arrayidx32, align 1, !dbg !2611, !tbaa !1323
  %arrayidx34 = getelementptr inbounds i8* %6, i64 29, !dbg !2612
  store i8 18, i8* %arrayidx34, align 1, !dbg !2612, !tbaa !1323
  %arrayidx36 = getelementptr inbounds i8* %6, i64 30, !dbg !2613
  store i8 15, i8* %arrayidx36, align 1, !dbg !2613, !tbaa !1323
  %arrayidx38 = getelementptr inbounds i8* %6, i64 31, !dbg !2614
  store i8 23, i8* %arrayidx38, align 1, !dbg !2614, !tbaa !1323
  %arrayidx40 = getelementptr inbounds i8* %6, i64 32, !dbg !2615
  store i8 22, i8* %arrayidx40, align 1, !dbg !2615, !tbaa !1323
  %arrayidx42 = getelementptr inbounds i8* %6, i64 33, !dbg !2616
  store i8 -1, i8* %arrayidx42, align 1, !dbg !2616, !tbaa !1323
  %arrayidx44 = getelementptr inbounds i8* %6, i64 34, !dbg !2617
  store i8 0, i8* %arrayidx44, align 1, !dbg !2617, !tbaa !1323
  %arrayidx46 = getelementptr inbounds i8* %6, i64 35, !dbg !2618
  store i8 0, i8* %arrayidx46, align 1, !dbg !2618, !tbaa !1323
  br label %return, !dbg !2619

if.else:                                          ; preds = %sw.bb
  %call47 = call i32* @__errno_location() #1, !dbg !2620
  store i32 25, i32* %call47, align 4, !dbg !2620, !tbaa !1313
  br label %return, !dbg !2622

sw.bb48:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str1456, i64 0, i64 0)) #5, !dbg !2623
  %15 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2625
  %16 = load i32* %15, align 4, !dbg !2625, !tbaa !2586
  %and50 = and i32 %16, 61440, !dbg !2625
  %cmp51 = icmp eq i32 %and50, 8192, !dbg !2625
  br i1 %cmp51, label %return, label %if.else53, !dbg !2625

if.else53:                                        ; preds = %sw.bb48
  %call54 = call i32* @__errno_location() #1, !dbg !2627
  store i32 25, i32* %call54, align 4, !dbg !2627, !tbaa !1313
  br label %return, !dbg !2629

sw.bb55:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str1557, i64 0, i64 0)) #5, !dbg !2630
  %cmp56 = icmp eq i32 %fd, 0, !dbg !2632
  br i1 %cmp56, label %return, label %if.else58, !dbg !2632

if.else58:                                        ; preds = %sw.bb55
  %call59 = call i32* @__errno_location() #1, !dbg !2634
  store i32 25, i32* %call59, align 4, !dbg !2634, !tbaa !1313
  br label %return, !dbg !2636

sw.bb60:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str1658, i64 0, i64 0)) #5, !dbg !2637
  %17 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2639
  %18 = load i32* %17, align 4, !dbg !2639, !tbaa !2586
  %and62 = and i32 %18, 61440, !dbg !2639
  %cmp63 = icmp eq i32 %and62, 8192, !dbg !2639
  br i1 %cmp63, label %return, label %if.else65, !dbg !2639

if.else65:                                        ; preds = %sw.bb60
  %call66 = call i32* @__errno_location() #1, !dbg !2641
  store i32 25, i32* %call66, align 4, !dbg !2641, !tbaa !1313
  br label %return, !dbg !2643

sw.bb67:                                          ; preds = %if.then7
  %ws_row = bitcast i8* %6 to i16*, !dbg !2644
  store i16 24, i16* %ws_row, align 2, !dbg !2644, !tbaa !2645
  %ws_col = getelementptr inbounds i8* %6, i64 2, !dbg !2647
  %19 = bitcast i8* %ws_col to i16*, !dbg !2647
  store i16 80, i16* %19, align 2, !dbg !2647, !tbaa !2648
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str1759, i64 0, i64 0)) #5, !dbg !2649
  %20 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2650
  %21 = load i32* %20, align 4, !dbg !2650, !tbaa !2586
  %and69 = and i32 %21, 61440, !dbg !2650
  %cmp70 = icmp eq i32 %and69, 8192, !dbg !2650
  br i1 %cmp70, label %return, label %if.else72, !dbg !2650

if.else72:                                        ; preds = %sw.bb67
  %call73 = call i32* @__errno_location() #1, !dbg !2652
  store i32 25, i32* %call73, align 4, !dbg !2652, !tbaa !1313
  br label %return, !dbg !2654

sw.bb74:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str1860, i64 0, i64 0)) #5, !dbg !2655
  %22 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2657
  %23 = load i32* %22, align 4, !dbg !2657, !tbaa !2586
  %and76 = and i32 %23, 61440, !dbg !2657
  %cmp77 = icmp eq i32 %and76, 8192, !dbg !2657
  %call79 = call i32* @__errno_location() #1, !dbg !2659
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !2657

if.then78:                                        ; preds = %sw.bb74
  store i32 22, i32* %call79, align 4, !dbg !2659, !tbaa !1313
  br label %return, !dbg !2661

if.else80:                                        ; preds = %sw.bb74
  store i32 25, i32* %call79, align 4, !dbg !2662, !tbaa !1313
  br label %return, !dbg !2664

sw.bb82:                                          ; preds = %if.then7
  %24 = bitcast i8* %6 to i32*, !dbg !2665
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str1961, i64 0, i64 0)) #5, !dbg !2666
  %25 = getelementptr inbounds %struct.stat64.16* %8, i64 0, i32 3, !dbg !2667
  %26 = load i32* %25, align 4, !dbg !2667, !tbaa !2586
  %and84 = and i32 %26, 61440, !dbg !2667
  %cmp85 = icmp eq i32 %and84, 8192, !dbg !2667
  br i1 %cmp85, label %if.then86, label %if.else98, !dbg !2667

if.then86:                                        ; preds = %sw.bb82
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2669
  %27 = load i64* %off, align 8, !dbg !2669, !tbaa !2003
  %28 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2669, !tbaa !1544
  %size = getelementptr inbounds %struct.exe_disk_file_t.17* %28, i64 0, i32 0, !dbg !2669
  %29 = load i32* %size, align 4, !dbg !2669, !tbaa !1599
  %conv = zext i32 %29 to i64, !dbg !2669
  %cmp88 = icmp sgt i64 %conv, %27, !dbg !2669
  br i1 %cmp88, label %if.then90, label %if.end97, !dbg !2669

if.then90:                                        ; preds = %if.then86
  %sub = sub nsw i64 %conv, %27, !dbg !2672
  %conv95 = trunc i64 %sub to i32, !dbg !2672
  br label %if.end97, !dbg !2674

if.end97:                                         ; preds = %if.then90, %if.then86
  %storemerge = phi i32 [ %conv95, %if.then90 ], [ 0, %if.then86 ]
  store i32 %storemerge, i32* %24, align 4, !dbg !2672, !tbaa !1313
  br label %return, !dbg !2675

if.else98:                                        ; preds = %sw.bb82
  %call99 = call i32* @__errno_location() #1, !dbg !2676
  store i32 25, i32* %call99, align 4, !dbg !2676, !tbaa !1313
  br label %return, !dbg !2678

sw.bb100:                                         ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str2062, i64 0, i64 0)) #5, !dbg !2679
  %call101 = call i32* @__errno_location() #1, !dbg !2681
  store i32 22, i32* %call101, align 4, !dbg !2681, !tbaa !1313
  br label %return, !dbg !2682

sw.default:                                       ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str1153, i64 0, i64 0)) #5, !dbg !2683
  %call102 = call i32* @__errno_location() #1, !dbg !2684
  store i32 22, i32* %call102, align 4, !dbg !2684, !tbaa !1313
  br label %return, !dbg !2685

if.else103:                                       ; preds = %vaarg.end
  %fd104 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2686
  %30 = load i32* %fd104, align 8, !dbg !2686, !tbaa !1776
  %call105 = call i64 (i64, ...)* @syscall(i64 16, i32 %30, i64 %request, i8* %6) #5, !dbg !2686
  %conv106 = trunc i64 %call105 to i32, !dbg !2686
  %cmp107 = icmp eq i32 %conv106, -1, !dbg !2687
  br i1 %cmp107, label %if.then109, label %return, !dbg !2687

if.then109:                                       ; preds = %if.else103
  %call110 = call i32 @klee_get_errno() #5, !dbg !2689
  %call111 = call i32* @__errno_location() #1, !dbg !2689
  store i32 %call110, i32* %call111, align 4, !dbg !2689, !tbaa !1313
  br label %return, !dbg !2689

return:                                           ; preds = %if.then109, %if.else103, %sw.default, %sw.bb100, %if.else98, %if.end97, %if.else80, %if.then78, %if.else72, %sw.bb67, %if.else65, %sw.bb60, %if.else58, %sw.bb55, %if.else53, %sw.bb48, %if.else,
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %sw.bb100 ], [ 0, %if.end97 ], [ -1, %if.else98 ], [ -1, %if.then78 ], [ -1, %if.else80 ], [ -1, %if.else72 ], [ -1, %if.else65 ], [ -1, %if.else58 ], [ -1, %if.else53 ], [ 0, %if.then10 ], [ -1, %if.else 
  ret i32 %retval.0, !dbg !2690
}

declare void @klee_warning_once(i8*) #7

; Function Attrs: nounwind uwtable
define i32 @fcntl(i32 %fd, i32 %cmd, ...) #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !2691
  br i1 %0, label %if.then.i, label %if.then, !dbg !2691

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2693
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2694
  %1 = load i32* %flags.i, align 4, !dbg !2694, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2694
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2694
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2694

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2693
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2695
  br i1 %tobool, label %if.then, label %if.end, !dbg !2695

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2697
  store i32 9, i32* %call1, align 4, !dbg !2697, !tbaa !1313
  br label %return, !dbg !2699

if.end:                                           ; preds = %__get_file.exit
  switch i32 %cmd, label %if.else [
    i32 1026, label %if.end16
    i32 1025, label %if.end16
    i32 11, label %if.end16
    i32 9, label %if.end16
    i32 3, label %if.end16
    i32 1, label %if.end16
  ], !dbg !2700

if.else:                                          ; preds = %if.end
  %arraydecay12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2702
  call void @llvm.va_start(i8* %arraydecay12), !dbg !2702
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2704
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2704
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2704
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2704

vaarg.in_reg:                                     ; preds = %if.else
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2704
  %reg_save_area = load i8** %2, align 16, !dbg !2704
  %3 = sext i32 %gp_offset to i64, !dbg !2704
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !2704
  %5 = add i32 %gp_offset, 8, !dbg !2704
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !2704
  br label %vaarg.end, !dbg !2704

vaarg.in_mem:                                     ; preds = %if.else
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2704
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2704
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2704
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2704
  br label %vaarg.end, !dbg !2704

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2704
  %6 = load i32* %vaarg.addr, align 4, !dbg !2704
  call void @llvm.va_end(i8* %arraydecay12), !dbg !2705
  br label %if.end16

if.end16:                                         ; preds = %vaarg.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arg.0 = phi i32 [ %6, %vaarg.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ]
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2706
  %7 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2706, !tbaa !1544
  %tobool17 = icmp eq %struct.exe_disk_file_t.17* %7, null, !dbg !2706
  br i1 %tobool17, label %if.else34, label %if.then18, !dbg !2706

if.then18:                                        ; preds = %if.end16
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %return
  ], !dbg !2707

sw.bb:                                            ; preds = %if.then18
  %8 = load i32* %flags.i, align 4, !dbg !2708, !tbaa !1710
  %int_cast_to_i64 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2708
  %and = lshr i32 %8, 1, !dbg !2708
  %and.lobit = and i32 %and, 1, !dbg !2708
  br label %return, !dbg !2710

sw.bb23:                                          ; preds = %if.then18
  %9 = load i32* %flags.i, align 4, !dbg !2711, !tbaa !1710
  %and25 = and i32 %9, -3, !dbg !2711
  %and26 = and i32 %arg.0, 1, !dbg !2713
  %tobool27 = icmp eq i32 %and26, 0, !dbg !2713
  %or30 = or i32 %9, 2, !dbg !2715
  %and25.or30 = select i1 %tobool27, i32 %and25, i32 %or30, !dbg !2713
  store i32 %and25.or30, i32* %flags.i, align 4, !dbg !2711, !tbaa !1710
  br label %return, !dbg !2716

sw.default:                                       ; preds = %if.then18
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str1153, i64 0, i64 0)) #5, !dbg !2717
  %call33 = call i32* @__errno_location() #1, !dbg !2718
  store i32 22, i32* %call33, align 4, !dbg !2718, !tbaa !1313
  br label %return, !dbg !2719

if.else34:                                        ; preds = %if.end16
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2720
  %10 = load i32* %fd35, align 8, !dbg !2720, !tbaa !1776
  %call36 = call i64 (i64, ...)* @syscall(i64 72, i32 %10, i32 %cmd, i32 %arg.0) #5, !dbg !2720
  %conv = trunc i64 %call36 to i32, !dbg !2720
  %cmp37 = icmp eq i32 %conv, -1, !dbg !2721
  br i1 %cmp37, label %if.then39, label %return, !dbg !2721

if.then39:                                        ; preds = %if.else34
  %call40 = call i32 @klee_get_errno() #5, !dbg !2723
  %call41 = call i32* @__errno_location() #1, !dbg !2723
  store i32 %call40, i32* %call41, align 4, !dbg !2723, !tbaa !1313
  br label %return, !dbg !2723

return:                                           ; preds = %if.then39, %if.else34, %sw.default, %sw.bb23, %sw.bb, %if.then18, %if.then
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb23 ], [ %and.lobit, %sw.bb ], [ -1, %if.then ], [ 0, %if.then18 ], [ -1, %if.then39 ], [ %conv, %if.else34 ]
  ret i32 %retval.0, !dbg !2724
}

; Function Attrs: nounwind uwtable
define i32 @__fd_statfs(i8* %path, %struct.statfs.11* %buf) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2725, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2727
  %cmp.i = icmp eq i8 %0, 0, !dbg !2727
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2727

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2727
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2727, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2727
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2727

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2728, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2728
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2728

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2728
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2728

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2729
  %sext.i = shl i32 %i.027.i, 24, !dbg !2729
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2729
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2729
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2729
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2729
  %inc.i = add i32 %i.027.i, 1, !dbg !2728
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2729

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2730
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2730, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2731
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2731, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2731
  %5 = load i64* %st_ino.i, align 8, !dbg !2731, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2731
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2730
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2732
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2731
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2731

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str951, i64 0, i64 0)) #5, !dbg !2734
  %call1 = tail call i32* @__errno_location() #1, !dbg !2736
  store i32 2, i32* %call1, align 4, !dbg !2736, !tbaa !1313
  br label %return, !dbg !2737

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2738
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #5, !dbg !2738
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2738
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2741
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2741
  tail call void @klee_assume(i64 %conv1.i.i) #5, !dbg !2741
  br label %for.cond.i11, !dbg !2742

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2743, !tbaa !1323
  %sub.i = add i32 %i.0.i, -1, !dbg !2744
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2744
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2744
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2744

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2745

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2746, !tbaa !1323
  br label %__concretize_string.exit, !dbg !2747

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2748
  store i8 47, i8* %sc.0.i, align 1, !dbg !2748, !tbaa !1323
  br label %for.inc.i, !dbg !2749

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2750
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #5, !dbg !2750
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2750
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2751
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2751
  tail call void @klee_assume(i64 %conv15.i) #5, !dbg !2751
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2752
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2752, !tbaa !1323
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2753
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2753

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2742
  br label %for.cond.i11, !dbg !2742

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 137, i8* %path, %struct.statfs.11* %buf) #5, !dbg !2740
  %conv = trunc i64 %call3 to i32, !dbg !2740
  %cmp = icmp eq i32 %conv, -1, !dbg !2754
  br i1 %cmp, label %if.then5, label %return, !dbg !2754

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #5, !dbg !2756
  %call7 = tail call i32* @__errno_location() #1, !dbg !2756
  store i32 %call6, i32* %call7, align 4, !dbg !2756, !tbaa !1313
  br label %return, !dbg !2756

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2757
}

; Function Attrs: nounwind uwtable
define i32 @fstatfs(i32 %fd, %struct.statfs.11* %buf) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2758
  br i1 %0, label %if.then.i, label %if.then, !dbg !2758

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2760
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2761
  %1 = load i32* %flags.i, align 4, !dbg !2761, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2761
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2761
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2761

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2760
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2762
  br i1 %tobool, label %if.then, label %if.end, !dbg !2762

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2764
  store i32 9, i32* %call1, align 4, !dbg !2764, !tbaa !1313
  br label %return, !dbg !2766

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2767
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2767, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2767
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2767

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2163, i64 0, i64 0)) #5, !dbg !2768
  %call4 = tail call i32* @__errno_location() #1, !dbg !2770
  store i32 9, i32* %call4, align 4, !dbg !2770, !tbaa !1313
  br label %return, !dbg !2771

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2772
  %3 = load i32* %fd5, align 8, !dbg !2772, !tbaa !1776
  %call6 = tail call i64 (i64, ...)* @syscall(i64 138, i32 %3, %struct.statfs.11* %buf) #5, !dbg !2772
  %conv = trunc i64 %call6 to i32, !dbg !2772
  %cmp = icmp eq i32 %conv, -1, !dbg !2773
  br i1 %cmp, label %if.then8, label %return, !dbg !2773

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2775
  %call10 = tail call i32* @__errno_location() #1, !dbg !2775
  store i32 %call9, i32* %call10, align 4, !dbg !2775, !tbaa !1313
  br label %return, !dbg !2775

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2776
}

; Function Attrs: nounwind uwtable
define i32 @fsync(i32 %fd) #4 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2777
  br i1 %0, label %if.then.i, label %if.then, !dbg !2777

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2779
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2780
  %1 = load i32* %flags.i, align 4, !dbg !2780, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2780
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2780
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2780

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2779
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2781
  br i1 %tobool, label %if.then, label %if.else, !dbg !2781

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2782
  store i32 9, i32* %call1, align 4, !dbg !2782, !tbaa !1313
  br label %return, !dbg !2784

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2785
  %2 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2785, !tbaa !1544
  %tobool2 = icmp eq %struct.exe_disk_file_t.17* %2, null, !dbg !2785
  br i1 %tobool2, label %if.else4, label %return, !dbg !2785

if.else4:                                         ; preds = %if.else
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2786
  %3 = load i32* %fd5, align 8, !dbg !2786, !tbaa !1776
  %call6 = tail call i64 (i64, ...)* @syscall(i64 74, i32 %3) #5, !dbg !2786
  %conv = trunc i64 %call6 to i32, !dbg !2786
  %cmp = icmp eq i32 %conv, -1, !dbg !2787
  br i1 %cmp, label %if.then8, label %return, !dbg !2787

if.then8:                                         ; preds = %if.else4
  %call9 = tail call i32 @klee_get_errno() #5, !dbg !2789
  %call10 = tail call i32* @__errno_location() #1, !dbg !2789
  store i32 %call9, i32* %call10, align 4, !dbg !2789, !tbaa !1313
  br label %return, !dbg !2789

return:                                           ; preds = %if.then8, %if.else4, %if.else, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.else ], [ -1, %if.then8 ], [ %conv, %if.else4 ]
  ret i32 %retval.0, !dbg !2790
}

; Function Attrs: nounwind uwtable
define i32 @dup2(i32 %oldfd, i32 %newfd) #4 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !2791
  br i1 %0, label %if.then.i, label %if.then, !dbg !2791

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !2793
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2794
  %1 = load i32* %flags.i, align 4, !dbg !2794, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2794
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2794
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2794

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2793
  %tobool = icmp ne %struct.exe_file_t* %arrayidx.i, null, !dbg !2795
  %cmp = icmp sgt i32 %newfd, -1, !dbg !2795
  %or.cond = and i1 %tobool, %cmp, !dbg !2795
  %cmp1 = icmp slt i32 %newfd, 32, !dbg !2795
  %or.cond8 = and i1 %or.cond, %cmp1, !dbg !2795
  br i1 %or.cond8, label %if.else, label %if.then, !dbg !2795

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call2 = tail call i32* @__errno_location() #1, !dbg !2796
  store i32 9, i32* %call2, align 4, !dbg !2796, !tbaa !1313
  br label %return, !dbg !2798

if.else:                                          ; preds = %__get_file.exit
  %idxprom = sext i32 %newfd to i64, !dbg !2799
  %arrayidx = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, !dbg !2799
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, i32 1, !dbg !2800
  %2 = load i32* %flags, align 4, !dbg !2800, !tbaa !1710
  %and = and i32 %2, 1, !dbg !2800
  %tobool3 = icmp eq i32 %and, 0, !dbg !2800
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2800

if.then4:                                         ; preds = %if.else
  %3 = load i32* @close.n_calls, align 4, !dbg !2802, !tbaa !1313
  %inc.i = add nsw i32 %3, 1, !dbg !2802
  store i32 %inc.i, i32* @close.n_calls, align 4, !dbg !2802, !tbaa !1313
  %4 = icmp ugt i32 %newfd, 31, !dbg !2803
  %tobool.i16 = icmp eq %struct.exe_file_t* %arrayidx, null, !dbg !2805
  %or.cond25 = or i1 %4, %tobool.i16, !dbg !2803
  br i1 %or.cond25, label %if.then.i17, label %if.end.i, !dbg !2803

if.then.i17:                                      ; preds = %if.then4
  %call1.i = tail call i32* @__errno_location() #1, !dbg !2806
  store i32 9, i32* %call1.i, align 4, !dbg !2806, !tbaa !1313
  br label %if.end, !dbg !2807

if.end.i:                                         ; preds = %if.then4
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2808, !tbaa !1550
  %tobool2.i = icmp eq i32 %5, 0, !dbg !2808
  br i1 %tobool2.i, label %if.end5.i, label %land.lhs.true.i, !dbg !2808

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 8), align 8, !dbg !2808, !tbaa !1559
  %7 = load i32* %6, align 4, !dbg !2808, !tbaa !1313
  %cmp.i = icmp eq i32 %7, %inc.i, !dbg !2808
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i, !dbg !2808

if.then3.i:                                       ; preds = %land.lhs.true.i
  %dec.i = add i32 %5, -1, !dbg !2809
  store i32 %dec.i, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !2809, !tbaa !1550
  %call4.i = tail call i32* @__errno_location() #1, !dbg !2810
  store i32 5, i32* %call4.i, align 4, !dbg !2810, !tbaa !1313
  br label %if.end, !dbg !2811

if.end5.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %8 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !2812
  %9 = call i8* @memset(i8* %8, i32 0, i64 24)
  br label %if.end, !dbg !2813

if.end:                                           ; preds = %if.end5.i, %if.then3.i, %if.then.i17, %if.else
  %10 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !2814
  %11 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !2814
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 24)
  %13 = load i32* %flags, align 4, !dbg !2815, !tbaa !1710
  %and7 = and i32 %13, -3, !dbg !2815
  store i32 %and7, i32* %flags, align 4, !dbg !2815, !tbaa !1710
  br label %return, !dbg !2816

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %newfd, %if.end ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2817
}

; Function Attrs: nounwind uwtable
define i32 @dup(i32 %oldfd) #4 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !2818
  br i1 %0, label %if.then.i, label %if.then, !dbg !2818

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !2820
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2821
  %1 = load i32* %flags.i, align 4, !dbg !2821, !tbaa !1710
  %and.i = and i32 %1, 1, !dbg !2821
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2821
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2820
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2822
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2821
  br i1 %or.cond, label %if.then, label %for.body, !dbg !2821

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2823
  store i32 9, i32* %call1, align 4, !dbg !2823, !tbaa !1313
  br label %return, !dbg !2825

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !2826
  %cmp = icmp slt i32 %2, 32, !dbg !2826
  br i1 %cmp, label %for.body, label %for.end, !dbg !2826

for.body:                                         ; preds = %for.cond, %if.then.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then.i ]
  %fd.015 = phi i32 [ %inc, %for.cond ], [ 0, %if.then.i ]
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2828
  %3 = load i32* %flags, align 4, !dbg !2828, !tbaa !1710
  %and = and i32 %3, 1, !dbg !2828
  %tobool2 = icmp eq i32 %and, 0, !dbg !2828
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2826
  %inc = add nsw i32 %fd.015, 1, !dbg !2826
  br i1 %tobool2, label %for.end, label %for.cond, !dbg !2828

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.015, %for.body ], [ %inc, %for.cond ]
  %cmp4 = icmp eq i32 %fd.0.lcssa, 32, !dbg !2830
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !2830

if.then5:                                         ; preds = %for.end
  %call6 = tail call i32* @__errno_location() #1, !dbg !2832
  store i32 24, i32* %call6, align 4, !dbg !2832, !tbaa !1313
  br label %return, !dbg !2834

if.else7:                                         ; preds = %for.end
  %call8 = tail call i32 @dup2(i32 %oldfd, i32 %fd.0.lcssa) #5, !dbg !2835
  br label %return, !dbg !2835

return:                                           ; preds = %if.else7, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %call8, %if.else7 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2837
}

; Function Attrs: nounwind uwtable
define i32 @rmdir(i8* nocapture readonly %pathname) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2838, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2840
  %cmp.i = icmp eq i8 %0, 0, !dbg !2840
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2840

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2840
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2840, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2840
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2840

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2841, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2841
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2841

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2841
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2841

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2842
  %sext.i = shl i32 %i.027.i, 24, !dbg !2842
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2842
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2842
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2842
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2842
  %inc.i = add i32 %i.027.i, 1, !dbg !2841
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2842

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2843
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2843, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2844
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2844, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2844
  %5 = load i64* %st_ino.i, align 8, !dbg !2844, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2844
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2843
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2845
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2844
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2844

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2847
  %6 = load i32* %st_mode, align 4, !dbg !2847, !tbaa !1615
  %and = and i32 %6, 61440, !dbg !2847
  %cmp = icmp eq i32 %and, 16384, !dbg !2847
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2847

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2850, !tbaa !1607
  br label %return, !dbg !2852

if.else:                                          ; preds = %if.then
  %call3 = tail call i32* @__errno_location() #1, !dbg !2853
  store i32 20, i32* %call3, align 4, !dbg !2853, !tbaa !1313
  br label %return, !dbg !2855

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2264, i64 0, i64 0)) #5, !dbg !2856
  %call4 = tail call i32* @__errno_location() #1, !dbg !2857
  store i32 1, i32* %call4, align 4, !dbg !2857, !tbaa !1313
  br label %return, !dbg !2858

return:                                           ; preds = %if.end, %if.else, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2859
}

; Function Attrs: nounwind uwtable
define i32 @unlink(i8* nocapture readonly %pathname) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2860, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2862
  %cmp.i = icmp eq i8 %0, 0, !dbg !2862
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2862

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2862
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2862, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2862
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2862

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2863, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2863
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2863

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2863
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2863

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2864
  %sext.i = shl i32 %i.027.i, 24, !dbg !2864
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2864
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2864
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2864
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2864
  %inc.i = add i32 %i.027.i, 1, !dbg !2863
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2864

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2865
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2865, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2866
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2866, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2866
  %5 = load i64* %st_ino.i, align 8, !dbg !2866, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2866
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2865
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2867
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2866
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2866

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2869
  %6 = load i32* %st_mode, align 4, !dbg !2869, !tbaa !1615
  %and = and i32 %6, 61440, !dbg !2869
  %cmp = icmp eq i32 %and, 32768, !dbg !2869
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2869

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2872, !tbaa !1607
  br label %return, !dbg !2874

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !2875
  %call8 = tail call i32* @__errno_location() #1, !dbg !2877
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !2875

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !2877, !tbaa !1313
  br label %return, !dbg !2879

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !2880, !tbaa !1313
  br label %return, !dbg !2882

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2264, i64 0, i64 0)) #5, !dbg !2883
  %call11 = tail call i32* @__errno_location() #1, !dbg !2884
  store i32 1, i32* %call11, align 4, !dbg !2884, !tbaa !1313
  br label %return, !dbg !2885

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2886
}

; Function Attrs: nounwind uwtable
define i32 @unlinkat(i32 %dirfd, i8* nocapture readonly %pathname, i32 %flags) #4 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2887, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2889
  %cmp.i = icmp eq i8 %0, 0, !dbg !2889
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2889

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2889
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2889, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2889
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2889

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2890, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2890
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2890

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2890
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2890

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2891
  %sext.i = shl i32 %i.027.i, 24, !dbg !2891
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2891
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2891
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2891
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2891
  %inc.i = add i32 %i.027.i, 1, !dbg !2890
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2891

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2892
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2892, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2893
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2893, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2893
  %5 = load i64* %st_ino.i, align 8, !dbg !2893, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2893
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2892
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2894
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2893
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2893

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2896
  %6 = load i32* %st_mode, align 4, !dbg !2896, !tbaa !1615
  %and = and i32 %6, 61440, !dbg !2896
  %cmp = icmp eq i32 %and, 32768, !dbg !2896
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2896

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2899, !tbaa !1607
  br label %return, !dbg !2901

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !2902
  %call8 = tail call i32* @__errno_location() #1, !dbg !2904
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !2902

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !2904, !tbaa !1313
  br label %return, !dbg !2906

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !2907, !tbaa !1313
  br label %return, !dbg !2909

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str2264, i64 0, i64 0)) #5, !dbg !2910
  %call11 = tail call i32* @__errno_location() #1, !dbg !2911
  store i32 1, i32* %call11, align 4, !dbg !2911, !tbaa !1313
  br label %return, !dbg !2912

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2913
}

; Function Attrs: nounwind uwtable
define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !2914, !tbaa !1323
  %conv.i = sext i8 %0 to i32, !dbg !2916
  %cmp.i = icmp eq i8 %0, 0, !dbg !2916
  br i1 %cmp.i, label %if.else20, label %lor.lhs.false.i, !dbg !2916

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2916
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2916, !tbaa !1323
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2916
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else20, !dbg !2916

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 0), align 8, !dbg !2917, !tbaa !1528
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2917
  br i1 %cmp626.i, label %if.else20, label %for.body.i, !dbg !2917

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2917
  br i1 %cmp6.i, label %for.body.i, label %if.else20, !dbg !2917

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2918
  %sext.i = shl i32 %i.027.i, 24, !dbg !2918
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2918
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2918
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2918
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2918
  %inc.i = add i32 %i.027.i, 1, !dbg !2917
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2918

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2919
  %3 = load %struct.exe_disk_file_t.17** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 4), align 8, !dbg !2919, !tbaa !1531
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, i32 2, !dbg !2920
  %4 = load %struct.stat64.16** %stat.i, align 8, !dbg !2920, !tbaa !1642
  %st_ino.i = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 1, !dbg !2920
  %5 = load i64* %st_ino.i, align 8, !dbg !2920, !tbaa !1607
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2920
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t.17* %3, i64 %idxprom.i, !dbg !2919
  %tobool = icmp eq %struct.exe_disk_file_t.17* %arrayidx14.i, null, !dbg !2921
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2920
  br i1 %or.cond, label %if.else20, label %if.then, !dbg !2920

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64.16* %4, i64 0, i32 3, !dbg !2922
  %6 = load i32* %st_mode, align 4, !dbg !2922, !tbaa !1615
  %and = and i32 %6, 61440, !dbg !2922
  %cmp = icmp eq i32 %and, 40960, !dbg !2922
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2922

if.then1:                                         ; preds = %if.then
  store i8 %0, i8* %buf, align 1, !dbg !2925, !tbaa !1323
  %cmp3 = icmp ugt i64 %bufsize, 1, !dbg !2927
  br i1 %cmp3, label %if.end, label %if.end17, !dbg !2927

if.end:                                           ; preds = %if.then1
  %arrayidx5 = getelementptr inbounds i8* %buf, i64 1, !dbg !2927
  store i8 46, i8* %arrayidx5, align 1, !dbg !2927, !tbaa !1323
  %cmp6 = icmp ugt i64 %bufsize, 2, !dbg !2929
  br i1 %cmp6, label %if.end9, label %if.end17, !dbg !2929

if.end9:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8* %buf, i64 2, !dbg !2929
  store i8 108, i8* %arrayidx8, align 1, !dbg !2929, !tbaa !1323
  %cmp10 = icmp ugt i64 %bufsize, 3, !dbg !2931
  br i1 %cmp10, label %if.end13, label %if.end17, !dbg !2931

if.end13:                                         ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds i8* %buf, i64 3, !dbg !2931
  store i8 110, i8* %arrayidx12, align 1, !dbg !2931, !tbaa !1323
  %cmp14 = icmp ugt i64 %bufsize, 4, !dbg !2933
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2933

if.then15:                                        ; preds = %if.end13
  %arrayidx16 = getelementptr inbounds i8* %buf, i64 4, !dbg !2933
  store i8 107, i8* %arrayidx16, align 1, !dbg !2933, !tbaa !1323
  br label %if.end17, !dbg !2933

if.end17:                                         ; preds = %if.then15, %if.end13, %if.end9, %if.end, %if.then1
  %cmp18 = icmp ugt i64 %bufsize, 5, !dbg !2935
  %cond = select i1 %cmp18, i64 5, i64 %bufsize, !dbg !2935
  br label %return, !dbg !2935

if.else:                                          ; preds = %if.then
  %call19 = tail call i32* @__errno_location() #1, !dbg !2936
  store i32 22, i32* %call19, align 4, !dbg !2936, !tbaa !1313
  br label %return, !dbg !2938

if.else20:                                        ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %call21 = tail call i64 (i64, ...)* @syscall(i64 89, i8* %path, i8* %buf, i64 %bufsize) #5, !dbg !2939
  %conv = trunc i64 %call21 to i32, !dbg !2939
  %cmp22 = icmp eq i32 %conv, -1, !dbg !2940
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !2940

if.then24:                                        ; preds = %if.else20
  %call25 = tail call i32 @klee_get_errno() #5, !dbg !2942
  %call26 = tail call i32* @__errno_location() #1, !dbg !2942
  store i32 %call25, i32* %call26, align 4, !dbg !2942, !tbaa !1313
  br label %if.end27, !dbg !2942

if.end27:                                         ; preds = %if.then24, %if.else20
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !2943
  %sext = shl i64 %call21, 32, !dbg !2943
  %int_cast_to_i643 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i643), !dbg !2943
  %conv28 = ashr exact i64 %sext, 32, !dbg !2943
  br label %return, !dbg !2943

return:                                           ; preds = %if.end27, %if.else, %if.end17
  %retval.0 = phi i64 [ %cond, %if.end17 ], [ -1, %if.else ], [ %conv28, %if.end27 ]
  ret i64 %retval.0, !dbg !2944
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
  %0 = bitcast %struct.fd_set* %in_read to i8*, !dbg !2945
  %1 = bitcast %struct.fd_set* %in_write to i8*, !dbg !2945
  %2 = bitcast %struct.fd_set* %in_except to i8*, !dbg !2945
  %3 = bitcast %struct.fd_set* %os_read to i8*, !dbg !2945
  %4 = bitcast %struct.fd_set* %os_write to i8*, !dbg !2945
  %5 = bitcast %struct.fd_set* %os_except to i8*, !dbg !2945
  %tobool = icmp ne %struct.fd_set* %read, null, !dbg !2946
  br i1 %tobool, label %if.then, label %if.else, !dbg !2946

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.fd_set* %read to i8*, !dbg !2948
  %7 = call i8* @memcpy(i8* %0, i8* %6, i64 128)
  %8 = call i8* @memset(i8* %6, i32 0, i64 128)
  br label %if.end, !dbg !2950

if.else:                                          ; preds = %entry
  %9 = call i8* @memset(i8* %0, i32 0, i64 128)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool1 = icmp ne %struct.fd_set* %write, null, !dbg !2951
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !2951

if.then2:                                         ; preds = %if.end
  %10 = bitcast %struct.fd_set* %write to i8*, !dbg !2953
  %11 = call i8* @memcpy(i8* %1, i8* %10, i64 128)
  %12 = call i8* @memset(i8* %10, i32 0, i64 128)
  br label %if.end4, !dbg !2955

if.else3:                                         ; preds = %if.end
  %13 = call i8* @memset(i8* %1, i32 0, i64 128)
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %tobool5 = icmp ne %struct.fd_set* %except, null, !dbg !2956
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !2956

if.then6:                                         ; preds = %if.end4
  %14 = bitcast %struct.fd_set* %except to i8*, !dbg !2958
  %15 = call i8* @memcpy(i8* %2, i8* %14, i64 128)
  %16 = call i8* @memset(i8* %14, i32 0, i64 128)
  br label %if.end8, !dbg !2960

if.else7:                                         ; preds = %if.end4
  %17 = call i8* @memset(i8* %2, i32 0, i64 128)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %18 = call i8* @memset(i8* %3, i32 0, i64 128)
  %19 = call i8* @memset(i8* %4, i32 0, i64 128)
  %20 = call i8* @memset(i8* %5, i32 0, i64 128)
  %cmp367 = icmp sgt i32 %nfds, 0, !dbg !2961
  br i1 %cmp367, label %for.body, label %cleanup, !dbg !2961

for.body:                                         ; preds = %for.inc, %if.end8
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %for.inc ], [ 0, %if.end8 ]
  %count.0369 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end8 ]
  %os_nfds.0368 = phi i32 [ %os_nfds.1, %for.inc ], [ 0, %if.end8 ]
  %21 = trunc i64 %indvars.iv373 to i32, !dbg !2962
  %int_cast_to_i64 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2962
  %div = sdiv i32 %21, 64, !dbg !2962
  %idxprom = sext i32 %div to i64, !dbg !2962
  %arrayidx = getelementptr inbounds %struct.fd_set* %in_read, i64 0, i32 0, i64 %idxprom, !dbg !2962
  %22 = load i64* %arrayidx, align 8, !dbg !2962, !tbaa !2963
  %rem347 = and i32 %21, 63, !dbg !2962
  %int_cast_to_i6410 = zext i32 %rem347 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6410), !dbg !2962
  %shl = shl i32 1, %rem347, !dbg !2962
  %conv = sext i32 %shl to i64, !dbg !2962
  %and = and i64 %22, %conv, !dbg !2962
  %tobool9 = icmp eq i64 %and, 0, !dbg !2962
  br i1 %tobool9, label %lor.lhs.false, label %if.then29, !dbg !2962

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx13 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2962
  %23 = load i64* %arrayidx13, align 8, !dbg !2962, !tbaa !2963
  %and17 = and i64 %23, %conv, !dbg !2962
  %tobool18 = icmp eq i64 %and17, 0, !dbg !2962
  br i1 %tobool18, label %lor.lhs.false19, label %if.then29, !dbg !2962

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %arrayidx23 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2962
  %24 = load i64* %arrayidx23, align 8, !dbg !2962, !tbaa !2963
  %and27 = and i64 %24, %conv, !dbg !2962
  %tobool28 = icmp eq i64 %and27, 0, !dbg !2962
  br i1 %tobool28, label %for.inc, label %if.then29, !dbg !2962

if.then29:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %for.body
  %25 = icmp ult i32 %21, 32, !dbg !2964
  br i1 %25, label %if.then.i, label %if.then31, !dbg !2964

if.then.i:                                        ; preds = %if.then29
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 1, !dbg !2966
  %26 = load i32* %flags.i, align 4, !dbg !2966, !tbaa !1710
  %and.i = and i32 %26, 1, !dbg !2966
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2966
  br i1 %tobool.i, label %if.then31, label %__get_file.exit, !dbg !2966

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, !dbg !2967
  %tobool30 = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2968
  br i1 %tobool30, label %if.then31, label %if.else33, !dbg !2968

if.then31:                                        ; preds = %__get_file.exit, %if.then.i, %if.then29
  %call32 = call i32* @__errno_location() #1, !dbg !2970
  store i32 9, i32* %call32, align 4, !dbg !2970, !tbaa !1313
  br label %cleanup, !dbg !2972

if.else33:                                        ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 3, !dbg !2973
  %27 = load %struct.exe_disk_file_t.17** %dfile, align 8, !dbg !2973, !tbaa !1544
  %tobool34 = icmp eq %struct.exe_disk_file_t.17* %27, null, !dbg !2973
  %tobool44 = icmp ne i64 %and, 0, !dbg !2975
  br i1 %tobool34, label %if.else92, label %if.then35, !dbg !2973

if.then35:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then45, label %if.end53, !dbg !2975

if.then45:                                        ; preds = %if.then35
  %arrayidx52 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom, !dbg !2975
  %28 = load i64* %arrayidx52, align 8, !dbg !2975, !tbaa !2963
  %or = or i64 %28, %conv, !dbg !2975
  store i64 %or, i64* %arrayidx52, align 8, !dbg !2975, !tbaa !2963
  br label %if.end53, !dbg !2975

if.end53:                                         ; preds = %if.then45, %if.then35
  %arrayidx57 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2978
  %29 = load i64* %arrayidx57, align 8, !dbg !2978, !tbaa !2963
  %and61 = and i64 %29, %conv, !dbg !2978
  %tobool62 = icmp eq i64 %and61, 0, !dbg !2978
  br i1 %tobool62, label %if.end72, label %if.then63, !dbg !2978

if.then63:                                        ; preds = %if.end53
  %arrayidx70 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom, !dbg !2978
  %30 = load i64* %arrayidx70, align 8, !dbg !2978, !tbaa !2963
  %or71 = or i64 %30, %conv, !dbg !2978
  store i64 %or71, i64* %arrayidx70, align 8, !dbg !2978, !tbaa !2963
  br label %if.end72, !dbg !2978

if.end72:                                         ; preds = %if.then63, %if.end53
  %arrayidx76 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2980
  %31 = load i64* %arrayidx76, align 8, !dbg !2980, !tbaa !2963
  %and80 = and i64 %31, %conv, !dbg !2980
  %tobool81 = icmp eq i64 %and80, 0, !dbg !2980
  br i1 %tobool81, label %if.end91, label %if.then82, !dbg !2980

if.then82:                                        ; preds = %if.end72
  %arrayidx89 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom, !dbg !2980
  %32 = load i64* %arrayidx89, align 8, !dbg !2980, !tbaa !2963
  %or90 = or i64 %32, %conv, !dbg !2980
  store i64 %or90, i64* %arrayidx89, align 8, !dbg !2980, !tbaa !2963
  br label %if.end91, !dbg !2980

if.end91:                                         ; preds = %if.then82, %if.end72
  %inc = add nsw i32 %count.0369, 1, !dbg !2982
  br label %for.inc, !dbg !2983

if.else92:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then102, label %if.end112, !dbg !2984

if.then102:                                       ; preds = %if.else92
  %fd = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2984
  %33 = load i32* %fd, align 8, !dbg !2984, !tbaa !1776
  %rem103350 = and i32 %33, 63, !dbg !2984
  %int_cast_to_i6411 = zext i32 %rem103350 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6411), !dbg !2984
  %shl104 = shl i32 1, %rem103350, !dbg !2984
  %conv105 = sext i32 %shl104 to i64, !dbg !2984
  %int_cast_to_i641 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2984
  %div107 = sdiv i32 %33, 64, !dbg !2984
  %idxprom108 = sext i32 %div107 to i64, !dbg !2984
  %arrayidx110 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom108, !dbg !2984
  %34 = load i64* %arrayidx110, align 8, !dbg !2984, !tbaa !2963
  %or111 = or i64 %conv105, %34, !dbg !2984
  store i64 %or111, i64* %arrayidx110, align 8, !dbg !2984, !tbaa !2963
  br label %if.end112, !dbg !2984

if.end112:                                        ; preds = %if.then102, %if.else92
  %arrayidx116 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2987
  %35 = load i64* %arrayidx116, align 8, !dbg !2987, !tbaa !2963
  %and120 = and i64 %35, %conv, !dbg !2987
  %tobool121 = icmp eq i64 %and120, 0, !dbg !2987
  br i1 %tobool121, label %if.end133, label %if.then122, !dbg !2987

if.then122:                                       ; preds = %if.end112
  %fd123 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2987
  %36 = load i32* %fd123, align 8, !dbg !2987, !tbaa !1776
  %rem124349 = and i32 %36, 63, !dbg !2987
  %int_cast_to_i6412 = zext i32 %rem124349 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6412), !dbg !2987
  %shl125 = shl i32 1, %rem124349, !dbg !2987
  %conv126 = sext i32 %shl125 to i64, !dbg !2987
  %int_cast_to_i642 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !2987
  %div128 = sdiv i32 %36, 64, !dbg !2987
  %idxprom129 = sext i32 %div128 to i64, !dbg !2987
  %arrayidx131 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom129, !dbg !2987
  %37 = load i64* %arrayidx131, align 8, !dbg !2987, !tbaa !2963
  %or132 = or i64 %conv126, %37, !dbg !2987
  store i64 %or132, i64* %arrayidx131, align 8, !dbg !2987, !tbaa !2963
  br label %if.end133, !dbg !2987

if.end133:                                        ; preds = %if.then122, %if.end112
  %arrayidx137 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2989
  %38 = load i64* %arrayidx137, align 8, !dbg !2989, !tbaa !2963
  %and141 = and i64 %38, %conv, !dbg !2989
  %tobool142 = icmp eq i64 %and141, 0, !dbg !2989
  %fd155.phi.trans.insert = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0
  %.pre = load i32* %fd155.phi.trans.insert, align 8, !dbg !2991, !tbaa !1776
  br i1 %tobool142, label %if.end154, label %if.then143, !dbg !2989

if.then143:                                       ; preds = %if.end133
  %rem145348 = and i32 %.pre, 63, !dbg !2989
  %int_cast_to_i6413 = zext i32 %rem145348 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6413), !dbg !2989
  %shl146 = shl i32 1, %rem145348, !dbg !2989
  %conv147 = sext i32 %shl146 to i64, !dbg !2989
  %int_cast_to_i643 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !2989
  %div149 = sdiv i32 %.pre, 64, !dbg !2989
  %idxprom150 = sext i32 %div149 to i64, !dbg !2989
  %arrayidx152 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom150, !dbg !2989
  %39 = load i64* %arrayidx152, align 8, !dbg !2989, !tbaa !2963
  %or153 = or i64 %conv147, %39, !dbg !2989
  store i64 %or153, i64* %arrayidx152, align 8, !dbg !2989, !tbaa !2963
  br label %if.end154, !dbg !2989

if.end154:                                        ; preds = %if.then143, %if.end133
  %cmp156 = icmp slt i32 %.pre, %os_nfds.0368, !dbg !2991
  %add = add nsw i32 %.pre, 1, !dbg !2991
  %os_nfds.0.add = select i1 %cmp156, i32 %os_nfds.0368, i32 %add, !dbg !2991
  br label %for.inc, !dbg !2991

for.inc:                                          ; preds = %if.end154, %if.end91, %lor.lhs.false19
  %os_nfds.1 = phi i32 [ %os_nfds.0368, %if.end91 ], [ %os_nfds.0368, %lor.lhs.false19 ], [ %os_nfds.0.add, %if.end154 ]
  %count.1 = phi i32 [ %inc, %if.end91 ], [ %count.0369, %lor.lhs.false19 ], [ %count.0369, %if.end154 ]
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1, !dbg !2961
  %40 = trunc i64 %indvars.iv.next374 to i32, !dbg !2961
  %cmp = icmp slt i32 %40, %nfds, !dbg !2961
  br i1 %cmp, label %for.body, label %for.end, !dbg !2961

for.end:                                          ; preds = %for.inc
  %cmp165 = icmp sgt i32 %os_nfds.1, 0, !dbg !2993
  br i1 %cmp165, label %if.then167, label %cleanup, !dbg !2993

if.then167:                                       ; preds = %for.end
  %41 = bitcast %struct.timeval* %tv to i8*, !dbg !2994
  %42 = call i8* @memset(i8* %41, i32 0, i64 16)
  %call168 = call i64 (i64, ...)* @syscall(i64 23, i32 %os_nfds.1, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timeval* %tv) #5, !dbg !2995
  %conv169 = trunc i64 %call168 to i32, !dbg !2995
  %cmp170 = icmp eq i32 %conv169, -1, !dbg !2996
  br i1 %cmp170, label %if.then172, label %if.else178, !dbg !2996

if.then172:                                       ; preds = %if.then167
  %tobool173 = icmp eq i32 %count.1, 0, !dbg !2997
  br i1 %tobool173, label %if.then174, label %cleanup, !dbg !2997

if.then174:                                       ; preds = %if.then172
  %call175 = call i32 @klee_get_errno() #5, !dbg !3000
  %call176 = call i32* @__errno_location() #1, !dbg !3000
  store i32 %call175, i32* %call176, align 4, !dbg !3000, !tbaa !1313
  br label %cleanup, !dbg !3002

if.else178:                                       ; preds = %if.then167
  %add179 = add nsw i32 %conv169, %count.1, !dbg !3003
  br i1 %cmp367, label %for.body183, label %cleanup, !dbg !3004

for.body183:                                      ; preds = %for.inc260, %if.else178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc260 ], [ 0, %if.else178 ]
  %43 = trunc i64 %indvars.iv to i32, !dbg !3005
  %44 = icmp ult i32 %43, 32, !dbg !3005
  br i1 %44, label %if.then.i355, label %for.inc260, !dbg !3005

if.then.i355:                                     ; preds = %for.body183
  %flags.i352 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !3007
  %45 = load i32* %flags.i352, align 4, !dbg !3007, !tbaa !1710
  %and.i353 = and i32 %45, 1, !dbg !3007
  %tobool.i354 = icmp eq i32 %and.i353, 0, !dbg !3007
  br i1 %tobool.i354, label %for.inc260, label %__get_file.exit359, !dbg !3007

__get_file.exit359:                               ; preds = %if.then.i355
  %arrayidx.i356 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, !dbg !3008
  %tobool186 = icmp eq %struct.exe_file_t* %arrayidx.i356, null, !dbg !3009
  br i1 %tobool186, label %for.inc260, label %land.lhs.true, !dbg !3009

land.lhs.true:                                    ; preds = %__get_file.exit359
  %dfile187 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 3, !dbg !3009
  %46 = load %struct.exe_disk_file_t.17** %dfile187, align 8, !dbg !3009, !tbaa !1544
  %tobool188 = icmp eq %struct.exe_disk_file_t.17* %46, null, !dbg !3009
  br i1 %tobool188, label %if.then189, label %for.inc260, !dbg !3009

if.then189:                                       ; preds = %land.lhs.true
  br i1 %tobool, label %land.lhs.true191, label %if.end212, !dbg !3011

land.lhs.true191:                                 ; preds = %if.then189
  %fd192 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !3011
  %47 = load i32* %fd192, align 8, !dbg !3011, !tbaa !1776
  %int_cast_to_i644 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !3011
  %div193 = sdiv i32 %47, 64, !dbg !3011
  %idxprom194 = sext i32 %div193 to i64, !dbg !3011
  %arrayidx196 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom194, !dbg !3011
  %48 = load i64* %arrayidx196, align 8, !dbg !3011, !tbaa !2963
  %rem198345 = and i32 %47, 63, !dbg !3011
  %int_cast_to_i6414 = zext i32 %rem198345 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6414), !dbg !3011
  %shl199 = shl i32 1, %rem198345, !dbg !3011
  %conv200 = sext i32 %shl199 to i64, !dbg !3011
  %and201 = and i64 %conv200, %48, !dbg !3011
  %tobool202 = icmp eq i64 %and201, 0, !dbg !3011
  br i1 %tobool202, label %if.end212, label %if.then203, !dbg !3011

if.then203:                                       ; preds = %land.lhs.true191
  %rem204346 = and i32 %43, 63, !dbg !3011
  %int_cast_to_i6415 = zext i32 %rem204346 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6415), !dbg !3011
  %shl205 = shl i32 1, %rem204346, !dbg !3011
  %conv206 = sext i32 %shl205 to i64, !dbg !3011
  %int_cast_to_i645 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !3011
  %div207 = sdiv i32 %43, 64, !dbg !3011
  %idxprom208 = sext i32 %div207 to i64, !dbg !3011
  %arrayidx210 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom208, !dbg !3011
  %49 = load i64* %arrayidx210, align 8, !dbg !3011, !tbaa !2963
  %or211 = or i64 %49, %conv206, !dbg !3011
  store i64 %or211, i64* %arrayidx210, align 8, !dbg !3011, !tbaa !2963
  br label %if.end212, !dbg !3011

if.end212:                                        ; preds = %if.then203, %land.lhs.true191, %if.then189
  br i1 %tobool1, label %land.lhs.true214, label %if.end235, !dbg !3014

land.lhs.true214:                                 ; preds = %if.end212
  %fd215 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !3014
  %50 = load i32* %fd215, align 8, !dbg !3014, !tbaa !1776
  %int_cast_to_i646 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !3014
  %div216 = sdiv i32 %50, 64, !dbg !3014
  %idxprom217 = sext i32 %div216 to i64, !dbg !3014
  %arrayidx219 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom217, !dbg !3014
  %51 = load i64* %arrayidx219, align 8, !dbg !3014, !tbaa !2963
  %rem221343 = and i32 %50, 63, !dbg !3014
  %int_cast_to_i6416 = zext i32 %rem221343 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6416), !dbg !3014
  %shl222 = shl i32 1, %rem221343, !dbg !3014
  %conv223 = sext i32 %shl222 to i64, !dbg !3014
  %and224 = and i64 %conv223, %51, !dbg !3014
  %tobool225 = icmp eq i64 %and224, 0, !dbg !3014
  br i1 %tobool225, label %if.end235, label %if.then226, !dbg !3014

if.then226:                                       ; preds = %land.lhs.true214
  %rem227344 = and i32 %43, 63, !dbg !3014
  %int_cast_to_i6417 = zext i32 %rem227344 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6417), !dbg !3014
  %shl228 = shl i32 1, %rem227344, !dbg !3014
  %conv229 = sext i32 %shl228 to i64, !dbg !3014
  %int_cast_to_i647 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !3014
  %div230 = sdiv i32 %43, 64, !dbg !3014
  %idxprom231 = sext i32 %div230 to i64, !dbg !3014
  %arrayidx233 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom231, !dbg !3014
  %52 = load i64* %arrayidx233, align 8, !dbg !3014, !tbaa !2963
  %or234 = or i64 %52, %conv229, !dbg !3014
  store i64 %or234, i64* %arrayidx233, align 8, !dbg !3014, !tbaa !2963
  br label %if.end235, !dbg !3014

if.end235:                                        ; preds = %if.then226, %land.lhs.true214, %if.end212
  br i1 %tobool5, label %land.lhs.true237, label %for.inc260, !dbg !3016

land.lhs.true237:                                 ; preds = %if.end235
  %fd238 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !3016
  %53 = load i32* %fd238, align 8, !dbg !3016, !tbaa !1776
  %int_cast_to_i648 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !3016
  %div239 = sdiv i32 %53, 64, !dbg !3016
  %idxprom240 = sext i32 %div239 to i64, !dbg !3016
  %arrayidx242 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom240, !dbg !3016
  %54 = load i64* %arrayidx242, align 8, !dbg !3016, !tbaa !2963
  %rem244341 = and i32 %53, 63, !dbg !3016
  %int_cast_to_i6418 = zext i32 %rem244341 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6418), !dbg !3016
  %shl245 = shl i32 1, %rem244341, !dbg !3016
  %conv246 = sext i32 %shl245 to i64, !dbg !3016
  %and247 = and i64 %conv246, %54, !dbg !3016
  %tobool248 = icmp eq i64 %and247, 0, !dbg !3016
  br i1 %tobool248, label %for.inc260, label %if.then249, !dbg !3016

if.then249:                                       ; preds = %land.lhs.true237
  %rem250342 = and i32 %43, 63, !dbg !3016
  %int_cast_to_i6419 = zext i32 %rem250342 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6419), !dbg !3016
  %shl251 = shl i32 1, %rem250342, !dbg !3016
  %conv252 = sext i32 %shl251 to i64, !dbg !3016
  %int_cast_to_i649 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i649), !dbg !3016
  %div253 = sdiv i32 %43, 64, !dbg !3016
  %idxprom254 = sext i32 %div253 to i64, !dbg !3016
  %arrayidx256 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom254, !dbg !3016
  %55 = load i64* %arrayidx256, align 8, !dbg !3016, !tbaa !2963
  %or257 = or i64 %55, %conv252, !dbg !3016
  store i64 %or257, i64* %arrayidx256, align 8, !dbg !3016, !tbaa !2963
  br label %for.inc260, !dbg !3016

for.inc260:                                       ; preds = %if.then249, %land.lhs.true237, %if.end235, %land.lhs.true, %__get_file.exit359, %if.then.i355, %for.body183
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3004
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3004
  %exitcond = icmp eq i32 %lftr.wideiv, %nfds, !dbg !3004
  br i1 %exitcond, label %cleanup, label %for.body183, !dbg !3004

cleanup:                                          ; preds = %for.inc260, %if.else178, %if.then174, %if.then172, %for.end, %if.then31, %if.end8
  %retval.0 = phi i32 [ -1, %if.then31 ], [ -1, %if.then174 ], [ %count.1, %if.then172 ], [ %count.1, %for.end ], [ %add179, %if.else178 ], [ 0, %if.end8 ], [ %add179, %for.inc260 ]
  ret i32 %retval.0, !dbg !3018
}

; Function Attrs: nounwind uwtable
define i8* @getcwd(i8* %buf, i64 %size) #4 {
entry:
  %0 = load i32* @getcwd.n_calls, align 4, !dbg !3019, !tbaa !1313
  %inc = add nsw i32 %0, 1, !dbg !3019
  store i32 %inc, i32* @getcwd.n_calls, align 4, !dbg !3019, !tbaa !1313
  %1 = load i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !3020, !tbaa !1550
  %tobool = icmp eq i32 %1, 0, !dbg !3020
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3020

land.lhs.true:                                    ; preds = %entry
  %2 = load i32** getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 10), align 8, !dbg !3020, !tbaa !1563
  %3 = load i32* %2, align 4, !dbg !3020, !tbaa !1313
  %cmp = icmp eq i32 %3, %inc, !dbg !3020
  br i1 %cmp, label %if.then, label %if.end, !dbg !3020

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %1, -1, !dbg !3022
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t.19* @__exe_fs, i64 0, i32 5), align 8, !dbg !3022, !tbaa !1550
  %call = tail call i32* @__errno_location() #1, !dbg !3024
  store i32 34, i32* %call, align 4, !dbg !3024, !tbaa !1313
  br label %return, !dbg !3025

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool1 = icmp eq i8* %buf, null, !dbg !3026
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3026

if.then2:                                         ; preds = %if.end
  %tobool3 = icmp eq i64 %size, 0, !dbg !3028
  %.size = select i1 %tobool3, i64 1024, i64 %size, !dbg !3028
  %call6 = tail call noalias i8* @malloc(i64 %.size) #5, !dbg !3031
  br label %if.end7, !dbg !3032

if.end7:                                          ; preds = %if.then2, %if.end
  %buf.addr.0 = phi i8* [ %buf, %if.end ], [ %call6, %if.then2 ]
  %size.addr.1 = phi i64 [ %size, %if.end ], [ %.size, %if.then2 ]
  %4 = ptrtoint i8* %buf.addr.0 to i64, !dbg !3033
  %call.i = tail call i64 @klee_get_valuel(i64 %4) #5, !dbg !3033
  %5 = inttoptr i64 %call.i to i8*, !dbg !3033
  %cmp.i = icmp eq i8* %5, %buf.addr.0, !dbg !3035
  %conv1.i = zext i1 %cmp.i to i64, !dbg !3035
  tail call void @klee_assume(i64 %conv1.i) #5, !dbg !3035
  %call.i25 = tail call i64 @klee_get_valuel(i64 %size.addr.1) #5, !dbg !3036
  %cmp.i26 = icmp eq i64 %call.i25, %size.addr.1, !dbg !3038
  %conv1.i27 = zext i1 %cmp.i26 to i64, !dbg !3038
  tail call void @klee_assume(i64 %conv1.i27) #5, !dbg !3038
  tail call void @klee_check_memory_access(i8* %5, i64 %call.i25) #5, !dbg !3039
  %call10 = tail call i64 (i64, ...)* @syscall(i64 79, i8* %5, i64 %call.i25) #5, !dbg !3040
  %conv = trunc i64 %call10 to i32, !dbg !3040
  %cmp11 = icmp eq i32 %conv, -1, !dbg !3041
  br i1 %cmp11, label %if.then13, label %return, !dbg !3041

if.then13:                                        ; preds = %if.end7
  %call14 = tail call i32 @klee_get_errno() #5, !dbg !3043
  %call15 = tail call i32* @__errno_location() #1, !dbg !3043
  store i32 %call14, i32* %call15, align 4, !dbg !3043, !tbaa !1313
  br label %return, !dbg !3045

return:                                           ; preds = %if.then13, %if.end7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then13 ], [ %5, %if.end7 ]
  ret i8* %retval.0, !dbg !3046
}

; Function Attrs: nounwind uwtable
define i32 @chroot(i8* nocapture readonly %path) #4 {
entry:
  %0 = load i8* %path, align 1, !dbg !3047, !tbaa !1323
  switch i8 %0, label %if.end11 [
    i8 0, label %if.then
    i8 47, label %land.lhs.true
  ], !dbg !3047

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #1, !dbg !3049
  store i32 2, i32* %call, align 4, !dbg !3049, !tbaa !1313
  br label %return, !dbg !3051

land.lhs.true:                                    ; preds = %entry
  %arrayidx6 = getelementptr inbounds i8* %path, i64 1, !dbg !3052
  %1 = load i8* %arrayidx6, align 1, !dbg !3052, !tbaa !1323
  %cmp8 = icmp eq i8 %1, 0, !dbg !3052
  br i1 %cmp8, label %return, label %if.end11, !dbg !3052

if.end11:                                         ; preds = %land.lhs.true, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str2365, i64 0, i64 0)) #5, !dbg !3054
  %call12 = tail call i32* @__errno_location() #1, !dbg !3055
  store i32 2, i32* %call12, align 4, !dbg !3055, !tbaa !1313
  br label %return, !dbg !3056

return:                                           ; preds = %if.end11, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.end11 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !3057
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
  %call = tail call double @klee_abs_double(double %d) #15, !dbg !3058
  ret double %call, !dbg !3058
}

declare double @klee_abs_double(double) #7

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #4 {
entry:
  %call = tail call float @klee_abs_float(float %f) #15, !dbg !3059
  ret float %call, !dbg !3059
}

declare float @klee_abs_float(float) #7

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #4 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #15, !dbg !3060
  ret x86_fp80 %call, !dbg !3060
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #4 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #15, !dbg !3061
  %0 = icmp ult i32 %call, 5, !dbg !3062
  br i1 %0, label %switch.lookup, label %return, !dbg !3062

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !3062
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !3062
  %switch.load = load i32* %switch.gep, align 4, !dbg !3062
  ret i32 %switch.load, !dbg !3062

return:                                           ; preds = %entry
  ret i32 -1, !dbg !3063
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
  ], !dbg !3064

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #15, !dbg !3065
  br label %return, !dbg !3067

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #15, !dbg !3068
  br label %return, !dbg !3069

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #15, !dbg !3070
  br label %return, !dbg !3071

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #15, !dbg !3072
  br label %return, !dbg !3073

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !3074
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #15, !dbg !3075
  %conv = zext i1 %call to i32, !dbg !3075
  ret i32 %conv, !dbg !3075
}

declare zeroext i1 @klee_is_nan_float(float) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #15, !dbg !3076
  %conv = zext i1 %call to i32, !dbg !3076
  ret i32 %conv, !dbg !3076
}

declare zeroext i1 @klee_is_nan_double(double) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #15, !dbg !3077
  %conv = zext i1 %call to i32, !dbg !3077
  ret i32 %conv, !dbg !3077
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #15, !dbg !3078
  br i1 %call, label %return, label %if.else, !dbg !3078

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #15, !dbg !3080
  br i1 %call1, label %return, label %if.else3, !dbg !3080

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !3082
  br i1 %cmp, label %return, label %if.else5, !dbg !3082

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #15, !dbg !3084
  %. = select i1 %call6, i32 4, i32 3, !dbg !3086
  br label %return, !dbg !3086

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3088
}

declare zeroext i1 @klee_is_normal_float(float) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #15, !dbg !3089
  br i1 %call, label %return, label %if.else, !dbg !3089

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #15, !dbg !3091
  br i1 %call1, label %return, label %if.else3, !dbg !3091

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !3093
  br i1 %cmp, label %return, label %if.else5, !dbg !3093

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #15, !dbg !3095
  %. = select i1 %call6, i32 4, i32 3, !dbg !3097
  br label %return, !dbg !3097

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3099
}

declare zeroext i1 @klee_is_normal_double(double) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #15, !dbg !3100
  br i1 %call, label %return, label %if.else, !dbg !3100

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #15, !dbg !3102
  br i1 %call1, label %return, label %if.else3, !dbg !3102

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !3104
  br i1 %cmp, label %return, label %if.else5, !dbg !3104

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #15, !dbg !3106
  %. = select i1 %call6, i32 4, i32 3, !dbg !3108
  br label %return, !dbg !3108

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3110
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #7

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #15, !dbg !3111
  %0 = zext i1 %call to i32, !dbg !3111
  %lnot.ext = xor i32 %0, 1, !dbg !3111
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #15, !dbg !3111
  %1 = zext i1 %call1 to i32, !dbg !3111
  %lnot.ext3 = xor i32 %1, 1, !dbg !3111
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3111
  ret i32 %and, !dbg !3111
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #15, !dbg !3112
  %0 = zext i1 %call to i32, !dbg !3112
  %lnot.ext = xor i32 %0, 1, !dbg !3112
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #15, !dbg !3112
  %1 = zext i1 %call1 to i32, !dbg !3112
  %lnot.ext3 = xor i32 %1, 1, !dbg !3112
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3112
  ret i32 %and, !dbg !3112
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #4 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #15, !dbg !3113
  %0 = zext i1 %call to i32, !dbg !3113
  %lnot.ext = xor i32 %0, 1, !dbg !3113
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #15, !dbg !3113
  %1 = zext i1 %call1 to i32, !dbg !3113
  %lnot.ext3 = xor i32 %1, 1, !dbg !3113
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3113
  ret i32 %and, !dbg !3113
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !3114
  br i1 %cmp, label %if.then, label %if.end, !dbg !3114

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str85, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str287, i64 0, i64 0)) #16, !dbg !3116
  unreachable, !dbg !3116

if.end:                                           ; preds = %entry
  ret void, !dbg !3117
}

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !3118
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #15, !dbg !3118
  %1 = load i32* %x, align 4, !dbg !3119, !tbaa !1313
  ret i32 %1, !dbg !3119
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !3120
  br i1 %cmp, label %if.end, label %if.then, !dbg !3120

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str388, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1489, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2590, i64 0, i64 0)) #16, !dbg !3122
  unreachable, !dbg !3122

if.end:                                           ; preds = %entry
  ret void, !dbg !3124
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !3125
  br i1 %cmp, label %if.end, label %if.then, !dbg !3125

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str691, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1792, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #16, !dbg !3127
  unreachable, !dbg !3127

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !3128
  %cmp1 = icmp eq i32 %add, %end, !dbg !3128
  br i1 %cmp1, label %return, label %if.else, !dbg !3128

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !3130
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #15, !dbg !3130
  %cmp3 = icmp eq i32 %start, 0, !dbg !3132
  %1 = load i32* %x, align 4, !dbg !3134, !tbaa !1313
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !3132

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !3134
  %conv6 = zext i1 %cmp5 to i64, !dbg !3134
  call void @klee_assume(i64 %conv6) #15, !dbg !3134
  br label %if.end14, !dbg !3136

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !3137
  %conv10 = zext i1 %cmp8 to i64, !dbg !3137
  call void @klee_assume(i64 %conv10) #15, !dbg !3137
  %2 = load i32* %x, align 4, !dbg !3139, !tbaa !1313
  %cmp11 = icmp slt i32 %2, %end, !dbg !3139
  %conv13 = zext i1 %cmp11 to i64, !dbg !3139
  call void @klee_assume(i64 %conv13) #15, !dbg !3139
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !3140, !tbaa !1313
  br label %return, !dbg !3140

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !3141
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
  ], !dbg !3142

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #15, !dbg !3143
  br label %sw.epilog, !dbg !3143

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #15, !dbg !3145
  br label %sw.epilog, !dbg !3145

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #15, !dbg !3146
  br label %sw.epilog, !dbg !3146

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #15, !dbg !3147
  br label %sw.epilog, !dbg !3147

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #15, !dbg !3148
  br label %sw.epilog, !dbg !3148

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str993, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #16, !dbg !3149
  unreachable, !dbg !3149

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !3150
}

declare void @klee_set_rounding_mode_internal(i32) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !3151
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !3151

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3152
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3152
  %next.gep.sum282 = or i64 %index, 16, !dbg !3152
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !3152
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3152
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !3152
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !3152
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3152
  %next.gep106.sum299 = or i64 %index, 16, !dbg !3152
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !3152
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3152
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !3152
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3153

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
  %dec = add i64 %len.addr.04, -1, !dbg !3151
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !3152
  %8 = load i8* %src.06, align 1, !dbg !3152, !tbaa !1323
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !3152
  store i8 %8, i8* %dest.05, align 1, !dbg !3152, !tbaa !1323
  %cmp = icmp eq i64 %dec, 0, !dbg !3151
  br i1 %cmp, label %while.end, label %while.body, !dbg !3151, !llvm.loop !3156

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !3157
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !3158
  br i1 %cmp, label %return, label %if.end, !dbg !3158

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !3160
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !3160

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !3162
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !3162

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3162
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3162
  %next.gep.sum610 = or i64 %index, 16, !dbg !3162
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !3162
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3162
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !3162
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !3162
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3162
  %next.gep136.sum627 = or i64 %index, 16, !dbg !3162
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !3162
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3162
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !3162
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3164

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
  %dec = add i64 %count.addr.028, -1, !dbg !3162
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !3162
  %8 = load i8* %b.030, align 1, !dbg !3162, !tbaa !1323
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !3162
  store i8 %8, i8* %a.029, align 1, !dbg !3162, !tbaa !1323
  %tobool = icmp eq i64 %dec, 0, !dbg !3162
  br i1 %tobool, label %return, label %while.body, !dbg !3162, !llvm.loop !3165

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !3166
  %tobool832 = icmp eq i64 %count, 0, !dbg !3168
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !3168

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !3169
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !3166
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !3168
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !3168
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !3168
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !3168
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3168
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !3168
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !3168
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !3168
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !3168
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3168
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3168
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !3168
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !3168
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !3168
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !3168
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3168
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !3168
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !3168
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !3168
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !3168
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !3170

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !3168
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !3168
  %19 = load i8* %b.135, align 1, !dbg !3168, !tbaa !1323
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !3168
  store i8 %19, i8* %a.134, align 1, !dbg !3168, !tbaa !1323
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !3168
  br i1 %tobool8, label %return, label %while.body9, !dbg !3168, !llvm.loop !3171

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !3172
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !3173
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !3173

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3174
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3174
  %next.gep.sum283 = or i64 %index, 16, !dbg !3174
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !3174
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3174
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !3174
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !3174
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3174
  %next.gep107.sum300 = or i64 %index, 16, !dbg !3174
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !3174
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3174
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !3174
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3175

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
  %dec = add i64 %len.addr.04, -1, !dbg !3173
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !3174
  %8 = load i8* %src.06, align 1, !dbg !3174, !tbaa !1323
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !3174
  store i8 %8, i8* %dest.05, align 1, !dbg !3174, !tbaa !1323
  %cmp = icmp eq i64 %dec, 0, !dbg !3173
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !3173, !llvm.loop !3176

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !3173

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !3177
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !3178
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !3178

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !3179
  br label %while.body, !dbg !3178

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !3178
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !3179
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !3179, !tbaa !1323
  %cmp = icmp eq i64 %dec, 0, !dbg !3178
  br i1 %cmp, label %while.end, label %while.body, !dbg !3178

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !3180
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #4 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #15, !dbg !3181
  ret double %call, !dbg !3181
}

declare double @klee_sqrt_double(double) #7

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #4 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #15, !dbg !3182
  ret float %call, !dbg !3182
}

declare float @klee_sqrt_float(float) #7

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #4 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #15, !dbg !3183
  ret x86_fp80 %call, !dbg !3183
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

!llvm.dbg.cu = !{!0, !18, !118, !252, !425, !1055, !1077, !1106, !1151, !1161, !1169, !1180, !1192, !1202, !1216, !1230, !1244, !1259}
!llvm.module.flags = !{!1272, !1273}
!llvm.ident = !{!1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"df2cf_cp_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/covert_propogation"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"df2cf", metadata !"df2cf", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8)* @df2cf, null, null, metadata !2, i32 11} ; [ DW_TAG_subprog
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/covert_propogation/df2cf_cp_l1_klee_annotated.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 52, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !2, i32 52} 
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !13}
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 63, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 63} ; [ DW_TAG_s
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8, metadata !8, metadata !17}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786449, metadata !19, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!19 = metadata !{metadata !"/home/user/klee/runtime/POSIX/klee_init_env.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!20 = metadata !{metadata !21, metadata !77, metadata !85, metadata !90, metadata !98, metadata !107, metadata !112}
!21 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"klee_init_env", metadata !"klee_init_env", metadata !"", i32 85, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8***)* @klee_init_env, null, null, me
!22 = metadata !{i32 786473, metadata !19}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !25, metadata !26}
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48,
!28 = metadata !{i32 786689, metadata !21, metadata !"argcPtr", metadata !22, i32 16777301, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcPtr] [line 85]
!29 = metadata !{i32 786689, metadata !21, metadata !"argvPtr", metadata !22, i32 33554517, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argvPtr] [line 85]
!30 = metadata !{i32 786688, metadata !21, metadata !"argc", metadata !22, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argc] [line 86]
!31 = metadata !{i32 786688, metadata !21, metadata !"argv", metadata !22, i32 87, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 87]
!32 = metadata !{i32 786688, metadata !21, metadata !"new_argc", metadata !22, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argc] [line 89]
!33 = metadata !{i32 786688, metadata !21, metadata !"n_args", metadata !22, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_args] [line 89]
!34 = metadata !{i32 786688, metadata !21, metadata !"new_argv", metadata !22, i32 90, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argv] [line 90]
!35 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 64, i32 0, i32 0, metadata !13, metadata !36, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 64, offset 0] [from ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 1024}     ; [ DW_TAG_subrange_type ] [0, 1023]
!38 = metadata !{i32 786688, metadata !21, metadata !"max_len", metadata !22, i32 91, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_len] [line 91]
!39 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!40 = metadata !{i32 786688, metadata !21, metadata !"min_argvs", metadata !22, i32 91, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_argvs] [line 91]
!41 = metadata !{i32 786688, metadata !21, metadata !"max_argvs", metadata !22, i32 91, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_argvs] [line 91]
!42 = metadata !{i32 786688, metadata !21, metadata !"sym_files", metadata !22, i32 92, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_files] [line 92]
!43 = metadata !{i32 786688, metadata !21, metadata !"sym_file_len", metadata !22, i32 92, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_file_len] [line 92]
!44 = metadata !{i32 786688, metadata !21, metadata !"sym_stdin_len", metadata !22, i32 93, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdin_len] [line 93]
!45 = metadata !{i32 786688, metadata !21, metadata !"sym_stdout_flag", metadata !22, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdout_flag] [line 94]
!46 = metadata !{i32 786688, metadata !21, metadata !"save_all_writes_flag", metadata !22, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save_all_writes_flag] [line 95]
!47 = metadata !{i32 786688, metadata !21, metadata !"fd_fail", metadata !22, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd_fail] [line 96]
!48 = metadata !{i32 786688, metadata !21, metadata !"final_argv", metadata !22, i32 97, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [final_argv] [line 97]
!49 = metadata !{i32 786688, metadata !21, metadata !"sym_arg_name", metadata !22, i32 98, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_name] [line 98]
!50 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !9, metadata !51, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!53 = metadata !{i32 786688, metadata !21, metadata !"sym_arg_num", metadata !22, i32 99, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_num] [line 99]
!54 = metadata !{i32 786688, metadata !21, metadata !"k", metadata !22, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 100]
!55 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !22, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!56 = metadata !{i32 786688, metadata !57, metadata !"msg", metadata !22, i32 125, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 125]
!57 = metadata !{i32 786443, metadata !19, metadata !58, i32 124, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!58 = metadata !{i32 786443, metadata !19, metadata !59, i32 124, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!59 = metadata !{i32 786443, metadata !19, metadata !21, i32 123, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!62 = metadata !{i32 786688, metadata !63, metadata !"msg", metadata !22, i32 136, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 136]
!63 = metadata !{i32 786443, metadata !19, metadata !64, i32 135, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!64 = metadata !{i32 786443, metadata !19, metadata !58, i32 135, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!65 = metadata !{i32 786688, metadata !66, metadata !"msg", metadata !22, i32 156, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 156]
!66 = metadata !{i32 786443, metadata !19, metadata !67, i32 155, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!67 = metadata !{i32 786443, metadata !19, metadata !64, i32 155, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!68 = metadata !{i32 786688, metadata !69, metadata !"msg", metadata !22, i32 167, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 167]
!69 = metadata !{i32 786443, metadata !19, metadata !70, i32 166, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!70 = metadata !{i32 786443, metadata !19, metadata !67, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!71 = metadata !{i32 786688, metadata !72, metadata !"msg", metadata !22, i32 188, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 188]
!72 = metadata !{i32 786443, metadata !19, metadata !73, i32 187, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!73 = metadata !{i32 786443, metadata !19, metadata !74, i32 187, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!74 = metadata !{i32 786443, metadata !19, metadata !75, i32 183, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!75 = metadata !{i32 786443, metadata !19, metadata !76, i32 179, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!76 = metadata !{i32 786443, metadata !19, metadata !70, i32 174, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!77 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"__get_sym_str", metadata !"__get_sym_str", metadata !"", i32 63, metadata !78, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @__get_sym_str, null, null, metadat
!78 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !13, metadata !8, metadata !13}
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786689, metadata !77, metadata !"numChars", metadata !22, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [numChars] [line 63]
!82 = metadata !{i32 786689, metadata !77, metadata !"name", metadata !22, i32 33554495, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 63]
!83 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !22, i32 64, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!84 = metadata !{i32 786688, metadata !77, metadata !"s", metadata !22, i32 65, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 65]
!85 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"__isprint", metadata !"__isprint", metadata !"", i32 48, metadata !86, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !88, i32 48} ; [ DW_TAG_subprogr
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !8, metadata !61}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786689, metadata !85, metadata !"c", metadata !22, i32 16777264, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 48]
!90 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"__add_arg", metadata !"__add_arg", metadata !"", i32 76, metadata !91, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !93, i32 76} ; [ DW_TAG_subprogr
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{null, metadata !25, metadata !17, metadata !13, metadata !8}
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97}
!94 = metadata !{i32 786689, metadata !90, metadata !"argc", metadata !22, i32 16777292, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 76]
!95 = metadata !{i32 786689, metadata !90, metadata !"argv", metadata !22, i32 33554508, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 76]
!96 = metadata !{i32 786689, metadata !90, metadata !"arg", metadata !22, i32 50331724, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 76]
!97 = metadata !{i32 786689, metadata !90, metadata !"argcMax", metadata !22, i32 67108940, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcMax] [line 76]
!98 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"__str_to_int", metadata !"__str_to_int", metadata !"", i32 30, metadata !99, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !102, i32 30} ; [ DW_TAG_s
!99 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !13, metadata !60}
!101 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106}
!103 = metadata !{i32 786689, metadata !98, metadata !"s", metadata !22, i32 16777246, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 30]
!104 = metadata !{i32 786689, metadata !98, metadata !"error_msg", metadata !22, i32 33554462, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [error_msg] [line 30]
!105 = metadata !{i32 786688, metadata !98, metadata !"res", metadata !22, i32 31, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 31]
!106 = metadata !{i32 786688, metadata !98, metadata !"c", metadata !22, i32 32, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 32]
!107 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"__emit_error", metadata !"__emit_error", metadata !"", i32 23, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @__emit_error, null, null, metadata !11
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !60}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 786689, metadata !107, metadata !"msg", metadata !22, i32 16777239, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 23]
!112 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"__streq", metadata !"__streq", metadata !"", i32 53, metadata !113, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !115, i32 53} ; [ DW_TAG_subprogra
!113 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{metadata !8, metadata !60, metadata !60}
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786689, metadata !112, metadata !"a", metadata !22, i32 16777269, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 53]
!117 = metadata !{i32 786689, metadata !112, metadata !"b", metadata !22, i32 33554485, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 53]
!118 = metadata !{i32 786449, metadata !119, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!119 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_init.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!120 = metadata !{metadata !121, metadata !176, metadata !182, metadata !205}
!121 = metadata !{i32 786478, metadata !119, metadata !122, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"", i32 110, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32)* @klee_in
!122 = metadata !{i32 786473, metadata !119}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!123 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{null, metadata !39, metadata !39, metadata !39, metadata !8, metadata !8, metadata !39}
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !137}
!126 = metadata !{i32 786689, metadata !121, metadata !"n_files", metadata !122, i32 16777326, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_files] [line 110]
!127 = metadata !{i32 786689, metadata !121, metadata !"file_length", metadata !122, i32 33554542, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file_length] [line 110]
!128 = metadata !{i32 786689, metadata !121, metadata !"stdin_length", metadata !122, i32 50331759, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stdin_length] [line 111]
!129 = metadata !{i32 786689, metadata !121, metadata !"sym_stdout_flag", metadata !122, i32 67108975, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym_stdout_flag] [line 111]
!130 = metadata !{i32 786689, metadata !121, metadata !"save_all_writes_flag", metadata !122, i32 83886192, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [save_all_writes_flag] [line 112]
!131 = metadata !{i32 786689, metadata !121, metadata !"max_failures", metadata !122, i32 100663408, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_failures] [line 112]
!132 = metadata !{i32 786688, metadata !121, metadata !"k", metadata !122, i32 113, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 113]
!133 = metadata !{i32 786688, metadata !121, metadata !"name", metadata !122, i32 114, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 114]
!134 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !9, metadata !135, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!137 = metadata !{i32 786688, metadata !121, metadata !"s", metadata !122, i32 115, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 115]
!138 = metadata !{i32 786451, metadata !139, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!139 = metadata !{metadata !"/usr/include/bits/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!140 = metadata !{metadata !141, metadata !144, metadata !146, metadata !148, metadata !150, metadata !152, metadata !154, metadata !155, metadata !156, metadata !158, metadata !160, metadata !162, metadata !170, metadata !171, metadata !172}
!141 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!142 = metadata !{i32 786454, metadata !139, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!143 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!144 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!145 = metadata !{i32 786454, metadata !139, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!146 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !147} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!147 = metadata !{i32 786454, metadata !139, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!148 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !149} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!149 = metadata !{i32 786454, metadata !139, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!150 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!151 = metadata !{i32 786454, metadata !139, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!152 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !153} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!153 = metadata !{i32 786454, metadata !139, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!154 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!155 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !142} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!156 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !157} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!157 = metadata !{i32 786454, metadata !139, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!158 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !159} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!159 = metadata !{i32 786454, metadata !139, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!160 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !161} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!161 = metadata !{i32 786454, metadata !139, null, metadata !"__blkcnt64_t", i32 159, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 159, size 0, align 0, offset 0] [from long int]
!162 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !163} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!163 = metadata !{i32 786451, metadata !164, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !165, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!164 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!165 = metadata !{metadata !166, metadata !168}
!166 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!167 = metadata !{i32 786454, metadata !164, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!168 = metadata !{i32 786445, metadata !164, metadata !163, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !169} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!169 = metadata !{i32 786454, metadata !164, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!170 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !163} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!171 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !163} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!172 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !173} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!173 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !169, metadata !174, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!174 = metadata !{metadata !175}
!175 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!176 = metadata !{i32 786478, metadata !119, metadata !122, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", i32 97, metadata !177, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !179, i32 97} ; [ DW_T
!177 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{metadata !39, metadata !60}
!179 = metadata !{metadata !180, metadata !181}
!180 = metadata !{i32 786689, metadata !176, metadata !"name", metadata !122, i32 16777313, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 97]
!181 = metadata !{i32 786688, metadata !176, metadata !"x", metadata !122, i32 98, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 98]
!182 = metadata !{i32 786478, metadata !119, metadata !122, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", i32 46, metadata !183, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t.17*, i3
!183 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{null, metadata !185, metadata !39, metadata !60, metadata !193}
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!186 = metadata !{i32 786454, metadata !187, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!187 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!188 = metadata !{i32 786451, metadata !187, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !189, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!189 = metadata !{metadata !190, metadata !191, metadata !192}
!190 = metadata !{i32 786445, metadata !187, metadata !188, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!191 = metadata !{i32 786445, metadata !187, metadata !188, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!192 = metadata !{i32 786445, metadata !187, metadata !188, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !193} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!195 = metadata !{i32 786689, metadata !182, metadata !"dfile", metadata !122, i32 16777262, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dfile] [line 46]
!196 = metadata !{i32 786689, metadata !182, metadata !"size", metadata !122, i32 33554478, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 46]
!197 = metadata !{i32 786689, metadata !182, metadata !"name", metadata !122, i32 50331695, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 47]
!198 = metadata !{i32 786689, metadata !182, metadata !"defaults", metadata !122, i32 67108911, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defaults] [line 47]
!199 = metadata !{i32 786688, metadata !182, metadata !"s", metadata !122, i32 48, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 48]
!200 = metadata !{i32 786688, metadata !182, metadata !"sp", metadata !122, i32 49, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sp] [line 49]
!201 = metadata !{i32 786688, metadata !182, metadata !"sname", metadata !122, i32 50, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname] [line 50]
!202 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !9, metadata !203, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!203 = metadata !{metadata !204}
!204 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!205 = metadata !{i32 786478, metadata !206, metadata !207, metadata !"stat64", metadata !"stat64", metadata !"", i32 501, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !210, i32 502} ; [ DW_TAG_subpro
!206 = metadata !{metadata !"/usr/include/sys/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!207 = metadata !{i32 786473, metadata !206}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!208 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !8, metadata !60, metadata !193}
!210 = metadata !{metadata !211, metadata !212}
!211 = metadata !{i32 786689, metadata !205, metadata !"__path", metadata !207, i32 16777717, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__path] [line 501]
!212 = metadata !{i32 786689, metadata !205, metadata !"__statbuf", metadata !207, i32 33554933, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 501]
!213 = metadata !{metadata !214, metadata !235}
!214 = metadata !{i32 786484, i32 0, null, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !122, i32 37, metadata !215, i32 0, i32 1, { [32 x %struct.exe_file_t.18], i32, i32, i32, [4 x i8] }* @__exe_env, null} ; [ DW_TAG_variable ] 
!215 = metadata !{i32 786454, metadata !119, null, metadata !"exe_sym_env_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [exe_sym_env_t] [line 69, size 0, align 0, offset 0] [from ]
!216 = metadata !{i32 786451, metadata !187, null, metadata !"", i32 61, i64 6272, i64 64, i32 0, i32 0, null, metadata !217, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 61, size 6272, align 64, offset 0] [def] [from ]
!217 = metadata !{metadata !218, metadata !231, metadata !233, metadata !234}
!218 = metadata !{i32 786445, metadata !187, metadata !216, metadata !"fds", i32 62, i64 6144, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [fds] [line 62, size 6144, align 64, offset 0] [from ]
!219 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 64, i32 0, i32 0, metadata !220, metadata !229, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6144, align 64, offset 0] [from exe_file_t]
!220 = metadata !{i32 786454, metadata !187, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!221 = metadata !{i32 786451, metadata !187, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !222, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !228}
!223 = metadata !{i32 786445, metadata !187, metadata !221, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!224 = metadata !{i32 786445, metadata !187, metadata !221, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!225 = metadata !{i32 786445, metadata !187, metadata !221, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !226} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!226 = metadata !{i32 786454, metadata !187, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!227 = metadata !{i32 786454, metadata !187, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!228 = metadata !{i32 786445, metadata !187, metadata !221, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !185} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!229 = metadata !{metadata !230}
!230 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!231 = metadata !{i32 786445, metadata !187, metadata !216, metadata !"umask", i32 63, i64 32, i64 32, i64 6144, i32 0, metadata !232} ; [ DW_TAG_member ] [umask] [line 63, size 32, align 32, offset 6144] [from mode_t]
!232 = metadata !{i32 786454, metadata !187, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!233 = metadata !{i32 786445, metadata !187, metadata !216, metadata !"version", i32 64, i64 32, i64 32, i64 6176, i32 0, metadata !39} ; [ DW_TAG_member ] [version] [line 64, size 32, align 32, offset 6176] [from unsigned int]
!234 = metadata !{i32 786445, metadata !187, metadata !216, metadata !"save_all_writes", i32 68, i64 32, i64 32, i64 6208, i32 0, metadata !8} ; [ DW_TAG_member ] [save_all_writes] [line 68, size 32, align 32, offset 6208] [from int]
!235 = metadata !{i32 786484, i32 0, null, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !122, i32 24, metadata !236, i32 0, i32 1, %struct.exe_file_system_t.19* @__exe_fs, null} ; [ DW_TAG_variable ] [__exe_fs] [line 24] [def]
!236 = metadata !{i32 786454, metadata !119, null, metadata !"exe_file_system_t", i32 54, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [exe_file_system_t] [line 54, size 0, align 0, offset 0] [from ]
!237 = metadata !{i32 786451, metadata !187, null, metadata !"", i32 42, i64 832, i64 64, i32 0, i32 0, null, metadata !238, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 42, size 832, align 64, offset 0] [def] [from ]
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251}
!239 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"n_sym_files", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [n_sym_files] [line 43, size 32, align 32, offset 0] [from unsigned int]
!240 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"sym_stdin", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !185} ; [ DW_TAG_member ] [sym_stdin] [line 44, size 64, align 64, offset 64] [from ]
!241 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"sym_stdout", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !185} ; [ DW_TAG_member ] [sym_stdout] [line 44, size 64, align 64, offset 128] [from ]
!242 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"stdout_writes", i32 45, i64 32, i64 32, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [stdout_writes] [line 45, size 32, align 32, offset 192] [from unsigned int]
!243 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"sym_files", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !185} ; [ DW_TAG_member ] [sym_files] [line 46, size 64, align 64, offset 256] [from ]
!244 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"max_failures", i32 49, i64 32, i64 32, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [max_failures] [line 49, size 32, align 32, offset 320] [from unsigned int]
!245 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"read_fail", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [read_fail] [line 52, size 64, align 64, offset 384] [from ]
!246 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"write_fail", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ] [write_fail] [line 52, size 64, align 64, offset 448] [from ]
!247 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"close_fail", i32 52, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [close_fail] [line 52, size 64, align 64, offset 512] [from ]
!248 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"ftruncate_fail", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [ftruncate_fail] [line 52, size 64, align 64, offset 576] [from ]
!249 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"getcwd_fail", i32 52, i64 64, i64 64, i64 640, i32 0, metadata !25} ; [ DW_TAG_member ] [getcwd_fail] [line 52, size 64, align 64, offset 640] [from ]
!250 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"chmod_fail", i32 53, i64 64, i64 64, i64 704, i32 0, metadata !25} ; [ DW_TAG_member ] [chmod_fail] [line 53, size 64, align 64, offset 704] [from ]
!251 = metadata !{i32 786445, metadata !187, metadata !237, metadata !"fchmod_fail", i32 53, i64 64, i64 64, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [fchmod_fail] [line 53, size 64, align 64, offset 768] [from ]
!252 = metadata !{i32 786449, metadata !253, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!253 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_64.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!254 = metadata !{metadata !255, metadata !282, metadata !293, metadata !302, metadata !333, metadata !339, metadata !344, metadata !348, metadata !355, metadata !361, metadata !367, metadata !403}
!255 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"open", metadata !"open", metadata !"open64", i32 45, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64, null, null, metadata !259, i
!256 = metadata !{i32 786473, metadata !253}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!257 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{metadata !8, metadata !60, metadata !8}
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !265}
!260 = metadata !{i32 786689, metadata !255, metadata !"pathname", metadata !256, i32 16777261, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 45]
!261 = metadata !{i32 786689, metadata !255, metadata !"flags", metadata !256, i32 33554477, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 45]
!262 = metadata !{i32 786688, metadata !255, metadata !"mode", metadata !256, i32 46, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 46]
!263 = metadata !{i32 786454, metadata !253, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!264 = metadata !{i32 786454, metadata !253, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!265 = metadata !{i32 786688, metadata !266, metadata !"ap", metadata !256, i32 50, metadata !268, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 50]
!266 = metadata !{i32 786443, metadata !253, metadata !267, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!267 = metadata !{i32 786443, metadata !253, metadata !255, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!268 = metadata !{i32 786454, metadata !253, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!269 = metadata !{i32 786454, metadata !253, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!270 = metadata !{i32 786454, metadata !253, null, metadata !"__builtin_va_list", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 50, size 0, align 0, offset 0] [from ]
!271 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !272, metadata !280, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!272 = metadata !{i32 786454, metadata !253, null, metadata !"__va_list_tag", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !273} ; [ DW_TAG_typedef ] [__va_list_tag] [line 50, size 0, align 0, offset 0] [from __va_list_tag]
!273 = metadata !{i32 786451, metadata !253, null, metadata !"__va_list_tag", i32 50, i64 192, i64 64, i32 0, i32 0, null, metadata !274, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 50, size 192, align 64, offset 0] [def] [
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !279}
!275 = metadata !{i32 786445, metadata !253, metadata !273, metadata !"gp_offset", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [gp_offset] [line 50, size 32, align 32, offset 0] [from unsigned int]
!276 = metadata !{i32 786445, metadata !253, metadata !273, metadata !"fp_offset", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [fp_offset] [line 50, size 32, align 32, offset 32] [from unsigned int]
!277 = metadata !{i32 786445, metadata !253, metadata !273, metadata !"overflow_arg_area", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !278} ; [ DW_TAG_member ] [overflow_arg_area] [line 50, size 64, align 64, offset 64] [from ]
!278 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!279 = metadata !{i32 786445, metadata !253, metadata !273, metadata !"reg_save_area", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !278} ; [ DW_TAG_member ] [reg_save_area] [line 50, size 64, align 64, offset 128] [from ]
!280 = metadata !{metadata !281}
!281 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!282 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"openat", metadata !"openat", metadata !"openat64", i32 59, metadata !283, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, ...)* @openat64, null, null, met
!283 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!284 = metadata !{metadata !8, metadata !8, metadata !60, metadata !8}
!285 = metadata !{metadata !286, metadata !287, metadata !288, metadata !289, metadata !290}
!286 = metadata !{i32 786689, metadata !282, metadata !"fd", metadata !256, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 59]
!287 = metadata !{i32 786689, metadata !282, metadata !"pathname", metadata !256, i32 33554491, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 59]
!288 = metadata !{i32 786689, metadata !282, metadata !"flags", metadata !256, i32 50331707, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 59]
!289 = metadata !{i32 786688, metadata !282, metadata !"mode", metadata !256, i32 60, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 60]
!290 = metadata !{i32 786688, metadata !291, metadata !"ap", metadata !256, i32 64, metadata !268, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 64]
!291 = metadata !{i32 786443, metadata !253, metadata !292, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!292 = metadata !{i32 786443, metadata !253, metadata !282, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!293 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"lseek", metadata !"lseek", metadata !"lseek64", i32 73, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64, null, null, metadata !29
!294 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{metadata !296, metadata !8, metadata !297, metadata !8}
!296 = metadata !{i32 786454, metadata !253, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!297 = metadata !{i32 786454, metadata !253, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !296} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!298 = metadata !{metadata !299, metadata !300, metadata !301}
!299 = metadata !{i32 786689, metadata !293, metadata !"fd", metadata !256, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 73]
!300 = metadata !{i32 786689, metadata !293, metadata !"offset", metadata !256, i32 33554505, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 73]
!301 = metadata !{i32 786689, metadata !293, metadata !"whence", metadata !256, i32 50331721, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 73]
!302 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat64", i32 77, metadata !303, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64.16*)* @__xstat64, n
!303 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{metadata !8, metadata !8, metadata !60, metadata !305}
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !306} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!306 = metadata !{i32 786451, metadata !139, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!307 = metadata !{metadata !308, metadata !309, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !321, metadata !326, metadata !327, metadata !328}
!308 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!309 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !310} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!310 = metadata !{i32 786454, metadata !139, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!311 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !147} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!312 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !264} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!313 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!314 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !153} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!315 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!316 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !142} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!317 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !157} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!318 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !159} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!319 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !320} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!320 = metadata !{i32 786454, metadata !139, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!321 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !322} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!322 = metadata !{i32 786451, metadata !164, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !323, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!323 = metadata !{metadata !324, metadata !325}
!324 = metadata !{i32 786445, metadata !164, metadata !322, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!325 = metadata !{i32 786445, metadata !164, metadata !322, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !169} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!326 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !322} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!327 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !322} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!328 = metadata !{i32 786445, metadata !139, metadata !306, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !173} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!329 = metadata !{metadata !330, metadata !331, metadata !332}
!330 = metadata !{i32 786689, metadata !302, metadata !"vers", metadata !256, i32 16777293, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 77]
!331 = metadata !{i32 786689, metadata !302, metadata !"path", metadata !256, i32 33554509, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 77]
!332 = metadata !{i32 786689, metadata !302, metadata !"buf", metadata !256, i32 50331725, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 77]
!333 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"stat", metadata !"stat", metadata !"stat64", i32 81, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @stat64, null, null, metada
!334 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{metadata !8, metadata !60, metadata !305}
!336 = metadata !{metadata !337, metadata !338}
!337 = metadata !{i32 786689, metadata !333, metadata !"path", metadata !256, i32 16777297, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 81]
!338 = metadata !{i32 786689, metadata !333, metadata !"buf", metadata !256, i32 33554513, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 81]
!339 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat64", i32 85, metadata !303, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64.16*)* @__lxstat6
!340 = metadata !{metadata !341, metadata !342, metadata !343}
!341 = metadata !{i32 786689, metadata !339, metadata !"vers", metadata !256, i32 16777301, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 85]
!342 = metadata !{i32 786689, metadata !339, metadata !"path", metadata !256, i32 33554517, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 85]
!343 = metadata !{i32 786689, metadata !339, metadata !"buf", metadata !256, i32 50331733, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 85]
!344 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"lstat", metadata !"lstat", metadata !"lstat64", i32 89, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @lstat64, null, null, me
!345 = metadata !{metadata !346, metadata !347}
!346 = metadata !{i32 786689, metadata !344, metadata !"path", metadata !256, i32 16777305, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 89]
!347 = metadata !{i32 786689, metadata !344, metadata !"buf", metadata !256, i32 33554521, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 89]
!348 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat64", i32 93, metadata !349, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat64.16*)* @__fxstat6
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{metadata !8, metadata !8, metadata !8, metadata !305}
!351 = metadata !{metadata !352, metadata !353, metadata !354}
!352 = metadata !{i32 786689, metadata !348, metadata !"vers", metadata !256, i32 16777309, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 93]
!353 = metadata !{i32 786689, metadata !348, metadata !"fd", metadata !256, i32 33554525, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 93]
!354 = metadata !{i32 786689, metadata !348, metadata !"buf", metadata !256, i32 50331741, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 93]
!355 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"fstat", metadata !"fstat", metadata !"fstat64", i32 97, metadata !356, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64.16*)* @fstat64, null, null, me
!356 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!357 = metadata !{metadata !8, metadata !8, metadata !305}
!358 = metadata !{metadata !359, metadata !360}
!359 = metadata !{i32 786689, metadata !355, metadata !"fd", metadata !256, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 97]
!360 = metadata !{i32 786689, metadata !355, metadata !"buf", metadata !256, i32 33554529, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 97]
!361 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"ftruncate64", metadata !"ftruncate64", metadata !"", i32 101, metadata !362, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate64, null, null, metadat
!362 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!363 = metadata !{metadata !8, metadata !8, metadata !297}
!364 = metadata !{metadata !365, metadata !366}
!365 = metadata !{i32 786689, metadata !361, metadata !"fd", metadata !256, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 101]
!366 = metadata !{i32 786689, metadata !361, metadata !"length", metadata !256, i32 33554533, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 101]
!367 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"statfs", metadata !"statfs", metadata !"statfs64", i32 106, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs.11*)* @statfs64, null, nul
!368 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!369 = metadata !{metadata !8, metadata !60, metadata !370}
!370 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !371} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!371 = metadata !{i32 786451, metadata !372, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !373, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!372 = metadata !{metadata !"/usr/include/bits/statfs.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!373 = metadata !{metadata !374, metadata !376, metadata !377, metadata !379, metadata !380, metadata !381, metadata !383, metadata !384, metadata !393, metadata !394, metadata !395, metadata !396}
!374 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!375 = metadata !{i32 786454, metadata !372, null, metadata !"__fsword_t", i32 170, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__fsword_t] [line 170, size 0, align 0, offset 0] [from long int]
!376 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !375} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!377 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_blocks", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !378} ; [ DW_TAG_member ] [f_blocks] [line 35, size 64, align 64, offset 128] [from __fsblkcnt64_t]
!378 = metadata !{i32 786454, metadata !372, null, metadata !"__fsblkcnt64_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__fsblkcnt64_t] [line 163, size 0, align 0, offset 0] [from long unsigned int]
!379 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_bfree", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !378} ; [ DW_TAG_member ] [f_bfree] [line 36, size 64, align 64, offset 192] [from __fsblkcnt64_t]
!380 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_bavail", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !378} ; [ DW_TAG_member ] [f_bavail] [line 37, size 64, align 64, offset 256] [from __fsblkcnt64_t]
!381 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_files", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !382} ; [ DW_TAG_member ] [f_files] [line 38, size 64, align 64, offset 320] [from __fsfilcnt64_t]
!382 = metadata !{i32 786454, metadata !372, null, metadata !"__fsfilcnt64_t", i32 167, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__fsfilcnt64_t] [line 167, size 0, align 0, offset 0] [from long unsigned int]
!383 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_ffree", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !382} ; [ DW_TAG_member ] [f_ffree] [line 39, size 64, align 64, offset 384] [from __fsfilcnt64_t]
!384 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !385} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!385 = metadata !{i32 786454, metadata !372, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!386 = metadata !{i32 786451, metadata !387, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !388, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!387 = metadata !{metadata !"/usr/include/bits/types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!388 = metadata !{metadata !389}
!389 = metadata !{i32 786445, metadata !387, metadata !386, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !390} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!390 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !391, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!391 = metadata !{metadata !392}
!392 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!393 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !375} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!394 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !375} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!395 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !375} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!396 = metadata !{i32 786445, metadata !372, metadata !371, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !397} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!397 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !375, metadata !398, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from __fsword_t]
!398 = metadata !{metadata !399}
!399 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!400 = metadata !{metadata !401, metadata !402}
!401 = metadata !{i32 786689, metadata !367, metadata !"path", metadata !256, i32 16777322, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 106]
!402 = metadata !{i32 786689, metadata !367, metadata !"buf", metadata !256, i32 33554538, metadata !370, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 106]
!403 = metadata !{i32 786478, metadata !253, metadata !256, metadata !"getdents64", metadata !"getdents64", metadata !"", i32 110, metadata !404, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent.12*, i32)* @getdents64, nu
!404 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!405 = metadata !{metadata !8, metadata !39, metadata !406, metadata !39}
!406 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !407} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent]
!407 = metadata !{i32 786451, metadata !408, null, metadata !"dirent", i32 22, i64 2240, i64 64, i32 0, i32 0, null, metadata !409, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent] [line 22, size 2240, align 64, offset 0] [def] [from ]
!408 = metadata !{metadata !"/usr/include/bits/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!409 = metadata !{metadata !410, metadata !412, metadata !413, metadata !415, metadata !417}
!410 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"d_ino", i32 28, i64 64, i64 64, i64 0, i32 0, metadata !411} ; [ DW_TAG_member ] [d_ino] [line 28, size 64, align 64, offset 0] [from __ino64_t]
!411 = metadata !{i32 786454, metadata !408, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!412 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"d_off", i32 29, i64 64, i64 64, i64 64, i32 0, metadata !296} ; [ DW_TAG_member ] [d_off] [line 29, size 64, align 64, offset 64] [from __off64_t]
!413 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"d_reclen", i32 31, i64 16, i64 16, i64 128, i32 0, metadata !414} ; [ DW_TAG_member ] [d_reclen] [line 31, size 16, align 16, offset 128] [from unsigned short]
!414 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!415 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"d_type", i32 32, i64 8, i64 8, i64 144, i32 0, metadata !416} ; [ DW_TAG_member ] [d_type] [line 32, size 8, align 8, offset 144] [from unsigned char]
!416 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!417 = metadata !{i32 786445, metadata !408, metadata !407, metadata !"d_name", i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !418} ; [ DW_TAG_member ] [d_name] [line 33, size 2048, align 8, offset 152] [from ]
!418 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !9, metadata !419, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!419 = metadata !{metadata !420}
!420 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!421 = metadata !{metadata !422, metadata !423, metadata !424}
!422 = metadata !{i32 786689, metadata !403, metadata !"fd", metadata !256, i32 16777326, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 110]
!423 = metadata !{i32 786689, metadata !403, metadata !"dirp", metadata !256, i32 33554542, metadata !406, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 110]
!424 = metadata !{i32 786689, metadata !403, metadata !"count", metadata !256, i32 50331758, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 110]
!425 = metadata !{i32 786449, metadata !426, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!426 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!427 = metadata !{metadata !428, metadata !434}
!428 = metadata !{i32 786436, metadata !187, null, metadata !"", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !429, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 26, size 32, align 32, offset 0] [def] [from ]
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433}
!430 = metadata !{i32 786472, metadata !"eOpen", i64 1} ; [ DW_TAG_enumerator ] [eOpen :: 1]
!431 = metadata !{i32 786472, metadata !"eCloseOnExec", i64 2} ; [ DW_TAG_enumerator ] [eCloseOnExec :: 2]
!432 = metadata !{i32 786472, metadata !"eReadable", i64 4} ; [ DW_TAG_enumerator ] [eReadable :: 4]
!433 = metadata !{i32 786472, metadata !"eWriteable", i64 8} ; [ DW_TAG_enumerator ] [eWriteable :: 8]
!434 = metadata !{i32 786436, metadata !435, null, metadata !"", i32 97, i64 32, i64 32, i32 0, i32 0, null, metadata !436, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 97, size 32, align 32, offset 0] [def] [from ]
!435 = metadata !{metadata !"/usr/include/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!436 = metadata !{metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445}
!437 = metadata !{i32 786472, metadata !"DT_UNKNOWN", i64 0} ; [ DW_TAG_enumerator ] [DT_UNKNOWN :: 0]
!438 = metadata !{i32 786472, metadata !"DT_FIFO", i64 1} ; [ DW_TAG_enumerator ] [DT_FIFO :: 1]
!439 = metadata !{i32 786472, metadata !"DT_CHR", i64 2} ; [ DW_TAG_enumerator ] [DT_CHR :: 2]
!440 = metadata !{i32 786472, metadata !"DT_DIR", i64 4} ; [ DW_TAG_enumerator ] [DT_DIR :: 4]
!441 = metadata !{i32 786472, metadata !"DT_BLK", i64 6} ; [ DW_TAG_enumerator ] [DT_BLK :: 6]
!442 = metadata !{i32 786472, metadata !"DT_REG", i64 8} ; [ DW_TAG_enumerator ] [DT_REG :: 8]
!443 = metadata !{i32 786472, metadata !"DT_LNK", i64 10} ; [ DW_TAG_enumerator ] [DT_LNK :: 10]
!444 = metadata !{i32 786472, metadata !"DT_SOCK", i64 12} ; [ DW_TAG_enumerator ] [DT_SOCK :: 12]
!445 = metadata !{i32 786472, metadata !"DT_WHT", i64 14} ; [ DW_TAG_enumerator ] [DT_WHT :: 14]
!446 = metadata !{metadata !447, metadata !485, metadata !492, metadata !513, metadata !527, metadata !543, metadata !554, metadata !561, metadata !575, metadata !590, metadata !599, metadata !608, metadata !639, metadata !646, metadata !654, metadata !6
!447 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"access", metadata !"access", metadata !"", i32 73, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @access, null, null, metadata !449, i32 73} 
!448 = metadata !{i32 786473, metadata !426}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!449 = metadata !{metadata !450, metadata !451, metadata !452, metadata !482}
!450 = metadata !{i32 786689, metadata !447, metadata !"pathname", metadata !448, i32 16777289, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 73]
!451 = metadata !{i32 786689, metadata !447, metadata !"mode", metadata !448, i32 33554505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 73]
!452 = metadata !{i32 786688, metadata !447, metadata !"dfile", metadata !448, i32 74, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 74]
!453 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !454} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!454 = metadata !{i32 786454, metadata !426, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !455} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!455 = metadata !{i32 786451, metadata !187, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !456, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!456 = metadata !{metadata !457, metadata !458, metadata !459}
!457 = metadata !{i32 786445, metadata !187, metadata !455, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!458 = metadata !{i32 786445, metadata !187, metadata !455, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!459 = metadata !{i32 786445, metadata !187, metadata !455, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !460} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!460 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !461} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!461 = metadata !{i32 786451, metadata !139, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !462, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!462 = metadata !{metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !479, metadata !480, metadata !481}
!463 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!464 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!465 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !147} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!466 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !149} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!467 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!468 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !153} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!469 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!470 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !142} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!471 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !157} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!472 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !159} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!473 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !161} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!474 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !475} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!475 = metadata !{i32 786451, metadata !164, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !476, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!476 = metadata !{metadata !477, metadata !478}
!477 = metadata !{i32 786445, metadata !164, metadata !475, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!478 = metadata !{i32 786445, metadata !164, metadata !475, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !169} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!479 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !475} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!480 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !475} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!481 = metadata !{i32 786445, metadata !139, metadata !461, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !173} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!482 = metadata !{i32 786688, metadata !483, metadata !"r", metadata !448, i32 81, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 81]
!483 = metadata !{i32 786443, metadata !426, metadata !484, i32 80, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!484 = metadata !{i32 786443, metadata !426, metadata !447, i32 76, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!485 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"umask", metadata !"umask", metadata !"", i32 88, metadata !486, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @umask, null, null, metadata !489, i32 88} ; [ DW_T
!486 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!487 = metadata !{metadata !149, metadata !488}
!488 = metadata !{i32 786454, metadata !426, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!489 = metadata !{metadata !490, metadata !491}
!490 = metadata !{i32 786689, metadata !485, metadata !"mask", metadata !448, i32 16777304, metadata !488, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 88]
!491 = metadata !{i32 786688, metadata !485, metadata !"r", metadata !448, i32 89, metadata !488, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 89]
!492 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_open", metadata !"__fd_open", metadata !"", i32 128, metadata !493, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @__fd_open, null, null, metadata
!493 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!494 = metadata !{metadata !8, metadata !60, metadata !8, metadata !488}
!495 = metadata !{metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !509, metadata !510}
!496 = metadata !{i32 786689, metadata !492, metadata !"pathname", metadata !448, i32 16777344, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 128]
!497 = metadata !{i32 786689, metadata !492, metadata !"flags", metadata !448, i32 33554560, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 128]
!498 = metadata !{i32 786689, metadata !492, metadata !"mode", metadata !448, i32 50331776, metadata !488, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 128]
!499 = metadata !{i32 786688, metadata !492, metadata !"df", metadata !448, i32 129, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 129]
!500 = metadata !{i32 786688, metadata !492, metadata !"f", metadata !448, i32 130, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 130]
!501 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_file_t]
!502 = metadata !{i32 786454, metadata !426, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!503 = metadata !{i32 786451, metadata !187, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !504, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!504 = metadata !{metadata !505, metadata !506, metadata !507, metadata !508}
!505 = metadata !{i32 786445, metadata !187, metadata !503, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!506 = metadata !{i32 786445, metadata !187, metadata !503, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!507 = metadata !{i32 786445, metadata !187, metadata !503, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !226} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!508 = metadata !{i32 786445, metadata !187, metadata !503, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !453} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!509 = metadata !{i32 786688, metadata !492, metadata !"fd", metadata !448, i32 131, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 131]
!510 = metadata !{i32 786688, metadata !511, metadata !"os_fd", metadata !448, i32 181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 181]
!511 = metadata !{i32 786443, metadata !426, metadata !512, i32 180, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!512 = metadata !{i32 786443, metadata !426, metadata !492, i32 147, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!513 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_openat", metadata !"__fd_openat", metadata !"", i32 201, metadata !514, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, i32)* @__fd_openat, null, nul
!514 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!515 = metadata !{metadata !8, metadata !8, metadata !60, metadata !8, metadata !488}
!516 = metadata !{metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !526}
!517 = metadata !{i32 786689, metadata !513, metadata !"basefd", metadata !448, i32 16777417, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [basefd] [line 201]
!518 = metadata !{i32 786689, metadata !513, metadata !"pathname", metadata !448, i32 33554633, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 201]
!519 = metadata !{i32 786689, metadata !513, metadata !"flags", metadata !448, i32 50331849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 201]
!520 = metadata !{i32 786689, metadata !513, metadata !"mode", metadata !448, i32 67109065, metadata !488, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 201]
!521 = metadata !{i32 786688, metadata !513, metadata !"f", metadata !448, i32 202, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 202]
!522 = metadata !{i32 786688, metadata !513, metadata !"fd", metadata !448, i32 203, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 203]
!523 = metadata !{i32 786688, metadata !524, metadata !"bf", metadata !448, i32 205, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bf] [line 205]
!524 = metadata !{i32 786443, metadata !426, metadata !525, i32 204, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!525 = metadata !{i32 786443, metadata !426, metadata !513, i32 204, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!526 = metadata !{i32 786688, metadata !513, metadata !"os_fd", metadata !448, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 236]
!527 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"utimes", metadata !"utimes", metadata !"", i32 256, metadata !528, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.timeval*)* @utimes, null, null, metadata 
!528 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!529 = metadata !{metadata !8, metadata !60, metadata !530}
!530 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!531 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timeval]
!532 = metadata !{i32 786451, metadata !533, null, metadata !"timeval", i32 30, i64 128, i64 64, i32 0, i32 0, null, metadata !534, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timeval] [line 30, size 128, align 64, offset 0] [def] [from ]
!533 = metadata !{metadata !"/usr/include/bits/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!534 = metadata !{metadata !535, metadata !536}
!535 = metadata !{i32 786445, metadata !533, metadata !532, metadata !"tv_sec", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [tv_sec] [line 32, size 64, align 64, offset 0] [from __time_t]
!536 = metadata !{i32 786445, metadata !533, metadata !532, metadata !"tv_usec", i32 33, i64 64, i64 64, i64 64, i32 0, metadata !537} ; [ DW_TAG_member ] [tv_usec] [line 33, size 64, align 64, offset 64] [from __suseconds_t]
!537 = metadata !{i32 786454, metadata !533, null, metadata !"__suseconds_t", i32 141, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__suseconds_t] [line 141, size 0, align 0, offset 0] [from long int]
!538 = metadata !{metadata !539, metadata !540, metadata !541, metadata !542}
!539 = metadata !{i32 786689, metadata !527, metadata !"path", metadata !448, i32 16777472, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 256]
!540 = metadata !{i32 786689, metadata !527, metadata !"times", metadata !448, i32 33554688, metadata !530, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 256]
!541 = metadata !{i32 786688, metadata !527, metadata !"dfile", metadata !448, i32 257, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 257]
!542 = metadata !{i32 786688, metadata !527, metadata !"r", metadata !448, i32 269, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 269]
!543 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"futimesat", metadata !"futimesat", metadata !"", i32 277, metadata !544, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.timeval*)* @futimesat, null, n
!544 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !545, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!545 = metadata !{metadata !8, metadata !8, metadata !60, metadata !530}
!546 = metadata !{metadata !547, metadata !548, metadata !549, metadata !550, metadata !553}
!547 = metadata !{i32 786689, metadata !543, metadata !"fd", metadata !448, i32 16777493, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 277]
!548 = metadata !{i32 786689, metadata !543, metadata !"path", metadata !448, i32 33554709, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 277]
!549 = metadata !{i32 786689, metadata !543, metadata !"times", metadata !448, i32 50331925, metadata !530, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 277]
!550 = metadata !{i32 786688, metadata !551, metadata !"f", metadata !448, i32 279, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 279]
!551 = metadata !{i32 786443, metadata !426, metadata !552, i32 278, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!552 = metadata !{i32 786443, metadata !426, metadata !543, i32 278, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!553 = metadata !{i32 786688, metadata !543, metadata !"r", metadata !448, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 295]
!554 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"close", metadata !"close", metadata !"", i32 303, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @close, null, null, metadata !557, i32 303} ; [ DW
!555 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!556 = metadata !{metadata !8, metadata !8}
!557 = metadata !{metadata !558, metadata !559, metadata !560}
!558 = metadata !{i32 786689, metadata !554, metadata !"fd", metadata !448, i32 16777519, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 303]
!559 = metadata !{i32 786688, metadata !554, metadata !"f", metadata !448, i32 305, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 305]
!560 = metadata !{i32 786688, metadata !554, metadata !"r", metadata !448, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 306]
!561 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"read", metadata !"read", metadata !"", i32 335, metadata !562, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @read, null, null, metadata !567, i32 335}
!562 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!563 = metadata !{metadata !564, metadata !8, metadata !278, metadata !566}
!564 = metadata !{i32 786454, metadata !426, null, metadata !"ssize_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !565} ; [ DW_TAG_typedef ] [ssize_t] [line 109, size 0, align 0, offset 0] [from __ssize_t]
!565 = metadata !{i32 786454, metadata !426, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!566 = metadata !{i32 786454, metadata !426, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!567 = metadata !{metadata !568, metadata !569, metadata !570, metadata !571, metadata !572}
!568 = metadata !{i32 786689, metadata !561, metadata !"fd", metadata !448, i32 16777551, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 335]
!569 = metadata !{i32 786689, metadata !561, metadata !"buf", metadata !448, i32 33554767, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 335]
!570 = metadata !{i32 786689, metadata !561, metadata !"count", metadata !448, i32 50331983, metadata !566, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 335]
!571 = metadata !{i32 786688, metadata !561, metadata !"f", metadata !448, i32 337, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 337]
!572 = metadata !{i32 786688, metadata !573, metadata !"r", metadata !448, i32 364, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 364]
!573 = metadata !{i32 786443, metadata !426, metadata !574, i32 362, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!574 = metadata !{i32 786443, metadata !426, metadata !561, i32 362, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!575 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"write", metadata !"write", metadata !"", i32 403, metadata !576, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @write, null, null, metadata !580, i32 4
!576 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !577, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!577 = metadata !{metadata !564, metadata !8, metadata !578, metadata !566}
!578 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !579} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!579 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!580 = metadata !{metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !588}
!581 = metadata !{i32 786689, metadata !575, metadata !"fd", metadata !448, i32 16777619, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 403]
!582 = metadata !{i32 786689, metadata !575, metadata !"buf", metadata !448, i32 33554835, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 403]
!583 = metadata !{i32 786689, metadata !575, metadata !"count", metadata !448, i32 50332051, metadata !566, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 403]
!584 = metadata !{i32 786688, metadata !575, metadata !"f", metadata !448, i32 405, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 405]
!585 = metadata !{i32 786688, metadata !586, metadata !"r", metadata !448, i32 423, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 423]
!586 = metadata !{i32 786443, metadata !426, metadata !587, i32 422, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!587 = metadata !{i32 786443, metadata !426, metadata !575, i32 422, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!588 = metadata !{i32 786688, metadata !589, metadata !"actual_count", metadata !448, i32 448, metadata !566, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [actual_count] [line 448]
!589 = metadata !{i32 786443, metadata !426, metadata !587, i32 446, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!590 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"", i32 475, metadata !591, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @__fd_lseek, null, null, metad
!591 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!592 = metadata !{metadata !226, metadata !8, metadata !226, metadata !8}
!593 = metadata !{metadata !594, metadata !595, metadata !596, metadata !597, metadata !598}
!594 = metadata !{i32 786689, metadata !590, metadata !"fd", metadata !448, i32 16777691, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 475]
!595 = metadata !{i32 786689, metadata !590, metadata !"offset", metadata !448, i32 33554907, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 475]
!596 = metadata !{i32 786689, metadata !590, metadata !"whence", metadata !448, i32 50332123, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 475]
!597 = metadata !{i32 786688, metadata !590, metadata !"new_off", metadata !448, i32 476, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_off] [line 476]
!598 = metadata !{i32 786688, metadata !590, metadata !"f", metadata !448, i32 477, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 477]
!599 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"", i32 532, metadata !600, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @__fd_stat, null, null
!600 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!601 = metadata !{metadata !8, metadata !60, metadata !460}
!602 = metadata !{metadata !603, metadata !604, metadata !605, metadata !606}
!603 = metadata !{i32 786689, metadata !599, metadata !"path", metadata !448, i32 16777748, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 532]
!604 = metadata !{i32 786689, metadata !599, metadata !"buf", metadata !448, i32 33554964, metadata !460, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 532]
!605 = metadata !{i32 786688, metadata !599, metadata !"dfile", metadata !448, i32 533, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 533]
!606 = metadata !{i32 786688, metadata !607, metadata !"r", metadata !448, i32 541, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 541]
!607 = metadata !{i32 786443, metadata !426, metadata !599, i32 539, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!608 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fstatat", metadata !"fstatat", metadata !"", i32 551, metadata !609, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*, i32)* @fstatat, null, null,
!609 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!610 = metadata !{metadata !8, metadata !8, metadata !60, metadata !611, metadata !8}
!611 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !612} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!612 = metadata !{i32 786451, metadata !139, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !613, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!613 = metadata !{metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628}
!614 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!615 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !310} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!616 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !147} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!617 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !149} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!618 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!619 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !153} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!620 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!621 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !142} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!622 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !157} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!623 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !159} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!624 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !320} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!625 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !475} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!626 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !475} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!627 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !475} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!628 = metadata !{i32 786445, metadata !139, metadata !612, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !173} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!629 = metadata !{metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !637, metadata !638}
!630 = metadata !{i32 786689, metadata !608, metadata !"fd", metadata !448, i32 16777767, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 551]
!631 = metadata !{i32 786689, metadata !608, metadata !"path", metadata !448, i32 33554983, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 551]
!632 = metadata !{i32 786689, metadata !608, metadata !"buf", metadata !448, i32 50332199, metadata !611, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 551]
!633 = metadata !{i32 786689, metadata !608, metadata !"flags", metadata !448, i32 67109415, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 551]
!634 = metadata !{i32 786688, metadata !635, metadata !"f", metadata !448, i32 553, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 553]
!635 = metadata !{i32 786443, metadata !426, metadata !636, i32 552, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!636 = metadata !{i32 786443, metadata !426, metadata !608, i32 552, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!637 = metadata !{i32 786688, metadata !608, metadata !"dfile", metadata !448, i32 565, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 565]
!638 = metadata !{i32 786688, metadata !608, metadata !"r", metadata !448, i32 572, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 572]
!639 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"", i32 587, metadata !600, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64.16*)* @__fd_lstat, null, n
!640 = metadata !{metadata !641, metadata !642, metadata !643, metadata !644}
!641 = metadata !{i32 786689, metadata !639, metadata !"path", metadata !448, i32 16777803, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 587]
!642 = metadata !{i32 786689, metadata !639, metadata !"buf", metadata !448, i32 33555019, metadata !460, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 587]
!643 = metadata !{i32 786688, metadata !639, metadata !"dfile", metadata !448, i32 588, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 588]
!644 = metadata !{i32 786688, metadata !645, metadata !"r", metadata !448, i32 596, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 596]
!645 = metadata !{i32 786443, metadata !426, metadata !639, i32 594, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!646 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"chdir", metadata !"chdir", metadata !"", i32 606, metadata !647, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chdir, null, null, metadata !649, i32 606} ; [ DW
!647 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!648 = metadata !{metadata !8, metadata !60}
!649 = metadata !{metadata !650, metadata !651, metadata !652}
!650 = metadata !{i32 786689, metadata !646, metadata !"path", metadata !448, i32 16777822, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 606]
!651 = metadata !{i32 786688, metadata !646, metadata !"dfile", metadata !448, i32 607, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 607]
!652 = metadata !{i32 786688, metadata !653, metadata !"r", metadata !448, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 617]
!653 = metadata !{i32 786443, metadata !426, metadata !646, i32 616, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!654 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fchdir", metadata !"fchdir", metadata !"", i32 624, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fchdir, null, null, metadata !655, i32 624} ; [
!655 = metadata !{metadata !656, metadata !657, metadata !658}
!656 = metadata !{i32 786689, metadata !654, metadata !"fd", metadata !448, i32 16777840, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 624]
!657 = metadata !{i32 786688, metadata !654, metadata !"f", metadata !448, i32 625, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 625]
!658 = metadata !{i32 786688, metadata !659, metadata !"r", metadata !448, i32 637, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 637]
!659 = metadata !{i32 786443, metadata !426, metadata !660, i32 636, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!660 = metadata !{i32 786443, metadata !426, metadata !654, i32 632, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!661 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"chmod", metadata !"chmod", metadata !"", i32 658, metadata !662, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @chmod, null, null, metadata !664, i32 658} ;
!662 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!663 = metadata !{metadata !8, metadata !60, metadata !488}
!664 = metadata !{metadata !665, metadata !666, metadata !667, metadata !668}
!665 = metadata !{i32 786689, metadata !661, metadata !"path", metadata !448, i32 16777874, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 658]
!666 = metadata !{i32 786689, metadata !661, metadata !"mode", metadata !448, i32 33555090, metadata !488, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 658]
!667 = metadata !{i32 786688, metadata !661, metadata !"dfile", metadata !448, i32 661, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 661]
!668 = metadata !{i32 786688, metadata !669, metadata !"r", metadata !448, i32 673, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 673]
!669 = metadata !{i32 786443, metadata !426, metadata !670, i32 672, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!670 = metadata !{i32 786443, metadata !426, metadata !661, i32 670, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!671 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fchmod", metadata !"fchmod", metadata !"", i32 680, metadata !672, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @fchmod, null, null, metadata !674, i32 680
!672 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !673, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!673 = metadata !{metadata !8, metadata !8, metadata !488}
!674 = metadata !{metadata !675, metadata !676, metadata !677, metadata !678}
!675 = metadata !{i32 786689, metadata !671, metadata !"fd", metadata !448, i32 16777896, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 680]
!676 = metadata !{i32 786689, metadata !671, metadata !"mode", metadata !448, i32 33555112, metadata !488, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 680]
!677 = metadata !{i32 786688, metadata !671, metadata !"f", metadata !448, i32 683, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 683]
!678 = metadata !{i32 786688, metadata !679, metadata !"r", metadata !448, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 700]
!679 = metadata !{i32 786443, metadata !426, metadata !680, i32 699, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!680 = metadata !{i32 786443, metadata !426, metadata !671, i32 697, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!681 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"chown", metadata !"chown", metadata !"", i32 713, metadata !682, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @chown, null, null, metadata !686, i32 7
!682 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !683, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!683 = metadata !{metadata !8, metadata !60, metadata !684, metadata !685}
!684 = metadata !{i32 786454, metadata !426, null, metadata !"uid_t", i32 80, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [uid_t] [line 80, size 0, align 0, offset 0] [from __uid_t]
!685 = metadata !{i32 786454, metadata !426, null, metadata !"gid_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [gid_t] [line 65, size 0, align 0, offset 0] [from __gid_t]
!686 = metadata !{metadata !687, metadata !688, metadata !689, metadata !690, metadata !691}
!687 = metadata !{i32 786689, metadata !681, metadata !"path", metadata !448, i32 16777929, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 713]
!688 = metadata !{i32 786689, metadata !681, metadata !"owner", metadata !448, i32 33555145, metadata !684, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 713]
!689 = metadata !{i32 786689, metadata !681, metadata !"group", metadata !448, i32 50332361, metadata !685, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 713]
!690 = metadata !{i32 786688, metadata !681, metadata !"df", metadata !448, i32 714, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 714]
!691 = metadata !{i32 786688, metadata !692, metadata !"r", metadata !448, i32 719, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 719]
!692 = metadata !{i32 786443, metadata !426, metadata !693, i32 718, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!693 = metadata !{i32 786443, metadata !426, metadata !681, i32 716, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!694 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fchown", metadata !"fchown", metadata !"", i32 726, metadata !695, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @fchown, null, null, metadata !697, i3
!695 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!696 = metadata !{metadata !8, metadata !8, metadata !684, metadata !685}
!697 = metadata !{metadata !698, metadata !699, metadata !700, metadata !701, metadata !702}
!698 = metadata !{i32 786689, metadata !694, metadata !"fd", metadata !448, i32 16777942, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 726]
!699 = metadata !{i32 786689, metadata !694, metadata !"owner", metadata !448, i32 33555158, metadata !684, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 726]
!700 = metadata !{i32 786689, metadata !694, metadata !"group", metadata !448, i32 50332374, metadata !685, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 726]
!701 = metadata !{i32 786688, metadata !694, metadata !"f", metadata !448, i32 727, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 727]
!702 = metadata !{i32 786688, metadata !703, metadata !"r", metadata !448, i32 737, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 737]
!703 = metadata !{i32 786443, metadata !426, metadata !704, i32 736, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!704 = metadata !{i32 786443, metadata !426, metadata !694, i32 734, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!705 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"lchown", metadata !"lchown", metadata !"", i32 744, metadata !682, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @lchown, null, null, metadata !706, i3
!706 = metadata !{metadata !707, metadata !708, metadata !709, metadata !710, metadata !711}
!707 = metadata !{i32 786689, metadata !705, metadata !"path", metadata !448, i32 16777960, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 744]
!708 = metadata !{i32 786689, metadata !705, metadata !"owner", metadata !448, i32 33555176, metadata !684, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 744]
!709 = metadata !{i32 786689, metadata !705, metadata !"group", metadata !448, i32 50332392, metadata !685, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 744]
!710 = metadata !{i32 786688, metadata !705, metadata !"df", metadata !448, i32 746, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 746]
!711 = metadata !{i32 786688, metadata !712, metadata !"r", metadata !448, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 751]
!712 = metadata !{i32 786443, metadata !426, metadata !713, i32 750, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!713 = metadata !{i32 786443, metadata !426, metadata !705, i32 748, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!714 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"", i32 758, metadata !715, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64.16*)* @__fd_fstat, null, n
!715 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !716, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!716 = metadata !{metadata !8, metadata !8, metadata !460}
!717 = metadata !{metadata !718, metadata !719, metadata !720, metadata !721}
!718 = metadata !{i32 786689, metadata !714, metadata !"fd", metadata !448, i32 16777974, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 758]
!719 = metadata !{i32 786689, metadata !714, metadata !"buf", metadata !448, i32 33555190, metadata !460, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 758]
!720 = metadata !{i32 786688, metadata !714, metadata !"f", metadata !448, i32 759, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 759]
!721 = metadata !{i32 786688, metadata !722, metadata !"r", metadata !448, i32 768, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 768]
!722 = metadata !{i32 786443, metadata !426, metadata !723, i32 766, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!723 = metadata !{i32 786443, metadata !426, metadata !714, i32 766, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!724 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"", i32 781, metadata !725, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @__fd_ftruncate, null, null
!725 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !726, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!726 = metadata !{metadata !8, metadata !8, metadata !226}
!727 = metadata !{metadata !728, metadata !729, metadata !730, metadata !731}
!728 = metadata !{i32 786689, metadata !724, metadata !"fd", metadata !448, i32 16777997, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 781]
!729 = metadata !{i32 786689, metadata !724, metadata !"length", metadata !448, i32 33555213, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 781]
!730 = metadata !{i32 786688, metadata !724, metadata !"f", metadata !448, i32 783, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 783]
!731 = metadata !{i32 786688, metadata !732, metadata !"r", metadata !448, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 804]
!732 = metadata !{i32 786443, metadata !426, metadata !733, i32 802, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!733 = metadata !{i32 786443, metadata !426, metadata !724, i32 798, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!734 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"", i32 814, metadata !735, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent64.13*, i32)* @__fd_g
!735 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !736, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!736 = metadata !{metadata !8, metadata !39, metadata !737, metadata !39}
!737 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !738} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent64]
!738 = metadata !{i32 786451, metadata !408, null, metadata !"dirent64", i32 37, i64 2240, i64 64, i32 0, i32 0, null, metadata !739, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent64] [line 37, size 2240, align 64, offset 0] [def] [from ]
!739 = metadata !{metadata !740, metadata !741, metadata !742, metadata !743, metadata !744}
!740 = metadata !{i32 786445, metadata !408, metadata !738, metadata !"d_ino", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [d_ino] [line 39, size 64, align 64, offset 0] [from __ino64_t]
!741 = metadata !{i32 786445, metadata !408, metadata !738, metadata !"d_off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [d_off] [line 40, size 64, align 64, offset 64] [from __off64_t]
!742 = metadata !{i32 786445, metadata !408, metadata !738, metadata !"d_reclen", i32 41, i64 16, i64 16, i64 128, i32 0, metadata !414} ; [ DW_TAG_member ] [d_reclen] [line 41, size 16, align 16, offset 128] [from unsigned short]
!743 = metadata !{i32 786445, metadata !408, metadata !738, metadata !"d_type", i32 42, i64 8, i64 8, i64 144, i32 0, metadata !416} ; [ DW_TAG_member ] [d_type] [line 42, size 8, align 8, offset 144] [from unsigned char]
!744 = metadata !{i32 786445, metadata !408, metadata !738, metadata !"d_name", i32 43, i64 2048, i64 8, i64 152, i32 0, metadata !418} ; [ DW_TAG_member ] [d_name] [line 43, size 2048, align 8, offset 152] [from ]
!745 = metadata !{metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !755, metadata !756, metadata !757, metadata !760, metadata !762, metadata !763, metadata !764, metadata !767}
!746 = metadata !{i32 786689, metadata !734, metadata !"fd", metadata !448, i32 16778030, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 814]
!747 = metadata !{i32 786689, metadata !734, metadata !"dirp", metadata !448, i32 33555246, metadata !737, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 814]
!748 = metadata !{i32 786689, metadata !734, metadata !"count", metadata !448, i32 50332462, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 814]
!749 = metadata !{i32 786688, metadata !734, metadata !"f", metadata !448, i32 815, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 815]
!750 = metadata !{i32 786688, metadata !751, metadata !"i", metadata !448, i32 829, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 829]
!751 = metadata !{i32 786443, metadata !426, metadata !752, i32 827, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!752 = metadata !{i32 786443, metadata !426, metadata !753, i32 827, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!753 = metadata !{i32 786443, metadata !426, metadata !754, i32 826, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!754 = metadata !{i32 786443, metadata !426, metadata !734, i32 822, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!755 = metadata !{i32 786688, metadata !751, metadata !"pad", metadata !448, i32 829, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pad] [line 829]
!756 = metadata !{i32 786688, metadata !751, metadata !"bytes", metadata !448, i32 829, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 829]
!757 = metadata !{i32 786688, metadata !758, metadata !"df", metadata !448, i32 839, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 839]
!758 = metadata !{i32 786443, metadata !426, metadata !759, i32 838, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!759 = metadata !{i32 786443, metadata !426, metadata !751, i32 838, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!760 = metadata !{i32 786688, metadata !761, metadata !"os_pos", metadata !448, i32 862, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_pos] [line 862]
!761 = metadata !{i32 786443, metadata !426, metadata !752, i32 861, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!762 = metadata !{i32 786688, metadata !761, metadata !"res", metadata !448, i32 863, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 863]
!763 = metadata !{i32 786688, metadata !761, metadata !"s", metadata !448, i32 864, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 864]
!764 = metadata !{i32 786688, metadata !765, metadata !"pos", metadata !448, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 880]
!765 = metadata !{i32 786443, metadata !426, metadata !766, i32 879, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!766 = metadata !{i32 786443, metadata !426, metadata !761, i32 877, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!767 = metadata !{i32 786688, metadata !768, metadata !"dp", metadata !448, i32 886, metadata !737, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 886]
!768 = metadata !{i32 786443, metadata !426, metadata !765, i32 885, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!769 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"ioctl", metadata !"ioctl", metadata !"", i32 898, metadata !770, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64, ...)* @ioctl, null, null, metadata !772, i32 8
!770 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !771, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!771 = metadata !{metadata !8, metadata !8, metadata !143}
!772 = metadata !{metadata !773, metadata !774, metadata !775, metadata !776, metadata !788, metadata !789, metadata !792, metadata !811, metadata !821, metadata !823}
!773 = metadata !{i32 786689, metadata !769, metadata !"fd", metadata !448, i32 16778114, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 898]
!774 = metadata !{i32 786689, metadata !769, metadata !"request", metadata !448, i32 33555330, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [request] [line 898]
!775 = metadata !{i32 786688, metadata !769, metadata !"f", metadata !448, i32 902, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 902]
!776 = metadata !{i32 786688, metadata !769, metadata !"ap", metadata !448, i32 903, metadata !777, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 903]
!777 = metadata !{i32 786454, metadata !426, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !778} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!778 = metadata !{i32 786454, metadata !426, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !779} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!779 = metadata !{i32 786454, metadata !426, null, metadata !"__builtin_va_list", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !780} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 903, size 0, align 0, offset 0] [from ]
!780 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !781, metadata !280, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!781 = metadata !{i32 786454, metadata !426, null, metadata !"__va_list_tag", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !782} ; [ DW_TAG_typedef ] [__va_list_tag] [line 903, size 0, align 0, offset 0] [from __va_list_tag]
!782 = metadata !{i32 786451, metadata !426, null, metadata !"__va_list_tag", i32 903, i64 192, i64 64, i32 0, i32 0, null, metadata !783, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 903, size 192, align 64, offset 0] [def]
!783 = metadata !{metadata !784, metadata !785, metadata !786, metadata !787}
!784 = metadata !{i32 786445, metadata !426, metadata !782, metadata !"gp_offset", i32 903, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [gp_offset] [line 903, size 32, align 32, offset 0] [from unsigned int]
!785 = metadata !{i32 786445, metadata !426, metadata !782, metadata !"fp_offset", i32 903, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [fp_offset] [line 903, size 32, align 32, offset 32] [from unsigned int]
!786 = metadata !{i32 786445, metadata !426, metadata !782, metadata !"overflow_arg_area", i32 903, i64 64, i64 64, i64 64, i32 0, metadata !278} ; [ DW_TAG_member ] [overflow_arg_area] [line 903, size 64, align 64, offset 64] [from ]
!787 = metadata !{i32 786445, metadata !426, metadata !782, metadata !"reg_save_area", i32 903, i64 64, i64 64, i64 128, i32 0, metadata !278} ; [ DW_TAG_member ] [reg_save_area] [line 903, size 64, align 64, offset 128] [from ]
!788 = metadata !{i32 786688, metadata !769, metadata !"buf", metadata !448, i32 904, metadata !278, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 904]
!789 = metadata !{i32 786688, metadata !790, metadata !"stat", metadata !448, i32 920, metadata !611, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 920]
!790 = metadata !{i32 786443, metadata !426, metadata !791, i32 919, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!791 = metadata !{i32 786443, metadata !426, metadata !769, i32 919, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!792 = metadata !{i32 786688, metadata !793, metadata !"ts", metadata !448, i32 924, metadata !795, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 924]
!793 = metadata !{i32 786443, metadata !426, metadata !794, i32 923, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!794 = metadata !{i32 786443, metadata !426, metadata !790, i32 922, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!795 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !796} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!796 = metadata !{i32 786451, metadata !797, null, metadata !"termios", i32 28, i64 480, i64 32, i32 0, i32 0, null, metadata !798, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 28, size 480, align 32, offset 0] [def] [from ]
!797 = metadata !{metadata !"/usr/include/bits/termios.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!798 = metadata !{metadata !799, metadata !801, metadata !802, metadata !803, metadata !804, metadata !806, metadata !808, metadata !810}
!799 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_iflag", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !800} ; [ DW_TAG_member ] [c_iflag] [line 30, size 32, align 32, offset 0] [from tcflag_t]
!800 = metadata !{i32 786454, metadata !797, null, metadata !"tcflag_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [tcflag_t] [line 25, size 0, align 0, offset 0] [from unsigned int]
!801 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_oflag", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !800} ; [ DW_TAG_member ] [c_oflag] [line 31, size 32, align 32, offset 32] [from tcflag_t]
!802 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_cflag", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !800} ; [ DW_TAG_member ] [c_cflag] [line 32, size 32, align 32, offset 64] [from tcflag_t]
!803 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_lflag", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !800} ; [ DW_TAG_member ] [c_lflag] [line 33, size 32, align 32, offset 96] [from tcflag_t]
!804 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_line", i32 34, i64 8, i64 8, i64 128, i32 0, metadata !805} ; [ DW_TAG_member ] [c_line] [line 34, size 8, align 8, offset 128] [from cc_t]
!805 = metadata !{i32 786454, metadata !797, null, metadata !"cc_t", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !416} ; [ DW_TAG_typedef ] [cc_t] [line 23, size 0, align 0, offset 0] [from unsigned char]
!806 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_cc", i32 35, i64 256, i64 8, i64 136, i32 0, metadata !807} ; [ DW_TAG_member ] [c_cc] [line 35, size 256, align 8, offset 136] [from ]
!807 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !805, metadata !229, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!808 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_ispeed", i32 36, i64 32, i64 32, i64 416, i32 0, metadata !809} ; [ DW_TAG_member ] [c_ispeed] [line 36, size 32, align 32, offset 416] [from speed_t]
!809 = metadata !{i32 786454, metadata !797, null, metadata !"speed_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [speed_t] [line 24, size 0, align 0, offset 0] [from unsigned int]
!810 = metadata !{i32 786445, metadata !797, metadata !796, metadata !"c_ospeed", i32 37, i64 32, i64 32, i64 448, i32 0, metadata !809} ; [ DW_TAG_member ] [c_ospeed] [line 37, size 32, align 32, offset 448] [from speed_t]
!811 = metadata !{i32 786688, metadata !812, metadata !"ws", metadata !448, i32 993, metadata !813, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ws] [line 993]
!812 = metadata !{i32 786443, metadata !426, metadata !794, i32 992, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!813 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !814} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from winsize]
!814 = metadata !{i32 786451, metadata !815, null, metadata !"winsize", i32 27, i64 64, i64 16, i32 0, i32 0, null, metadata !816, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [winsize] [line 27, size 64, align 16, offset 0] [def] [from ]
!815 = metadata !{metadata !"/usr/include/bits/ioctl-types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!816 = metadata !{metadata !817, metadata !818, metadata !819, metadata !820}
!817 = metadata !{i32 786445, metadata !815, metadata !814, metadata !"ws_row", i32 29, i64 16, i64 16, i64 0, i32 0, metadata !414} ; [ DW_TAG_member ] [ws_row] [line 29, size 16, align 16, offset 0] [from unsigned short]
!818 = metadata !{i32 786445, metadata !815, metadata !814, metadata !"ws_col", i32 30, i64 16, i64 16, i64 16, i32 0, metadata !414} ; [ DW_TAG_member ] [ws_col] [line 30, size 16, align 16, offset 16] [from unsigned short]
!819 = metadata !{i32 786445, metadata !815, metadata !814, metadata !"ws_xpixel", i32 31, i64 16, i64 16, i64 32, i32 0, metadata !414} ; [ DW_TAG_member ] [ws_xpixel] [line 31, size 16, align 16, offset 32] [from unsigned short]
!820 = metadata !{i32 786445, metadata !815, metadata !814, metadata !"ws_ypixel", i32 32, i64 16, i64 16, i64 48, i32 0, metadata !414} ; [ DW_TAG_member ] [ws_ypixel] [line 32, size 16, align 16, offset 48] [from unsigned short]
!821 = metadata !{i32 786688, metadata !822, metadata !"res", metadata !448, i32 1016, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1016]
!822 = metadata !{i32 786443, metadata !426, metadata !794, i32 1015, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!823 = metadata !{i32 786688, metadata !824, metadata !"r", metadata !448, i32 1041, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1041]
!824 = metadata !{i32 786443, metadata !426, metadata !791, i32 1040, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!825 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fcntl", metadata !"fcntl", metadata !"", i32 1048, metadata !826, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @fcntl, null, null, metadata !828, i32 
!826 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !827, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!827 = metadata !{metadata !8, metadata !8, metadata !8}
!828 = metadata !{metadata !829, metadata !830, metadata !831, metadata !832, metadata !833, metadata !834, metadata !839}
!829 = metadata !{i32 786689, metadata !825, metadata !"fd", metadata !448, i32 16778264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1048]
!830 = metadata !{i32 786689, metadata !825, metadata !"cmd", metadata !448, i32 33555480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1048]
!831 = metadata !{i32 786688, metadata !825, metadata !"f", metadata !448, i32 1049, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1049]
!832 = metadata !{i32 786688, metadata !825, metadata !"ap", metadata !448, i32 1050, metadata !777, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1050]
!833 = metadata !{i32 786688, metadata !825, metadata !"arg", metadata !448, i32 1051, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1051]
!834 = metadata !{i32 786688, metadata !835, metadata !"flags", metadata !448, i32 1070, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 1070]
!835 = metadata !{i32 786443, metadata !426, metadata !836, i32 1069, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!836 = metadata !{i32 786443, metadata !426, metadata !837, i32 1068, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!837 = metadata !{i32 786443, metadata !426, metadata !838, i32 1067, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!838 = metadata !{i32 786443, metadata !426, metadata !825, i32 1067, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!839 = metadata !{i32 786688, metadata !840, metadata !"r", metadata !448, i32 1096, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1096]
!840 = metadata !{i32 786443, metadata !426, metadata !838, i32 1095, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!841 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"", i32 1103, metadata !842, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs.11*)* @__fd_statfs, nul
!842 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !843, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!843 = metadata !{metadata !8, metadata !60, metadata !844}
!844 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !845} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!845 = metadata !{i32 786451, metadata !372, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !846, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!846 = metadata !{metadata !847, metadata !848, metadata !849, metadata !851, metadata !852, metadata !853, metadata !855, metadata !856, metadata !861, metadata !862, metadata !863, metadata !864}
!847 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!848 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !375} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!849 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_blocks", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !850} ; [ DW_TAG_member ] [f_blocks] [line 29, size 64, align 64, offset 128] [from __fsblkcnt_t]
!850 = metadata !{i32 786454, metadata !372, null, metadata !"__fsblkcnt_t", i32 162, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__fsblkcnt_t] [line 162, size 0, align 0, offset 0] [from long unsigned int]
!851 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_bfree", i32 30, i64 64, i64 64, i64 192, i32 0, metadata !850} ; [ DW_TAG_member ] [f_bfree] [line 30, size 64, align 64, offset 192] [from __fsblkcnt_t]
!852 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_bavail", i32 31, i64 64, i64 64, i64 256, i32 0, metadata !850} ; [ DW_TAG_member ] [f_bavail] [line 31, size 64, align 64, offset 256] [from __fsblkcnt_t]
!853 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_files", i32 32, i64 64, i64 64, i64 320, i32 0, metadata !854} ; [ DW_TAG_member ] [f_files] [line 32, size 64, align 64, offset 320] [from __fsfilcnt_t]
!854 = metadata !{i32 786454, metadata !372, null, metadata !"__fsfilcnt_t", i32 166, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [__fsfilcnt_t] [line 166, size 0, align 0, offset 0] [from long unsigned int]
!855 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_ffree", i32 33, i64 64, i64 64, i64 384, i32 0, metadata !854} ; [ DW_TAG_member ] [f_ffree] [line 33, size 64, align 64, offset 384] [from __fsfilcnt_t]
!856 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !857} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!857 = metadata !{i32 786454, metadata !372, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !858} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!858 = metadata !{i32 786451, metadata !387, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !859, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!859 = metadata !{metadata !860}
!860 = metadata !{i32 786445, metadata !387, metadata !858, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !390} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!861 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !375} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!862 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !375} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!863 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !375} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!864 = metadata !{i32 786445, metadata !372, metadata !845, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !397} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!865 = metadata !{metadata !866, metadata !867, metadata !868, metadata !869}
!866 = metadata !{i32 786689, metadata !841, metadata !"path", metadata !448, i32 16778319, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1103]
!867 = metadata !{i32 786689, metadata !841, metadata !"buf", metadata !448, i32 33555535, metadata !844, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1103]
!868 = metadata !{i32 786688, metadata !841, metadata !"dfile", metadata !448, i32 1104, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1104]
!869 = metadata !{i32 786688, metadata !870, metadata !"r", metadata !448, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1113]
!870 = metadata !{i32 786443, metadata !426, metadata !841, i32 1112, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!871 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fstatfs", metadata !"fstatfs", metadata !"", i32 1120, metadata !872, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.statfs.11*)* @fstatfs, null, null, met
!872 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !873, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!873 = metadata !{metadata !8, metadata !8, metadata !844}
!874 = metadata !{metadata !875, metadata !876, metadata !877, metadata !878}
!875 = metadata !{i32 786689, metadata !871, metadata !"fd", metadata !448, i32 16778336, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1120]
!876 = metadata !{i32 786689, metadata !871, metadata !"buf", metadata !448, i32 33555552, metadata !844, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1120]
!877 = metadata !{i32 786688, metadata !871, metadata !"f", metadata !448, i32 1121, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1121]
!878 = metadata !{i32 786688, metadata !879, metadata !"r", metadata !448, i32 1133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1133]
!879 = metadata !{i32 786443, metadata !426, metadata !880, i32 1132, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!880 = metadata !{i32 786443, metadata !426, metadata !871, i32 1128, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!881 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"fsync", metadata !"fsync", metadata !"", i32 1140, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fsync, null, null, metadata !882, i32 1140} ; [ 
!882 = metadata !{metadata !883, metadata !884, metadata !885}
!883 = metadata !{i32 786689, metadata !881, metadata !"fd", metadata !448, i32 16778356, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1140]
!884 = metadata !{i32 786688, metadata !881, metadata !"f", metadata !448, i32 1141, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1141]
!885 = metadata !{i32 786688, metadata !886, metadata !"r", metadata !448, i32 1149, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1149]
!886 = metadata !{i32 786443, metadata !426, metadata !887, i32 1148, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!887 = metadata !{i32 786443, metadata !426, metadata !888, i32 1146, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!888 = metadata !{i32 786443, metadata !426, metadata !881, i32 1143, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!889 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"dup2", metadata !"dup2", metadata !"", i32 1156, metadata !826, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dup2, null, null, metadata !890, i32 1156} ; 
!890 = metadata !{metadata !891, metadata !892, metadata !893, metadata !894}
!891 = metadata !{i32 786689, metadata !889, metadata !"oldfd", metadata !448, i32 16778372, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1156]
!892 = metadata !{i32 786689, metadata !889, metadata !"newfd", metadata !448, i32 33555588, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newfd] [line 1156]
!893 = metadata !{i32 786688, metadata !889, metadata !"f", metadata !448, i32 1157, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1157]
!894 = metadata !{i32 786688, metadata !895, metadata !"f2", metadata !448, i32 1163, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 1163]
!895 = metadata !{i32 786443, metadata !426, metadata !896, i32 1162, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!896 = metadata !{i32 786443, metadata !426, metadata !889, i32 1159, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!897 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"dup", metadata !"dup", metadata !"", i32 1181, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dup, null, null, metadata !898, i32 1181} ; [ DW_TAG
!898 = metadata !{metadata !899, metadata !900, metadata !901}
!899 = metadata !{i32 786689, metadata !897, metadata !"oldfd", metadata !448, i32 16778397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1181]
!900 = metadata !{i32 786688, metadata !897, metadata !"f", metadata !448, i32 1182, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1182]
!901 = metadata !{i32 786688, metadata !902, metadata !"fd", metadata !448, i32 1187, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 1187]
!902 = metadata !{i32 786443, metadata !426, metadata !903, i32 1186, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!903 = metadata !{i32 786443, metadata !426, metadata !897, i32 1183, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!904 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"rmdir", metadata !"rmdir", metadata !"", i32 1200, metadata !647, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @rmdir, null, null, metadata !905, i32 1200} ; [ 
!905 = metadata !{metadata !906, metadata !907}
!906 = metadata !{i32 786689, metadata !904, metadata !"pathname", metadata !448, i32 16778416, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1200]
!907 = metadata !{i32 786688, metadata !904, metadata !"dfile", metadata !448, i32 1201, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1201]
!908 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"unlink", metadata !"unlink", metadata !"", i32 1218, metadata !647, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @unlink, null, null, metadata !909, i32 1218} ;
!909 = metadata !{metadata !910, metadata !911}
!910 = metadata !{i32 786689, metadata !908, metadata !"pathname", metadata !448, i32 16778434, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1218]
!911 = metadata !{i32 786688, metadata !908, metadata !"dfile", metadata !448, i32 1219, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1219]
!912 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"unlinkat", metadata !"unlinkat", metadata !"", i32 1239, metadata !283, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @unlinkat, null, null, metadata !
!913 = metadata !{metadata !914, metadata !915, metadata !916, metadata !917}
!914 = metadata !{i32 786689, metadata !912, metadata !"dirfd", metadata !448, i32 16778455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirfd] [line 1239]
!915 = metadata !{i32 786689, metadata !912, metadata !"pathname", metadata !448, i32 33555671, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1239]
!916 = metadata !{i32 786689, metadata !912, metadata !"flags", metadata !448, i32 50332887, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 1239]
!917 = metadata !{i32 786688, metadata !912, metadata !"dfile", metadata !448, i32 1242, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1242]
!918 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"readlink", metadata !"readlink", metadata !"", i32 1262, metadata !919, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i8*, i64)* @readlink, null, null, metadata !
!919 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !920, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!920 = metadata !{metadata !564, metadata !60, metadata !13, metadata !566}
!921 = metadata !{metadata !922, metadata !923, metadata !924, metadata !925, metadata !926}
!922 = metadata !{i32 786689, metadata !918, metadata !"path", metadata !448, i32 16778478, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1262]
!923 = metadata !{i32 786689, metadata !918, metadata !"buf", metadata !448, i32 33555694, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1262]
!924 = metadata !{i32 786689, metadata !918, metadata !"bufsize", metadata !448, i32 50332910, metadata !566, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 1262]
!925 = metadata !{i32 786688, metadata !918, metadata !"dfile", metadata !448, i32 1263, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1263]
!926 = metadata !{i32 786688, metadata !927, metadata !"r", metadata !448, i32 1279, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1279]
!927 = metadata !{i32 786443, metadata !426, metadata !928, i32 1278, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!928 = metadata !{i32 786443, metadata !426, metadata !918, i32 1264, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!929 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"select", metadata !"select", metadata !"", i32 1294, metadata !930, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set
!930 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !931, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!931 = metadata !{metadata !8, metadata !8, metadata !932, metadata !932, metadata !932, metadata !942}
!932 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !933} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fd_set]
!933 = metadata !{i32 786454, metadata !426, null, metadata !"fd_set", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !934} ; [ DW_TAG_typedef ] [fd_set] [line 77, size 0, align 0, offset 0] [from ]
!934 = metadata !{i32 786451, metadata !935, null, metadata !"", i32 66, i64 1024, i64 64, i32 0, i32 0, null, metadata !936, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 66, size 1024, align 64, offset 0] [def] [from ]
!935 = metadata !{metadata !"/usr/include/sys/select.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!936 = metadata !{metadata !937}
!937 = metadata !{i32 786445, metadata !935, metadata !934, metadata !"fds_bits", i32 71, i64 1024, i64 64, i64 0, i32 0, metadata !938} ; [ DW_TAG_member ] [fds_bits] [line 71, size 1024, align 64, offset 0] [from ]
!938 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !939, metadata !940, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from __fd_mask]
!939 = metadata !{i32 786454, metadata !935, null, metadata !"__fd_mask", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__fd_mask] [line 56, size 0, align 0, offset 0] [from long int]
!940 = metadata !{metadata !941}
!941 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!942 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !532} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from timeval]
!943 = metadata !{metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !9
!944 = metadata !{i32 786689, metadata !929, metadata !"nfds", metadata !448, i32 16778510, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfds] [line 1294]
!945 = metadata !{i32 786689, metadata !929, metadata !"read", metadata !448, i32 33555726, metadata !932, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [read] [line 1294]
!946 = metadata !{i32 786689, metadata !929, metadata !"write", metadata !448, i32 50332942, metadata !932, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [write] [line 1294]
!947 = metadata !{i32 786689, metadata !929, metadata !"except", metadata !448, i32 67110159, metadata !932, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [except] [line 1295]
!948 = metadata !{i32 786689, metadata !929, metadata !"timeout", metadata !448, i32 83887375, metadata !942, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timeout] [line 1295]
!949 = metadata !{i32 786688, metadata !929, metadata !"in_read", metadata !448, i32 1296, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_read] [line 1296]
!950 = metadata !{i32 786688, metadata !929, metadata !"in_write", metadata !448, i32 1296, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_write] [line 1296]
!951 = metadata !{i32 786688, metadata !929, metadata !"in_except", metadata !448, i32 1296, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_except] [line 1296]
!952 = metadata !{i32 786688, metadata !929, metadata !"os_read", metadata !448, i32 1296, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_read] [line 1296]
!953 = metadata !{i32 786688, metadata !929, metadata !"os_write", metadata !448, i32 1296, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_write] [line 1296]
!954 = metadata !{i32 786688, metadata !929, metadata !"os_except", metadata !448, i32 1296, metadata !933, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_except] [line 1296]
!955 = metadata !{i32 786688, metadata !929, metadata !"i", metadata !448, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1297]
!956 = metadata !{i32 786688, metadata !929, metadata !"count", metadata !448, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 1297]
!957 = metadata !{i32 786688, metadata !929, metadata !"os_nfds", metadata !448, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_nfds] [line 1297]
!958 = metadata !{i32 786688, metadata !959, metadata !"f", metadata !448, i32 1327, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1327]
!959 = metadata !{i32 786443, metadata !426, metadata !960, i32 1326, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!960 = metadata !{i32 786443, metadata !426, metadata !961, i32 1326, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!961 = metadata !{i32 786443, metadata !426, metadata !962, i32 1325, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!962 = metadata !{i32 786443, metadata !426, metadata !929, i32 1325, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!963 = metadata !{i32 786688, metadata !964, metadata !"tv", metadata !448, i32 1349, metadata !532, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 1349]
!964 = metadata !{i32 786443, metadata !426, metadata !965, i32 1346, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!965 = metadata !{i32 786443, metadata !426, metadata !929, i32 1346, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!966 = metadata !{i32 786688, metadata !964, metadata !"r", metadata !448, i32 1350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1350]
!967 = metadata !{i32 786688, metadata !968, metadata !"f", metadata !448, i32 1365, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1365]
!968 = metadata !{i32 786443, metadata !426, metadata !969, i32 1364, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!969 = metadata !{i32 786443, metadata !426, metadata !970, i32 1364, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!970 = metadata !{i32 786443, metadata !426, metadata !971, i32 1360, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!971 = metadata !{i32 786443, metadata !426, metadata !964, i32 1353, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!972 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"getcwd", metadata !"getcwd", metadata !"", i32 1380, metadata !973, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64)* @getcwd, null, null, metadata !975, i32 13
!973 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !974, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!974 = metadata !{metadata !13, metadata !13, metadata !566}
!975 = metadata !{metadata !976, metadata !977, metadata !978}
!976 = metadata !{i32 786689, metadata !972, metadata !"buf", metadata !448, i32 16778596, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1380]
!977 = metadata !{i32 786689, metadata !972, metadata !"size", metadata !448, i32 33555812, metadata !566, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1380]
!978 = metadata !{i32 786688, metadata !972, metadata !"r", metadata !448, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1382]
!979 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"chroot", metadata !"chroot", metadata !"", i32 1457, metadata !647, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chroot, null, null, metadata !980, i32 1457} ;
!980 = metadata !{metadata !981}
!981 = metadata !{i32 786689, metadata !979, metadata !"path", metadata !448, i32 16778673, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1457]
!982 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", i32 1428, metadata !983, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !985, 
!983 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !984, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!984 = metadata !{metadata !60, metadata !60}
!985 = metadata !{metadata !986, metadata !987, metadata !988, metadata !989, metadata !992}
!986 = metadata !{i32 786689, metadata !982, metadata !"s", metadata !448, i32 16778644, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1428]
!987 = metadata !{i32 786688, metadata !982, metadata !"sc", metadata !448, i32 1429, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1429]
!988 = metadata !{i32 786688, metadata !982, metadata !"i", metadata !448, i32 1430, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1430]
!989 = metadata !{i32 786688, metadata !990, metadata !"c", metadata !448, i32 1433, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1433]
!990 = metadata !{i32 786443, metadata !426, metadata !991, i32 1432, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!991 = metadata !{i32 786443, metadata !426, metadata !982, i32 1432, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!992 = metadata !{i32 786688, metadata !993, metadata !"cc", metadata !448, i32 1442, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 1442]
!993 = metadata !{i32 786443, metadata !426, metadata !994, i32 1441, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!994 = metadata !{i32 786443, metadata !426, metadata !990, i32 1434, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!995 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", i32 1422, metadata !996, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !998, i32 
!996 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !997, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!997 = metadata !{metadata !566, metadata !566}
!998 = metadata !{metadata !999, metadata !1000}
!999 = metadata !{i32 786689, metadata !995, metadata !"s", metadata !448, i32 16778638, metadata !566, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1422]
!1000 = metadata !{i32 786688, metadata !995, metadata !"sc", metadata !448, i32 1423, metadata !566, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1423]
!1001 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", i32 1415, metadata !1002, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1004, i32
!1002 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1003, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1003 = metadata !{metadata !278, metadata !578}
!1004 = metadata !{metadata !1005, metadata !1006}
!1005 = metadata !{i32 786689, metadata !1001, metadata !"p", metadata !448, i32 16778631, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1415]
!1006 = metadata !{i32 786688, metadata !1001, metadata !"pc", metadata !448, i32 1417, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 1417]
!1007 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__df_chown", metadata !"__df_chown", metadata !"", i32 707, metadata !1008, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1010, i32 707} ; [ DW_
!1008 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1009, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1009 = metadata !{metadata !8, metadata !453, metadata !684, metadata !685}
!1010 = metadata !{metadata !1011, metadata !1012, metadata !1013}
!1011 = metadata !{i32 786689, metadata !1007, metadata !"df", metadata !448, i32 16777923, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 707]
!1012 = metadata !{i32 786689, metadata !1007, metadata !"owner", metadata !448, i32 33555139, metadata !684, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 707]
!1013 = metadata !{i32 786689, metadata !1007, metadata !"group", metadata !448, i32 50332355, metadata !685, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 707]
!1014 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", i32 645, metadata !1015, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1017, i32 645} ; [ DW_
!1015 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1016, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1016 = metadata !{metadata !8, metadata !453, metadata !488}
!1017 = metadata !{metadata !1018, metadata !1019}
!1018 = metadata !{i32 786689, metadata !1014, metadata !"df", metadata !448, i32 16777861, metadata !453, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 645]
!1019 = metadata !{i32 786689, metadata !1014, metadata !"mode", metadata !448, i32 33555077, metadata !488, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 645]
!1020 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__get_file", metadata !"__get_file", metadata !"", i32 63, metadata !1021, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1023, i32 63} ; [ DW_TA
!1021 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1022, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1022 = metadata !{metadata !501, metadata !8}
!1023 = metadata !{metadata !1024, metadata !1025}
!1024 = metadata !{i32 786689, metadata !1020, metadata !"fd", metadata !448, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 63]
!1025 = metadata !{i32 786688, metadata !1026, metadata !"f", metadata !448, i32 65, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 65]
!1026 = metadata !{i32 786443, metadata !426, metadata !1027, i32 64, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1027 = metadata !{i32 786443, metadata !426, metadata !1020, i32 64, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1028 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"has_permission", metadata !"has_permission", metadata !"", i32 97, metadata !715, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1029, i32 97} ; 
!1029 = metadata !{metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034}
!1030 = metadata !{i32 786689, metadata !1028, metadata !"flags", metadata !448, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 97]
!1031 = metadata !{i32 786689, metadata !1028, metadata !"s", metadata !448, i32 33554529, metadata !460, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 97]
!1032 = metadata !{i32 786688, metadata !1028, metadata !"write_access", metadata !448, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_access] [line 98]
!1033 = metadata !{i32 786688, metadata !1028, metadata !"read_access", metadata !448, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [read_access] [line 98]
!1034 = metadata !{i32 786688, metadata !1028, metadata !"mode", metadata !448, i32 99, metadata !488, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 99]
!1035 = metadata !{i32 786478, metadata !426, metadata !448, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", i32 39, metadata !1036, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1038, i32 39} ;
!1036 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1037, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1037 = metadata !{metadata !453, metadata !60}
!1038 = metadata !{metadata !1039, metadata !1040, metadata !1041, metadata !1042}
!1039 = metadata !{i32 786689, metadata !1035, metadata !"pathname", metadata !448, i32 16777255, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 39]
!1040 = metadata !{i32 786688, metadata !1035, metadata !"c", metadata !448, i32 40, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 40]
!1041 = metadata !{i32 786688, metadata !1035, metadata !"i", metadata !448, i32 41, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!1042 = metadata !{i32 786688, metadata !1043, metadata !"df", metadata !448, i32 48, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 48]
!1043 = metadata !{i32 786443, metadata !426, metadata !1044, i32 47, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1044 = metadata !{i32 786443, metadata !426, metadata !1045, i32 47, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1045 = metadata !{i32 786443, metadata !426, metadata !1046, i32 46, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1046 = metadata !{i32 786443, metadata !426, metadata !1035, i32 46, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1047 = metadata !{metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054}
!1048 = metadata !{i32 786484, i32 0, metadata !554, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 304, metadata !8, i32 1, i32 1, i32* @close.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 304] [local] [def]
!1049 = metadata !{i32 786484, i32 0, metadata !561, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 336, metadata !8, i32 1, i32 1, i32* @read.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 336] [local] [def]
!1050 = metadata !{i32 786484, i32 0, metadata !575, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 404, metadata !8, i32 1, i32 1, i32* @write.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 404] [local] [def]
!1051 = metadata !{i32 786484, i32 0, metadata !661, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 659, metadata !8, i32 1, i32 1, i32* @chmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 659] [local] [def]
!1052 = metadata !{i32 786484, i32 0, metadata !671, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 681, metadata !8, i32 1, i32 1, i32* @fchmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 681] [local] [def]
!1053 = metadata !{i32 786484, i32 0, metadata !724, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 782, metadata !8, i32 1, i32 1, i32* @__fd_ftruncate.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 782] [local] [def]
!1054 = metadata !{i32 786484, i32 0, metadata !972, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !448, i32 1381, metadata !8, i32 1, i32 1, i32* @getcwd.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 1381] [local] [def]
!1055 = metadata !{i32 786449, metadata !1056, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1056 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1057 = metadata !{metadata !1058, metadata !1065, metadata !1071}
!1058 = metadata !{i32 786478, metadata !1056, metadata !1059, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !1060, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1059 = metadata !{i32 786473, metadata !1056}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!1060 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1061, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1061 = metadata !{metadata !1062, metadata !1062}
!1062 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!1063 = metadata !{metadata !1064}
!1064 = metadata !{i32 786689, metadata !1058, metadata !"d", metadata !1059, i32 16777227, metadata !1062, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1065 = metadata !{i32 786478, metadata !1056, metadata !1059, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !1066, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1066 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1067, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1067 = metadata !{metadata !1068, metadata !1068}
!1068 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!1069 = metadata !{metadata !1070}
!1070 = metadata !{i32 786689, metadata !1065, metadata !"f", metadata !1059, i32 16777231, metadata !1068, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1071 = metadata !{i32 786478, metadata !1056, metadata !1059, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !1072, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1072 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1073, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1073 = metadata !{metadata !1074, metadata !1074}
!1074 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!1075 = metadata !{metadata !1076}
!1076 = metadata !{i32 786689, metadata !1071, metadata !"f", metadata !1059, i32 16777236, metadata !1074, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1077 = metadata !{i32 786449, metadata !1078, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1078 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fenv.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1079 = metadata !{metadata !1080, metadata !1089}
!1080 = metadata !{i32 786436, metadata !1081, null, metadata !"KleeRoundingMode", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !1082, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KleeRoundingMode] [line 185, size 32, align 32, offset
!1081 = metadata !{metadata !"/home/user/klee/include/klee/klee.h", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1082 = metadata !{metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088}
!1083 = metadata !{i32 786472, metadata !"KLEE_FP_RNE", i64 0} ; [ DW_TAG_enumerator ] [KLEE_FP_RNE :: 0]
!1084 = metadata !{i32 786472, metadata !"KLEE_FP_RNA", i64 1} ; [ DW_TAG_enumerator ] [KLEE_FP_RNA :: 1]
!1085 = metadata !{i32 786472, metadata !"KLEE_FP_RU", i64 2} ; [ DW_TAG_enumerator ] [KLEE_FP_RU :: 2]
!1086 = metadata !{i32 786472, metadata !"KLEE_FP_RD", i64 3} ; [ DW_TAG_enumerator ] [KLEE_FP_RD :: 3]
!1087 = metadata !{i32 786472, metadata !"KLEE_FP_RZ", i64 4} ; [ DW_TAG_enumerator ] [KLEE_FP_RZ :: 4]
!1088 = metadata !{i32 786472, metadata !"KLEE_FP_UNKNOWN", i64 5} ; [ DW_TAG_enumerator ] [KLEE_FP_UNKNOWN :: 5]
!1089 = metadata !{i32 786436, metadata !1078, null, metadata !"", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !1090, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 15, size 32, align 32, offset 0] [def] [from ]
!1090 = metadata !{metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095}
!1091 = metadata !{i32 786472, metadata !"FE_TONEAREST", i64 0} ; [ DW_TAG_enumerator ] [FE_TONEAREST :: 0]
!1092 = metadata !{i32 786472, metadata !"FE_DOWNWARD", i64 1024} ; [ DW_TAG_enumerator ] [FE_DOWNWARD :: 1024]
!1093 = metadata !{i32 786472, metadata !"FE_UPWARD", i64 2048} ; [ DW_TAG_enumerator ] [FE_UPWARD :: 2048]
!1094 = metadata !{i32 786472, metadata !"FE_TOWARDZERO", i64 3072} ; [ DW_TAG_enumerator ] [FE_TOWARDZERO :: 3072]
!1095 = metadata !{i32 786472, metadata !"FE_TONEAREST_TIES_TO_AWAY", i64 3073} ; [ DW_TAG_enumerator ] [FE_TONEAREST_TIES_TO_AWAY :: 3073]
!1096 = metadata !{metadata !1097, metadata !1103}
!1097 = metadata !{i32 786478, metadata !1078, metadata !1098, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !1099, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_intern
!1098 = metadata !{i32 786473, metadata !1078}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!1099 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1100, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1100 = metadata !{metadata !8}
!1101 = metadata !{metadata !1102}
!1102 = metadata !{i32 786688, metadata !1097, metadata !"rm", metadata !1098, i32 34, metadata !1080, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!1103 = metadata !{i32 786478, metadata !1078, metadata !1098, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_inte
!1104 = metadata !{metadata !1105}
!1105 = metadata !{i32 786689, metadata !1103, metadata !"rm", metadata !1098, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!1106 = metadata !{i32 786449, metadata !1107, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1107 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1108 = metadata !{metadata !1109}
!1109 = metadata !{i32 786436, metadata !1107, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !1110, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!1110 = metadata !{metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115}
!1111 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!1112 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!1113 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!1114 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!1115 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!1116 = metadata !{metadata !1117, metadata !1123, metadata !1128, metadata !1133, metadata !1136, metadata !1139, metadata !1142, metadata !1145, metadata !1148}
!1117 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !1119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_
!1118 = metadata !{i32 786473, metadata !1107}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!1119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1120 = metadata !{metadata !8, metadata !1068}
!1121 = metadata !{metadata !1122}
!1122 = metadata !{i32 786689, metadata !1117, metadata !"f", metadata !1118, i32 16777232, metadata !1068, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!1123 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !1124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_i
!1124 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1125, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1125 = metadata !{metadata !8, metadata !1062}
!1126 = metadata !{metadata !1127}
!1127 = metadata !{i32 786689, metadata !1123, metadata !"d", metadata !1118, i32 16777237, metadata !1062, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!1128 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !1129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_intern
!1129 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1130, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1130 = metadata !{metadata !8, metadata !1074}
!1131 = metadata !{metadata !1132}
!1132 = metadata !{i32 786689, metadata !1128, metadata !"d", metadata !1118, i32 16777242, metadata !1074, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!1133 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !1119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee
!1134 = metadata !{metadata !1135}
!1135 = metadata !{i32 786689, metadata !1133, metadata !"f", metadata !1118, i32 16777283, metadata !1068, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!1136 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !1124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_
!1137 = metadata !{metadata !1138}
!1138 = metadata !{i32 786689, metadata !1136, metadata !"f", metadata !1118, i32 16777298, metadata !1062, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!1139 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !1129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @k
!1140 = metadata !{metadata !1141}
!1141 = metadata !{i32 786689, metadata !1139, metadata !"ld", metadata !1118, i32 16777314, metadata !1074, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!1142 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !1119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_intern
!1143 = metadata !{metadata !1144}
!1144 = metadata !{i32 786689, metadata !1142, metadata !"f", metadata !1118, i32 16777330, metadata !1068, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!1145 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !1124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_interna
!1146 = metadata !{metadata !1147}
!1147 = metadata !{i32 786689, metadata !1145, metadata !"f", metadata !1118, i32 16777335, metadata !1062, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!1148 = metadata !{i32 786478, metadata !1107, metadata !1118, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !1129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_int
!1149 = metadata !{metadata !1150}
!1150 = metadata !{i32 786689, metadata !1148, metadata !"f", metadata !1118, i32 16777340, metadata !1074, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!1151 = metadata !{i32 786449, metadata !1152, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1152 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1153 = metadata !{metadata !1154}
!1154 = metadata !{i32 786478, metadata !1152, metadata !1155, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !1156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_che
!1155 = metadata !{i32 786473, metadata !1152}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!1156 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1157, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1157 = metadata !{null, metadata !1158}
!1158 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!1159 = metadata !{metadata !1160}
!1160 = metadata !{i32 786689, metadata !1154, metadata !"z", metadata !1155, i32 16777228, metadata !1158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!1161 = metadata !{i32 786449, metadata !1162, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1162 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1163 = metadata !{metadata !1164}
!1164 = metadata !{i32 786478, metadata !1162, metadata !1165, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !647, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !1166, i32
!1165 = metadata !{i32 786473, metadata !1162}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!1166 = metadata !{metadata !1167, metadata !1168}
!1167 = metadata !{i32 786689, metadata !1164, metadata !"name", metadata !1165, i32 16777229, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1168 = metadata !{i32 786688, metadata !1164, metadata !"x", metadata !1165, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1169 = metadata !{i32 786449, metadata !1170, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1170 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1171 = metadata !{metadata !1172}
!1172 = metadata !{i32 786478, metadata !1170, metadata !1173, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !1174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overs
!1173 = metadata !{i32 786473, metadata !1170}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!1174 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1175, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1175 = metadata !{null, metadata !1176, metadata !1176}
!1176 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!1177 = metadata !{metadata !1178, metadata !1179}
!1178 = metadata !{i32 786689, metadata !1172, metadata !"bitWidth", metadata !1173, i32 16777236, metadata !1176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!1179 = metadata !{i32 786689, metadata !1172, metadata !"shift", metadata !1173, i32 33554452, metadata !1176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!1180 = metadata !{i32 786449, metadata !1181, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1181 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1182 = metadata !{metadata !1183}
!1183 = metadata !{i32 786478, metadata !1181, metadata !1184, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !1185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, me
!1184 = metadata !{i32 786473, metadata !1181}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!1185 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1186, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1186 = metadata !{metadata !8, metadata !8, metadata !8, metadata !60}
!1187 = metadata !{metadata !1188, metadata !1189, metadata !1190, metadata !1191}
!1188 = metadata !{i32 786689, metadata !1183, metadata !"start", metadata !1184, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!1189 = metadata !{i32 786689, metadata !1183, metadata !"end", metadata !1184, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!1190 = metadata !{i32 786689, metadata !1183, metadata !"name", metadata !1184, i32 50331661, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1191 = metadata !{i32 786688, metadata !1183, metadata !"x", metadata !1184, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1192 = metadata !{i32 786449, metadata !1193, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1193 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1194 = metadata !{metadata !1080}
!1195 = metadata !{metadata !1196}
!1196 = metadata !{i32 786478, metadata !1193, metadata !1197, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !1198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_ro
!1197 = metadata !{i32 786473, metadata !1193}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!1198 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1199, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1199 = metadata !{null, metadata !1080}
!1200 = metadata !{metadata !1201}
!1201 = metadata !{i32 786689, metadata !1196, metadata !"rm", metadata !1197, i32 16777232, metadata !1080, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!1202 = metadata !{i32 786449, metadata !1203, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1203 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1204 = metadata !{metadata !1205}
!1205 = metadata !{i32 786478, metadata !1203, metadata !1206, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !1207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !1210
!1206 = metadata !{i32 786473, metadata !1203}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!1207 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1208, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1208 = metadata !{metadata !278, metadata !278, metadata !578, metadata !1209}
!1209 = metadata !{i32 786454, metadata !1203, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1210 = metadata !{metadata !1211, metadata !1212, metadata !1213, metadata !1214, metadata !1215}
!1211 = metadata !{i32 786689, metadata !1205, metadata !"destaddr", metadata !1206, i32 16777228, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!1212 = metadata !{i32 786689, metadata !1205, metadata !"srcaddr", metadata !1206, i32 33554444, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!1213 = metadata !{i32 786689, metadata !1205, metadata !"len", metadata !1206, i32 50331660, metadata !1209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!1214 = metadata !{i32 786688, metadata !1205, metadata !"dest", metadata !1206, i32 13, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!1215 = metadata !{i32 786688, metadata !1205, metadata !"src", metadata !1206, i32 14, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!1216 = metadata !{i32 786449, metadata !1217, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1217 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1218 = metadata !{metadata !1219}
!1219 = metadata !{i32 786478, metadata !1217, metadata !1220, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !1221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !1
!1220 = metadata !{i32 786473, metadata !1217}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!1221 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1222, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1222 = metadata !{metadata !278, metadata !278, metadata !578, metadata !1223}
!1223 = metadata !{i32 786454, metadata !1217, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1224 = metadata !{metadata !1225, metadata !1226, metadata !1227, metadata !1228, metadata !1229}
!1225 = metadata !{i32 786689, metadata !1219, metadata !"dst", metadata !1220, i32 16777228, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!1226 = metadata !{i32 786689, metadata !1219, metadata !"src", metadata !1220, i32 33554444, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!1227 = metadata !{i32 786689, metadata !1219, metadata !"count", metadata !1220, i32 50331660, metadata !1223, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!1228 = metadata !{i32 786688, metadata !1219, metadata !"a", metadata !1220, i32 13, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!1229 = metadata !{i32 786688, metadata !1219, metadata !"b", metadata !1220, i32 14, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!1230 = metadata !{i32 786449, metadata !1231, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1231 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1232 = metadata !{metadata !1233}
!1233 = metadata !{i32 786478, metadata !1231, metadata !1234, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !1235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !1
!1234 = metadata !{i32 786473, metadata !1231}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!1235 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1236, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1236 = metadata !{metadata !278, metadata !278, metadata !578, metadata !1237}
!1237 = metadata !{i32 786454, metadata !1231, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1238 = metadata !{metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243}
!1239 = metadata !{i32 786689, metadata !1233, metadata !"destaddr", metadata !1234, i32 16777227, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!1240 = metadata !{i32 786689, metadata !1233, metadata !"srcaddr", metadata !1234, i32 33554443, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!1241 = metadata !{i32 786689, metadata !1233, metadata !"len", metadata !1234, i32 50331659, metadata !1237, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!1242 = metadata !{i32 786688, metadata !1233, metadata !"dest", metadata !1234, i32 12, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!1243 = metadata !{i32 786688, metadata !1233, metadata !"src", metadata !1234, i32 13, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!1244 = metadata !{i32 786449, metadata !1245, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1245 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1246 = metadata !{metadata !1247}
!1247 = metadata !{i32 786478, metadata !1245, metadata !1248, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !1249, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !1252
!1248 = metadata !{i32 786473, metadata !1245}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!1249 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1250, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1250 = metadata !{metadata !278, metadata !278, metadata !8, metadata !1251}
!1251 = metadata !{i32 786454, metadata !1245, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1252 = metadata !{metadata !1253, metadata !1254, metadata !1255, metadata !1256}
!1253 = metadata !{i32 786689, metadata !1247, metadata !"dst", metadata !1248, i32 16777227, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!1254 = metadata !{i32 786689, metadata !1247, metadata !"s", metadata !1248, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!1255 = metadata !{i32 786689, metadata !1247, metadata !"count", metadata !1248, i32 50331659, metadata !1251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!1256 = metadata !{i32 786688, metadata !1247, metadata !"a", metadata !1248, i32 12, metadata !1257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!1257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1258 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!1259 = metadata !{i32 786449, metadata !1260, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1260 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1261 = metadata !{metadata !1262, metadata !1266, metadata !1269}
!1262 = metadata !{i32 786478, metadata !1260, metadata !1263, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !1060, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1263 = metadata !{i32 786473, metadata !1260}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!1264 = metadata !{metadata !1265}
!1265 = metadata !{i32 786689, metadata !1262, metadata !"d", metadata !1263, i32 16777227, metadata !1062, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1266 = metadata !{i32 786478, metadata !1260, metadata !1263, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !1066, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1267 = metadata !{metadata !1268}
!1268 = metadata !{i32 786689, metadata !1266, metadata !"f", metadata !1263, i32 16777231, metadata !1068, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1269 = metadata !{i32 786478, metadata !1260, metadata !1263, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !1072, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1270 = metadata !{metadata !1271}
!1271 = metadata !{i32 786689, metadata !1269, metadata !"f", metadata !1263, i32 16777236, metadata !1074, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1272 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!1273 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1274 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!1275 = metadata !{i32 13, i32 0, metadata !4, null}
!1276 = metadata !{i32 15, i32 0, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/df2cf_cp_l1_klee_annotated.c]
!1278 = metadata !{i32 16, i32 0, metadata !1277, null}
!1279 = metadata !{i32 18, i32 0, metadata !1277, null}
!1280 = metadata !{i32 19, i32 0, metadata !1277, null}
!1281 = metadata !{i32 21, i32 0, metadata !1277, null}
!1282 = metadata !{i32 22, i32 0, metadata !1277, null}
!1283 = metadata !{i32 24, i32 0, metadata !1277, null}
!1284 = metadata !{i32 25, i32 0, metadata !1277, null}
!1285 = metadata !{i32 27, i32 0, metadata !1277, null}
!1286 = metadata !{i32 28, i32 0, metadata !1277, null}
!1287 = metadata !{i32 30, i32 0, metadata !1277, null}
!1288 = metadata !{i32 31, i32 0, metadata !1277, null}
!1289 = metadata !{i32 33, i32 0, metadata !1277, null}
!1290 = metadata !{i32 34, i32 0, metadata !1277, null}
!1291 = metadata !{i32 36, i32 0, metadata !1277, null}
!1292 = metadata !{i32 37, i32 0, metadata !1277, null}
!1293 = metadata !{i32 39, i32 0, metadata !1277, null}
!1294 = metadata !{i32 40, i32 0, metadata !1277, null}
!1295 = metadata !{i32 42, i32 0, metadata !1277, null}
!1296 = metadata !{i32 43, i32 0, metadata !1277, null}
!1297 = metadata !{i32 45, i32 0, metadata !1277, null}
!1298 = metadata !{i32 46, i32 0, metadata !1277, null}
!1299 = metadata !{i32 48, i32 0, metadata !4, null}
!1300 = metadata !{i32 53, i32 0, metadata !10, null}
!1301 = metadata !{i32 54, i32 0, metadata !10, null}
!1302 = metadata !{i32 55, i32 0, metadata !10, null}
!1303 = metadata !{i32 56, i32 0, metadata !10, null}
!1304 = metadata !{i32 57, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !10, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/df2cf_cp_l1_klee_annotated.c]
!1306 = metadata !{i32 58, i32 0, metadata !1305, null} ; [ DW_TAG_imported_module ]
!1307 = metadata !{i32 60, i32 0, metadata !1305, null}
!1308 = metadata !{i32 61, i32 0, metadata !10, null}
!1309 = metadata !{i32 65, i32 0, metadata !14, null}
!1310 = metadata !{i32 66, i32 0, metadata !14, null}
!1311 = metadata !{i32 67, i32 0, metadata !14, null}
!1312 = metadata !{i32 86, i32 0, metadata !21, null}
!1313 = metadata !{metadata !1314, metadata !1314, i64 0}
!1314 = metadata !{metadata !"int", metadata !1315, i64 0}
!1315 = metadata !{metadata !"omnipotent char", metadata !1316, i64 0}
!1316 = metadata !{metadata !"Simple C/C++ TBAA"}
!1317 = metadata !{i32 87, i32 0, metadata !21, null}
!1318 = metadata !{metadata !1319, metadata !1319, i64 0}
!1319 = metadata !{metadata !"any pointer", metadata !1315, i64 0}
!1320 = metadata !{i32 90, i32 0, metadata !21, null}
!1321 = metadata !{i32 98, i32 0, metadata !21, null}
!1322 = metadata !{i32 102, i32 0, metadata !21, null}
!1323 = metadata !{metadata !1315, metadata !1315, i64 0}
!1324 = metadata !{i32 105, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !19, metadata !21, i32 105, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1326 = metadata !{i32 54, i32 0, metadata !112, metadata !1324}
!1327 = metadata !{i32 55, i32 0, metadata !1328, metadata !1324}
!1328 = metadata !{i32 786443, metadata !19, metadata !1329, i32 55, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1329 = metadata !{i32 786443, metadata !19, metadata !112, i32 54, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1330 = metadata !{i32 57, i32 0, metadata !1329, metadata !1324}
!1331 = metadata !{i32 58, i32 0, metadata !1329, metadata !1324} ; [ DW_TAG_imported_module ]
!1332 = metadata !{i32 123, i32 0, metadata !21, null}
!1333 = metadata !{i32 130, i32 0, metadata !57, null}
!1334 = metadata !{i32 106, i32 0, metadata !1335, null}
!1335 = metadata !{i32 786443, metadata !19, metadata !1325, i32 105, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1336 = metadata !{i32 124, i32 0, metadata !58, null}
!1337 = metadata !{i32 54, i32 0, metadata !112, metadata !1336}
!1338 = metadata !{i32 55, i32 0, metadata !1328, metadata !1336}
!1339 = metadata !{i32 57, i32 0, metadata !1329, metadata !1336}
!1340 = metadata !{i32 58, i32 0, metadata !1329, metadata !1336} ; [ DW_TAG_imported_module ]
!1341 = metadata !{i32 126, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !19, metadata !57, i32 126, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1343 = metadata !{i32 127, i32 0, metadata !1342, null}
!1344 = metadata !{i32 129, i32 0, metadata !57, null}
!1345 = metadata !{i32 34, i32 0, metadata !1346, metadata !1344}
!1346 = metadata !{i32 786443, metadata !19, metadata !98, i32 34, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1347 = metadata !{i32 36, i32 0, metadata !98, metadata !1344}
!1348 = metadata !{i32 39, i32 0, metadata !1349, metadata !1344}
!1349 = metadata !{i32 786443, metadata !19, metadata !1350, i32 39, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1350 = metadata !{i32 786443, metadata !19, metadata !1351, i32 37, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1351 = metadata !{i32 786443, metadata !19, metadata !98, i32 36, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1352 = metadata !{i32 37, i32 0, metadata !1350, metadata !1344}
!1353 = metadata !{i32 40, i32 0, metadata !1354, metadata !1344}
!1354 = metadata !{i32 786443, metadata !19, metadata !1349, i32 39, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1355 = metadata !{i32 42, i32 0, metadata !1356, metadata !1344}
!1356 = metadata !{i32 786443, metadata !19, metadata !1349, i32 41, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1357 = metadata !{i32 132, i32 0, metadata !57, null}
!1358 = metadata !{i32 77, i32 0, metadata !1359, metadata !1360}
!1359 = metadata !{i32 786443, metadata !19, metadata !90, i32 77, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1360 = metadata !{i32 131, i32 0, metadata !57, null}
!1361 = metadata !{i32 78, i32 0, metadata !1362, metadata !1360}
!1362 = metadata !{i32 786443, metadata !19, metadata !1359, i32 77, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1363 = metadata !{i32 80, i32 0, metadata !1364, metadata !1360}
!1364 = metadata !{i32 786443, metadata !19, metadata !1359, i32 79, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1365 = metadata !{i32 81, i32 0, metadata !1364, metadata !1360}
!1366 = metadata !{i32 134, i32 0, metadata !57, null}
!1367 = metadata !{i32 54, i32 0, metadata !112, metadata !1368}
!1368 = metadata !{i32 135, i32 0, metadata !64, null}
!1369 = metadata !{i32 55, i32 0, metadata !1328, metadata !1368}
!1370 = metadata !{i32 57, i32 0, metadata !1329, metadata !1368}
!1371 = metadata !{i32 58, i32 0, metadata !1329, metadata !1368} ; [ DW_TAG_imported_module ]
!1372 = metadata !{i32 139, i32 0, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !19, metadata !63, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1374 = metadata !{i32 140, i32 0, metadata !1373, null}
!1375 = metadata !{i32 142, i32 0, metadata !63, null}
!1376 = metadata !{i32 143, i32 0, metadata !63, null}
!1377 = metadata !{i32 34, i32 0, metadata !1346, metadata !1376}
!1378 = metadata !{i32 36, i32 0, metadata !98, metadata !1376}
!1379 = metadata !{i32 39, i32 0, metadata !1349, metadata !1376}
!1380 = metadata !{i32 37, i32 0, metadata !1350, metadata !1376}
!1381 = metadata !{i32 40, i32 0, metadata !1354, metadata !1376}
!1382 = metadata !{i32 42, i32 0, metadata !1356, metadata !1376}
!1383 = metadata !{i32 144, i32 0, metadata !63, null}
!1384 = metadata !{i32 34, i32 0, metadata !1346, metadata !1383}
!1385 = metadata !{i32 36, i32 0, metadata !98, metadata !1383}
!1386 = metadata !{i32 39, i32 0, metadata !1349, metadata !1383}
!1387 = metadata !{i32 37, i32 0, metadata !1350, metadata !1383}
!1388 = metadata !{i32 40, i32 0, metadata !1354, metadata !1383}
!1389 = metadata !{i32 42, i32 0, metadata !1356, metadata !1383}
!1390 = metadata !{i32 145, i32 0, metadata !63, null}
!1391 = metadata !{i32 34, i32 0, metadata !1346, metadata !1390}
!1392 = metadata !{i32 36, i32 0, metadata !98, metadata !1390}
!1393 = metadata !{i32 39, i32 0, metadata !1349, metadata !1390}
!1394 = metadata !{i32 37, i32 0, metadata !1350, metadata !1390}
!1395 = metadata !{i32 40, i32 0, metadata !1354, metadata !1390}
!1396 = metadata !{i32 42, i32 0, metadata !1356, metadata !1390}
!1397 = metadata !{i32 147, i32 0, metadata !63, null}
!1398 = metadata !{i32 148, i32 0, metadata !1399, null}
!1399 = metadata !{i32 786443, metadata !19, metadata !63, i32 148, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1400 = metadata !{i32 149, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !19, metadata !1399, i32 148, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1402 = metadata !{i32 151, i32 0, metadata !1401, null}
!1403 = metadata !{i32 77, i32 0, metadata !1359, metadata !1404}
!1404 = metadata !{i32 150, i32 0, metadata !1401, null}
!1405 = metadata !{i32 78, i32 0, metadata !1362, metadata !1404}
!1406 = metadata !{i32 80, i32 0, metadata !1364, metadata !1404}
!1407 = metadata !{i32 81, i32 0, metadata !1364, metadata !1404}
!1408 = metadata !{i32 54, i32 0, metadata !112, metadata !1409}
!1409 = metadata !{i32 155, i32 0, metadata !67, null}
!1410 = metadata !{i32 55, i32 0, metadata !1328, metadata !1409}
!1411 = metadata !{i32 57, i32 0, metadata !1329, metadata !1409}
!1412 = metadata !{i32 58, i32 0, metadata !1329, metadata !1409} ; [ DW_TAG_imported_module ]
!1413 = metadata !{i32 158, i32 0, metadata !1414, null}
!1414 = metadata !{i32 786443, metadata !19, metadata !66, i32 158, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1415 = metadata !{i32 159, i32 0, metadata !1414, null}
!1416 = metadata !{i32 161, i32 0, metadata !66, null}
!1417 = metadata !{i32 162, i32 0, metadata !66, null}
!1418 = metadata !{i32 34, i32 0, metadata !1346, metadata !1417}
!1419 = metadata !{i32 36, i32 0, metadata !98, metadata !1417}
!1420 = metadata !{i32 39, i32 0, metadata !1349, metadata !1417}
!1421 = metadata !{i32 37, i32 0, metadata !1350, metadata !1417}
!1422 = metadata !{i32 40, i32 0, metadata !1354, metadata !1417}
!1423 = metadata !{i32 42, i32 0, metadata !1356, metadata !1417}
!1424 = metadata !{i32 163, i32 0, metadata !66, null}
!1425 = metadata !{i32 34, i32 0, metadata !1346, metadata !1424}
!1426 = metadata !{i32 36, i32 0, metadata !98, metadata !1424}
!1427 = metadata !{i32 39, i32 0, metadata !1349, metadata !1424}
!1428 = metadata !{i32 37, i32 0, metadata !1350, metadata !1424}
!1429 = metadata !{i32 40, i32 0, metadata !1354, metadata !1424}
!1430 = metadata !{i32 42, i32 0, metadata !1356, metadata !1424}
!1431 = metadata !{i32 165, i32 0, metadata !66, null}
!1432 = metadata !{i32 54, i32 0, metadata !112, metadata !1433}
!1433 = metadata !{i32 165, i32 0, metadata !70, null}
!1434 = metadata !{i32 55, i32 0, metadata !1328, metadata !1433}
!1435 = metadata !{i32 57, i32 0, metadata !1329, metadata !1433}
!1436 = metadata !{i32 58, i32 0, metadata !1329, metadata !1433} ; [ DW_TAG_imported_module ]
!1437 = metadata !{i32 54, i32 0, metadata !112, metadata !1438}
!1438 = metadata !{i32 166, i32 0, metadata !70, null}
!1439 = metadata !{i32 55, i32 0, metadata !1328, metadata !1438}
!1440 = metadata !{i32 57, i32 0, metadata !1329, metadata !1438}
!1441 = metadata !{i32 58, i32 0, metadata !1329, metadata !1438} ; [ DW_TAG_imported_module ]
!1442 = metadata !{i32 170, i32 0, metadata !1443, null}
!1443 = metadata !{i32 786443, metadata !19, metadata !69, i32 170, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1444 = metadata !{i32 171, i32 0, metadata !1443, null}
!1445 = metadata !{i32 173, i32 0, metadata !69, null}
!1446 = metadata !{i32 34, i32 0, metadata !1346, metadata !1445}
!1447 = metadata !{i32 36, i32 0, metadata !98, metadata !1445}
!1448 = metadata !{i32 39, i32 0, metadata !1349, metadata !1445}
!1449 = metadata !{i32 37, i32 0, metadata !1350, metadata !1445}
!1450 = metadata !{i32 40, i32 0, metadata !1354, metadata !1445}
!1451 = metadata !{i32 42, i32 0, metadata !1356, metadata !1445}
!1452 = metadata !{i32 174, i32 0, metadata !69, null}
!1453 = metadata !{i32 54, i32 0, metadata !112, metadata !1454}
!1454 = metadata !{i32 174, i32 0, metadata !76, null}
!1455 = metadata !{i32 55, i32 0, metadata !1328, metadata !1454}
!1456 = metadata !{i32 57, i32 0, metadata !1329, metadata !1454}
!1457 = metadata !{i32 58, i32 0, metadata !1329, metadata !1454} ; [ DW_TAG_imported_module ]
!1458 = metadata !{i32 54, i32 0, metadata !112, metadata !1459}
!1459 = metadata !{i32 175, i32 0, metadata !76, null}
!1460 = metadata !{i32 55, i32 0, metadata !1328, metadata !1459}
!1461 = metadata !{i32 57, i32 0, metadata !1329, metadata !1459}
!1462 = metadata !{i32 58, i32 0, metadata !1329, metadata !1459} ; [ DW_TAG_imported_module ]
!1463 = metadata !{i32 177, i32 0, metadata !1464, null}
!1464 = metadata !{i32 786443, metadata !19, metadata !76, i32 175, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1465 = metadata !{i32 178, i32 0, metadata !1464, null}
!1466 = metadata !{i32 54, i32 0, metadata !112, metadata !1467}
!1467 = metadata !{i32 179, i32 0, metadata !75, null}
!1468 = metadata !{i32 55, i32 0, metadata !1328, metadata !1467}
!1469 = metadata !{i32 57, i32 0, metadata !1329, metadata !1467}
!1470 = metadata !{i32 58, i32 0, metadata !1329, metadata !1467} ; [ DW_TAG_imported_module ]
!1471 = metadata !{i32 181, i32 0, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !19, metadata !75, i32 179, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1473 = metadata !{i32 182, i32 0, metadata !1472, null}
!1474 = metadata !{i32 54, i32 0, metadata !112, metadata !1475}
!1475 = metadata !{i32 183, i32 0, metadata !74, null}
!1476 = metadata !{i32 55, i32 0, metadata !1328, metadata !1475}
!1477 = metadata !{i32 57, i32 0, metadata !1329, metadata !1475}
!1478 = metadata !{i32 58, i32 0, metadata !1329, metadata !1475} ; [ DW_TAG_imported_module ]
!1479 = metadata !{i32 185, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !19, metadata !74, i32 183, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1481 = metadata !{i32 186, i32 0, metadata !1480, null}
!1482 = metadata !{i32 54, i32 0, metadata !112, metadata !1483}
!1483 = metadata !{i32 187, i32 0, metadata !73, null}
!1484 = metadata !{i32 55, i32 0, metadata !1328, metadata !1483}
!1485 = metadata !{i32 57, i32 0, metadata !1329, metadata !1483}
!1486 = metadata !{i32 58, i32 0, metadata !1329, metadata !1483} ; [ DW_TAG_imported_module ]
!1487 = metadata !{i32 189, i32 0, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !19, metadata !72, i32 189, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1489 = metadata !{i32 190, i32 0, metadata !1488, null}
!1490 = metadata !{i32 192, i32 0, metadata !72, null}
!1491 = metadata !{i32 34, i32 0, metadata !1346, metadata !1490}
!1492 = metadata !{i32 36, i32 0, metadata !98, metadata !1490}
!1493 = metadata !{i32 39, i32 0, metadata !1349, metadata !1490}
!1494 = metadata !{i32 37, i32 0, metadata !1350, metadata !1490}
!1495 = metadata !{i32 40, i32 0, metadata !1354, metadata !1490}
!1496 = metadata !{i32 42, i32 0, metadata !1356, metadata !1490}
!1497 = metadata !{i32 193, i32 0, metadata !72, null}
!1498 = metadata !{i32 77, i32 0, metadata !1359, metadata !1499}
!1499 = metadata !{i32 196, i32 0, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !19, metadata !73, i32 194, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1501 = metadata !{i32 78, i32 0, metadata !1362, metadata !1499}
!1502 = metadata !{i32 80, i32 0, metadata !1364, metadata !1499}
!1503 = metadata !{i32 81, i32 0, metadata !1364, metadata !1499}
!1504 = metadata !{i32 200, i32 0, metadata !21, null}
!1505 = metadata !{i32 201, i32 0, metadata !21, null}
!1506 = metadata !{i32 202, i32 0, metadata !21, null}
!1507 = metadata !{i32 203, i32 0, metadata !21, null}
!1508 = metadata !{i32 205, i32 0, metadata !21, null}
!1509 = metadata !{i32 206, i32 0, metadata !21, null}
!1510 = metadata !{i32 208, i32 0, metadata !21, null}
!1511 = metadata !{i32 210, i32 0, metadata !21, null}
!1512 = metadata !{i32 24, i32 0, metadata !107, null}
!1513 = metadata !{i32 65, i32 0, metadata !77, null}
!1514 = metadata !{i32 66, i32 0, metadata !77, null}
!1515 = metadata !{i32 67, i32 0, metadata !77, null}
!1516 = metadata !{i32 69, i32 0, metadata !1517, null}
!1517 = metadata !{i32 786443, metadata !19, metadata !77, i32 69, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1518 = metadata !{i32 70, i32 0, metadata !1517, null}
!1519 = metadata !{i32 50, i32 0, metadata !85, metadata !1518}
!1520 = metadata !{i32 72, i32 0, metadata !77, null}
!1521 = metadata !{i32 73, i32 0, metadata !77, null}
!1522 = metadata !{i32 114, i32 0, metadata !121, null}
!1523 = metadata !{i32 115, i32 0, metadata !121, null}
!1524 = metadata !{i32 503, i32 0, metadata !1525, metadata !1526}
!1525 = metadata !{i32 786443, metadata !206, metadata !205} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!1526 = metadata !{i32 117, i32 0, metadata !121, null}
!1527 = metadata !{i32 119, i32 0, metadata !121, null}
!1528 = metadata !{metadata !1529, metadata !1314, i64 0}
!1529 = metadata !{metadata !"", metadata !1314, i64 0, metadata !1319, i64 8, metadata !1319, i64 16, metadata !1314, i64 24, metadata !1319, i64 32, metadata !1314, i64 40, metadata !1319, i64 48, metadata !1319, i64 56, metadata !1319, i64 64, metadat
!1530 = metadata !{i32 120, i32 0, metadata !121, null}
!1531 = metadata !{metadata !1529, metadata !1319, i64 32}
!1532 = metadata !{i32 121, i32 0, metadata !1533, null}
!1533 = metadata !{i32 786443, metadata !119, metadata !121, i32 121, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1534 = metadata !{i32 122, i32 0, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !119, metadata !1533, i32 121, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1536 = metadata !{i32 123, i32 0, metadata !1535, null}
!1537 = metadata !{i32 127, i32 0, metadata !1538, null}
!1538 = metadata !{i32 786443, metadata !119, metadata !121, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1539 = metadata !{i32 128, i32 0, metadata !1540, null}
!1540 = metadata !{i32 786443, metadata !119, metadata !1538, i32 127, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1541 = metadata !{metadata !1529, metadata !1319, i64 8}
!1542 = metadata !{i32 129, i32 0, metadata !1540, null}
!1543 = metadata !{i32 130, i32 0, metadata !1540, null}
!1544 = metadata !{metadata !1545, metadata !1319, i64 16}
!1545 = metadata !{metadata !"", metadata !1314, i64 0, metadata !1314, i64 4, metadata !1546, i64 8, metadata !1319, i64 16}
!1546 = metadata !{metadata !"long", metadata !1315, i64 0}
!1547 = metadata !{i32 131, i32 0, metadata !1540, null}
!1548 = metadata !{i32 132, i32 0, metadata !1538, null}
!1549 = metadata !{i32 134, i32 0, metadata !121, null}
!1550 = metadata !{metadata !1529, metadata !1314, i64 40}
!1551 = metadata !{i32 135, i32 0, metadata !1552, null}
!1552 = metadata !{i32 786443, metadata !119, metadata !121, i32 135, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1553 = metadata !{i32 136, i32 0, metadata !1554, null}
!1554 = metadata !{i32 786443, metadata !119, metadata !1552, i32 135, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1555 = metadata !{metadata !1529, metadata !1319, i64 48}
!1556 = metadata !{i32 137, i32 0, metadata !1554, null}
!1557 = metadata !{metadata !1529, metadata !1319, i64 56}
!1558 = metadata !{i32 138, i32 0, metadata !1554, null}
!1559 = metadata !{metadata !1529, metadata !1319, i64 64}
!1560 = metadata !{i32 139, i32 0, metadata !1554, null}
!1561 = metadata !{metadata !1529, metadata !1319, i64 72}
!1562 = metadata !{i32 140, i32 0, metadata !1554, null}
!1563 = metadata !{metadata !1529, metadata !1319, i64 80}
!1564 = metadata !{i32 142, i32 0, metadata !1554, null}
!1565 = metadata !{i32 143, i32 0, metadata !1554, null}
!1566 = metadata !{i32 144, i32 0, metadata !1554, null}
!1567 = metadata !{i32 145, i32 0, metadata !1554, null}
!1568 = metadata !{i32 146, i32 0, metadata !1554, null}
!1569 = metadata !{i32 147, i32 0, metadata !1554, null}
!1570 = metadata !{i32 150, i32 0, metadata !1571, null}
!1571 = metadata !{i32 786443, metadata !119, metadata !121, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1572 = metadata !{i32 151, i32 0, metadata !1573, null}
!1573 = metadata !{i32 786443, metadata !119, metadata !1571, i32 150, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1574 = metadata !{metadata !1529, metadata !1319, i64 16}
!1575 = metadata !{i32 152, i32 0, metadata !1573, null}
!1576 = metadata !{i32 153, i32 0, metadata !1573, null}
!1577 = metadata !{i32 154, i32 0, metadata !1573, null}
!1578 = metadata !{metadata !1529, metadata !1314, i64 24}
!1579 = metadata !{i32 155, i32 0, metadata !1573, null}
!1580 = metadata !{i32 156, i32 0, metadata !1571, null}
!1581 = metadata !{i32 158, i32 0, metadata !121, null}
!1582 = metadata !{metadata !1583, metadata !1314, i64 776}
!1583 = metadata !{metadata !"", metadata !1315, i64 0, metadata !1314, i64 768, metadata !1314, i64 772, metadata !1314, i64 776}
!1584 = metadata !{i32 97, i32 0, metadata !176, metadata !1585}
!1585 = metadata !{i32 159, i32 0, metadata !121, null}
!1586 = metadata !{i32 99, i32 0, metadata !176, metadata !1585}
!1587 = metadata !{i32 100, i32 0, metadata !176, metadata !1585}
!1588 = metadata !{metadata !1583, metadata !1314, i64 772}
!1589 = metadata !{i32 160, i32 0, metadata !121, null}
!1590 = metadata !{i32 161, i32 0, metadata !121, null}
!1591 = metadata !{i32 48, i32 0, metadata !182, null}
!1592 = metadata !{i32 50, i32 0, metadata !182, null}
!1593 = metadata !{i32 51, i32 0, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !119, metadata !182, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1595 = metadata !{i32 53, i32 0, metadata !182, null}
!1596 = metadata !{i32 52, i32 0, metadata !1594, null}
!1597 = metadata !{i32 55, i32 0, metadata !182, null}
!1598 = metadata !{i32 57, i32 0, metadata !182, null}
!1599 = metadata !{metadata !1600, metadata !1314, i64 0}
!1600 = metadata !{metadata !"", metadata !1314, i64 0, metadata !1319, i64 8, metadata !1319, i64 16}
!1601 = metadata !{i32 58, i32 0, metadata !182, null} ; [ DW_TAG_imported_module ]
!1602 = metadata !{metadata !1600, metadata !1319, i64 8}
!1603 = metadata !{i32 59, i32 0, metadata !182, null}
!1604 = metadata !{i32 61, i32 0, metadata !182, null}
!1605 = metadata !{i32 64, i32 0, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !119, metadata !182, i32 64, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!1607 = metadata !{metadata !1608, metadata !1546, i64 8}
!1608 = metadata !{metadata !"stat64", metadata !1546, i64 0, metadata !1546, i64 8, metadata !1546, i64 16, metadata !1314, i64 24, metadata !1314, i64 28, metadata !1314, i64 32, metadata !1314, i64 36, metadata !1546, i64 40, metadata !1546, i64 48, m
!1609 = metadata !{metadata !"timespec", metadata !1546, i64 0, metadata !1546, i64 8}
!1610 = metadata !{i32 66, i32 0, metadata !1606, null}
!1611 = metadata !{i32 71, i32 0, metadata !182, null}
!1612 = metadata !{i32 75, i32 0, metadata !182, null}
!1613 = metadata !{metadata !1608, metadata !1546, i64 56}
!1614 = metadata !{i32 77, i32 0, metadata !182, null}
!1615 = metadata !{metadata !1608, metadata !1314, i64 24}
!1616 = metadata !{i32 78, i32 0, metadata !182, null}
!1617 = metadata !{metadata !1608, metadata !1546, i64 0}
!1618 = metadata !{i32 79, i32 0, metadata !182, null}
!1619 = metadata !{metadata !1608, metadata !1546, i64 40}
!1620 = metadata !{i32 80, i32 0, metadata !182, null}
!1621 = metadata !{i32 81, i32 0, metadata !182, null}
!1622 = metadata !{i32 82, i32 0, metadata !182, null}
!1623 = metadata !{i32 83, i32 0, metadata !182, null}
!1624 = metadata !{i32 84, i32 0, metadata !182, null}
!1625 = metadata !{metadata !1608, metadata !1546, i64 16}
!1626 = metadata !{i32 85, i32 0, metadata !182, null}
!1627 = metadata !{metadata !1608, metadata !1314, i64 28}
!1628 = metadata !{i32 86, i32 0, metadata !182, null}
!1629 = metadata !{metadata !1608, metadata !1314, i64 32}
!1630 = metadata !{i32 87, i32 0, metadata !182, null}
!1631 = metadata !{i32 88, i32 0, metadata !182, null}
!1632 = metadata !{metadata !1608, metadata !1546, i64 72}
!1633 = metadata !{i32 89, i32 0, metadata !182, null}
!1634 = metadata !{metadata !1608, metadata !1546, i64 88}
!1635 = metadata !{i32 90, i32 0, metadata !182, null}
!1636 = metadata !{metadata !1608, metadata !1546, i64 104}
!1637 = metadata !{i32 92, i32 0, metadata !182, null}
!1638 = metadata !{metadata !1608, metadata !1546, i64 48}
!1639 = metadata !{i32 93, i32 0, metadata !182, null}
!1640 = metadata !{metadata !1608, metadata !1546, i64 64}
!1641 = metadata !{i32 94, i32 0, metadata !182, null}
!1642 = metadata !{metadata !1600, metadata !1319, i64 16}
!1643 = metadata !{i32 95, i32 0, metadata !182, null}
!1644 = metadata !{i32 48, i32 0, metadata !267, null}
!1645 = metadata !{i32 51, i32 0, metadata !266, null}
!1646 = metadata !{i32 52, i32 0, metadata !266, null}
!1647 = metadata !{i32 53, i32 0, metadata !266, null}
!1648 = metadata !{i32 54, i32 0, metadata !266, null}
!1649 = metadata !{i32 56, i32 0, metadata !255, null}
!1650 = metadata !{i32 62, i32 0, metadata !292, null}
!1651 = metadata !{i32 65, i32 0, metadata !291, null}
!1652 = metadata !{i32 66, i32 0, metadata !291, null}
!1653 = metadata !{i32 67, i32 0, metadata !291, null}
!1654 = metadata !{i32 68, i32 0, metadata !291, null}
!1655 = metadata !{i32 70, i32 0, metadata !282, null}
!1656 = metadata !{i32 74, i32 0, metadata !293, null}
!1657 = metadata !{i32 78, i32 0, metadata !302, null}
!1658 = metadata !{i32 82, i32 0, metadata !333, null}
!1659 = metadata !{i32 86, i32 0, metadata !339, null}
!1660 = metadata !{i32 90, i32 0, metadata !344, null}
!1661 = metadata !{i32 94, i32 0, metadata !348, null}
!1662 = metadata !{i32 98, i32 0, metadata !355, null}
!1663 = metadata !{i32 102, i32 0, metadata !361, null}
!1664 = metadata !{i32 107, i32 0, metadata !367, null}
!1665 = metadata !{i32 111, i32 0, metadata !403, null}
!1666 = metadata !{i32 40, i32 0, metadata !1035, metadata !1667}
!1667 = metadata !{i32 74, i32 0, metadata !447, null}
!1668 = metadata !{i32 43, i32 0, metadata !1669, metadata !1667}
!1669 = metadata !{i32 786443, metadata !426, metadata !1035, i32 43, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1670 = metadata !{i32 46, i32 0, metadata !1046, metadata !1667}
!1671 = metadata !{i32 47, i32 0, metadata !1044, metadata !1667}
!1672 = metadata !{i32 48, i32 0, metadata !1043, metadata !1667}
!1673 = metadata !{i32 49, i32 0, metadata !1674, metadata !1667}
!1674 = metadata !{i32 786443, metadata !426, metadata !1043, i32 49, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1675 = metadata !{i32 76, i32 0, metadata !484, null}
!1676 = metadata !{i32 1417, i32 0, metadata !1001, metadata !1677}
!1677 = metadata !{i32 1429, i32 0, metadata !982, metadata !1678}
!1678 = metadata !{i32 81, i32 0, metadata !483, null}
!1679 = metadata !{i32 1418, i32 0, metadata !1001, metadata !1677}
!1680 = metadata !{i32 1432, i32 0, metadata !991, metadata !1678}
!1681 = metadata !{i32 1433, i32 0, metadata !990, metadata !1678}
!1682 = metadata !{i32 1434, i32 0, metadata !994, metadata !1678}
!1683 = metadata !{i32 1435, i32 0, metadata !1684, metadata !1678}
!1684 = metadata !{i32 786443, metadata !426, metadata !1685, i32 1435, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1685 = metadata !{i32 786443, metadata !426, metadata !994, i32 1434, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1686 = metadata !{i32 1436, i32 0, metadata !1687, metadata !1678}
!1687 = metadata !{i32 786443, metadata !426, metadata !1684, i32 1435, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1688 = metadata !{i32 1437, i32 0, metadata !1687, metadata !1678}
!1689 = metadata !{i32 1439, i32 0, metadata !1690, metadata !1678}
!1690 = metadata !{i32 786443, metadata !426, metadata !1691, i32 1438, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1691 = metadata !{i32 786443, metadata !426, metadata !1684, i32 1438, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1692 = metadata !{i32 1440, i32 0, metadata !1690, metadata !1678}
!1693 = metadata !{i32 1442, i32 0, metadata !993, metadata !1678}
!1694 = metadata !{i32 1443, i32 0, metadata !993, metadata !1678}
!1695 = metadata !{i32 1444, i32 0, metadata !993, metadata !1678}
!1696 = metadata !{i32 1445, i32 0, metadata !1697, metadata !1678}
!1697 = metadata !{i32 786443, metadata !426, metadata !993, i32 1445, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1698 = metadata !{i32 82, i32 0, metadata !1699, null}
!1699 = metadata !{i32 786443, metadata !426, metadata !483, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1700 = metadata !{i32 83, i32 0, metadata !1699, null}
!1701 = metadata !{i32 86, i32 0, metadata !447, null}
!1702 = metadata !{i32 89, i32 0, metadata !485, null}
!1703 = metadata !{metadata !1583, metadata !1314, i64 768}
!1704 = metadata !{i32 90, i32 0, metadata !485, null}
!1705 = metadata !{i32 91, i32 0, metadata !485, null}
!1706 = metadata !{i32 133, i32 0, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !426, metadata !492, i32 133, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1708 = metadata !{i32 134, i32 0, metadata !1709, null}
!1709 = metadata !{i32 786443, metadata !426, metadata !1707, i32 134, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1710 = metadata !{metadata !1545, metadata !1314, i64 4}
!1711 = metadata !{i32 136, i32 0, metadata !1712, null}
!1712 = metadata !{i32 786443, metadata !426, metadata !492, i32 136, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1713 = metadata !{i32 137, i32 0, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !426, metadata !1712, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1715 = metadata !{i32 138, i32 0, metadata !1714, null}
!1716 = metadata !{i32 141, i32 0, metadata !492, null}
!1717 = metadata !{i32 144, i32 0, metadata !492, null}
!1718 = metadata !{i32 40, i32 0, metadata !1035, metadata !1719}
!1719 = metadata !{i32 146, i32 0, metadata !492, null}
!1720 = metadata !{i32 43, i32 0, metadata !1669, metadata !1719}
!1721 = metadata !{i32 46, i32 0, metadata !1046, metadata !1719}
!1722 = metadata !{i32 47, i32 0, metadata !1044, metadata !1719}
!1723 = metadata !{i32 48, i32 0, metadata !1043, metadata !1719}
!1724 = metadata !{i32 49, i32 0, metadata !1674, metadata !1719}
!1725 = metadata !{i32 147, i32 0, metadata !512, null}
!1726 = metadata !{i32 150, i32 0, metadata !1727, null}
!1727 = metadata !{i32 786443, metadata !426, metadata !512, i32 147, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1728 = metadata !{i32 152, i32 0, metadata !1729, null}
!1729 = metadata !{i32 786443, metadata !426, metadata !1727, i32 152, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1730 = metadata !{i32 153, i32 0, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !426, metadata !1729, i32 152, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1732 = metadata !{i32 154, i32 0, metadata !1731, null}
!1733 = metadata !{i32 168, i32 0, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !426, metadata !1735, i32 165, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1735 = metadata !{i32 786443, metadata !426, metadata !1727, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1736 = metadata !{i32 169, i32 0, metadata !1734, null}
!1737 = metadata !{i32 170, i32 0, metadata !1734, null}
!1738 = metadata !{i32 99, i32 0, metadata !1028, metadata !1739}
!1739 = metadata !{i32 173, i32 0, metadata !1740, null}
!1740 = metadata !{i32 786443, metadata !426, metadata !1727, i32 173, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1741 = metadata !{i32 101, i32 0, metadata !1742, metadata !1739}
!1742 = metadata !{i32 786443, metadata !426, metadata !1028, i32 101, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1743 = metadata !{i32 118, i32 0, metadata !1744, metadata !1739}
!1744 = metadata !{i32 786443, metadata !426, metadata !1028, i32 118, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1745 = metadata !{i32 105, i32 0, metadata !1746, metadata !1739}
!1746 = metadata !{i32 786443, metadata !426, metadata !1028, i32 105, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1747 = metadata !{i32 121, i32 0, metadata !1748, metadata !1739}
!1748 = metadata !{i32 786443, metadata !426, metadata !1028, i32 121, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1749 = metadata !{i32 174, i32 0, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !426, metadata !1740, i32 173, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1751 = metadata !{i32 175, i32 0, metadata !1750, null}
!1752 = metadata !{i32 178, i32 0, metadata !1740, null}
!1753 = metadata !{i32 180, i32 0, metadata !1727, null}
!1754 = metadata !{i32 1417, i32 0, metadata !1001, metadata !1755}
!1755 = metadata !{i32 1429, i32 0, metadata !982, metadata !1756}
!1756 = metadata !{i32 181, i32 0, metadata !511, null}
!1757 = metadata !{i32 1418, i32 0, metadata !1001, metadata !1755}
!1758 = metadata !{i32 1432, i32 0, metadata !991, metadata !1756}
!1759 = metadata !{i32 1433, i32 0, metadata !990, metadata !1756}
!1760 = metadata !{i32 1434, i32 0, metadata !994, metadata !1756}
!1761 = metadata !{i32 1435, i32 0, metadata !1684, metadata !1756}
!1762 = metadata !{i32 1436, i32 0, metadata !1687, metadata !1756}
!1763 = metadata !{i32 1437, i32 0, metadata !1687, metadata !1756}
!1764 = metadata !{i32 1439, i32 0, metadata !1690, metadata !1756}
!1765 = metadata !{i32 1440, i32 0, metadata !1690, metadata !1756}
!1766 = metadata !{i32 1442, i32 0, metadata !993, metadata !1756}
!1767 = metadata !{i32 1443, i32 0, metadata !993, metadata !1756}
!1768 = metadata !{i32 1444, i32 0, metadata !993, metadata !1756}
!1769 = metadata !{i32 1445, i32 0, metadata !1697, metadata !1756}
!1770 = metadata !{i32 182, i32 0, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !426, metadata !511, i32 182, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1772 = metadata !{i32 183, i32 0, metadata !1773, null}
!1773 = metadata !{i32 786443, metadata !426, metadata !1771, i32 182, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1774 = metadata !{i32 184, i32 0, metadata !1773, null}
!1775 = metadata !{i32 186, i32 0, metadata !511, null}
!1776 = metadata !{metadata !1545, metadata !1314, i64 0}
!1777 = metadata !{i32 190, i32 0, metadata !1778, null}
!1778 = metadata !{i32 786443, metadata !426, metadata !492, i32 190, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1779 = metadata !{i32 189, i32 0, metadata !492, null}
!1780 = metadata !{i32 191, i32 0, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !426, metadata !1778, i32 190, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1782 = metadata !{i32 192, i32 0, metadata !1781, null}
!1783 = metadata !{i32 193, i32 0, metadata !1784, null}
!1784 = metadata !{i32 786443, metadata !426, metadata !1785, i32 192, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1785 = metadata !{i32 786443, metadata !426, metadata !1778, i32 192, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1786 = metadata !{i32 194, i32 0, metadata !1784, null}
!1787 = metadata !{i32 195, i32 0, metadata !1788, null}
!1788 = metadata !{i32 786443, metadata !426, metadata !1785, i32 194, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1789 = metadata !{i32 199, i32 0, metadata !492, null}
!1790 = metadata !{i32 204, i32 0, metadata !525, null}
!1791 = metadata !{i32 64, i32 0, metadata !1027, metadata !1792}
!1792 = metadata !{i32 205, i32 0, metadata !524, null}
!1793 = metadata !{i32 65, i32 0, metadata !1026, metadata !1792}
!1794 = metadata !{i32 66, i32 0, metadata !1795, metadata !1792}
!1795 = metadata !{i32 786443, metadata !426, metadata !1026, i32 66, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1796 = metadata !{i32 207, i32 0, metadata !1797, null}
!1797 = metadata !{i32 786443, metadata !426, metadata !524, i32 207, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1798 = metadata !{i32 208, i32 0, metadata !1799, null}
!1799 = metadata !{i32 786443, metadata !426, metadata !1797, i32 207, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1800 = metadata !{i32 209, i32 0, metadata !1799, null}
!1801 = metadata !{i32 210, i32 0, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !426, metadata !1797, i32 210, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1803 = metadata !{i32 211, i32 0, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !426, metadata !1802, i32 210, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1805 = metadata !{i32 212, i32 0, metadata !1804, null}
!1806 = metadata !{i32 213, i32 0, metadata !1804, null}
!1807 = metadata !{i32 215, i32 0, metadata !524, null}
!1808 = metadata !{i32 216, i32 0, metadata !524, null}
!1809 = metadata !{i32 40, i32 0, metadata !1035, metadata !1810}
!1810 = metadata !{i32 218, i32 0, metadata !1811, null}
!1811 = metadata !{i32 786443, metadata !426, metadata !513, i32 218, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1812 = metadata !{i32 43, i32 0, metadata !1669, metadata !1810}
!1813 = metadata !{i32 46, i32 0, metadata !1046, metadata !1810}
!1814 = metadata !{i32 47, i32 0, metadata !1044, metadata !1810}
!1815 = metadata !{i32 48, i32 0, metadata !1043, metadata !1810}
!1816 = metadata !{i32 49, i32 0, metadata !1674, metadata !1810}
!1817 = metadata !{i32 220, i32 0, metadata !1818, null}
!1818 = metadata !{i32 786443, metadata !426, metadata !1811, i32 218, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1819 = metadata !{i32 223, i32 0, metadata !1820, null}
!1820 = metadata !{i32 786443, metadata !426, metadata !513, i32 223, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1821 = metadata !{i32 224, i32 0, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !426, metadata !1820, i32 224, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1823 = metadata !{i32 226, i32 0, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !426, metadata !513, i32 226, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1825 = metadata !{i32 227, i32 0, metadata !1826, null}
!1826 = metadata !{i32 786443, metadata !426, metadata !1824, i32 226, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1827 = metadata !{i32 228, i32 0, metadata !1826, null}
!1828 = metadata !{i32 231, i32 0, metadata !513, null}
!1829 = metadata !{i32 234, i32 0, metadata !513, null}
!1830 = metadata !{i32 1417, i32 0, metadata !1001, metadata !1831}
!1831 = metadata !{i32 1429, i32 0, metadata !982, metadata !1832}
!1832 = metadata !{i32 236, i32 0, metadata !513, null}
!1833 = metadata !{i32 1418, i32 0, metadata !1001, metadata !1831}
!1834 = metadata !{i32 1432, i32 0, metadata !991, metadata !1832}
!1835 = metadata !{i32 1433, i32 0, metadata !990, metadata !1832}
!1836 = metadata !{i32 1434, i32 0, metadata !994, metadata !1832}
!1837 = metadata !{i32 1435, i32 0, metadata !1684, metadata !1832}
!1838 = metadata !{i32 1436, i32 0, metadata !1687, metadata !1832}
!1839 = metadata !{i32 1437, i32 0, metadata !1687, metadata !1832}
!1840 = metadata !{i32 1439, i32 0, metadata !1690, metadata !1832}
!1841 = metadata !{i32 1440, i32 0, metadata !1690, metadata !1832}
!1842 = metadata !{i32 1442, i32 0, metadata !993, metadata !1832}
!1843 = metadata !{i32 1443, i32 0, metadata !993, metadata !1832}
!1844 = metadata !{i32 1444, i32 0, metadata !993, metadata !1832}
!1845 = metadata !{i32 1445, i32 0, metadata !1697, metadata !1832}
!1846 = metadata !{i32 237, i32 0, metadata !1847, null}
!1847 = metadata !{i32 786443, metadata !426, metadata !513, i32 237, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1848 = metadata !{i32 238, i32 0, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !426, metadata !1847, i32 237, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1850 = metadata !{i32 239, i32 0, metadata !1849, null}
!1851 = metadata !{i32 242, i32 0, metadata !513, null}
!1852 = metadata !{i32 243, i32 0, metadata !513, null}
!1853 = metadata !{i32 244, i32 0, metadata !1854, null}
!1854 = metadata !{i32 786443, metadata !426, metadata !513, i32 244, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1855 = metadata !{i32 245, i32 0, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !426, metadata !1854, i32 244, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1857 = metadata !{i32 246, i32 0, metadata !1856, null}
!1858 = metadata !{i32 247, i32 0, metadata !1859, null}
!1859 = metadata !{i32 786443, metadata !426, metadata !1860, i32 246, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1860 = metadata !{i32 786443, metadata !426, metadata !1854, i32 246, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1861 = metadata !{i32 248, i32 0, metadata !1859, null}
!1862 = metadata !{i32 249, i32 0, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !426, metadata !1860, i32 248, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1864 = metadata !{i32 253, i32 0, metadata !513, null}
!1865 = metadata !{i32 40, i32 0, metadata !1035, metadata !1866}
!1866 = metadata !{i32 257, i32 0, metadata !527, null}
!1867 = metadata !{i32 43, i32 0, metadata !1669, metadata !1866}
!1868 = metadata !{i32 46, i32 0, metadata !1046, metadata !1866}
!1869 = metadata !{i32 47, i32 0, metadata !1044, metadata !1866}
!1870 = metadata !{i32 48, i32 0, metadata !1043, metadata !1866}
!1871 = metadata !{i32 49, i32 0, metadata !1674, metadata !1866}
!1872 = metadata !{i32 259, i32 0, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !426, metadata !527, i32 259, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1874 = metadata !{i32 261, i32 0, metadata !1875, null}
!1875 = metadata !{i32 786443, metadata !426, metadata !1873, i32 259, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1876 = metadata !{metadata !1877, metadata !1546, i64 0}
!1877 = metadata !{metadata !"timeval", metadata !1546, i64 0, metadata !1546, i64 8}
!1878 = metadata !{i32 262, i32 0, metadata !1875, null}
!1879 = metadata !{i32 267, i32 0, metadata !1875, null}
!1880 = metadata !{i32 1417, i32 0, metadata !1001, metadata !1881}
!1881 = metadata !{i32 1429, i32 0, metadata !982, metadata !1882}
!1882 = metadata !{i32 269, i32 0, metadata !527, null}
!1883 = metadata !{i32 1418, i32 0, metadata !1001, metadata !1881}
!1884 = metadata !{i32 1432, i32 0, metadata !991, metadata !1882}
!1885 = metadata !{i32 1433, i32 0, metadata !990, metadata !1882}
!1886 = metadata !{i32 1434, i32 0, metadata !994, metadata !1882}
!1887 = metadata !{i32 1435, i32 0, metadata !1684, metadata !1882}
!1888 = metadata !{i32 1436, i32 0, metadata !1687, metadata !1882}
!1889 = metadata !{i32 1437, i32 0, metadata !1687, metadata !1882}
!1890 = metadata !{i32 1439, i32 0, metadata !1690, metadata !1882}
!1891 = metadata !{i32 1440, i32 0, metadata !1690, metadata !1882}
!1892 = metadata !{i32 1442, i32 0, metadata !993, metadata !1882}
!1893 = metadata !{i32 1443, i32 0, metadata !993, metadata !1882}
!1894 = metadata !{i32 1444, i32 0, metadata !993, metadata !1882}
!1895 = metadata !{i32 1445, i32 0, metadata !1697, metadata !1882}
!1896 = metadata !{i32 270, i32 0, metadata !1897, null}
!1897 = metadata !{i32 786443, metadata !426, metadata !527, i32 270, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1898 = metadata !{i32 271, i32 0, metadata !1897, null}
!1899 = metadata !{i32 274, i32 0, metadata !527, null}
!1900 = metadata !{i32 278, i32 0, metadata !552, null}
!1901 = metadata !{i32 64, i32 0, metadata !1027, metadata !1902}
!1902 = metadata !{i32 279, i32 0, metadata !551, null}
!1903 = metadata !{i32 65, i32 0, metadata !1026, metadata !1902}
!1904 = metadata !{i32 66, i32 0, metadata !1795, metadata !1902}
!1905 = metadata !{i32 281, i32 0, metadata !1906, null}
!1906 = metadata !{i32 786443, metadata !426, metadata !551, i32 281, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1907 = metadata !{i32 282, i32 0, metadata !1908, null}
!1908 = metadata !{i32 786443, metadata !426, metadata !1906, i32 281, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1909 = metadata !{i32 283, i32 0, metadata !1908, null}
!1910 = metadata !{i32 284, i32 0, metadata !1911, null}
!1911 = metadata !{i32 786443, metadata !426, metadata !1906, i32 284, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1912 = metadata !{i32 285, i32 0, metadata !1913, null}
!1913 = metadata !{i32 786443, metadata !426, metadata !1911, i32 284, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1914 = metadata !{i32 286, i32 0, metadata !1913, null}
!1915 = metadata !{i32 287, i32 0, metadata !1913, null}
!1916 = metadata !{i32 289, i32 0, metadata !551, null}
!1917 = metadata !{i32 290, i32 0, metadata !551, null}
!1918 = metadata !{i32 40, i32 0, metadata !1035, metadata !1919}
!1919 = metadata !{i32 291, i32 0, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !426, metadata !543, i32 291, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1921 = metadata !{i32 43, i32 0, metadata !1669, metadata !1919}
!1922 = metadata !{i32 46, i32 0, metadata !1046, metadata !1919}
!1923 = metadata !{i32 47, i32 0, metadata !1044, metadata !1919}
!1924 = metadata !{i32 48, i32 0, metadata !1043, metadata !1919}
!1925 = metadata !{i32 49, i32 0, metadata !1674, metadata !1919}
!1926 = metadata !{i32 292, i32 0, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !426, metadata !1920, i32 291, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1928 = metadata !{i32 295, i32 0, metadata !543, null}
!1929 = metadata !{i32 1417, i32 0, metadata !1001, metadata !1930}
!1930 = metadata !{i32 1429, i32 0, metadata !982, metadata !1931}
!1931 = metadata !{i32 296, i32 0, metadata !543, null}
!1932 = metadata !{i32 1418, i32 0, metadata !1001, metadata !1930}
!1933 = metadata !{i32 1432, i32 0, metadata !991, metadata !1931}
!1934 = metadata !{i32 1433, i32 0, metadata !990, metadata !1931}
!1935 = metadata !{i32 1434, i32 0, metadata !994, metadata !1931}
!1936 = metadata !{i32 1435, i32 0, metadata !1684, metadata !1931}
!1937 = metadata !{i32 1436, i32 0, metadata !1687, metadata !1931}
!1938 = metadata !{i32 1437, i32 0, metadata !1687, metadata !1931}
!1939 = metadata !{i32 1439, i32 0, metadata !1690, metadata !1931}
!1940 = metadata !{i32 1440, i32 0, metadata !1690, metadata !1931}
!1941 = metadata !{i32 1442, i32 0, metadata !993, metadata !1931}
!1942 = metadata !{i32 1443, i32 0, metadata !993, metadata !1931}
!1943 = metadata !{i32 1444, i32 0, metadata !993, metadata !1931}
!1944 = metadata !{i32 1445, i32 0, metadata !1697, metadata !1931}
!1945 = metadata !{i32 298, i32 0, metadata !1946, null}
!1946 = metadata !{i32 786443, metadata !426, metadata !543, i32 298, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1947 = metadata !{i32 299, i32 0, metadata !1946, null}
!1948 = metadata !{i32 301, i32 0, metadata !543, null}
!1949 = metadata !{i32 308, i32 0, metadata !554, null}
!1950 = metadata !{i32 64, i32 0, metadata !1027, metadata !1951}
!1951 = metadata !{i32 310, i32 0, metadata !554, null}
!1952 = metadata !{i32 65, i32 0, metadata !1026, metadata !1951}
!1953 = metadata !{i32 66, i32 0, metadata !1795, metadata !1951}
!1954 = metadata !{i32 311, i32 0, metadata !1955, null}
!1955 = metadata !{i32 786443, metadata !426, metadata !554, i32 311, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1956 = metadata !{i32 312, i32 0, metadata !1957, null}
!1957 = metadata !{i32 786443, metadata !426, metadata !1955, i32 311, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1958 = metadata !{i32 313, i32 0, metadata !1957, null}
!1959 = metadata !{i32 316, i32 0, metadata !1960, null}
!1960 = metadata !{i32 786443, metadata !426, metadata !554, i32 316, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1961 = metadata !{i32 317, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !426, metadata !1960, i32 316, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1963 = metadata !{i32 318, i32 0, metadata !1962, null}
!1964 = metadata !{i32 319, i32 0, metadata !1962, null}
!1965 = metadata !{i32 330, i32 0, metadata !554, null}
!1966 = metadata !{i32 332, i32 0, metadata !554, null}
!1967 = metadata !{i32 333, i32 0, metadata !554, null}
!1968 = metadata !{i32 339, i32 0, metadata !561, null}
!1969 = metadata !{i32 341, i32 0, metadata !1970, null}
!1970 = metadata !{i32 786443, metadata !426, metadata !561, i32 341, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1971 = metadata !{i32 344, i32 0, metadata !1972, null}
!1972 = metadata !{i32 786443, metadata !426, metadata !561, i32 344, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1973 = metadata !{i32 345, i32 0, metadata !1974, null}
!1974 = metadata !{i32 786443, metadata !426, metadata !1972, i32 344, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1975 = metadata !{i32 346, i32 0, metadata !1974, null}
!1976 = metadata !{i32 64, i32 0, metadata !1027, metadata !1977}
!1977 = metadata !{i32 349, i32 0, metadata !561, null}
!1978 = metadata !{i32 65, i32 0, metadata !1026, metadata !1977}
!1979 = metadata !{i32 66, i32 0, metadata !1795, metadata !1977}
!1980 = metadata !{i32 351, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !426, metadata !561, i32 351, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1982 = metadata !{i32 352, i32 0, metadata !1983, null}
!1983 = metadata !{i32 786443, metadata !426, metadata !1981, i32 351, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1984 = metadata !{i32 353, i32 0, metadata !1983, null}
!1985 = metadata !{i32 356, i32 0, metadata !1986, null}
!1986 = metadata !{i32 786443, metadata !426, metadata !561, i32 356, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1987 = metadata !{i32 357, i32 0, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !426, metadata !1986, i32 356, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1989 = metadata !{i32 358, i32 0, metadata !1988, null}
!1990 = metadata !{i32 359, i32 0, metadata !1988, null}
!1991 = metadata !{i32 362, i32 0, metadata !574, null}
!1992 = metadata !{i32 1417, i32 0, metadata !1001, metadata !1993}
!1993 = metadata !{i32 365, i32 0, metadata !573, null}
!1994 = metadata !{i32 1418, i32 0, metadata !1001, metadata !1993}
!1995 = metadata !{i32 1423, i32 0, metadata !995, metadata !1996}
!1996 = metadata !{i32 366, i32 0, metadata !573, null}
!1997 = metadata !{i32 1424, i32 0, metadata !995, metadata !1996}
!1998 = metadata !{i32 370, i32 0, metadata !573, null}
!1999 = metadata !{i32 371, i32 0, metadata !2000, null}
!2000 = metadata !{i32 786443, metadata !426, metadata !573, i32 371, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2001 = metadata !{i32 372, i32 0, metadata !2000, null}
!2002 = metadata !{i32 374, i32 0, metadata !2000, null}
!2003 = metadata !{metadata !1545, metadata !1546, i64 8}
!2004 = metadata !{i32 376, i32 0, metadata !2005, null}
!2005 = metadata !{i32 786443, metadata !426, metadata !573, i32 376, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2006 = metadata !{i32 377, i32 0, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !426, metadata !2005, i32 376, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2008 = metadata !{i32 378, i32 0, metadata !2007, null}
!2009 = metadata !{i32 381, i32 0, metadata !2010, null}
!2010 = metadata !{i32 786443, metadata !426, metadata !573, i32 381, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2011 = metadata !{i32 383, i32 0, metadata !573, null}
!2012 = metadata !{i32 382, i32 0, metadata !2010, null}
!2013 = metadata !{i32 386, i32 0, metadata !2014, null}
!2014 = metadata !{i32 786443, metadata !426, metadata !574, i32 385, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2015 = metadata !{i32 387, i32 0, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !426, metadata !2014, i32 387, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2017 = metadata !{i32 391, i32 0, metadata !2018, null}
!2018 = metadata !{i32 786443, metadata !426, metadata !2014, i32 391, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2019 = metadata !{i32 392, i32 0, metadata !2020, null}
!2020 = metadata !{i32 786443, metadata !426, metadata !2018, i32 391, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2021 = metadata !{i32 395, i32 0, metadata !2014, null}
!2022 = metadata !{i32 396, i32 0, metadata !2014, null}
!2023 = metadata !{i32 398, i32 0, metadata !2014, null}
!2024 = metadata !{i32 400, i32 0, metadata !561, null}
!2025 = metadata !{i32 407, i32 0, metadata !575, null}
!2026 = metadata !{i32 64, i32 0, metadata !1027, metadata !2027}
!2027 = metadata !{i32 409, i32 0, metadata !575, null}
!2028 = metadata !{i32 65, i32 0, metadata !1026, metadata !2027}
!2029 = metadata !{i32 66, i32 0, metadata !1795, metadata !2027}
!2030 = metadata !{i32 411, i32 0, metadata !2031, null}
!2031 = metadata !{i32 786443, metadata !426, metadata !575, i32 411, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2032 = metadata !{i32 412, i32 0, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !426, metadata !2031, i32 411, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2034 = metadata !{i32 413, i32 0, metadata !2033, null}
!2035 = metadata !{i32 416, i32 0, metadata !2036, null}
!2036 = metadata !{i32 786443, metadata !426, metadata !575, i32 416, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2037 = metadata !{i32 417, i32 0, metadata !2038, null}
!2038 = metadata !{i32 786443, metadata !426, metadata !2036, i32 416, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2039 = metadata !{i32 418, i32 0, metadata !2038, null}
!2040 = metadata !{i32 419, i32 0, metadata !2038, null}
!2041 = metadata !{i32 422, i32 0, metadata !587, null}
!2042 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2043}
!2043 = metadata !{i32 425, i32 0, metadata !586, null}
!2044 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2043}
!2045 = metadata !{i32 1423, i32 0, metadata !995, metadata !2046}
!2046 = metadata !{i32 426, i32 0, metadata !586, null}
!2047 = metadata !{i32 1424, i32 0, metadata !995, metadata !2046}
!2048 = metadata !{i32 430, i32 0, metadata !586, null}
!2049 = metadata !{i32 431, i32 0, metadata !2050, null}
!2050 = metadata !{i32 786443, metadata !426, metadata !586, i32 431, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2051 = metadata !{i32 432, i32 0, metadata !2050, null}
!2052 = metadata !{i32 433, i32 0, metadata !2050, null}
!2053 = metadata !{i32 435, i32 0, metadata !2054, null}
!2054 = metadata !{i32 786443, metadata !426, metadata !586, i32 435, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2055 = metadata !{i32 436, i32 0, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !426, metadata !2054, i32 435, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2057 = metadata !{i32 437, i32 0, metadata !2056, null}
!2058 = metadata !{i32 440, i32 0, metadata !586, null}
!2059 = metadata !{i32 441, i32 0, metadata !2060, null}
!2060 = metadata !{i32 786443, metadata !426, metadata !586, i32 441, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2061 = metadata !{i32 444, i32 0, metadata !586, null}
!2062 = metadata !{i32 442, i32 0, metadata !2060, null}
!2063 = metadata !{i32 449, i32 0, metadata !2064, null}
!2064 = metadata !{i32 786443, metadata !426, metadata !589, i32 449, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2065 = metadata !{i32 452, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !426, metadata !2067, i32 452, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2067 = metadata !{i32 786443, metadata !426, metadata !2064, i32 451, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2068 = metadata !{i32 453, i32 0, metadata !2066, null}
!2069 = metadata !{i32 455, i32 0, metadata !2070, null}
!2070 = metadata !{i32 786443, metadata !426, metadata !2071, i32 455, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2071 = metadata !{i32 786443, metadata !426, metadata !2066, i32 454, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2072 = metadata !{i32 456, i32 0, metadata !2070, null}
!2073 = metadata !{i32 460, i32 0, metadata !2074, null}
!2074 = metadata !{i32 786443, metadata !426, metadata !589, i32 460, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2075 = metadata !{i32 461, i32 0, metadata !2074, null}
!2076 = metadata !{i32 463, i32 0, metadata !2077, null}
!2077 = metadata !{i32 786443, metadata !426, metadata !589, i32 463, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2078 = metadata !{i32 464, i32 0, metadata !2077, null}
!2079 = metadata !{i32 466, i32 0, metadata !2080, null}
!2080 = metadata !{i32 786443, metadata !426, metadata !589, i32 466, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2081 = metadata !{i32 467, i32 0, metadata !2080, null}
!2082 = metadata !{i32 469, i32 0, metadata !589, null}
!2083 = metadata !{i32 470, i32 0, metadata !589, null}
!2084 = metadata !{i32 472, i32 0, metadata !575, null}
!2085 = metadata !{i32 64, i32 0, metadata !1027, metadata !2086}
!2086 = metadata !{i32 477, i32 0, metadata !590, null}
!2087 = metadata !{i32 65, i32 0, metadata !1026, metadata !2086}
!2088 = metadata !{i32 66, i32 0, metadata !1795, metadata !2086}
!2089 = metadata !{i32 479, i32 0, metadata !2090, null}
!2090 = metadata !{i32 786443, metadata !426, metadata !590, i32 479, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2091 = metadata !{i32 480, i32 0, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !426, metadata !2090, i32 479, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2093 = metadata !{i32 481, i32 0, metadata !2092, null}
!2094 = metadata !{i32 484, i32 0, metadata !2095, null}
!2095 = metadata !{i32 786443, metadata !426, metadata !590, i32 484, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2096 = metadata !{i32 491, i32 0, metadata !2097, null}
!2097 = metadata !{i32 786443, metadata !426, metadata !2098, i32 491, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2098 = metadata !{i32 786443, metadata !426, metadata !2095, i32 484, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2099 = metadata !{i32 492, i32 0, metadata !2100, null}
!2100 = metadata !{i32 786443, metadata !426, metadata !2097, i32 491, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2101 = metadata !{i32 493, i32 0, metadata !2100, null}
!2102 = metadata !{i32 494, i32 0, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !426, metadata !2097, i32 493, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2104 = metadata !{i32 498, i32 0, metadata !2105, null}
!2105 = metadata !{i32 786443, metadata !426, metadata !2103, i32 498, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2106 = metadata !{i32 499, i32 0, metadata !2107, null}
!2107 = metadata !{i32 786443, metadata !426, metadata !2105, i32 498, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2108 = metadata !{i32 500, i32 0, metadata !2107, null}
!2109 = metadata !{i32 501, i32 0, metadata !2107, null}
!2110 = metadata !{i32 504, i32 0, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !426, metadata !2098, i32 504, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2112 = metadata !{i32 505, i32 0, metadata !2113, null}
!2113 = metadata !{i32 786443, metadata !426, metadata !2111, i32 504, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2114 = metadata !{i32 506, i32 0, metadata !2113, null}
!2115 = metadata !{i32 509, i32 0, metadata !2098, null}
!2116 = metadata !{i32 510, i32 0, metadata !2098, null}
!2117 = metadata !{i32 513, i32 0, metadata !590, null}
!2118 = metadata !{i32 515, i32 0, metadata !2119, null}
!2119 = metadata !{i32 786443, metadata !426, metadata !590, i32 513, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2120 = metadata !{i32 516, i32 0, metadata !2119, null}
!2121 = metadata !{i32 518, i32 0, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !426, metadata !2119, i32 517, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2123 = metadata !{i32 519, i32 0, metadata !2122, null}
!2124 = metadata !{i32 523, i32 0, metadata !2125, null}
!2125 = metadata !{i32 786443, metadata !426, metadata !590, i32 523, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2126 = metadata !{i32 524, i32 0, metadata !2127, null}
!2127 = metadata !{i32 786443, metadata !426, metadata !2125, i32 523, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2128 = metadata !{i32 525, i32 0, metadata !2127, null}
!2129 = metadata !{i32 528, i32 0, metadata !590, null}
!2130 = metadata !{i32 529, i32 0, metadata !590, null}
!2131 = metadata !{i32 530, i32 0, metadata !590, null}
!2132 = metadata !{i32 40, i32 0, metadata !1035, metadata !2133}
!2133 = metadata !{i32 533, i32 0, metadata !599, null}
!2134 = metadata !{i32 43, i32 0, metadata !1669, metadata !2133}
!2135 = metadata !{i32 46, i32 0, metadata !1046, metadata !2133}
!2136 = metadata !{i32 47, i32 0, metadata !1044, metadata !2133}
!2137 = metadata !{i32 48, i32 0, metadata !1043, metadata !2133}
!2138 = metadata !{i32 49, i32 0, metadata !1674, metadata !2133}
!2139 = metadata !{i32 534, i32 0, metadata !2140, null}
!2140 = metadata !{i32 786443, metadata !426, metadata !599, i32 534, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2141 = metadata !{i32 535, i32 0, metadata !2142, null}
!2142 = metadata !{i32 786443, metadata !426, metadata !2140, i32 534, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2143 = metadata !{i32 536, i32 0, metadata !2142, null}
!2144 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2145}
!2145 = metadata !{i32 1429, i32 0, metadata !982, metadata !2146}
!2146 = metadata !{i32 541, i32 0, metadata !607, null}
!2147 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2145}
!2148 = metadata !{i32 1432, i32 0, metadata !991, metadata !2146}
!2149 = metadata !{i32 1433, i32 0, metadata !990, metadata !2146}
!2150 = metadata !{i32 1434, i32 0, metadata !994, metadata !2146}
!2151 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2146}
!2152 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2146}
!2153 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2146}
!2154 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2146}
!2155 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2146}
!2156 = metadata !{i32 1442, i32 0, metadata !993, metadata !2146}
!2157 = metadata !{i32 1443, i32 0, metadata !993, metadata !2146}
!2158 = metadata !{i32 1444, i32 0, metadata !993, metadata !2146}
!2159 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2146}
!2160 = metadata !{i32 545, i32 0, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !426, metadata !607, i32 545, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2162 = metadata !{i32 546, i32 0, metadata !2161, null}
!2163 = metadata !{i32 549, i32 0, metadata !599, null}
!2164 = metadata !{i32 552, i32 0, metadata !636, null}
!2165 = metadata !{i32 64, i32 0, metadata !1027, metadata !2166}
!2166 = metadata !{i32 553, i32 0, metadata !635, null}
!2167 = metadata !{i32 65, i32 0, metadata !1026, metadata !2166}
!2168 = metadata !{i32 66, i32 0, metadata !1795, metadata !2166}
!2169 = metadata !{i32 555, i32 0, metadata !2170, null}
!2170 = metadata !{i32 786443, metadata !426, metadata !635, i32 555, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2171 = metadata !{i32 556, i32 0, metadata !2172, null}
!2172 = metadata !{i32 786443, metadata !426, metadata !2170, i32 555, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2173 = metadata !{i32 557, i32 0, metadata !2172, null}
!2174 = metadata !{i32 558, i32 0, metadata !2175, null}
!2175 = metadata !{i32 786443, metadata !426, metadata !2170, i32 558, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2176 = metadata !{i32 559, i32 0, metadata !2177, null}
!2177 = metadata !{i32 786443, metadata !426, metadata !2175, i32 558, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2178 = metadata !{i32 560, i32 0, metadata !2177, null}
!2179 = metadata !{i32 561, i32 0, metadata !2177, null}
!2180 = metadata !{i32 563, i32 0, metadata !635, null}
!2181 = metadata !{i32 564, i32 0, metadata !635, null}
!2182 = metadata !{i32 40, i32 0, metadata !1035, metadata !2183}
!2183 = metadata !{i32 565, i32 0, metadata !608, null}
!2184 = metadata !{i32 43, i32 0, metadata !1669, metadata !2183}
!2185 = metadata !{i32 46, i32 0, metadata !1046, metadata !2183}
!2186 = metadata !{i32 47, i32 0, metadata !1044, metadata !2183}
!2187 = metadata !{i32 48, i32 0, metadata !1043, metadata !2183}
!2188 = metadata !{i32 49, i32 0, metadata !1674, metadata !2183}
!2189 = metadata !{i32 566, i32 0, metadata !2190, null}
!2190 = metadata !{i32 786443, metadata !426, metadata !608, i32 566, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2191 = metadata !{i32 567, i32 0, metadata !2192, null}
!2192 = metadata !{i32 786443, metadata !426, metadata !2190, i32 566, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2193 = metadata !{i32 568, i32 0, metadata !2192, null}
!2194 = metadata !{i32 572, i32 0, metadata !608, null}
!2195 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2196}
!2196 = metadata !{i32 1429, i32 0, metadata !982, metadata !2197}
!2197 = metadata !{i32 573, i32 0, metadata !608, null}
!2198 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2196}
!2199 = metadata !{i32 1432, i32 0, metadata !991, metadata !2197}
!2200 = metadata !{i32 1433, i32 0, metadata !990, metadata !2197}
!2201 = metadata !{i32 1434, i32 0, metadata !994, metadata !2197}
!2202 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2197}
!2203 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2197}
!2204 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2197}
!2205 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2197}
!2206 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2197}
!2207 = metadata !{i32 1442, i32 0, metadata !993, metadata !2197}
!2208 = metadata !{i32 1443, i32 0, metadata !993, metadata !2197}
!2209 = metadata !{i32 1444, i32 0, metadata !993, metadata !2197}
!2210 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2197}
!2211 = metadata !{i32 581, i32 0, metadata !2212, null}
!2212 = metadata !{i32 786443, metadata !426, metadata !608, i32 581, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2213 = metadata !{i32 582, i32 0, metadata !2212, null}
!2214 = metadata !{i32 584, i32 0, metadata !608, null}
!2215 = metadata !{i32 40, i32 0, metadata !1035, metadata !2216}
!2216 = metadata !{i32 588, i32 0, metadata !639, null}
!2217 = metadata !{i32 43, i32 0, metadata !1669, metadata !2216}
!2218 = metadata !{i32 46, i32 0, metadata !1046, metadata !2216}
!2219 = metadata !{i32 47, i32 0, metadata !1044, metadata !2216}
!2220 = metadata !{i32 48, i32 0, metadata !1043, metadata !2216}
!2221 = metadata !{i32 49, i32 0, metadata !1674, metadata !2216}
!2222 = metadata !{i32 589, i32 0, metadata !2223, null}
!2223 = metadata !{i32 786443, metadata !426, metadata !639, i32 589, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2224 = metadata !{i32 590, i32 0, metadata !2225, null}
!2225 = metadata !{i32 786443, metadata !426, metadata !2223, i32 589, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2226 = metadata !{i32 591, i32 0, metadata !2225, null}
!2227 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2228}
!2228 = metadata !{i32 1429, i32 0, metadata !982, metadata !2229}
!2229 = metadata !{i32 596, i32 0, metadata !645, null}
!2230 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2228}
!2231 = metadata !{i32 1432, i32 0, metadata !991, metadata !2229}
!2232 = metadata !{i32 1433, i32 0, metadata !990, metadata !2229}
!2233 = metadata !{i32 1434, i32 0, metadata !994, metadata !2229}
!2234 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2229}
!2235 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2229}
!2236 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2229}
!2237 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2229}
!2238 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2229}
!2239 = metadata !{i32 1442, i32 0, metadata !993, metadata !2229}
!2240 = metadata !{i32 1443, i32 0, metadata !993, metadata !2229}
!2241 = metadata !{i32 1444, i32 0, metadata !993, metadata !2229}
!2242 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2229}
!2243 = metadata !{i32 600, i32 0, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !426, metadata !645, i32 600, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2245 = metadata !{i32 601, i32 0, metadata !2244, null}
!2246 = metadata !{i32 604, i32 0, metadata !639, null}
!2247 = metadata !{i32 40, i32 0, metadata !1035, metadata !2248}
!2248 = metadata !{i32 607, i32 0, metadata !646, null}
!2249 = metadata !{i32 43, i32 0, metadata !1669, metadata !2248}
!2250 = metadata !{i32 46, i32 0, metadata !1046, metadata !2248}
!2251 = metadata !{i32 47, i32 0, metadata !1044, metadata !2248}
!2252 = metadata !{i32 48, i32 0, metadata !1043, metadata !2248}
!2253 = metadata !{i32 49, i32 0, metadata !1674, metadata !2248}
!2254 = metadata !{i32 609, i32 0, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !426, metadata !646, i32 609, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2256 = metadata !{i32 611, i32 0, metadata !2257, null}
!2257 = metadata !{i32 786443, metadata !426, metadata !2255, i32 609, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2258 = metadata !{i32 612, i32 0, metadata !2257, null}
!2259 = metadata !{i32 613, i32 0, metadata !2257, null}
!2260 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2261}
!2261 = metadata !{i32 1429, i32 0, metadata !982, metadata !2262}
!2262 = metadata !{i32 617, i32 0, metadata !653, null}
!2263 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2261}
!2264 = metadata !{i32 1432, i32 0, metadata !991, metadata !2262}
!2265 = metadata !{i32 1433, i32 0, metadata !990, metadata !2262}
!2266 = metadata !{i32 1434, i32 0, metadata !994, metadata !2262}
!2267 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2262}
!2268 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2262}
!2269 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2262}
!2270 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2262}
!2271 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2262}
!2272 = metadata !{i32 1442, i32 0, metadata !993, metadata !2262}
!2273 = metadata !{i32 1443, i32 0, metadata !993, metadata !2262}
!2274 = metadata !{i32 1444, i32 0, metadata !993, metadata !2262}
!2275 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2262}
!2276 = metadata !{i32 618, i32 0, metadata !2277, null}
!2277 = metadata !{i32 786443, metadata !426, metadata !653, i32 618, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2278 = metadata !{i32 619, i32 0, metadata !2277, null}
!2279 = metadata !{i32 622, i32 0, metadata !646, null}
!2280 = metadata !{i32 64, i32 0, metadata !1027, metadata !2281}
!2281 = metadata !{i32 625, i32 0, metadata !654, null}
!2282 = metadata !{i32 65, i32 0, metadata !1026, metadata !2281}
!2283 = metadata !{i32 66, i32 0, metadata !1795, metadata !2281}
!2284 = metadata !{i32 627, i32 0, metadata !2285, null}
!2285 = metadata !{i32 786443, metadata !426, metadata !654, i32 627, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2286 = metadata !{i32 628, i32 0, metadata !2287, null}
!2287 = metadata !{i32 786443, metadata !426, metadata !2285, i32 627, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2288 = metadata !{i32 629, i32 0, metadata !2287, null}
!2289 = metadata !{i32 632, i32 0, metadata !660, null}
!2290 = metadata !{i32 633, i32 0, metadata !2291, null}
!2291 = metadata !{i32 786443, metadata !426, metadata !660, i32 632, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2292 = metadata !{i32 634, i32 0, metadata !2291, null}
!2293 = metadata !{i32 635, i32 0, metadata !2291, null}
!2294 = metadata !{i32 637, i32 0, metadata !659, null}
!2295 = metadata !{i32 638, i32 0, metadata !2296, null}
!2296 = metadata !{i32 786443, metadata !426, metadata !659, i32 638, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2297 = metadata !{i32 639, i32 0, metadata !2296, null}
!2298 = metadata !{i32 642, i32 0, metadata !654, null}
!2299 = metadata !{i32 40, i32 0, metadata !1035, metadata !2300}
!2300 = metadata !{i32 661, i32 0, metadata !661, null}
!2301 = metadata !{i32 43, i32 0, metadata !1669, metadata !2300}
!2302 = metadata !{i32 46, i32 0, metadata !1046, metadata !2300}
!2303 = metadata !{i32 47, i32 0, metadata !1044, metadata !2300}
!2304 = metadata !{i32 48, i32 0, metadata !1043, metadata !2300}
!2305 = metadata !{i32 49, i32 0, metadata !1674, metadata !2300}
!2306 = metadata !{i32 51, i32 0, metadata !1043, metadata !2300}
!2307 = metadata !{i32 663, i32 0, metadata !661, null}
!2308 = metadata !{i32 664, i32 0, metadata !2309, null}
!2309 = metadata !{i32 786443, metadata !426, metadata !661, i32 664, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2310 = metadata !{metadata !1529, metadata !1319, i64 88}
!2311 = metadata !{i32 665, i32 0, metadata !2312, null}
!2312 = metadata !{i32 786443, metadata !426, metadata !2309, i32 664, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2313 = metadata !{i32 666, i32 0, metadata !2312, null}
!2314 = metadata !{i32 667, i32 0, metadata !2312, null}
!2315 = metadata !{i32 670, i32 0, metadata !670, null}
!2316 = metadata !{i32 646, i32 0, metadata !2317, metadata !2318}
!2317 = metadata !{i32 786443, metadata !426, metadata !1014, i32 646, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2318 = metadata !{i32 671, i32 0, metadata !2319, null}
!2319 = metadata !{i32 786443, metadata !426, metadata !670, i32 670, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2320 = metadata !{i32 647, i32 0, metadata !2321, metadata !2318}
!2321 = metadata !{i32 786443, metadata !426, metadata !2322, i32 647, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2322 = metadata !{i32 786443, metadata !426, metadata !2317, i32 646, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2323 = metadata !{i32 648, i32 0, metadata !2321, metadata !2318}
!2324 = metadata !{i32 649, i32 0, metadata !2322, metadata !2318}
!2325 = metadata !{i32 651, i32 0, metadata !2322, metadata !2318}
!2326 = metadata !{i32 653, i32 0, metadata !2327, metadata !2318}
!2327 = metadata !{i32 786443, metadata !426, metadata !2317, i32 652, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2328 = metadata !{i32 654, i32 0, metadata !2327, metadata !2318}
!2329 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2330}
!2330 = metadata !{i32 1429, i32 0, metadata !982, metadata !2331}
!2331 = metadata !{i32 673, i32 0, metadata !669, null}
!2332 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2330}
!2333 = metadata !{i32 1432, i32 0, metadata !991, metadata !2331}
!2334 = metadata !{i32 1433, i32 0, metadata !990, metadata !2331}
!2335 = metadata !{i32 1434, i32 0, metadata !994, metadata !2331}
!2336 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2331}
!2337 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2331}
!2338 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2331}
!2339 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2331}
!2340 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2331}
!2341 = metadata !{i32 1442, i32 0, metadata !993, metadata !2331}
!2342 = metadata !{i32 1443, i32 0, metadata !993, metadata !2331}
!2343 = metadata !{i32 1444, i32 0, metadata !993, metadata !2331}
!2344 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2331}
!2345 = metadata !{i32 674, i32 0, metadata !2346, null}
!2346 = metadata !{i32 786443, metadata !426, metadata !669, i32 674, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2347 = metadata !{i32 675, i32 0, metadata !2346, null}
!2348 = metadata !{i32 678, i32 0, metadata !661, null}
!2349 = metadata !{i32 64, i32 0, metadata !1027, metadata !2350}
!2350 = metadata !{i32 683, i32 0, metadata !671, null}
!2351 = metadata !{i32 65, i32 0, metadata !1026, metadata !2350}
!2352 = metadata !{i32 66, i32 0, metadata !1795, metadata !2350}
!2353 = metadata !{i32 685, i32 0, metadata !2354, null}
!2354 = metadata !{i32 786443, metadata !426, metadata !671, i32 685, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2355 = metadata !{i32 686, i32 0, metadata !2356, null}
!2356 = metadata !{i32 786443, metadata !426, metadata !2354, i32 685, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2357 = metadata !{i32 687, i32 0, metadata !2356, null}
!2358 = metadata !{i32 690, i32 0, metadata !671, null}
!2359 = metadata !{i32 691, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !426, metadata !671, i32 691, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2361 = metadata !{metadata !1529, metadata !1319, i64 96}
!2362 = metadata !{i32 692, i32 0, metadata !2363, null}
!2363 = metadata !{i32 786443, metadata !426, metadata !2360, i32 691, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2364 = metadata !{i32 693, i32 0, metadata !2363, null}
!2365 = metadata !{i32 694, i32 0, metadata !2363, null}
!2366 = metadata !{i32 697, i32 0, metadata !680, null}
!2367 = metadata !{i32 646, i32 0, metadata !2317, metadata !2368}
!2368 = metadata !{i32 698, i32 0, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !426, metadata !680, i32 697, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2370 = metadata !{i32 647, i32 0, metadata !2321, metadata !2368}
!2371 = metadata !{i32 648, i32 0, metadata !2321, metadata !2368}
!2372 = metadata !{i32 649, i32 0, metadata !2322, metadata !2368}
!2373 = metadata !{i32 651, i32 0, metadata !2322, metadata !2368}
!2374 = metadata !{i32 653, i32 0, metadata !2327, metadata !2368}
!2375 = metadata !{i32 654, i32 0, metadata !2327, metadata !2368}
!2376 = metadata !{i32 700, i32 0, metadata !679, null}
!2377 = metadata !{i32 701, i32 0, metadata !2378, null}
!2378 = metadata !{i32 786443, metadata !426, metadata !679, i32 701, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2379 = metadata !{i32 702, i32 0, metadata !2378, null}
!2380 = metadata !{i32 705, i32 0, metadata !671, null}
!2381 = metadata !{i32 40, i32 0, metadata !1035, metadata !2382}
!2382 = metadata !{i32 714, i32 0, metadata !681, null}
!2383 = metadata !{i32 43, i32 0, metadata !1669, metadata !2382}
!2384 = metadata !{i32 46, i32 0, metadata !1046, metadata !2382}
!2385 = metadata !{i32 47, i32 0, metadata !1044, metadata !2382}
!2386 = metadata !{i32 48, i32 0, metadata !1043, metadata !2382}
!2387 = metadata !{i32 49, i32 0, metadata !1674, metadata !2382}
!2388 = metadata !{i32 716, i32 0, metadata !693, null}
!2389 = metadata !{i32 708, i32 0, metadata !1007, metadata !2390}
!2390 = metadata !{i32 717, i32 0, metadata !2391, null}
!2391 = metadata !{i32 786443, metadata !426, metadata !693, i32 716, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2392 = metadata !{i32 709, i32 0, metadata !1007, metadata !2390}
!2393 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2394}
!2394 = metadata !{i32 1429, i32 0, metadata !982, metadata !2395}
!2395 = metadata !{i32 719, i32 0, metadata !692, null}
!2396 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2394}
!2397 = metadata !{i32 1432, i32 0, metadata !991, metadata !2395}
!2398 = metadata !{i32 1433, i32 0, metadata !990, metadata !2395}
!2399 = metadata !{i32 1434, i32 0, metadata !994, metadata !2395}
!2400 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2395}
!2401 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2395}
!2402 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2395}
!2403 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2395}
!2404 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2395}
!2405 = metadata !{i32 1442, i32 0, metadata !993, metadata !2395}
!2406 = metadata !{i32 1443, i32 0, metadata !993, metadata !2395}
!2407 = metadata !{i32 1444, i32 0, metadata !993, metadata !2395}
!2408 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2395}
!2409 = metadata !{i32 720, i32 0, metadata !2410, null}
!2410 = metadata !{i32 786443, metadata !426, metadata !692, i32 720, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2411 = metadata !{i32 721, i32 0, metadata !2410, null}
!2412 = metadata !{i32 724, i32 0, metadata !681, null}
!2413 = metadata !{i32 64, i32 0, metadata !1027, metadata !2414}
!2414 = metadata !{i32 727, i32 0, metadata !694, null}
!2415 = metadata !{i32 65, i32 0, metadata !1026, metadata !2414}
!2416 = metadata !{i32 66, i32 0, metadata !1795, metadata !2414}
!2417 = metadata !{i32 729, i32 0, metadata !2418, null}
!2418 = metadata !{i32 786443, metadata !426, metadata !694, i32 729, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2419 = metadata !{i32 730, i32 0, metadata !2420, null}
!2420 = metadata !{i32 786443, metadata !426, metadata !2418, i32 729, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2421 = metadata !{i32 731, i32 0, metadata !2420, null}
!2422 = metadata !{i32 734, i32 0, metadata !704, null}
!2423 = metadata !{i32 708, i32 0, metadata !1007, metadata !2424}
!2424 = metadata !{i32 735, i32 0, metadata !2425, null}
!2425 = metadata !{i32 786443, metadata !426, metadata !704, i32 734, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2426 = metadata !{i32 709, i32 0, metadata !1007, metadata !2424}
!2427 = metadata !{i32 737, i32 0, metadata !703, null}
!2428 = metadata !{i32 738, i32 0, metadata !2429, null}
!2429 = metadata !{i32 786443, metadata !426, metadata !703, i32 738, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2430 = metadata !{i32 739, i32 0, metadata !2429, null}
!2431 = metadata !{i32 742, i32 0, metadata !694, null}
!2432 = metadata !{i32 40, i32 0, metadata !1035, metadata !2433}
!2433 = metadata !{i32 746, i32 0, metadata !705, null}
!2434 = metadata !{i32 43, i32 0, metadata !1669, metadata !2433}
!2435 = metadata !{i32 46, i32 0, metadata !1046, metadata !2433}
!2436 = metadata !{i32 47, i32 0, metadata !1044, metadata !2433}
!2437 = metadata !{i32 48, i32 0, metadata !1043, metadata !2433}
!2438 = metadata !{i32 49, i32 0, metadata !1674, metadata !2433}
!2439 = metadata !{i32 748, i32 0, metadata !713, null}
!2440 = metadata !{i32 708, i32 0, metadata !1007, metadata !2441}
!2441 = metadata !{i32 749, i32 0, metadata !2442, null}
!2442 = metadata !{i32 786443, metadata !426, metadata !713, i32 748, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2443 = metadata !{i32 709, i32 0, metadata !1007, metadata !2441}
!2444 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2445}
!2445 = metadata !{i32 1429, i32 0, metadata !982, metadata !2446}
!2446 = metadata !{i32 751, i32 0, metadata !712, null}
!2447 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2445}
!2448 = metadata !{i32 1432, i32 0, metadata !991, metadata !2446}
!2449 = metadata !{i32 1433, i32 0, metadata !990, metadata !2446}
!2450 = metadata !{i32 1434, i32 0, metadata !994, metadata !2446}
!2451 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2446}
!2452 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2446}
!2453 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2446}
!2454 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2446}
!2455 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2446}
!2456 = metadata !{i32 1442, i32 0, metadata !993, metadata !2446}
!2457 = metadata !{i32 1443, i32 0, metadata !993, metadata !2446}
!2458 = metadata !{i32 1444, i32 0, metadata !993, metadata !2446}
!2459 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2446}
!2460 = metadata !{i32 752, i32 0, metadata !2461, null}
!2461 = metadata !{i32 786443, metadata !426, metadata !712, i32 752, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2462 = metadata !{i32 753, i32 0, metadata !2461, null}
!2463 = metadata !{i32 756, i32 0, metadata !705, null}
!2464 = metadata !{i32 64, i32 0, metadata !1027, metadata !2465}
!2465 = metadata !{i32 759, i32 0, metadata !714, null}
!2466 = metadata !{i32 65, i32 0, metadata !1026, metadata !2465}
!2467 = metadata !{i32 66, i32 0, metadata !1795, metadata !2465}
!2468 = metadata !{i32 761, i32 0, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !426, metadata !714, i32 761, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2470 = metadata !{i32 762, i32 0, metadata !2471, null}
!2471 = metadata !{i32 786443, metadata !426, metadata !2469, i32 761, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2472 = metadata !{i32 763, i32 0, metadata !2471, null}
!2473 = metadata !{i32 766, i32 0, metadata !723, null}
!2474 = metadata !{i32 768, i32 0, metadata !722, null}
!2475 = metadata !{i32 772, i32 0, metadata !2476, null}
!2476 = metadata !{i32 786443, metadata !426, metadata !722, i32 772, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2477 = metadata !{i32 773, i32 0, metadata !2476, null}
!2478 = metadata !{i32 777, i32 0, metadata !714, null}
!2479 = metadata !{i32 778, i32 0, metadata !714, null}
!2480 = metadata !{i32 779, i32 0, metadata !714, null}
!2481 = metadata !{i32 64, i32 0, metadata !1027, metadata !2482}
!2482 = metadata !{i32 783, i32 0, metadata !724, null}
!2483 = metadata !{i32 65, i32 0, metadata !1026, metadata !2482}
!2484 = metadata !{i32 66, i32 0, metadata !1795, metadata !2482}
!2485 = metadata !{i32 785, i32 0, metadata !724, null}
!2486 = metadata !{i32 787, i32 0, metadata !2487, null}
!2487 = metadata !{i32 786443, metadata !426, metadata !724, i32 787, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2488 = metadata !{i32 788, i32 0, metadata !2489, null}
!2489 = metadata !{i32 786443, metadata !426, metadata !2487, i32 787, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2490 = metadata !{i32 789, i32 0, metadata !2489, null}
!2491 = metadata !{i32 792, i32 0, metadata !2492, null}
!2492 = metadata !{i32 786443, metadata !426, metadata !724, i32 792, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2493 = metadata !{i32 793, i32 0, metadata !2494, null}
!2494 = metadata !{i32 786443, metadata !426, metadata !2492, i32 792, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2495 = metadata !{i32 794, i32 0, metadata !2494, null}
!2496 = metadata !{i32 795, i32 0, metadata !2494, null}
!2497 = metadata !{i32 798, i32 0, metadata !733, null}
!2498 = metadata !{i32 799, i32 0, metadata !2499, null}
!2499 = metadata !{i32 786443, metadata !426, metadata !733, i32 798, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2500 = metadata !{i32 800, i32 0, metadata !2499, null}
!2501 = metadata !{i32 801, i32 0, metadata !2499, null}
!2502 = metadata !{i32 804, i32 0, metadata !732, null}
!2503 = metadata !{i32 808, i32 0, metadata !2504, null}
!2504 = metadata !{i32 786443, metadata !426, metadata !732, i32 808, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2505 = metadata !{i32 809, i32 0, metadata !2504, null}
!2506 = metadata !{i32 812, i32 0, metadata !724, null}
!2507 = metadata !{i32 64, i32 0, metadata !1027, metadata !2508}
!2508 = metadata !{i32 815, i32 0, metadata !734, null}
!2509 = metadata !{i32 65, i32 0, metadata !1026, metadata !2508}
!2510 = metadata !{i32 66, i32 0, metadata !1795, metadata !2508}
!2511 = metadata !{i32 817, i32 0, metadata !2512, null}
!2512 = metadata !{i32 786443, metadata !426, metadata !734, i32 817, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2513 = metadata !{i32 818, i32 0, metadata !2514, null}
!2514 = metadata !{i32 786443, metadata !426, metadata !2512, i32 817, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2515 = metadata !{i32 819, i32 0, metadata !2514, null}
!2516 = metadata !{i32 822, i32 0, metadata !754, null}
!2517 = metadata !{i32 823, i32 0, metadata !2518, null}
!2518 = metadata !{i32 786443, metadata !426, metadata !754, i32 822, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2519 = metadata !{i32 824, i32 0, metadata !2518, null}
!2520 = metadata !{i32 825, i32 0, metadata !2518, null}
!2521 = metadata !{i32 827, i32 0, metadata !752, null}
!2522 = metadata !{i32 832, i32 0, metadata !751, null}
!2523 = metadata !{i32 833, i32 0, metadata !2524, null}
!2524 = metadata !{i32 786443, metadata !426, metadata !751, i32 833, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2525 = metadata !{i32 838, i32 0, metadata !759, null}
!2526 = metadata !{i32 835, i32 0, metadata !2527, null}
!2527 = metadata !{i32 786443, metadata !426, metadata !2524, i32 834, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2528 = metadata !{i32 836, i32 0, metadata !2527, null}
!2529 = metadata !{i32 839, i32 0, metadata !758, null}
!2530 = metadata !{i32 840, i32 0, metadata !758, null}
!2531 = metadata !{metadata !2532, metadata !1546, i64 0}
!2532 = metadata !{metadata !"dirent64", metadata !1546, i64 0, metadata !1546, i64 8, metadata !2533, i64 16, metadata !1315, i64 18, metadata !1315, i64 19}
!2533 = metadata !{metadata !"short", metadata !1315, i64 0}
!2534 = metadata !{i32 841, i32 0, metadata !758, null}
!2535 = metadata !{metadata !2532, metadata !2533, i64 16}
!2536 = metadata !{i32 842, i32 0, metadata !758, null}
!2537 = metadata !{metadata !2532, metadata !1315, i64 18}
!2538 = metadata !{i32 843, i32 0, metadata !758, null}
!2539 = metadata !{i32 844, i32 0, metadata !758, null}
!2540 = metadata !{i32 845, i32 0, metadata !758, null}
!2541 = metadata !{metadata !2532, metadata !1546, i64 8}
!2542 = metadata !{i32 846, i32 0, metadata !758, null}
!2543 = metadata !{i32 847, i32 0, metadata !758, null}
!2544 = metadata !{i32 851, i32 0, metadata !751, null}
!2545 = metadata !{i32 852, i32 0, metadata !751, null}
!2546 = metadata !{i32 853, i32 0, metadata !751, null}
!2547 = metadata !{i32 854, i32 0, metadata !751, null}
!2548 = metadata !{i32 855, i32 0, metadata !751, null}
!2549 = metadata !{i32 856, i32 0, metadata !751, null}
!2550 = metadata !{i32 857, i32 0, metadata !751, null}
!2551 = metadata !{i32 858, i32 0, metadata !751, null}
!2552 = metadata !{i32 860, i32 0, metadata !751, null}
!2553 = metadata !{i32 862, i32 0, metadata !761, null}
!2554 = metadata !{i32 873, i32 0, metadata !761, null}
!2555 = metadata !{i32 874, i32 0, metadata !761, null}
!2556 = metadata !{i32 875, i32 0, metadata !761, null}
!2557 = metadata !{i32 876, i32 0, metadata !761, null}
!2558 = metadata !{i32 877, i32 0, metadata !766, null}
!2559 = metadata !{i32 878, i32 0, metadata !2560, null}
!2560 = metadata !{i32 786443, metadata !426, metadata !766, i32 877, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2561 = metadata !{i32 879, i32 0, metadata !2560, null}
!2562 = metadata !{i32 881, i32 0, metadata !765, null}
!2563 = metadata !{i32 885, i32 0, metadata !765, null}
!2564 = metadata !{i32 886, i32 0, metadata !768, null}
!2565 = metadata !{i32 887, i32 0, metadata !768, null}
!2566 = metadata !{i32 888, i32 0, metadata !768, null}
!2567 = metadata !{i32 895, i32 0, metadata !734, null}
!2568 = metadata !{i32 64, i32 0, metadata !1027, metadata !2569}
!2569 = metadata !{i32 902, i32 0, metadata !769, null}
!2570 = metadata !{i32 65, i32 0, metadata !1026, metadata !2569}
!2571 = metadata !{i32 66, i32 0, metadata !1795, metadata !2569}
!2572 = metadata !{i32 910, i32 0, metadata !2573, null}
!2573 = metadata !{i32 786443, metadata !426, metadata !769, i32 910, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2574 = metadata !{i32 911, i32 0, metadata !2575, null}
!2575 = metadata !{i32 786443, metadata !426, metadata !2573, i32 910, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2576 = metadata !{i32 912, i32 0, metadata !2575, null}
!2577 = metadata !{i32 915, i32 0, metadata !769, null}
!2578 = metadata !{i32 916, i32 0, metadata !769, null}
!2579 = metadata !{i32 917, i32 0, metadata !769, null}
!2580 = metadata !{i32 919, i32 0, metadata !791, null}
!2581 = metadata !{i32 920, i32 0, metadata !790, null}
!2582 = metadata !{i32 922, i32 0, metadata !790, null}
!2583 = metadata !{i32 926, i32 0, metadata !793, null}
!2584 = metadata !{i32 929, i32 0, metadata !2585, null}
!2585 = metadata !{i32 786443, metadata !426, metadata !793, i32 929, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2586 = metadata !{metadata !2587, metadata !1314, i64 24}
!2587 = metadata !{metadata !"stat", metadata !1546, i64 0, metadata !1546, i64 8, metadata !1546, i64 16, metadata !1314, i64 24, metadata !1314, i64 28, metadata !1314, i64 32, metadata !1314, i64 36, metadata !1546, i64 40, metadata !1546, i64 48, met
!2588 = metadata !{i32 932, i32 0, metadata !2589, null}
!2589 = metadata !{i32 786443, metadata !426, metadata !2585, i32 929, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2590 = metadata !{metadata !2591, metadata !1314, i64 0}
!2591 = metadata !{metadata !"termios", metadata !1314, i64 0, metadata !1314, i64 4, metadata !1314, i64 8, metadata !1314, i64 12, metadata !1315, i64 16, metadata !1315, i64 17, metadata !1314, i64 52, metadata !1314, i64 56}
!2592 = metadata !{i32 933, i32 0, metadata !2589, null}
!2593 = metadata !{metadata !2591, metadata !1314, i64 4}
!2594 = metadata !{i32 934, i32 0, metadata !2589, null}
!2595 = metadata !{metadata !2591, metadata !1314, i64 8}
!2596 = metadata !{i32 935, i32 0, metadata !2589, null}
!2597 = metadata !{metadata !2591, metadata !1314, i64 12}
!2598 = metadata !{i32 936, i32 0, metadata !2589, null}
!2599 = metadata !{metadata !2591, metadata !1315, i64 16}
!2600 = metadata !{i32 937, i32 0, metadata !2589, null}
!2601 = metadata !{i32 938, i32 0, metadata !2589, null}
!2602 = metadata !{i32 939, i32 0, metadata !2589, null}
!2603 = metadata !{i32 940, i32 0, metadata !2589, null}
!2604 = metadata !{i32 941, i32 0, metadata !2589, null}
!2605 = metadata !{i32 942, i32 0, metadata !2589, null}
!2606 = metadata !{i32 943, i32 0, metadata !2589, null}
!2607 = metadata !{i32 944, i32 0, metadata !2589, null}
!2608 = metadata !{i32 945, i32 0, metadata !2589, null}
!2609 = metadata !{i32 946, i32 0, metadata !2589, null}
!2610 = metadata !{i32 947, i32 0, metadata !2589, null}
!2611 = metadata !{i32 948, i32 0, metadata !2589, null}
!2612 = metadata !{i32 949, i32 0, metadata !2589, null}
!2613 = metadata !{i32 950, i32 0, metadata !2589, null}
!2614 = metadata !{i32 951, i32 0, metadata !2589, null}
!2615 = metadata !{i32 952, i32 0, metadata !2589, null}
!2616 = metadata !{i32 953, i32 0, metadata !2589, null}
!2617 = metadata !{i32 954, i32 0, metadata !2589, null}
!2618 = metadata !{i32 955, i32 0, metadata !2589, null}
!2619 = metadata !{i32 956, i32 0, metadata !2589, null}
!2620 = metadata !{i32 958, i32 0, metadata !2621, null}
!2621 = metadata !{i32 786443, metadata !426, metadata !2585, i32 957, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2622 = metadata !{i32 959, i32 0, metadata !2621, null}
!2623 = metadata !{i32 964, i32 0, metadata !2624, null}
!2624 = metadata !{i32 786443, metadata !426, metadata !794, i32 962, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2625 = metadata !{i32 965, i32 0, metadata !2626, null}
!2626 = metadata !{i32 786443, metadata !426, metadata !2624, i32 965, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2627 = metadata !{i32 968, i32 0, metadata !2628, null}
!2628 = metadata !{i32 786443, metadata !426, metadata !2626, i32 967, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2629 = metadata !{i32 969, i32 0, metadata !2628, null}
!2630 = metadata !{i32 974, i32 0, metadata !2631, null}
!2631 = metadata !{i32 786443, metadata !426, metadata !794, i32 972, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2632 = metadata !{i32 975, i32 0, metadata !2633, null}
!2633 = metadata !{i32 786443, metadata !426, metadata !2631, i32 975, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2634 = metadata !{i32 978, i32 0, metadata !2635, null}
!2635 = metadata !{i32 786443, metadata !426, metadata !2633, i32 977, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2636 = metadata !{i32 979, i32 0, metadata !2635, null}
!2637 = metadata !{i32 984, i32 0, metadata !2638, null}
!2638 = metadata !{i32 786443, metadata !426, metadata !794, i32 982, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2639 = metadata !{i32 985, i32 0, metadata !2640, null}
!2640 = metadata !{i32 786443, metadata !426, metadata !2638, i32 985, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2641 = metadata !{i32 988, i32 0, metadata !2642, null}
!2642 = metadata !{i32 786443, metadata !426, metadata !2640, i32 987, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2643 = metadata !{i32 989, i32 0, metadata !2642, null}
!2644 = metadata !{i32 994, i32 0, metadata !812, null}
!2645 = metadata !{metadata !2646, metadata !2533, i64 0}
!2646 = metadata !{metadata !"winsize", metadata !2533, i64 0, metadata !2533, i64 2, metadata !2533, i64 4, metadata !2533, i64 6}
!2647 = metadata !{i32 995, i32 0, metadata !812, null}
!2648 = metadata !{metadata !2646, metadata !2533, i64 2}
!2649 = metadata !{i32 996, i32 0, metadata !812, null}
!2650 = metadata !{i32 997, i32 0, metadata !2651, null}
!2651 = metadata !{i32 786443, metadata !426, metadata !812, i32 997, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2652 = metadata !{i32 1000, i32 0, metadata !2653, null}
!2653 = metadata !{i32 786443, metadata !426, metadata !2651, i32 999, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2654 = metadata !{i32 1001, i32 0, metadata !2653, null}
!2655 = metadata !{i32 1006, i32 0, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !426, metadata !794, i32 1004, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2657 = metadata !{i32 1007, i32 0, metadata !2658, null}
!2658 = metadata !{i32 786443, metadata !426, metadata !2656, i32 1007, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2659 = metadata !{i32 1008, i32 0, metadata !2660, null}
!2660 = metadata !{i32 786443, metadata !426, metadata !2658, i32 1007, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2661 = metadata !{i32 1009, i32 0, metadata !2660, null}
!2662 = metadata !{i32 1011, i32 0, metadata !2663, null}
!2663 = metadata !{i32 786443, metadata !426, metadata !2658, i32 1010, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2664 = metadata !{i32 1012, i32 0, metadata !2663, null}
!2665 = metadata !{i32 1016, i32 0, metadata !822, null}
!2666 = metadata !{i32 1017, i32 0, metadata !822, null}
!2667 = metadata !{i32 1018, i32 0, metadata !2668, null}
!2668 = metadata !{i32 786443, metadata !426, metadata !822, i32 1018, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2669 = metadata !{i32 1019, i32 0, metadata !2670, null}
!2670 = metadata !{i32 786443, metadata !426, metadata !2671, i32 1019, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2671 = metadata !{i32 786443, metadata !426, metadata !2668, i32 1018, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2672 = metadata !{i32 1020, i32 0, metadata !2673, null}
!2673 = metadata !{i32 786443, metadata !426, metadata !2670, i32 1019, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2674 = metadata !{i32 1021, i32 0, metadata !2673, null}
!2675 = metadata !{i32 1024, i32 0, metadata !2671, null}
!2676 = metadata !{i32 1026, i32 0, metadata !2677, null}
!2677 = metadata !{i32 786443, metadata !426, metadata !2668, i32 1025, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2678 = metadata !{i32 1027, i32 0, metadata !2677, null}
!2679 = metadata !{i32 1031, i32 0, metadata !2680, null}
!2680 = metadata !{i32 786443, metadata !426, metadata !794, i32 1030, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2681 = metadata !{i32 1032, i32 0, metadata !2680, null}
!2682 = metadata !{i32 1033, i32 0, metadata !2680, null}
!2683 = metadata !{i32 1036, i32 0, metadata !794, null}
!2684 = metadata !{i32 1037, i32 0, metadata !794, null}
!2685 = metadata !{i32 1038, i32 0, metadata !794, null}
!2686 = metadata !{i32 1041, i32 0, metadata !824, null}
!2687 = metadata !{i32 1042, i32 0, metadata !2688, null}
!2688 = metadata !{i32 786443, metadata !426, metadata !824, i32 1042, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2689 = metadata !{i32 1043, i32 0, metadata !2688, null}
!2690 = metadata !{i32 1046, i32 0, metadata !769, null}
!2691 = metadata !{i32 64, i32 0, metadata !1027, metadata !2692}
!2692 = metadata !{i32 1049, i32 0, metadata !825, null}
!2693 = metadata !{i32 65, i32 0, metadata !1026, metadata !2692}
!2694 = metadata !{i32 66, i32 0, metadata !1795, metadata !2692}
!2695 = metadata !{i32 1053, i32 0, metadata !2696, null}
!2696 = metadata !{i32 786443, metadata !426, metadata !825, i32 1053, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2697 = metadata !{i32 1054, i32 0, metadata !2698, null}
!2698 = metadata !{i32 786443, metadata !426, metadata !2696, i32 1053, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2699 = metadata !{i32 1055, i32 0, metadata !2698, null}
!2700 = metadata !{i32 1058, i32 0, metadata !2701, null}
!2701 = metadata !{i32 786443, metadata !426, metadata !825, i32 1058, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2702 = metadata !{i32 1062, i32 0, metadata !2703, null}
!2703 = metadata !{i32 786443, metadata !426, metadata !2701, i32 1061, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2704 = metadata !{i32 1063, i32 0, metadata !2703, null}
!2705 = metadata !{i32 1064, i32 0, metadata !2703, null}
!2706 = metadata !{i32 1067, i32 0, metadata !838, null}
!2707 = metadata !{i32 1068, i32 0, metadata !837, null}
!2708 = metadata !{i32 1071, i32 0, metadata !2709, null}
!2709 = metadata !{i32 786443, metadata !426, metadata !835, i32 1071, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2710 = metadata !{i32 1073, i32 0, metadata !835, null}
!2711 = metadata !{i32 1076, i32 0, metadata !2712, null}
!2712 = metadata !{i32 786443, metadata !426, metadata !836, i32 1075, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2713 = metadata !{i32 1077, i32 0, metadata !2714, null}
!2714 = metadata !{i32 786443, metadata !426, metadata !2712, i32 1077, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2715 = metadata !{i32 1078, i32 0, metadata !2714, null}
!2716 = metadata !{i32 1079, i32 0, metadata !2712, null}
!2717 = metadata !{i32 1091, i32 0, metadata !836, null}
!2718 = metadata !{i32 1092, i32 0, metadata !836, null}
!2719 = metadata !{i32 1093, i32 0, metadata !836, null}
!2720 = metadata !{i32 1096, i32 0, metadata !840, null}
!2721 = metadata !{i32 1097, i32 0, metadata !2722, null}
!2722 = metadata !{i32 786443, metadata !426, metadata !840, i32 1097, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2723 = metadata !{i32 1098, i32 0, metadata !2722, null}
!2724 = metadata !{i32 1101, i32 0, metadata !825, null}
!2725 = metadata !{i32 40, i32 0, metadata !1035, metadata !2726}
!2726 = metadata !{i32 1104, i32 0, metadata !841, null}
!2727 = metadata !{i32 43, i32 0, metadata !1669, metadata !2726}
!2728 = metadata !{i32 46, i32 0, metadata !1046, metadata !2726}
!2729 = metadata !{i32 47, i32 0, metadata !1044, metadata !2726}
!2730 = metadata !{i32 48, i32 0, metadata !1043, metadata !2726}
!2731 = metadata !{i32 49, i32 0, metadata !1674, metadata !2726}
!2732 = metadata !{i32 1105, i32 0, metadata !2733, null}
!2733 = metadata !{i32 786443, metadata !426, metadata !841, i32 1105, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2734 = metadata !{i32 1107, i32 0, metadata !2735, null}
!2735 = metadata !{i32 786443, metadata !426, metadata !2733, i32 1105, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2736 = metadata !{i32 1108, i32 0, metadata !2735, null}
!2737 = metadata !{i32 1109, i32 0, metadata !2735, null}
!2738 = metadata !{i32 1417, i32 0, metadata !1001, metadata !2739}
!2739 = metadata !{i32 1429, i32 0, metadata !982, metadata !2740}
!2740 = metadata !{i32 1113, i32 0, metadata !870, null}
!2741 = metadata !{i32 1418, i32 0, metadata !1001, metadata !2739}
!2742 = metadata !{i32 1432, i32 0, metadata !991, metadata !2740}
!2743 = metadata !{i32 1433, i32 0, metadata !990, metadata !2740}
!2744 = metadata !{i32 1434, i32 0, metadata !994, metadata !2740}
!2745 = metadata !{i32 1435, i32 0, metadata !1684, metadata !2740}
!2746 = metadata !{i32 1436, i32 0, metadata !1687, metadata !2740}
!2747 = metadata !{i32 1437, i32 0, metadata !1687, metadata !2740}
!2748 = metadata !{i32 1439, i32 0, metadata !1690, metadata !2740}
!2749 = metadata !{i32 1440, i32 0, metadata !1690, metadata !2740}
!2750 = metadata !{i32 1442, i32 0, metadata !993, metadata !2740}
!2751 = metadata !{i32 1443, i32 0, metadata !993, metadata !2740}
!2752 = metadata !{i32 1444, i32 0, metadata !993, metadata !2740}
!2753 = metadata !{i32 1445, i32 0, metadata !1697, metadata !2740}
!2754 = metadata !{i32 1114, i32 0, metadata !2755, null}
!2755 = metadata !{i32 786443, metadata !426, metadata !870, i32 1114, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2756 = metadata !{i32 1115, i32 0, metadata !2755, null}
!2757 = metadata !{i32 1118, i32 0, metadata !841, null}
!2758 = metadata !{i32 64, i32 0, metadata !1027, metadata !2759}
!2759 = metadata !{i32 1121, i32 0, metadata !871, null}
!2760 = metadata !{i32 65, i32 0, metadata !1026, metadata !2759}
!2761 = metadata !{i32 66, i32 0, metadata !1795, metadata !2759}
!2762 = metadata !{i32 1123, i32 0, metadata !2763, null}
!2763 = metadata !{i32 786443, metadata !426, metadata !871, i32 1123, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2764 = metadata !{i32 1124, i32 0, metadata !2765, null}
!2765 = metadata !{i32 786443, metadata !426, metadata !2763, i32 1123, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2766 = metadata !{i32 1125, i32 0, metadata !2765, null}
!2767 = metadata !{i32 1128, i32 0, metadata !880, null}
!2768 = metadata !{i32 1129, i32 0, metadata !2769, null}
!2769 = metadata !{i32 786443, metadata !426, metadata !880, i32 1128, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2770 = metadata !{i32 1130, i32 0, metadata !2769, null}
!2771 = metadata !{i32 1131, i32 0, metadata !2769, null}
!2772 = metadata !{i32 1133, i32 0, metadata !879, null}
!2773 = metadata !{i32 1134, i32 0, metadata !2774, null}
!2774 = metadata !{i32 786443, metadata !426, metadata !879, i32 1134, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2775 = metadata !{i32 1135, i32 0, metadata !2774, null}
!2776 = metadata !{i32 1138, i32 0, metadata !871, null}
!2777 = metadata !{i32 64, i32 0, metadata !1027, metadata !2778}
!2778 = metadata !{i32 1141, i32 0, metadata !881, null}
!2779 = metadata !{i32 65, i32 0, metadata !1026, metadata !2778}
!2780 = metadata !{i32 66, i32 0, metadata !1795, metadata !2778}
!2781 = metadata !{i32 1143, i32 0, metadata !888, null}
!2782 = metadata !{i32 1144, i32 0, metadata !2783, null}
!2783 = metadata !{i32 786443, metadata !426, metadata !888, i32 1143, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2784 = metadata !{i32 1145, i32 0, metadata !2783, null}
!2785 = metadata !{i32 1146, i32 0, metadata !887, null}
!2786 = metadata !{i32 1149, i32 0, metadata !886, null}
!2787 = metadata !{i32 1150, i32 0, metadata !2788, null}
!2788 = metadata !{i32 786443, metadata !426, metadata !886, i32 1150, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2789 = metadata !{i32 1151, i32 0, metadata !2788, null}
!2790 = metadata !{i32 1154, i32 0, metadata !881, null}
!2791 = metadata !{i32 64, i32 0, metadata !1027, metadata !2792}
!2792 = metadata !{i32 1157, i32 0, metadata !889, null}
!2793 = metadata !{i32 65, i32 0, metadata !1026, metadata !2792}
!2794 = metadata !{i32 66, i32 0, metadata !1795, metadata !2792}
!2795 = metadata !{i32 1159, i32 0, metadata !896, null}
!2796 = metadata !{i32 1160, i32 0, metadata !2797, null}
!2797 = metadata !{i32 786443, metadata !426, metadata !896, i32 1159, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2798 = metadata !{i32 1161, i32 0, metadata !2797, null}
!2799 = metadata !{i32 1163, i32 0, metadata !895, null}
!2800 = metadata !{i32 1164, i32 0, metadata !2801, null}
!2801 = metadata !{i32 786443, metadata !426, metadata !895, i32 1164, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2802 = metadata !{i32 308, i32 0, metadata !554, metadata !2800}
!2803 = metadata !{i32 64, i32 0, metadata !1027, metadata !2804}
!2804 = metadata !{i32 310, i32 0, metadata !554, metadata !2800}
!2805 = metadata !{i32 311, i32 0, metadata !1955, metadata !2800}
!2806 = metadata !{i32 312, i32 0, metadata !1957, metadata !2800}
!2807 = metadata !{i32 313, i32 0, metadata !1957, metadata !2800}
!2808 = metadata !{i32 316, i32 0, metadata !1960, metadata !2800}
!2809 = metadata !{i32 317, i32 0, metadata !1962, metadata !2800}
!2810 = metadata !{i32 318, i32 0, metadata !1962, metadata !2800}
!2811 = metadata !{i32 319, i32 0, metadata !1962, metadata !2800}
!2812 = metadata !{i32 330, i32 0, metadata !554, metadata !2800}
!2813 = metadata !{i32 332, i32 0, metadata !554, metadata !2800}
!2814 = metadata !{i32 1168, i32 0, metadata !895, null}
!2815 = metadata !{i32 1170, i32 0, metadata !895, null}
!2816 = metadata !{i32 1177, i32 0, metadata !895, null}
!2817 = metadata !{i32 1179, i32 0, metadata !889, null}
!2818 = metadata !{i32 64, i32 0, metadata !1027, metadata !2819}
!2819 = metadata !{i32 1182, i32 0, metadata !897, null}
!2820 = metadata !{i32 65, i32 0, metadata !1026, metadata !2819}
!2821 = metadata !{i32 66, i32 0, metadata !1795, metadata !2819}
!2822 = metadata !{i32 1183, i32 0, metadata !903, null}
!2823 = metadata !{i32 1184, i32 0, metadata !2824, null}
!2824 = metadata !{i32 786443, metadata !426, metadata !903, i32 1183, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2825 = metadata !{i32 1185, i32 0, metadata !2824, null}
!2826 = metadata !{i32 1188, i32 0, metadata !2827, null}
!2827 = metadata !{i32 786443, metadata !426, metadata !902, i32 1188, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2828 = metadata !{i32 1189, i32 0, metadata !2829, null}
!2829 = metadata !{i32 786443, metadata !426, metadata !2827, i32 1189, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2830 = metadata !{i32 1191, i32 0, metadata !2831, null}
!2831 = metadata !{i32 786443, metadata !426, metadata !902, i32 1191, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2832 = metadata !{i32 1192, i32 0, metadata !2833, null}
!2833 = metadata !{i32 786443, metadata !426, metadata !2831, i32 1191, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2834 = metadata !{i32 1193, i32 0, metadata !2833, null}
!2835 = metadata !{i32 1195, i32 0, metadata !2836, null}
!2836 = metadata !{i32 786443, metadata !426, metadata !2831, i32 1194, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2837 = metadata !{i32 1198, i32 0, metadata !897, null}
!2838 = metadata !{i32 40, i32 0, metadata !1035, metadata !2839}
!2839 = metadata !{i32 1201, i32 0, metadata !904, null}
!2840 = metadata !{i32 43, i32 0, metadata !1669, metadata !2839}
!2841 = metadata !{i32 46, i32 0, metadata !1046, metadata !2839}
!2842 = metadata !{i32 47, i32 0, metadata !1044, metadata !2839}
!2843 = metadata !{i32 48, i32 0, metadata !1043, metadata !2839}
!2844 = metadata !{i32 49, i32 0, metadata !1674, metadata !2839}
!2845 = metadata !{i32 1202, i32 0, metadata !2846, null}
!2846 = metadata !{i32 786443, metadata !426, metadata !904, i32 1202, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2847 = metadata !{i32 1204, i32 0, metadata !2848, null}
!2848 = metadata !{i32 786443, metadata !426, metadata !2849, i32 1204, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2849 = metadata !{i32 786443, metadata !426, metadata !2846, i32 1202, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2850 = metadata !{i32 1205, i32 0, metadata !2851, null}
!2851 = metadata !{i32 786443, metadata !426, metadata !2848, i32 1204, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2852 = metadata !{i32 1206, i32 0, metadata !2851, null}
!2853 = metadata !{i32 1208, i32 0, metadata !2854, null}
!2854 = metadata !{i32 786443, metadata !426, metadata !2848, i32 1207, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2855 = metadata !{i32 1209, i32 0, metadata !2854, null}
!2856 = metadata !{i32 1213, i32 0, metadata !904, null}
!2857 = metadata !{i32 1214, i32 0, metadata !904, null}
!2858 = metadata !{i32 1215, i32 0, metadata !904, null}
!2859 = metadata !{i32 1216, i32 0, metadata !904, null}
!2860 = metadata !{i32 40, i32 0, metadata !1035, metadata !2861}
!2861 = metadata !{i32 1219, i32 0, metadata !908, null}
!2862 = metadata !{i32 43, i32 0, metadata !1669, metadata !2861}
!2863 = metadata !{i32 46, i32 0, metadata !1046, metadata !2861}
!2864 = metadata !{i32 47, i32 0, metadata !1044, metadata !2861}
!2865 = metadata !{i32 48, i32 0, metadata !1043, metadata !2861}
!2866 = metadata !{i32 49, i32 0, metadata !1674, metadata !2861}
!2867 = metadata !{i32 1220, i32 0, metadata !2868, null}
!2868 = metadata !{i32 786443, metadata !426, metadata !908, i32 1220, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2869 = metadata !{i32 1222, i32 0, metadata !2870, null}
!2870 = metadata !{i32 786443, metadata !426, metadata !2871, i32 1222, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2871 = metadata !{i32 786443, metadata !426, metadata !2868, i32 1220, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2872 = metadata !{i32 1223, i32 0, metadata !2873, null}
!2873 = metadata !{i32 786443, metadata !426, metadata !2870, i32 1222, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2874 = metadata !{i32 1224, i32 0, metadata !2873, null}
!2875 = metadata !{i32 1225, i32 0, metadata !2876, null}
!2876 = metadata !{i32 786443, metadata !426, metadata !2870, i32 1225, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2877 = metadata !{i32 1226, i32 0, metadata !2878, null}
!2878 = metadata !{i32 786443, metadata !426, metadata !2876, i32 1225, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2879 = metadata !{i32 1227, i32 0, metadata !2878, null}
!2880 = metadata !{i32 1229, i32 0, metadata !2881, null}
!2881 = metadata !{i32 786443, metadata !426, metadata !2876, i32 1228, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2882 = metadata !{i32 1230, i32 0, metadata !2881, null}
!2883 = metadata !{i32 1234, i32 0, metadata !908, null}
!2884 = metadata !{i32 1235, i32 0, metadata !908, null}
!2885 = metadata !{i32 1236, i32 0, metadata !908, null}
!2886 = metadata !{i32 1237, i32 0, metadata !908, null}
!2887 = metadata !{i32 40, i32 0, metadata !1035, metadata !2888}
!2888 = metadata !{i32 1242, i32 0, metadata !912, null}
!2889 = metadata !{i32 43, i32 0, metadata !1669, metadata !2888}
!2890 = metadata !{i32 46, i32 0, metadata !1046, metadata !2888}
!2891 = metadata !{i32 47, i32 0, metadata !1044, metadata !2888}
!2892 = metadata !{i32 48, i32 0, metadata !1043, metadata !2888}
!2893 = metadata !{i32 49, i32 0, metadata !1674, metadata !2888}
!2894 = metadata !{i32 1243, i32 0, metadata !2895, null}
!2895 = metadata !{i32 786443, metadata !426, metadata !912, i32 1243, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2896 = metadata !{i32 1245, i32 0, metadata !2897, null}
!2897 = metadata !{i32 786443, metadata !426, metadata !2898, i32 1245, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2898 = metadata !{i32 786443, metadata !426, metadata !2895, i32 1243, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2899 = metadata !{i32 1246, i32 0, metadata !2900, null}
!2900 = metadata !{i32 786443, metadata !426, metadata !2897, i32 1245, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2901 = metadata !{i32 1247, i32 0, metadata !2900, null}
!2902 = metadata !{i32 1248, i32 0, metadata !2903, null}
!2903 = metadata !{i32 786443, metadata !426, metadata !2897, i32 1248, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2904 = metadata !{i32 1249, i32 0, metadata !2905, null}
!2905 = metadata !{i32 786443, metadata !426, metadata !2903, i32 1248, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2906 = metadata !{i32 1250, i32 0, metadata !2905, null}
!2907 = metadata !{i32 1252, i32 0, metadata !2908, null}
!2908 = metadata !{i32 786443, metadata !426, metadata !2903, i32 1251, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2909 = metadata !{i32 1253, i32 0, metadata !2908, null}
!2910 = metadata !{i32 1257, i32 0, metadata !912, null}
!2911 = metadata !{i32 1258, i32 0, metadata !912, null}
!2912 = metadata !{i32 1259, i32 0, metadata !912, null}
!2913 = metadata !{i32 1260, i32 0, metadata !912, null}
!2914 = metadata !{i32 40, i32 0, metadata !1035, metadata !2915}
!2915 = metadata !{i32 1263, i32 0, metadata !918, null}
!2916 = metadata !{i32 43, i32 0, metadata !1669, metadata !2915}
!2917 = metadata !{i32 46, i32 0, metadata !1046, metadata !2915}
!2918 = metadata !{i32 47, i32 0, metadata !1044, metadata !2915}
!2919 = metadata !{i32 48, i32 0, metadata !1043, metadata !2915}
!2920 = metadata !{i32 49, i32 0, metadata !1674, metadata !2915}
!2921 = metadata !{i32 1264, i32 0, metadata !928, null}
!2922 = metadata !{i32 1267, i32 0, metadata !2923, null}
!2923 = metadata !{i32 786443, metadata !426, metadata !2924, i32 1267, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2924 = metadata !{i32 786443, metadata !426, metadata !928, i32 1264, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2925 = metadata !{i32 1268, i32 0, metadata !2926, null}
!2926 = metadata !{i32 786443, metadata !426, metadata !2923, i32 1267, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2927 = metadata !{i32 1269, i32 0, metadata !2928, null}
!2928 = metadata !{i32 786443, metadata !426, metadata !2926, i32 1269, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2929 = metadata !{i32 1270, i32 0, metadata !2930, null}
!2930 = metadata !{i32 786443, metadata !426, metadata !2926, i32 1270, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2931 = metadata !{i32 1271, i32 0, metadata !2932, null}
!2932 = metadata !{i32 786443, metadata !426, metadata !2926, i32 1271, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2933 = metadata !{i32 1272, i32 0, metadata !2934, null}
!2934 = metadata !{i32 786443, metadata !426, metadata !2926, i32 1272, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2935 = metadata !{i32 1273, i32 0, metadata !2926, null}
!2936 = metadata !{i32 1275, i32 0, metadata !2937, null}
!2937 = metadata !{i32 786443, metadata !426, metadata !2923, i32 1274, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2938 = metadata !{i32 1276, i32 0, metadata !2937, null}
!2939 = metadata !{i32 1279, i32 0, metadata !927, null}
!2940 = metadata !{i32 1280, i32 0, metadata !2941, null}
!2941 = metadata !{i32 786443, metadata !426, metadata !927, i32 1280, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2942 = metadata !{i32 1281, i32 0, metadata !2941, null}
!2943 = metadata !{i32 1282, i32 0, metadata !927, null}
!2944 = metadata !{i32 1284, i32 0, metadata !918, null}
!2945 = metadata !{i32 1296, i32 0, metadata !929, null}
!2946 = metadata !{i32 1299, i32 0, metadata !2947, null}
!2947 = metadata !{i32 786443, metadata !426, metadata !929, i32 1299, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2948 = metadata !{i32 1300, i32 0, metadata !2949, null}
!2949 = metadata !{i32 786443, metadata !426, metadata !2947, i32 1299, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2950 = metadata !{i32 1302, i32 0, metadata !2949, null}
!2951 = metadata !{i32 1306, i32 0, metadata !2952, null}
!2952 = metadata !{i32 786443, metadata !426, metadata !929, i32 1306, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2953 = metadata !{i32 1307, i32 0, metadata !2954, null}
!2954 = metadata !{i32 786443, metadata !426, metadata !2952, i32 1306, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2955 = metadata !{i32 1309, i32 0, metadata !2954, null}
!2956 = metadata !{i32 1313, i32 0, metadata !2957, null}
!2957 = metadata !{i32 786443, metadata !426, metadata !929, i32 1313, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2958 = metadata !{i32 1314, i32 0, metadata !2959, null}
!2959 = metadata !{i32 786443, metadata !426, metadata !2957, i32 1313, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2960 = metadata !{i32 1316, i32 0, metadata !2959, null}
!2961 = metadata !{i32 1325, i32 0, metadata !962, null}
!2962 = metadata !{i32 1326, i32 0, metadata !960, null}
!2963 = metadata !{metadata !1546, metadata !1546, i64 0}
!2964 = metadata !{i32 64, i32 0, metadata !1027, metadata !2965}
!2965 = metadata !{i32 1327, i32 0, metadata !959, null}
!2966 = metadata !{i32 66, i32 0, metadata !1795, metadata !2965}
!2967 = metadata !{i32 65, i32 0, metadata !1026, metadata !2965}
!2968 = metadata !{i32 1328, i32 0, metadata !2969, null}
!2969 = metadata !{i32 786443, metadata !426, metadata !959, i32 1328, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2970 = metadata !{i32 1329, i32 0, metadata !2971, null}
!2971 = metadata !{i32 786443, metadata !426, metadata !2969, i32 1328, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2972 = metadata !{i32 1330, i32 0, metadata !2971, null}
!2973 = metadata !{i32 1331, i32 0, metadata !2974, null}
!2974 = metadata !{i32 786443, metadata !426, metadata !2969, i32 1331, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2975 = metadata !{i32 1333, i32 0, metadata !2976, null}
!2976 = metadata !{i32 786443, metadata !426, metadata !2977, i32 1333, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2977 = metadata !{i32 786443, metadata !426, metadata !2974, i32 1331, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2978 = metadata !{i32 1334, i32 0, metadata !2979, null}
!2979 = metadata !{i32 786443, metadata !426, metadata !2977, i32 1334, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2980 = metadata !{i32 1335, i32 0, metadata !2981, null}
!2981 = metadata !{i32 786443, metadata !426, metadata !2977, i32 1335, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2982 = metadata !{i32 1336, i32 0, metadata !2977, null}
!2983 = metadata !{i32 1337, i32 0, metadata !2977, null}
!2984 = metadata !{i32 1338, i32 0, metadata !2985, null}
!2985 = metadata !{i32 786443, metadata !426, metadata !2986, i32 1338, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2986 = metadata !{i32 786443, metadata !426, metadata !2974, i32 1337, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2987 = metadata !{i32 1339, i32 0, metadata !2988, null}
!2988 = metadata !{i32 786443, metadata !426, metadata !2986, i32 1339, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2989 = metadata !{i32 1340, i32 0, metadata !2990, null}
!2990 = metadata !{i32 786443, metadata !426, metadata !2986, i32 1340, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2991 = metadata !{i32 1341, i32 0, metadata !2992, null}
!2992 = metadata !{i32 786443, metadata !426, metadata !2986, i32 1341, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2993 = metadata !{i32 1346, i32 0, metadata !965, null}
!2994 = metadata !{i32 1349, i32 0, metadata !964, null}
!2995 = metadata !{i32 1350, i32 0, metadata !964, null}
!2996 = metadata !{i32 1353, i32 0, metadata !971, null}
!2997 = metadata !{i32 1356, i32 0, metadata !2998, null}
!2998 = metadata !{i32 786443, metadata !426, metadata !2999, i32 1356, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2999 = metadata !{i32 786443, metadata !426, metadata !971, i32 1353, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3000 = metadata !{i32 1357, i32 0, metadata !3001, null}
!3001 = metadata !{i32 786443, metadata !426, metadata !2998, i32 1356, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3002 = metadata !{i32 1358, i32 0, metadata !3001, null}
!3003 = metadata !{i32 1361, i32 0, metadata !970, null}
!3004 = metadata !{i32 1364, i32 0, metadata !969, null}
!3005 = metadata !{i32 64, i32 0, metadata !1027, metadata !3006}
!3006 = metadata !{i32 1365, i32 0, metadata !968, null}
!3007 = metadata !{i32 66, i32 0, metadata !1795, metadata !3006}
!3008 = metadata !{i32 65, i32 0, metadata !1026, metadata !3006}
!3009 = metadata !{i32 1366, i32 0, metadata !3010, null}
!3010 = metadata !{i32 786443, metadata !426, metadata !968, i32 1366, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3011 = metadata !{i32 1367, i32 0, metadata !3012, null}
!3012 = metadata !{i32 786443, metadata !426, metadata !3013, i32 1367, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3013 = metadata !{i32 786443, metadata !426, metadata !3010, i32 1366, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3014 = metadata !{i32 1368, i32 0, metadata !3015, null}
!3015 = metadata !{i32 786443, metadata !426, metadata !3013, i32 1368, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3016 = metadata !{i32 1369, i32 0, metadata !3017, null}
!3017 = metadata !{i32 786443, metadata !426, metadata !3013, i32 1369, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3018 = metadata !{i32 1376, i32 0, metadata !929, null}
!3019 = metadata !{i32 1384, i32 0, metadata !972, null}
!3020 = metadata !{i32 1386, i32 0, metadata !3021, null}
!3021 = metadata !{i32 786443, metadata !426, metadata !972, i32 1386, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3022 = metadata !{i32 1387, i32 0, metadata !3023, null}
!3023 = metadata !{i32 786443, metadata !426, metadata !3021, i32 1386, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3024 = metadata !{i32 1388, i32 0, metadata !3023, null}
!3025 = metadata !{i32 1389, i32 0, metadata !3023, null}
!3026 = metadata !{i32 1392, i32 0, metadata !3027, null}
!3027 = metadata !{i32 786443, metadata !426, metadata !972, i32 1392, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3028 = metadata !{i32 1393, i32 0, metadata !3029, null}
!3029 = metadata !{i32 786443, metadata !426, metadata !3030, i32 1393, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3030 = metadata !{i32 786443, metadata !426, metadata !3027, i32 1392, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3031 = metadata !{i32 1395, i32 0, metadata !3030, null}
!3032 = metadata !{i32 1396, i32 0, metadata !3030, null}
!3033 = metadata !{i32 1417, i32 0, metadata !1001, metadata !3034}
!3034 = metadata !{i32 1398, i32 0, metadata !972, null}
!3035 = metadata !{i32 1418, i32 0, metadata !1001, metadata !3034}
!3036 = metadata !{i32 1423, i32 0, metadata !995, metadata !3037}
!3037 = metadata !{i32 1399, i32 0, metadata !972, null}
!3038 = metadata !{i32 1424, i32 0, metadata !995, metadata !3037}
!3039 = metadata !{i32 1403, i32 0, metadata !972, null}
!3040 = metadata !{i32 1404, i32 0, metadata !972, null}
!3041 = metadata !{i32 1405, i32 0, metadata !3042, null}
!3042 = metadata !{i32 786443, metadata !426, metadata !972, i32 1405, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3043 = metadata !{i32 1406, i32 0, metadata !3044, null}
!3044 = metadata !{i32 786443, metadata !426, metadata !3042, i32 1405, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3045 = metadata !{i32 1407, i32 0, metadata !3044, null}
!3046 = metadata !{i32 1411, i32 0, metadata !972, null}
!3047 = metadata !{i32 1458, i32 0, metadata !3048, null}
!3048 = metadata !{i32 786443, metadata !426, metadata !979, i32 1458, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3049 = metadata !{i32 1459, i32 0, metadata !3050, null}
!3050 = metadata !{i32 786443, metadata !426, metadata !3048, i32 1458, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3051 = metadata !{i32 1460, i32 0, metadata !3050, null}
!3052 = metadata !{i32 1463, i32 0, metadata !3053, null}
!3053 = metadata !{i32 786443, metadata !426, metadata !979, i32 1463, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!3054 = metadata !{i32 1467, i32 0, metadata !979, null}
!3055 = metadata !{i32 1468, i32 0, metadata !979, null}
!3056 = metadata !{i32 1469, i32 0, metadata !979, null}
!3057 = metadata !{i32 1470, i32 0, metadata !979, null}
!3058 = metadata !{i32 12, i32 0, metadata !1058, null}
!3059 = metadata !{i32 16, i32 0, metadata !1065, null}
!3060 = metadata !{i32 21, i32 0, metadata !1071, null}
!3061 = metadata !{i32 34, i32 0, metadata !1097, null}
!3062 = metadata !{i32 35, i32 0, metadata !1097, null}
!3063 = metadata !{i32 50, i32 0, metadata !1097, null}
!3064 = metadata !{i32 53, i32 0, metadata !1103, null}
!3065 = metadata !{i32 55, i32 0, metadata !3066, null}
!3066 = metadata !{i32 786443, metadata !1078, metadata !1103, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!3067 = metadata !{i32 56, i32 0, metadata !3066, null}
!3068 = metadata !{i32 66, i32 0, metadata !3066, null}
!3069 = metadata !{i32 67, i32 0, metadata !3066, null}
!3070 = metadata !{i32 69, i32 0, metadata !3066, null}
!3071 = metadata !{i32 70, i32 0, metadata !3066, null}
!3072 = metadata !{i32 72, i32 0, metadata !3066, null}
!3073 = metadata !{i32 73, i32 0, metadata !3066, null}
!3074 = metadata !{i32 79, i32 0, metadata !1103, null}
!3075 = metadata !{i32 17, i32 0, metadata !1117, null}
!3076 = metadata !{i32 22, i32 0, metadata !1123, null}
!3077 = metadata !{i32 27, i32 0, metadata !1128, null}
!3078 = metadata !{i32 69, i32 0, metadata !3079, null}
!3079 = metadata !{i32 786443, metadata !1107, metadata !1133, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3080 = metadata !{i32 71, i32 0, metadata !3081, null}
!3081 = metadata !{i32 786443, metadata !1107, metadata !3079, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3082 = metadata !{i32 73, i32 0, metadata !3083, null}
!3083 = metadata !{i32 786443, metadata !1107, metadata !3081, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3084 = metadata !{i32 75, i32 0, metadata !3085, null}
!3085 = metadata !{i32 786443, metadata !1107, metadata !3083, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3086 = metadata !{i32 76, i32 0, metadata !3087, null}
!3087 = metadata !{i32 786443, metadata !1107, metadata !3085, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3088 = metadata !{i32 79, i32 0, metadata !1133, null}
!3089 = metadata !{i32 84, i32 0, metadata !3090, null}
!3090 = metadata !{i32 786443, metadata !1107, metadata !1136, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3091 = metadata !{i32 86, i32 0, metadata !3092, null}
!3092 = metadata !{i32 786443, metadata !1107, metadata !3090, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3093 = metadata !{i32 88, i32 0, metadata !3094, null}
!3094 = metadata !{i32 786443, metadata !1107, metadata !3092, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3095 = metadata !{i32 90, i32 0, metadata !3096, null}
!3096 = metadata !{i32 786443, metadata !1107, metadata !3094, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3097 = metadata !{i32 91, i32 0, metadata !3098, null}
!3098 = metadata !{i32 786443, metadata !1107, metadata !3096, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3099 = metadata !{i32 94, i32 0, metadata !1136, null}
!3100 = metadata !{i32 100, i32 0, metadata !3101, null}
!3101 = metadata !{i32 786443, metadata !1107, metadata !1139, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3102 = metadata !{i32 102, i32 0, metadata !3103, null}
!3103 = metadata !{i32 786443, metadata !1107, metadata !3101, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3104 = metadata !{i32 104, i32 0, metadata !3105, null}
!3105 = metadata !{i32 786443, metadata !1107, metadata !3103, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3106 = metadata !{i32 106, i32 0, metadata !3107, null}
!3107 = metadata !{i32 786443, metadata !1107, metadata !3105, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3108 = metadata !{i32 107, i32 0, metadata !3109, null}
!3109 = metadata !{i32 786443, metadata !1107, metadata !3107, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3110 = metadata !{i32 110, i32 0, metadata !1139, null}
!3111 = metadata !{i32 115, i32 0, metadata !1142, null}
!3112 = metadata !{i32 120, i32 0, metadata !1145, null}
!3113 = metadata !{i32 125, i32 0, metadata !1148, null}
!3114 = metadata !{i32 13, i32 0, metadata !3115, null}
!3115 = metadata !{i32 786443, metadata !1152, metadata !1154, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!3116 = metadata !{i32 14, i32 0, metadata !3115, null}
!3117 = metadata !{i32 15, i32 0, metadata !1154, null}
!3118 = metadata !{i32 15, i32 0, metadata !1164, null}
!3119 = metadata !{i32 16, i32 0, metadata !1164, null}
!3120 = metadata !{i32 21, i32 0, metadata !3121, null}
!3121 = metadata !{i32 786443, metadata !1170, metadata !1172, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3122 = metadata !{i32 27, i32 0, metadata !3123, null}
!3123 = metadata !{i32 786443, metadata !1170, metadata !3121, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3124 = metadata !{i32 29, i32 0, metadata !1172, null}
!3125 = metadata !{i32 16, i32 0, metadata !3126, null}
!3126 = metadata !{i32 786443, metadata !1181, metadata !1183, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3127 = metadata !{i32 17, i32 0, metadata !3126, null}
!3128 = metadata !{i32 19, i32 0, metadata !3129, null}
!3129 = metadata !{i32 786443, metadata !1181, metadata !1183, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3130 = metadata !{i32 22, i32 0, metadata !3131, null}
!3131 = metadata !{i32 786443, metadata !1181, metadata !3129, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3132 = metadata !{i32 25, i32 0, metadata !3133, null}
!3133 = metadata !{i32 786443, metadata !1181, metadata !3131, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3134 = metadata !{i32 26, i32 0, metadata !3135, null}
!3135 = metadata !{i32 786443, metadata !1181, metadata !3133, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3136 = metadata !{i32 27, i32 0, metadata !3135, null}
!3137 = metadata !{i32 28, i32 0, metadata !3138, null}
!3138 = metadata !{i32 786443, metadata !1181, metadata !3133, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3139 = metadata !{i32 29, i32 0, metadata !3138, null}
!3140 = metadata !{i32 32, i32 0, metadata !3131, null}
!3141 = metadata !{i32 34, i32 0, metadata !1183, null}
!3142 = metadata !{i32 19, i32 0, metadata !1196, null}
!3143 = metadata !{i32 21, i32 0, metadata !3144, null}
!3144 = metadata !{i32 786443, metadata !1193, metadata !1196, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!3145 = metadata !{i32 23, i32 0, metadata !3144, null}
!3146 = metadata !{i32 25, i32 0, metadata !3144, null}
!3147 = metadata !{i32 27, i32 0, metadata !3144, null}
!3148 = metadata !{i32 29, i32 0, metadata !3144, null}
!3149 = metadata !{i32 31, i32 0, metadata !3144, null}
!3150 = metadata !{i32 33, i32 0, metadata !1196, null}
!3151 = metadata !{i32 16, i32 0, metadata !1205, null}
!3152 = metadata !{i32 17, i32 0, metadata !1205, null}
!3153 = metadata !{metadata !3153, metadata !3154, metadata !3155}
!3154 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!3155 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!3156 = metadata !{metadata !3156, metadata !3154, metadata !3155}
!3157 = metadata !{i32 18, i32 0, metadata !1205, null}
!3158 = metadata !{i32 16, i32 0, metadata !3159, null}
!3159 = metadata !{i32 786443, metadata !1217, metadata !1219, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3160 = metadata !{i32 19, i32 0, metadata !3161, null}
!3161 = metadata !{i32 786443, metadata !1217, metadata !1219, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3162 = metadata !{i32 20, i32 0, metadata !3163, null}
!3163 = metadata !{i32 786443, metadata !1217, metadata !3161, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3164 = metadata !{metadata !3164, metadata !3154, metadata !3155}
!3165 = metadata !{metadata !3165, metadata !3154, metadata !3155}
!3166 = metadata !{i32 22, i32 0, metadata !3167, null}
!3167 = metadata !{i32 786443, metadata !1217, metadata !3161, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3168 = metadata !{i32 24, i32 0, metadata !3167, null}
!3169 = metadata !{i32 23, i32 0, metadata !3167, null}
!3170 = metadata !{metadata !3170, metadata !3154, metadata !3155}
!3171 = metadata !{metadata !3171, metadata !3154, metadata !3155}
!3172 = metadata !{i32 28, i32 0, metadata !1219, null}
!3173 = metadata !{i32 15, i32 0, metadata !1233, null}
!3174 = metadata !{i32 16, i32 0, metadata !1233, null}
!3175 = metadata !{metadata !3175, metadata !3154, metadata !3155}
!3176 = metadata !{metadata !3176, metadata !3154, metadata !3155}
!3177 = metadata !{i32 17, i32 0, metadata !1233, null}
!3178 = metadata !{i32 13, i32 0, metadata !1247, null}
!3179 = metadata !{i32 14, i32 0, metadata !1247, null}
!3180 = metadata !{i32 15, i32 0, metadata !1247, null}
!3181 = metadata !{i32 12, i32 0, metadata !1262, null}
!3182 = metadata !{i32 16, i32 0, metadata !1266, null}
!3183 = metadata !{i32 21, i32 0, metadata !1269, null}
