; ModuleID = 'file_posix_cp_l1_klee_annotated_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat64* }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.exe_sym_env_t = type { [32 x %struct.exe_file_t], i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.fd_set = type { [16 x i64] }

@logic_bomb.file = private unnamed_addr constant [11 x i8] c"tmp.covpro\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"file_posix_cp_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str11 = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 1
@.str22 = private unnamed_addr constant [44 x i8] c"symbolic file descriptor, ignoring (ENOENT)\00", align 1
@close.n_calls = internal unnamed_addr global i32 0, align 4
@read.n_calls = internal unnamed_addr global i32 0, align 4
@.str33 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"/home/user/klee/runtime/POSIX/fd.c\00", align 1
@__PRETTY_FUNCTION__.read = private unnamed_addr constant [34 x i8] c"ssize_t read(int, void *, size_t)\00", align 1
@write.n_calls = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.write = private unnamed_addr constant [41 x i8] c"ssize_t write(int, const void *, size_t)\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"write() ignores bytes.\0A\00", align 1
@.str8 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.__fd_lseek = private unnamed_addr constant [38 x i8] c"off64_t __fd_lseek(int, off64_t, int)\00", align 1
@.str9 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 1
@chmod.n_calls = internal unnamed_addr global i32 0, align 4
@fchmod.n_calls = internal unnamed_addr global i32 0, align 4
@__fd_ftruncate.n_calls = internal unnamed_addr global i32 0, align 4
@.str10 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str114 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 1
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
@.str225 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
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
@.str39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str140 = private unnamed_addr constant [964 x i8] c"klee_init_env\0A\0Ausage: (klee_init_env) [options] [program arguments]\0A  -sym-arg <N>              - Replace by a symbolic argument with length N\0A  -sym-args <MIN> <MAX> <N> - Replace by at least
@.str241 = private unnamed_addr constant [10 x i8] c"--sym-arg\00", align 1
@.str342 = private unnamed_addr constant [9 x i8] c"-sym-arg\00", align 1
@.str443 = private unnamed_addr constant [48 x i8] c"--sym-arg expects an integer argument <max-len>\00", align 1
@.str544 = private unnamed_addr constant [11 x i8] c"--sym-args\00", align 1
@.str645 = private unnamed_addr constant [10 x i8] c"-sym-args\00", align 1
@.str746 = private unnamed_addr constant [77 x i8] c"--sym-args expects three integer arguments <min-argvs> <max-argvs> <max-len>\00", align 1
@.str847 = private unnamed_addr constant [7 x i8] c"n_args\00", align 1
@.str948 = private unnamed_addr constant [12 x i8] c"--sym-files\00", align 1
@.str1049 = private unnamed_addr constant [11 x i8] c"-sym-files\00", align 1
@.str1150 = private unnamed_addr constant [72 x i8] c"--sym-files expects two integer arguments <no-sym-files> <sym-file-len>\00", align 1
@.str1251 = private unnamed_addr constant [12 x i8] c"--sym-stdin\00", align 1
@.str1352 = private unnamed_addr constant [11 x i8] c"-sym-stdin\00", align 1
@.str1453 = private unnamed_addr constant [57 x i8] c"--sym-stdin expects one integer argument <sym-stdin-len>\00", align 1
@.str1554 = private unnamed_addr constant [13 x i8] c"--sym-stdout\00", align 1
@.str1655 = private unnamed_addr constant [12 x i8] c"-sym-stdout\00", align 1
@.str1756 = private unnamed_addr constant [18 x i8] c"--save-all-writes\00", align 1
@.str1857 = private unnamed_addr constant [17 x i8] c"-save-all-writes\00", align 1
@.str1958 = private unnamed_addr constant [10 x i8] c"--fd-fail\00", align 1
@.str2059 = private unnamed_addr constant [9 x i8] c"-fd-fail\00", align 1
@.str2160 = private unnamed_addr constant [11 x i8] c"--max-fail\00", align 1
@.str2261 = private unnamed_addr constant [10 x i8] c"-max-fail\00", align 1
@.str2362 = private unnamed_addr constant [54 x i8] c"--max-fail expects an integer argument <max-failures>\00", align 1
@.str2463 = private unnamed_addr constant [37 x i8] c"too many arguments for klee_init_env\00", align 1
@.str2564 = private unnamed_addr constant [46 x i8] c"/home/user/klee/runtime/POSIX/klee_init_env.c\00", align 1
@.str26 = private unnamed_addr constant [9 x i8] c"user.err\00", align 1
@switch.table = private unnamed_addr constant [5 x i32] [i32 0, i32 3073, i32 2048, i32 1024, i32 3072]
@.str71 = private unnamed_addr constant [56 x i8] c"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str172 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str273 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str374 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1475 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str2576 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str677 = private unnamed_addr constant [47 x i8] c"/home/user/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str1778 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str979 = private unnamed_addr constant [59 x i8] c"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c\00", align 1
@.str110 = private unnamed_addr constant [22 x i8] c"Invalid rounding mode\00", align 1
@.str211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

@__getdents = alias bitcast (i64 (i32, %struct.dirent*, i64)* @getdents to i32 (i32, %struct.dirent*, i32)*)
@__getdents64 = alias i32 (i32, %struct.dirent*, i32)* @getdents64

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %j = alloca i32, align 4
  %file = alloca [11 x i8], align 1
  %fd = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !1482
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !1482
  %1 = load i8* %arrayidx, align 1, !dbg !1482
  %conv = sext i8 %1 to i32, !dbg !1482
  %sub = sub nsw i32 %conv, 48, !dbg !1482
  store i32 %sub, i32* %symvar, align 4, !dbg !1482
  %2 = bitcast [11 x i8]* %file to i8*, !dbg !1483
  %3 = call i8* @memcpy(i8* %2, i8* getelementptr inbounds ([11 x i8]* @logic_bomb.file, i32 0, i32 0), i64 11)
  %arraydecay = getelementptr inbounds [11 x i8]* %file, i32 0, i32 0, !dbg !1484
  %call = call i32 (i8*, i32, ...)* @open(i8* %arraydecay, i32 577, i32 384), !dbg !1484
  store i32 %call, i32* %fd, align 4, !dbg !1484
  %4 = load i32* %fd, align 4, !dbg !1485
  %cmp = icmp slt i32 %4, 0, !dbg !1485
  br i1 %cmp, label %if.then, label %if.end, !dbg !1485

if.then:                                          ; preds = %entry
  call void @exit(i32 -1) #15, !dbg !1487
  unreachable, !dbg !1487

if.end:                                           ; preds = %entry
  %5 = load i32* %fd, align 4, !dbg !1489
  %6 = bitcast i32* %symvar to i8*, !dbg !1489
  %call2 = call i64 @write(i32 %5, i8* %6, i64 4), !dbg !1489
  %7 = load i32* %fd, align 4, !dbg !1490
  %call3 = call i32 @close(i32 %7), !dbg !1490
  %arraydecay4 = getelementptr inbounds [11 x i8]* %file, i32 0, i32 0, !dbg !1491
  %call5 = call i32 (i8*, i32, ...)* @open(i8* %arraydecay4, i32 0), !dbg !1491
  store i32 %call5, i32* %fd, align 4, !dbg !1491
  %8 = load i32* %fd, align 4, !dbg !1492
  %9 = bitcast i32* %j to i8*, !dbg !1492
  %call6 = call i64 @read(i32 %8, i8* %9, i64 4), !dbg !1492
  %10 = load i32* %fd, align 4, !dbg !1493
  %call7 = call i32 @close(i32 %10), !dbg !1493
  %11 = load i32* %j, align 4, !dbg !1494
  %cmp8 = icmp eq i32 %11, 7, !dbg !1494
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1494

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 23, i8* g
  br label %if.end13, !dbg !1498

if.else:                                          ; preds = %if.end
  %call12 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0), i32 25, i8* 
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %12 = load i32* %retval, !dbg !1501
  ret i32 %12, !dbg !1501
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

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
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !1502
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !1502
  %arrayidx = getelementptr inbounds [5 x i8]* %s, i32 0, i64 4, !dbg !1503
  %1 = load i8* %arrayidx, align 1, !dbg !1503
  %conv = sext i8 %1 to i32, !dbg !1503
  %cmp = icmp eq i32 %conv, 0, !dbg !1503
  %conv1 = zext i1 %cmp to i32, !dbg !1503
  %conv2 = sext i32 %conv1 to i64, !dbg !1503
  call void @klee_assume(i64 %conv2), !dbg !1503
  %arraydecay = getelementptr inbounds [5 x i8]* %s, i32 0, i32 0, !dbg !1504
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !1504
  ret i32 %call, !dbg !1504
}

declare void @klee_make_symbolic(i8*, i64, i8*) #5

declare void @klee_assume(i64) #5

; Function Attrs: nounwind uwtable
define i32 @access(i8* %pathname, i32 %mode) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !1505, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !1510
  %cmp.i = icmp eq i8 %0, 0, !dbg !1510
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !1510

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1510
  %1 = load i8* %arrayidx2.i, align 1, !dbg !1510, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !1510
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !1510

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1512, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !1512
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !1512

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !1512
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !1512

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1517
  %sext.i = shl i32 %i.027.i, 24, !dbg !1517
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1517
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1517
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1517
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1517
  %inc.i = add i32 %i.027.i, 1, !dbg !1512
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1517

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1518
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1518, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !1520
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !1520, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !1520
  %5 = load i64* %st_ino.i, align 8, !dbg !1520, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !1520
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !1518
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !1528
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !1520
  br i1 %or.cond, label %if.else, label %return, !dbg !1520

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %pathname to i64, !dbg !1529
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #2, !dbg !1529
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !1529
  %cmp.i.i = icmp eq i8* %7, %pathname, !dbg !1532
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1532
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !1532
  br label %for.cond.i9, !dbg !1533

for.cond.i9:                                      ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i11, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !1534, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !1535
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1535
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1535
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1535

if.then.i:                                        ; preds = %for.cond.i9
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1536

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1539, !tbaa !1507
  br label %__concretize_string.exit, !dbg !1541

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1542
  store i8 47, i8* %sc.0.i, align 1, !dbg !1542, !tbaa !1507
  br label %for.inc.i, !dbg !1545

if.else7.i:                                       ; preds = %for.cond.i9
  %conv8.i = sext i8 %8 to i64, !dbg !1546
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !1546
  %conv10.i10 = trunc i64 %call9.i to i8, !dbg !1546
  %cmp13.i = icmp eq i8 %conv10.i10, %8, !dbg !1547
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1547
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !1547
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1548
  store i8 %conv10.i10, i8* %sc.0.i, align 1, !dbg !1548, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i10, 0, !dbg !1549
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1549

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i11 = add i32 %i.0.i, 1, !dbg !1533
  br label %for.cond.i9, !dbg !1533

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 21, i8* %pathname, i32 %mode) #2, !dbg !1531
  %conv = trunc i64 %call2 to i32, !dbg !1531
  %cmp = icmp eq i32 %conv, -1, !dbg !1551
  br i1 %cmp, label %if.then4, label %return, !dbg !1551

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #2, !dbg !1553
  %call6 = tail call i32* @__errno_location() #1, !dbg !1553
  store i32 %call5, i32* %call6, align 4, !dbg !1553, !tbaa !1554
  br label %return, !dbg !1553

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then13.i
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then13.i ]
  ret i32 %retval.0, !dbg !1555
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #7

declare i32 @klee_get_errno() #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: nounwind uwtable
define i32 @umask(i32 %mask) #6 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1556, !tbaa !1557
  %and = and i32 %mask, 511, !dbg !1559
  store i32 %and, i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1559, !tbaa !1557
  ret i32 %0, !dbg !1560
}

; Function Attrs: nounwind uwtable
define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) #6 {
entry:
  br label %for.body, !dbg !1561

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !1561
  %cmp = icmp slt i32 %0, 32, !dbg !1561
  br i1 %cmp, label %for.body, label %for.end, !dbg !1561

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %fd.0110 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %flags1 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !1563
  %1 = load i32* %flags1, align 4, !dbg !1563, !tbaa !1565
  %and = and i32 %1, 1, !dbg !1563
  %tobool = icmp eq i32 %and, 0, !dbg !1563
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1561
  %inc = add nsw i32 %fd.0110, 1, !dbg !1561
  br i1 %tobool, label %for.end, label %for.cond, !dbg !1563

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.0110, %for.body ], [ %inc, %for.cond ]
  %cmp2 = icmp eq i32 %fd.0.lcssa, 32, !dbg !1567
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1567

if.then3:                                         ; preds = %for.end
  %call = tail call i32* @__errno_location() #1, !dbg !1569
  store i32 24, i32* %call, align 4, !dbg !1569, !tbaa !1554
  br label %return, !dbg !1571

if.end4:                                          ; preds = %for.end
  %idxprom5 = sext i32 %fd.0.lcssa to i64, !dbg !1572
  %arrayidx6 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, !dbg !1572
  %2 = bitcast %struct.exe_file_t* %arrayidx6 to i8*, !dbg !1573
  %3 = call i8* @memset(i8* %2, i32 0, i64 24)
  %4 = load i8* %pathname, align 1, !dbg !1574, !tbaa !1507
  %conv.i = sext i8 %4 to i32, !dbg !1576
  %cmp.i = icmp eq i8 %4, 0, !dbg !1576
  br i1 %cmp.i, label %if.else45, label %lor.lhs.false.i, !dbg !1576

lor.lhs.false.i:                                  ; preds = %if.end4
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1576
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1576, !tbaa !1507
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1576
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else45, !dbg !1576

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1577, !tbaa !1513
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1577
  br i1 %cmp626.i, label %if.else45, label %for.body.i, !dbg !1577

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %6, !dbg !1577
  br i1 %cmp6.i, label %for.body.i, label %if.else45, !dbg !1577

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1578
  %sext.i = shl i32 %i.027.i, 24, !dbg !1578
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1578
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1578
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1578
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1578
  %inc.i = add i32 %i.027.i, 1, !dbg !1577
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1578

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1579
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1579, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i, i32 2, !dbg !1580
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !1580, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !1580
  %9 = load i64* %st_ino.i, align 8, !dbg !1580, !tbaa !1524
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1580
  br i1 %cmp15.i, label %if.else45, label %__get_sym_file.exit, !dbg !1580

__get_sym_file.exit:                              ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i, !dbg !1579
  %tobool8 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !1581
  br i1 %tobool8, label %if.else45, label %if.then9, !dbg !1581

if.then9:                                         ; preds = %__get_sym_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 3, !dbg !1582
  store %struct.exe_disk_file_t* %arrayidx14.i, %struct.exe_disk_file_t** %dfile, align 8, !dbg !1582, !tbaa !1584
  %10 = and i32 %flags, 192, !dbg !1585
  switch i32 %10, label %if.end32 [
    i32 192, label %if.then14
    i32 128, label %if.then30
  ], !dbg !1585

if.then14:                                        ; preds = %if.then9
  %call15 = tail call i32* @__errno_location() #1, !dbg !1587
  store i32 17, i32* %call15, align 4, !dbg !1587, !tbaa !1554
  br label %return, !dbg !1589

if.then30:                                        ; preds = %if.then9
  tail call void @klee_warning(i8* getelementptr inbounds ([47 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !1590
  %call31 = tail call i32* @__errno_location() #1, !dbg !1593
  store i32 13, i32* %call31, align 4, !dbg !1593, !tbaa !1554
  br label %return, !dbg !1594

if.end32:                                         ; preds = %if.then9
  %st_mode.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !1595
  %11 = load i32* %st_mode.i, align 4, !dbg !1595, !tbaa !1598
  %and1.i = and i32 %flags, 2, !dbg !1599
  %tobool2.i = icmp eq i32 %and1.i, 0, !dbg !1599
  %or15.i = and i32 %11, 292, !dbg !1601
  %tobool16.i = icmp eq i32 %or15.i, 0, !dbg !1601
  %or.cond37.i = or i1 %tobool2.i, %tobool16.i, !dbg !1601
  br i1 %or.cond37.i, label %has_permission.exit, label %if.then35, !dbg !1601

has_permission.exit:                              ; preds = %if.end32
  %12 = and i32 %flags, 3, !dbg !1603
  %not..i = icmp ne i32 %12, 0, !dbg !1603
  %or25.i = and i32 %11, 146, !dbg !1605
  %tobool26.i = icmp eq i32 %or25.i, 0, !dbg !1605
  %or.cond38.i = and i1 %not..i, %tobool26.i, !dbg !1605
  br i1 %or.cond38.i, label %if.then35, label %if.else, !dbg !1596

if.then35:                                        ; preds = %has_permission.exit, %if.end32
  %call36 = tail call i32* @__errno_location() #1, !dbg !1607
  store i32 13, i32* %call36, align 4, !dbg !1607, !tbaa !1554
  br label %return, !dbg !1609

if.else:                                          ; preds = %has_permission.exit
  %and39 = and i32 %11, -512, !dbg !1610
  %13 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 1), align 8, !dbg !1610, !tbaa !1557
  %neg = xor i32 %13, -1, !dbg !1610
  %and40 = and i32 %neg, %mode, !dbg !1610
  %or = or i32 %and40, %and39, !dbg !1610
  store i32 %or, i32* %st_mode.i, align 4, !dbg !1610, !tbaa !1598
  br label %if.end55, !dbg !1611

if.else45:                                        ; preds = %__get_sym_file.exit, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %if.end4
  %14 = ptrtoint i8* %pathname to i64, !dbg !1612
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #2, !dbg !1612
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !1612
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !1615
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1615
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !1615
  br label %for.cond.i101, !dbg !1616

for.cond.i101:                                    ; preds = %for.inc.i, %if.else45
  %i.0.i = phi i32 [ 0, %if.else45 ], [ %inc.i103, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.else45 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !1617, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !1618
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1618
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1618
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1618

if.then.i:                                        ; preds = %for.cond.i101
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1619

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1620, !tbaa !1507
  br label %__concretize_string.exit, !dbg !1621

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1622
  store i8 47, i8* %sc.0.i, align 1, !dbg !1622, !tbaa !1507
  br label %for.inc.i, !dbg !1623

if.else7.i:                                       ; preds = %for.cond.i101
  %conv8.i = sext i8 %16 to i64, !dbg !1624
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !1624
  %conv10.i102 = trunc i64 %call9.i to i8, !dbg !1624
  %cmp13.i = icmp eq i8 %conv10.i102, %16, !dbg !1625
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1625
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !1625
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1626
  store i8 %conv10.i102, i8* %sc.0.i, align 1, !dbg !1626, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i102, 0, !dbg !1627
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1627

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i103 = add i32 %i.0.i, 1, !dbg !1616
  br label %for.cond.i101, !dbg !1616

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call47 = tail call i64 (i64, ...)* @syscall(i64 2, i8* %pathname, i32 %flags, i32 %mode) #2, !dbg !1614
  %conv = trunc i64 %call47 to i32, !dbg !1614
  %cmp48 = icmp eq i32 %conv, -1, !dbg !1628
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !1628

if.then50:                                        ; preds = %__concretize_string.exit
  %call51 = tail call i32 @klee_get_errno() #2, !dbg !1630
  %call52 = tail call i32* @__errno_location() #1, !dbg !1630
  store i32 %call51, i32* %call52, align 4, !dbg !1630, !tbaa !1554
  br label %return, !dbg !1632

if.end53:                                         ; preds = %__concretize_string.exit
  %fd54 = getelementptr inbounds %struct.exe_file_t* %arrayidx6, i64 0, i32 0, !dbg !1633
  store i32 %conv, i32* %fd54, align 8, !dbg !1633, !tbaa !1634
  %and57.pre = and i32 %flags, 3, !dbg !1635
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.else
  %and57.pre-phi = phi i32 [ %and57.pre, %if.end53 ], [ %12, %if.else ], !dbg !1635
  %flags56 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom5, i32 1, !dbg !1637
  store i32 1, i32* %flags56, align 4, !dbg !1637, !tbaa !1565
  switch i32 %and57.pre-phi, label %if.else70 [
    i32 0, label %if.then60
    i32 1, label %if.then67
  ], !dbg !1635

if.then60:                                        ; preds = %if.end55
  store i32 5, i32* %flags56, align 4, !dbg !1638, !tbaa !1565
  br label %return, !dbg !1640

if.then67:                                        ; preds = %if.end55
  store i32 9, i32* %flags56, align 4, !dbg !1641, !tbaa !1565
  br label %return, !dbg !1644

if.else70:                                        ; preds = %if.end55
  store i32 13, i32* %flags56, align 4, !dbg !1645, !tbaa !1565
  br label %return

return:                                           ; preds = %if.else70, %if.then67, %if.then60, %if.then50, %if.then35, %if.then30, %if.then14, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then14 ], [ -1, %if.then35 ], [ -1, %if.then30 ], [ -1, %if.then50 ], [ %fd.0.lcssa, %if.then67 ], [ %fd.0.lcssa, %if.else70 ], [ %fd.0.lcssa, %if.then60 ]
  ret i32 %retval.0, !dbg !1647
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @klee_warning(i8*) #8

; Function Attrs: nounwind uwtable
define i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) #6 {
entry:
  %cmp = icmp eq i32 %basefd, -100, !dbg !1648
  br i1 %cmp, label %if.end8, label %if.then, !dbg !1648

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %basefd, 32, !dbg !1649
  br i1 %0, label %if.then.i, label %if.then1, !dbg !1649

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %basefd to i64, !dbg !1651
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1652
  %1 = load i32* %flags.i, align 4, !dbg !1652, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !1652
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1652
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !1652

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1651
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1654
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1654

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !1656
  store i32 9, i32* %call2, align 4, !dbg !1656, !tbaa !1554
  br label %return, !dbg !1658

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1659
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1659, !tbaa !1584
  %tobool3 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !1659
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1659

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str22, i64 0, i64 0)) #2, !dbg !1661
  %call5 = tail call i32* @__errno_location() #1, !dbg !1663
  store i32 2, i32* %call5, align 4, !dbg !1663, !tbaa !1554
  br label %return, !dbg !1664

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1665
  %3 = load i32* %fd7, align 8, !dbg !1665, !tbaa !1634
  %phitmp = sext i32 %3 to i64, !dbg !1666
  br label %if.end8, !dbg !1666

if.end8:                                          ; preds = %if.end6, %entry
  %basefd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %pathname, align 1, !dbg !1667, !tbaa !1507
  %conv.i = sext i8 %4 to i32, !dbg !1670
  %cmp.i = icmp eq i8 %4, 0, !dbg !1670
  br i1 %cmp.i, label %for.body, label %lor.lhs.false.i, !dbg !1670

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !1670
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1670, !tbaa !1507
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1670
  br i1 %cmp4.i, label %for.cond.preheader.i, label %for.body, !dbg !1670

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1671, !tbaa !1513
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1671
  br i1 %cmp626.i, label %for.body, label %for.body.i, !dbg !1671

for.cond.i78:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i80, %6, !dbg !1671
  br i1 %cmp6.i, label %for.body.i, label %for.body, !dbg !1671

for.body.i:                                       ; preds = %for.cond.i78, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i80, %for.cond.i78 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1672
  %sext.i = shl i32 %i.027.i, 24, !dbg !1672
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1672
  %conv10.i79 = ashr exact i32 %sext.i, 24, !dbg !1672
  %add.i = add nsw i32 %conv10.i79, 65, !dbg !1672
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1672
  %inc.i80 = add i32 %i.027.i, 1, !dbg !1671
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i78, !dbg !1672

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i81 = zext i32 %i.027.i to i64, !dbg !1673
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1673, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i81, i32 2, !dbg !1674
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !1674, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !1674
  %9 = load i64* %st_ino.i, align 8, !dbg !1674, !tbaa !1524
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1674
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i81, !dbg !1673
  %tobool10 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !1668
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !1674
  br i1 %or.cond, label %for.body, label %if.then11, !dbg !1674

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode), !dbg !1675
  br label %return, !dbg !1675

for.cond:                                         ; preds = %for.body
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !1677
  %cmp14 = icmp slt i32 %10, 32, !dbg !1677
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1677

for.body:                                         ; preds = %for.cond, %if.then13.i, %for.cond.i78, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %fd.086 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.i78 ], [ 0, %lor.lhs.false.i ], [ 0, %if.end8 ], [ 0, %if.then13.i ], [ 0, %for.cond.preheader.i ]
  %flags15 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !1679
  %11 = load i32* %flags15, align 4, !dbg !1679, !tbaa !1565
  %and = and i32 %11, 1, !dbg !1679
  %tobool16 = icmp eq i32 %and, 0, !dbg !1679
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1677
  %inc = add nsw i32 %fd.086, 1, !dbg !1677
  br i1 %tobool16, label %for.end, label %for.cond, !dbg !1679

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.086, %for.body ], [ %inc, %for.cond ]
  %cmp19 = icmp eq i32 %fd.0.lcssa, 32, !dbg !1681
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1681

if.then20:                                        ; preds = %for.end
  %call21 = tail call i32* @__errno_location() #1, !dbg !1683
  store i32 24, i32* %call21, align 4, !dbg !1683, !tbaa !1554
  br label %return, !dbg !1685

if.end22:                                         ; preds = %for.end
  %idxprom23 = sext i32 %fd.0.lcssa to i64, !dbg !1686
  %arrayidx24 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, !dbg !1686
  %12 = bitcast %struct.exe_file_t* %arrayidx24 to i8*, !dbg !1687
  %13 = call i8* @memset(i8* %12, i32 0, i64 24)
  %14 = ptrtoint i8* %pathname to i64, !dbg !1688
  %call.i.i = tail call i64 @klee_get_valuel(i64 %14) #2, !dbg !1688
  %15 = inttoptr i64 %call.i.i to i8*, !dbg !1688
  %cmp.i.i = icmp eq i8* %15, %pathname, !dbg !1691
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1691
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !1691
  br label %for.cond.i, !dbg !1692

for.cond.i:                                       ; preds = %for.inc.i, %if.end22
  %i.0.i = phi i32 [ 0, %if.end22 ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %15, %if.end22 ], [ %sc.1.i, %for.inc.i ]
  %16 = load i8* %sc.0.i, align 1, !dbg !1693, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !1694
  %and.i74 = and i32 %sub.i, %i.0.i, !dbg !1694
  %tobool.i75 = icmp eq i32 %and.i74, 0, !dbg !1694
  br i1 %tobool.i75, label %if.then.i76, label %if.else7.i, !dbg !1694

if.then.i76:                                      ; preds = %for.cond.i
  switch i8 %16, label %for.inc.i [
    i8 0, label %if.then2.i77
    i8 47, label %if.then4.i
  ], !dbg !1695

if.then2.i77:                                     ; preds = %if.then.i76
  store i8 0, i8* %sc.0.i, align 1, !dbg !1696, !tbaa !1507
  br label %__concretize_string.exit, !dbg !1697

if.then4.i:                                       ; preds = %if.then.i76
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1698
  store i8 47, i8* %sc.0.i, align 1, !dbg !1698, !tbaa !1507
  br label %for.inc.i, !dbg !1699

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %16 to i64, !dbg !1700
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !1700
  %conv10.i = trunc i64 %call9.i to i8, !dbg !1700
  %cmp13.i = icmp eq i8 %conv10.i, %16, !dbg !1701
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1701
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !1701
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1702
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !1702, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !1703
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1703

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i76
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i76 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !1692
  br label %for.cond.i, !dbg !1692

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i77
  %conv26 = sext i32 %flags to i64, !dbg !1690
  %call27 = tail call i64 (i64, ...)* @syscall(i64 257, i64 %basefd.addr.0, i8* %pathname, i64 %conv26, i32 %mode) #2, !dbg !1690
  %conv28 = trunc i64 %call27 to i32, !dbg !1690
  %cmp29 = icmp eq i32 %conv28, -1, !dbg !1704
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !1704

if.then31:                                        ; preds = %__concretize_string.exit
  %call32 = tail call i32 @klee_get_errno() #2, !dbg !1706
  %call33 = tail call i32* @__errno_location() #1, !dbg !1706
  store i32 %call32, i32* %call33, align 4, !dbg !1706, !tbaa !1554
  br label %return, !dbg !1708

if.end34:                                         ; preds = %__concretize_string.exit
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx24, i64 0, i32 0, !dbg !1709
  store i32 %conv28, i32* %fd35, align 8, !dbg !1709, !tbaa !1634
  %flags36 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom23, i32 1, !dbg !1710
  store i32 1, i32* %flags36, align 4, !dbg !1710, !tbaa !1565
  %and37 = and i32 %flags, 3, !dbg !1711
  switch i32 %and37, label %if.else49 [
    i32 0, label %if.then40
    i32 1, label %if.then46
  ], !dbg !1711

if.then40:                                        ; preds = %if.end34
  store i32 5, i32* %flags36, align 4, !dbg !1713, !tbaa !1565
  br label %return, !dbg !1715

if.then46:                                        ; preds = %if.end34
  store i32 9, i32* %flags36, align 4, !dbg !1716, !tbaa !1565
  br label %return, !dbg !1719

if.else49:                                        ; preds = %if.end34
  store i32 13, i32* %flags36, align 4, !dbg !1720, !tbaa !1565
  br label %return

return:                                           ; preds = %if.else49, %if.then46, %if.then40, %if.then31, %if.then20, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then20 ], [ -1, %if.then31 ], [ -1, %if.then1 ], [ %fd.0.lcssa, %if.then46 ], [ %fd.0.lcssa, %if.else49 ], [ %fd.0.lcssa, %if.then40 ]
  ret i32 %retval.0, !dbg !1722
}

; Function Attrs: nounwind uwtable
define i32 @utimes(i8* %path, %struct.timeval* %times) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !1723, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !1725
  %cmp.i = icmp eq i8 %0, 0, !dbg !1725
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !1725

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !1725
  %1 = load i8* %arrayidx2.i, align 1, !dbg !1725, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !1725
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !1725

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1726, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !1726
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !1726

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !1726
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !1726

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1727
  %sext.i = shl i32 %i.027.i, 24, !dbg !1727
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1727
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !1727
  %add.i = add nsw i32 %conv10.i, 65, !dbg !1727
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1727
  %inc.i = add i32 %i.027.i, 1, !dbg !1726
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !1727

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !1728
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1728, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !1729
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !1729, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !1729
  %5 = load i64* %st_ino.i, align 8, !dbg !1729, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !1729
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !1728
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !1730
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !1729
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1729

if.then:                                          ; preds = %if.then13.i
  %tv_sec = getelementptr inbounds %struct.timeval* %times, i64 0, i32 0, !dbg !1732
  %6 = load i64* %tv_sec, align 8, !dbg !1732, !tbaa !1734
  %tv_sec1 = getelementptr inbounds %struct.stat64* %4, i64 0, i32 11, i32 0, !dbg !1732
  store i64 %6, i64* %tv_sec1, align 8, !dbg !1732, !tbaa !1736
  %tv_sec3 = getelementptr inbounds %struct.timeval* %times, i64 1, i32 0, !dbg !1737
  %7 = load i64* %tv_sec3, align 8, !dbg !1737, !tbaa !1734
  %tv_sec5 = getelementptr inbounds %struct.stat64* %4, i64 0, i32 12, i32 0, !dbg !1737
  store i64 %7, i64* %tv_sec5, align 8, !dbg !1737, !tbaa !1738
  br label %return, !dbg !1739

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %8 = ptrtoint i8* %path to i64, !dbg !1740
  %call.i.i = tail call i64 @klee_get_valuel(i64 %8) #2, !dbg !1740
  %9 = inttoptr i64 %call.i.i to i8*, !dbg !1740
  %cmp.i.i = icmp eq i8* %9, %path, !dbg !1743
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1743
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !1743
  br label %for.cond.i19, !dbg !1744

for.cond.i19:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i21, %for.inc.i ]
  %sc.0.i = phi i8* [ %9, %if.end ], [ %sc.1.i, %for.inc.i ]
  %10 = load i8* %sc.0.i, align 1, !dbg !1745, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !1746
  %and.i = and i32 %sub.i, %i.0.i, !dbg !1746
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1746
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !1746

if.then.i:                                        ; preds = %for.cond.i19
  switch i8 %10, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !1747

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !1748, !tbaa !1507
  br label %__concretize_string.exit, !dbg !1749

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1750
  store i8 47, i8* %sc.0.i, align 1, !dbg !1750, !tbaa !1507
  br label %for.inc.i, !dbg !1751

if.else7.i:                                       ; preds = %for.cond.i19
  %conv8.i = sext i8 %10 to i64, !dbg !1752
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !1752
  %conv10.i20 = trunc i64 %call9.i to i8, !dbg !1752
  %cmp13.i = icmp eq i8 %conv10.i20, %10, !dbg !1753
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1753
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !1753
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1754
  store i8 %conv10.i20, i8* %sc.0.i, align 1, !dbg !1754, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i20, 0, !dbg !1755
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !1755

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i21 = add i32 %i.0.i, 1, !dbg !1744
  br label %for.cond.i19, !dbg !1744

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call7 = tail call i64 (i64, ...)* @syscall(i64 235, i8* %path, %struct.timeval* %times) #2, !dbg !1742
  %conv = trunc i64 %call7 to i32, !dbg !1742
  %cmp = icmp eq i32 %conv, -1, !dbg !1756
  br i1 %cmp, label %if.then9, label %return, !dbg !1756

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #2, !dbg !1758
  %call11 = tail call i32* @__errno_location() #1, !dbg !1758
  store i32 %call10, i32* %call11, align 4, !dbg !1758, !tbaa !1554
  br label %return, !dbg !1758

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !1759
}

; Function Attrs: nounwind uwtable
define i32 @futimesat(i32 %fd, i8* %path, %struct.timeval* %times) #6 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !1760
  br i1 %cmp, label %if.end8, label %if.then, !dbg !1760

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !1761
  br i1 %0, label %if.then.i, label %if.then1, !dbg !1761

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !1763
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1764
  %1 = load i32* %flags.i, align 4, !dbg !1764, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !1764
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1764
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !1764

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1763
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1765
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1765

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !1767
  store i32 9, i32* %call2, align 4, !dbg !1767, !tbaa !1554
  br label %return, !dbg !1769

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1770
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1770, !tbaa !1584
  %tobool3 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !1770
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1770

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str22, i64 0, i64 0)) #2, !dbg !1772
  %call5 = tail call i32* @__errno_location() #1, !dbg !1774
  store i32 2, i32* %call5, align 4, !dbg !1774, !tbaa !1554
  br label %return, !dbg !1775

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1776
  %3 = load i32* %fd7, align 8, !dbg !1776, !tbaa !1634
  %phitmp = sext i32 %3 to i64, !dbg !1777
  br label %if.end8, !dbg !1777

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !1778, !tbaa !1507
  %conv.i = sext i8 %4 to i32, !dbg !1781
  %cmp.i = icmp eq i8 %4, 0, !dbg !1781
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !1781

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !1781
  %5 = load i8* %arrayidx2.i, align 1, !dbg !1781, !tbaa !1507
  %cmp4.i = icmp eq i8 %5, 0, !dbg !1781
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !1781

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1782, !tbaa !1513
  %cmp626.i = icmp eq i32 %6, 0, !dbg !1782
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !1782

for.cond.i37:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i39, %6, !dbg !1782
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !1782

for.body.i:                                       ; preds = %for.cond.i37, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i39, %for.cond.i37 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1783
  %sext.i = shl i32 %i.027.i, 24, !dbg !1783
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1783
  %conv10.i38 = ashr exact i32 %sext.i, 24, !dbg !1783
  %add.i = add nsw i32 %conv10.i38, 65, !dbg !1783
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !1783
  %inc.i39 = add i32 %i.027.i, 1, !dbg !1782
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i37, !dbg !1783

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i40 = zext i32 %i.027.i to i64, !dbg !1784
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1784, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i40, i32 2, !dbg !1785
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !1785, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !1785
  %9 = load i64* %st_ino.i, align 8, !dbg !1785, !tbaa !1524
  %cmp15.i = icmp eq i64 %9, 0, !dbg !1785
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i40, !dbg !1784
  %tobool10 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !1779
  %or.cond = or i1 %cmp15.i, %tobool10, !dbg !1785
  br i1 %or.cond, label %if.end13, label %if.then11, !dbg !1785

if.then11:                                        ; preds = %if.then13.i
  %call12 = tail call i32 @utimes(i8* %path, %struct.timeval* %times), !dbg !1786
  br label %return, !dbg !1786

if.end13:                                         ; preds = %if.then13.i, %for.cond.i37, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !1788
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !1788

cond.true:                                        ; preds = %if.end13
  %10 = ptrtoint i8* %path to i64, !dbg !1789
  %call.i.i = tail call i64 @klee_get_valuel(i64 %10) #2, !dbg !1789
  %11 = inttoptr i64 %call.i.i to i8*, !dbg !1789
  %cmp.i.i = icmp eq i8* %11, %path, !dbg !1792
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !1792
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !1792
  br label %for.cond.i, !dbg !1793

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %11, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %12 = load i8* %sc.0.i, align 1, !dbg !1794, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !1795
  %and.i33 = and i32 %sub.i, %i.0.i, !dbg !1795
  %tobool.i34 = icmp eq i32 %and.i33, 0, !dbg !1795
  br i1 %tobool.i34, label %if.then.i35, label %if.else7.i, !dbg !1795

if.then.i35:                                      ; preds = %for.cond.i
  switch i8 %12, label %for.inc.i [
    i8 0, label %if.then2.i36
    i8 47, label %if.then4.i
  ], !dbg !1796

if.then2.i36:                                     ; preds = %if.then.i35
  store i8 0, i8* %sc.0.i, align 1, !dbg !1797, !tbaa !1507
  br label %cond.end, !dbg !1798

if.then4.i:                                       ; preds = %if.then.i35
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1799
  store i8 47, i8* %sc.0.i, align 1, !dbg !1799, !tbaa !1507
  br label %for.inc.i, !dbg !1800

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %12 to i64, !dbg !1801
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !1801
  %conv10.i = trunc i64 %call9.i to i8, !dbg !1801
  %cmp13.i = icmp eq i8 %conv10.i, %12, !dbg !1802
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !1802
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !1802
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1803
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !1803, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !1804
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !1804

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i35
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i35 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !1793
  br label %for.cond.i, !dbg !1793

cond.end:                                         ; preds = %if.else7.i, %if.then2.i36, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i36 ], [ %path, %if.else7.i ], !dbg !1791
  %call16 = tail call i64 (i64, ...)* @syscall(i64 261, i64 %fd.addr.0, i8* %cond, %struct.timeval* %times) #2, !dbg !1788
  %conv17 = trunc i64 %call16 to i32, !dbg !1788
  %cmp18 = icmp eq i32 %conv17, -1, !dbg !1805
  br i1 %cmp18, label %if.then20, label %return, !dbg !1805

if.then20:                                        ; preds = %cond.end
  %call21 = tail call i32 @klee_get_errno() #2, !dbg !1807
  %call22 = tail call i32* @__errno_location() #1, !dbg !1807
  store i32 %call21, i32* %call22, align 4, !dbg !1807, !tbaa !1554
  br label %return, !dbg !1807

return:                                           ; preds = %if.then20, %cond.end, %if.then11, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ %call12, %if.then11 ], [ -1, %if.then1 ], [ -1, %if.then20 ], [ %conv17, %cond.end ]
  ret i32 %retval.0, !dbg !1808
}

; Function Attrs: nounwind uwtable
define i32 @close(i32 %fd) #6 {
entry:
  %0 = load i32* @close.n_calls, align 4, !dbg !1809, !tbaa !1554
  %inc = add nsw i32 %0, 1, !dbg !1809
  store i32 %inc, i32* @close.n_calls, align 4, !dbg !1809, !tbaa !1554
  %1 = icmp ult i32 %fd, 32, !dbg !1810
  br i1 %1, label %if.then.i, label %if.then, !dbg !1810

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !1812
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1813
  %2 = load i32* %flags.i, align 4, !dbg !1813, !tbaa !1565
  %and.i = and i32 %2, 1, !dbg !1813
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1813
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !1813

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1812
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1814
  br i1 %tobool, label %if.then, label %if.end, !dbg !1814

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1816
  store i32 9, i32* %call1, align 4, !dbg !1816, !tbaa !1554
  br label %return, !dbg !1818

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1819, !tbaa !1821
  %tobool2 = icmp eq i32 %3, 0, !dbg !1819
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !1819

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1819, !tbaa !1822
  %5 = load i32* %4, align 4, !dbg !1819, !tbaa !1554
  %cmp = icmp eq i32 %5, %inc, !dbg !1819
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1819

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1823
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1823, !tbaa !1821
  %call4 = tail call i32* @__errno_location() #1, !dbg !1825
  store i32 5, i32* %call4, align 4, !dbg !1825, !tbaa !1554
  br label %return, !dbg !1826

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %6 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !1827
  %7 = call i8* @memset(i8* %6, i32 0, i64 24)
  br label %return, !dbg !1828

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %if.end5 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !1829
}

; Function Attrs: nounwind uwtable
define i64 @read(i32 %fd, i8* %buf, i64 %count) #6 {
entry:
  %0 = load i32* @read.n_calls, align 4, !dbg !1830, !tbaa !1554
  %inc = add nsw i32 %0, 1, !dbg !1830
  store i32 %inc, i32* @read.n_calls, align 4, !dbg !1830, !tbaa !1554
  %cmp = icmp eq i64 %count, 0, !dbg !1831
  br i1 %cmp, label %return, label %if.end, !dbg !1831

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %buf, null, !dbg !1833
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1833

if.then2:                                         ; preds = %if.end
  %call = tail call i32* @__errno_location() #1, !dbg !1835
  store i32 14, i32* %call, align 4, !dbg !1835, !tbaa !1554
  br label %return, !dbg !1837

if.end3:                                          ; preds = %if.end
  %1 = icmp ult i32 %fd, 32, !dbg !1838
  br i1 %1, label %if.then.i, label %if.then5, !dbg !1838

if.then.i:                                        ; preds = %if.end3
  %idxprom.i = sext i32 %fd to i64, !dbg !1840
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1841
  %2 = load i32* %flags.i, align 4, !dbg !1841, !tbaa !1565
  %and.i = and i32 %2, 1, !dbg !1841
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1841
  br i1 %tobool.i, label %if.then5, label %__get_file.exit, !dbg !1841

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1840
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1842
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !1842

if.then5:                                         ; preds = %__get_file.exit, %if.then.i, %if.end3
  %call6 = tail call i32* @__errno_location() #1, !dbg !1844
  store i32 9, i32* %call6, align 4, !dbg !1844, !tbaa !1554
  br label %return, !dbg !1846

if.end7:                                          ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1847, !tbaa !1821
  %tobool8 = icmp eq i32 %3, 0, !dbg !1847
  br i1 %tobool8, label %if.end12, label %land.lhs.true, !dbg !1847

land.lhs.true:                                    ; preds = %if.end7
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !1847, !tbaa !1849
  %5 = load i32* %4, align 4, !dbg !1847, !tbaa !1554
  %cmp9 = icmp eq i32 %5, %inc, !dbg !1847
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1847

if.then10:                                        ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1850
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1850, !tbaa !1821
  %call11 = tail call i32* @__errno_location() #1, !dbg !1852
  store i32 5, i32* %call11, align 4, !dbg !1852, !tbaa !1554
  br label %return, !dbg !1853

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1854
  %6 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1854, !tbaa !1584
  %tobool13 = icmp eq %struct.exe_disk_file_t* %6, null, !dbg !1854
  br i1 %tobool13, label %if.then14, label %if.else40, !dbg !1854

if.then14:                                        ; preds = %if.end12
  %7 = ptrtoint i8* %buf to i64, !dbg !1855
  %call.i98 = tail call i64 @klee_get_valuel(i64 %7) #2, !dbg !1855
  %8 = inttoptr i64 %call.i98 to i8*, !dbg !1855
  %cmp.i99 = icmp eq i8* %8, %buf, !dbg !1857
  %conv1.i100 = zext i1 %cmp.i99 to i64, !dbg !1857
  tail call void @klee_assume(i64 %conv1.i100) #2, !dbg !1857
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #2, !dbg !1858
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !1860
  %conv1.i = zext i1 %cmp.i to i64, !dbg !1860
  tail call void @klee_assume(i64 %conv1.i) #2, !dbg !1860
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #2, !dbg !1861
  %fd17 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1862
  %9 = load i32* %fd17, align 8, !dbg !1862, !tbaa !1634
  %cmp18 = icmp eq i32 %9, 0, !dbg !1862
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !1862

if.then19:                                        ; preds = %if.then14
  %call21 = tail call i64 (i64, ...)* @syscall(i64 0, i32 0, i8* %8, i64 %call.i) #2, !dbg !1864
  br label %if.end25, !dbg !1864

if.else:                                          ; preds = %if.then14
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1865
  %10 = load i64* %off, align 8, !dbg !1865, !tbaa !1866
  %call23 = tail call i64 (i64, ...)* @syscall(i64 17, i32 %9, i8* %8, i64 %call.i, i64 %10) #2, !dbg !1865
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  %r.0.in = phi i64 [ %call21, %if.then19 ], [ %call23, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !1864
  %cmp26 = icmp eq i32 %r.0, -1, !dbg !1867
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1867

if.then28:                                        ; preds = %if.end25
  %call29 = tail call i32 @klee_get_errno() #2, !dbg !1869
  %call30 = tail call i32* @__errno_location() #1, !dbg !1869
  store i32 %call29, i32* %call30, align 4, !dbg !1869, !tbaa !1554
  br label %return, !dbg !1871

if.end31:                                         ; preds = %if.end25
  %11 = load i32* %fd17, align 8, !dbg !1872, !tbaa !1634
  %cmp33 = icmp eq i32 %11, 0, !dbg !1872
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !1874
  %sext.pre = shl i64 %r.0.in, 32, !dbg !1874
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1874
  %conv39.pre = ashr exact i64 %sext.pre, 32, !dbg !1874
  br i1 %cmp33, label %return, label %if.then35, !dbg !1872

if.then35:                                        ; preds = %if.end31
  %off37 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1875
  %12 = load i64* %off37, align 8, !dbg !1875, !tbaa !1866
  %add = add nsw i64 %12, %conv39.pre, !dbg !1875
  store i64 %add, i64* %off37, align 8, !dbg !1875, !tbaa !1866
  br label %return, !dbg !1875

if.else40:                                        ; preds = %if.end12
  %off41 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1876
  %13 = load i64* %off41, align 8, !dbg !1876, !tbaa !1866
  %cmp42 = icmp sgt i64 %13, -1, !dbg !1876
  br i1 %cmp42, label %cond.end, label %cond.false, !dbg !1876

cond.false:                                       ; preds = %if.else40
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([34 x i8]
  unreachable, !dbg !1876

cond.end:                                         ; preds = %if.else40
  %size = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 0, !dbg !1878
  %14 = load i32* %size, align 4, !dbg !1878, !tbaa !1880
  %conv45 = zext i32 %14 to i64, !dbg !1878
  %cmp47 = icmp slt i64 %conv45, %13, !dbg !1878
  br i1 %cmp47, label %return, label %if.end50, !dbg !1878

if.end50:                                         ; preds = %cond.end
  %add52 = add i64 %13, %count, !dbg !1881
  %cmp56 = icmp ugt i64 %add52, %conv45, !dbg !1881
  %sub = sub nsw i64 %conv45, %13, !dbg !1883
  %sub.count = select i1 %cmp56, i64 %sub, i64 %count, !dbg !1881
  %contents = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 1, !dbg !1885
  %15 = load i8** %contents, align 8, !dbg !1885, !tbaa !1886
  %add.ptr = getelementptr inbounds i8* %15, i64 %13, !dbg !1885
  %16 = call i8* @memcpy(i8* %buf, i8* %add.ptr, i64 %sub.count)
  %17 = load i64* %off41, align 8, !dbg !1887, !tbaa !1866
  %add67 = add i64 %17, %sub.count, !dbg !1887
  store i64 %add67, i64* %off41, align 8, !dbg !1887, !tbaa !1866
  br label %return, !dbg !1888

return:                                           ; preds = %if.end50, %cond.end, %if.then35, %if.end31, %if.then28, %if.then10, %if.then5, %if.then2, %entry
  %retval.0 = phi i64 [ -1, %if.then2 ], [ -1, %if.then10 ], [ %sub.count, %if.end50 ], [ -1, %if.then28 ], [ -1, %if.then5 ], [ 0, %entry ], [ 0, %cond.end ], [ %conv39.pre, %if.then35 ], [ %conv39.pre, %if.end31 ]
  ret i64 %retval.0, !dbg !1889
}

declare void @klee_check_memory_access(i8*, i64) #8

; Function Attrs: nounwind uwtable
define i64 @write(i32 %fd, i8* %buf, i64 %count) #6 {
entry:
  %0 = load i32* @write.n_calls, align 4, !dbg !1890, !tbaa !1554
  %inc = add nsw i32 %0, 1, !dbg !1890
  store i32 %inc, i32* @write.n_calls, align 4, !dbg !1890, !tbaa !1554
  %1 = icmp ult i32 %fd, 32, !dbg !1891
  br i1 %1, label %if.then.i, label %if.then, !dbg !1891

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !1893
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1894
  %2 = load i32* %flags.i, align 4, !dbg !1894, !tbaa !1565
  %and.i = and i32 %2, 1, !dbg !1894
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1894
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !1894

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1893
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1895
  br i1 %tobool, label %if.then, label %if.end, !dbg !1895

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1897
  store i32 9, i32* %call1, align 4, !dbg !1897, !tbaa !1554
  br label %return, !dbg !1899

if.end:                                           ; preds = %__get_file.exit
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1900, !tbaa !1821
  %tobool2 = icmp eq i32 %3, 0, !dbg !1900
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !1900

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !1900, !tbaa !1902
  %5 = load i32* %4, align 4, !dbg !1900, !tbaa !1554
  %cmp = icmp eq i32 %5, %inc, !dbg !1900
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1900

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !1903
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1903, !tbaa !1821
  %call4 = tail call i32* @__errno_location() #1, !dbg !1905
  store i32 5, i32* %call4, align 4, !dbg !1905, !tbaa !1554
  br label %return, !dbg !1906

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1907
  %6 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1907, !tbaa !1584
  %tobool6 = icmp eq %struct.exe_disk_file_t* %6, null, !dbg !1907
  br i1 %tobool6, label %if.then7, label %if.else41, !dbg !1907

if.then7:                                         ; preds = %if.end5
  %7 = ptrtoint i8* %buf to i64, !dbg !1908
  %call.i126 = tail call i64 @klee_get_valuel(i64 %7) #2, !dbg !1908
  %8 = inttoptr i64 %call.i126 to i8*, !dbg !1908
  %cmp.i127 = icmp eq i8* %8, %buf, !dbg !1910
  %conv1.i128 = zext i1 %cmp.i127 to i64, !dbg !1910
  tail call void @klee_assume(i64 %conv1.i128) #2, !dbg !1910
  %call.i = tail call i64 @klee_get_valuel(i64 %count) #2, !dbg !1911
  %cmp.i = icmp eq i64 %call.i, %count, !dbg !1913
  %conv1.i = zext i1 %cmp.i to i64, !dbg !1913
  tail call void @klee_assume(i64 %conv1.i) #2, !dbg !1913
  tail call void @klee_check_memory_access(i8* %8, i64 %call.i) #2, !dbg !1914
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1915
  %9 = load i32* %fd10, align 8, !dbg !1915, !tbaa !1634
  %.off = add i32 %9, -1, !dbg !1915
  %switch = icmp ult i32 %.off, 2, !dbg !1915
  br i1 %switch, label %if.then14, label %if.else, !dbg !1915

if.then14:                                        ; preds = %if.then7
  %call16 = tail call i64 (i64, ...)* @syscall(i64 1, i32 %9, i8* %8, i64 %call.i) #2, !dbg !1917
  br label %if.end20, !dbg !1917

if.else:                                          ; preds = %if.then7
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1918
  %10 = load i64* %off, align 8, !dbg !1918, !tbaa !1866
  %call18 = tail call i64 (i64, ...)* @syscall(i64 18, i32 %9, i8* %8, i64 %call.i, i64 %10) #2, !dbg !1918
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %r.0.in = phi i64 [ %call16, %if.then14 ], [ %call18, %if.else ]
  %r.0 = trunc i64 %r.0.in to i32, !dbg !1917
  %cmp21 = icmp eq i32 %r.0, -1, !dbg !1919
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !1919

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @klee_get_errno() #2, !dbg !1921
  %call25 = tail call i32* @__errno_location() #1, !dbg !1921
  store i32 %call24, i32* %call25, align 4, !dbg !1921, !tbaa !1554
  br label %return, !dbg !1923

if.end26:                                         ; preds = %if.end20
  %cmp27 = icmp sgt i32 %r.0, -1, !dbg !1924
  br i1 %cmp27, label %cond.end, label %cond.false, !dbg !1924

cond.false:                                       ; preds = %if.end26
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([41 x i8]* 
  unreachable, !dbg !1924

cond.end:                                         ; preds = %if.end26
  %11 = load i32* %fd10, align 8, !dbg !1925, !tbaa !1634
  %.off124 = add i32 %11, -1, !dbg !1925
  %switch125 = icmp ult i32 %.off124, 2, !dbg !1925
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !1927
  %sext.pre = shl i64 %r.0.in, 32, !dbg !1927
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !1927
  %conv40.pre = ashr exact i64 %sext.pre, 32, !dbg !1927
  br i1 %switch125, label %return, label %if.then36, !dbg !1925

if.then36:                                        ; preds = %cond.end
  %off38 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1928
  %12 = load i64* %off38, align 8, !dbg !1928, !tbaa !1866
  %add = add nsw i64 %12, %conv40.pre, !dbg !1928
  store i64 %add, i64* %off38, align 8, !dbg !1928, !tbaa !1866
  br label %return, !dbg !1928

if.else41:                                        ; preds = %if.end5
  %off42 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1929
  %13 = load i64* %off42, align 8, !dbg !1929, !tbaa !1866
  %add43 = add i64 %13, %count, !dbg !1929
  %size = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 0, !dbg !1929
  %14 = load i32* %size, align 4, !dbg !1929, !tbaa !1880
  %conv45 = zext i32 %14 to i64, !dbg !1929
  %cmp46 = icmp ugt i64 %add43, %conv45, !dbg !1929
  br i1 %cmp46, label %if.else49, label %if.end66, !dbg !1929

if.else49:                                        ; preds = %if.else41
  %15 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 3), align 8, !dbg !1931, !tbaa !1934
  %tobool50 = icmp eq i32 %15, 0, !dbg !1931
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !1931

if.then51:                                        ; preds = %if.else49
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([41 x i8]* 
  unreachable, !dbg !1935

if.else52:                                        ; preds = %if.else49
  %cmp57 = icmp sgt i64 %conv45, %13, !dbg !1936
  %sub = sub nsw i64 %conv45, %13, !dbg !1939
  br i1 %cmp57, label %if.end66, label %if.end71

if.end66:                                         ; preds = %if.else52, %if.else41
  %actual_count.0 = phi i64 [ %count, %if.else41 ], [ %sub, %if.else52 ]
  %tobool67 = icmp eq i64 %actual_count.0, 0, !dbg !1940
  br i1 %tobool67, label %if.end71, label %if.then68, !dbg !1940

if.then68:                                        ; preds = %if.end66
  %contents = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 1, !dbg !1942
  %16 = load i8** %contents, align 8, !dbg !1942, !tbaa !1886
  %add.ptr = getelementptr inbounds i8* %16, i64 %13, !dbg !1942
  %17 = call i8* @memcpy(i8* %add.ptr, i8* %buf, i64 %actual_count.0)
  br label %if.end71, !dbg !1942

if.end71:                                         ; preds = %if.then68, %if.end66, %if.else52
  %actual_count.0131 = phi i64 [ 0, %if.end66 ], [ %actual_count.0, %if.then68 ], [ 0, %if.else52 ]
  %cmp72 = icmp eq i64 %actual_count.0131, %count, !dbg !1943
  br i1 %cmp72, label %if.end75, label %if.then74, !dbg !1943

if.then74:                                        ; preds = %if.end71
  tail call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !1945
  br label %if.end75, !dbg !1945

if.end75:                                         ; preds = %if.then74, %if.end71
  %18 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1946, !tbaa !1584
  %19 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !1946, !tbaa !1948
  %cmp77 = icmp eq %struct.exe_disk_file_t* %18, %19, !dbg !1946
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !1946

if.then79:                                        ; preds = %if.end75
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !1949, !tbaa !1950
  %conv80 = zext i32 %20 to i64, !dbg !1949
  %add81 = add i64 %conv80, %actual_count.0131, !dbg !1949
  %conv82 = trunc i64 %add81 to i32, !dbg !1949
  store i32 %conv82, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !1949, !tbaa !1950
  br label %if.end83, !dbg !1949

if.end83:                                         ; preds = %if.then79, %if.end75
  %21 = load i64* %off42, align 8, !dbg !1951, !tbaa !1866
  %add85 = add i64 %21, %count, !dbg !1951
  store i64 %add85, i64* %off42, align 8, !dbg !1951, !tbaa !1866
  br label %return, !dbg !1952

return:                                           ; preds = %if.end83, %if.then36, %cond.end, %if.then23, %if.then3, %if.then
  %retval.0 = phi i64 [ -1, %if.then3 ], [ %count, %if.end83 ], [ -1, %if.then23 ], [ -1, %if.then ], [ %conv40.pre, %if.then36 ], [ %conv40.pre, %cond.end ]
  ret i64 %retval.0, !dbg !1953
}

; Function Attrs: nounwind uwtable
define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !1954
  br i1 %0, label %if.then.i, label %if.then, !dbg !1954

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !1956
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !1957
  %1 = load i32* %flags.i, align 4, !dbg !1957, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !1957
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !1957
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !1957

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !1956
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !1958
  br i1 %tobool, label %if.then, label %if.end, !dbg !1958

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1960
  store i32 9, i32* %call1, align 4, !dbg !1960, !tbaa !1554
  br label %return, !dbg !1962

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !1963
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !1963, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !1963
  br i1 %tobool2, label %if.then3, label %if.end23, !dbg !1963

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq i32 %whence, 0, !dbg !1965
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !1968
  %3 = load i32* %fd5, align 8, !dbg !1968, !tbaa !1634
  br i1 %cmp, label %if.then4, label %if.else, !dbg !1965

if.then4:                                         ; preds = %if.then3
  %call6 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %offset, i32 0) #2, !dbg !1968
  br label %if.end16, !dbg !1970

if.else:                                          ; preds = %if.then3
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1971
  %4 = load i64* %off, align 8, !dbg !1971, !tbaa !1866
  %call8 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %3, i64 %4, i32 0) #2, !dbg !1971
  %cmp9 = icmp eq i64 %call8, -1, !dbg !1973
  br i1 %cmp9, label %if.then18, label %if.then10, !dbg !1973

if.then10:                                        ; preds = %if.else
  %5 = load i64* %off, align 8, !dbg !1975, !tbaa !1866
  %cmp12 = icmp eq i64 %call8, %5, !dbg !1975
  br i1 %cmp12, label %cond.end, label %cond.false, !dbg !1975

cond.false:                                       ; preds = %if.then10
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 499, i8* getelementptr inbounds ([38 x i8]*
  unreachable, !dbg !1975

cond.end:                                         ; preds = %if.then10
  %6 = load i32* %fd5, align 8, !dbg !1977, !tbaa !1634
  %call14 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %6, i64 %offset, i32 %whence) #2, !dbg !1977
  br label %if.end16, !dbg !1978

if.end16:                                         ; preds = %cond.end, %if.then4
  %new_off.0 = phi i64 [ %call6, %if.then4 ], [ %call14, %cond.end ]
  %cmp17 = icmp eq i64 %new_off.0, -1, !dbg !1979
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !1979

if.then18:                                        ; preds = %if.end16, %if.else
  %call19 = tail call i32 @klee_get_errno() #2, !dbg !1981
  %call20 = tail call i32* @__errno_location() #1, !dbg !1981
  store i32 %call19, i32* %call20, align 4, !dbg !1981, !tbaa !1554
  br label %return, !dbg !1983

if.end21:                                         ; preds = %if.end16
  %off22 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1984
  store i64 %new_off.0, i64* %off22, align 8, !dbg !1984, !tbaa !1866
  br label %return, !dbg !1985

if.end23:                                         ; preds = %if.end
  switch i32 %whence, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb24
    i32 2, label %sw.bb26
  ], !dbg !1986

sw.bb24:                                          ; preds = %if.end23
  %off25 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1987
  %7 = load i64* %off25, align 8, !dbg !1987, !tbaa !1866
  %add = add nsw i64 %7, %offset, !dbg !1987
  br label %sw.epilog, !dbg !1987

sw.bb26:                                          ; preds = %if.end23
  %size = getelementptr inbounds %struct.exe_disk_file_t* %2, i64 0, i32 0, !dbg !1989
  %8 = load i32* %size, align 4, !dbg !1989, !tbaa !1880
  %conv = zext i32 %8 to i64, !dbg !1989
  %add28 = add nsw i64 %conv, %offset, !dbg !1989
  br label %sw.epilog, !dbg !1989

sw.default:                                       ; preds = %if.end23
  %call29 = tail call i32* @__errno_location() #1, !dbg !1990
  store i32 22, i32* %call29, align 4, !dbg !1990, !tbaa !1554
  br label %return, !dbg !1992

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb24, %if.end23
  %new_off.1 = phi i64 [ %add28, %sw.bb26 ], [ %add, %sw.bb24 ], [ %offset, %if.end23 ]
  %cmp30 = icmp slt i64 %new_off.1, 0, !dbg !1993
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !1993

if.then32:                                        ; preds = %sw.epilog
  %call33 = tail call i32* @__errno_location() #1, !dbg !1995
  store i32 22, i32* %call33, align 4, !dbg !1995, !tbaa !1554
  br label %return, !dbg !1997

if.end34:                                         ; preds = %sw.epilog
  %off35 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !1998
  store i64 %new_off.1, i64* %off35, align 8, !dbg !1998, !tbaa !1866
  br label %return, !dbg !1999

return:                                           ; preds = %if.end34, %if.then32, %sw.default, %if.end21, %if.then18, %if.then
  %retval.0 = phi i64 [ -1, %sw.default ], [ -1, %if.then32 ], [ %new_off.1, %if.end34 ], [ -1, %if.then18 ], [ %new_off.0, %if.end21 ], [ -1, %if.then ]
  ret i64 %retval.0, !dbg !2000
}

; Function Attrs: nounwind uwtable
define i32 @__fd_stat(i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2001, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2003
  %cmp.i = icmp eq i8 %0, 0, !dbg !2003
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2003

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2003
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2003, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2003
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2003

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2004, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2004
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2004

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2004
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2004

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2005
  %sext.i = shl i32 %i.027.i, 24, !dbg !2005
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2005
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2005
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2005
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2005
  %inc.i = add i32 %i.027.i, 1, !dbg !2004
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2005

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2006
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2006, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2007
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2007, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2007
  %5 = load i64* %st_ino.i, align 8, !dbg !2007, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2007
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2006
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2008
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2007
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2007

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64* %buf to i8*, !dbg !2010
  %7 = bitcast %struct.stat64* %4 to i8*, !dbg !2010
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2012

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2013
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #2, !dbg !2013
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2013
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2016
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2016
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2016
  br label %for.cond.i12, !dbg !2017

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2018, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2019
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2019
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2019
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2019

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2020

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2021, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2022

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2023
  store i8 47, i8* %sc.0.i, align 1, !dbg !2023, !tbaa !1507
  br label %for.inc.i, !dbg !2024

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2025
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2025
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2025
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2026
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2026
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2026
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2027
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2027, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2028
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2028

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2017
  br label %for.cond.i12, !dbg !2017

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 4, i8* %path, %struct.stat64* %buf) #2, !dbg !2015
  %conv = trunc i64 %call2 to i32, !dbg !2015
  %cmp = icmp eq i32 %conv, -1, !dbg !2029
  br i1 %cmp, label %if.then4, label %return, !dbg !2029

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #2, !dbg !2031
  %call6 = tail call i32* @__errno_location() #1, !dbg !2031
  store i32 %call5, i32* %call6, align 4, !dbg !2031, !tbaa !1554
  br label %return, !dbg !2031

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2032
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstatat(i32 %fd, i8* %path, %struct.stat* %buf, i32 %flags) #10 {
entry:
  %cmp = icmp eq i32 %fd, -100, !dbg !2033
  br i1 %cmp, label %if.end8, label %if.then, !dbg !2033

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %fd, 32, !dbg !2034
  br i1 %0, label %if.then.i, label %if.then1, !dbg !2034

if.then.i:                                        ; preds = %if.then
  %idxprom.i = sext i32 %fd to i64, !dbg !2036
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2037
  %1 = load i32* %flags.i, align 4, !dbg !2037, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2037
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2037
  br i1 %tobool.i, label %if.then1, label %__get_file.exit, !dbg !2037

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2036
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2038
  br i1 %tobool, label %if.then1, label %if.else, !dbg !2038

if.then1:                                         ; preds = %__get_file.exit, %if.then.i, %if.then
  %call2 = tail call i32* @__errno_location() #1, !dbg !2040
  store i32 9, i32* %call2, align 4, !dbg !2040, !tbaa !1554
  br label %return, !dbg !2042

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2043
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2043, !tbaa !1584
  %tobool3 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2043
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2043

if.then4:                                         ; preds = %if.else
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str22, i64 0, i64 0)) #2, !dbg !2045
  %call5 = tail call i32* @__errno_location() #1, !dbg !2047
  store i32 2, i32* %call5, align 4, !dbg !2047, !tbaa !1554
  br label %return, !dbg !2048

if.end6:                                          ; preds = %if.else
  %fd7 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2049
  %3 = load i32* %fd7, align 8, !dbg !2049, !tbaa !1634
  %phitmp = sext i32 %3 to i64, !dbg !2050
  br label %if.end8, !dbg !2050

if.end8:                                          ; preds = %if.end6, %entry
  %fd.addr.0 = phi i64 [ %phitmp, %if.end6 ], [ -100, %entry ]
  %4 = load i8* %path, align 1, !dbg !2051, !tbaa !1507
  %conv.i = sext i8 %4 to i32, !dbg !2053
  %cmp.i = icmp eq i8 %4, 0, !dbg !2053
  br i1 %cmp.i, label %if.end13, label %lor.lhs.false.i, !dbg !2053

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2053
  %5 = load i8* %arrayidx2.i, align 1, !dbg !2053, !tbaa !1507
  %cmp4.i = icmp eq i8 %5, 0, !dbg !2053
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end13, !dbg !2053

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %6 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2054, !tbaa !1513
  %cmp626.i = icmp eq i32 %6, 0, !dbg !2054
  br i1 %cmp626.i, label %if.end13, label %for.body.i, !dbg !2054

for.cond.i38:                                     ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i40, %6, !dbg !2054
  br i1 %cmp6.i, label %for.body.i, label %if.end13, !dbg !2054

for.body.i:                                       ; preds = %for.cond.i38, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i40, %for.cond.i38 ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2055
  %sext.i = shl i32 %i.027.i, 24, !dbg !2055
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2055
  %conv10.i39 = ashr exact i32 %sext.i, 24, !dbg !2055
  %add.i = add nsw i32 %conv10.i39, 65, !dbg !2055
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2055
  %inc.i40 = add i32 %i.027.i, 1, !dbg !2054
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i38, !dbg !2055

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i41 = zext i32 %i.027.i to i64, !dbg !2056
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2056, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i41, i32 2, !dbg !2057
  %8 = load %struct.stat64** %stat.i, align 8, !dbg !2057, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %8, i64 0, i32 1, !dbg !2057
  %9 = load i64* %st_ino.i, align 8, !dbg !2057, !tbaa !1524
  %cmp15.i = icmp eq i64 %9, 0, !dbg !2057
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 %idxprom.i41, !dbg !2056
  %tobool11 = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2058
  %or.cond = or i1 %cmp15.i, %tobool11, !dbg !2057
  br i1 %or.cond, label %if.end13, label %if.then12, !dbg !2057

if.then12:                                        ; preds = %if.then13.i
  %10 = bitcast %struct.stat* %buf to i8*, !dbg !2060
  %11 = bitcast %struct.stat64* %8 to i8*, !dbg !2060
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 144)
  br label %return, !dbg !2062

if.end13:                                         ; preds = %if.then13.i, %for.cond.i38, %for.cond.preheader.i, %lor.lhs.false.i, %if.end8
  %tobool14 = icmp eq i8* %path, null, !dbg !2063
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !2063

cond.true:                                        ; preds = %if.end13
  %13 = ptrtoint i8* %path to i64, !dbg !2064
  %call.i.i = tail call i64 @klee_get_valuel(i64 %13) #2, !dbg !2064
  %14 = inttoptr i64 %call.i.i to i8*, !dbg !2064
  %cmp.i.i = icmp eq i8* %14, %path, !dbg !2067
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2067
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2067
  br label %for.cond.i, !dbg !2068

for.cond.i:                                       ; preds = %for.inc.i, %cond.true
  %i.0.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.inc.i ]
  %sc.0.i = phi i8* [ %14, %cond.true ], [ %sc.1.i, %for.inc.i ]
  %15 = load i8* %sc.0.i, align 1, !dbg !2069, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2070
  %and.i34 = and i32 %sub.i, %i.0.i, !dbg !2070
  %tobool.i35 = icmp eq i32 %and.i34, 0, !dbg !2070
  br i1 %tobool.i35, label %if.then.i36, label %if.else7.i, !dbg !2070

if.then.i36:                                      ; preds = %for.cond.i
  switch i8 %15, label %for.inc.i [
    i8 0, label %if.then2.i37
    i8 47, label %if.then4.i
  ], !dbg !2071

if.then2.i37:                                     ; preds = %if.then.i36
  store i8 0, i8* %sc.0.i, align 1, !dbg !2072, !tbaa !1507
  br label %cond.end, !dbg !2073

if.then4.i:                                       ; preds = %if.then.i36
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2074
  store i8 47, i8* %sc.0.i, align 1, !dbg !2074, !tbaa !1507
  br label %for.inc.i, !dbg !2075

if.else7.i:                                       ; preds = %for.cond.i
  %conv8.i = sext i8 %15 to i64, !dbg !2076
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2076
  %conv10.i = trunc i64 %call9.i to i8, !dbg !2076
  %cmp13.i = icmp eq i8 %conv10.i, %15, !dbg !2077
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2077
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2077
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2078
  store i8 %conv10.i, i8* %sc.0.i, align 1, !dbg !2078, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i, 0, !dbg !2079
  br i1 %tobool17.i, label %cond.end, label %for.inc.i, !dbg !2079

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i36
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i36 ]
  %inc.i = add i32 %i.0.i, 1, !dbg !2068
  br label %for.cond.i, !dbg !2068

cond.end:                                         ; preds = %if.else7.i, %if.then2.i37, %if.end13
  %cond = phi i8* [ null, %if.end13 ], [ %path, %if.then2.i37 ], [ %path, %if.else7.i ], !dbg !2066
  %conv16 = sext i32 %flags to i64, !dbg !2063
  %call17 = tail call i64 (i64, ...)* @syscall(i64 262, i64 %fd.addr.0, i8* %cond, %struct.stat* %buf, i64 %conv16) #2, !dbg !2063
  %conv18 = trunc i64 %call17 to i32, !dbg !2063
  %cmp19 = icmp eq i32 %conv18, -1, !dbg !2080
  br i1 %cmp19, label %if.then21, label %return, !dbg !2080

if.then21:                                        ; preds = %cond.end
  %call22 = tail call i32 @klee_get_errno() #2, !dbg !2082
  %call23 = tail call i32* @__errno_location() #1, !dbg !2082
  store i32 %call22, i32* %call23, align 4, !dbg !2082, !tbaa !1554
  br label %return, !dbg !2082

return:                                           ; preds = %if.then21, %cond.end, %if.then12, %if.then4, %if.then1
  %retval.0 = phi i32 [ -1, %if.then4 ], [ 0, %if.then12 ], [ -1, %if.then1 ], [ -1, %if.then21 ], [ %conv18, %cond.end ]
  ret i32 %retval.0, !dbg !2083
}

; Function Attrs: nounwind uwtable
define i32 @__fd_lstat(i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2084, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2086
  %cmp.i = icmp eq i8 %0, 0, !dbg !2086
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2086

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2086
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2086, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2086
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2086

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2087, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2087
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2087

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2087
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2087

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2088
  %sext.i = shl i32 %i.027.i, 24, !dbg !2088
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2088
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2088
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2088
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2088
  %inc.i = add i32 %i.027.i, 1, !dbg !2087
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2088

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2089
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2089, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2090
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2090, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2090
  %5 = load i64* %st_ino.i, align 8, !dbg !2090, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2090
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2089
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2091
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2090
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2090

if.then:                                          ; preds = %if.then13.i
  %6 = bitcast %struct.stat64* %buf to i8*, !dbg !2093
  %7 = bitcast %struct.stat64* %4 to i8*, !dbg !2093
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 144)
  br label %return, !dbg !2095

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %9 = ptrtoint i8* %path to i64, !dbg !2096
  %call.i.i = tail call i64 @klee_get_valuel(i64 %9) #2, !dbg !2096
  %10 = inttoptr i64 %call.i.i to i8*, !dbg !2096
  %cmp.i.i = icmp eq i8* %10, %path, !dbg !2099
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2099
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2099
  br label %for.cond.i12, !dbg !2100

for.cond.i12:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i14, %for.inc.i ]
  %sc.0.i = phi i8* [ %10, %if.end ], [ %sc.1.i, %for.inc.i ]
  %11 = load i8* %sc.0.i, align 1, !dbg !2101, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2102
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2102
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2102
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2102

if.then.i:                                        ; preds = %for.cond.i12
  switch i8 %11, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2103

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2104, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2105

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2106
  store i8 47, i8* %sc.0.i, align 1, !dbg !2106, !tbaa !1507
  br label %for.inc.i, !dbg !2107

if.else7.i:                                       ; preds = %for.cond.i12
  %conv8.i = sext i8 %11 to i64, !dbg !2108
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2108
  %conv10.i13 = trunc i64 %call9.i to i8, !dbg !2108
  %cmp13.i = icmp eq i8 %conv10.i13, %11, !dbg !2109
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2109
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2109
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2110
  store i8 %conv10.i13, i8* %sc.0.i, align 1, !dbg !2110, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i13, 0, !dbg !2111
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2111

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i14 = add i32 %i.0.i, 1, !dbg !2100
  br label %for.cond.i12, !dbg !2100

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call2 = tail call i64 (i64, ...)* @syscall(i64 6, i8* %path, %struct.stat64* %buf) #2, !dbg !2098
  %conv = trunc i64 %call2 to i32, !dbg !2098
  %cmp = icmp eq i32 %conv, -1, !dbg !2112
  br i1 %cmp, label %if.then4, label %return, !dbg !2112

if.then4:                                         ; preds = %__concretize_string.exit
  %call5 = tail call i32 @klee_get_errno() #2, !dbg !2114
  %call6 = tail call i32* @__errno_location() #1, !dbg !2114
  store i32 %call5, i32* %call6, align 4, !dbg !2114, !tbaa !1554
  br label %return, !dbg !2114

return:                                           ; preds = %if.then4, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then4 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2115
}

; Function Attrs: nounwind uwtable
define i32 @chdir(i8* %path) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2116, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2118
  %cmp.i = icmp eq i8 %0, 0, !dbg !2118
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2118

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2118
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2118, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2118
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2118

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2119, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2119
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2119

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2119
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2119

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2120
  %sext.i = shl i32 %i.027.i, 24, !dbg !2120
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2120
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2120
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2120
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2120
  %inc.i = add i32 %i.027.i, 1, !dbg !2119
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2120

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2121
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2121, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2122
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2122, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2122
  %5 = load i64* %st_ino.i, align 8, !dbg !2122, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2122
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2121
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2123
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2122
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2122

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !2125
  %call1 = tail call i32* @__errno_location() #1, !dbg !2127
  store i32 2, i32* %call1, align 4, !dbg !2127, !tbaa !1554
  br label %return, !dbg !2128

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2129
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #2, !dbg !2129
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2129
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2132
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2132
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2132
  br label %for.cond.i11, !dbg !2133

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2134, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2135
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2135
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2135
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2135

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2136

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2137, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2138

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2139
  store i8 47, i8* %sc.0.i, align 1, !dbg !2139, !tbaa !1507
  br label %for.inc.i, !dbg !2140

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2141
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2141
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2141
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2142
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2142
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2142
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2143
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2143, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2144
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2144

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2133
  br label %for.cond.i11, !dbg !2133

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 80, i8* %path) #2, !dbg !2131
  %conv = trunc i64 %call3 to i32, !dbg !2131
  %cmp = icmp eq i32 %conv, -1, !dbg !2145
  br i1 %cmp, label %if.then5, label %return, !dbg !2145

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #2, !dbg !2147
  %call7 = tail call i32* @__errno_location() #1, !dbg !2147
  store i32 %call6, i32* %call7, align 4, !dbg !2147, !tbaa !1554
  br label %return, !dbg !2147

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2148
}

; Function Attrs: nounwind uwtable
define i32 @fchdir(i32 %fd) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2149
  br i1 %0, label %if.then.i, label %if.then, !dbg !2149

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2151
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2152
  %1 = load i32* %flags.i, align 4, !dbg !2152, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2152
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2152
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2152

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2151
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2153
  br i1 %tobool, label %if.then, label %if.end, !dbg !2153

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2155
  store i32 9, i32* %call1, align 4, !dbg !2155, !tbaa !1554
  br label %return, !dbg !2157

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2158
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2158, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2158
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2158

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !2159
  %call4 = tail call i32* @__errno_location() #1, !dbg !2161
  store i32 2, i32* %call4, align 4, !dbg !2161, !tbaa !1554
  br label %return, !dbg !2162

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2163
  %3 = load i32* %fd5, align 8, !dbg !2163, !tbaa !1634
  %call6 = tail call i64 (i64, ...)* @syscall(i64 81, i32 %3) #2, !dbg !2163
  %conv = trunc i64 %call6 to i32, !dbg !2163
  %cmp = icmp eq i32 %conv, -1, !dbg !2164
  br i1 %cmp, label %if.then8, label %return, !dbg !2164

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #2, !dbg !2166
  %call10 = tail call i32* @__errno_location() #1, !dbg !2166
  store i32 %call9, i32* %call10, align 4, !dbg !2166, !tbaa !1554
  br label %return, !dbg !2166

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2167
}

; Function Attrs: nounwind uwtable
define i32 @chmod(i8* %path, i32 %mode) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2168, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2170
  %cmp.i = icmp eq i8 %0, 0, !dbg !2170
  br i1 %cmp.i, label %__get_sym_file.exit, label %lor.lhs.false.i, !dbg !2170

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2170
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2170, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2170
  br i1 %cmp4.i, label %for.cond.preheader.i, label %__get_sym_file.exit, !dbg !2170

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2171, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2171
  br i1 %cmp626.i, label %__get_sym_file.exit, label %for.body.i, !dbg !2171

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2171
  br i1 %cmp6.i, label %for.body.i, label %__get_sym_file.exit, !dbg !2171

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2172
  %sext.i = shl i32 %i.027.i, 24, !dbg !2172
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2172
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2172
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2172
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2172
  %inc.i = add i32 %i.027.i, 1, !dbg !2171
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2172

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2173
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2173, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2174
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2174, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2174
  %5 = load i64* %st_ino.i, align 8, !dbg !2174, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2174
  br i1 %cmp15.i, label %__get_sym_file.exit, label %if.end18.i, !dbg !2174

if.end18.i:                                       ; preds = %if.then13.i
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2173
  br label %__get_sym_file.exit, !dbg !2175

__get_sym_file.exit:                              ; preds = %if.end18.i, %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %retval.0.i = phi %struct.exe_disk_file_t* [ %arrayidx14.i, %if.end18.i ], [ null, %lor.lhs.false.i ], [ null, %entry ], [ null, %if.then13.i ], [ null, %for.cond.preheader.i ], [ null, %for.cond.i ]
  %6 = load i32* @chmod.n_calls, align 4, !dbg !2176, !tbaa !1554
  %inc = add nsw i32 %6, 1, !dbg !2176
  store i32 %inc, i32* @chmod.n_calls, align 4, !dbg !2176, !tbaa !1554
  %7 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2177, !tbaa !1821
  %tobool = icmp eq i32 %7, 0, !dbg !2177
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2177

land.lhs.true:                                    ; preds = %__get_sym_file.exit
  %8 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !2177, !tbaa !2179
  %9 = load i32* %8, align 4, !dbg !2177, !tbaa !1554
  %cmp = icmp eq i32 %9, %inc, !dbg !2177
  br i1 %cmp, label %if.then, label %if.end, !dbg !2177

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %7, -1, !dbg !2180
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2180, !tbaa !1821
  %call1 = tail call i32* @__errno_location() #1, !dbg !2182
  store i32 5, i32* %call1, align 4, !dbg !2182, !tbaa !1554
  br label %return, !dbg !2183

if.end:                                           ; preds = %land.lhs.true, %__get_sym_file.exit
  %tobool2 = icmp eq %struct.exe_disk_file_t* %retval.0.i, null, !dbg !2184
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2184

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @geteuid() #2, !dbg !2185
  %stat.i20 = getelementptr inbounds %struct.exe_disk_file_t* %retval.0.i, i64 0, i32 2, !dbg !2185
  %10 = load %struct.stat64** %stat.i20, align 8, !dbg !2185, !tbaa !1522
  %st_uid.i = getelementptr inbounds %struct.stat64* %10, i64 0, i32 4, !dbg !2185
  %11 = load i32* %st_uid.i, align 4, !dbg !2185, !tbaa !2189
  %cmp.i21 = icmp eq i32 %call.i, %11, !dbg !2185
  br i1 %cmp.i21, label %if.then.i23, label %if.else.i, !dbg !2185

if.then.i23:                                      ; preds = %if.then3
  %call1.i = tail call i32 @getgid() #2, !dbg !2190
  %12 = load %struct.stat64** %stat.i20, align 8, !dbg !2190, !tbaa !1522
  %st_gid.i = getelementptr inbounds %struct.stat64* %12, i64 0, i32 5, !dbg !2190
  %13 = load i32* %st_gid.i, align 4, !dbg !2190, !tbaa !2193
  %cmp3.i = icmp eq i32 %call1.i, %13, !dbg !2190
  %and.i22 = and i32 %mode, 3071, !dbg !2194
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2190
  %st_mode.i = getelementptr inbounds %struct.stat64* %12, i64 0, i32 3, !dbg !2195
  %14 = load i32* %st_mode.i, align 4, !dbg !2195, !tbaa !1598
  %and6.i = and i32 %14, -4096, !dbg !2195
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2195
  %or.i = or i32 %and7.i, %and6.i, !dbg !2195
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2195, !tbaa !1598
  br label %return, !dbg !2196

if.else.i:                                        ; preds = %if.then3
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2197
  store i32 1, i32* %call10.i, align 4, !dbg !2197, !tbaa !1554
  br label %return, !dbg !2199

if.else:                                          ; preds = %if.end
  %15 = ptrtoint i8* %path to i64, !dbg !2200
  %call.i.i = tail call i64 @klee_get_valuel(i64 %15) #2, !dbg !2200
  %16 = inttoptr i64 %call.i.i to i8*, !dbg !2200
  %cmp.i.i = icmp eq i8* %16, %path, !dbg !2203
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2203
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2203
  br label %for.cond.i17, !dbg !2204

for.cond.i17:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i19, %for.inc.i ]
  %sc.0.i = phi i8* [ %16, %if.else ], [ %sc.1.i, %for.inc.i ]
  %17 = load i8* %sc.0.i, align 1, !dbg !2205, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2206
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2206
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2206
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2206

if.then.i:                                        ; preds = %for.cond.i17
  switch i8 %17, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2207

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2208, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2209

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2210
  store i8 47, i8* %sc.0.i, align 1, !dbg !2210, !tbaa !1507
  br label %for.inc.i, !dbg !2211

if.else7.i:                                       ; preds = %for.cond.i17
  %conv8.i = sext i8 %17 to i64, !dbg !2212
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2212
  %conv10.i18 = trunc i64 %call9.i to i8, !dbg !2212
  %cmp13.i = icmp eq i8 %conv10.i18, %17, !dbg !2213
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2213
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2213
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2214
  store i8 %conv10.i18, i8* %sc.0.i, align 1, !dbg !2214, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i18, 0, !dbg !2215
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2215

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i19 = add i32 %i.0.i, 1, !dbg !2204
  br label %for.cond.i17, !dbg !2204

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call6 = tail call i64 (i64, ...)* @syscall(i64 90, i8* %path, i32 %mode) #2, !dbg !2202
  %conv = trunc i64 %call6 to i32, !dbg !2202
  %cmp7 = icmp eq i32 %conv, -1, !dbg !2216
  br i1 %cmp7, label %if.then9, label %return, !dbg !2216

if.then9:                                         ; preds = %__concretize_string.exit
  %call10 = tail call i32 @klee_get_errno() #2, !dbg !2218
  %call11 = tail call i32* @__errno_location() #1, !dbg !2218
  store i32 %call10, i32* %call11, align 4, !dbg !2218, !tbaa !1554
  br label %return, !dbg !2218

return:                                           ; preds = %if.then9, %__concretize_string.exit, %if.else.i, %if.then.i23, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then9 ], [ %conv, %__concretize_string.exit ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2219
}

; Function Attrs: nounwind uwtable
define i32 @fchmod(i32 %fd, i32 %mode) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2220
  br i1 %0, label %if.then.i, label %if.then, !dbg !2220

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2222
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2223
  %1 = load i32* %flags.i, align 4, !dbg !2223, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2223
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2223
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2223

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2222
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2224
  br i1 %tobool, label %if.then, label %if.end, !dbg !2224

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2226
  store i32 9, i32* %call1, align 4, !dbg !2226, !tbaa !1554
  br label %return, !dbg !2228

if.end:                                           ; preds = %__get_file.exit
  %2 = load i32* @fchmod.n_calls, align 4, !dbg !2229, !tbaa !1554
  %inc = add nsw i32 %2, 1, !dbg !2229
  store i32 %inc, i32* @fchmod.n_calls, align 4, !dbg !2229, !tbaa !1554
  %3 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2230, !tbaa !1821
  %tobool2 = icmp eq i32 %3, 0, !dbg !2230
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2230

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 8, !dbg !2230, !tbaa !2232
  %5 = load i32* %4, align 4, !dbg !2230, !tbaa !1554
  %cmp = icmp eq i32 %5, %inc, !dbg !2230
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2230

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %3, -1, !dbg !2233
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2233, !tbaa !1821
  %call4 = tail call i32* @__errno_location() #1, !dbg !2235
  store i32 5, i32* %call4, align 4, !dbg !2235, !tbaa !1554
  br label %return, !dbg !2236

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2237
  %6 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2237, !tbaa !1584
  %tobool6 = icmp eq %struct.exe_disk_file_t* %6, null, !dbg !2237
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2237

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @geteuid() #2, !dbg !2238
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %6, i64 0, i32 2, !dbg !2238
  %7 = load %struct.stat64** %stat.i, align 8, !dbg !2238, !tbaa !1522
  %st_uid.i = getelementptr inbounds %struct.stat64* %7, i64 0, i32 4, !dbg !2238
  %8 = load i32* %st_uid.i, align 4, !dbg !2238, !tbaa !2189
  %cmp.i = icmp eq i32 %call.i, %8, !dbg !2238
  br i1 %cmp.i, label %if.then.i23, label %if.else.i, !dbg !2238

if.then.i23:                                      ; preds = %if.then7
  %call1.i = tail call i32 @getgid() #2, !dbg !2241
  %9 = load %struct.stat64** %stat.i, align 8, !dbg !2241, !tbaa !1522
  %st_gid.i = getelementptr inbounds %struct.stat64* %9, i64 0, i32 5, !dbg !2241
  %10 = load i32* %st_gid.i, align 4, !dbg !2241, !tbaa !2193
  %cmp3.i = icmp eq i32 %call1.i, %10, !dbg !2241
  %and.i22 = and i32 %mode, 3071, !dbg !2242
  %mode.and.i = select i1 %cmp3.i, i32 %mode, i32 %and.i22, !dbg !2241
  %st_mode.i = getelementptr inbounds %struct.stat64* %9, i64 0, i32 3, !dbg !2243
  %11 = load i32* %st_mode.i, align 4, !dbg !2243, !tbaa !1598
  %and6.i = and i32 %11, -4096, !dbg !2243
  %and7.i = and i32 %mode.and.i, 4095, !dbg !2243
  %or.i = or i32 %and7.i, %and6.i, !dbg !2243
  store i32 %or.i, i32* %st_mode.i, align 4, !dbg !2243, !tbaa !1598
  br label %return, !dbg !2244

if.else.i:                                        ; preds = %if.then7
  %call10.i = tail call i32* @__errno_location() #1, !dbg !2245
  store i32 1, i32* %call10.i, align 4, !dbg !2245, !tbaa !1554
  br label %return, !dbg !2246

if.else:                                          ; preds = %if.end5
  %fd10 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2247
  %12 = load i32* %fd10, align 8, !dbg !2247, !tbaa !1634
  %call11 = tail call i64 (i64, ...)* @syscall(i64 91, i32 %12, i32 %mode) #2, !dbg !2247
  %conv = trunc i64 %call11 to i32, !dbg !2247
  %cmp12 = icmp eq i32 %conv, -1, !dbg !2248
  br i1 %cmp12, label %if.then14, label %return, !dbg !2248

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 @klee_get_errno() #2, !dbg !2250
  %call16 = tail call i32* @__errno_location() #1, !dbg !2250
  store i32 %call15, i32* %call16, align 4, !dbg !2250, !tbaa !1554
  br label %return, !dbg !2250

return:                                           ; preds = %if.then14, %if.else, %if.else.i, %if.then.i23, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then14 ], [ %conv, %if.else ], [ 0, %if.then.i23 ], [ -1, %if.else.i ]
  ret i32 %retval.0, !dbg !2251
}

; Function Attrs: nounwind uwtable
define i32 @chown(i8* %path, i32 %owner, i32 %group) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2252, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2254
  %cmp.i = icmp eq i8 %0, 0, !dbg !2254
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2254

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2254
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2254, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2254
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2254

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2255, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2255
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2255

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2255
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2255

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2256
  %sext.i = shl i32 %i.027.i, 24, !dbg !2256
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2256
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2256
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2256
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2256
  %inc.i = add i32 %i.027.i, 1, !dbg !2255
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2256

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2257
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2257, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2258
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2258, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2258
  %5 = load i64* %st_ino.i, align 8, !dbg !2258, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2258
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2257
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2259
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2258
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2258

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !2260
  %call.i = tail call i32* @__errno_location() #1, !dbg !2263
  store i32 1, i32* %call.i, align 4, !dbg !2263, !tbaa !1554
  br label %return, !dbg !2261

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2264
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #2, !dbg !2264
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2264
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2267
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2267
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2267
  br label %for.cond.i13, !dbg !2268

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2269, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2270
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2270
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2270
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2270

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2271

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2272, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2273

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2274
  store i8 47, i8* %sc.0.i, align 1, !dbg !2274, !tbaa !1507
  br label %for.inc.i, !dbg !2275

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2276
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2276
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2276
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2277
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2277
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2277
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2278
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2278, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2279
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2279

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2268
  br label %for.cond.i13, !dbg !2268

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #2, !dbg !2266
  %conv = trunc i64 %call3 to i32, !dbg !2266
  %cmp = icmp eq i32 %conv, -1, !dbg !2280
  br i1 %cmp, label %if.then5, label %return, !dbg !2280

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #2, !dbg !2282
  %call7 = tail call i32* @__errno_location() #1, !dbg !2282
  store i32 %call6, i32* %call7, align 4, !dbg !2282, !tbaa !1554
  br label %return, !dbg !2282

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2283
}

; Function Attrs: nounwind uwtable
define i32 @fchown(i32 %fd, i32 %owner, i32 %group) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2284
  br i1 %0, label %if.then.i, label %if.then, !dbg !2284

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2286
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2287
  %1 = load i32* %flags.i, align 4, !dbg !2287, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2287
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2287
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2286
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2288
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2287
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2287

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2290
  store i32 9, i32* %call1, align 4, !dbg !2290, !tbaa !1554
  br label %return, !dbg !2292

if.end:                                           ; preds = %if.then.i
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2293
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2293, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2293
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2293

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !2294
  %call.i = tail call i32* @__errno_location() #1, !dbg !2297
  store i32 1, i32* %call.i, align 4, !dbg !2297, !tbaa !1554
  br label %return, !dbg !2295

if.else:                                          ; preds = %if.end
  %call6 = tail call i64 (i64, ...)* @syscall(i64 93, i32 %fd, i32 %owner, i32 %group) #2, !dbg !2298
  %conv = trunc i64 %call6 to i32, !dbg !2298
  %cmp = icmp eq i32 %conv, -1, !dbg !2299
  br i1 %cmp, label %if.then8, label %return, !dbg !2299

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #2, !dbg !2301
  %call10 = tail call i32* @__errno_location() #1, !dbg !2301
  store i32 %call9, i32* %call10, align 4, !dbg !2301, !tbaa !1554
  br label %return, !dbg !2301

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2302
}

; Function Attrs: nounwind uwtable
define i32 @lchown(i8* %path, i32 %owner, i32 %group) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2303, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2305
  %cmp.i = icmp eq i8 %0, 0, !dbg !2305
  br i1 %cmp.i, label %if.else, label %lor.lhs.false.i, !dbg !2305

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2305
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2305, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2305
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else, !dbg !2305

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2306, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2306
  br i1 %cmp626.i, label %if.else, label %for.body.i, !dbg !2306

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2306
  br i1 %cmp6.i, label %for.body.i, label %if.else, !dbg !2306

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2307
  %sext.i = shl i32 %i.027.i, 24, !dbg !2307
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2307
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2307
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2307
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2307
  %inc.i = add i32 %i.027.i, 1, !dbg !2306
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2307

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2308
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2308, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2309
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2309, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2309
  %5 = load i64* %st_ino.i, align 8, !dbg !2309, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2309
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2308
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2310
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2309
  br i1 %or.cond, label %if.else, label %if.then, !dbg !2309

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !2311
  %call.i = tail call i32* @__errno_location() #1, !dbg !2314
  store i32 1, i32* %call.i, align 4, !dbg !2314, !tbaa !1554
  br label %return, !dbg !2312

if.else:                                          ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2315
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #2, !dbg !2315
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2315
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2318
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2318
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2318
  br label %for.cond.i13, !dbg !2319

for.cond.i13:                                     ; preds = %for.inc.i, %if.else
  %i.0.i = phi i32 [ 0, %if.else ], [ %inc.i15, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.else ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2320, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2321
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2321
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2321
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2321

if.then.i:                                        ; preds = %for.cond.i13
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2322

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2323, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2324

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2325
  store i8 47, i8* %sc.0.i, align 1, !dbg !2325, !tbaa !1507
  br label %for.inc.i, !dbg !2326

if.else7.i:                                       ; preds = %for.cond.i13
  %conv8.i = sext i8 %8 to i64, !dbg !2327
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2327
  %conv10.i14 = trunc i64 %call9.i to i8, !dbg !2327
  %cmp13.i = icmp eq i8 %conv10.i14, %8, !dbg !2328
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2328
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2328
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2329
  store i8 %conv10.i14, i8* %sc.0.i, align 1, !dbg !2329, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i14, 0, !dbg !2330
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2330

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i15 = add i32 %i.0.i, 1, !dbg !2319
  br label %for.cond.i13, !dbg !2319

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) #2, !dbg !2317
  %conv = trunc i64 %call3 to i32, !dbg !2317
  %cmp = icmp eq i32 %conv, -1, !dbg !2331
  br i1 %cmp, label %if.then5, label %return, !dbg !2331

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #2, !dbg !2333
  %call7 = tail call i32* @__errno_location() #1, !dbg !2333
  store i32 %call6, i32* %call7, align 4, !dbg !2333, !tbaa !1554
  br label %return, !dbg !2333

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2334
}

; Function Attrs: nounwind uwtable
define i32 @__fd_fstat(i32 %fd, %struct.stat64* %buf) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2335
  br i1 %0, label %if.then.i, label %if.then, !dbg !2335

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2337
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2338
  %1 = load i32* %flags.i, align 4, !dbg !2338, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2338
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2338
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2338

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2337
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2339
  br i1 %tobool, label %if.then, label %if.end, !dbg !2339

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2341
  store i32 9, i32* %call1, align 4, !dbg !2341, !tbaa !1554
  br label %return, !dbg !2343

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2344
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2344, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2344
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !2344

if.then3:                                         ; preds = %if.end
  %fd4 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2345
  %3 = load i32* %fd4, align 8, !dbg !2345, !tbaa !1634
  %call5 = tail call i64 (i64, ...)* @syscall(i64 5, i32 %3, %struct.stat64* %buf) #2, !dbg !2345
  %conv = trunc i64 %call5 to i32, !dbg !2345
  %cmp = icmp eq i32 %conv, -1, !dbg !2346
  br i1 %cmp, label %if.then7, label %return, !dbg !2346

if.then7:                                         ; preds = %if.then3
  %call8 = tail call i32 @klee_get_errno() #2, !dbg !2348
  %call9 = tail call i32* @__errno_location() #1, !dbg !2348
  store i32 %call8, i32* %call9, align 4, !dbg !2348, !tbaa !1554
  br label %return, !dbg !2348

if.end11:                                         ; preds = %if.end
  %4 = bitcast %struct.stat64* %buf to i8*, !dbg !2349
  %stat = getelementptr inbounds %struct.exe_disk_file_t* %2, i64 0, i32 2, !dbg !2349
  %5 = load %struct.stat64** %stat, align 8, !dbg !2349, !tbaa !1522
  %6 = bitcast %struct.stat64* %5 to i8*, !dbg !2349
  %7 = call i8* @memcpy(i8* %4, i8* %6, i64 144)
  br label %return, !dbg !2350

return:                                           ; preds = %if.end11, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %if.then ], [ -1, %if.then7 ], [ %conv, %if.then3 ]
  ret i32 %retval.0, !dbg !2351
}

; Function Attrs: nounwind uwtable
define i32 @__fd_ftruncate(i32 %fd, i64 %length) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2352
  br i1 %0, label %if.then.i, label %__get_file.exit.thread, !dbg !2352

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2354
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2355
  %1 = load i32* %flags.i, align 4, !dbg !2355, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2355
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2355
  br i1 %tobool.i, label %__get_file.exit.thread, label %__get_file.exit, !dbg !2355

__get_file.exit.thread:                           ; preds = %if.then.i, %entry
  %2 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !2356, !tbaa !1554
  %inc20 = add nsw i32 %2, 1, !dbg !2356
  store i32 %inc20, i32* @__fd_ftruncate.n_calls, align 4, !dbg !2356, !tbaa !1554
  br label %if.then, !dbg !2357

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2354
  %3 = load i32* @__fd_ftruncate.n_calls, align 4, !dbg !2356, !tbaa !1554
  %inc = add nsw i32 %3, 1, !dbg !2356
  store i32 %inc, i32* @__fd_ftruncate.n_calls, align 4, !dbg !2356, !tbaa !1554
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2357
  br i1 %tobool, label %if.then, label %if.end, !dbg !2357

if.then:                                          ; preds = %__get_file.exit, %__get_file.exit.thread
  %call1 = tail call i32* @__errno_location() #1, !dbg !2359
  store i32 9, i32* %call1, align 4, !dbg !2359, !tbaa !1554
  br label %return, !dbg !2361

if.end:                                           ; preds = %__get_file.exit
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2362, !tbaa !1821
  %tobool2 = icmp eq i32 %4, 0, !dbg !2362
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !2362

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !2362, !tbaa !2364
  %6 = load i32* %5, align 4, !dbg !2362, !tbaa !1554
  %cmp = icmp eq i32 %6, %inc, !dbg !2362
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2362

if.then3:                                         ; preds = %land.lhs.true
  %dec = add i32 %4, -1, !dbg !2365
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2365, !tbaa !1821
  %call4 = tail call i32* @__errno_location() #1, !dbg !2367
  store i32 5, i32* %call4, align 4, !dbg !2367, !tbaa !1554
  br label %return, !dbg !2368

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2369
  %7 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2369, !tbaa !1584
  %tobool6 = icmp eq %struct.exe_disk_file_t* %7, null, !dbg !2369
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2369

if.then7:                                         ; preds = %if.end5
  tail call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0)) #2, !dbg !2370
  %call8 = tail call i32* @__errno_location() #1, !dbg !2372
  store i32 5, i32* %call8, align 4, !dbg !2372, !tbaa !1554
  br label %return, !dbg !2373

if.else:                                          ; preds = %if.end5
  %fd9 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2374
  %8 = load i32* %fd9, align 8, !dbg !2374, !tbaa !1634
  %call10 = tail call i64 (i64, ...)* @syscall(i64 77, i32 %8, i64 %length) #2, !dbg !2374
  %conv = trunc i64 %call10 to i32, !dbg !2374
  %cmp11 = icmp eq i32 %conv, -1, !dbg !2375
  br i1 %cmp11, label %if.then13, label %return, !dbg !2375

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 @klee_get_errno() #2, !dbg !2377
  %call15 = tail call i32* @__errno_location() #1, !dbg !2377
  store i32 %call14, i32* %call15, align 4, !dbg !2377, !tbaa !1554
  br label %return, !dbg !2377

return:                                           ; preds = %if.then13, %if.else, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then7 ], [ -1, %if.then ], [ -1, %if.then13 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2378
}

; Function Attrs: nounwind uwtable
define i32 @__fd_getdents(i32 %fd, %struct.dirent64* %dirp, i32 %count) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2379
  br i1 %0, label %if.then.i, label %if.then, !dbg !2379

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2381
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2382
  %1 = load i32* %flags.i, align 4, !dbg !2382, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2382
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2382
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2382

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2381
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2383
  br i1 %tobool, label %if.then, label %if.end, !dbg !2383

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2385
  store i32 9, i32* %call1, align 4, !dbg !2385, !tbaa !1554
  br label %return, !dbg !2387

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2388
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2388, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2388
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2388

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str114, i64 0, i64 0)) #2, !dbg !2389
  %call4 = tail call i32* @__errno_location() #1, !dbg !2391
  store i32 22, i32* %call4, align 4, !dbg !2391, !tbaa !1554
  br label %return, !dbg !2392

if.else:                                          ; preds = %if.end
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2393
  %3 = load i64* %off, align 8, !dbg !2393, !tbaa !1866
  %cmp = icmp ult i64 %3, 4096, !dbg !2393
  br i1 %cmp, label %if.then5, label %if.else43, !dbg !2393

if.then5:                                         ; preds = %if.else
  %int_cast_to_i64 = bitcast i64 280 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2394
  %div = udiv i64 %3, 280, !dbg !2394
  %mul = mul i64 %div, 280, !dbg !2395
  %cmp8 = icmp eq i64 %mul, %3, !dbg !2395
  br i1 %cmp8, label %lor.lhs.false, label %if.then11, !dbg !2395

lor.lhs.false:                                    ; preds = %if.then5
  %4 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2395, !tbaa !1513
  %conv = zext i32 %4 to i64, !dbg !2395
  %cmp9 = icmp ugt i64 %div, %conv, !dbg !2395
  br i1 %cmp9, label %if.then11, label %for.cond.preheader, !dbg !2395

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp15123 = icmp ult i64 %div, %conv, !dbg !2397
  br i1 %cmp15123, label %for.body, label %for.end, !dbg !2397

if.then11:                                        ; preds = %lor.lhs.false, %if.then5
  %call12 = tail call i32* @__errno_location() #1, !dbg !2398
  store i32 22, i32* %call12, align 4, !dbg !2398, !tbaa !1554
  br label %return, !dbg !2400

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0126 = phi %struct.dirent64* [ %incdec.ptr, %for.body ], [ %dirp, %for.cond.preheader ]
  %i.0125 = phi i64 [ %add23, %for.body ], [ %div, %for.cond.preheader ]
  %bytes.0124 = phi i64 [ %add27, %for.body ], [ 0, %for.cond.preheader ]
  %5 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2401, !tbaa !1519
  %stat = getelementptr inbounds %struct.exe_disk_file_t* %5, i64 %i.0125, i32 2, !dbg !2402
  %6 = load %struct.stat64** %stat, align 8, !dbg !2402, !tbaa !1522
  %st_ino = getelementptr inbounds %struct.stat64* %6, i64 0, i32 1, !dbg !2402
  %7 = load i64* %st_ino, align 8, !dbg !2402, !tbaa !1524
  %d_ino = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 0, !dbg !2402
  store i64 %7, i64* %d_ino, align 8, !dbg !2402, !tbaa !2403
  %d_reclen = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 2, !dbg !2406
  store i16 280, i16* %d_reclen, align 2, !dbg !2406, !tbaa !2407
  %st_mode = getelementptr inbounds %struct.stat64* %6, i64 0, i32 3, !dbg !2408
  %8 = load i32* %st_mode, align 4, !dbg !2408, !tbaa !1598
  %int_cast_to_i641 = zext i32 12 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2408
  %and = lshr i32 %8, 12, !dbg !2408
  %and.tr = trunc i32 %and to i8, !dbg !2408
  %conv18 = and i8 %and.tr, 15, !dbg !2408
  %d_type = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 3, !dbg !2408
  store i8 %conv18, i8* %d_type, align 1, !dbg !2408, !tbaa !2409
  %add = add nsw i64 %i.0125, 65, !dbg !2410
  %conv19 = trunc i64 %add to i8, !dbg !2410
  %arrayidx20 = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 4, i64 0, !dbg !2410
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !2410, !tbaa !1507
  %arrayidx22 = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 4, i64 1, !dbg !2411
  store i8 0, i8* %arrayidx22, align 1, !dbg !2411, !tbaa !1507
  %add23 = add nsw i64 %i.0125, 1, !dbg !2412
  %mul24 = mul i64 %add23, 280, !dbg !2412
  %d_off = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 0, i32 1, !dbg !2412
  store i64 %mul24, i64* %d_off, align 8, !dbg !2412, !tbaa !2413
  %add27 = add nsw i64 %bytes.0124, 280, !dbg !2414
  %incdec.ptr = getelementptr inbounds %struct.dirent64* %dirp.addr.0126, i64 1, !dbg !2415
  %9 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2397, !tbaa !1513
  %conv14 = zext i32 %9 to i64, !dbg !2397
  %cmp15 = icmp slt i64 %add23, %conv14, !dbg !2397
  br i1 %cmp15, label %for.body, label %for.end, !dbg !2397

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %dirp.addr.0.lcssa = phi %struct.dirent64* [ %dirp, %for.cond.preheader ], [ %incdec.ptr, %for.body ]
  %bytes.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add27, %for.body ]
  %cmp28 = icmp ult i32 %count, 4096, !dbg !2416
  %10 = zext i32 %count to i64, !dbg !2416
  %conv30 = select i1 %cmp28, i64 %10, i64 4096, !dbg !2416
  %d_ino31 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 0, !dbg !2417
  store i64 0, i64* %d_ino31, align 8, !dbg !2417, !tbaa !2403
  %sub = sub nsw i64 %conv30, %bytes.0.lcssa, !dbg !2418
  %conv32 = trunc i64 %sub to i16, !dbg !2418
  %d_reclen33 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 2, !dbg !2418
  store i16 %conv32, i16* %d_reclen33, align 2, !dbg !2418, !tbaa !2407
  %d_type34 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 3, !dbg !2419
  store i8 0, i8* %d_type34, align 1, !dbg !2419, !tbaa !2409
  %arrayidx36 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 4, i64 0, !dbg !2420
  store i8 0, i8* %arrayidx36, align 1, !dbg !2420, !tbaa !1507
  %d_off37 = getelementptr inbounds %struct.dirent64* %dirp.addr.0.lcssa, i64 0, i32 1, !dbg !2421
  store i64 4096, i64* %d_off37, align 8, !dbg !2421, !tbaa !2413
  %conv39 = and i64 %sub, 65535, !dbg !2422
  %add40 = add nsw i64 %conv39, %bytes.0.lcssa, !dbg !2422
  store i64 %conv30, i64* %off, align 8, !dbg !2423, !tbaa !1866
  %conv42 = trunc i64 %add40 to i32, !dbg !2424
  br label %return, !dbg !2424

if.else43:                                        ; preds = %if.else
  %sub45 = add nsw i64 %3, -4096, !dbg !2425
  %11 = bitcast %struct.dirent64* %dirp to i8*, !dbg !2426
  %conv46 = zext i32 %count to i64, !dbg !2426
  %12 = call i8* @memset(i8* %11, i32 0, i64 %conv46)
  %fd47 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2427
  %13 = load i32* %fd47, align 8, !dbg !2427, !tbaa !1634
  %call48 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %13, i64 %sub45, i32 0) #2, !dbg !2427
  %cmp49 = icmp eq i64 %call48, -1, !dbg !2428
  br i1 %cmp49, label %cond.false52, label %cond.end53, !dbg !2428

cond.false52:                                     ; preds = %if.else43
  tail call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 875, i8* getelementptr inbounds ([65 x i8]
  unreachable, !dbg !2428

cond.end53:                                       ; preds = %if.else43
  %14 = load i32* %fd47, align 8, !dbg !2429, !tbaa !1634
  %call55 = tail call i64 (i64, ...)* @syscall(i64 217, i32 %14, %struct.dirent64* %dirp, i32 %count) #2, !dbg !2429
  %conv56 = trunc i64 %call55 to i32, !dbg !2429
  %cmp57 = icmp eq i32 %conv56, -1, !dbg !2430
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !2430

if.then59:                                        ; preds = %cond.end53
  %call60 = tail call i32 @klee_get_errno() #2, !dbg !2431
  %call61 = tail call i32* @__errno_location() #1, !dbg !2431
  store i32 %call60, i32* %call61, align 4, !dbg !2431, !tbaa !1554
  br label %return, !dbg !2433

if.else62:                                        ; preds = %cond.end53
  %15 = load i32* %fd47, align 8, !dbg !2434, !tbaa !1634
  %call64 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %15, i32 0, i32 1) #2, !dbg !2434
  %add65 = add nsw i64 %call64, 4096, !dbg !2434
  store i64 %add65, i64* %off, align 8, !dbg !2434, !tbaa !1866
  %cmp67128 = icmp sgt i32 %conv56, 0, !dbg !2435
  br i1 %cmp67128, label %while.body, label %return, !dbg !2435

while.body:                                       ; preds = %while.body, %if.else62
  %pos.0129 = phi i32 [ %add73, %while.body ], [ 0, %if.else62 ]
  %idx.ext = sext i32 %pos.0129 to i64, !dbg !2436
  %add.ptr.sum = add i64 %idx.ext, 8, !dbg !2437
  %d_off69 = getelementptr inbounds i8* %11, i64 %add.ptr.sum, !dbg !2437
  %16 = bitcast i8* %d_off69 to i64*, !dbg !2437
  %17 = load i64* %16, align 8, !dbg !2437, !tbaa !2413
  %add70 = add nsw i64 %17, 4096, !dbg !2437
  store i64 %add70, i64* %16, align 8, !dbg !2437, !tbaa !2413
  %add.ptr.sum120 = add i64 %idx.ext, 16, !dbg !2438
  %d_reclen71 = getelementptr inbounds i8* %11, i64 %add.ptr.sum120, !dbg !2438
  %18 = bitcast i8* %d_reclen71 to i16*, !dbg !2438
  %19 = load i16* %18, align 2, !dbg !2438, !tbaa !2407
  %conv72 = zext i16 %19 to i32, !dbg !2438
  %add73 = add nsw i32 %conv72, %pos.0129, !dbg !2438
  %cmp67 = icmp slt i32 %add73, %conv56, !dbg !2435
  br i1 %cmp67, label %while.body, label %return, !dbg !2435

return:                                           ; preds = %while.body, %if.else62, %if.then59, %for.end, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then11 ], [ %conv42, %for.end ], [ -1, %if.then ], [ -1, %if.then59 ], [ %conv56, %if.else62 ], [ %conv56, %while.body ]
  ret i32 %retval.0, !dbg !2439
}

; Function Attrs: nounwind uwtable
define i32 @ioctl(i32 %fd, i64 %request, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !2440
  br i1 %0, label %if.then.i, label %if.then, !dbg !2440

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2442
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2443
  %1 = load i32* %flags.i, align 4, !dbg !2443, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2443
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2443
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2443

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2442
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2444
  br i1 %tobool, label %if.then, label %if.end, !dbg !2444

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2446
  store i32 9, i32* %call1, align 4, !dbg !2446, !tbaa !1554
  br label %return, !dbg !2448

if.end:                                           ; preds = %__get_file.exit
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2449
  call void @llvm.va_start(i8* %arraydecay2), !dbg !2449
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2450
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2450
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2450
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2450

vaarg.in_reg:                                     ; preds = %if.end
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2450
  %reg_save_area = load i8** %2, align 16, !dbg !2450
  %3 = sext i32 %gp_offset to i64, !dbg !2450
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !2450
  %5 = add i32 %gp_offset, 8, !dbg !2450
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !2450
  br label %vaarg.end, !dbg !2450

vaarg.in_mem:                                     ; preds = %if.end
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2450
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2450
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2450
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2450
  br label %vaarg.end, !dbg !2450

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !2450
  %6 = load i8** %vaarg.addr, align 8, !dbg !2450
  call void @llvm.va_end(i8* %arraydecay2), !dbg !2451
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2452
  %7 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2452, !tbaa !1584
  %tobool6 = icmp eq %struct.exe_disk_file_t* %7, null, !dbg !2452
  br i1 %tobool6, label %if.else103, label %if.then7, !dbg !2452

if.then7:                                         ; preds = %vaarg.end
  %stat9 = getelementptr inbounds %struct.exe_disk_file_t* %7, i64 0, i32 2, !dbg !2453
  %8 = load %struct.stat64** %stat9, align 8, !dbg !2453, !tbaa !1522
  switch i64 %request, label %sw.default [
    i64 21505, label %sw.bb
    i64 21506, label %sw.bb48
    i64 21507, label %sw.bb55
    i64 21508, label %sw.bb60
    i64 21523, label %sw.bb67
    i64 21524, label %sw.bb74
    i64 21531, label %sw.bb82
    i64 2150657282, label %sw.bb100
  ], !dbg !2454

sw.bb:                                            ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !2455
  %9 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2456
  %10 = load i32* %9, align 4, !dbg !2456, !tbaa !2458
  %and = and i32 %10, 61440, !dbg !2456
  %cmp = icmp eq i32 %and, 8192, !dbg !2456
  br i1 %cmp, label %if.then10, label %if.else, !dbg !2456

if.then10:                                        ; preds = %sw.bb
  %c_iflag = bitcast i8* %6 to i32*, !dbg !2460
  store i32 27906, i32* %c_iflag, align 4, !dbg !2460, !tbaa !2462
  %c_oflag = getelementptr inbounds i8* %6, i64 4, !dbg !2464
  %11 = bitcast i8* %c_oflag to i32*, !dbg !2464
  store i32 5, i32* %11, align 4, !dbg !2464, !tbaa !2465
  %c_cflag = getelementptr inbounds i8* %6, i64 8, !dbg !2466
  %12 = bitcast i8* %c_cflag to i32*, !dbg !2466
  store i32 1215, i32* %12, align 4, !dbg !2466, !tbaa !2467
  %c_lflag = getelementptr inbounds i8* %6, i64 12, !dbg !2468
  %13 = bitcast i8* %c_lflag to i32*, !dbg !2468
  store i32 35287, i32* %13, align 4, !dbg !2468, !tbaa !2469
  %14 = getelementptr inbounds i8* %6, i64 16, !dbg !2470
  store i8 0, i8* %14, align 1, !dbg !2470, !tbaa !2471
  %c_cc = getelementptr inbounds i8* %6, i64 17, !dbg !2472
  store i8 3, i8* %c_cc, align 1, !dbg !2472, !tbaa !1507
  %arrayidx12 = getelementptr inbounds i8* %6, i64 18, !dbg !2473
  store i8 28, i8* %arrayidx12, align 1, !dbg !2473, !tbaa !1507
  %arrayidx14 = getelementptr inbounds i8* %6, i64 19, !dbg !2474
  store i8 127, i8* %arrayidx14, align 1, !dbg !2474, !tbaa !1507
  %arrayidx16 = getelementptr inbounds i8* %6, i64 20, !dbg !2475
  store i8 21, i8* %arrayidx16, align 1, !dbg !2475, !tbaa !1507
  %arrayidx18 = getelementptr inbounds i8* %6, i64 21, !dbg !2476
  store i8 4, i8* %arrayidx18, align 1, !dbg !2476, !tbaa !1507
  %arrayidx20 = getelementptr inbounds i8* %6, i64 22, !dbg !2477
  store i8 0, i8* %arrayidx20, align 1, !dbg !2477, !tbaa !1507
  %arrayidx22 = getelementptr inbounds i8* %6, i64 23, !dbg !2478
  store i8 1, i8* %arrayidx22, align 1, !dbg !2478, !tbaa !1507
  %arrayidx24 = getelementptr inbounds i8* %6, i64 24, !dbg !2479
  store i8 -1, i8* %arrayidx24, align 1, !dbg !2479, !tbaa !1507
  %arrayidx26 = getelementptr inbounds i8* %6, i64 25, !dbg !2480
  store i8 17, i8* %arrayidx26, align 1, !dbg !2480, !tbaa !1507
  %arrayidx28 = getelementptr inbounds i8* %6, i64 26, !dbg !2481
  store i8 19, i8* %arrayidx28, align 1, !dbg !2481, !tbaa !1507
  %arrayidx30 = getelementptr inbounds i8* %6, i64 27, !dbg !2482
  store i8 26, i8* %arrayidx30, align 1, !dbg !2482, !tbaa !1507
  %arrayidx32 = getelementptr inbounds i8* %6, i64 28, !dbg !2483
  store i8 -1, i8* %arrayidx32, align 1, !dbg !2483, !tbaa !1507
  %arrayidx34 = getelementptr inbounds i8* %6, i64 29, !dbg !2484
  store i8 18, i8* %arrayidx34, align 1, !dbg !2484, !tbaa !1507
  %arrayidx36 = getelementptr inbounds i8* %6, i64 30, !dbg !2485
  store i8 15, i8* %arrayidx36, align 1, !dbg !2485, !tbaa !1507
  %arrayidx38 = getelementptr inbounds i8* %6, i64 31, !dbg !2486
  store i8 23, i8* %arrayidx38, align 1, !dbg !2486, !tbaa !1507
  %arrayidx40 = getelementptr inbounds i8* %6, i64 32, !dbg !2487
  store i8 22, i8* %arrayidx40, align 1, !dbg !2487, !tbaa !1507
  %arrayidx42 = getelementptr inbounds i8* %6, i64 33, !dbg !2488
  store i8 -1, i8* %arrayidx42, align 1, !dbg !2488, !tbaa !1507
  %arrayidx44 = getelementptr inbounds i8* %6, i64 34, !dbg !2489
  store i8 0, i8* %arrayidx44, align 1, !dbg !2489, !tbaa !1507
  %arrayidx46 = getelementptr inbounds i8* %6, i64 35, !dbg !2490
  store i8 0, i8* %arrayidx46, align 1, !dbg !2490, !tbaa !1507
  br label %return, !dbg !2491

if.else:                                          ; preds = %sw.bb
  %call47 = call i32* @__errno_location() #1, !dbg !2492
  store i32 25, i32* %call47, align 4, !dbg !2492, !tbaa !1554
  br label %return, !dbg !2494

sw.bb48:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0)) #2, !dbg !2495
  %15 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2497
  %16 = load i32* %15, align 4, !dbg !2497, !tbaa !2458
  %and50 = and i32 %16, 61440, !dbg !2497
  %cmp51 = icmp eq i32 %and50, 8192, !dbg !2497
  br i1 %cmp51, label %return, label %if.else53, !dbg !2497

if.else53:                                        ; preds = %sw.bb48
  %call54 = call i32* @__errno_location() #1, !dbg !2499
  store i32 25, i32* %call54, align 4, !dbg !2499, !tbaa !1554
  br label %return, !dbg !2501

sw.bb55:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0)) #2, !dbg !2502
  %cmp56 = icmp eq i32 %fd, 0, !dbg !2504
  br i1 %cmp56, label %return, label %if.else58, !dbg !2504

if.else58:                                        ; preds = %sw.bb55
  %call59 = call i32* @__errno_location() #1, !dbg !2506
  store i32 25, i32* %call59, align 4, !dbg !2506, !tbaa !1554
  br label %return, !dbg !2508

sw.bb60:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str16, i64 0, i64 0)) #2, !dbg !2509
  %17 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2511
  %18 = load i32* %17, align 4, !dbg !2511, !tbaa !2458
  %and62 = and i32 %18, 61440, !dbg !2511
  %cmp63 = icmp eq i32 %and62, 8192, !dbg !2511
  br i1 %cmp63, label %return, label %if.else65, !dbg !2511

if.else65:                                        ; preds = %sw.bb60
  %call66 = call i32* @__errno_location() #1, !dbg !2513
  store i32 25, i32* %call66, align 4, !dbg !2513, !tbaa !1554
  br label %return, !dbg !2515

sw.bb67:                                          ; preds = %if.then7
  %ws_row = bitcast i8* %6 to i16*, !dbg !2516
  store i16 24, i16* %ws_row, align 2, !dbg !2516, !tbaa !2517
  %ws_col = getelementptr inbounds i8* %6, i64 2, !dbg !2519
  %19 = bitcast i8* %ws_col to i16*, !dbg !2519
  store i16 80, i16* %19, align 2, !dbg !2519, !tbaa !2520
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str17, i64 0, i64 0)) #2, !dbg !2521
  %20 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2522
  %21 = load i32* %20, align 4, !dbg !2522, !tbaa !2458
  %and69 = and i32 %21, 61440, !dbg !2522
  %cmp70 = icmp eq i32 %and69, 8192, !dbg !2522
  br i1 %cmp70, label %return, label %if.else72, !dbg !2522

if.else72:                                        ; preds = %sw.bb67
  %call73 = call i32* @__errno_location() #1, !dbg !2524
  store i32 25, i32* %call73, align 4, !dbg !2524, !tbaa !1554
  br label %return, !dbg !2526

sw.bb74:                                          ; preds = %if.then7
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0)) #2, !dbg !2527
  %22 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2529
  %23 = load i32* %22, align 4, !dbg !2529, !tbaa !2458
  %and76 = and i32 %23, 61440, !dbg !2529
  %cmp77 = icmp eq i32 %and76, 8192, !dbg !2529
  %call79 = call i32* @__errno_location() #1, !dbg !2531
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !2529

if.then78:                                        ; preds = %sw.bb74
  store i32 22, i32* %call79, align 4, !dbg !2531, !tbaa !1554
  br label %return, !dbg !2533

if.else80:                                        ; preds = %sw.bb74
  store i32 25, i32* %call79, align 4, !dbg !2534, !tbaa !1554
  br label %return, !dbg !2536

sw.bb82:                                          ; preds = %if.then7
  %24 = bitcast i8* %6 to i32*, !dbg !2537
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str19, i64 0, i64 0)) #2, !dbg !2538
  %25 = getelementptr inbounds %struct.stat64* %8, i64 0, i32 3, !dbg !2539
  %26 = load i32* %25, align 4, !dbg !2539, !tbaa !2458
  %and84 = and i32 %26, 61440, !dbg !2539
  %cmp85 = icmp eq i32 %and84, 8192, !dbg !2539
  br i1 %cmp85, label %if.then86, label %if.else98, !dbg !2539

if.then86:                                        ; preds = %sw.bb82
  %off = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 2, !dbg !2541
  %27 = load i64* %off, align 8, !dbg !2541, !tbaa !1866
  %28 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2541, !tbaa !1584
  %size = getelementptr inbounds %struct.exe_disk_file_t* %28, i64 0, i32 0, !dbg !2541
  %29 = load i32* %size, align 4, !dbg !2541, !tbaa !1880
  %conv = zext i32 %29 to i64, !dbg !2541
  %cmp88 = icmp sgt i64 %conv, %27, !dbg !2541
  br i1 %cmp88, label %if.then90, label %if.end97, !dbg !2541

if.then90:                                        ; preds = %if.then86
  %sub = sub nsw i64 %conv, %27, !dbg !2544
  %conv95 = trunc i64 %sub to i32, !dbg !2544
  br label %if.end97, !dbg !2546

if.end97:                                         ; preds = %if.then90, %if.then86
  %storemerge = phi i32 [ %conv95, %if.then90 ], [ 0, %if.then86 ]
  store i32 %storemerge, i32* %24, align 4, !dbg !2544, !tbaa !1554
  br label %return, !dbg !2547

if.else98:                                        ; preds = %sw.bb82
  %call99 = call i32* @__errno_location() #1, !dbg !2548
  store i32 25, i32* %call99, align 4, !dbg !2548, !tbaa !1554
  br label %return, !dbg !2550

sw.bb100:                                         ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str20, i64 0, i64 0)) #2, !dbg !2551
  %call101 = call i32* @__errno_location() #1, !dbg !2553
  store i32 22, i32* %call101, align 4, !dbg !2553, !tbaa !1554
  br label %return, !dbg !2554

sw.default:                                       ; preds = %if.then7
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str114, i64 0, i64 0)) #2, !dbg !2555
  %call102 = call i32* @__errno_location() #1, !dbg !2556
  store i32 22, i32* %call102, align 4, !dbg !2556, !tbaa !1554
  br label %return, !dbg !2557

if.else103:                                       ; preds = %vaarg.end
  %fd104 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2558
  %30 = load i32* %fd104, align 8, !dbg !2558, !tbaa !1634
  %call105 = call i64 (i64, ...)* @syscall(i64 16, i32 %30, i64 %request, i8* %6) #2, !dbg !2558
  %conv106 = trunc i64 %call105 to i32, !dbg !2558
  %cmp107 = icmp eq i32 %conv106, -1, !dbg !2559
  br i1 %cmp107, label %if.then109, label %return, !dbg !2559

if.then109:                                       ; preds = %if.else103
  %call110 = call i32 @klee_get_errno() #2, !dbg !2561
  %call111 = call i32* @__errno_location() #1, !dbg !2561
  store i32 %call110, i32* %call111, align 4, !dbg !2561, !tbaa !1554
  br label %return, !dbg !2561

return:                                           ; preds = %if.then109, %if.else103, %sw.default, %sw.bb100, %if.else98, %if.end97, %if.else80, %if.then78, %if.else72, %sw.bb67, %if.else65, %sw.bb60, %if.else58, %sw.bb55, %if.else53, %sw.bb48, %if.else,
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %sw.bb100 ], [ 0, %if.end97 ], [ -1, %if.else98 ], [ -1, %if.then78 ], [ -1, %if.else80 ], [ -1, %if.else72 ], [ -1, %if.else65 ], [ -1, %if.else58 ], [ -1, %if.else53 ], [ 0, %if.then10 ], [ -1, %if.else 
  ret i32 %retval.0, !dbg !2562
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare void @klee_warning_once(i8*) #8

; Function Attrs: nounwind uwtable
define i32 @fcntl(i32 %fd, i32 %cmd, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = icmp ult i32 %fd, 32, !dbg !2563
  br i1 %0, label %if.then.i, label %if.then, !dbg !2563

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2565
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2566
  %1 = load i32* %flags.i, align 4, !dbg !2566, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2566
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2566
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2566

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2565
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2567
  br i1 %tobool, label %if.then, label %if.end, !dbg !2567

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2569
  store i32 9, i32* %call1, align 4, !dbg !2569, !tbaa !1554
  br label %return, !dbg !2571

if.end:                                           ; preds = %__get_file.exit
  switch i32 %cmd, label %if.else [
    i32 1026, label %if.end16
    i32 1025, label %if.end16
    i32 11, label %if.end16
    i32 9, label %if.end16
    i32 3, label %if.end16
    i32 1, label %if.end16
  ], !dbg !2572

if.else:                                          ; preds = %if.end
  %arraydecay12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2574
  call void @llvm.va_start(i8* %arraydecay12), !dbg !2574
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2576
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2576
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2576
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2576

vaarg.in_reg:                                     ; preds = %if.else
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2576
  %reg_save_area = load i8** %2, align 16, !dbg !2576
  %3 = sext i32 %gp_offset to i64, !dbg !2576
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !2576
  %5 = add i32 %gp_offset, 8, !dbg !2576
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !2576
  br label %vaarg.end, !dbg !2576

vaarg.in_mem:                                     ; preds = %if.else
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2576
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2576
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2576
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2576
  br label %vaarg.end, !dbg !2576

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2576
  %6 = load i32* %vaarg.addr, align 4, !dbg !2576
  call void @llvm.va_end(i8* %arraydecay12), !dbg !2577
  br label %if.end16

if.end16:                                         ; preds = %vaarg.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arg.0 = phi i32 [ %6, %vaarg.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ]
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2578
  %7 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2578, !tbaa !1584
  %tobool17 = icmp eq %struct.exe_disk_file_t* %7, null, !dbg !2578
  br i1 %tobool17, label %if.else34, label %if.then18, !dbg !2578

if.then18:                                        ; preds = %if.end16
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %return
  ], !dbg !2579

sw.bb:                                            ; preds = %if.then18
  %8 = load i32* %flags.i, align 4, !dbg !2580, !tbaa !1565
  %int_cast_to_i64 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2580
  %and = lshr i32 %8, 1, !dbg !2580
  %and.lobit = and i32 %and, 1, !dbg !2580
  br label %return, !dbg !2582

sw.bb23:                                          ; preds = %if.then18
  %9 = load i32* %flags.i, align 4, !dbg !2583, !tbaa !1565
  %and25 = and i32 %9, -3, !dbg !2583
  %and26 = and i32 %arg.0, 1, !dbg !2585
  %tobool27 = icmp eq i32 %and26, 0, !dbg !2585
  %or30 = or i32 %9, 2, !dbg !2587
  %and25.or30 = select i1 %tobool27, i32 %and25, i32 %or30, !dbg !2585
  store i32 %and25.or30, i32* %flags.i, align 4, !dbg !2583, !tbaa !1565
  br label %return, !dbg !2588

sw.default:                                       ; preds = %if.then18
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str114, i64 0, i64 0)) #2, !dbg !2589
  %call33 = call i32* @__errno_location() #1, !dbg !2590
  store i32 22, i32* %call33, align 4, !dbg !2590, !tbaa !1554
  br label %return, !dbg !2591

if.else34:                                        ; preds = %if.end16
  %fd35 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2592
  %10 = load i32* %fd35, align 8, !dbg !2592, !tbaa !1634
  %call36 = call i64 (i64, ...)* @syscall(i64 72, i32 %10, i32 %cmd, i32 %arg.0) #2, !dbg !2592
  %conv = trunc i64 %call36 to i32, !dbg !2592
  %cmp37 = icmp eq i32 %conv, -1, !dbg !2593
  br i1 %cmp37, label %if.then39, label %return, !dbg !2593

if.then39:                                        ; preds = %if.else34
  %call40 = call i32 @klee_get_errno() #2, !dbg !2595
  %call41 = call i32* @__errno_location() #1, !dbg !2595
  store i32 %call40, i32* %call41, align 4, !dbg !2595, !tbaa !1554
  br label %return, !dbg !2595

return:                                           ; preds = %if.then39, %if.else34, %sw.default, %sw.bb23, %sw.bb, %if.then18, %if.then
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb23 ], [ %and.lobit, %sw.bb ], [ -1, %if.then ], [ 0, %if.then18 ], [ -1, %if.then39 ], [ %conv, %if.else34 ]
  ret i32 %retval.0, !dbg !2596
}

; Function Attrs: nounwind uwtable
define i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2597, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2599
  %cmp.i = icmp eq i8 %0, 0, !dbg !2599
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2599

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2599
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2599, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2599
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2599

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2600, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2600
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2600

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2600
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2600

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2601
  %sext.i = shl i32 %i.027.i, 24, !dbg !2601
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2601
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2601
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2601
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2601
  %inc.i = add i32 %i.027.i, 1, !dbg !2600
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2601

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2602
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2602, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2603
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2603, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2603
  %5 = load i64* %st_ino.i, align 8, !dbg !2603, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2603
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2602
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2604
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2603
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2603

if.then:                                          ; preds = %if.then13.i
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !2606
  %call1 = tail call i32* @__errno_location() #1, !dbg !2608
  store i32 2, i32* %call1, align 4, !dbg !2608, !tbaa !1554
  br label %return, !dbg !2609

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %6 = ptrtoint i8* %path to i64, !dbg !2610
  %call.i.i = tail call i64 @klee_get_valuel(i64 %6) #2, !dbg !2610
  %7 = inttoptr i64 %call.i.i to i8*, !dbg !2610
  %cmp.i.i = icmp eq i8* %7, %path, !dbg !2613
  %conv1.i.i = zext i1 %cmp.i.i to i64, !dbg !2613
  tail call void @klee_assume(i64 %conv1.i.i) #2, !dbg !2613
  br label %for.cond.i11, !dbg !2614

for.cond.i11:                                     ; preds = %for.inc.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i13, %for.inc.i ]
  %sc.0.i = phi i8* [ %7, %if.end ], [ %sc.1.i, %for.inc.i ]
  %8 = load i8* %sc.0.i, align 1, !dbg !2615, !tbaa !1507
  %sub.i = add i32 %i.0.i, -1, !dbg !2616
  %and.i = and i32 %sub.i, %i.0.i, !dbg !2616
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2616
  br i1 %tobool.i, label %if.then.i, label %if.else7.i, !dbg !2616

if.then.i:                                        ; preds = %for.cond.i11
  switch i8 %8, label %for.inc.i [
    i8 0, label %if.then2.i
    i8 47, label %if.then4.i
  ], !dbg !2617

if.then2.i:                                       ; preds = %if.then.i
  store i8 0, i8* %sc.0.i, align 1, !dbg !2618, !tbaa !1507
  br label %__concretize_string.exit, !dbg !2619

if.then4.i:                                       ; preds = %if.then.i
  %incdec.ptr5.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2620
  store i8 47, i8* %sc.0.i, align 1, !dbg !2620, !tbaa !1507
  br label %for.inc.i, !dbg !2621

if.else7.i:                                       ; preds = %for.cond.i11
  %conv8.i = sext i8 %8 to i64, !dbg !2622
  %call9.i = tail call i64 @klee_get_valuel(i64 %conv8.i) #2, !dbg !2622
  %conv10.i12 = trunc i64 %call9.i to i8, !dbg !2622
  %cmp13.i = icmp eq i8 %conv10.i12, %8, !dbg !2623
  %conv15.i = zext i1 %cmp13.i to i64, !dbg !2623
  tail call void @klee_assume(i64 %conv15.i) #2, !dbg !2623
  %incdec.ptr16.i = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !2624
  store i8 %conv10.i12, i8* %sc.0.i, align 1, !dbg !2624, !tbaa !1507
  %tobool17.i = icmp eq i8 %conv10.i12, 0, !dbg !2625
  br i1 %tobool17.i, label %__concretize_string.exit, label %for.inc.i, !dbg !2625

for.inc.i:                                        ; preds = %if.else7.i, %if.then4.i, %if.then.i
  %sc.1.i = phi i8* [ %incdec.ptr16.i, %if.else7.i ], [ %incdec.ptr5.i, %if.then4.i ], [ %sc.0.i, %if.then.i ]
  %inc.i13 = add i32 %i.0.i, 1, !dbg !2614
  br label %for.cond.i11, !dbg !2614

__concretize_string.exit:                         ; preds = %if.else7.i, %if.then2.i
  %call3 = tail call i64 (i64, ...)* @syscall(i64 137, i8* %path, %struct.statfs* %buf) #2, !dbg !2612
  %conv = trunc i64 %call3 to i32, !dbg !2612
  %cmp = icmp eq i32 %conv, -1, !dbg !2626
  br i1 %cmp, label %if.then5, label %return, !dbg !2626

if.then5:                                         ; preds = %__concretize_string.exit
  %call6 = tail call i32 @klee_get_errno() #2, !dbg !2628
  %call7 = tail call i32* @__errno_location() #1, !dbg !2628
  store i32 %call6, i32* %call7, align 4, !dbg !2628, !tbaa !1554
  br label %return, !dbg !2628

return:                                           ; preds = %if.then5, %__concretize_string.exit, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ %conv, %__concretize_string.exit ]
  ret i32 %retval.0, !dbg !2629
}

; Function Attrs: nounwind uwtable
define i32 @fstatfs(i32 %fd, %struct.statfs* %buf) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2630
  br i1 %0, label %if.then.i, label %if.then, !dbg !2630

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2632
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2633
  %1 = load i32* %flags.i, align 4, !dbg !2633, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2633
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2633
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2633

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2632
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2634
  br i1 %tobool, label %if.then, label %if.end, !dbg !2634

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2636
  store i32 9, i32* %call1, align 4, !dbg !2636, !tbaa !1554
  br label %return, !dbg !2638

if.end:                                           ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2639
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2639, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2639
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2639

if.then3:                                         ; preds = %if.end
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str21, i64 0, i64 0)) #2, !dbg !2640
  %call4 = tail call i32* @__errno_location() #1, !dbg !2642
  store i32 9, i32* %call4, align 4, !dbg !2642, !tbaa !1554
  br label %return, !dbg !2643

if.else:                                          ; preds = %if.end
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2644
  %3 = load i32* %fd5, align 8, !dbg !2644, !tbaa !1634
  %call6 = tail call i64 (i64, ...)* @syscall(i64 138, i32 %3, %struct.statfs* %buf) #2, !dbg !2644
  %conv = trunc i64 %call6 to i32, !dbg !2644
  %cmp = icmp eq i32 %conv, -1, !dbg !2645
  br i1 %cmp, label %if.then8, label %return, !dbg !2645

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @klee_get_errno() #2, !dbg !2647
  %call10 = tail call i32* @__errno_location() #1, !dbg !2647
  store i32 %call9, i32* %call10, align 4, !dbg !2647, !tbaa !1554
  br label %return, !dbg !2647

return:                                           ; preds = %if.then8, %if.else, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then ], [ -1, %if.then8 ], [ %conv, %if.else ]
  ret i32 %retval.0, !dbg !2648
}

; Function Attrs: nounwind uwtable
define i32 @fsync(i32 %fd) #6 {
entry:
  %0 = icmp ult i32 %fd, 32, !dbg !2649
  br i1 %0, label %if.then.i, label %if.then, !dbg !2649

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %fd to i64, !dbg !2651
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2652
  %1 = load i32* %flags.i, align 4, !dbg !2652, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2652
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2652
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2652

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2651
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2653
  br i1 %tobool, label %if.then, label %if.else, !dbg !2653

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2654
  store i32 9, i32* %call1, align 4, !dbg !2654, !tbaa !1554
  br label %return, !dbg !2656

if.else:                                          ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 3, !dbg !2657
  %2 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2657, !tbaa !1584
  %tobool2 = icmp eq %struct.exe_disk_file_t* %2, null, !dbg !2657
  br i1 %tobool2, label %if.else4, label %return, !dbg !2657

if.else4:                                         ; preds = %if.else
  %fd5 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2658
  %3 = load i32* %fd5, align 8, !dbg !2658, !tbaa !1634
  %call6 = tail call i64 (i64, ...)* @syscall(i64 74, i32 %3) #2, !dbg !2658
  %conv = trunc i64 %call6 to i32, !dbg !2658
  %cmp = icmp eq i32 %conv, -1, !dbg !2659
  br i1 %cmp, label %if.then8, label %return, !dbg !2659

if.then8:                                         ; preds = %if.else4
  %call9 = tail call i32 @klee_get_errno() #2, !dbg !2661
  %call10 = tail call i32* @__errno_location() #1, !dbg !2661
  store i32 %call9, i32* %call10, align 4, !dbg !2661, !tbaa !1554
  br label %return, !dbg !2661

return:                                           ; preds = %if.then8, %if.else4, %if.else, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.else ], [ -1, %if.then8 ], [ %conv, %if.else4 ]
  ret i32 %retval.0, !dbg !2662
}

; Function Attrs: nounwind uwtable
define i32 @dup2(i32 %oldfd, i32 %newfd) #6 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !2663
  br i1 %0, label %if.then.i, label %if.then, !dbg !2663

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !2665
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2666
  %1 = load i32* %flags.i, align 4, !dbg !2666, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2666
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2666
  br i1 %tobool.i, label %if.then, label %__get_file.exit, !dbg !2666

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2665
  %tobool = icmp ne %struct.exe_file_t* %arrayidx.i, null, !dbg !2667
  %cmp = icmp sgt i32 %newfd, -1, !dbg !2667
  %or.cond = and i1 %tobool, %cmp, !dbg !2667
  %cmp1 = icmp slt i32 %newfd, 32, !dbg !2667
  %or.cond8 = and i1 %or.cond, %cmp1, !dbg !2667
  br i1 %or.cond8, label %if.else, label %if.then, !dbg !2667

if.then:                                          ; preds = %__get_file.exit, %if.then.i, %entry
  %call2 = tail call i32* @__errno_location() #1, !dbg !2668
  store i32 9, i32* %call2, align 4, !dbg !2668, !tbaa !1554
  br label %return, !dbg !2670

if.else:                                          ; preds = %__get_file.exit
  %idxprom = sext i32 %newfd to i64, !dbg !2671
  %arrayidx = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, !dbg !2671
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom, i32 1, !dbg !2672
  %2 = load i32* %flags, align 4, !dbg !2672, !tbaa !1565
  %and = and i32 %2, 1, !dbg !2672
  %tobool3 = icmp eq i32 %and, 0, !dbg !2672
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2672

if.then4:                                         ; preds = %if.else
  %3 = load i32* @close.n_calls, align 4, !dbg !2674, !tbaa !1554
  %inc.i = add nsw i32 %3, 1, !dbg !2674
  store i32 %inc.i, i32* @close.n_calls, align 4, !dbg !2674, !tbaa !1554
  %4 = icmp ugt i32 %newfd, 31, !dbg !2675
  %tobool.i16 = icmp eq %struct.exe_file_t* %arrayidx, null, !dbg !2677
  %or.cond25 = or i1 %4, %tobool.i16, !dbg !2675
  br i1 %or.cond25, label %if.then.i17, label %if.end.i, !dbg !2675

if.then.i17:                                      ; preds = %if.then4
  %call1.i = tail call i32* @__errno_location() #1, !dbg !2678
  store i32 9, i32* %call1.i, align 4, !dbg !2678, !tbaa !1554
  br label %if.end, !dbg !2679

if.end.i:                                         ; preds = %if.then4
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2680, !tbaa !1821
  %tobool2.i = icmp eq i32 %5, 0, !dbg !2680
  br i1 %tobool2.i, label %if.end5.i, label %land.lhs.true.i, !dbg !2680

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !2680, !tbaa !1822
  %7 = load i32* %6, align 4, !dbg !2680, !tbaa !1554
  %cmp.i = icmp eq i32 %7, %inc.i, !dbg !2680
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i, !dbg !2680

if.then3.i:                                       ; preds = %land.lhs.true.i
  %dec.i = add i32 %5, -1, !dbg !2681
  store i32 %dec.i, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2681, !tbaa !1821
  %call4.i = tail call i32* @__errno_location() #1, !dbg !2682
  store i32 5, i32* %call4.i, align 4, !dbg !2682, !tbaa !1554
  br label %if.end, !dbg !2683

if.end5.i:                                        ; preds = %land.lhs.true.i, %if.end.i
  %8 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !2684
  %9 = call i8* @memset(i8* %8, i32 0, i64 24)
  br label %if.end, !dbg !2685

if.end:                                           ; preds = %if.end5.i, %if.then3.i, %if.then.i17, %if.else
  %10 = bitcast %struct.exe_file_t* %arrayidx to i8*, !dbg !2686
  %11 = bitcast %struct.exe_file_t* %arrayidx.i to i8*, !dbg !2686
  %12 = call i8* @memcpy(i8* %10, i8* %11, i64 24)
  %13 = load i32* %flags, align 4, !dbg !2687, !tbaa !1565
  %and7 = and i32 %13, -3, !dbg !2687
  store i32 %and7, i32* %flags, align 4, !dbg !2687, !tbaa !1565
  br label %return, !dbg !2688

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %newfd, %if.end ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2689
}

; Function Attrs: nounwind uwtable
define i32 @dup(i32 %oldfd) #6 {
entry:
  %0 = icmp ult i32 %oldfd, 32, !dbg !2690
  br i1 %0, label %if.then.i, label %if.then, !dbg !2690

if.then.i:                                        ; preds = %entry
  %idxprom.i = sext i32 %oldfd to i64, !dbg !2692
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, i32 1, !dbg !2693
  %1 = load i32* %flags.i, align 4, !dbg !2693, !tbaa !1565
  %and.i = and i32 %1, 1, !dbg !2693
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2693
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %idxprom.i, !dbg !2692
  %tobool = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2694
  %or.cond = or i1 %tobool.i, %tobool, !dbg !2693
  br i1 %or.cond, label %if.then, label %for.body, !dbg !2693

if.then:                                          ; preds = %if.then.i, %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !2695
  store i32 9, i32* %call1, align 4, !dbg !2695, !tbaa !1554
  br label %return, !dbg !2697

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !2698
  %cmp = icmp slt i32 %2, 32, !dbg !2698
  br i1 %cmp, label %for.body, label %for.end, !dbg !2698

for.body:                                         ; preds = %for.cond, %if.then.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then.i ]
  %fd.015 = phi i32 [ %inc, %for.cond ], [ 0, %if.then.i ]
  %flags = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2700
  %3 = load i32* %flags, align 4, !dbg !2700, !tbaa !1565
  %and = and i32 %3, 1, !dbg !2700
  %tobool2 = icmp eq i32 %and, 0, !dbg !2700
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2698
  %inc = add nsw i32 %fd.015, 1, !dbg !2698
  br i1 %tobool2, label %for.end, label %for.cond, !dbg !2700

for.end:                                          ; preds = %for.body, %for.cond
  %fd.0.lcssa = phi i32 [ %fd.015, %for.body ], [ %inc, %for.cond ]
  %cmp4 = icmp eq i32 %fd.0.lcssa, 32, !dbg !2702
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !2702

if.then5:                                         ; preds = %for.end
  %call6 = tail call i32* @__errno_location() #1, !dbg !2704
  store i32 24, i32* %call6, align 4, !dbg !2704, !tbaa !1554
  br label %return, !dbg !2706

if.else7:                                         ; preds = %for.end
  %call8 = tail call i32 @dup2(i32 %oldfd, i32 %fd.0.lcssa) #2, !dbg !2707
  br label %return, !dbg !2707

return:                                           ; preds = %if.else7, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %call8, %if.else7 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2709
}

; Function Attrs: nounwind uwtable
define i32 @rmdir(i8* nocapture readonly %pathname) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2710, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2712
  %cmp.i = icmp eq i8 %0, 0, !dbg !2712
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2712

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2712
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2712, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2712
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2712

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2713, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2713
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2713

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2713
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2713

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2714
  %sext.i = shl i32 %i.027.i, 24, !dbg !2714
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2714
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2714
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2714
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2714
  %inc.i = add i32 %i.027.i, 1, !dbg !2713
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2714

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2715
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2715, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2716
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2716, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2716
  %5 = load i64* %st_ino.i, align 8, !dbg !2716, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2716
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2715
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2717
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2716
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2716

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !2719
  %6 = load i32* %st_mode, align 4, !dbg !2719, !tbaa !1598
  %and = and i32 %6, 61440, !dbg !2719
  %cmp = icmp eq i32 %and, 16384, !dbg !2719
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2719

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2722, !tbaa !1524
  br label %return, !dbg !2724

if.else:                                          ; preds = %if.then
  %call3 = tail call i32* @__errno_location() #1, !dbg !2725
  store i32 20, i32* %call3, align 4, !dbg !2725, !tbaa !1554
  br label %return, !dbg !2727

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str225, i64 0, i64 0)) #2, !dbg !2728
  %call4 = tail call i32* @__errno_location() #1, !dbg !2729
  store i32 1, i32* %call4, align 4, !dbg !2729, !tbaa !1554
  br label %return, !dbg !2730

return:                                           ; preds = %if.end, %if.else, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2731
}

; Function Attrs: nounwind uwtable
define i32 @unlink(i8* nocapture readonly %pathname) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2732, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2734
  %cmp.i = icmp eq i8 %0, 0, !dbg !2734
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2734

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2734
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2734, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2734
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2734

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2735, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2735
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2735

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2735
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2735

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2736
  %sext.i = shl i32 %i.027.i, 24, !dbg !2736
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2736
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2736
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2736
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2736
  %inc.i = add i32 %i.027.i, 1, !dbg !2735
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2736

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2737
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2737, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2738
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2738, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2738
  %5 = load i64* %st_ino.i, align 8, !dbg !2738, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2738
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2737
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2739
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2738
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2738

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !2741
  %6 = load i32* %st_mode, align 4, !dbg !2741, !tbaa !1598
  %and = and i32 %6, 61440, !dbg !2741
  %cmp = icmp eq i32 %and, 32768, !dbg !2741
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2741

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2744, !tbaa !1524
  br label %return, !dbg !2746

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !2747
  %call8 = tail call i32* @__errno_location() #1, !dbg !2749
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !2747

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !2749, !tbaa !1554
  br label %return, !dbg !2751

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !2752, !tbaa !1554
  br label %return, !dbg !2754

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str225, i64 0, i64 0)) #2, !dbg !2755
  %call11 = tail call i32* @__errno_location() #1, !dbg !2756
  store i32 1, i32* %call11, align 4, !dbg !2756, !tbaa !1554
  br label %return, !dbg !2757

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2758
}

; Function Attrs: nounwind uwtable
define i32 @unlinkat(i32 %dirfd, i8* nocapture readonly %pathname, i32 %flags) #6 {
entry:
  %0 = load i8* %pathname, align 1, !dbg !2759, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2761
  %cmp.i = icmp eq i8 %0, 0, !dbg !2761
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !dbg !2761

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %pathname, i64 1, !dbg !2761
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2761, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2761
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.end, !dbg !2761

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2762, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2762
  br i1 %cmp626.i, label %if.end, label %for.body.i, !dbg !2762

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2762
  br i1 %cmp6.i, label %for.body.i, label %if.end, !dbg !2762

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2763
  %sext.i = shl i32 %i.027.i, 24, !dbg !2763
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2763
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2763
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2763
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2763
  %inc.i = add i32 %i.027.i, 1, !dbg !2762
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2763

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2764
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2764, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2765
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2765, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2765
  %5 = load i64* %st_ino.i, align 8, !dbg !2765, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2765
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2764
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2766
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2765
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2765

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !2768
  %6 = load i32* %st_mode, align 4, !dbg !2768, !tbaa !1598
  %and = and i32 %6, 61440, !dbg !2768
  %cmp = icmp eq i32 %and, 32768, !dbg !2768
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2768

if.then1:                                         ; preds = %if.then
  store i64 0, i64* %st_ino.i, align 8, !dbg !2771, !tbaa !1524
  br label %return, !dbg !2773

if.else:                                          ; preds = %if.then
  %cmp6 = icmp eq i32 %and, 16384, !dbg !2774
  %call8 = tail call i32* @__errno_location() #1, !dbg !2776
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !2774

if.then7:                                         ; preds = %if.else
  store i32 21, i32* %call8, align 4, !dbg !2776, !tbaa !1554
  br label %return, !dbg !2778

if.else9:                                         ; preds = %if.else
  store i32 1, i32* %call8, align 4, !dbg !2779, !tbaa !1554
  br label %return, !dbg !2781

if.end:                                           ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str225, i64 0, i64 0)) #2, !dbg !2782
  %call11 = tail call i32* @__errno_location() #1, !dbg !2783
  store i32 1, i32* %call11, align 4, !dbg !2783, !tbaa !1554
  br label %return, !dbg !2784

return:                                           ; preds = %if.end, %if.else9, %if.then7, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -1, %if.then7 ], [ -1, %if.else9 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2785
}

; Function Attrs: nounwind uwtable
define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2786, !tbaa !1507
  %conv.i = sext i8 %0 to i32, !dbg !2788
  %cmp.i = icmp eq i8 %0, 0, !dbg !2788
  br i1 %cmp.i, label %if.else20, label %lor.lhs.false.i, !dbg !2788

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds i8* %path, i64 1, !dbg !2788
  %1 = load i8* %arrayidx2.i, align 1, !dbg !2788, !tbaa !1507
  %cmp4.i = icmp eq i8 %1, 0, !dbg !2788
  br i1 %cmp4.i, label %for.cond.preheader.i, label %if.else20, !dbg !2788

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !2789, !tbaa !1513
  %cmp626.i = icmp eq i32 %2, 0, !dbg !2789
  br i1 %cmp626.i, label %if.else20, label %for.body.i, !dbg !2789

for.cond.i:                                       ; preds = %for.body.i
  %cmp6.i = icmp ult i32 %inc.i, %2, !dbg !2789
  br i1 %cmp6.i, label %for.body.i, label %if.else20, !dbg !2789

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %i.027.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2790
  %sext.i = shl i32 %i.027.i, 24, !dbg !2790
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2790
  %conv10.i = ashr exact i32 %sext.i, 24, !dbg !2790
  %add.i = add nsw i32 %conv10.i, 65, !dbg !2790
  %cmp11.i = icmp eq i32 %conv.i, %add.i, !dbg !2790
  %inc.i = add i32 %i.027.i, 1, !dbg !2789
  br i1 %cmp11.i, label %if.then13.i, label %for.cond.i, !dbg !2790

if.then13.i:                                      ; preds = %for.body.i
  %idxprom.i = zext i32 %i.027.i to i64, !dbg !2791
  %3 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !2791, !tbaa !1519
  %stat.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, i32 2, !dbg !2792
  %4 = load %struct.stat64** %stat.i, align 8, !dbg !2792, !tbaa !1522
  %st_ino.i = getelementptr inbounds %struct.stat64* %4, i64 0, i32 1, !dbg !2792
  %5 = load i64* %st_ino.i, align 8, !dbg !2792, !tbaa !1524
  %cmp15.i = icmp eq i64 %5, 0, !dbg !2792
  %arrayidx14.i = getelementptr inbounds %struct.exe_disk_file_t* %3, i64 %idxprom.i, !dbg !2791
  %tobool = icmp eq %struct.exe_disk_file_t* %arrayidx14.i, null, !dbg !2793
  %or.cond = or i1 %cmp15.i, %tobool, !dbg !2792
  br i1 %or.cond, label %if.else20, label %if.then, !dbg !2792

if.then:                                          ; preds = %if.then13.i
  %st_mode = getelementptr inbounds %struct.stat64* %4, i64 0, i32 3, !dbg !2794
  %6 = load i32* %st_mode, align 4, !dbg !2794, !tbaa !1598
  %and = and i32 %6, 61440, !dbg !2794
  %cmp = icmp eq i32 %and, 40960, !dbg !2794
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2794

if.then1:                                         ; preds = %if.then
  store i8 %0, i8* %buf, align 1, !dbg !2797, !tbaa !1507
  %cmp3 = icmp ugt i64 %bufsize, 1, !dbg !2799
  br i1 %cmp3, label %if.end, label %if.end17, !dbg !2799

if.end:                                           ; preds = %if.then1
  %arrayidx5 = getelementptr inbounds i8* %buf, i64 1, !dbg !2799
  store i8 46, i8* %arrayidx5, align 1, !dbg !2799, !tbaa !1507
  %cmp6 = icmp ugt i64 %bufsize, 2, !dbg !2801
  br i1 %cmp6, label %if.end9, label %if.end17, !dbg !2801

if.end9:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8* %buf, i64 2, !dbg !2801
  store i8 108, i8* %arrayidx8, align 1, !dbg !2801, !tbaa !1507
  %cmp10 = icmp ugt i64 %bufsize, 3, !dbg !2803
  br i1 %cmp10, label %if.end13, label %if.end17, !dbg !2803

if.end13:                                         ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds i8* %buf, i64 3, !dbg !2803
  store i8 110, i8* %arrayidx12, align 1, !dbg !2803, !tbaa !1507
  %cmp14 = icmp ugt i64 %bufsize, 4, !dbg !2805
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !2805

if.then15:                                        ; preds = %if.end13
  %arrayidx16 = getelementptr inbounds i8* %buf, i64 4, !dbg !2805
  store i8 107, i8* %arrayidx16, align 1, !dbg !2805, !tbaa !1507
  br label %if.end17, !dbg !2805

if.end17:                                         ; preds = %if.then15, %if.end13, %if.end9, %if.end, %if.then1
  %cmp18 = icmp ugt i64 %bufsize, 5, !dbg !2807
  %cond = select i1 %cmp18, i64 5, i64 %bufsize, !dbg !2807
  br label %return, !dbg !2807

if.else:                                          ; preds = %if.then
  %call19 = tail call i32* @__errno_location() #1, !dbg !2808
  store i32 22, i32* %call19, align 4, !dbg !2808, !tbaa !1554
  br label %return, !dbg !2810

if.else20:                                        ; preds = %if.then13.i, %for.cond.i, %for.cond.preheader.i, %lor.lhs.false.i, %entry
  %call21 = tail call i64 (i64, ...)* @syscall(i64 89, i8* %path, i8* %buf, i64 %bufsize) #2, !dbg !2811
  %conv = trunc i64 %call21 to i32, !dbg !2811
  %cmp22 = icmp eq i32 %conv, -1, !dbg !2812
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !2812

if.then24:                                        ; preds = %if.else20
  %call25 = tail call i32 @klee_get_errno() #2, !dbg !2814
  %call26 = tail call i32* @__errno_location() #1, !dbg !2814
  store i32 %call25, i32* %call26, align 4, !dbg !2814, !tbaa !1554
  br label %if.end27, !dbg !2814

if.end27:                                         ; preds = %if.then24, %if.else20
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !2815
  %sext = shl i64 %call21, 32, !dbg !2815
  %int_cast_to_i643 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i643), !dbg !2815
  %conv28 = ashr exact i64 %sext, 32, !dbg !2815
  br label %return, !dbg !2815

return:                                           ; preds = %if.end27, %if.else, %if.end17
  %retval.0 = phi i64 [ %cond, %if.end17 ], [ -1, %if.else ], [ %conv28, %if.end27 ]
  ret i64 %retval.0, !dbg !2816
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
  %0 = bitcast %struct.fd_set* %in_read to i8*, !dbg !2817
  %1 = bitcast %struct.fd_set* %in_write to i8*, !dbg !2817
  %2 = bitcast %struct.fd_set* %in_except to i8*, !dbg !2817
  %3 = bitcast %struct.fd_set* %os_read to i8*, !dbg !2817
  %4 = bitcast %struct.fd_set* %os_write to i8*, !dbg !2817
  %5 = bitcast %struct.fd_set* %os_except to i8*, !dbg !2817
  %tobool = icmp ne %struct.fd_set* %read, null, !dbg !2818
  br i1 %tobool, label %if.then, label %if.else, !dbg !2818

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.fd_set* %read to i8*, !dbg !2820
  %7 = call i8* @memcpy(i8* %0, i8* %6, i64 128)
  %8 = call i8* @memset(i8* %6, i32 0, i64 128)
  br label %if.end, !dbg !2822

if.else:                                          ; preds = %entry
  %9 = call i8* @memset(i8* %0, i32 0, i64 128)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool1 = icmp ne %struct.fd_set* %write, null, !dbg !2823
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !2823

if.then2:                                         ; preds = %if.end
  %10 = bitcast %struct.fd_set* %write to i8*, !dbg !2825
  %11 = call i8* @memcpy(i8* %1, i8* %10, i64 128)
  %12 = call i8* @memset(i8* %10, i32 0, i64 128)
  br label %if.end4, !dbg !2827

if.else3:                                         ; preds = %if.end
  %13 = call i8* @memset(i8* %1, i32 0, i64 128)
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %tobool5 = icmp ne %struct.fd_set* %except, null, !dbg !2828
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !2828

if.then6:                                         ; preds = %if.end4
  %14 = bitcast %struct.fd_set* %except to i8*, !dbg !2830
  %15 = call i8* @memcpy(i8* %2, i8* %14, i64 128)
  %16 = call i8* @memset(i8* %14, i32 0, i64 128)
  br label %if.end8, !dbg !2832

if.else7:                                         ; preds = %if.end4
  %17 = call i8* @memset(i8* %2, i32 0, i64 128)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  %18 = call i8* @memset(i8* %3, i32 0, i64 128)
  %19 = call i8* @memset(i8* %4, i32 0, i64 128)
  %20 = call i8* @memset(i8* %5, i32 0, i64 128)
  %cmp367 = icmp sgt i32 %nfds, 0, !dbg !2833
  br i1 %cmp367, label %for.body, label %cleanup, !dbg !2833

for.body:                                         ; preds = %for.inc, %if.end8
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %for.inc ], [ 0, %if.end8 ]
  %count.0369 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end8 ]
  %os_nfds.0368 = phi i32 [ %os_nfds.1, %for.inc ], [ 0, %if.end8 ]
  %21 = trunc i64 %indvars.iv373 to i32, !dbg !2834
  %int_cast_to_i64 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2834
  %div = sdiv i32 %21, 64, !dbg !2834
  %idxprom = sext i32 %div to i64, !dbg !2834
  %arrayidx = getelementptr inbounds %struct.fd_set* %in_read, i64 0, i32 0, i64 %idxprom, !dbg !2834
  %22 = load i64* %arrayidx, align 8, !dbg !2834, !tbaa !2835
  %rem347 = and i32 %21, 63, !dbg !2834
  %int_cast_to_i6410 = zext i32 %rem347 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6410), !dbg !2834
  %shl = shl i32 1, %rem347, !dbg !2834
  %conv = sext i32 %shl to i64, !dbg !2834
  %and = and i64 %22, %conv, !dbg !2834
  %tobool9 = icmp eq i64 %and, 0, !dbg !2834
  br i1 %tobool9, label %lor.lhs.false, label %if.then29, !dbg !2834

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx13 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2834
  %23 = load i64* %arrayidx13, align 8, !dbg !2834, !tbaa !2835
  %and17 = and i64 %23, %conv, !dbg !2834
  %tobool18 = icmp eq i64 %and17, 0, !dbg !2834
  br i1 %tobool18, label %lor.lhs.false19, label %if.then29, !dbg !2834

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %arrayidx23 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2834
  %24 = load i64* %arrayidx23, align 8, !dbg !2834, !tbaa !2835
  %and27 = and i64 %24, %conv, !dbg !2834
  %tobool28 = icmp eq i64 %and27, 0, !dbg !2834
  br i1 %tobool28, label %for.inc, label %if.then29, !dbg !2834

if.then29:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %for.body
  %25 = icmp ult i32 %21, 32, !dbg !2836
  br i1 %25, label %if.then.i, label %if.then31, !dbg !2836

if.then.i:                                        ; preds = %if.then29
  %flags.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 1, !dbg !2838
  %26 = load i32* %flags.i, align 4, !dbg !2838, !tbaa !1565
  %and.i = and i32 %26, 1, !dbg !2838
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !2838
  br i1 %tobool.i, label %if.then31, label %__get_file.exit, !dbg !2838

__get_file.exit:                                  ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, !dbg !2839
  %tobool30 = icmp eq %struct.exe_file_t* %arrayidx.i, null, !dbg !2840
  br i1 %tobool30, label %if.then31, label %if.else33, !dbg !2840

if.then31:                                        ; preds = %__get_file.exit, %if.then.i, %if.then29
  %call32 = call i32* @__errno_location() #1, !dbg !2842
  store i32 9, i32* %call32, align 4, !dbg !2842, !tbaa !1554
  br label %cleanup, !dbg !2844

if.else33:                                        ; preds = %__get_file.exit
  %dfile = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv373, i32 3, !dbg !2845
  %27 = load %struct.exe_disk_file_t** %dfile, align 8, !dbg !2845, !tbaa !1584
  %tobool34 = icmp eq %struct.exe_disk_file_t* %27, null, !dbg !2845
  %tobool44 = icmp ne i64 %and, 0, !dbg !2847
  br i1 %tobool34, label %if.else92, label %if.then35, !dbg !2845

if.then35:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then45, label %if.end53, !dbg !2847

if.then45:                                        ; preds = %if.then35
  %arrayidx52 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom, !dbg !2847
  %28 = load i64* %arrayidx52, align 8, !dbg !2847, !tbaa !2835
  %or = or i64 %28, %conv, !dbg !2847
  store i64 %or, i64* %arrayidx52, align 8, !dbg !2847, !tbaa !2835
  br label %if.end53, !dbg !2847

if.end53:                                         ; preds = %if.then45, %if.then35
  %arrayidx57 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2850
  %29 = load i64* %arrayidx57, align 8, !dbg !2850, !tbaa !2835
  %and61 = and i64 %29, %conv, !dbg !2850
  %tobool62 = icmp eq i64 %and61, 0, !dbg !2850
  br i1 %tobool62, label %if.end72, label %if.then63, !dbg !2850

if.then63:                                        ; preds = %if.end53
  %arrayidx70 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom, !dbg !2850
  %30 = load i64* %arrayidx70, align 8, !dbg !2850, !tbaa !2835
  %or71 = or i64 %30, %conv, !dbg !2850
  store i64 %or71, i64* %arrayidx70, align 8, !dbg !2850, !tbaa !2835
  br label %if.end72, !dbg !2850

if.end72:                                         ; preds = %if.then63, %if.end53
  %arrayidx76 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2852
  %31 = load i64* %arrayidx76, align 8, !dbg !2852, !tbaa !2835
  %and80 = and i64 %31, %conv, !dbg !2852
  %tobool81 = icmp eq i64 %and80, 0, !dbg !2852
  br i1 %tobool81, label %if.end91, label %if.then82, !dbg !2852

if.then82:                                        ; preds = %if.end72
  %arrayidx89 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom, !dbg !2852
  %32 = load i64* %arrayidx89, align 8, !dbg !2852, !tbaa !2835
  %or90 = or i64 %32, %conv, !dbg !2852
  store i64 %or90, i64* %arrayidx89, align 8, !dbg !2852, !tbaa !2835
  br label %if.end91, !dbg !2852

if.end91:                                         ; preds = %if.then82, %if.end72
  %inc = add nsw i32 %count.0369, 1, !dbg !2854
  br label %for.inc, !dbg !2855

if.else92:                                        ; preds = %if.else33
  br i1 %tobool44, label %if.then102, label %if.end112, !dbg !2856

if.then102:                                       ; preds = %if.else92
  %fd = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2856
  %33 = load i32* %fd, align 8, !dbg !2856, !tbaa !1634
  %rem103350 = and i32 %33, 63, !dbg !2856
  %int_cast_to_i6411 = zext i32 %rem103350 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6411), !dbg !2856
  %shl104 = shl i32 1, %rem103350, !dbg !2856
  %conv105 = sext i32 %shl104 to i64, !dbg !2856
  %int_cast_to_i641 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2856
  %div107 = sdiv i32 %33, 64, !dbg !2856
  %idxprom108 = sext i32 %div107 to i64, !dbg !2856
  %arrayidx110 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom108, !dbg !2856
  %34 = load i64* %arrayidx110, align 8, !dbg !2856, !tbaa !2835
  %or111 = or i64 %conv105, %34, !dbg !2856
  store i64 %or111, i64* %arrayidx110, align 8, !dbg !2856, !tbaa !2835
  br label %if.end112, !dbg !2856

if.end112:                                        ; preds = %if.then102, %if.else92
  %arrayidx116 = getelementptr inbounds %struct.fd_set* %in_write, i64 0, i32 0, i64 %idxprom, !dbg !2859
  %35 = load i64* %arrayidx116, align 8, !dbg !2859, !tbaa !2835
  %and120 = and i64 %35, %conv, !dbg !2859
  %tobool121 = icmp eq i64 %and120, 0, !dbg !2859
  br i1 %tobool121, label %if.end133, label %if.then122, !dbg !2859

if.then122:                                       ; preds = %if.end112
  %fd123 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0, !dbg !2859
  %36 = load i32* %fd123, align 8, !dbg !2859, !tbaa !1634
  %rem124349 = and i32 %36, 63, !dbg !2859
  %int_cast_to_i6412 = zext i32 %rem124349 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6412), !dbg !2859
  %shl125 = shl i32 1, %rem124349, !dbg !2859
  %conv126 = sext i32 %shl125 to i64, !dbg !2859
  %int_cast_to_i642 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !2859
  %div128 = sdiv i32 %36, 64, !dbg !2859
  %idxprom129 = sext i32 %div128 to i64, !dbg !2859
  %arrayidx131 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom129, !dbg !2859
  %37 = load i64* %arrayidx131, align 8, !dbg !2859, !tbaa !2835
  %or132 = or i64 %conv126, %37, !dbg !2859
  store i64 %or132, i64* %arrayidx131, align 8, !dbg !2859, !tbaa !2835
  br label %if.end133, !dbg !2859

if.end133:                                        ; preds = %if.then122, %if.end112
  %arrayidx137 = getelementptr inbounds %struct.fd_set* %in_except, i64 0, i32 0, i64 %idxprom, !dbg !2861
  %38 = load i64* %arrayidx137, align 8, !dbg !2861, !tbaa !2835
  %and141 = and i64 %38, %conv, !dbg !2861
  %tobool142 = icmp eq i64 %and141, 0, !dbg !2861
  %fd155.phi.trans.insert = getelementptr inbounds %struct.exe_file_t* %arrayidx.i, i64 0, i32 0
  %.pre = load i32* %fd155.phi.trans.insert, align 8, !dbg !2863, !tbaa !1634
  br i1 %tobool142, label %if.end154, label %if.then143, !dbg !2861

if.then143:                                       ; preds = %if.end133
  %rem145348 = and i32 %.pre, 63, !dbg !2861
  %int_cast_to_i6413 = zext i32 %rem145348 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6413), !dbg !2861
  %shl146 = shl i32 1, %rem145348, !dbg !2861
  %conv147 = sext i32 %shl146 to i64, !dbg !2861
  %int_cast_to_i643 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !2861
  %div149 = sdiv i32 %.pre, 64, !dbg !2861
  %idxprom150 = sext i32 %div149 to i64, !dbg !2861
  %arrayidx152 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom150, !dbg !2861
  %39 = load i64* %arrayidx152, align 8, !dbg !2861, !tbaa !2835
  %or153 = or i64 %conv147, %39, !dbg !2861
  store i64 %or153, i64* %arrayidx152, align 8, !dbg !2861, !tbaa !2835
  br label %if.end154, !dbg !2861

if.end154:                                        ; preds = %if.then143, %if.end133
  %cmp156 = icmp slt i32 %.pre, %os_nfds.0368, !dbg !2863
  %add = add nsw i32 %.pre, 1, !dbg !2863
  %os_nfds.0.add = select i1 %cmp156, i32 %os_nfds.0368, i32 %add, !dbg !2863
  br label %for.inc, !dbg !2863

for.inc:                                          ; preds = %if.end154, %if.end91, %lor.lhs.false19
  %os_nfds.1 = phi i32 [ %os_nfds.0368, %if.end91 ], [ %os_nfds.0368, %lor.lhs.false19 ], [ %os_nfds.0.add, %if.end154 ]
  %count.1 = phi i32 [ %inc, %if.end91 ], [ %count.0369, %lor.lhs.false19 ], [ %count.0369, %if.end154 ]
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1, !dbg !2833
  %40 = trunc i64 %indvars.iv.next374 to i32, !dbg !2833
  %cmp = icmp slt i32 %40, %nfds, !dbg !2833
  br i1 %cmp, label %for.body, label %for.end, !dbg !2833

for.end:                                          ; preds = %for.inc
  %cmp165 = icmp sgt i32 %os_nfds.1, 0, !dbg !2865
  br i1 %cmp165, label %if.then167, label %cleanup, !dbg !2865

if.then167:                                       ; preds = %for.end
  %41 = bitcast %struct.timeval* %tv to i8*, !dbg !2866
  %42 = call i8* @memset(i8* %41, i32 0, i64 16)
  %call168 = call i64 (i64, ...)* @syscall(i64 23, i32 %os_nfds.1, %struct.fd_set* %os_read, %struct.fd_set* %os_write, %struct.fd_set* %os_except, %struct.timeval* %tv) #2, !dbg !2867
  %conv169 = trunc i64 %call168 to i32, !dbg !2867
  %cmp170 = icmp eq i32 %conv169, -1, !dbg !2868
  br i1 %cmp170, label %if.then172, label %if.else178, !dbg !2868

if.then172:                                       ; preds = %if.then167
  %tobool173 = icmp eq i32 %count.1, 0, !dbg !2869
  br i1 %tobool173, label %if.then174, label %cleanup, !dbg !2869

if.then174:                                       ; preds = %if.then172
  %call175 = call i32 @klee_get_errno() #2, !dbg !2872
  %call176 = call i32* @__errno_location() #1, !dbg !2872
  store i32 %call175, i32* %call176, align 4, !dbg !2872, !tbaa !1554
  br label %cleanup, !dbg !2874

if.else178:                                       ; preds = %if.then167
  %add179 = add nsw i32 %conv169, %count.1, !dbg !2875
  br i1 %cmp367, label %for.body183, label %cleanup, !dbg !2876

for.body183:                                      ; preds = %for.inc260, %if.else178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc260 ], [ 0, %if.else178 ]
  %43 = trunc i64 %indvars.iv to i32, !dbg !2877
  %44 = icmp ult i32 %43, 32, !dbg !2877
  br i1 %44, label %if.then.i355, label %for.inc260, !dbg !2877

if.then.i355:                                     ; preds = %for.body183
  %flags.i352 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !2879
  %45 = load i32* %flags.i352, align 4, !dbg !2879, !tbaa !1565
  %and.i353 = and i32 %45, 1, !dbg !2879
  %tobool.i354 = icmp eq i32 %and.i353, 0, !dbg !2879
  br i1 %tobool.i354, label %for.inc260, label %__get_file.exit359, !dbg !2879

__get_file.exit359:                               ; preds = %if.then.i355
  %arrayidx.i356 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, !dbg !2880
  %tobool186 = icmp eq %struct.exe_file_t* %arrayidx.i356, null, !dbg !2881
  br i1 %tobool186, label %for.inc260, label %land.lhs.true, !dbg !2881

land.lhs.true:                                    ; preds = %__get_file.exit359
  %dfile187 = getelementptr inbounds %struct.exe_sym_env_t* bitcast ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env to %struct.exe_sym_env_t*), i64 0, i32 0, i64 %indvars.iv, i32 3, !dbg !2881
  %46 = load %struct.exe_disk_file_t** %dfile187, align 8, !dbg !2881, !tbaa !1584
  %tobool188 = icmp eq %struct.exe_disk_file_t* %46, null, !dbg !2881
  br i1 %tobool188, label %if.then189, label %for.inc260, !dbg !2881

if.then189:                                       ; preds = %land.lhs.true
  br i1 %tobool, label %land.lhs.true191, label %if.end212, !dbg !2883

land.lhs.true191:                                 ; preds = %if.then189
  %fd192 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !2883
  %47 = load i32* %fd192, align 8, !dbg !2883, !tbaa !1634
  %int_cast_to_i644 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !2883
  %div193 = sdiv i32 %47, 64, !dbg !2883
  %idxprom194 = sext i32 %div193 to i64, !dbg !2883
  %arrayidx196 = getelementptr inbounds %struct.fd_set* %os_read, i64 0, i32 0, i64 %idxprom194, !dbg !2883
  %48 = load i64* %arrayidx196, align 8, !dbg !2883, !tbaa !2835
  %rem198345 = and i32 %47, 63, !dbg !2883
  %int_cast_to_i6414 = zext i32 %rem198345 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6414), !dbg !2883
  %shl199 = shl i32 1, %rem198345, !dbg !2883
  %conv200 = sext i32 %shl199 to i64, !dbg !2883
  %and201 = and i64 %conv200, %48, !dbg !2883
  %tobool202 = icmp eq i64 %and201, 0, !dbg !2883
  br i1 %tobool202, label %if.end212, label %if.then203, !dbg !2883

if.then203:                                       ; preds = %land.lhs.true191
  %rem204346 = and i32 %43, 63, !dbg !2883
  %int_cast_to_i6415 = zext i32 %rem204346 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6415), !dbg !2883
  %shl205 = shl i32 1, %rem204346, !dbg !2883
  %conv206 = sext i32 %shl205 to i64, !dbg !2883
  %int_cast_to_i645 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !2883
  %div207 = sdiv i32 %43, 64, !dbg !2883
  %idxprom208 = sext i32 %div207 to i64, !dbg !2883
  %arrayidx210 = getelementptr inbounds %struct.fd_set* %read, i64 0, i32 0, i64 %idxprom208, !dbg !2883
  %49 = load i64* %arrayidx210, align 8, !dbg !2883, !tbaa !2835
  %or211 = or i64 %49, %conv206, !dbg !2883
  store i64 %or211, i64* %arrayidx210, align 8, !dbg !2883, !tbaa !2835
  br label %if.end212, !dbg !2883

if.end212:                                        ; preds = %if.then203, %land.lhs.true191, %if.then189
  br i1 %tobool1, label %land.lhs.true214, label %if.end235, !dbg !2886

land.lhs.true214:                                 ; preds = %if.end212
  %fd215 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !2886
  %50 = load i32* %fd215, align 8, !dbg !2886, !tbaa !1634
  %int_cast_to_i646 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !2886
  %div216 = sdiv i32 %50, 64, !dbg !2886
  %idxprom217 = sext i32 %div216 to i64, !dbg !2886
  %arrayidx219 = getelementptr inbounds %struct.fd_set* %os_write, i64 0, i32 0, i64 %idxprom217, !dbg !2886
  %51 = load i64* %arrayidx219, align 8, !dbg !2886, !tbaa !2835
  %rem221343 = and i32 %50, 63, !dbg !2886
  %int_cast_to_i6416 = zext i32 %rem221343 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6416), !dbg !2886
  %shl222 = shl i32 1, %rem221343, !dbg !2886
  %conv223 = sext i32 %shl222 to i64, !dbg !2886
  %and224 = and i64 %conv223, %51, !dbg !2886
  %tobool225 = icmp eq i64 %and224, 0, !dbg !2886
  br i1 %tobool225, label %if.end235, label %if.then226, !dbg !2886

if.then226:                                       ; preds = %land.lhs.true214
  %rem227344 = and i32 %43, 63, !dbg !2886
  %int_cast_to_i6417 = zext i32 %rem227344 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6417), !dbg !2886
  %shl228 = shl i32 1, %rem227344, !dbg !2886
  %conv229 = sext i32 %shl228 to i64, !dbg !2886
  %int_cast_to_i647 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !2886
  %div230 = sdiv i32 %43, 64, !dbg !2886
  %idxprom231 = sext i32 %div230 to i64, !dbg !2886
  %arrayidx233 = getelementptr inbounds %struct.fd_set* %write, i64 0, i32 0, i64 %idxprom231, !dbg !2886
  %52 = load i64* %arrayidx233, align 8, !dbg !2886, !tbaa !2835
  %or234 = or i64 %52, %conv229, !dbg !2886
  store i64 %or234, i64* %arrayidx233, align 8, !dbg !2886, !tbaa !2835
  br label %if.end235, !dbg !2886

if.end235:                                        ; preds = %if.then226, %land.lhs.true214, %if.end212
  br i1 %tobool5, label %land.lhs.true237, label %for.inc260, !dbg !2888

land.lhs.true237:                                 ; preds = %if.end235
  %fd238 = getelementptr inbounds %struct.exe_file_t* %arrayidx.i356, i64 0, i32 0, !dbg !2888
  %53 = load i32* %fd238, align 8, !dbg !2888, !tbaa !1634
  %int_cast_to_i648 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !2888
  %div239 = sdiv i32 %53, 64, !dbg !2888
  %idxprom240 = sext i32 %div239 to i64, !dbg !2888
  %arrayidx242 = getelementptr inbounds %struct.fd_set* %os_except, i64 0, i32 0, i64 %idxprom240, !dbg !2888
  %54 = load i64* %arrayidx242, align 8, !dbg !2888, !tbaa !2835
  %rem244341 = and i32 %53, 63, !dbg !2888
  %int_cast_to_i6418 = zext i32 %rem244341 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6418), !dbg !2888
  %shl245 = shl i32 1, %rem244341, !dbg !2888
  %conv246 = sext i32 %shl245 to i64, !dbg !2888
  %and247 = and i64 %conv246, %54, !dbg !2888
  %tobool248 = icmp eq i64 %and247, 0, !dbg !2888
  br i1 %tobool248, label %for.inc260, label %if.then249, !dbg !2888

if.then249:                                       ; preds = %land.lhs.true237
  %rem250342 = and i32 %43, 63, !dbg !2888
  %int_cast_to_i6419 = zext i32 %rem250342 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6419), !dbg !2888
  %shl251 = shl i32 1, %rem250342, !dbg !2888
  %conv252 = sext i32 %shl251 to i64, !dbg !2888
  %int_cast_to_i649 = zext i32 64 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i649), !dbg !2888
  %div253 = sdiv i32 %43, 64, !dbg !2888
  %idxprom254 = sext i32 %div253 to i64, !dbg !2888
  %arrayidx256 = getelementptr inbounds %struct.fd_set* %except, i64 0, i32 0, i64 %idxprom254, !dbg !2888
  %55 = load i64* %arrayidx256, align 8, !dbg !2888, !tbaa !2835
  %or257 = or i64 %55, %conv252, !dbg !2888
  store i64 %or257, i64* %arrayidx256, align 8, !dbg !2888, !tbaa !2835
  br label %for.inc260, !dbg !2888

for.inc260:                                       ; preds = %if.then249, %land.lhs.true237, %if.end235, %land.lhs.true, %__get_file.exit359, %if.then.i355, %for.body183
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2876
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2876
  %exitcond = icmp eq i32 %lftr.wideiv, %nfds, !dbg !2876
  br i1 %exitcond, label %cleanup, label %for.body183, !dbg !2876

cleanup:                                          ; preds = %for.inc260, %if.else178, %if.then174, %if.then172, %for.end, %if.then31, %if.end8
  %retval.0 = phi i32 [ -1, %if.then31 ], [ -1, %if.then174 ], [ %count.1, %if.then172 ], [ %count.1, %for.end ], [ %add179, %if.else178 ], [ 0, %if.end8 ], [ %add179, %for.inc260 ]
  ret i32 %retval.0, !dbg !2890
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i8* @getcwd(i8* %buf, i64 %size) #6 {
entry:
  %0 = load i32* @getcwd.n_calls, align 4, !dbg !2891, !tbaa !1554
  %inc = add nsw i32 %0, 1, !dbg !2891
  store i32 %inc, i32* @getcwd.n_calls, align 4, !dbg !2891, !tbaa !1554
  %1 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2892, !tbaa !1821
  %tobool = icmp eq i32 %1, 0, !dbg !2892
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2892

land.lhs.true:                                    ; preds = %entry
  %2 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !2892, !tbaa !2894
  %3 = load i32* %2, align 4, !dbg !2892, !tbaa !1554
  %cmp = icmp eq i32 %3, %inc, !dbg !2892
  br i1 %cmp, label %if.then, label %if.end, !dbg !2892

if.then:                                          ; preds = %land.lhs.true
  %dec = add i32 %1, -1, !dbg !2895
  store i32 %dec, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !2895, !tbaa !1821
  %call = tail call i32* @__errno_location() #1, !dbg !2897
  store i32 34, i32* %call, align 4, !dbg !2897, !tbaa !1554
  br label %return, !dbg !2898

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool1 = icmp eq i8* %buf, null, !dbg !2899
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2899

if.then2:                                         ; preds = %if.end
  %tobool3 = icmp eq i64 %size, 0, !dbg !2901
  %.size = select i1 %tobool3, i64 1024, i64 %size, !dbg !2901
  %call6 = tail call noalias i8* @malloc(i64 %.size) #2, !dbg !2904
  br label %if.end7, !dbg !2905

if.end7:                                          ; preds = %if.then2, %if.end
  %buf.addr.0 = phi i8* [ %buf, %if.end ], [ %call6, %if.then2 ]
  %size.addr.1 = phi i64 [ %size, %if.end ], [ %.size, %if.then2 ]
  %4 = ptrtoint i8* %buf.addr.0 to i64, !dbg !2906
  %call.i = tail call i64 @klee_get_valuel(i64 %4) #2, !dbg !2906
  %5 = inttoptr i64 %call.i to i8*, !dbg !2906
  %cmp.i = icmp eq i8* %5, %buf.addr.0, !dbg !2908
  %conv1.i = zext i1 %cmp.i to i64, !dbg !2908
  tail call void @klee_assume(i64 %conv1.i) #2, !dbg !2908
  %call.i25 = tail call i64 @klee_get_valuel(i64 %size.addr.1) #2, !dbg !2909
  %cmp.i26 = icmp eq i64 %call.i25, %size.addr.1, !dbg !2911
  %conv1.i27 = zext i1 %cmp.i26 to i64, !dbg !2911
  tail call void @klee_assume(i64 %conv1.i27) #2, !dbg !2911
  tail call void @klee_check_memory_access(i8* %5, i64 %call.i25) #2, !dbg !2912
  %call10 = tail call i64 (i64, ...)* @syscall(i64 79, i8* %5, i64 %call.i25) #2, !dbg !2913
  %conv = trunc i64 %call10 to i32, !dbg !2913
  %cmp11 = icmp eq i32 %conv, -1, !dbg !2914
  br i1 %cmp11, label %if.then13, label %return, !dbg !2914

if.then13:                                        ; preds = %if.end7
  %call14 = tail call i32 @klee_get_errno() #2, !dbg !2916
  %call15 = tail call i32* @__errno_location() #1, !dbg !2916
  store i32 %call14, i32* %call15, align 4, !dbg !2916, !tbaa !1554
  br label %return, !dbg !2918

return:                                           ; preds = %if.then13, %if.end7, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then13 ], [ %5, %if.end7 ]
  ret i8* %retval.0, !dbg !2919
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #7

; Function Attrs: nounwind uwtable
define i32 @chroot(i8* nocapture readonly %path) #6 {
entry:
  %0 = load i8* %path, align 1, !dbg !2920, !tbaa !1507
  switch i8 %0, label %if.end11 [
    i8 0, label %if.then
    i8 47, label %land.lhs.true
  ], !dbg !2920

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #1, !dbg !2922
  store i32 2, i32* %call, align 4, !dbg !2922, !tbaa !1554
  br label %return, !dbg !2924

land.lhs.true:                                    ; preds = %entry
  %arrayidx6 = getelementptr inbounds i8* %path, i64 1, !dbg !2925
  %1 = load i8* %arrayidx6, align 1, !dbg !2925, !tbaa !1507
  %cmp8 = icmp eq i8 %1, 0, !dbg !2925
  br i1 %cmp8, label %return, label %if.end11, !dbg !2925

if.end11:                                         ; preds = %land.lhs.true, %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0)) #2, !dbg !2927
  %call12 = tail call i32* @__errno_location() #1, !dbg !2928
  store i32 2, i32* %call12, align 4, !dbg !2928, !tbaa !1554
  br label %return, !dbg !2929

return:                                           ; preds = %if.end11, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.end11 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !2930
}

declare i64 @klee_get_valuel(i64) #8

; Function Attrs: nounwind
declare i32 @geteuid() #7

; Function Attrs: nounwind
declare i32 @getgid() #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @open(i8* %pathname, i32 %flags, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %and = and i32 %flags, 64, !dbg !2931
  %tobool = icmp eq i32 %and, 0, !dbg !2931
  br i1 %tobool, label %if.end, label %if.then, !dbg !2931

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2932
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2932
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2933
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2933
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2933
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2933

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2933
  %reg_save_area = load i8** %0, align 16, !dbg !2933
  %1 = sext i32 %gp_offset to i64, !dbg !2933
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !2933
  %3 = add i32 %gp_offset, 8, !dbg !2933
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !2933
  br label %vaarg.end, !dbg !2933

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2933
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2933
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2933
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2933
  br label %vaarg.end, !dbg !2933

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2933
  %4 = load i32* %vaarg.addr, align 4, !dbg !2933
  call void @llvm.va_end(i8* %arraydecay1), !dbg !2934
  br label %if.end, !dbg !2935

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) #2, !dbg !2936
  ret i32 %call, !dbg !2936
}

; Function Attrs: nounwind uwtable
define i32 @openat(i32 %fd, i8* %pathname, i32 %flags, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %and = and i32 %flags, 64, !dbg !2937
  %tobool = icmp eq i32 %and, 0, !dbg !2937
  br i1 %tobool, label %if.end, label %if.then, !dbg !2937

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2938
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2938
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !2939
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !2939
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2939
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2939

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !2939
  %reg_save_area = load i8** %0, align 16, !dbg !2939
  %1 = sext i32 %gp_offset to i64, !dbg !2939
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !2939
  %3 = add i32 %gp_offset, 8, !dbg !2939
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !2939
  br label %vaarg.end, !dbg !2939

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !2939
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !2939
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !2939
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2939
  br label %vaarg.end, !dbg !2939

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2939
  %4 = load i32* %vaarg.addr, align 4, !dbg !2939
  call void @llvm.va_end(i8* %arraydecay1), !dbg !2940
  br label %if.end, !dbg !2941

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_openat(i32 %fd, i8* %pathname, i32 %flags, i32 %mode.0) #2, !dbg !2942
  ret i32 %call, !dbg !2942
}

; Function Attrs: nounwind uwtable
define i64 @lseek(i32 %fd, i64 %off, i32 %whence) #6 {
entry:
  %call = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) #2, !dbg !2943
  ret i64 %call, !dbg !2943
}

; Function Attrs: nounwind uwtable
define i32 @__xstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) #6 {
entry:
  %tmp = alloca %struct.stat64, align 16
  %0 = bitcast %struct.stat64* %tmp to i8*, !dbg !2944
  %call = call i32 @__fd_stat(i8* %path, %struct.stat64* %tmp) #2, !dbg !2945
  %1 = bitcast %struct.stat64* %tmp to <2 x i64>*, !dbg !2946
  %2 = load <2 x i64>* %1, align 16, !dbg !2946, !tbaa !2835
  %3 = bitcast %struct.stat* %buf to <2 x i64>*, !dbg !2946
  store <2 x i64> %2, <2 x i64>* %3, align 8, !dbg !2946, !tbaa !2835
  %st_mode.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 3, !dbg !2948
  %4 = bitcast i32* %st_mode.i to i64*, !dbg !2948
  %5 = load i64* %4, align 8, !dbg !2948
  %6 = trunc i64 %5 to i32, !dbg !2948
  %st_mode3.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !2948
  store i32 %6, i32* %st_mode3.i, align 4, !dbg !2948, !tbaa !2458
  %st_nlink.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 2, !dbg !2949
  %7 = load i64* %st_nlink.i, align 16, !dbg !2949, !tbaa !2950
  %st_nlink4.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !2949
  store i64 %7, i64* %st_nlink4.i, align 8, !dbg !2949, !tbaa !2951
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64)
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %st_uid5.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !2952
  store i32 %9, i32* %st_uid5.i, align 4, !dbg !2952, !tbaa !2953
  %st_gid.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 5, !dbg !2954
  %10 = load i32* %st_gid.i, align 16, !dbg !2954, !tbaa !2193
  %st_gid6.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !2954
  store i32 %10, i32* %st_gid6.i, align 4, !dbg !2954, !tbaa !2955
  %st_rdev.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 7, !dbg !2956
  %st_rdev7.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !2956
  %11 = bitcast i64* %st_rdev.i to <2 x i64>*, !dbg !2956
  %12 = load <2 x i64>* %11, align 8, !dbg !2956, !tbaa !2835
  %13 = bitcast i64* %st_rdev7.i to <2 x i64>*, !dbg !2956
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !2956, !tbaa !2835
  %tv_sec.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 11, i32 0, !dbg !2957
  %14 = load i64* %tv_sec.i, align 8, !dbg !2957, !tbaa !1736
  %tv_sec10.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !2957
  store i64 %14, i64* %tv_sec10.i, align 8, !dbg !2957, !tbaa !2958
  %tv_sec11.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 12, i32 0, !dbg !2959
  %15 = load i64* %tv_sec11.i, align 8, !dbg !2959, !tbaa !1738
  %tv_sec13.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !2959
  store i64 %15, i64* %tv_sec13.i, align 8, !dbg !2959, !tbaa !2960
  %tv_sec14.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 13, i32 0, !dbg !2961
  %16 = load i64* %tv_sec14.i, align 8, !dbg !2961, !tbaa !2962
  %tv_sec16.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !2961
  store i64 %16, i64* %tv_sec16.i, align 8, !dbg !2961, !tbaa !2963
  %st_blksize.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 9, !dbg !2964
  %st_blksize17.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !2964
  %17 = bitcast i64* %st_blksize.i to <2 x i64>*, !dbg !2964
  %18 = load <2 x i64>* %17, align 8, !dbg !2964, !tbaa !2835
  %19 = bitcast i64* %st_blksize17.i to <2 x i64>*, !dbg !2964
  store <2 x i64> %18, <2 x i64>* %19, align 8, !dbg !2964, !tbaa !2835
  ret i32 %call, !dbg !2965
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @stat(i8* %path, %struct.stat* nocapture %buf) #10 {
entry:
  %tmp = alloca %struct.stat64, align 16
  %0 = bitcast %struct.stat64* %tmp to i8*, !dbg !2966
  %call = call i32 @__fd_stat(i8* %path, %struct.stat64* %tmp) #2, !dbg !2967
  %1 = bitcast %struct.stat64* %tmp to <2 x i64>*, !dbg !2968
  %2 = load <2 x i64>* %1, align 16, !dbg !2968, !tbaa !2835
  %3 = bitcast %struct.stat* %buf to <2 x i64>*, !dbg !2968
  store <2 x i64> %2, <2 x i64>* %3, align 8, !dbg !2968, !tbaa !2835
  %st_mode.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 3, !dbg !2970
  %4 = bitcast i32* %st_mode.i to i64*, !dbg !2970
  %5 = load i64* %4, align 8, !dbg !2970
  %6 = trunc i64 %5 to i32, !dbg !2970
  %st_mode3.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !2970
  store i32 %6, i32* %st_mode3.i, align 4, !dbg !2970, !tbaa !2458
  %st_nlink.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 2, !dbg !2971
  %7 = load i64* %st_nlink.i, align 16, !dbg !2971, !tbaa !2950
  %st_nlink4.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !2971
  store i64 %7, i64* %st_nlink4.i, align 8, !dbg !2971, !tbaa !2951
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64)
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %st_uid5.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !2972
  store i32 %9, i32* %st_uid5.i, align 4, !dbg !2972, !tbaa !2953
  %st_gid.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 5, !dbg !2973
  %10 = load i32* %st_gid.i, align 16, !dbg !2973, !tbaa !2193
  %st_gid6.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !2973
  store i32 %10, i32* %st_gid6.i, align 4, !dbg !2973, !tbaa !2955
  %st_rdev.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 7, !dbg !2974
  %st_rdev7.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !2974
  %11 = bitcast i64* %st_rdev.i to <2 x i64>*, !dbg !2974
  %12 = load <2 x i64>* %11, align 8, !dbg !2974, !tbaa !2835
  %13 = bitcast i64* %st_rdev7.i to <2 x i64>*, !dbg !2974
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !2974, !tbaa !2835
  %tv_sec.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 11, i32 0, !dbg !2975
  %14 = load i64* %tv_sec.i, align 8, !dbg !2975, !tbaa !1736
  %tv_sec10.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !2975
  store i64 %14, i64* %tv_sec10.i, align 8, !dbg !2975, !tbaa !2958
  %tv_sec11.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 12, i32 0, !dbg !2976
  %15 = load i64* %tv_sec11.i, align 8, !dbg !2976, !tbaa !1738
  %tv_sec13.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !2976
  store i64 %15, i64* %tv_sec13.i, align 8, !dbg !2976, !tbaa !2960
  %tv_sec14.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 13, i32 0, !dbg !2977
  %16 = load i64* %tv_sec14.i, align 8, !dbg !2977, !tbaa !2962
  %tv_sec16.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !2977
  store i64 %16, i64* %tv_sec16.i, align 8, !dbg !2977, !tbaa !2963
  %st_blksize.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 9, !dbg !2978
  %st_blksize17.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !2978
  %17 = bitcast i64* %st_blksize.i to <2 x i64>*, !dbg !2978
  %18 = load <2 x i64>* %17, align 8, !dbg !2978, !tbaa !2835
  %19 = bitcast i64* %st_blksize17.i to <2 x i64>*, !dbg !2978
  store <2 x i64> %18, <2 x i64>* %19, align 8, !dbg !2978, !tbaa !2835
  ret i32 %call, !dbg !2979
}

; Function Attrs: nounwind uwtable
define i32 @__lxstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) #6 {
entry:
  %tmp = alloca %struct.stat64, align 16
  %0 = bitcast %struct.stat64* %tmp to i8*, !dbg !2980
  %call = call i32 @__fd_lstat(i8* %path, %struct.stat64* %tmp) #2, !dbg !2981
  %1 = bitcast %struct.stat64* %tmp to <2 x i64>*, !dbg !2982
  %2 = load <2 x i64>* %1, align 16, !dbg !2982, !tbaa !2835
  %3 = bitcast %struct.stat* %buf to <2 x i64>*, !dbg !2982
  store <2 x i64> %2, <2 x i64>* %3, align 8, !dbg !2982, !tbaa !2835
  %st_mode.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 3, !dbg !2984
  %4 = bitcast i32* %st_mode.i to i64*, !dbg !2984
  %5 = load i64* %4, align 8, !dbg !2984
  %6 = trunc i64 %5 to i32, !dbg !2984
  %st_mode3.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !2984
  store i32 %6, i32* %st_mode3.i, align 4, !dbg !2984, !tbaa !2458
  %st_nlink.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 2, !dbg !2985
  %7 = load i64* %st_nlink.i, align 16, !dbg !2985, !tbaa !2950
  %st_nlink4.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !2985
  store i64 %7, i64* %st_nlink4.i, align 8, !dbg !2985, !tbaa !2951
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64)
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %st_uid5.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !2986
  store i32 %9, i32* %st_uid5.i, align 4, !dbg !2986, !tbaa !2953
  %st_gid.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 5, !dbg !2987
  %10 = load i32* %st_gid.i, align 16, !dbg !2987, !tbaa !2193
  %st_gid6.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !2987
  store i32 %10, i32* %st_gid6.i, align 4, !dbg !2987, !tbaa !2955
  %st_rdev.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 7, !dbg !2988
  %st_rdev7.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !2988
  %11 = bitcast i64* %st_rdev.i to <2 x i64>*, !dbg !2988
  %12 = load <2 x i64>* %11, align 8, !dbg !2988, !tbaa !2835
  %13 = bitcast i64* %st_rdev7.i to <2 x i64>*, !dbg !2988
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !2988, !tbaa !2835
  %tv_sec.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 11, i32 0, !dbg !2989
  %14 = load i64* %tv_sec.i, align 8, !dbg !2989, !tbaa !1736
  %tv_sec10.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !2989
  store i64 %14, i64* %tv_sec10.i, align 8, !dbg !2989, !tbaa !2958
  %tv_sec11.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 12, i32 0, !dbg !2990
  %15 = load i64* %tv_sec11.i, align 8, !dbg !2990, !tbaa !1738
  %tv_sec13.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !2990
  store i64 %15, i64* %tv_sec13.i, align 8, !dbg !2990, !tbaa !2960
  %tv_sec14.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 13, i32 0, !dbg !2991
  %16 = load i64* %tv_sec14.i, align 8, !dbg !2991, !tbaa !2962
  %tv_sec16.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !2991
  store i64 %16, i64* %tv_sec16.i, align 8, !dbg !2991, !tbaa !2963
  %st_blksize.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 9, !dbg !2992
  %st_blksize17.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !2992
  %17 = bitcast i64* %st_blksize.i to <2 x i64>*, !dbg !2992
  %18 = load <2 x i64>* %17, align 8, !dbg !2992, !tbaa !2835
  %19 = bitcast i64* %st_blksize17.i to <2 x i64>*, !dbg !2992
  store <2 x i64> %18, <2 x i64>* %19, align 8, !dbg !2992, !tbaa !2835
  ret i32 %call, !dbg !2993
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @lstat(i8* %path, %struct.stat* nocapture %buf) #10 {
entry:
  %tmp = alloca %struct.stat64, align 16
  %0 = bitcast %struct.stat64* %tmp to i8*, !dbg !2994
  %call = call i32 @__fd_lstat(i8* %path, %struct.stat64* %tmp) #2, !dbg !2995
  %1 = bitcast %struct.stat64* %tmp to <2 x i64>*, !dbg !2996
  %2 = load <2 x i64>* %1, align 16, !dbg !2996, !tbaa !2835
  %3 = bitcast %struct.stat* %buf to <2 x i64>*, !dbg !2996
  store <2 x i64> %2, <2 x i64>* %3, align 8, !dbg !2996, !tbaa !2835
  %st_mode.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 3, !dbg !2998
  %4 = bitcast i32* %st_mode.i to i64*, !dbg !2998
  %5 = load i64* %4, align 8, !dbg !2998
  %6 = trunc i64 %5 to i32, !dbg !2998
  %st_mode3.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !2998
  store i32 %6, i32* %st_mode3.i, align 4, !dbg !2998, !tbaa !2458
  %st_nlink.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 2, !dbg !2999
  %7 = load i64* %st_nlink.i, align 16, !dbg !2999, !tbaa !2950
  %st_nlink4.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !2999
  store i64 %7, i64* %st_nlink4.i, align 8, !dbg !2999, !tbaa !2951
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64)
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %st_uid5.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !3000
  store i32 %9, i32* %st_uid5.i, align 4, !dbg !3000, !tbaa !2953
  %st_gid.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 5, !dbg !3001
  %10 = load i32* %st_gid.i, align 16, !dbg !3001, !tbaa !2193
  %st_gid6.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !3001
  store i32 %10, i32* %st_gid6.i, align 4, !dbg !3001, !tbaa !2955
  %st_rdev.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 7, !dbg !3002
  %st_rdev7.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !3002
  %11 = bitcast i64* %st_rdev.i to <2 x i64>*, !dbg !3002
  %12 = load <2 x i64>* %11, align 8, !dbg !3002, !tbaa !2835
  %13 = bitcast i64* %st_rdev7.i to <2 x i64>*, !dbg !3002
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !3002, !tbaa !2835
  %tv_sec.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 11, i32 0, !dbg !3003
  %14 = load i64* %tv_sec.i, align 8, !dbg !3003, !tbaa !1736
  %tv_sec10.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !3003
  store i64 %14, i64* %tv_sec10.i, align 8, !dbg !3003, !tbaa !2958
  %tv_sec11.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 12, i32 0, !dbg !3004
  %15 = load i64* %tv_sec11.i, align 8, !dbg !3004, !tbaa !1738
  %tv_sec13.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !3004
  store i64 %15, i64* %tv_sec13.i, align 8, !dbg !3004, !tbaa !2960
  %tv_sec14.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 13, i32 0, !dbg !3005
  %16 = load i64* %tv_sec14.i, align 8, !dbg !3005, !tbaa !2962
  %tv_sec16.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !3005
  store i64 %16, i64* %tv_sec16.i, align 8, !dbg !3005, !tbaa !2963
  %st_blksize.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 9, !dbg !3006
  %st_blksize17.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !3006
  %17 = bitcast i64* %st_blksize.i to <2 x i64>*, !dbg !3006
  %18 = load <2 x i64>* %17, align 8, !dbg !3006, !tbaa !2835
  %19 = bitcast i64* %st_blksize17.i to <2 x i64>*, !dbg !3006
  store <2 x i64> %18, <2 x i64>* %19, align 8, !dbg !3006, !tbaa !2835
  ret i32 %call, !dbg !3007
}

; Function Attrs: nounwind uwtable
define i32 @__fxstat(i32 %vers, i32 %fd, %struct.stat* nocapture %buf) #6 {
entry:
  %tmp = alloca %struct.stat64, align 16
  %0 = bitcast %struct.stat64* %tmp to i8*, !dbg !3008
  %call = call i32 @__fd_fstat(i32 %fd, %struct.stat64* %tmp) #2, !dbg !3009
  %1 = bitcast %struct.stat64* %tmp to <2 x i64>*, !dbg !3010
  %2 = load <2 x i64>* %1, align 16, !dbg !3010, !tbaa !2835
  %3 = bitcast %struct.stat* %buf to <2 x i64>*, !dbg !3010
  store <2 x i64> %2, <2 x i64>* %3, align 8, !dbg !3010, !tbaa !2835
  %st_mode.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 3, !dbg !3012
  %4 = bitcast i32* %st_mode.i to i64*, !dbg !3012
  %5 = load i64* %4, align 8, !dbg !3012
  %6 = trunc i64 %5 to i32, !dbg !3012
  %st_mode3.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !3012
  store i32 %6, i32* %st_mode3.i, align 4, !dbg !3012, !tbaa !2458
  %st_nlink.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 2, !dbg !3013
  %7 = load i64* %st_nlink.i, align 16, !dbg !3013, !tbaa !2950
  %st_nlink4.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !3013
  store i64 %7, i64* %st_nlink4.i, align 8, !dbg !3013, !tbaa !2951
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64)
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %st_uid5.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !3014
  store i32 %9, i32* %st_uid5.i, align 4, !dbg !3014, !tbaa !2953
  %st_gid.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 5, !dbg !3015
  %10 = load i32* %st_gid.i, align 16, !dbg !3015, !tbaa !2193
  %st_gid6.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !3015
  store i32 %10, i32* %st_gid6.i, align 4, !dbg !3015, !tbaa !2955
  %st_rdev.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 7, !dbg !3016
  %st_rdev7.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !3016
  %11 = bitcast i64* %st_rdev.i to <2 x i64>*, !dbg !3016
  %12 = load <2 x i64>* %11, align 8, !dbg !3016, !tbaa !2835
  %13 = bitcast i64* %st_rdev7.i to <2 x i64>*, !dbg !3016
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !3016, !tbaa !2835
  %tv_sec.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 11, i32 0, !dbg !3017
  %14 = load i64* %tv_sec.i, align 8, !dbg !3017, !tbaa !1736
  %tv_sec10.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !3017
  store i64 %14, i64* %tv_sec10.i, align 8, !dbg !3017, !tbaa !2958
  %tv_sec11.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 12, i32 0, !dbg !3018
  %15 = load i64* %tv_sec11.i, align 8, !dbg !3018, !tbaa !1738
  %tv_sec13.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !3018
  store i64 %15, i64* %tv_sec13.i, align 8, !dbg !3018, !tbaa !2960
  %tv_sec14.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 13, i32 0, !dbg !3019
  %16 = load i64* %tv_sec14.i, align 8, !dbg !3019, !tbaa !2962
  %tv_sec16.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !3019
  store i64 %16, i64* %tv_sec16.i, align 8, !dbg !3019, !tbaa !2963
  %st_blksize.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 9, !dbg !3020
  %st_blksize17.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !3020
  %17 = bitcast i64* %st_blksize.i to <2 x i64>*, !dbg !3020
  %18 = load <2 x i64>* %17, align 8, !dbg !3020, !tbaa !2835
  %19 = bitcast i64* %st_blksize17.i to <2 x i64>*, !dbg !3020
  store <2 x i64> %18, <2 x i64>* %19, align 8, !dbg !3020, !tbaa !2835
  ret i32 %call, !dbg !3021
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstat(i32 %fd, %struct.stat* nocapture %buf) #10 {
entry:
  %tmp = alloca %struct.stat64, align 16
  %0 = bitcast %struct.stat64* %tmp to i8*, !dbg !3022
  %call = call i32 @__fd_fstat(i32 %fd, %struct.stat64* %tmp) #2, !dbg !3023
  %1 = bitcast %struct.stat64* %tmp to <2 x i64>*, !dbg !3024
  %2 = load <2 x i64>* %1, align 16, !dbg !3024, !tbaa !2835
  %3 = bitcast %struct.stat* %buf to <2 x i64>*, !dbg !3024
  store <2 x i64> %2, <2 x i64>* %3, align 8, !dbg !3024, !tbaa !2835
  %st_mode.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 3, !dbg !3026
  %4 = bitcast i32* %st_mode.i to i64*, !dbg !3026
  %5 = load i64* %4, align 8, !dbg !3026
  %6 = trunc i64 %5 to i32, !dbg !3026
  %st_mode3.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !3026
  store i32 %6, i32* %st_mode3.i, align 4, !dbg !3026, !tbaa !2458
  %st_nlink.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 2, !dbg !3027
  %7 = load i64* %st_nlink.i, align 16, !dbg !3027, !tbaa !2950
  %st_nlink4.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !3027
  store i64 %7, i64* %st_nlink4.i, align 8, !dbg !3027, !tbaa !2951
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64)
  %8 = lshr i64 %5, 32
  %9 = trunc i64 %8 to i32
  %st_uid5.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !3028
  store i32 %9, i32* %st_uid5.i, align 4, !dbg !3028, !tbaa !2953
  %st_gid.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 5, !dbg !3029
  %10 = load i32* %st_gid.i, align 16, !dbg !3029, !tbaa !2193
  %st_gid6.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !3029
  store i32 %10, i32* %st_gid6.i, align 4, !dbg !3029, !tbaa !2955
  %st_rdev.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 7, !dbg !3030
  %st_rdev7.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !3030
  %11 = bitcast i64* %st_rdev.i to <2 x i64>*, !dbg !3030
  %12 = load <2 x i64>* %11, align 8, !dbg !3030, !tbaa !2835
  %13 = bitcast i64* %st_rdev7.i to <2 x i64>*, !dbg !3030
  store <2 x i64> %12, <2 x i64>* %13, align 8, !dbg !3030, !tbaa !2835
  %tv_sec.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 11, i32 0, !dbg !3031
  %14 = load i64* %tv_sec.i, align 8, !dbg !3031, !tbaa !1736
  %tv_sec10.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !3031
  store i64 %14, i64* %tv_sec10.i, align 8, !dbg !3031, !tbaa !2958
  %tv_sec11.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 12, i32 0, !dbg !3032
  %15 = load i64* %tv_sec11.i, align 8, !dbg !3032, !tbaa !1738
  %tv_sec13.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !3032
  store i64 %15, i64* %tv_sec13.i, align 8, !dbg !3032, !tbaa !2960
  %tv_sec14.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 13, i32 0, !dbg !3033
  %16 = load i64* %tv_sec14.i, align 8, !dbg !3033, !tbaa !2962
  %tv_sec16.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !3033
  store i64 %16, i64* %tv_sec16.i, align 8, !dbg !3033, !tbaa !2963
  %st_blksize.i = getelementptr inbounds %struct.stat64* %tmp, i64 0, i32 9, !dbg !3034
  %st_blksize17.i = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !3034
  %17 = bitcast i64* %st_blksize.i to <2 x i64>*, !dbg !3034
  %18 = load <2 x i64>* %17, align 8, !dbg !3034, !tbaa !2835
  %19 = bitcast i64* %st_blksize17.i to <2 x i64>*, !dbg !3034
  store <2 x i64> %18, <2 x i64>* %19, align 8, !dbg !3034, !tbaa !2835
  ret i32 %call, !dbg !3035
}

; Function Attrs: nounwind uwtable
define i32 @ftruncate(i32 %fd, i64 %length) #6 {
entry:
  %call = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) #2, !dbg !3036
  ret i32 %call, !dbg !3036
}

; Function Attrs: nounwind uwtable
define i32 @statfs(i8* %path, %struct.statfs* %buf32) #6 {
entry:
  %call = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf32) #2, !dbg !3037
  ret i32 %call, !dbg !3037
}

; Function Attrs: nounwind uwtable
define i64 @getdents(i32 %fd, %struct.dirent* %dirp, i64 %nbytes) #6 {
entry:
  %0 = bitcast %struct.dirent* %dirp to %struct.dirent64*, !dbg !3038
  %conv = trunc i64 %nbytes to i32, !dbg !3039
  %call = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent64* %0, i32 %conv) #2, !dbg !3039
  %conv1 = sext i32 %call to i64, !dbg !3039
  %cmp = icmp sgt i32 %call, 0, !dbg !3040
  br i1 %cmp, label %if.then, label %if.end, !dbg !3040

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.dirent* %dirp to i8*, !dbg !3041
  %add.ptr = getelementptr inbounds i8* %1, i64 %conv1, !dbg !3041
  %2 = bitcast i8* %add.ptr to %struct.dirent*, !dbg !3042
  %cmp332 = icmp ugt %struct.dirent* %2, %dirp, !dbg !3042
  br i1 %cmp332, label %while.body, label %if.end, !dbg !3042

while.body:                                       ; preds = %while.body, %if.then
  %dp64.033 = phi %struct.dirent64* [ %5, %while.body ], [ %0, %if.then ]
  %d_reclen = getelementptr inbounds %struct.dirent64* %dp64.033, i64 0, i32 2, !dbg !3043
  %3 = bitcast %struct.dirent64* %dp64.033 to i8*, !dbg !3044
  %4 = load i16* %d_reclen, align 2, !dbg !3044, !tbaa !3045
  %idx.ext = zext i16 %4 to i64, !dbg !3044
  %add.ptr14 = getelementptr inbounds i8* %3, i64 %idx.ext, !dbg !3044
  %5 = bitcast i8* %add.ptr14 to %struct.dirent64*, !dbg !3044
  %cmp3 = icmp ult i8* %add.ptr14, %add.ptr, !dbg !3042
  br i1 %cmp3, label %while.body, label %if.end, !dbg !3042

if.end:                                           ; preds = %while.body, %if.then, %entry
  ret i64 %conv1, !dbg !3047
}

; Function Attrs: nounwind uwtable
define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %stdin_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) #6 {
entry:
  %x.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %s = alloca %struct.stat64, align 8
  %0 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !3048
  %1 = call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([7 x i8]* @klee_init_fds.name, i64 0, i64 0), i64 7)
  %2 = bitcast %struct.stat64* %s to i8*, !dbg !3049
  %call.i = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), %struct.stat64* %s) #2, !dbg !3050
  store i32 %n_files, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !3053, !tbaa !1513
  %conv = zext i32 %n_files to i64, !dbg !3054
  %mul = mul i64 %conv, 24, !dbg !3054
  %call1 = call noalias i8* @malloc(i64 %mul) #2, !dbg !3054
  %3 = bitcast i8* %call1 to %struct.exe_disk_file_t*, !dbg !3054
  store %struct.exe_disk_file_t* %3, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3054, !tbaa !1519
  %cmp29 = icmp eq i32 %n_files, 0, !dbg !3055
  br i1 %cmp29, label %for.end, label %for.body, !dbg !3055

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %4 = phi %struct.exe_disk_file_t* [ %.pre, %for.body.for.body_crit_edge ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %5 = trunc i64 %indvars.iv to i8, !dbg !3057
  %add = add i8 %5, 65, !dbg !3057
  store i8 %add, i8* %0, align 1, !dbg !3057, !tbaa !1507
  %arrayidx4 = getelementptr inbounds %struct.exe_disk_file_t* %4, i64 %indvars.iv, !dbg !3059
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %arrayidx4, i32 %file_length, i8* %0, %struct.stat64* %s), !dbg !3059
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3055
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3055
  %exitcond = icmp eq i32 %lftr.wideiv, %n_files, !dbg !3055
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !3055

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !3059, !tbaa !1519
  br label %for.body, !dbg !3055

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %stdin_length, 0, !dbg !3060
  br i1 %tobool, label %if.else, label %if.then, !dbg !3060

if.then:                                          ; preds = %for.end
  %call5 = call noalias i8* @malloc(i64 24) #2, !dbg !3062
  %6 = bitcast i8* %call5 to %struct.exe_disk_file_t*, !dbg !3062
  store %struct.exe_disk_file_t* %6, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !3062, !tbaa !3064
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %6, i32 %stdin_length, i8* getelementptr inbounds ([6 x i8]* @.str128, i64 0, i64 0), %struct.stat64* %s), !dbg !3065
  %7 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !3066, !tbaa !3064
  store %struct.exe_disk_file_t* %7, %struct.exe_disk_file_t** getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 8, !dbg !3066, !tbaa !1584
  br label %if.end, !dbg !3067

if.else:                                          ; preds = %for.end
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !3068, !tbaa !3064
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 %max_failures, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !3069, !tbaa !1821
  %tobool6 = icmp eq i32 %max_failures, 0, !dbg !3070
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !3070

if.then7:                                         ; preds = %if.end
  %call8 = call noalias i8* @malloc(i64 4) #2, !dbg !3072
  %8 = bitcast i8* %call8 to i32*, !dbg !3072
  store i32* %8, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !3072, !tbaa !1849
  %call9 = call noalias i8* @malloc(i64 4) #2, !dbg !3074
  %9 = bitcast i8* %call9 to i32*, !dbg !3074
  store i32* %9, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !3074, !tbaa !1902
  %call10 = call noalias i8* @malloc(i64 4) #2, !dbg !3075
  %10 = bitcast i8* %call10 to i32*, !dbg !3075
  store i32* %10, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !3075, !tbaa !1822
  %call11 = call noalias i8* @malloc(i64 4) #2, !dbg !3076
  %11 = bitcast i8* %call11 to i32*, !dbg !3076
  store i32* %11, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !3076, !tbaa !2364
  %call12 = call noalias i8* @malloc(i64 4) #2, !dbg !3077
  %12 = bitcast i8* %call12 to i32*, !dbg !3077
  store i32* %12, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !3077, !tbaa !2894
  call void @klee_make_symbolic(i8* %call8, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str229, i64 0, i64 0)) #2, !dbg !3078
  %13 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !3079, !tbaa !1902
  %14 = bitcast i32* %13 to i8*, !dbg !3079
  call void @klee_make_symbolic(i8* %14, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str330, i64 0, i64 0)) #2, !dbg !3079
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !3080, !tbaa !1822
  %16 = bitcast i32* %15 to i8*, !dbg !3080
  call void @klee_make_symbolic(i8* %16, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str431, i64 0, i64 0)) #2, !dbg !3080
  %17 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !3081, !tbaa !2364
  %18 = bitcast i32* %17 to i8*, !dbg !3081
  call void @klee_make_symbolic(i8* %18, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str532, i64 0, i64 0)) #2, !dbg !3081
  %19 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !3082, !tbaa !2894
  %20 = bitcast i32* %19 to i8*, !dbg !3082
  call void @klee_make_symbolic(i8* %20, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str633, i64 0, i64 0)) #2, !dbg !3082
  br label %if.end13, !dbg !3083

if.end13:                                         ; preds = %if.then7, %if.end
  %tobool14 = icmp eq i32 %sym_stdout_flag, 0, !dbg !3084
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !3084

if.then15:                                        ; preds = %if.end13
  %call16 = call noalias i8* @malloc(i64 24) #2, !dbg !3086
  %21 = bitcast i8* %call16 to %struct.exe_disk_file_t*, !dbg !3086
  store %struct.exe_disk_file_t* %21, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !3086, !tbaa !1948
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %21, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str734, i64 0, i64 0), %struct.stat64* %s), !dbg !3088
  %22 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !3089, !tbaa !1948
  store %struct.exe_disk_file_t* %22, %struct.exe_disk_file_t** getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !3089, !tbaa !1584
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !3090, !tbaa !1950
  br label %if.end18, !dbg !3091

if.else17:                                        ; preds = %if.end13
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !3092, !tbaa !1948
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  store i32 %save_all_writes_flag, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 3), align 8, !dbg !3093, !tbaa !1934
  %23 = bitcast i32* %x.i to i8*, !dbg !3094
  call void @klee_make_symbolic(i8* %23, i64 4, i8* getelementptr inbounds ([14 x i8]* @.str835, i64 0, i64 0)) #2, !dbg !3096
  %24 = load i32* %x.i, align 4, !dbg !3097, !tbaa !1554
  store i32 %24, i32* getelementptr inbounds ({ [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, i64 0, i32 2), align 4, !dbg !3095, !tbaa !3098
  %cmp20 = icmp eq i32 %24, 1, !dbg !3099
  %conv22 = zext i1 %cmp20 to i64, !dbg !3099
  call void @klee_assume(i64 %conv22) #2, !dbg !3099
  ret void, !dbg !3100
}

declare i32 @klee_is_symbolic(i64) #8

declare void @klee_posix_prefer_cex(i8*, i64) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @__create_new_dfile(%struct.exe_disk_file_t* nocapture %dfile, i32 %size, i8* %name, %struct.stat64* nocapture readonly %defaults) #6 {
entry:
  %sname = alloca [64 x i8], align 16
  %call = call noalias i8* @malloc(i64 144) #2, !dbg !3101
  %0 = bitcast i8* %call to %struct.stat64*, !dbg !3101
  %1 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 0, !dbg !3102
  %2 = load i8* %name, align 1, !dbg !3103, !tbaa !1507
  %tobool148 = icmp eq i8 %2, 0, !dbg !3103
  %sub.ptr.rhs.cast2 = ptrtoint i8* %name to i64, !dbg !3105
  br i1 %tobool148, label %for.end, label %for.body, !dbg !3103

for.body:                                         ; preds = %for.body, %entry
  %arrayidx4152 = phi i8* [ %arrayidx4, %for.body ], [ %1, %entry ]
  %3 = phi i8 [ %4, %for.body ], [ %2, %entry ]
  %sp.0151 = phi i8* [ %incdec.ptr, %for.body ], [ %name, %entry ]
  store i8 %3, i8* %arrayidx4152, align 1, !dbg !3106, !tbaa !1507
  %incdec.ptr = getelementptr inbounds i8* %sp.0151, i64 1, !dbg !3103
  %4 = load i8* %incdec.ptr, align 1, !dbg !3103, !tbaa !1507
  %tobool = icmp eq i8 %4, 0, !dbg !3103
  %sub.ptr.lhs.cast1 = ptrtoint i8* %incdec.ptr to i64, !dbg !3105
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2, !dbg !3105
  %arrayidx4 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %sub.ptr.sub3, !dbg !3105
  br i1 %tobool, label %for.end, label %for.body, !dbg !3103

for.end:                                          ; preds = %for.body, %entry
  %arrayidx4.lcssa = phi i8* [ %1, %entry ], [ %arrayidx4, %for.body ]
  %5 = call i8* @memcpy(i8* %arrayidx4.lcssa, i8* getelementptr inbounds ([6 x i8]* @.str936, i64 0, i64 0), i64 6)
  %tobool5 = icmp eq i32 %size, 0, !dbg !3107
  br i1 %tobool5, label %cond.false, label %cond.end, !dbg !3107

cond.false:                                       ; preds = %for.end
  call void bitcast (i32 (...)* @__assert_fail to void (i8*, i8*, i32, i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str1037, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str1138, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([88 x i8]* 
  unreachable, !dbg !3107

cond.end:                                         ; preds = %for.end
  %size6 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 0, !dbg !3108
  store i32 %size, i32* %size6, align 4, !dbg !3108, !tbaa !1880
  %conv = zext i32 %size to i64, !dbg !3109
  %call8 = call noalias i8* @malloc(i64 %conv) #2, !dbg !3109
  %contents = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !3109
  store i8* %call8, i8** %contents, align 8, !dbg !3109, !tbaa !1886
  call void @klee_make_symbolic(i8* %call8, i64 %conv, i8* %name) #2, !dbg !3110
  call void @klee_make_symbolic(i8* %call, i64 144, i8* %1) #2, !dbg !3111
  %st_ino = getelementptr inbounds i8* %call, i64 8, !dbg !3112
  %6 = bitcast i8* %st_ino to i64*, !dbg !3112
  %7 = load i64* %6, align 8, !dbg !3112, !tbaa !1524
  %call12 = call i32 @klee_is_symbolic(i64 %7) #2, !dbg !3112
  %tobool13 = icmp eq i32 %call12, 0, !dbg !3112
  %8 = load i64* %6, align 8, !dbg !3112, !tbaa !1524
  %and = and i64 %8, 2147483647, !dbg !3112
  %cmp = icmp eq i64 %and, 0, !dbg !3112
  %or.cond = and i1 %tobool13, %cmp, !dbg !3112
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3112

if.then:                                          ; preds = %cond.end
  %st_ino16 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 1, !dbg !3114
  %9 = load i64* %st_ino16, align 8, !dbg !3114, !tbaa !1524
  store i64 %9, i64* %6, align 8, !dbg !3114, !tbaa !1524
  br label %if.end, !dbg !3114

if.end:                                           ; preds = %if.then, %cond.end
  %10 = phi i64 [ %9, %if.then ], [ %8, %cond.end ]
  %and19 = and i64 %10, 2147483647, !dbg !3115
  %cmp20 = icmp ne i64 %and19, 0, !dbg !3115
  %conv22 = zext i1 %cmp20 to i64, !dbg !3115
  call void @klee_assume(i64 %conv22) #2, !dbg !3115
  %st_blksize = getelementptr inbounds i8* %call, i64 56, !dbg !3116
  %11 = bitcast i8* %st_blksize to i64*, !dbg !3116
  %12 = load i64* %11, align 8, !dbg !3116, !tbaa !3117
  %cmp24 = icmp ult i64 %12, 65536, !dbg !3116
  %conv26 = zext i1 %cmp24 to i64, !dbg !3116
  call void @klee_assume(i64 %conv26) #2, !dbg !3116
  %st_mode = getelementptr inbounds i8* %call, i64 24, !dbg !3118
  %13 = bitcast i8* %st_mode to i32*, !dbg !3118
  %14 = load i32* %13, align 4, !dbg !3118, !tbaa !1598
  %and27 = and i32 %14, -61952, !dbg !3118
  %lnot = icmp eq i32 %and27, 0, !dbg !3118
  %conv29 = zext i1 %lnot to i64, !dbg !3118
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv29) #2, !dbg !3118
  %st_dev = bitcast i8* %call to i64*, !dbg !3119
  %15 = load i64* %st_dev, align 8, !dbg !3119, !tbaa !3120
  %st_dev30 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 0, !dbg !3119
  %16 = load i64* %st_dev30, align 8, !dbg !3119, !tbaa !3120
  %cmp31 = icmp eq i64 %15, %16, !dbg !3119
  %conv33 = zext i1 %cmp31 to i64, !dbg !3119
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv33) #2, !dbg !3119
  %st_rdev = getelementptr inbounds i8* %call, i64 40, !dbg !3121
  %17 = bitcast i8* %st_rdev to i64*, !dbg !3121
  %18 = load i64* %17, align 8, !dbg !3121, !tbaa !3122
  %st_rdev34 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 7, !dbg !3121
  %19 = load i64* %st_rdev34, align 8, !dbg !3121, !tbaa !3122
  %cmp35 = icmp eq i64 %18, %19, !dbg !3121
  %conv37 = zext i1 %cmp35 to i64, !dbg !3121
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv37) #2, !dbg !3121
  %20 = load i32* %13, align 4, !dbg !3123, !tbaa !1598
  %and39 = and i32 %20, 448, !dbg !3123
  %cmp40 = icmp eq i32 %and39, 384, !dbg !3123
  %conv42 = zext i1 %cmp40 to i64, !dbg !3123
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv42) #2, !dbg !3123
  %21 = load i32* %13, align 4, !dbg !3124, !tbaa !1598
  %and44 = and i32 %21, 56, !dbg !3124
  %cmp45 = icmp eq i32 %and44, 32, !dbg !3124
  %conv47 = zext i1 %cmp45 to i64, !dbg !3124
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv47) #2, !dbg !3124
  %22 = load i32* %13, align 4, !dbg !3125, !tbaa !1598
  %and49 = and i32 %22, 7, !dbg !3125
  %cmp50 = icmp eq i32 %and49, 4, !dbg !3125
  %conv52 = zext i1 %cmp50 to i64, !dbg !3125
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv52) #2, !dbg !3125
  %23 = load i32* %13, align 4, !dbg !3126, !tbaa !1598
  %and54 = and i32 %23, 61440, !dbg !3126
  %cmp55 = icmp eq i32 %and54, 32768, !dbg !3126
  %conv57 = zext i1 %cmp55 to i64, !dbg !3126
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv57) #2, !dbg !3126
  %st_nlink = getelementptr inbounds i8* %call, i64 16, !dbg !3127
  %24 = bitcast i8* %st_nlink to i64*, !dbg !3127
  %25 = load i64* %24, align 8, !dbg !3127, !tbaa !2950
  %cmp58 = icmp eq i64 %25, 1, !dbg !3127
  %conv60 = zext i1 %cmp58 to i64, !dbg !3127
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv60) #2, !dbg !3127
  %st_uid = getelementptr inbounds i8* %call, i64 28, !dbg !3128
  %26 = bitcast i8* %st_uid to i32*, !dbg !3128
  %27 = load i32* %26, align 4, !dbg !3128, !tbaa !2189
  %st_uid61 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 4, !dbg !3128
  %28 = load i32* %st_uid61, align 4, !dbg !3128, !tbaa !2189
  %cmp62 = icmp eq i32 %27, %28, !dbg !3128
  %conv64 = zext i1 %cmp62 to i64, !dbg !3128
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv64) #2, !dbg !3128
  %st_gid = getelementptr inbounds i8* %call, i64 32, !dbg !3129
  %29 = bitcast i8* %st_gid to i32*, !dbg !3129
  %30 = load i32* %29, align 4, !dbg !3129, !tbaa !2193
  %st_gid65 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 5, !dbg !3129
  %31 = load i32* %st_gid65, align 4, !dbg !3129, !tbaa !2193
  %cmp66 = icmp eq i32 %30, %31, !dbg !3129
  %conv68 = zext i1 %cmp66 to i64, !dbg !3129
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv68) #2, !dbg !3129
  %32 = load i64* %11, align 8, !dbg !3130, !tbaa !3117
  %cmp70 = icmp eq i64 %32, 4096, !dbg !3130
  %conv72 = zext i1 %cmp70 to i64, !dbg !3130
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv72) #2, !dbg !3130
  %st_atim = getelementptr inbounds i8* %call, i64 72, !dbg !3131
  %tv_sec = bitcast i8* %st_atim to i64*, !dbg !3131
  %33 = load i64* %tv_sec, align 8, !dbg !3131, !tbaa !1736
  %tv_sec74 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 11, i32 0, !dbg !3131
  %34 = load i64* %tv_sec74, align 8, !dbg !3131, !tbaa !1736
  %cmp75 = icmp eq i64 %33, %34, !dbg !3131
  %conv77 = zext i1 %cmp75 to i64, !dbg !3131
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv77) #2, !dbg !3131
  %st_mtim = getelementptr inbounds i8* %call, i64 88, !dbg !3132
  %tv_sec78 = bitcast i8* %st_mtim to i64*, !dbg !3132
  %35 = load i64* %tv_sec78, align 8, !dbg !3132, !tbaa !1738
  %tv_sec80 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 12, i32 0, !dbg !3132
  %36 = load i64* %tv_sec80, align 8, !dbg !3132, !tbaa !1738
  %cmp81 = icmp eq i64 %35, %36, !dbg !3132
  %conv83 = zext i1 %cmp81 to i64, !dbg !3132
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv83) #2, !dbg !3132
  %st_ctim = getelementptr inbounds i8* %call, i64 104, !dbg !3133
  %tv_sec84 = bitcast i8* %st_ctim to i64*, !dbg !3133
  %37 = load i64* %tv_sec84, align 8, !dbg !3133, !tbaa !2962
  %tv_sec86 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 13, i32 0, !dbg !3133
  %38 = load i64* %tv_sec86, align 8, !dbg !3133, !tbaa !2962
  %cmp87 = icmp eq i64 %37, %38, !dbg !3133
  %conv89 = zext i1 %cmp87 to i64, !dbg !3133
  call void @klee_posix_prefer_cex(i8* %call, i64 %conv89) #2, !dbg !3133
  %39 = load i32* %size6, align 4, !dbg !3134, !tbaa !1880
  %conv91 = zext i32 %39 to i64, !dbg !3134
  %st_size = getelementptr inbounds i8* %call, i64 48, !dbg !3134
  %40 = bitcast i8* %st_size to i64*, !dbg !3134
  store i64 %conv91, i64* %40, align 8, !dbg !3134, !tbaa !3135
  %st_blocks = getelementptr inbounds i8* %call, i64 64, !dbg !3136
  %41 = bitcast i8* %st_blocks to i64*, !dbg !3136
  store i64 8, i64* %41, align 8, !dbg !3136, !tbaa !3137
  %stat = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 2, !dbg !3138
  store %struct.stat64* %0, %struct.stat64** %stat, align 8, !dbg !3138, !tbaa !1522
  ret void, !dbg !3139
}

; Function Attrs: nounwind uwtable
define void @klee_init_env(i32* nocapture %argcPtr, i8*** nocapture %argvPtr) #6 {
entry:
  %new_argv = alloca [1024 x i8*], align 16
  %sym_arg_name = alloca [5 x i8], align 4
  %0 = load i32* %argcPtr, align 4, !dbg !3140, !tbaa !1554
  %1 = load i8*** %argvPtr, align 8, !dbg !3141, !tbaa !3142
  %2 = bitcast [1024 x i8*]* %new_argv to i8*, !dbg !3143
  %3 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 0, !dbg !3144
  %4 = bitcast [5 x i8]* %sym_arg_name to i32*, !dbg !3144
  store i32 6779489, i32* %4, align 4, !dbg !3144
  %arrayidx = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 4, !dbg !3145
  store i8 0, i8* %arrayidx, align 4, !dbg !3145, !tbaa !1507
  %cmp = icmp eq i32 %0, 2, !dbg !3146
  br i1 %cmp, label %land.lhs.true, label %while.cond.preheader, !dbg !3146

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8** %1, i64 1, !dbg !3146
  %5 = load i8** %arrayidx1, align 8, !dbg !3146, !tbaa !3142
  %6 = load i8* %5, align 1, !dbg !3148, !tbaa !1507
  %cmp7.i = icmp eq i8 %6, 45, !dbg !3148
  br i1 %cmp7.i, label %while.body.i, label %while.body.lr.ph, !dbg !3148

while.body.i:                                     ; preds = %if.end.i, %land.lhs.true
  %7 = phi i8 [ %8, %if.end.i ], [ 45, %land.lhs.true ]
  %b.addr.09.i = phi i8* [ %incdec.ptr3.i, %if.end.i ], [ getelementptr inbounds ([7 x i8]* @.str39, i64 0, i64 0), %land.lhs.true ]
  %a.addr.08.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %5, %land.lhs.true ]
  %tobool.i = icmp eq i8 %7, 0, !dbg !3149
  br i1 %tobool.i, label %if.then, label %if.end.i, !dbg !3149

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8* %a.addr.08.i, i64 1, !dbg !3152
  %incdec.ptr3.i = getelementptr inbounds i8* %b.addr.09.i, i64 1, !dbg !3153
  %8 = load i8* %incdec.ptr.i, align 1, !dbg !3148, !tbaa !1507
  %9 = load i8* %incdec.ptr3.i, align 1, !dbg !3148, !tbaa !1507
  %cmp.i = icmp eq i8 %8, %9, !dbg !3148
  br i1 %cmp.i, label %while.body.i, label %while.cond.preheader, !dbg !3148

while.cond.preheader:                             ; preds = %if.end.i, %entry
  %cmp2817 = icmp sgt i32 %0, 0, !dbg !3154
  br i1 %cmp2817, label %while.body.lr.ph, label %while.end, !dbg !3154

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %land.lhs.true
  %arrayidx20 = getelementptr inbounds [5 x i8]* %sym_arg_name, i64 0, i64 3, !dbg !3155
  br label %while.body, !dbg !3154

if.then:                                          ; preds = %while.body.i
  call fastcc void @__emit_error(i8* getelementptr inbounds ([964 x i8]* @.str140, i64 0, i64 0)), !dbg !3156
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
  %idxprom = sext i32 %k.0842 to i64, !dbg !3158
  %arrayidx3 = getelementptr inbounds i8** %1, i64 %idxprom, !dbg !3158
  %11 = load i8** %arrayidx3, align 8, !dbg !3158, !tbaa !3142
  %12 = load i8* %11, align 1, !dbg !3159, !tbaa !1507
  %cmp7.i279 = icmp eq i8 %12, 45, !dbg !3159
  br i1 %cmp7.i279, label %while.body.i283, label %if.else175, !dbg !3159

while.body.i283:                                  ; preds = %if.end.i287, %while.body
  %13 = phi i8 [ %14, %if.end.i287 ], [ 45, %while.body ]
  %b.addr.09.i280 = phi i8* [ %incdec.ptr3.i285, %if.end.i287 ], [ getelementptr inbounds ([10 x i8]* @.str241, i64 0, i64 0), %while.body ]
  %a.addr.08.i281 = phi i8* [ %incdec.ptr.i284, %if.end.i287 ], [ %11, %while.body ]
  %tobool.i282 = icmp eq i8 %13, 0, !dbg !3160
  br i1 %tobool.i282, label %if.then10, label %if.end.i287, !dbg !3160

if.end.i287:                                      ; preds = %while.body.i283
  %incdec.ptr.i284 = getelementptr inbounds i8* %a.addr.08.i281, i64 1, !dbg !3161
  %incdec.ptr3.i285 = getelementptr inbounds i8* %b.addr.09.i280, i64 1, !dbg !3162
  %14 = load i8* %incdec.ptr.i284, align 1, !dbg !3159, !tbaa !1507
  %15 = load i8* %incdec.ptr3.i285, align 1, !dbg !3159, !tbaa !1507
  %cmp.i286 = icmp eq i8 %14, %15, !dbg !3159
  br i1 %cmp.i286, label %while.body.i283, label %lor.lhs.false, !dbg !3159

lor.lhs.false:                                    ; preds = %if.end.i287
  br i1 %cmp7.i279, label %while.body.i297, label %if.else175, !dbg !3159

while.body.i297:                                  ; preds = %if.end.i301, %lor.lhs.false
  %16 = phi i8 [ %17, %if.end.i301 ], [ 45, %lor.lhs.false ]
  %b.addr.09.i294 = phi i8* [ %incdec.ptr3.i299, %if.end.i301 ], [ getelementptr inbounds ([9 x i8]* @.str342, i64 0, i64 0), %lor.lhs.false ]
  %a.addr.08.i295 = phi i8* [ %incdec.ptr.i298, %if.end.i301 ], [ %11, %lor.lhs.false ]
  %tobool.i296 = icmp eq i8 %16, 0, !dbg !3160
  br i1 %tobool.i296, label %if.then10, label %if.end.i301, !dbg !3160

if.end.i301:                                      ; preds = %while.body.i297
  %incdec.ptr.i298 = getelementptr inbounds i8* %a.addr.08.i295, i64 1, !dbg !3161
  %incdec.ptr3.i299 = getelementptr inbounds i8* %b.addr.09.i294, i64 1, !dbg !3162
  %17 = load i8* %incdec.ptr.i298, align 1, !dbg !3159, !tbaa !1507
  %18 = load i8* %incdec.ptr3.i299, align 1, !dbg !3159, !tbaa !1507
  %cmp.i300 = icmp eq i8 %17, %18, !dbg !3159
  br i1 %cmp.i300, label %while.body.i297, label %if.else, !dbg !3159

if.then10:                                        ; preds = %while.body.i297, %while.body.i283
  %inc = add nsw i32 %k.0842, 1, !dbg !3163
  %cmp11 = icmp eq i32 %inc, %0, !dbg !3163
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !3163

if.then12:                                        ; preds = %if.then10
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str443, i64 0, i64 0)), !dbg !3165
  unreachable

if.end13:                                         ; preds = %if.then10
  %inc14 = add nsw i32 %k.0842, 2, !dbg !3166
  %idxprom15 = sext i32 %inc to i64, !dbg !3166
  %arrayidx16 = getelementptr inbounds i8** %1, i64 %idxprom15, !dbg !3166
  %19 = load i8** %arrayidx16, align 8, !dbg !3166, !tbaa !3142
  %20 = load i8* %19, align 1, !dbg !3167, !tbaa !1507
  %tobool.i304 = icmp eq i8 %20, 0, !dbg !3167
  br i1 %tobool.i304, label %if.then.i305, label %while.body.i310, !dbg !3167

if.then.i305:                                     ; preds = %if.end13
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str443, i64 0, i64 0)) #2, !dbg !3167
  unreachable

while.body.i310:                                  ; preds = %if.then10.i316, %if.end13
  %21 = phi i8 [ %23, %if.then10.i316 ], [ %20, %if.end13 ]
  %s.pn.i306 = phi i8* [ %incdec.ptr26.i308, %if.then10.i316 ], [ %19, %if.end13 ]
  %res.025.i307 = phi i64 [ %add.i314, %if.then10.i316 ], [ 0, %if.end13 ]
  %incdec.ptr26.i308 = getelementptr inbounds i8* %s.pn.i306, i64 1, !dbg !3169
  %.off.i309 = add i8 %21, -48, !dbg !3170
  %22 = icmp ult i8 %.off.i309, 10, !dbg !3170
  br i1 %22, label %if.then10.i316, label %if.else13.i317, !dbg !3170

if.then10.i316:                                   ; preds = %while.body.i310
  %conv.i311 = sext i8 %21 to i64, !dbg !3174
  %mul.i312 = mul nsw i64 %res.025.i307, 10, !dbg !3175
  %sub.i313 = add i64 %conv.i311, -48, !dbg !3175
  %add.i314 = add i64 %sub.i313, %mul.i312, !dbg !3175
  %23 = load i8* %incdec.ptr26.i308, align 1, !dbg !3169, !tbaa !1507
  %tobool1.i315 = icmp eq i8 %23, 0, !dbg !3169
  br i1 %tobool1.i315, label %__str_to_int.exit318, label %while.body.i310, !dbg !3169

if.else13.i317:                                   ; preds = %while.body.i310
  call fastcc void @__emit_error(i8* getelementptr inbounds ([48 x i8]* @.str443, i64 0, i64 0)) #2, !dbg !3177
  unreachable

__str_to_int.exit318:                             ; preds = %if.then10.i316
  %conv = trunc i64 %add.i314 to i32, !dbg !3166
  %add = add i32 %sym_arg_num.0833, 48, !dbg !3155
  %conv19 = trunc i32 %add to i8, !dbg !3155
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !3155, !tbaa !1507
  %call22 = call fastcc i8* @__get_sym_str(i32 %conv, i8* %3), !dbg !3179
  %cmp.i319 = icmp eq i32 %10, 1024, !dbg !3180
  br i1 %cmp.i319, label %if.then.i320, label %__add_arg.exit325, !dbg !3180

if.then.i320:                                     ; preds = %__str_to_int.exit318
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str2463, i64 0, i64 0)) #2, !dbg !3183
  unreachable

__add_arg.exit325:                                ; preds = %__str_to_int.exit318
  %inc18 = add i32 %sym_arg_num.0833, 1, !dbg !3155
  %idxprom.i321 = sext i32 %10 to i64, !dbg !3185
  %arrayidx.i322 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i321, !dbg !3185
  store i8* %call22, i8** %arrayidx.i322, align 8, !dbg !3185, !tbaa !3142
  %inc.i323 = add nsw i32 %10, 1, !dbg !3187
  br label %while.cond.backedge, !dbg !3188

if.else:                                          ; preds = %if.end.i301
  br i1 %cmp7.i279, label %while.body.i330, label %if.else175, !dbg !3189

while.body.i330:                                  ; preds = %if.end.i334, %if.else
  %24 = phi i8 [ %25, %if.end.i334 ], [ 45, %if.else ]
  %b.addr.09.i327 = phi i8* [ %incdec.ptr3.i332, %if.end.i334 ], [ getelementptr inbounds ([11 x i8]* @.str544, i64 0, i64 0), %if.else ]
  %a.addr.08.i328 = phi i8* [ %incdec.ptr.i331, %if.end.i334 ], [ %11, %if.else ]
  %tobool.i329 = icmp eq i8 %24, 0, !dbg !3191
  br i1 %tobool.i329, label %if.then32, label %if.end.i334, !dbg !3191

if.end.i334:                                      ; preds = %while.body.i330
  %incdec.ptr.i331 = getelementptr inbounds i8* %a.addr.08.i328, i64 1, !dbg !3192
  %incdec.ptr3.i332 = getelementptr inbounds i8* %b.addr.09.i327, i64 1, !dbg !3193
  %25 = load i8* %incdec.ptr.i331, align 1, !dbg !3189, !tbaa !1507
  %26 = load i8* %incdec.ptr3.i332, align 1, !dbg !3189, !tbaa !1507
  %cmp.i333 = icmp eq i8 %25, %26, !dbg !3189
  br i1 %cmp.i333, label %while.body.i330, label %lor.lhs.false27, !dbg !3189

lor.lhs.false27:                                  ; preds = %if.end.i334
  br i1 %cmp7.i279, label %while.body.i341, label %if.else175, !dbg !3189

while.body.i341:                                  ; preds = %if.end.i345, %lor.lhs.false27
  %27 = phi i8 [ %28, %if.end.i345 ], [ 45, %lor.lhs.false27 ]
  %b.addr.09.i338 = phi i8* [ %incdec.ptr3.i343, %if.end.i345 ], [ getelementptr inbounds ([10 x i8]* @.str645, i64 0, i64 0), %lor.lhs.false27 ]
  %a.addr.08.i339 = phi i8* [ %incdec.ptr.i342, %if.end.i345 ], [ %11, %lor.lhs.false27 ]
  %tobool.i340 = icmp eq i8 %27, 0, !dbg !3191
  br i1 %tobool.i340, label %if.then32, label %if.end.i345, !dbg !3191

if.end.i345:                                      ; preds = %while.body.i341
  %incdec.ptr.i342 = getelementptr inbounds i8* %a.addr.08.i339, i64 1, !dbg !3192
  %incdec.ptr3.i343 = getelementptr inbounds i8* %b.addr.09.i338, i64 1, !dbg !3193
  %28 = load i8* %incdec.ptr.i342, align 1, !dbg !3189, !tbaa !1507
  %29 = load i8* %incdec.ptr3.i343, align 1, !dbg !3189, !tbaa !1507
  %cmp.i344 = icmp eq i8 %28, %29, !dbg !3189
  br i1 %cmp.i344, label %while.body.i341, label %if.else67, !dbg !3189

if.then32:                                        ; preds = %while.body.i341, %while.body.i330
  %add34 = add nsw i32 %k.0842, 3, !dbg !3194
  %cmp35 = icmp slt i32 %add34, %0, !dbg !3194
  br i1 %cmp35, label %if.end38, label %if.then37, !dbg !3194

if.then37:                                        ; preds = %if.then32
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)), !dbg !3196
  unreachable

if.end38:                                         ; preds = %if.then32
  %inc39 = add nsw i32 %k.0842, 1, !dbg !3197
  %inc40 = add nsw i32 %k.0842, 2, !dbg !3198
  %idxprom41 = sext i32 %inc39 to i64, !dbg !3198
  %arrayidx42 = getelementptr inbounds i8** %1, i64 %idxprom41, !dbg !3198
  %30 = load i8** %arrayidx42, align 8, !dbg !3198, !tbaa !3142
  %31 = load i8* %30, align 1, !dbg !3199, !tbaa !1507
  %tobool.i348 = icmp eq i8 %31, 0, !dbg !3199
  br i1 %tobool.i348, label %if.then.i349, label %while.body.i354, !dbg !3199

if.then.i349:                                     ; preds = %if.end38
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)) #2, !dbg !3199
  unreachable

while.body.i354:                                  ; preds = %if.then10.i360, %if.end38
  %32 = phi i8 [ %34, %if.then10.i360 ], [ %31, %if.end38 ]
  %s.pn.i350 = phi i8* [ %incdec.ptr26.i352, %if.then10.i360 ], [ %30, %if.end38 ]
  %res.025.i351 = phi i64 [ %add.i358, %if.then10.i360 ], [ 0, %if.end38 ]
  %incdec.ptr26.i352 = getelementptr inbounds i8* %s.pn.i350, i64 1, !dbg !3200
  %.off.i353 = add i8 %32, -48, !dbg !3201
  %33 = icmp ult i8 %.off.i353, 10, !dbg !3201
  br i1 %33, label %if.then10.i360, label %if.else13.i361, !dbg !3201

if.then10.i360:                                   ; preds = %while.body.i354
  %conv.i355 = sext i8 %32 to i64, !dbg !3202
  %mul.i356 = mul nsw i64 %res.025.i351, 10, !dbg !3203
  %sub.i357 = add i64 %conv.i355, -48, !dbg !3203
  %add.i358 = add i64 %sub.i357, %mul.i356, !dbg !3203
  %34 = load i8* %incdec.ptr26.i352, align 1, !dbg !3200, !tbaa !1507
  %tobool1.i359 = icmp eq i8 %34, 0, !dbg !3200
  br i1 %tobool1.i359, label %__str_to_int.exit362, label %while.body.i354, !dbg !3200

if.else13.i361:                                   ; preds = %while.body.i354
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)) #2, !dbg !3204
  unreachable

__str_to_int.exit362:                             ; preds = %if.then10.i360
  %conv44 = trunc i64 %add.i358 to i32, !dbg !3198
  %idxprom46 = sext i32 %inc40 to i64, !dbg !3205
  %arrayidx47 = getelementptr inbounds i8** %1, i64 %idxprom46, !dbg !3205
  %35 = load i8** %arrayidx47, align 8, !dbg !3205, !tbaa !3142
  %36 = load i8* %35, align 1, !dbg !3206, !tbaa !1507
  %tobool.i363 = icmp eq i8 %36, 0, !dbg !3206
  br i1 %tobool.i363, label %if.then.i364, label %while.body.i369, !dbg !3206

if.then.i364:                                     ; preds = %__str_to_int.exit362
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)) #2, !dbg !3206
  unreachable

while.body.i369:                                  ; preds = %if.then10.i375, %__str_to_int.exit362
  %37 = phi i8 [ %39, %if.then10.i375 ], [ %36, %__str_to_int.exit362 ]
  %s.pn.i365 = phi i8* [ %incdec.ptr26.i367, %if.then10.i375 ], [ %35, %__str_to_int.exit362 ]
  %res.025.i366 = phi i64 [ %add.i373, %if.then10.i375 ], [ 0, %__str_to_int.exit362 ]
  %incdec.ptr26.i367 = getelementptr inbounds i8* %s.pn.i365, i64 1, !dbg !3207
  %.off.i368 = add i8 %37, -48, !dbg !3208
  %38 = icmp ult i8 %.off.i368, 10, !dbg !3208
  br i1 %38, label %if.then10.i375, label %if.else13.i376, !dbg !3208

if.then10.i375:                                   ; preds = %while.body.i369
  %conv.i370 = sext i8 %37 to i64, !dbg !3209
  %mul.i371 = mul nsw i64 %res.025.i366, 10, !dbg !3210
  %sub.i372 = add i64 %conv.i370, -48, !dbg !3210
  %add.i373 = add i64 %sub.i372, %mul.i371, !dbg !3210
  %39 = load i8* %incdec.ptr26.i367, align 1, !dbg !3207, !tbaa !1507
  %tobool1.i374 = icmp eq i8 %39, 0, !dbg !3207
  br i1 %tobool1.i374, label %__str_to_int.exit377, label %while.body.i369, !dbg !3207

if.else13.i376:                                   ; preds = %while.body.i369
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)) #2, !dbg !3211
  unreachable

__str_to_int.exit377:                             ; preds = %if.then10.i375
  %conv49 = trunc i64 %add.i373 to i32, !dbg !3205
  %inc50 = add nsw i32 %k.0842, 4, !dbg !3212
  %idxprom51 = sext i32 %add34 to i64, !dbg !3212
  %arrayidx52 = getelementptr inbounds i8** %1, i64 %idxprom51, !dbg !3212
  %40 = load i8** %arrayidx52, align 8, !dbg !3212, !tbaa !3142
  %41 = load i8* %40, align 1, !dbg !3213, !tbaa !1507
  %tobool.i378 = icmp eq i8 %41, 0, !dbg !3213
  br i1 %tobool.i378, label %if.then.i379, label %while.body.i384, !dbg !3213

if.then.i379:                                     ; preds = %__str_to_int.exit377
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)) #2, !dbg !3213
  unreachable

while.body.i384:                                  ; preds = %if.then10.i390, %__str_to_int.exit377
  %42 = phi i8 [ %44, %if.then10.i390 ], [ %41, %__str_to_int.exit377 ]
  %s.pn.i380 = phi i8* [ %incdec.ptr26.i382, %if.then10.i390 ], [ %40, %__str_to_int.exit377 ]
  %res.025.i381 = phi i64 [ %add.i388, %if.then10.i390 ], [ 0, %__str_to_int.exit377 ]
  %incdec.ptr26.i382 = getelementptr inbounds i8* %s.pn.i380, i64 1, !dbg !3214
  %.off.i383 = add i8 %42, -48, !dbg !3215
  %43 = icmp ult i8 %.off.i383, 10, !dbg !3215
  br i1 %43, label %if.then10.i390, label %if.else13.i391, !dbg !3215

if.then10.i390:                                   ; preds = %while.body.i384
  %conv.i385 = sext i8 %42 to i64, !dbg !3216
  %mul.i386 = mul nsw i64 %res.025.i381, 10, !dbg !3217
  %sub.i387 = add i64 %conv.i385, -48, !dbg !3217
  %add.i388 = add i64 %sub.i387, %mul.i386, !dbg !3217
  %44 = load i8* %incdec.ptr26.i382, align 1, !dbg !3214, !tbaa !1507
  %tobool1.i389 = icmp eq i8 %44, 0, !dbg !3214
  br i1 %tobool1.i389, label %__str_to_int.exit392, label %while.body.i384, !dbg !3214

if.else13.i391:                                   ; preds = %while.body.i384
  call fastcc void @__emit_error(i8* getelementptr inbounds ([77 x i8]* @.str746, i64 0, i64 0)) #2, !dbg !3218
  unreachable

__str_to_int.exit392:                             ; preds = %if.then10.i390
  %conv54 = trunc i64 %add.i388 to i32, !dbg !3212
  %add55 = add i32 %conv49, 1, !dbg !3219
  %call56 = call i32 @klee_range(i32 %conv44, i32 %add55, i8* getelementptr inbounds ([7 x i8]* @.str847, i64 0, i64 0)) #2, !dbg !3219
  %cmp57644 = icmp sgt i32 %call56, 0, !dbg !3220
  br i1 %cmp57644, label %for.body.lr.ph, label %while.cond.backedge, !dbg !3220

for.body.lr.ph:                                   ; preds = %__str_to_int.exit392
  %45 = sext i32 %10 to i64
  br label %for.body, !dbg !3220

for.body:                                         ; preds = %__add_arg.exit399, %for.body.lr.ph
  %indvars.iv = phi i64 [ %45, %for.body.lr.ph ], [ %indvars.iv.next, %__add_arg.exit399 ]
  %i.0646 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %__add_arg.exit399 ]
  %sym_arg_num.1645 = phi i32 [ %sym_arg_num.0833, %for.body.lr.ph ], [ %inc59, %__add_arg.exit399 ]
  %46 = phi i32 [ %10, %for.body.lr.ph ], [ %inc.i397, %__add_arg.exit399 ]
  %add60 = add i32 %sym_arg_num.1645, 48, !dbg !3222
  %conv61 = trunc i32 %add60 to i8, !dbg !3222
  store i8 %conv61, i8* %arrayidx20, align 1, !dbg !3222, !tbaa !1507
  %call65 = call fastcc i8* @__get_sym_str(i32 %conv54, i8* %3), !dbg !3224
  %47 = trunc i64 %indvars.iv to i32, !dbg !3225
  %cmp.i393 = icmp eq i32 %47, 1024, !dbg !3225
  br i1 %cmp.i393, label %if.then.i394, label %__add_arg.exit399, !dbg !3225

if.then.i394:                                     ; preds = %for.body
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str2463, i64 0, i64 0)) #2, !dbg !3227
  unreachable

__add_arg.exit399:                                ; preds = %for.body
  %inc59 = add i32 %sym_arg_num.1645, 1, !dbg !3222
  %arrayidx.i396 = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %indvars.iv, !dbg !3228
  store i8* %call65, i8** %arrayidx.i396, align 8, !dbg !3228, !tbaa !3142
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3220
  %inc.i397 = add nsw i32 %46, 1, !dbg !3229
  %inc66 = add nsw i32 %i.0646, 1, !dbg !3220
  %cmp57 = icmp slt i32 %inc66, %call56, !dbg !3220
  br i1 %cmp57, label %for.body, label %while.cond.backedge, !dbg !3220

if.else67:                                        ; preds = %if.end.i345
  br i1 %cmp7.i279, label %while.body.i404, label %if.else175, !dbg !3230

while.body.i404:                                  ; preds = %if.end.i408, %if.else67
  %48 = phi i8 [ %49, %if.end.i408 ], [ 45, %if.else67 ]
  %b.addr.09.i401 = phi i8* [ %incdec.ptr3.i406, %if.end.i408 ], [ getelementptr inbounds ([12 x i8]* @.str948, i64 0, i64 0), %if.else67 ]
  %a.addr.08.i402 = phi i8* [ %incdec.ptr.i405, %if.end.i408 ], [ %11, %if.else67 ]
  %tobool.i403 = icmp eq i8 %48, 0, !dbg !3232
  br i1 %tobool.i403, label %if.then77, label %if.end.i408, !dbg !3232

if.end.i408:                                      ; preds = %while.body.i404
  %incdec.ptr.i405 = getelementptr inbounds i8* %a.addr.08.i402, i64 1, !dbg !3233
  %incdec.ptr3.i406 = getelementptr inbounds i8* %b.addr.09.i401, i64 1, !dbg !3234
  %49 = load i8* %incdec.ptr.i405, align 1, !dbg !3230, !tbaa !1507
  %50 = load i8* %incdec.ptr3.i406, align 1, !dbg !3230, !tbaa !1507
  %cmp.i407 = icmp eq i8 %49, %50, !dbg !3230
  br i1 %cmp.i407, label %while.body.i404, label %lor.lhs.false72, !dbg !3230

lor.lhs.false72:                                  ; preds = %if.end.i408
  br i1 %cmp7.i279, label %while.body.i415, label %if.else175, !dbg !3230

while.body.i415:                                  ; preds = %if.end.i419, %lor.lhs.false72
  %51 = phi i8 [ %52, %if.end.i419 ], [ 45, %lor.lhs.false72 ]
  %b.addr.09.i412 = phi i8* [ %incdec.ptr3.i417, %if.end.i419 ], [ getelementptr inbounds ([11 x i8]* @.str1049, i64 0, i64 0), %lor.lhs.false72 ]
  %a.addr.08.i413 = phi i8* [ %incdec.ptr.i416, %if.end.i419 ], [ %11, %lor.lhs.false72 ]
  %tobool.i414 = icmp eq i8 %51, 0, !dbg !3232
  br i1 %tobool.i414, label %if.then77, label %if.end.i419, !dbg !3232

if.end.i419:                                      ; preds = %while.body.i415
  %incdec.ptr.i416 = getelementptr inbounds i8* %a.addr.08.i413, i64 1, !dbg !3233
  %incdec.ptr3.i417 = getelementptr inbounds i8* %b.addr.09.i412, i64 1, !dbg !3234
  %52 = load i8* %incdec.ptr.i416, align 1, !dbg !3230, !tbaa !1507
  %53 = load i8* %incdec.ptr3.i417, align 1, !dbg !3230, !tbaa !1507
  %cmp.i418 = icmp eq i8 %52, %53, !dbg !3230
  br i1 %cmp.i418, label %while.body.i415, label %if.else95, !dbg !3230

if.then77:                                        ; preds = %while.body.i415, %while.body.i404
  %add79 = add nsw i32 %k.0842, 2, !dbg !3235
  %cmp80 = icmp slt i32 %add79, %0, !dbg !3235
  br i1 %cmp80, label %if.end83, label %if.then82, !dbg !3235

if.then82:                                        ; preds = %if.then77
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1150, i64 0, i64 0)), !dbg !3237
  unreachable

if.end83:                                         ; preds = %if.then77
  %inc84 = add nsw i32 %k.0842, 1, !dbg !3238
  %idxprom86 = sext i32 %inc84 to i64, !dbg !3239
  %arrayidx87 = getelementptr inbounds i8** %1, i64 %idxprom86, !dbg !3239
  %54 = load i8** %arrayidx87, align 8, !dbg !3239, !tbaa !3142
  %55 = load i8* %54, align 1, !dbg !3240, !tbaa !1507
  %tobool.i422 = icmp eq i8 %55, 0, !dbg !3240
  br i1 %tobool.i422, label %if.then.i423, label %while.body.i428, !dbg !3240

if.then.i423:                                     ; preds = %if.end83
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1150, i64 0, i64 0)) #2, !dbg !3240
  unreachable

while.body.i428:                                  ; preds = %if.then10.i434, %if.end83
  %56 = phi i8 [ %58, %if.then10.i434 ], [ %55, %if.end83 ]
  %s.pn.i424 = phi i8* [ %incdec.ptr26.i426, %if.then10.i434 ], [ %54, %if.end83 ]
  %res.025.i425 = phi i64 [ %add.i432, %if.then10.i434 ], [ 0, %if.end83 ]
  %incdec.ptr26.i426 = getelementptr inbounds i8* %s.pn.i424, i64 1, !dbg !3241
  %.off.i427 = add i8 %56, -48, !dbg !3242
  %57 = icmp ult i8 %.off.i427, 10, !dbg !3242
  br i1 %57, label %if.then10.i434, label %if.else13.i435, !dbg !3242

if.then10.i434:                                   ; preds = %while.body.i428
  %conv.i429 = sext i8 %56 to i64, !dbg !3243
  %mul.i430 = mul nsw i64 %res.025.i425, 10, !dbg !3244
  %sub.i431 = add i64 %conv.i429, -48, !dbg !3244
  %add.i432 = add i64 %sub.i431, %mul.i430, !dbg !3244
  %58 = load i8* %incdec.ptr26.i426, align 1, !dbg !3241, !tbaa !1507
  %tobool1.i433 = icmp eq i8 %58, 0, !dbg !3241
  br i1 %tobool1.i433, label %__str_to_int.exit436, label %while.body.i428, !dbg !3241

if.else13.i435:                                   ; preds = %while.body.i428
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1150, i64 0, i64 0)) #2, !dbg !3245
  unreachable

__str_to_int.exit436:                             ; preds = %if.then10.i434
  %conv89 = trunc i64 %add.i432 to i32, !dbg !3239
  %inc90 = add nsw i32 %k.0842, 3, !dbg !3246
  %idxprom91 = sext i32 %add79 to i64, !dbg !3246
  %arrayidx92 = getelementptr inbounds i8** %1, i64 %idxprom91, !dbg !3246
  %59 = load i8** %arrayidx92, align 8, !dbg !3246, !tbaa !3142
  %60 = load i8* %59, align 1, !dbg !3247, !tbaa !1507
  %tobool.i437 = icmp eq i8 %60, 0, !dbg !3247
  br i1 %tobool.i437, label %if.then.i438, label %while.body.i443, !dbg !3247

if.then.i438:                                     ; preds = %__str_to_int.exit436
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1150, i64 0, i64 0)) #2, !dbg !3247
  unreachable

while.body.i443:                                  ; preds = %if.then10.i449, %__str_to_int.exit436
  %61 = phi i8 [ %63, %if.then10.i449 ], [ %60, %__str_to_int.exit436 ]
  %s.pn.i439 = phi i8* [ %incdec.ptr26.i441, %if.then10.i449 ], [ %59, %__str_to_int.exit436 ]
  %res.025.i440 = phi i64 [ %add.i447, %if.then10.i449 ], [ 0, %__str_to_int.exit436 ]
  %incdec.ptr26.i441 = getelementptr inbounds i8* %s.pn.i439, i64 1, !dbg !3248
  %.off.i442 = add i8 %61, -48, !dbg !3249
  %62 = icmp ult i8 %.off.i442, 10, !dbg !3249
  br i1 %62, label %if.then10.i449, label %if.else13.i450, !dbg !3249

if.then10.i449:                                   ; preds = %while.body.i443
  %conv.i444 = sext i8 %61 to i64, !dbg !3250
  %mul.i445 = mul nsw i64 %res.025.i440, 10, !dbg !3251
  %sub.i446 = add i64 %conv.i444, -48, !dbg !3251
  %add.i447 = add i64 %sub.i446, %mul.i445, !dbg !3251
  %63 = load i8* %incdec.ptr26.i441, align 1, !dbg !3248, !tbaa !1507
  %tobool1.i448 = icmp eq i8 %63, 0, !dbg !3248
  br i1 %tobool1.i448, label %__str_to_int.exit451, label %while.body.i443, !dbg !3248

if.else13.i450:                                   ; preds = %while.body.i443
  call fastcc void @__emit_error(i8* getelementptr inbounds ([72 x i8]* @.str1150, i64 0, i64 0)) #2, !dbg !3252
  unreachable

__str_to_int.exit451:                             ; preds = %if.then10.i449
  %conv94 = trunc i64 %add.i447 to i32, !dbg !3246
  br label %while.cond.backedge, !dbg !3253

if.else95:                                        ; preds = %if.end.i419
  br i1 %cmp7.i279, label %while.body.i456, label %if.else175, !dbg !3254

while.body.i456:                                  ; preds = %if.end.i460, %if.else95
  %64 = phi i8 [ %65, %if.end.i460 ], [ 45, %if.else95 ]
  %b.addr.09.i453 = phi i8* [ %incdec.ptr3.i458, %if.end.i460 ], [ getelementptr inbounds ([12 x i8]* @.str1251, i64 0, i64 0), %if.else95 ]
  %a.addr.08.i454 = phi i8* [ %incdec.ptr.i457, %if.end.i460 ], [ %11, %if.else95 ]
  %tobool.i455 = icmp eq i8 %64, 0, !dbg !3256
  br i1 %tobool.i455, label %if.then105, label %if.end.i460, !dbg !3256

if.end.i460:                                      ; preds = %while.body.i456
  %incdec.ptr.i457 = getelementptr inbounds i8* %a.addr.08.i454, i64 1, !dbg !3257
  %incdec.ptr3.i458 = getelementptr inbounds i8* %b.addr.09.i453, i64 1, !dbg !3258
  %65 = load i8* %incdec.ptr.i457, align 1, !dbg !3254, !tbaa !1507
  %66 = load i8* %incdec.ptr3.i458, align 1, !dbg !3254, !tbaa !1507
  %cmp.i459 = icmp eq i8 %65, %66, !dbg !3254
  br i1 %cmp.i459, label %while.body.i456, label %lor.lhs.false100, !dbg !3254

lor.lhs.false100:                                 ; preds = %if.end.i460
  br i1 %cmp7.i279, label %while.body.i467, label %if.else175, !dbg !3259

while.body.i467:                                  ; preds = %if.end.i471, %lor.lhs.false100
  %67 = phi i8 [ %68, %if.end.i471 ], [ 45, %lor.lhs.false100 ]
  %b.addr.09.i464 = phi i8* [ %incdec.ptr3.i469, %if.end.i471 ], [ getelementptr inbounds ([11 x i8]* @.str1352, i64 0, i64 0), %lor.lhs.false100 ]
  %a.addr.08.i465 = phi i8* [ %incdec.ptr.i468, %if.end.i471 ], [ %11, %lor.lhs.false100 ]
  %tobool.i466 = icmp eq i8 %67, 0, !dbg !3261
  br i1 %tobool.i466, label %if.then105, label %if.end.i471, !dbg !3261

if.end.i471:                                      ; preds = %while.body.i467
  %incdec.ptr.i468 = getelementptr inbounds i8* %a.addr.08.i465, i64 1, !dbg !3262
  %incdec.ptr3.i469 = getelementptr inbounds i8* %b.addr.09.i464, i64 1, !dbg !3263
  %68 = load i8* %incdec.ptr.i468, align 1, !dbg !3259, !tbaa !1507
  %69 = load i8* %incdec.ptr3.i469, align 1, !dbg !3259, !tbaa !1507
  %cmp.i470 = icmp eq i8 %68, %69, !dbg !3259
  br i1 %cmp.i470, label %while.body.i467, label %if.else117, !dbg !3259

if.then105:                                       ; preds = %while.body.i467, %while.body.i456
  %inc107 = add nsw i32 %k.0842, 1, !dbg !3264
  %cmp108 = icmp eq i32 %inc107, %0, !dbg !3264
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !3264

if.then110:                                       ; preds = %if.then105
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str1453, i64 0, i64 0)), !dbg !3266
  unreachable

if.end111:                                        ; preds = %if.then105
  %inc112 = add nsw i32 %k.0842, 2, !dbg !3267
  %idxprom113 = sext i32 %inc107 to i64, !dbg !3267
  %arrayidx114 = getelementptr inbounds i8** %1, i64 %idxprom113, !dbg !3267
  %70 = load i8** %arrayidx114, align 8, !dbg !3267, !tbaa !3142
  %71 = load i8* %70, align 1, !dbg !3268, !tbaa !1507
  %tobool.i474 = icmp eq i8 %71, 0, !dbg !3268
  br i1 %tobool.i474, label %if.then.i475, label %while.body.i480, !dbg !3268

if.then.i475:                                     ; preds = %if.end111
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str1453, i64 0, i64 0)) #2, !dbg !3268
  unreachable

while.body.i480:                                  ; preds = %if.then10.i486, %if.end111
  %72 = phi i8 [ %74, %if.then10.i486 ], [ %71, %if.end111 ]
  %s.pn.i476 = phi i8* [ %incdec.ptr26.i478, %if.then10.i486 ], [ %70, %if.end111 ]
  %res.025.i477 = phi i64 [ %add.i484, %if.then10.i486 ], [ 0, %if.end111 ]
  %incdec.ptr26.i478 = getelementptr inbounds i8* %s.pn.i476, i64 1, !dbg !3269
  %.off.i479 = add i8 %72, -48, !dbg !3270
  %73 = icmp ult i8 %.off.i479, 10, !dbg !3270
  br i1 %73, label %if.then10.i486, label %if.else13.i487, !dbg !3270

if.then10.i486:                                   ; preds = %while.body.i480
  %conv.i481 = sext i8 %72 to i64, !dbg !3271
  %mul.i482 = mul nsw i64 %res.025.i477, 10, !dbg !3272
  %sub.i483 = add i64 %conv.i481, -48, !dbg !3272
  %add.i484 = add i64 %sub.i483, %mul.i482, !dbg !3272
  %74 = load i8* %incdec.ptr26.i478, align 1, !dbg !3269, !tbaa !1507
  %tobool1.i485 = icmp eq i8 %74, 0, !dbg !3269
  br i1 %tobool1.i485, label %__str_to_int.exit488, label %while.body.i480, !dbg !3269

if.else13.i487:                                   ; preds = %while.body.i480
  call fastcc void @__emit_error(i8* getelementptr inbounds ([57 x i8]* @.str1453, i64 0, i64 0)) #2, !dbg !3273
  unreachable

__str_to_int.exit488:                             ; preds = %if.then10.i486
  %conv116 = trunc i64 %add.i484 to i32, !dbg !3267
  br label %while.cond.backedge, !dbg !3274

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
  %cmp2 = icmp slt i32 %k.0.be, %0, !dbg !3154
  br i1 %cmp2, label %while.body, label %while.end, !dbg !3154

if.else117:                                       ; preds = %if.end.i471
  br i1 %cmp7.i279, label %while.body.i493, label %if.else175, !dbg !3275

while.body.i493:                                  ; preds = %if.end.i497, %if.else117
  %75 = phi i8 [ %76, %if.end.i497 ], [ 45, %if.else117 ]
  %b.addr.09.i490 = phi i8* [ %incdec.ptr3.i495, %if.end.i497 ], [ getelementptr inbounds ([13 x i8]* @.str1554, i64 0, i64 0), %if.else117 ]
  %a.addr.08.i491 = phi i8* [ %incdec.ptr.i494, %if.end.i497 ], [ %11, %if.else117 ]
  %tobool.i492 = icmp eq i8 %75, 0, !dbg !3277
  br i1 %tobool.i492, label %if.then127, label %if.end.i497, !dbg !3277

if.end.i497:                                      ; preds = %while.body.i493
  %incdec.ptr.i494 = getelementptr inbounds i8* %a.addr.08.i491, i64 1, !dbg !3278
  %incdec.ptr3.i495 = getelementptr inbounds i8* %b.addr.09.i490, i64 1, !dbg !3279
  %76 = load i8* %incdec.ptr.i494, align 1, !dbg !3275, !tbaa !1507
  %77 = load i8* %incdec.ptr3.i495, align 1, !dbg !3275, !tbaa !1507
  %cmp.i496 = icmp eq i8 %76, %77, !dbg !3275
  br i1 %cmp.i496, label %while.body.i493, label %lor.lhs.false122, !dbg !3275

lor.lhs.false122:                                 ; preds = %if.end.i497
  br i1 %cmp7.i279, label %while.body.i504, label %if.else175, !dbg !3280

while.body.i504:                                  ; preds = %if.end.i508, %lor.lhs.false122
  %78 = phi i8 [ %79, %if.end.i508 ], [ 45, %lor.lhs.false122 ]
  %b.addr.09.i501 = phi i8* [ %incdec.ptr3.i506, %if.end.i508 ], [ getelementptr inbounds ([12 x i8]* @.str1655, i64 0, i64 0), %lor.lhs.false122 ]
  %a.addr.08.i502 = phi i8* [ %incdec.ptr.i505, %if.end.i508 ], [ %11, %lor.lhs.false122 ]
  %tobool.i503 = icmp eq i8 %78, 0, !dbg !3282
  br i1 %tobool.i503, label %if.then127, label %if.end.i508, !dbg !3282

if.end.i508:                                      ; preds = %while.body.i504
  %incdec.ptr.i505 = getelementptr inbounds i8* %a.addr.08.i502, i64 1, !dbg !3283
  %incdec.ptr3.i506 = getelementptr inbounds i8* %b.addr.09.i501, i64 1, !dbg !3284
  %79 = load i8* %incdec.ptr.i505, align 1, !dbg !3280, !tbaa !1507
  %80 = load i8* %incdec.ptr3.i506, align 1, !dbg !3280, !tbaa !1507
  %cmp.i507 = icmp eq i8 %79, %80, !dbg !3280
  br i1 %cmp.i507, label %while.body.i504, label %if.else129, !dbg !3280

if.then127:                                       ; preds = %while.body.i504, %while.body.i493
  %inc128 = add nsw i32 %k.0842, 1, !dbg !3285
  br label %while.cond.backedge, !dbg !3287

if.else129:                                       ; preds = %if.end.i508
  br i1 %cmp7.i279, label %while.body.i515, label %if.else175, !dbg !3288

while.body.i515:                                  ; preds = %if.end.i519, %if.else129
  %81 = phi i8 [ %82, %if.end.i519 ], [ 45, %if.else129 ]
  %b.addr.09.i512 = phi i8* [ %incdec.ptr3.i517, %if.end.i519 ], [ getelementptr inbounds ([18 x i8]* @.str1756, i64 0, i64 0), %if.else129 ]
  %a.addr.08.i513 = phi i8* [ %incdec.ptr.i516, %if.end.i519 ], [ %11, %if.else129 ]
  %tobool.i514 = icmp eq i8 %81, 0, !dbg !3290
  br i1 %tobool.i514, label %if.then139, label %if.end.i519, !dbg !3290

if.end.i519:                                      ; preds = %while.body.i515
  %incdec.ptr.i516 = getelementptr inbounds i8* %a.addr.08.i513, i64 1, !dbg !3291
  %incdec.ptr3.i517 = getelementptr inbounds i8* %b.addr.09.i512, i64 1, !dbg !3292
  %82 = load i8* %incdec.ptr.i516, align 1, !dbg !3288, !tbaa !1507
  %83 = load i8* %incdec.ptr3.i517, align 1, !dbg !3288, !tbaa !1507
  %cmp.i518 = icmp eq i8 %82, %83, !dbg !3288
  br i1 %cmp.i518, label %while.body.i515, label %lor.lhs.false134, !dbg !3288

lor.lhs.false134:                                 ; preds = %if.end.i519
  br i1 %cmp7.i279, label %while.body.i570, label %if.else175, !dbg !3288

while.body.i570:                                  ; preds = %if.end.i574, %lor.lhs.false134
  %84 = phi i8 [ %85, %if.end.i574 ], [ 45, %lor.lhs.false134 ]
  %b.addr.09.i567 = phi i8* [ %incdec.ptr3.i572, %if.end.i574 ], [ getelementptr inbounds ([17 x i8]* @.str1857, i64 0, i64 0), %lor.lhs.false134 ]
  %a.addr.08.i568 = phi i8* [ %incdec.ptr.i571, %if.end.i574 ], [ %11, %lor.lhs.false134 ]
  %tobool.i569 = icmp eq i8 %84, 0, !dbg !3290
  br i1 %tobool.i569, label %if.then139, label %if.end.i574, !dbg !3290

if.end.i574:                                      ; preds = %while.body.i570
  %incdec.ptr.i571 = getelementptr inbounds i8* %a.addr.08.i568, i64 1, !dbg !3291
  %incdec.ptr3.i572 = getelementptr inbounds i8* %b.addr.09.i567, i64 1, !dbg !3292
  %85 = load i8* %incdec.ptr.i571, align 1, !dbg !3288, !tbaa !1507
  %86 = load i8* %incdec.ptr3.i572, align 1, !dbg !3288, !tbaa !1507
  %cmp.i573 = icmp eq i8 %85, %86, !dbg !3288
  br i1 %cmp.i573, label %while.body.i570, label %if.else141, !dbg !3288

if.then139:                                       ; preds = %while.body.i570, %while.body.i515
  %inc140 = add nsw i32 %k.0842, 1, !dbg !3293
  br label %while.cond.backedge, !dbg !3295

if.else141:                                       ; preds = %if.end.i574
  br i1 %cmp7.i279, label %while.body.i559, label %if.else175, !dbg !3296

while.body.i559:                                  ; preds = %if.end.i563, %if.else141
  %87 = phi i8 [ %88, %if.end.i563 ], [ 45, %if.else141 ]
  %b.addr.09.i556 = phi i8* [ %incdec.ptr3.i561, %if.end.i563 ], [ getelementptr inbounds ([10 x i8]* @.str1958, i64 0, i64 0), %if.else141 ]
  %a.addr.08.i557 = phi i8* [ %incdec.ptr.i560, %if.end.i563 ], [ %11, %if.else141 ]
  %tobool.i558 = icmp eq i8 %87, 0, !dbg !3298
  br i1 %tobool.i558, label %if.then151, label %if.end.i563, !dbg !3298

if.end.i563:                                      ; preds = %while.body.i559
  %incdec.ptr.i560 = getelementptr inbounds i8* %a.addr.08.i557, i64 1, !dbg !3299
  %incdec.ptr3.i561 = getelementptr inbounds i8* %b.addr.09.i556, i64 1, !dbg !3300
  %88 = load i8* %incdec.ptr.i560, align 1, !dbg !3296, !tbaa !1507
  %89 = load i8* %incdec.ptr3.i561, align 1, !dbg !3296, !tbaa !1507
  %cmp.i562 = icmp eq i8 %88, %89, !dbg !3296
  br i1 %cmp.i562, label %while.body.i559, label %lor.lhs.false146, !dbg !3296

lor.lhs.false146:                                 ; preds = %if.end.i563
  br i1 %cmp7.i279, label %while.body.i548, label %if.else175, !dbg !3296

while.body.i548:                                  ; preds = %if.end.i552, %lor.lhs.false146
  %90 = phi i8 [ %91, %if.end.i552 ], [ 45, %lor.lhs.false146 ]
  %b.addr.09.i545 = phi i8* [ %incdec.ptr3.i550, %if.end.i552 ], [ getelementptr inbounds ([9 x i8]* @.str2059, i64 0, i64 0), %lor.lhs.false146 ]
  %a.addr.08.i546 = phi i8* [ %incdec.ptr.i549, %if.end.i552 ], [ %11, %lor.lhs.false146 ]
  %tobool.i547 = icmp eq i8 %90, 0, !dbg !3298
  br i1 %tobool.i547, label %if.then151, label %if.end.i552, !dbg !3298

if.end.i552:                                      ; preds = %while.body.i548
  %incdec.ptr.i549 = getelementptr inbounds i8* %a.addr.08.i546, i64 1, !dbg !3299
  %incdec.ptr3.i550 = getelementptr inbounds i8* %b.addr.09.i545, i64 1, !dbg !3300
  %91 = load i8* %incdec.ptr.i549, align 1, !dbg !3296, !tbaa !1507
  %92 = load i8* %incdec.ptr3.i550, align 1, !dbg !3296, !tbaa !1507
  %cmp.i551 = icmp eq i8 %91, %92, !dbg !3296
  br i1 %cmp.i551, label %while.body.i548, label %if.else153, !dbg !3296

if.then151:                                       ; preds = %while.body.i548, %while.body.i559
  %inc152 = add nsw i32 %k.0842, 1, !dbg !3301
  br label %while.cond.backedge, !dbg !3303

if.else153:                                       ; preds = %if.end.i552
  br i1 %cmp7.i279, label %while.body.i537, label %if.else175, !dbg !3304

while.body.i537:                                  ; preds = %if.end.i541, %if.else153
  %93 = phi i8 [ %94, %if.end.i541 ], [ 45, %if.else153 ]
  %b.addr.09.i534 = phi i8* [ %incdec.ptr3.i539, %if.end.i541 ], [ getelementptr inbounds ([11 x i8]* @.str2160, i64 0, i64 0), %if.else153 ]
  %a.addr.08.i535 = phi i8* [ %incdec.ptr.i538, %if.end.i541 ], [ %11, %if.else153 ]
  %tobool.i536 = icmp eq i8 %93, 0, !dbg !3306
  br i1 %tobool.i536, label %if.then163, label %if.end.i541, !dbg !3306

if.end.i541:                                      ; preds = %while.body.i537
  %incdec.ptr.i538 = getelementptr inbounds i8* %a.addr.08.i535, i64 1, !dbg !3307
  %incdec.ptr3.i539 = getelementptr inbounds i8* %b.addr.09.i534, i64 1, !dbg !3308
  %94 = load i8* %incdec.ptr.i538, align 1, !dbg !3304, !tbaa !1507
  %95 = load i8* %incdec.ptr3.i539, align 1, !dbg !3304, !tbaa !1507
  %cmp.i540 = icmp eq i8 %94, %95, !dbg !3304
  br i1 %cmp.i540, label %while.body.i537, label %lor.lhs.false158, !dbg !3304

lor.lhs.false158:                                 ; preds = %if.end.i541
  br i1 %cmp7.i279, label %while.body.i526, label %if.else175, !dbg !3304

while.body.i526:                                  ; preds = %if.end.i530, %lor.lhs.false158
  %96 = phi i8 [ %97, %if.end.i530 ], [ 45, %lor.lhs.false158 ]
  %b.addr.09.i523 = phi i8* [ %incdec.ptr3.i528, %if.end.i530 ], [ getelementptr inbounds ([10 x i8]* @.str2261, i64 0, i64 0), %lor.lhs.false158 ]
  %a.addr.08.i524 = phi i8* [ %incdec.ptr.i527, %if.end.i530 ], [ %11, %lor.lhs.false158 ]
  %tobool.i525 = icmp eq i8 %96, 0, !dbg !3306
  br i1 %tobool.i525, label %if.then163, label %if.end.i530, !dbg !3306

if.end.i530:                                      ; preds = %while.body.i526
  %incdec.ptr.i527 = getelementptr inbounds i8* %a.addr.08.i524, i64 1, !dbg !3307
  %incdec.ptr3.i528 = getelementptr inbounds i8* %b.addr.09.i523, i64 1, !dbg !3308
  %97 = load i8* %incdec.ptr.i527, align 1, !dbg !3304, !tbaa !1507
  %98 = load i8* %incdec.ptr3.i528, align 1, !dbg !3304, !tbaa !1507
  %cmp.i529 = icmp eq i8 %97, %98, !dbg !3304
  br i1 %cmp.i529, label %while.body.i526, label %if.else175, !dbg !3304

if.then163:                                       ; preds = %while.body.i526, %while.body.i537
  %inc165 = add nsw i32 %k.0842, 1, !dbg !3309
  %cmp166 = icmp eq i32 %inc165, %0, !dbg !3309
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !3309

if.then168:                                       ; preds = %if.then163
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str2362, i64 0, i64 0)), !dbg !3311
  unreachable

if.end169:                                        ; preds = %if.then163
  %inc170 = add nsw i32 %k.0842, 2, !dbg !3312
  %idxprom171 = sext i32 %inc165 to i64, !dbg !3312
  %arrayidx172 = getelementptr inbounds i8** %1, i64 %idxprom171, !dbg !3312
  %99 = load i8** %arrayidx172, align 8, !dbg !3312, !tbaa !3142
  %100 = load i8* %99, align 1, !dbg !3313, !tbaa !1507
  %tobool.i290 = icmp eq i8 %100, 0, !dbg !3313
  br i1 %tobool.i290, label %if.then.i291, label %while.body.i292, !dbg !3313

if.then.i291:                                     ; preds = %if.end169
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str2362, i64 0, i64 0)) #2, !dbg !3313
  unreachable

while.body.i292:                                  ; preds = %if.then10.i, %if.end169
  %101 = phi i8 [ %103, %if.then10.i ], [ %100, %if.end169 ]
  %s.pn.i = phi i8* [ %incdec.ptr26.i, %if.then10.i ], [ %99, %if.end169 ]
  %res.025.i = phi i64 [ %add.i, %if.then10.i ], [ 0, %if.end169 ]
  %incdec.ptr26.i = getelementptr inbounds i8* %s.pn.i, i64 1, !dbg !3314
  %.off.i = add i8 %101, -48, !dbg !3315
  %102 = icmp ult i8 %.off.i, 10, !dbg !3315
  br i1 %102, label %if.then10.i, label %if.else13.i, !dbg !3315

if.then10.i:                                      ; preds = %while.body.i292
  %conv.i = sext i8 %101 to i64, !dbg !3316
  %mul.i = mul nsw i64 %res.025.i, 10, !dbg !3317
  %sub.i = add i64 %conv.i, -48, !dbg !3317
  %add.i = add i64 %sub.i, %mul.i, !dbg !3317
  %103 = load i8* %incdec.ptr26.i, align 1, !dbg !3314, !tbaa !1507
  %tobool1.i = icmp eq i8 %103, 0, !dbg !3314
  br i1 %tobool1.i, label %__str_to_int.exit, label %while.body.i292, !dbg !3314

if.else13.i:                                      ; preds = %while.body.i292
  call fastcc void @__emit_error(i8* getelementptr inbounds ([54 x i8]* @.str2362, i64 0, i64 0)) #2, !dbg !3318
  unreachable

__str_to_int.exit:                                ; preds = %if.then10.i
  %conv174 = trunc i64 %add.i to i32, !dbg !3312
  br label %while.cond.backedge, !dbg !3319

if.else175:                                       ; preds = %if.end.i530, %lor.lhs.false158, %if.else153, %lor.lhs.false146, %if.else141, %lor.lhs.false134, %if.else129, %lor.lhs.false122, %if.else117, %lor.lhs.false100, %if.else95, %lor.lhs.false72, %if
  %cmp.i277 = icmp eq i32 %10, 1024, !dbg !3320
  br i1 %cmp.i277, label %if.then.i, label %__add_arg.exit, !dbg !3320

if.then.i:                                        ; preds = %if.else175
  call fastcc void @__emit_error(i8* getelementptr inbounds ([37 x i8]* @.str2463, i64 0, i64 0)) #2, !dbg !3323
  unreachable

__add_arg.exit:                                   ; preds = %if.else175
  %inc177 = add nsw i32 %k.0842, 1, !dbg !3321
  %idxprom.i = sext i32 %10 to i64, !dbg !3324
  %arrayidx.i = getelementptr inbounds [1024 x i8*]* %new_argv, i64 0, i64 %idxprom.i, !dbg !3324
  store i8* %11, i8** %arrayidx.i, align 8, !dbg !3324, !tbaa !3142
  %inc.i = add nsw i32 %10, 1, !dbg !3325
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %sym_files.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_files.0.be, %while.cond.backedge ]
  %sym_file_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_file_len.0.be, %while.cond.backedge ]
  %sym_stdin_len.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdin_len.0.be, %while.cond.backedge ]
  %sym_stdout_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %sym_stdout_flag.0.be, %while.cond.backedge ]
  %save_all_writes_flag.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %save_all_writes_flag.0.be, %while.cond.backedge ]
  %fd_fail.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %fd_fail.0.be, %while.cond.backedge ]
  %.lcssa648 = phi i32 [ 0, %while.cond.preheader ], [ %.be, %while.cond.backedge ]
  %add188 = add nsw i32 %.lcssa648, 1, !dbg !3326
  %conv189 = sext i32 %add188 to i64, !dbg !3326
  %int_cast_to_i64 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i64), !dbg !3326
  %mul = shl nsw i64 %conv189, 3, !dbg !3326
  %call190 = call noalias i8* @malloc(i64 %mul) #2, !dbg !3326
  %104 = bitcast i8* %call190 to i8**, !dbg !3326
  call void @klee_mark_global(i8* %call190) #2, !dbg !3327
  %conv191 = sext i32 %.lcssa648 to i64, !dbg !3328
  %int_cast_to_i641 = bitcast i64 3 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !3328
  %mul192 = shl nsw i64 %conv191, 3, !dbg !3328
  %105 = call i8* @memcpy(i8* %call190, i8* %2, i64 %mul192)
  %arrayidx194 = getelementptr inbounds i8** %104, i64 %conv191, !dbg !3329
  store i8* null, i8** %arrayidx194, align 8, !dbg !3329, !tbaa !3142
  store i32 %.lcssa648, i32* %argcPtr, align 4, !dbg !3330, !tbaa !1554
  store i8** %104, i8*** %argvPtr, align 8, !dbg !3331, !tbaa !3142
  call void @klee_init_fds(i32 %sym_files.0.lcssa, i32 %sym_file_len.0.lcssa, i32 %sym_stdin_len.0.lcssa, i32 %sym_stdout_flag.0.lcssa, i32 %save_all_writes_flag.0.lcssa, i32 %fd_fail.0.lcssa) #2, !dbg !3332
  ret void, !dbg !3333
}

declare void @klee_mark_global(i8*) #8

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #11

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @__emit_error(i8* %msg) #12 {
entry:
  tail call void @klee_report_error(i8* getelementptr inbounds ([46 x i8]* @.str2564, i64 0, i64 0), i32 24, i8* %msg, i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0)) #15, !dbg !3334
  unreachable, !dbg !3334
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @__get_sym_str(i32 %numChars, i8* %name) #6 {
entry:
  %add = add nsw i32 %numChars, 1, !dbg !3335
  %conv = sext i32 %add to i64, !dbg !3335
  %call = tail call noalias i8* @malloc(i64 %conv) #2, !dbg !3335
  tail call void @klee_mark_global(i8* %call) #2, !dbg !3336
  tail call void @klee_make_symbolic(i8* %call, i64 %conv, i8* %name) #2, !dbg !3337
  %cmp18 = icmp sgt i32 %numChars, 0, !dbg !3338
  br i1 %cmp18, label %for.body, label %for.end, !dbg !3338

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !3340
  %0 = load i8* %arrayidx, align 1, !dbg !3340, !tbaa !1507
  %cmp.i = icmp sgt i8 %0, 31, !dbg !3341
  %cmp3.i = icmp ne i8 %0, 127, !dbg !3341
  %cmp3..i = and i1 %cmp.i, %cmp3.i, !dbg !3341
  %conv5 = zext i1 %cmp3..i to i64, !dbg !3340
  tail call void @klee_posix_prefer_cex(i8* %call, i64 %conv5) #2, !dbg !3340
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3338
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3338
  %exitcond = icmp eq i32 %lftr.wideiv, %numChars, !dbg !3338
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3338

for.end:                                          ; preds = %for.body, %entry
  %idxprom6 = sext i32 %numChars to i64, !dbg !3342
  %arrayidx7 = getelementptr inbounds i8* %call, i64 %idxprom6, !dbg !3342
  store i8 0, i8* %arrayidx7, align 1, !dbg !3342, !tbaa !1507
  ret i8* %call, !dbg !3343
}

; Function Attrs: nounwind uwtable
define i32 @open64(i8* %pathname, i32 %flags, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %and = and i32 %flags, 64, !dbg !3344
  %tobool = icmp eq i32 %and, 0, !dbg !3344
  br i1 %tobool, label %if.end, label %if.then, !dbg !3344

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !3345
  call void @llvm.va_start(i8* %arraydecay1), !dbg !3345
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !3346
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !3346
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !3346
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3346

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !3346
  %reg_save_area = load i8** %0, align 16, !dbg !3346
  %1 = sext i32 %gp_offset to i64, !dbg !3346
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !3346
  %3 = add i32 %gp_offset, 8, !dbg !3346
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !3346
  br label %vaarg.end, !dbg !3346

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !3346
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !3346
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !3346
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3346
  br label %vaarg.end, !dbg !3346

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !3346
  %4 = load i32* %vaarg.addr, align 4, !dbg !3346
  call void @llvm.va_end(i8* %arraydecay1), !dbg !3347
  br label %if.end, !dbg !3348

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) #2, !dbg !3349
  ret i32 %call, !dbg !3349
}

; Function Attrs: nounwind uwtable
define i32 @openat64(i32 %fd, i8* %pathname, i32 %flags, ...) #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %and = and i32 %flags, 64, !dbg !3350
  %tobool = icmp eq i32 %and, 0, !dbg !3350
  br i1 %tobool, label %if.end, label %if.then, !dbg !3350

if.then:                                          ; preds = %entry
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !3351
  call void @llvm.va_start(i8* %arraydecay1), !dbg !3351
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !3352
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !3352
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !3352
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3352

vaarg.in_reg:                                     ; preds = %if.then
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !3352
  %reg_save_area = load i8** %0, align 16, !dbg !3352
  %1 = sext i32 %gp_offset to i64, !dbg !3352
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !3352
  %3 = add i32 %gp_offset, 8, !dbg !3352
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !3352
  br label %vaarg.end, !dbg !3352

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !3352
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !3352
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !3352
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3352
  br label %vaarg.end, !dbg !3352

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !3352
  %4 = load i32* %vaarg.addr, align 4, !dbg !3352
  call void @llvm.va_end(i8* %arraydecay1), !dbg !3353
  br label %if.end, !dbg !3354

if.end:                                           ; preds = %vaarg.end, %entry
  %mode.0 = phi i32 [ %4, %vaarg.end ], [ 0, %entry ]
  %call = call i32 @__fd_openat(i32 %fd, i8* %pathname, i32 %flags, i32 %mode.0) #2, !dbg !3355
  ret i32 %call, !dbg !3355
}

; Function Attrs: nounwind uwtable
define i64 @lseek64(i32 %fd, i64 %offset, i32 %whence) #6 {
entry:
  %call = tail call i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) #2, !dbg !3356
  ret i64 %call, !dbg !3356
}

; Function Attrs: nounwind uwtable
define i32 @__xstat64(i32 %vers, i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !3357
  %call = tail call i32 @__fd_stat(i8* %path, %struct.stat64* %0) #2, !dbg !3357
  ret i32 %call, !dbg !3357
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @stat64(i8* %path, %struct.stat64* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !3358
  %call = tail call i32 @__fd_stat(i8* %path, %struct.stat64* %0) #2, !dbg !3358
  ret i32 %call, !dbg !3358
}

; Function Attrs: nounwind uwtable
define i32 @__lxstat64(i32 %vers, i8* %path, %struct.stat64* %buf) #6 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !3359
  %call = tail call i32 @__fd_lstat(i8* %path, %struct.stat64* %0) #2, !dbg !3359
  ret i32 %call, !dbg !3359
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @lstat64(i8* %path, %struct.stat64* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !3360
  %call = tail call i32 @__fd_lstat(i8* %path, %struct.stat64* %0) #2, !dbg !3360
  ret i32 %call, !dbg !3360
}

; Function Attrs: nounwind uwtable
define i32 @__fxstat64(i32 %vers, i32 %fd, %struct.stat64* %buf) #6 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !3361
  %call = tail call i32 @__fd_fstat(i32 %fd, %struct.stat64* %0) #2, !dbg !3361
  ret i32 %call, !dbg !3361
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @fstat64(i32 %fd, %struct.stat64* %buf) #10 {
entry:
  %0 = bitcast %struct.stat64* %buf to %struct.stat64*, !dbg !3362
  %call = tail call i32 @__fd_fstat(i32 %fd, %struct.stat64* %0) #2, !dbg !3362
  ret i32 %call, !dbg !3362
}

; Function Attrs: nounwind uwtable
define i32 @ftruncate64(i32 %fd, i64 %length) #6 {
entry:
  %call = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) #2, !dbg !3363
  ret i32 %call, !dbg !3363
}

; Function Attrs: nounwind uwtable
define weak i32 @statfs64(i8* %path, %struct.statfs* %buf) #6 {
entry:
  %call = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) #2, !dbg !3364
  ret i32 %call, !dbg !3364
}

; Function Attrs: nounwind uwtable
define i32 @getdents64(i32 %fd, %struct.dirent* %dirp, i32 %count) #6 {
entry:
  %0 = bitcast %struct.dirent* %dirp to %struct.dirent64*, !dbg !3365
  %call = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent64* %0, i32 %count) #2, !dbg !3365
  ret i32 %call, !dbg !3365
}

declare zeroext i1 @klee_is_infinite_float(float) #8

declare zeroext i1 @klee_is_infinite_double(double) #8

declare zeroext i1 @klee_is_infinite_long_double(x86_fp80) #8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinff(float %f) #13 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_float(float %f) #16
  %cmp = fcmp ogt float %f, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinf(double %d) #13 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_double(double %d) #16
  %cmp = fcmp ogt double %d, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline optnone
define i32 @klee_internal_isinfl(x86_fp80 %d) #14 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %d) #16
  %cmp = fcmp ogt x86_fp80 %d, 0xK00000000000000000000
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: nounwind uwtable
define double @klee_internal_fabs(double %d) #6 {
entry:
  %call = tail call double @klee_abs_double(double %d) #16, !dbg !3366
  ret double %call, !dbg !3366
}

declare double @klee_abs_double(double) #8

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #6 {
entry:
  %call = tail call float @klee_abs_float(float %f) #16, !dbg !3367
  ret float %call, !dbg !3367
}

declare float @klee_abs_float(float) #8

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #6 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #16, !dbg !3368
  ret x86_fp80 %call, !dbg !3368
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #6 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #16, !dbg !3369
  %0 = icmp ult i32 %call, 5, !dbg !3370
  br i1 %0, label %switch.lookup, label %return, !dbg !3370

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !3370
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !3370
  %switch.load = load i32* %switch.gep, align 4, !dbg !3370
  ret i32 %switch.load, !dbg !3370

return:                                           ; preds = %entry
  ret i32 -1, !dbg !3371
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
  ], !dbg !3372

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #16, !dbg !3373
  br label %return, !dbg !3375

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #16, !dbg !3376
  br label %return, !dbg !3377

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #16, !dbg !3378
  br label %return, !dbg !3379

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #16, !dbg !3380
  br label %return, !dbg !3381

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !3382
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #16, !dbg !3383
  %conv = zext i1 %call to i32, !dbg !3383
  ret i32 %conv, !dbg !3383
}

declare zeroext i1 @klee_is_nan_float(float) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #16, !dbg !3384
  %conv = zext i1 %call to i32, !dbg !3384
  ret i32 %conv, !dbg !3384
}

declare zeroext i1 @klee_is_nan_double(double) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #16, !dbg !3385
  %conv = zext i1 %call to i32, !dbg !3385
  ret i32 %conv, !dbg !3385
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #16, !dbg !3386
  br i1 %call, label %return, label %if.else, !dbg !3386

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #16, !dbg !3388
  br i1 %call1, label %return, label %if.else3, !dbg !3388

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !3390
  br i1 %cmp, label %return, label %if.else5, !dbg !3390

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #16, !dbg !3392
  %. = select i1 %call6, i32 4, i32 3, !dbg !3394
  br label %return, !dbg !3394

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3396
}

declare zeroext i1 @klee_is_normal_float(float) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #16, !dbg !3397
  br i1 %call, label %return, label %if.else, !dbg !3397

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #16, !dbg !3399
  br i1 %call1, label %return, label %if.else3, !dbg !3399

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !3401
  br i1 %cmp, label %return, label %if.else5, !dbg !3401

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #16, !dbg !3403
  %. = select i1 %call6, i32 4, i32 3, !dbg !3405
  br label %return, !dbg !3405

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3407
}

declare zeroext i1 @klee_is_normal_double(double) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #16, !dbg !3408
  br i1 %call, label %return, label %if.else, !dbg !3408

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #16, !dbg !3410
  br i1 %call1, label %return, label %if.else3, !dbg !3410

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !3412
  br i1 %cmp, label %return, label %if.else5, !dbg !3412

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #16, !dbg !3414
  %. = select i1 %call6, i32 4, i32 3, !dbg !3416
  br label %return, !dbg !3416

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3418
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #8

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #16, !dbg !3419
  %0 = zext i1 %call to i32, !dbg !3419
  %lnot.ext = xor i32 %0, 1, !dbg !3419
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #16, !dbg !3419
  %1 = zext i1 %call1 to i32, !dbg !3419
  %lnot.ext3 = xor i32 %1, 1, !dbg !3419
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3419
  ret i32 %and, !dbg !3419
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #16, !dbg !3420
  %0 = zext i1 %call to i32, !dbg !3420
  %lnot.ext = xor i32 %0, 1, !dbg !3420
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #16, !dbg !3420
  %1 = zext i1 %call1 to i32, !dbg !3420
  %lnot.ext3 = xor i32 %1, 1, !dbg !3420
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3420
  ret i32 %and, !dbg !3420
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #6 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #16, !dbg !3421
  %0 = zext i1 %call to i32, !dbg !3421
  %lnot.ext = xor i32 %0, 1, !dbg !3421
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #16, !dbg !3421
  %1 = zext i1 %call1 to i32, !dbg !3421
  %lnot.ext3 = xor i32 %1, 1, !dbg !3421
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3421
  ret i32 %and, !dbg !3421
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #6 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !3422
  br i1 %cmp, label %if.then, label %if.end, !dbg !3422

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str71, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str172, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str273, i64 0, i64 0)) #17, !dbg !3424
  unreachable, !dbg !3424

if.end:                                           ; preds = %entry
  ret void, !dbg !3425
}

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #6 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !3426
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #16, !dbg !3426
  %1 = load i32* %x, align 4, !dbg !3427, !tbaa !1554
  ret i32 %1, !dbg !3427
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #6 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !3428
  br i1 %cmp, label %if.end, label %if.then, !dbg !3428

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str374, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1475, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2576, i64 0, i64 0)) #17, !dbg !3430
  unreachable, !dbg !3430

if.end:                                           ; preds = %entry
  ret void, !dbg !3432
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #6 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !3433
  br i1 %cmp, label %if.end, label %if.then, !dbg !3433

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str677, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1778, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #17, !dbg !3435
  unreachable, !dbg !3435

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !3436
  %cmp1 = icmp eq i32 %add, %end, !dbg !3436
  br i1 %cmp1, label %return, label %if.else, !dbg !3436

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !3438
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #16, !dbg !3438
  %cmp3 = icmp eq i32 %start, 0, !dbg !3440
  %1 = load i32* %x, align 4, !dbg !3442, !tbaa !1554
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !3440

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !3442
  %conv6 = zext i1 %cmp5 to i64, !dbg !3442
  call void @klee_assume(i64 %conv6) #16, !dbg !3442
  br label %if.end14, !dbg !3444

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !3445
  %conv10 = zext i1 %cmp8 to i64, !dbg !3445
  call void @klee_assume(i64 %conv10) #16, !dbg !3445
  %2 = load i32* %x, align 4, !dbg !3447, !tbaa !1554
  %cmp11 = icmp slt i32 %2, %end, !dbg !3447
  %conv13 = zext i1 %cmp11 to i64, !dbg !3447
  call void @klee_assume(i64 %conv13) #16, !dbg !3447
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !3448, !tbaa !1554
  br label %return, !dbg !3448

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !3449
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
  ], !dbg !3450

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #16, !dbg !3451
  br label %sw.epilog, !dbg !3451

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #16, !dbg !3453
  br label %sw.epilog, !dbg !3453

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #16, !dbg !3454
  br label %sw.epilog, !dbg !3454

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #16, !dbg !3455
  br label %sw.epilog, !dbg !3455

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #16, !dbg !3456
  br label %sw.epilog, !dbg !3456

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str979, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #17, !dbg !3457
  unreachable, !dbg !3457

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !3458
}

declare void @klee_set_rounding_mode_internal(i32) #8

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !3459
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !3459

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3460
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3460
  %next.gep.sum282 = or i64 %index, 16, !dbg !3460
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !3460
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3460
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !3460
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !3460
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3460
  %next.gep106.sum299 = or i64 %index, 16, !dbg !3460
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !3460
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3460
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !3460
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3461

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
  %dec = add i64 %len.addr.04, -1, !dbg !3459
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !3460
  %8 = load i8* %src.06, align 1, !dbg !3460, !tbaa !1507
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !3460
  store i8 %8, i8* %dest.05, align 1, !dbg !3460, !tbaa !1507
  %cmp = icmp eq i64 %dec, 0, !dbg !3459
  br i1 %cmp, label %while.end, label %while.body, !dbg !3459, !llvm.loop !3464

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !3465
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #6 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !3466
  br i1 %cmp, label %return, label %if.end, !dbg !3466

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !3468
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !3468

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !3470
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !3470

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3470
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3470
  %next.gep.sum610 = or i64 %index, 16, !dbg !3470
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !3470
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3470
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !3470
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !3470
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3470
  %next.gep136.sum627 = or i64 %index, 16, !dbg !3470
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !3470
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3470
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !3470
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3472

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
  %dec = add i64 %count.addr.028, -1, !dbg !3470
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !3470
  %8 = load i8* %b.030, align 1, !dbg !3470, !tbaa !1507
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !3470
  store i8 %8, i8* %a.029, align 1, !dbg !3470, !tbaa !1507
  %tobool = icmp eq i64 %dec, 0, !dbg !3470
  br i1 %tobool, label %return, label %while.body, !dbg !3470, !llvm.loop !3473

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !3474
  %tobool832 = icmp eq i64 %count, 0, !dbg !3476
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !3476

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !3477
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !3474
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !3476
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !3476
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !3476
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !3476
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3476
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !3476
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !3476
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !3476
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !3476
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3476
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3476
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !3476
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !3476
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !3476
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !3476
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3476
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !3476
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !3476
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !3476
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !3476
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !3478

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !3476
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !3476
  %19 = load i8* %b.135, align 1, !dbg !3476, !tbaa !1507
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !3476
  store i8 %19, i8* %a.134, align 1, !dbg !3476, !tbaa !1507
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !3476
  br i1 %tobool8, label %return, label %while.body9, !dbg !3476, !llvm.loop !3479

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !3480
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !3481
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !3481

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3482
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3482
  %next.gep.sum283 = or i64 %index, 16, !dbg !3482
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !3482
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3482
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !3482
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !3482
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3482
  %next.gep107.sum300 = or i64 %index, 16, !dbg !3482
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !3482
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3482
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !3482
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3483

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
  %dec = add i64 %len.addr.04, -1, !dbg !3481
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !3482
  %8 = load i8* %src.06, align 1, !dbg !3482, !tbaa !1507
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !3482
  store i8 %8, i8* %dest.05, align 1, !dbg !3482, !tbaa !1507
  %cmp = icmp eq i64 %dec, 0, !dbg !3481
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !3481, !llvm.loop !3484

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !3481

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !3485
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #6 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !3486
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !3486

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !3487
  br label %while.body, !dbg !3486

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !3486
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !3487
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !3487, !tbaa !1507
  %cmp = icmp eq i64 %dec, 0, !dbg !3486
  br i1 %cmp, label %while.end, label %while.body, !dbg !3486

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !3488
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #6 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #16, !dbg !3489
  ret double %call, !dbg !3489
}

declare double @klee_sqrt_double(double) #8

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #6 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #16, !dbg !3490
  ret float %call, !dbg !3490
}

declare float @klee_sqrt_float(float) #8

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #6 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #16, !dbg !3491
  ret x86_fp80 %call, !dbg !3491
}

declare x86_fp80 @klee_sqrt_long_double(x86_fp80) #8

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #5 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline nounwind optnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noinline optnone }
attributes #15 = { noreturn nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !15, !696, !906, !1018, !1113, !1262, !1284, !1313, !1358, !1368, !1376, !1387, !1399, !1409, !1423, !1437, !1451, !1466}
!llvm.module.flags = !{!1479, !1480}
!llvm.ident = !{!1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481, !1481}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"file_posix_cp_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/covert_propogation"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !2, i32 8} ; [ 
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/covert_propogation/file_posix_cp_l1_klee_annotated.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 29, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 29} ; [ DW_TAG_s
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786449, metadata !16, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!16 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!17 = metadata !{metadata !18, metadata !25}
!18 = metadata !{i32 786436, metadata !19, null, metadata !"", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 26, size 32, align 32, offset 0] [def] [from ]
!19 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24}
!21 = metadata !{i32 786472, metadata !"eOpen", i64 1} ; [ DW_TAG_enumerator ] [eOpen :: 1]
!22 = metadata !{i32 786472, metadata !"eCloseOnExec", i64 2} ; [ DW_TAG_enumerator ] [eCloseOnExec :: 2]
!23 = metadata !{i32 786472, metadata !"eReadable", i64 4} ; [ DW_TAG_enumerator ] [eReadable :: 4]
!24 = metadata !{i32 786472, metadata !"eWriteable", i64 8} ; [ DW_TAG_enumerator ] [eWriteable :: 8]
!25 = metadata !{i32 786436, metadata !26, null, metadata !"", i32 97, i64 32, i64 32, i32 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 97, size 32, align 32, offset 0] [def] [from ]
!26 = metadata !{metadata !"/usr/include/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!28 = metadata !{i32 786472, metadata !"DT_UNKNOWN", i64 0} ; [ DW_TAG_enumerator ] [DT_UNKNOWN :: 0]
!29 = metadata !{i32 786472, metadata !"DT_FIFO", i64 1} ; [ DW_TAG_enumerator ] [DT_FIFO :: 1]
!30 = metadata !{i32 786472, metadata !"DT_CHR", i64 2} ; [ DW_TAG_enumerator ] [DT_CHR :: 2]
!31 = metadata !{i32 786472, metadata !"DT_DIR", i64 4} ; [ DW_TAG_enumerator ] [DT_DIR :: 4]
!32 = metadata !{i32 786472, metadata !"DT_BLK", i64 6} ; [ DW_TAG_enumerator ] [DT_BLK :: 6]
!33 = metadata !{i32 786472, metadata !"DT_REG", i64 8} ; [ DW_TAG_enumerator ] [DT_REG :: 8]
!34 = metadata !{i32 786472, metadata !"DT_LNK", i64 10} ; [ DW_TAG_enumerator ] [DT_LNK :: 10]
!35 = metadata !{i32 786472, metadata !"DT_SOCK", i64 12} ; [ DW_TAG_enumerator ] [DT_SOCK :: 12]
!36 = metadata !{i32 786472, metadata !"DT_WHT", i64 14} ; [ DW_TAG_enumerator ] [DT_WHT :: 14]
!37 = metadata !{metadata !38, metadata !99, metadata !106, metadata !129, metadata !143, metadata !159, metadata !170, metadata !177, metadata !192, metadata !207, metadata !216, metadata !225, metadata !258, metadata !265, metadata !273, metadata !280,
!38 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"access", metadata !"access", metadata !"", i32 73, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @access, null, null, metadata !44, i32 73} ; [ D
!39 = metadata !{i32 786473, metadata !16}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !8, metadata !42, metadata !8}
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !96}
!45 = metadata !{i32 786689, metadata !38, metadata !"pathname", metadata !39, i32 16777289, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 73]
!46 = metadata !{i32 786689, metadata !38, metadata !"mode", metadata !39, i32 33554505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 73]
!47 = metadata !{i32 786688, metadata !38, metadata !"dfile", metadata !39, i32 74, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 74]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!49 = metadata !{i32 786454, metadata !16, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!50 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!51 = metadata !{metadata !52, metadata !54, metadata !55}
!52 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!53 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!54 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!55 = metadata !{i32 786445, metadata !19, metadata !50, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !56} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!57 = metadata !{i32 786451, metadata !58, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !59, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!58 = metadata !{metadata !"/usr/include/bits/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!59 = metadata !{metadata !60, metadata !63, metadata !65, metadata !67, metadata !69, metadata !71, metadata !73, metadata !74, metadata !75, metadata !78, metadata !80, metadata !82, metadata !90, metadata !91, metadata !92}
!60 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!61 = metadata !{i32 786454, metadata !58, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!64 = metadata !{i32 786454, metadata !58, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!65 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!66 = metadata !{i32 786454, metadata !58, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!67 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!68 = metadata !{i32 786454, metadata !58, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!69 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!70 = metadata !{i32 786454, metadata !58, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!71 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !72} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!72 = metadata !{i32 786454, metadata !58, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!73 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!74 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!75 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!76 = metadata !{i32 786454, metadata !58, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!77 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!78 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!79 = metadata !{i32 786454, metadata !58, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!80 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !81} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!81 = metadata !{i32 786454, metadata !58, null, metadata !"__blkcnt64_t", i32 159, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 159, size 0, align 0, offset 0] [from long int]
!82 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !83} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!83 = metadata !{i32 786451, metadata !84, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !85, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!84 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!85 = metadata !{metadata !86, metadata !88}
!86 = metadata !{i32 786445, metadata !84, metadata !83, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!87 = metadata !{i32 786454, metadata !84, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!88 = metadata !{i32 786445, metadata !84, metadata !83, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!89 = metadata !{i32 786454, metadata !84, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!90 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !83} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!91 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !83} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!92 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !93} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !89, metadata !94, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!96 = metadata !{i32 786688, metadata !97, metadata !"r", metadata !39, i32 81, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 81]
!97 = metadata !{i32 786443, metadata !16, metadata !98, i32 80, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!98 = metadata !{i32 786443, metadata !16, metadata !38, i32 76, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!99 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"umask", metadata !"umask", metadata !"", i32 88, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @umask, null, null, metadata !103, i32 88} ; [ DW_TAG_
!100 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !68, metadata !102}
!102 = metadata !{i32 786454, metadata !16, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!103 = metadata !{metadata !104, metadata !105}
!104 = metadata !{i32 786689, metadata !99, metadata !"mask", metadata !39, i32 16777304, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 88]
!105 = metadata !{i32 786688, metadata !99, metadata !"r", metadata !39, i32 89, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 89]
!106 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_open", metadata !"__fd_open", metadata !"", i32 128, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @__fd_open, null, null, metadata !
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !8, metadata !42, metadata !8, metadata !102}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !125, metadata !126}
!110 = metadata !{i32 786689, metadata !106, metadata !"pathname", metadata !39, i32 16777344, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 128]
!111 = metadata !{i32 786689, metadata !106, metadata !"flags", metadata !39, i32 33554560, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 128]
!112 = metadata !{i32 786689, metadata !106, metadata !"mode", metadata !39, i32 50331776, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 128]
!113 = metadata !{i32 786688, metadata !106, metadata !"df", metadata !39, i32 129, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 129]
!114 = metadata !{i32 786688, metadata !106, metadata !"f", metadata !39, i32 130, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 130]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_file_t]
!116 = metadata !{i32 786454, metadata !16, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!117 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !124}
!119 = metadata !{i32 786445, metadata !19, metadata !117, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!120 = metadata !{i32 786445, metadata !19, metadata !117, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!121 = metadata !{i32 786445, metadata !19, metadata !117, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !122} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!122 = metadata !{i32 786454, metadata !19, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!123 = metadata !{i32 786454, metadata !19, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!124 = metadata !{i32 786445, metadata !19, metadata !117, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!125 = metadata !{i32 786688, metadata !106, metadata !"fd", metadata !39, i32 131, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 131]
!126 = metadata !{i32 786688, metadata !127, metadata !"os_fd", metadata !39, i32 181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 181]
!127 = metadata !{i32 786443, metadata !16, metadata !128, i32 180, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!128 = metadata !{i32 786443, metadata !16, metadata !106, i32 147, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!129 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_openat", metadata !"__fd_openat", metadata !"", i32 201, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, i32)* @__fd_openat, null, null,
!130 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !8, metadata !8, metadata !42, metadata !8, metadata !102}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !142}
!133 = metadata !{i32 786689, metadata !129, metadata !"basefd", metadata !39, i32 16777417, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [basefd] [line 201]
!134 = metadata !{i32 786689, metadata !129, metadata !"pathname", metadata !39, i32 33554633, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 201]
!135 = metadata !{i32 786689, metadata !129, metadata !"flags", metadata !39, i32 50331849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 201]
!136 = metadata !{i32 786689, metadata !129, metadata !"mode", metadata !39, i32 67109065, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 201]
!137 = metadata !{i32 786688, metadata !129, metadata !"f", metadata !39, i32 202, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 202]
!138 = metadata !{i32 786688, metadata !129, metadata !"fd", metadata !39, i32 203, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 203]
!139 = metadata !{i32 786688, metadata !140, metadata !"bf", metadata !39, i32 205, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bf] [line 205]
!140 = metadata !{i32 786443, metadata !16, metadata !141, i32 204, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!141 = metadata !{i32 786443, metadata !16, metadata !129, i32 204, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!142 = metadata !{i32 786688, metadata !129, metadata !"os_fd", metadata !39, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_fd] [line 236]
!143 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"utimes", metadata !"utimes", metadata !"", i32 256, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.timeval*)* @utimes, null, null, metadata !1
!144 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{metadata !8, metadata !42, metadata !146}
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timeval]
!148 = metadata !{i32 786451, metadata !149, null, metadata !"timeval", i32 30, i64 128, i64 64, i32 0, i32 0, null, metadata !150, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timeval] [line 30, size 128, align 64, offset 0] [def] [from ]
!149 = metadata !{metadata !"/usr/include/bits/time.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!150 = metadata !{metadata !151, metadata !152}
!151 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"tv_sec", i32 32, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [tv_sec] [line 32, size 64, align 64, offset 0] [from __time_t]
!152 = metadata !{i32 786445, metadata !149, metadata !148, metadata !"tv_usec", i32 33, i64 64, i64 64, i64 64, i32 0, metadata !153} ; [ DW_TAG_member ] [tv_usec] [line 33, size 64, align 64, offset 64] [from __suseconds_t]
!153 = metadata !{i32 786454, metadata !149, null, metadata !"__suseconds_t", i32 141, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__suseconds_t] [line 141, size 0, align 0, offset 0] [from long int]
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158}
!155 = metadata !{i32 786689, metadata !143, metadata !"path", metadata !39, i32 16777472, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 256]
!156 = metadata !{i32 786689, metadata !143, metadata !"times", metadata !39, i32 33554688, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 256]
!157 = metadata !{i32 786688, metadata !143, metadata !"dfile", metadata !39, i32 257, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 257]
!158 = metadata !{i32 786688, metadata !143, metadata !"r", metadata !39, i32 269, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 269]
!159 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"futimesat", metadata !"futimesat", metadata !"", i32 277, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.timeval*)* @futimesat, null, nul
!160 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{metadata !8, metadata !8, metadata !42, metadata !146}
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !169}
!163 = metadata !{i32 786689, metadata !159, metadata !"fd", metadata !39, i32 16777493, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 277]
!164 = metadata !{i32 786689, metadata !159, metadata !"path", metadata !39, i32 33554709, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 277]
!165 = metadata !{i32 786689, metadata !159, metadata !"times", metadata !39, i32 50331925, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [times] [line 277]
!166 = metadata !{i32 786688, metadata !167, metadata !"f", metadata !39, i32 279, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 279]
!167 = metadata !{i32 786443, metadata !16, metadata !168, i32 278, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!168 = metadata !{i32 786443, metadata !16, metadata !159, i32 278, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!169 = metadata !{i32 786688, metadata !159, metadata !"r", metadata !39, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 295]
!170 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"close", metadata !"close", metadata !"", i32 303, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @close, null, null, metadata !173, i32 303} ; [ DW_T
!171 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !8, metadata !8}
!173 = metadata !{metadata !174, metadata !175, metadata !176}
!174 = metadata !{i32 786689, metadata !170, metadata !"fd", metadata !39, i32 16777519, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 303]
!175 = metadata !{i32 786688, metadata !170, metadata !"f", metadata !39, i32 305, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 305]
!176 = metadata !{i32 786688, metadata !170, metadata !"r", metadata !39, i32 306, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 306]
!177 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"read", metadata !"read", metadata !"", i32 335, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @read, null, null, metadata !184, i32 335} ;
!178 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !180, metadata !8, metadata !182, metadata !183}
!180 = metadata !{i32 786454, metadata !16, null, metadata !"ssize_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [ssize_t] [line 109, size 0, align 0, offset 0] [from __ssize_t]
!181 = metadata !{i32 786454, metadata !16, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!183 = metadata !{i32 786454, metadata !16, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189}
!185 = metadata !{i32 786689, metadata !177, metadata !"fd", metadata !39, i32 16777551, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 335]
!186 = metadata !{i32 786689, metadata !177, metadata !"buf", metadata !39, i32 33554767, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 335]
!187 = metadata !{i32 786689, metadata !177, metadata !"count", metadata !39, i32 50331983, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 335]
!188 = metadata !{i32 786688, metadata !177, metadata !"f", metadata !39, i32 337, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 337]
!189 = metadata !{i32 786688, metadata !190, metadata !"r", metadata !39, i32 364, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 364]
!190 = metadata !{i32 786443, metadata !16, metadata !191, i32 362, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!191 = metadata !{i32 786443, metadata !16, metadata !177, i32 362, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!192 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"write", metadata !"write", metadata !"", i32 403, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @write, null, null, metadata !197, i32 403
!193 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{metadata !180, metadata !8, metadata !195, metadata !183}
!195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !196} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!196 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!197 = metadata !{metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !205}
!198 = metadata !{i32 786689, metadata !192, metadata !"fd", metadata !39, i32 16777619, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 403]
!199 = metadata !{i32 786689, metadata !192, metadata !"buf", metadata !39, i32 33554835, metadata !195, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 403]
!200 = metadata !{i32 786689, metadata !192, metadata !"count", metadata !39, i32 50332051, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 403]
!201 = metadata !{i32 786688, metadata !192, metadata !"f", metadata !39, i32 405, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 405]
!202 = metadata !{i32 786688, metadata !203, metadata !"r", metadata !39, i32 423, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 423]
!203 = metadata !{i32 786443, metadata !16, metadata !204, i32 422, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!204 = metadata !{i32 786443, metadata !16, metadata !192, i32 422, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!205 = metadata !{i32 786688, metadata !206, metadata !"actual_count", metadata !39, i32 448, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [actual_count] [line 448]
!206 = metadata !{i32 786443, metadata !16, metadata !204, i32 446, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!207 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"", i32 475, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @__fd_lseek, null, null, metadat
!208 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !122, metadata !8, metadata !122, metadata !8}
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215}
!211 = metadata !{i32 786689, metadata !207, metadata !"fd", metadata !39, i32 16777691, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 475]
!212 = metadata !{i32 786689, metadata !207, metadata !"offset", metadata !39, i32 33554907, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 475]
!213 = metadata !{i32 786689, metadata !207, metadata !"whence", metadata !39, i32 50332123, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 475]
!214 = metadata !{i32 786688, metadata !207, metadata !"new_off", metadata !39, i32 476, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_off] [line 476]
!215 = metadata !{i32 786688, metadata !207, metadata !"f", metadata !39, i32 477, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 477]
!216 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"", i32 532, metadata !217, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @__fd_stat, null, null, met
!217 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!218 = metadata !{metadata !8, metadata !42, metadata !56}
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223}
!220 = metadata !{i32 786689, metadata !216, metadata !"path", metadata !39, i32 16777748, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 532]
!221 = metadata !{i32 786689, metadata !216, metadata !"buf", metadata !39, i32 33554964, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 532]
!222 = metadata !{i32 786688, metadata !216, metadata !"dfile", metadata !39, i32 533, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 533]
!223 = metadata !{i32 786688, metadata !224, metadata !"r", metadata !39, i32 541, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 541]
!224 = metadata !{i32 786443, metadata !16, metadata !216, i32 539, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!225 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fstatat", metadata !"fstatat", metadata !"", i32 551, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*, i32)* @fstatat, null, null, m
!226 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{metadata !8, metadata !8, metadata !42, metadata !228, metadata !8}
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!229 = metadata !{i32 786451, metadata !58, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !230, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!230 = metadata !{metadata !231, metadata !232, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !244, metadata !245, metadata !246, metadata !247}
!231 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!232 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!233 = metadata !{i32 786454, metadata !58, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!234 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!235 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!236 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!237 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !72} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!238 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!239 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!240 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!241 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!242 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !243} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!243 = metadata !{i32 786454, metadata !58, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!244 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !83} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!245 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !83} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!246 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !83} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!247 = metadata !{i32 786445, metadata !58, metadata !229, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !93} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !256, metadata !257}
!249 = metadata !{i32 786689, metadata !225, metadata !"fd", metadata !39, i32 16777767, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 551]
!250 = metadata !{i32 786689, metadata !225, metadata !"path", metadata !39, i32 33554983, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 551]
!251 = metadata !{i32 786689, metadata !225, metadata !"buf", metadata !39, i32 50332199, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 551]
!252 = metadata !{i32 786689, metadata !225, metadata !"flags", metadata !39, i32 67109415, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 551]
!253 = metadata !{i32 786688, metadata !254, metadata !"f", metadata !39, i32 553, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 553]
!254 = metadata !{i32 786443, metadata !16, metadata !255, i32 552, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!255 = metadata !{i32 786443, metadata !16, metadata !225, i32 552, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!256 = metadata !{i32 786688, metadata !225, metadata !"dfile", metadata !39, i32 565, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 565]
!257 = metadata !{i32 786688, metadata !225, metadata !"r", metadata !39, i32 572, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 572]
!258 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"", i32 587, metadata !217, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @__fd_lstat, null, null, 
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263}
!260 = metadata !{i32 786689, metadata !258, metadata !"path", metadata !39, i32 16777803, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 587]
!261 = metadata !{i32 786689, metadata !258, metadata !"buf", metadata !39, i32 33555019, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 587]
!262 = metadata !{i32 786688, metadata !258, metadata !"dfile", metadata !39, i32 588, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 588]
!263 = metadata !{i32 786688, metadata !264, metadata !"r", metadata !39, i32 596, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 596]
!264 = metadata !{i32 786443, metadata !16, metadata !258, i32 594, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!265 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"chdir", metadata !"chdir", metadata !"", i32 606, metadata !266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chdir, null, null, metadata !268, i32 606} ; [ DW_T
!266 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{metadata !8, metadata !42}
!268 = metadata !{metadata !269, metadata !270, metadata !271}
!269 = metadata !{i32 786689, metadata !265, metadata !"path", metadata !39, i32 16777822, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 606]
!270 = metadata !{i32 786688, metadata !265, metadata !"dfile", metadata !39, i32 607, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 607]
!271 = metadata !{i32 786688, metadata !272, metadata !"r", metadata !39, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 617]
!272 = metadata !{i32 786443, metadata !16, metadata !265, i32 616, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!273 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fchdir", metadata !"fchdir", metadata !"", i32 624, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fchdir, null, null, metadata !274, i32 624} ; [ D
!274 = metadata !{metadata !275, metadata !276, metadata !277}
!275 = metadata !{i32 786689, metadata !273, metadata !"fd", metadata !39, i32 16777840, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 624]
!276 = metadata !{i32 786688, metadata !273, metadata !"f", metadata !39, i32 625, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 625]
!277 = metadata !{i32 786688, metadata !278, metadata !"r", metadata !39, i32 637, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 637]
!278 = metadata !{i32 786443, metadata !16, metadata !279, i32 636, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!279 = metadata !{i32 786443, metadata !16, metadata !273, i32 632, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!280 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"chmod", metadata !"chmod", metadata !"", i32 658, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @chmod, null, null, metadata !283, i32 658} ; [
!281 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{metadata !8, metadata !42, metadata !102}
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !287}
!284 = metadata !{i32 786689, metadata !280, metadata !"path", metadata !39, i32 16777874, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 658]
!285 = metadata !{i32 786689, metadata !280, metadata !"mode", metadata !39, i32 33555090, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 658]
!286 = metadata !{i32 786688, metadata !280, metadata !"dfile", metadata !39, i32 661, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 661]
!287 = metadata !{i32 786688, metadata !288, metadata !"r", metadata !39, i32 673, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 673]
!288 = metadata !{i32 786443, metadata !16, metadata !289, i32 672, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!289 = metadata !{i32 786443, metadata !16, metadata !280, i32 670, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!290 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fchmod", metadata !"fchmod", metadata !"", i32 680, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @fchmod, null, null, metadata !293, i32 680} 
!291 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!292 = metadata !{metadata !8, metadata !8, metadata !102}
!293 = metadata !{metadata !294, metadata !295, metadata !296, metadata !297}
!294 = metadata !{i32 786689, metadata !290, metadata !"fd", metadata !39, i32 16777896, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 680]
!295 = metadata !{i32 786689, metadata !290, metadata !"mode", metadata !39, i32 33555112, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 680]
!296 = metadata !{i32 786688, metadata !290, metadata !"f", metadata !39, i32 683, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 683]
!297 = metadata !{i32 786688, metadata !298, metadata !"r", metadata !39, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 700]
!298 = metadata !{i32 786443, metadata !16, metadata !299, i32 699, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!299 = metadata !{i32 786443, metadata !16, metadata !290, i32 697, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!300 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"chown", metadata !"chown", metadata !"", i32 713, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @chown, null, null, metadata !305, i32 713
!301 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{metadata !8, metadata !42, metadata !303, metadata !304}
!303 = metadata !{i32 786454, metadata !16, null, metadata !"uid_t", i32 80, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [uid_t] [line 80, size 0, align 0, offset 0] [from __uid_t]
!304 = metadata !{i32 786454, metadata !16, null, metadata !"gid_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [gid_t] [line 65, size 0, align 0, offset 0] [from __gid_t]
!305 = metadata !{metadata !306, metadata !307, metadata !308, metadata !309, metadata !310}
!306 = metadata !{i32 786689, metadata !300, metadata !"path", metadata !39, i32 16777929, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 713]
!307 = metadata !{i32 786689, metadata !300, metadata !"owner", metadata !39, i32 33555145, metadata !303, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 713]
!308 = metadata !{i32 786689, metadata !300, metadata !"group", metadata !39, i32 50332361, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 713]
!309 = metadata !{i32 786688, metadata !300, metadata !"df", metadata !39, i32 714, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 714]
!310 = metadata !{i32 786688, metadata !311, metadata !"r", metadata !39, i32 719, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 719]
!311 = metadata !{i32 786443, metadata !16, metadata !312, i32 718, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!312 = metadata !{i32 786443, metadata !16, metadata !300, i32 716, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!313 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fchown", metadata !"fchown", metadata !"", i32 726, metadata !314, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @fchown, null, null, metadata !316, i32 
!314 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{metadata !8, metadata !8, metadata !303, metadata !304}
!316 = metadata !{metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!317 = metadata !{i32 786689, metadata !313, metadata !"fd", metadata !39, i32 16777942, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 726]
!318 = metadata !{i32 786689, metadata !313, metadata !"owner", metadata !39, i32 33555158, metadata !303, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 726]
!319 = metadata !{i32 786689, metadata !313, metadata !"group", metadata !39, i32 50332374, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 726]
!320 = metadata !{i32 786688, metadata !313, metadata !"f", metadata !39, i32 727, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 727]
!321 = metadata !{i32 786688, metadata !322, metadata !"r", metadata !39, i32 737, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 737]
!322 = metadata !{i32 786443, metadata !16, metadata !323, i32 736, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!323 = metadata !{i32 786443, metadata !16, metadata !313, i32 734, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!324 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"lchown", metadata !"lchown", metadata !"", i32 744, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @lchown, null, null, metadata !325, i32 
!325 = metadata !{metadata !326, metadata !327, metadata !328, metadata !329, metadata !330}
!326 = metadata !{i32 786689, metadata !324, metadata !"path", metadata !39, i32 16777960, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 744]
!327 = metadata !{i32 786689, metadata !324, metadata !"owner", metadata !39, i32 33555176, metadata !303, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 744]
!328 = metadata !{i32 786689, metadata !324, metadata !"group", metadata !39, i32 50332392, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 744]
!329 = metadata !{i32 786688, metadata !324, metadata !"df", metadata !39, i32 746, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 746]
!330 = metadata !{i32 786688, metadata !331, metadata !"r", metadata !39, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 751]
!331 = metadata !{i32 786443, metadata !16, metadata !332, i32 750, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!332 = metadata !{i32 786443, metadata !16, metadata !324, i32 748, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!333 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"", i32 758, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64*)* @__fd_fstat, null, null, 
!334 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{metadata !8, metadata !8, metadata !56}
!336 = metadata !{metadata !337, metadata !338, metadata !339, metadata !340}
!337 = metadata !{i32 786689, metadata !333, metadata !"fd", metadata !39, i32 16777974, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 758]
!338 = metadata !{i32 786689, metadata !333, metadata !"buf", metadata !39, i32 33555190, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 758]
!339 = metadata !{i32 786688, metadata !333, metadata !"f", metadata !39, i32 759, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 759]
!340 = metadata !{i32 786688, metadata !341, metadata !"r", metadata !39, i32 768, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 768]
!341 = metadata !{i32 786443, metadata !16, metadata !342, i32 766, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!342 = metadata !{i32 786443, metadata !16, metadata !333, i32 766, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!343 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"", i32 781, metadata !344, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @__fd_ftruncate, null, null, 
!344 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!345 = metadata !{metadata !8, metadata !8, metadata !122}
!346 = metadata !{metadata !347, metadata !348, metadata !349, metadata !350}
!347 = metadata !{i32 786689, metadata !343, metadata !"fd", metadata !39, i32 16777997, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 781]
!348 = metadata !{i32 786689, metadata !343, metadata !"length", metadata !39, i32 33555213, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 781]
!349 = metadata !{i32 786688, metadata !343, metadata !"f", metadata !39, i32 783, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 783]
!350 = metadata !{i32 786688, metadata !351, metadata !"r", metadata !39, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 804]
!351 = metadata !{i32 786443, metadata !16, metadata !352, i32 802, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!352 = metadata !{i32 786443, metadata !16, metadata !343, i32 798, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!353 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"", i32 814, metadata !354, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent64*, i32)* @__fd_getden
!354 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!355 = metadata !{metadata !8, metadata !53, metadata !356, metadata !53}
!356 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !357} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent64]
!357 = metadata !{i32 786451, metadata !358, null, metadata !"dirent64", i32 37, i64 2240, i64 64, i32 0, i32 0, null, metadata !359, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent64] [line 37, size 2240, align 64, offset 0] [def] [from ]
!358 = metadata !{metadata !"/usr/include/bits/dirent.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !364, metadata !366}
!360 = metadata !{i32 786445, metadata !358, metadata !357, metadata !"d_ino", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [d_ino] [line 39, size 64, align 64, offset 0] [from __ino64_t]
!361 = metadata !{i32 786445, metadata !358, metadata !357, metadata !"d_off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !123} ; [ DW_TAG_member ] [d_off] [line 40, size 64, align 64, offset 64] [from __off64_t]
!362 = metadata !{i32 786445, metadata !358, metadata !357, metadata !"d_reclen", i32 41, i64 16, i64 16, i64 128, i32 0, metadata !363} ; [ DW_TAG_member ] [d_reclen] [line 41, size 16, align 16, offset 128] [from unsigned short]
!363 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!364 = metadata !{i32 786445, metadata !358, metadata !357, metadata !"d_type", i32 42, i64 8, i64 8, i64 144, i32 0, metadata !365} ; [ DW_TAG_member ] [d_type] [line 42, size 8, align 8, offset 144] [from unsigned char]
!365 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!366 = metadata !{i32 786445, metadata !358, metadata !357, metadata !"d_name", i32 43, i64 2048, i64 8, i64 152, i32 0, metadata !367} ; [ DW_TAG_member ] [d_name] [line 43, size 2048, align 8, offset 152] [from ]
!367 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !368, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!368 = metadata !{metadata !369}
!369 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!370 = metadata !{metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !380, metadata !381, metadata !382, metadata !385, metadata !387, metadata !388, metadata !389, metadata !392}
!371 = metadata !{i32 786689, metadata !353, metadata !"fd", metadata !39, i32 16778030, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 814]
!372 = metadata !{i32 786689, metadata !353, metadata !"dirp", metadata !39, i32 33555246, metadata !356, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 814]
!373 = metadata !{i32 786689, metadata !353, metadata !"count", metadata !39, i32 50332462, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 814]
!374 = metadata !{i32 786688, metadata !353, metadata !"f", metadata !39, i32 815, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 815]
!375 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !39, i32 829, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 829]
!376 = metadata !{i32 786443, metadata !16, metadata !377, i32 827, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!377 = metadata !{i32 786443, metadata !16, metadata !378, i32 827, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!378 = metadata !{i32 786443, metadata !16, metadata !379, i32 826, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!379 = metadata !{i32 786443, metadata !16, metadata !353, i32 822, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!380 = metadata !{i32 786688, metadata !376, metadata !"pad", metadata !39, i32 829, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pad] [line 829]
!381 = metadata !{i32 786688, metadata !376, metadata !"bytes", metadata !39, i32 829, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 829]
!382 = metadata !{i32 786688, metadata !383, metadata !"df", metadata !39, i32 839, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 839]
!383 = metadata !{i32 786443, metadata !16, metadata !384, i32 838, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!384 = metadata !{i32 786443, metadata !16, metadata !376, i32 838, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!385 = metadata !{i32 786688, metadata !386, metadata !"os_pos", metadata !39, i32 862, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_pos] [line 862]
!386 = metadata !{i32 786443, metadata !16, metadata !377, i32 861, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!387 = metadata !{i32 786688, metadata !386, metadata !"res", metadata !39, i32 863, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 863]
!388 = metadata !{i32 786688, metadata !386, metadata !"s", metadata !39, i32 864, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 864]
!389 = metadata !{i32 786688, metadata !390, metadata !"pos", metadata !39, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 880]
!390 = metadata !{i32 786443, metadata !16, metadata !391, i32 879, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!391 = metadata !{i32 786443, metadata !16, metadata !386, i32 877, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!392 = metadata !{i32 786688, metadata !393, metadata !"dp", metadata !39, i32 886, metadata !356, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 886]
!393 = metadata !{i32 786443, metadata !16, metadata !390, i32 885, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!394 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"ioctl", metadata !"ioctl", metadata !"", i32 898, metadata !395, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64, ...)* @ioctl, null, null, metadata !397, i32 898
!395 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!396 = metadata !{metadata !8, metadata !8, metadata !62}
!397 = metadata !{metadata !398, metadata !399, metadata !400, metadata !401, metadata !415, metadata !416, metadata !419, metadata !440, metadata !450, metadata !453}
!398 = metadata !{i32 786689, metadata !394, metadata !"fd", metadata !39, i32 16778114, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 898]
!399 = metadata !{i32 786689, metadata !394, metadata !"request", metadata !39, i32 33555330, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [request] [line 898]
!400 = metadata !{i32 786688, metadata !394, metadata !"f", metadata !39, i32 902, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 902]
!401 = metadata !{i32 786688, metadata !394, metadata !"ap", metadata !39, i32 903, metadata !402, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 903]
!402 = metadata !{i32 786454, metadata !16, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !403} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!403 = metadata !{i32 786454, metadata !16, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !404} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!404 = metadata !{i32 786454, metadata !16, null, metadata !"__builtin_va_list", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !405} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 903, size 0, align 0, offset 0] [from ]
!405 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !406, metadata !413, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!406 = metadata !{i32 786454, metadata !16, null, metadata !"__va_list_tag", i32 903, i64 0, i64 0, i64 0, i32 0, metadata !407} ; [ DW_TAG_typedef ] [__va_list_tag] [line 903, size 0, align 0, offset 0] [from __va_list_tag]
!407 = metadata !{i32 786451, metadata !16, null, metadata !"__va_list_tag", i32 903, i64 192, i64 64, i32 0, i32 0, null, metadata !408, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 903, size 192, align 64, offset 0] [def] 
!408 = metadata !{metadata !409, metadata !410, metadata !411, metadata !412}
!409 = metadata !{i32 786445, metadata !16, metadata !407, metadata !"gp_offset", i32 903, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [gp_offset] [line 903, size 32, align 32, offset 0] [from unsigned int]
!410 = metadata !{i32 786445, metadata !16, metadata !407, metadata !"fp_offset", i32 903, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [fp_offset] [line 903, size 32, align 32, offset 32] [from unsigned int]
!411 = metadata !{i32 786445, metadata !16, metadata !407, metadata !"overflow_arg_area", i32 903, i64 64, i64 64, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [overflow_arg_area] [line 903, size 64, align 64, offset 64] [from ]
!412 = metadata !{i32 786445, metadata !16, metadata !407, metadata !"reg_save_area", i32 903, i64 64, i64 64, i64 128, i32 0, metadata !182} ; [ DW_TAG_member ] [reg_save_area] [line 903, size 64, align 64, offset 128] [from ]
!413 = metadata !{metadata !414}
!414 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!415 = metadata !{i32 786688, metadata !394, metadata !"buf", metadata !39, i32 904, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 904]
!416 = metadata !{i32 786688, metadata !417, metadata !"stat", metadata !39, i32 920, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 920]
!417 = metadata !{i32 786443, metadata !16, metadata !418, i32 919, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!418 = metadata !{i32 786443, metadata !16, metadata !394, i32 919, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!419 = metadata !{i32 786688, metadata !420, metadata !"ts", metadata !39, i32 924, metadata !422, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 924]
!420 = metadata !{i32 786443, metadata !16, metadata !421, i32 923, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!421 = metadata !{i32 786443, metadata !16, metadata !417, i32 922, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!422 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !423} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!423 = metadata !{i32 786451, metadata !424, null, metadata !"termios", i32 28, i64 480, i64 32, i32 0, i32 0, null, metadata !425, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 28, size 480, align 32, offset 0] [def] [from ]
!424 = metadata !{metadata !"/usr/include/bits/termios.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!425 = metadata !{metadata !426, metadata !428, metadata !429, metadata !430, metadata !431, metadata !433, metadata !437, metadata !439}
!426 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_iflag", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !427} ; [ DW_TAG_member ] [c_iflag] [line 30, size 32, align 32, offset 0] [from tcflag_t]
!427 = metadata !{i32 786454, metadata !424, null, metadata !"tcflag_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [tcflag_t] [line 25, size 0, align 0, offset 0] [from unsigned int]
!428 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_oflag", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !427} ; [ DW_TAG_member ] [c_oflag] [line 31, size 32, align 32, offset 32] [from tcflag_t]
!429 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_cflag", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !427} ; [ DW_TAG_member ] [c_cflag] [line 32, size 32, align 32, offset 64] [from tcflag_t]
!430 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_lflag", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !427} ; [ DW_TAG_member ] [c_lflag] [line 33, size 32, align 32, offset 96] [from tcflag_t]
!431 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_line", i32 34, i64 8, i64 8, i64 128, i32 0, metadata !432} ; [ DW_TAG_member ] [c_line] [line 34, size 8, align 8, offset 128] [from cc_t]
!432 = metadata !{i32 786454, metadata !424, null, metadata !"cc_t", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !365} ; [ DW_TAG_typedef ] [cc_t] [line 23, size 0, align 0, offset 0] [from unsigned char]
!433 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_cc", i32 35, i64 256, i64 8, i64 136, i32 0, metadata !434} ; [ DW_TAG_member ] [c_cc] [line 35, size 256, align 8, offset 136] [from ]
!434 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !432, metadata !435, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!435 = metadata !{metadata !436}
!436 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!437 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_ispeed", i32 36, i64 32, i64 32, i64 416, i32 0, metadata !438} ; [ DW_TAG_member ] [c_ispeed] [line 36, size 32, align 32, offset 416] [from speed_t]
!438 = metadata !{i32 786454, metadata !424, null, metadata !"speed_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [speed_t] [line 24, size 0, align 0, offset 0] [from unsigned int]
!439 = metadata !{i32 786445, metadata !424, metadata !423, metadata !"c_ospeed", i32 37, i64 32, i64 32, i64 448, i32 0, metadata !438} ; [ DW_TAG_member ] [c_ospeed] [line 37, size 32, align 32, offset 448] [from speed_t]
!440 = metadata !{i32 786688, metadata !441, metadata !"ws", metadata !39, i32 993, metadata !442, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ws] [line 993]
!441 = metadata !{i32 786443, metadata !16, metadata !421, i32 992, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!442 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !443} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from winsize]
!443 = metadata !{i32 786451, metadata !444, null, metadata !"winsize", i32 27, i64 64, i64 16, i32 0, i32 0, null, metadata !445, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [winsize] [line 27, size 64, align 16, offset 0] [def] [from ]
!444 = metadata !{metadata !"/usr/include/bits/ioctl-types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!445 = metadata !{metadata !446, metadata !447, metadata !448, metadata !449}
!446 = metadata !{i32 786445, metadata !444, metadata !443, metadata !"ws_row", i32 29, i64 16, i64 16, i64 0, i32 0, metadata !363} ; [ DW_TAG_member ] [ws_row] [line 29, size 16, align 16, offset 0] [from unsigned short]
!447 = metadata !{i32 786445, metadata !444, metadata !443, metadata !"ws_col", i32 30, i64 16, i64 16, i64 16, i32 0, metadata !363} ; [ DW_TAG_member ] [ws_col] [line 30, size 16, align 16, offset 16] [from unsigned short]
!448 = metadata !{i32 786445, metadata !444, metadata !443, metadata !"ws_xpixel", i32 31, i64 16, i64 16, i64 32, i32 0, metadata !363} ; [ DW_TAG_member ] [ws_xpixel] [line 31, size 16, align 16, offset 32] [from unsigned short]
!449 = metadata !{i32 786445, metadata !444, metadata !443, metadata !"ws_ypixel", i32 32, i64 16, i64 16, i64 48, i32 0, metadata !363} ; [ DW_TAG_member ] [ws_ypixel] [line 32, size 16, align 16, offset 48] [from unsigned short]
!450 = metadata !{i32 786688, metadata !451, metadata !"res", metadata !39, i32 1016, metadata !452, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1016]
!451 = metadata !{i32 786443, metadata !16, metadata !421, i32 1015, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!452 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!453 = metadata !{i32 786688, metadata !454, metadata !"r", metadata !39, i32 1041, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1041]
!454 = metadata !{i32 786443, metadata !16, metadata !418, i32 1040, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!455 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fcntl", metadata !"fcntl", metadata !"", i32 1048, metadata !456, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @fcntl, null, null, metadata !458, i32 10
!456 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!457 = metadata !{metadata !8, metadata !8, metadata !8}
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !469}
!459 = metadata !{i32 786689, metadata !455, metadata !"fd", metadata !39, i32 16778264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1048]
!460 = metadata !{i32 786689, metadata !455, metadata !"cmd", metadata !39, i32 33555480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1048]
!461 = metadata !{i32 786688, metadata !455, metadata !"f", metadata !39, i32 1049, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1049]
!462 = metadata !{i32 786688, metadata !455, metadata !"ap", metadata !39, i32 1050, metadata !402, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1050]
!463 = metadata !{i32 786688, metadata !455, metadata !"arg", metadata !39, i32 1051, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1051]
!464 = metadata !{i32 786688, metadata !465, metadata !"flags", metadata !39, i32 1070, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 1070]
!465 = metadata !{i32 786443, metadata !16, metadata !466, i32 1069, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!466 = metadata !{i32 786443, metadata !16, metadata !467, i32 1068, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!467 = metadata !{i32 786443, metadata !16, metadata !468, i32 1067, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!468 = metadata !{i32 786443, metadata !16, metadata !455, i32 1067, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!469 = metadata !{i32 786688, metadata !470, metadata !"r", metadata !39, i32 1096, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1096]
!470 = metadata !{i32 786443, metadata !16, metadata !468, i32 1095, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!471 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"", i32 1103, metadata !472, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @__fd_statfs, null, nu
!472 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!473 = metadata !{metadata !8, metadata !42, metadata !474}
!474 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !475} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!475 = metadata !{i32 786451, metadata !476, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !477, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!476 = metadata !{metadata !"/usr/include/bits/statfs.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!477 = metadata !{metadata !478, metadata !480, metadata !481, metadata !483, metadata !484, metadata !485, metadata !487, metadata !488, metadata !497, metadata !498, metadata !499, metadata !500}
!478 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !479} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!479 = metadata !{i32 786454, metadata !476, null, metadata !"__fsword_t", i32 170, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__fsword_t] [line 170, size 0, align 0, offset 0] [from long int]
!480 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !479} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!481 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_blocks", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !482} ; [ DW_TAG_member ] [f_blocks] [line 29, size 64, align 64, offset 128] [from __fsblkcnt_t]
!482 = metadata !{i32 786454, metadata !476, null, metadata !"__fsblkcnt_t", i32 162, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__fsblkcnt_t] [line 162, size 0, align 0, offset 0] [from long unsigned int]
!483 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_bfree", i32 30, i64 64, i64 64, i64 192, i32 0, metadata !482} ; [ DW_TAG_member ] [f_bfree] [line 30, size 64, align 64, offset 192] [from __fsblkcnt_t]
!484 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_bavail", i32 31, i64 64, i64 64, i64 256, i32 0, metadata !482} ; [ DW_TAG_member ] [f_bavail] [line 31, size 64, align 64, offset 256] [from __fsblkcnt_t]
!485 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_files", i32 32, i64 64, i64 64, i64 320, i32 0, metadata !486} ; [ DW_TAG_member ] [f_files] [line 32, size 64, align 64, offset 320] [from __fsfilcnt_t]
!486 = metadata !{i32 786454, metadata !476, null, metadata !"__fsfilcnt_t", i32 166, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__fsfilcnt_t] [line 166, size 0, align 0, offset 0] [from long unsigned int]
!487 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_ffree", i32 33, i64 64, i64 64, i64 384, i32 0, metadata !486} ; [ DW_TAG_member ] [f_ffree] [line 33, size 64, align 64, offset 384] [from __fsfilcnt_t]
!488 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !489} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!489 = metadata !{i32 786454, metadata !476, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !490} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!490 = metadata !{i32 786451, metadata !491, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !492, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!491 = metadata !{metadata !"/usr/include/bits/types.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!492 = metadata !{metadata !493}
!493 = metadata !{i32 786445, metadata !491, metadata !490, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !494} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!494 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !495, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!495 = metadata !{metadata !496}
!496 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!497 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !479} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!498 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !479} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!499 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !479} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!500 = metadata !{i32 786445, metadata !476, metadata !475, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !501} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!501 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !479, metadata !502, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from __fsword_t]
!502 = metadata !{metadata !503}
!503 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!504 = metadata !{metadata !505, metadata !506, metadata !507, metadata !508}
!505 = metadata !{i32 786689, metadata !471, metadata !"path", metadata !39, i32 16778319, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1103]
!506 = metadata !{i32 786689, metadata !471, metadata !"buf", metadata !39, i32 33555535, metadata !474, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1103]
!507 = metadata !{i32 786688, metadata !471, metadata !"dfile", metadata !39, i32 1104, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1104]
!508 = metadata !{i32 786688, metadata !509, metadata !"r", metadata !39, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1113]
!509 = metadata !{i32 786443, metadata !16, metadata !471, i32 1112, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!510 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fstatfs", metadata !"fstatfs", metadata !"", i32 1120, metadata !511, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.statfs*)* @fstatfs, null, null, metadata
!511 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!512 = metadata !{metadata !8, metadata !8, metadata !474}
!513 = metadata !{metadata !514, metadata !515, metadata !516, metadata !517}
!514 = metadata !{i32 786689, metadata !510, metadata !"fd", metadata !39, i32 16778336, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1120]
!515 = metadata !{i32 786689, metadata !510, metadata !"buf", metadata !39, i32 33555552, metadata !474, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1120]
!516 = metadata !{i32 786688, metadata !510, metadata !"f", metadata !39, i32 1121, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1121]
!517 = metadata !{i32 786688, metadata !518, metadata !"r", metadata !39, i32 1133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1133]
!518 = metadata !{i32 786443, metadata !16, metadata !519, i32 1132, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!519 = metadata !{i32 786443, metadata !16, metadata !510, i32 1128, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!520 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"fsync", metadata !"fsync", metadata !"", i32 1140, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fsync, null, null, metadata !521, i32 1140} ; [ DW
!521 = metadata !{metadata !522, metadata !523, metadata !524}
!522 = metadata !{i32 786689, metadata !520, metadata !"fd", metadata !39, i32 16778356, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1140]
!523 = metadata !{i32 786688, metadata !520, metadata !"f", metadata !39, i32 1141, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1141]
!524 = metadata !{i32 786688, metadata !525, metadata !"r", metadata !39, i32 1149, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1149]
!525 = metadata !{i32 786443, metadata !16, metadata !526, i32 1148, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!526 = metadata !{i32 786443, metadata !16, metadata !527, i32 1146, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!527 = metadata !{i32 786443, metadata !16, metadata !520, i32 1143, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!528 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"dup2", metadata !"dup2", metadata !"", i32 1156, metadata !456, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dup2, null, null, metadata !529, i32 1156} ; [ 
!529 = metadata !{metadata !530, metadata !531, metadata !532, metadata !533}
!530 = metadata !{i32 786689, metadata !528, metadata !"oldfd", metadata !39, i32 16778372, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1156]
!531 = metadata !{i32 786689, metadata !528, metadata !"newfd", metadata !39, i32 33555588, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newfd] [line 1156]
!532 = metadata !{i32 786688, metadata !528, metadata !"f", metadata !39, i32 1157, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1157]
!533 = metadata !{i32 786688, metadata !534, metadata !"f2", metadata !39, i32 1163, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 1163]
!534 = metadata !{i32 786443, metadata !16, metadata !535, i32 1162, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!535 = metadata !{i32 786443, metadata !16, metadata !528, i32 1159, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!536 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"dup", metadata !"dup", metadata !"", i32 1181, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dup, null, null, metadata !537, i32 1181} ; [ DW_TAG_s
!537 = metadata !{metadata !538, metadata !539, metadata !540}
!538 = metadata !{i32 786689, metadata !536, metadata !"oldfd", metadata !39, i32 16778397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldfd] [line 1181]
!539 = metadata !{i32 786688, metadata !536, metadata !"f", metadata !39, i32 1182, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1182]
!540 = metadata !{i32 786688, metadata !541, metadata !"fd", metadata !39, i32 1187, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 1187]
!541 = metadata !{i32 786443, metadata !16, metadata !542, i32 1186, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!542 = metadata !{i32 786443, metadata !16, metadata !536, i32 1183, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!543 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"rmdir", metadata !"rmdir", metadata !"", i32 1200, metadata !266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @rmdir, null, null, metadata !544, i32 1200} ; [ DW
!544 = metadata !{metadata !545, metadata !546}
!545 = metadata !{i32 786689, metadata !543, metadata !"pathname", metadata !39, i32 16778416, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1200]
!546 = metadata !{i32 786688, metadata !543, metadata !"dfile", metadata !39, i32 1201, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1201]
!547 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"unlink", metadata !"unlink", metadata !"", i32 1218, metadata !266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @unlink, null, null, metadata !548, i32 1218} ; [
!548 = metadata !{metadata !549, metadata !550}
!549 = metadata !{i32 786689, metadata !547, metadata !"pathname", metadata !39, i32 16778434, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1218]
!550 = metadata !{i32 786688, metadata !547, metadata !"dfile", metadata !39, i32 1219, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1219]
!551 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"unlinkat", metadata !"unlinkat", metadata !"", i32 1239, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @unlinkat, null, null, metadata !55
!552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{metadata !8, metadata !8, metadata !42, metadata !8}
!554 = metadata !{metadata !555, metadata !556, metadata !557, metadata !558}
!555 = metadata !{i32 786689, metadata !551, metadata !"dirfd", metadata !39, i32 16778455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirfd] [line 1239]
!556 = metadata !{i32 786689, metadata !551, metadata !"pathname", metadata !39, i32 33555671, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 1239]
!557 = metadata !{i32 786689, metadata !551, metadata !"flags", metadata !39, i32 50332887, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 1239]
!558 = metadata !{i32 786688, metadata !551, metadata !"dfile", metadata !39, i32 1242, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1242]
!559 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"readlink", metadata !"readlink", metadata !"", i32 1262, metadata !560, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i8*, i64)* @readlink, null, null, metadata !56
!560 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !561, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!561 = metadata !{metadata !180, metadata !42, metadata !9, metadata !183}
!562 = metadata !{metadata !563, metadata !564, metadata !565, metadata !566, metadata !567}
!563 = metadata !{i32 786689, metadata !559, metadata !"path", metadata !39, i32 16778478, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1262]
!564 = metadata !{i32 786689, metadata !559, metadata !"buf", metadata !39, i32 33555694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1262]
!565 = metadata !{i32 786689, metadata !559, metadata !"bufsize", metadata !39, i32 50332910, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 1262]
!566 = metadata !{i32 786688, metadata !559, metadata !"dfile", metadata !39, i32 1263, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfile] [line 1263]
!567 = metadata !{i32 786688, metadata !568, metadata !"r", metadata !39, i32 1279, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1279]
!568 = metadata !{i32 786443, metadata !16, metadata !569, i32 1278, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!569 = metadata !{i32 786443, metadata !16, metadata !559, i32 1264, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!570 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"select", metadata !"select", metadata !"", i32 1294, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*,
!571 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!572 = metadata !{metadata !8, metadata !8, metadata !573, metadata !573, metadata !573, metadata !583}
!573 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !574} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fd_set]
!574 = metadata !{i32 786454, metadata !16, null, metadata !"fd_set", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !575} ; [ DW_TAG_typedef ] [fd_set] [line 77, size 0, align 0, offset 0] [from ]
!575 = metadata !{i32 786451, metadata !576, null, metadata !"", i32 66, i64 1024, i64 64, i32 0, i32 0, null, metadata !577, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 66, size 1024, align 64, offset 0] [def] [from ]
!576 = metadata !{metadata !"/usr/include/sys/select.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!577 = metadata !{metadata !578}
!578 = metadata !{i32 786445, metadata !576, metadata !575, metadata !"fds_bits", i32 71, i64 1024, i64 64, i64 0, i32 0, metadata !579} ; [ DW_TAG_member ] [fds_bits] [line 71, size 1024, align 64, offset 0] [from ]
!579 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !580, metadata !581, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from __fd_mask]
!580 = metadata !{i32 786454, metadata !576, null, metadata !"__fd_mask", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__fd_mask] [line 56, size 0, align 0, offset 0] [from long int]
!581 = metadata !{metadata !582}
!582 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!583 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from timeval]
!584 = metadata !{metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !6
!585 = metadata !{i32 786689, metadata !570, metadata !"nfds", metadata !39, i32 16778510, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfds] [line 1294]
!586 = metadata !{i32 786689, metadata !570, metadata !"read", metadata !39, i32 33555726, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [read] [line 1294]
!587 = metadata !{i32 786689, metadata !570, metadata !"write", metadata !39, i32 50332942, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [write] [line 1294]
!588 = metadata !{i32 786689, metadata !570, metadata !"except", metadata !39, i32 67110159, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [except] [line 1295]
!589 = metadata !{i32 786689, metadata !570, metadata !"timeout", metadata !39, i32 83887375, metadata !583, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timeout] [line 1295]
!590 = metadata !{i32 786688, metadata !570, metadata !"in_read", metadata !39, i32 1296, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_read] [line 1296]
!591 = metadata !{i32 786688, metadata !570, metadata !"in_write", metadata !39, i32 1296, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_write] [line 1296]
!592 = metadata !{i32 786688, metadata !570, metadata !"in_except", metadata !39, i32 1296, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_except] [line 1296]
!593 = metadata !{i32 786688, metadata !570, metadata !"os_read", metadata !39, i32 1296, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_read] [line 1296]
!594 = metadata !{i32 786688, metadata !570, metadata !"os_write", metadata !39, i32 1296, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_write] [line 1296]
!595 = metadata !{i32 786688, metadata !570, metadata !"os_except", metadata !39, i32 1296, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_except] [line 1296]
!596 = metadata !{i32 786688, metadata !570, metadata !"i", metadata !39, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1297]
!597 = metadata !{i32 786688, metadata !570, metadata !"count", metadata !39, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 1297]
!598 = metadata !{i32 786688, metadata !570, metadata !"os_nfds", metadata !39, i32 1297, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [os_nfds] [line 1297]
!599 = metadata !{i32 786688, metadata !600, metadata !"f", metadata !39, i32 1327, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1327]
!600 = metadata !{i32 786443, metadata !16, metadata !601, i32 1326, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!601 = metadata !{i32 786443, metadata !16, metadata !602, i32 1326, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!602 = metadata !{i32 786443, metadata !16, metadata !603, i32 1325, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!603 = metadata !{i32 786443, metadata !16, metadata !570, i32 1325, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!604 = metadata !{i32 786688, metadata !605, metadata !"tv", metadata !39, i32 1349, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 1349]
!605 = metadata !{i32 786443, metadata !16, metadata !606, i32 1346, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!606 = metadata !{i32 786443, metadata !16, metadata !570, i32 1346, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!607 = metadata !{i32 786688, metadata !605, metadata !"r", metadata !39, i32 1350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1350]
!608 = metadata !{i32 786688, metadata !609, metadata !"f", metadata !39, i32 1365, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1365]
!609 = metadata !{i32 786443, metadata !16, metadata !610, i32 1364, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!610 = metadata !{i32 786443, metadata !16, metadata !611, i32 1364, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!611 = metadata !{i32 786443, metadata !16, metadata !612, i32 1360, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!612 = metadata !{i32 786443, metadata !16, metadata !605, i32 1353, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!613 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"getcwd", metadata !"getcwd", metadata !"", i32 1380, metadata !614, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64)* @getcwd, null, null, metadata !616, i32 1380
!614 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!615 = metadata !{metadata !9, metadata !9, metadata !183}
!616 = metadata !{metadata !617, metadata !618, metadata !619}
!617 = metadata !{i32 786689, metadata !613, metadata !"buf", metadata !39, i32 16778596, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1380]
!618 = metadata !{i32 786689, metadata !613, metadata !"size", metadata !39, i32 33555812, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1380]
!619 = metadata !{i32 786688, metadata !613, metadata !"r", metadata !39, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1382]
!620 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"chroot", metadata !"chroot", metadata !"", i32 1457, metadata !266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chroot, null, null, metadata !621, i32 1457} ; [
!621 = metadata !{metadata !622}
!622 = metadata !{i32 786689, metadata !620, metadata !"path", metadata !39, i32 16778673, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1457]
!623 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", i32 1428, metadata !624, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !626, i3
!624 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!625 = metadata !{metadata !42, metadata !42}
!626 = metadata !{metadata !627, metadata !628, metadata !629, metadata !630, metadata !633}
!627 = metadata !{i32 786689, metadata !623, metadata !"s", metadata !39, i32 16778644, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1428]
!628 = metadata !{i32 786688, metadata !623, metadata !"sc", metadata !39, i32 1429, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1429]
!629 = metadata !{i32 786688, metadata !623, metadata !"i", metadata !39, i32 1430, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1430]
!630 = metadata !{i32 786688, metadata !631, metadata !"c", metadata !39, i32 1433, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1433]
!631 = metadata !{i32 786443, metadata !16, metadata !632, i32 1432, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!632 = metadata !{i32 786443, metadata !16, metadata !623, i32 1432, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!633 = metadata !{i32 786688, metadata !634, metadata !"cc", metadata !39, i32 1442, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 1442]
!634 = metadata !{i32 786443, metadata !16, metadata !635, i32 1441, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!635 = metadata !{i32 786443, metadata !16, metadata !631, i32 1434, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!636 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", i32 1422, metadata !637, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !639, i32 14
!637 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!638 = metadata !{metadata !183, metadata !183}
!639 = metadata !{metadata !640, metadata !641}
!640 = metadata !{i32 786689, metadata !636, metadata !"s", metadata !39, i32 16778638, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1422]
!641 = metadata !{i32 786688, metadata !636, metadata !"sc", metadata !39, i32 1423, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1423]
!642 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", i32 1415, metadata !643, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !645, i32 1415
!643 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!644 = metadata !{metadata !182, metadata !195}
!645 = metadata !{metadata !646, metadata !647}
!646 = metadata !{i32 786689, metadata !642, metadata !"p", metadata !39, i32 16778631, metadata !195, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1415]
!647 = metadata !{i32 786688, metadata !642, metadata !"pc", metadata !39, i32 1417, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 1417]
!648 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__df_chown", metadata !"__df_chown", metadata !"", i32 707, metadata !649, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !651, i32 707} ; [ DW_TAG_s
!649 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !650, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!650 = metadata !{metadata !8, metadata !48, metadata !303, metadata !304}
!651 = metadata !{metadata !652, metadata !653, metadata !654}
!652 = metadata !{i32 786689, metadata !648, metadata !"df", metadata !39, i32 16777923, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 707]
!653 = metadata !{i32 786689, metadata !648, metadata !"owner", metadata !39, i32 33555139, metadata !303, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 707]
!654 = metadata !{i32 786689, metadata !648, metadata !"group", metadata !39, i32 50332355, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 707]
!655 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", i32 645, metadata !656, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !658, i32 645} ; [ DW_TAG_s
!656 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !657, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!657 = metadata !{metadata !8, metadata !48, metadata !102}
!658 = metadata !{metadata !659, metadata !660}
!659 = metadata !{i32 786689, metadata !655, metadata !"df", metadata !39, i32 16777861, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 645]
!660 = metadata !{i32 786689, metadata !655, metadata !"mode", metadata !39, i32 33555077, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 645]
!661 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__get_file", metadata !"__get_file", metadata !"", i32 63, metadata !662, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !664, i32 63} ; [ DW_TAG_sub
!662 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!663 = metadata !{metadata !115, metadata !8}
!664 = metadata !{metadata !665, metadata !666}
!665 = metadata !{i32 786689, metadata !661, metadata !"fd", metadata !39, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 63]
!666 = metadata !{i32 786688, metadata !667, metadata !"f", metadata !39, i32 65, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 65]
!667 = metadata !{i32 786443, metadata !16, metadata !668, i32 64, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!668 = metadata !{i32 786443, metadata !16, metadata !661, i32 64, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!669 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"has_permission", metadata !"has_permission", metadata !"", i32 97, metadata !334, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !670, i32 97} ; [ DW
!670 = metadata !{metadata !671, metadata !672, metadata !673, metadata !674, metadata !675}
!671 = metadata !{i32 786689, metadata !669, metadata !"flags", metadata !39, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 97]
!672 = metadata !{i32 786689, metadata !669, metadata !"s", metadata !39, i32 33554529, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 97]
!673 = metadata !{i32 786688, metadata !669, metadata !"write_access", metadata !39, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_access] [line 98]
!674 = metadata !{i32 786688, metadata !669, metadata !"read_access", metadata !39, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [read_access] [line 98]
!675 = metadata !{i32 786688, metadata !669, metadata !"mode", metadata !39, i32 99, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 99]
!676 = metadata !{i32 786478, metadata !16, metadata !39, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", i32 39, metadata !677, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !679, i32 39} ; [ DW
!677 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !678, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!678 = metadata !{metadata !48, metadata !42}
!679 = metadata !{metadata !680, metadata !681, metadata !682, metadata !683}
!680 = metadata !{i32 786689, metadata !676, metadata !"pathname", metadata !39, i32 16777255, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 39]
!681 = metadata !{i32 786688, metadata !676, metadata !"c", metadata !39, i32 40, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 40]
!682 = metadata !{i32 786688, metadata !676, metadata !"i", metadata !39, i32 41, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!683 = metadata !{i32 786688, metadata !684, metadata !"df", metadata !39, i32 48, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [df] [line 48]
!684 = metadata !{i32 786443, metadata !16, metadata !685, i32 47, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!685 = metadata !{i32 786443, metadata !16, metadata !686, i32 47, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!686 = metadata !{i32 786443, metadata !16, metadata !687, i32 46, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!687 = metadata !{i32 786443, metadata !16, metadata !676, i32 46, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!688 = metadata !{metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695}
!689 = metadata !{i32 786484, i32 0, metadata !170, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 304, metadata !8, i32 1, i32 1, i32* @close.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 304] [local] [def]
!690 = metadata !{i32 786484, i32 0, metadata !177, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 336, metadata !8, i32 1, i32 1, i32* @read.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 336] [local] [def]
!691 = metadata !{i32 786484, i32 0, metadata !192, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 404, metadata !8, i32 1, i32 1, i32* @write.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 404] [local] [def]
!692 = metadata !{i32 786484, i32 0, metadata !280, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 659, metadata !8, i32 1, i32 1, i32* @chmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 659] [local] [def]
!693 = metadata !{i32 786484, i32 0, metadata !290, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 681, metadata !8, i32 1, i32 1, i32* @fchmod.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 681] [local] [def]
!694 = metadata !{i32 786484, i32 0, metadata !343, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 782, metadata !8, i32 1, i32 1, i32* @__fd_ftruncate.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 782] [local] [def]
!695 = metadata !{i32 786484, i32 0, metadata !613, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !39, i32 1381, metadata !8, i32 1, i32 1, i32* @getcwd.n_calls, null} ; [ DW_TAG_variable ] [n_calls] [line 1381] [local] [def]
!696 = metadata !{i32 786449, metadata !697, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!697 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_32.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!698 = metadata !{metadata !699, metadata !721, metadata !730, metadata !739, metadata !787, metadata !795, metadata !802, metadata !808, metadata !817, metadata !825, metadata !831, metadata !856, metadata !891, metadata !899}
!699 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"open", metadata !"open", metadata !"", i32 65, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open, null, null, metadata !701, i32 65} ; 
!700 = metadata !{i32 786473, metadata !697}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!701 = metadata !{metadata !702, metadata !703, metadata !704, metadata !707}
!702 = metadata !{i32 786689, metadata !699, metadata !"pathname", metadata !700, i32 16777281, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 65]
!703 = metadata !{i32 786689, metadata !699, metadata !"flags", metadata !700, i32 33554497, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 65]
!704 = metadata !{i32 786688, metadata !699, metadata !"mode", metadata !700, i32 66, metadata !705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 66]
!705 = metadata !{i32 786454, metadata !697, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !706} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!706 = metadata !{i32 786454, metadata !697, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!707 = metadata !{i32 786688, metadata !708, metadata !"ap", metadata !700, i32 70, metadata !710, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 70]
!708 = metadata !{i32 786443, metadata !697, metadata !709, i32 68, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!709 = metadata !{i32 786443, metadata !697, metadata !699, i32 68, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!710 = metadata !{i32 786454, metadata !697, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !711} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!711 = metadata !{i32 786454, metadata !697, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !712} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!712 = metadata !{i32 786454, metadata !697, null, metadata !"__builtin_va_list", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !713} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 70, size 0, align 0, offset 0] [from ]
!713 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !714, metadata !413, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!714 = metadata !{i32 786454, metadata !697, null, metadata !"__va_list_tag", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !715} ; [ DW_TAG_typedef ] [__va_list_tag] [line 70, size 0, align 0, offset 0] [from __va_list_tag]
!715 = metadata !{i32 786451, metadata !697, null, metadata !"__va_list_tag", i32 70, i64 192, i64 64, i32 0, i32 0, null, metadata !716, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 70, size 192, align 64, offset 0] [def] [
!716 = metadata !{metadata !717, metadata !718, metadata !719, metadata !720}
!717 = metadata !{i32 786445, metadata !697, metadata !715, metadata !"gp_offset", i32 70, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [gp_offset] [line 70, size 32, align 32, offset 0] [from unsigned int]
!718 = metadata !{i32 786445, metadata !697, metadata !715, metadata !"fp_offset", i32 70, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [fp_offset] [line 70, size 32, align 32, offset 32] [from unsigned int]
!719 = metadata !{i32 786445, metadata !697, metadata !715, metadata !"overflow_arg_area", i32 70, i64 64, i64 64, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [overflow_arg_area] [line 70, size 64, align 64, offset 64] [from ]
!720 = metadata !{i32 786445, metadata !697, metadata !715, metadata !"reg_save_area", i32 70, i64 64, i64 64, i64 128, i32 0, metadata !182} ; [ DW_TAG_member ] [reg_save_area] [line 70, size 64, align 64, offset 128] [from ]
!721 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"openat", metadata !"openat", metadata !"", i32 79, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, ...)* @openat, null, null, metadata !722
!722 = metadata !{metadata !723, metadata !724, metadata !725, metadata !726, metadata !727}
!723 = metadata !{i32 786689, metadata !721, metadata !"fd", metadata !700, i32 16777295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 79]
!724 = metadata !{i32 786689, metadata !721, metadata !"pathname", metadata !700, i32 33554511, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 79]
!725 = metadata !{i32 786689, metadata !721, metadata !"flags", metadata !700, i32 50331727, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 79]
!726 = metadata !{i32 786688, metadata !721, metadata !"mode", metadata !700, i32 80, metadata !705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 80]
!727 = metadata !{i32 786688, metadata !728, metadata !"ap", metadata !700, i32 84, metadata !710, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 84]
!728 = metadata !{i32 786443, metadata !697, metadata !729, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!729 = metadata !{i32 786443, metadata !697, metadata !721, i32 82, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!730 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"lseek", metadata !"lseek", metadata !"", i32 93, metadata !731, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek, null, null, metadata !735, i32 93
!731 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !732, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!732 = metadata !{metadata !733, metadata !8, metadata !734, metadata !8}
!733 = metadata !{i32 786454, metadata !697, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!734 = metadata !{i32 786454, metadata !697, null, metadata !"off_t", i32 86, i64 0, i64 0, i64 0, i32 0, metadata !733} ; [ DW_TAG_typedef ] [off_t] [line 86, size 0, align 0, offset 0] [from __off_t]
!735 = metadata !{metadata !736, metadata !737, metadata !738}
!736 = metadata !{i32 786689, metadata !730, metadata !"fd", metadata !700, i32 16777309, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 93]
!737 = metadata !{i32 786689, metadata !730, metadata !"off", metadata !700, i32 33554525, metadata !734, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [off] [line 93]
!738 = metadata !{i32 786689, metadata !730, metadata !"whence", metadata !700, i32 50331741, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 93]
!739 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"__xstat", metadata !"__xstat", metadata !"", i32 97, metadata !740, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__xstat, null, null, metad
!740 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !741, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!741 = metadata !{metadata !8, metadata !8, metadata !42, metadata !742}
!742 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !743} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!743 = metadata !{i32 786451, metadata !58, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !744, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!744 = metadata !{metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !761, metadata !762, metadata !763}
!745 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!746 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!747 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!748 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !706} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!749 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!750 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !72} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!751 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!752 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!753 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !733} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!754 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!755 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !243} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!756 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !757} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!757 = metadata !{i32 786451, metadata !84, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !758, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!758 = metadata !{metadata !759, metadata !760}
!759 = metadata !{i32 786445, metadata !84, metadata !757, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!760 = metadata !{i32 786445, metadata !84, metadata !757, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!761 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !757} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!762 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !757} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!763 = metadata !{i32 786445, metadata !58, metadata !743, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !93} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!764 = metadata !{metadata !765, metadata !766, metadata !767, metadata !768, metadata !786}
!765 = metadata !{i32 786689, metadata !739, metadata !"vers", metadata !700, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 97]
!766 = metadata !{i32 786689, metadata !739, metadata !"path", metadata !700, i32 33554529, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 97]
!767 = metadata !{i32 786689, metadata !739, metadata !"buf", metadata !700, i32 50331745, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 97]
!768 = metadata !{i32 786688, metadata !739, metadata !"tmp", metadata !700, i32 98, metadata !769, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 98]
!769 = metadata !{i32 786451, metadata !58, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !770, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!770 = metadata !{metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785}
!771 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!772 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!773 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!774 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !706} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!775 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!776 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !72} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!777 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!778 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!779 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !733} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!780 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!781 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !81} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!782 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !757} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!783 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !757} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!784 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !757} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!785 = metadata !{i32 786445, metadata !58, metadata !769, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !93} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!786 = metadata !{i32 786688, metadata !739, metadata !"res", metadata !700, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 99]
!787 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"stat", metadata !"stat", metadata !"", i32 104, metadata !788, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat, null, null, metadata !790, i32
!788 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !789, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!789 = metadata !{metadata !8, metadata !42, metadata !742}
!790 = metadata !{metadata !791, metadata !792, metadata !793, metadata !794}
!791 = metadata !{i32 786689, metadata !787, metadata !"path", metadata !700, i32 16777320, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 104]
!792 = metadata !{i32 786689, metadata !787, metadata !"buf", metadata !700, i32 33554536, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 104]
!793 = metadata !{i32 786688, metadata !787, metadata !"tmp", metadata !700, i32 105, metadata !769, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 105]
!794 = metadata !{i32 786688, metadata !787, metadata !"res", metadata !700, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 106]
!795 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"__lxstat", metadata !"__lxstat", metadata !"", i32 111, metadata !740, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__lxstat, null, null, m
!796 = metadata !{metadata !797, metadata !798, metadata !799, metadata !800, metadata !801}
!797 = metadata !{i32 786689, metadata !795, metadata !"vers", metadata !700, i32 16777327, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 111]
!798 = metadata !{i32 786689, metadata !795, metadata !"path", metadata !700, i32 33554543, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 111]
!799 = metadata !{i32 786689, metadata !795, metadata !"buf", metadata !700, i32 50331759, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 111]
!800 = metadata !{i32 786688, metadata !795, metadata !"tmp", metadata !700, i32 112, metadata !769, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 112]
!801 = metadata !{i32 786688, metadata !795, metadata !"res", metadata !700, i32 113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 113]
!802 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"lstat", metadata !"lstat", metadata !"", i32 118, metadata !788, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat, null, null, metadata !803, 
!803 = metadata !{metadata !804, metadata !805, metadata !806, metadata !807}
!804 = metadata !{i32 786689, metadata !802, metadata !"path", metadata !700, i32 16777334, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 118]
!805 = metadata !{i32 786689, metadata !802, metadata !"buf", metadata !700, i32 33554550, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 118]
!806 = metadata !{i32 786688, metadata !802, metadata !"tmp", metadata !700, i32 119, metadata !769, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 119]
!807 = metadata !{i32 786688, metadata !802, metadata !"res", metadata !700, i32 120, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 120]
!808 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"__fxstat", metadata !"__fxstat", metadata !"", i32 125, metadata !809, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat*)* @__fxstat, null, null, m
!809 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !810, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!810 = metadata !{metadata !8, metadata !8, metadata !8, metadata !742}
!811 = metadata !{metadata !812, metadata !813, metadata !814, metadata !815, metadata !816}
!812 = metadata !{i32 786689, metadata !808, metadata !"vers", metadata !700, i32 16777341, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 125]
!813 = metadata !{i32 786689, metadata !808, metadata !"fd", metadata !700, i32 33554557, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 125]
!814 = metadata !{i32 786689, metadata !808, metadata !"buf", metadata !700, i32 50331773, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 125]
!815 = metadata !{i32 786688, metadata !808, metadata !"tmp", metadata !700, i32 126, metadata !769, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 126]
!816 = metadata !{i32 786688, metadata !808, metadata !"res", metadata !700, i32 127, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 127]
!817 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"fstat", metadata !"fstat", metadata !"", i32 132, metadata !818, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat, null, null, metadata !820, 
!818 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !819, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!819 = metadata !{metadata !8, metadata !8, metadata !742}
!820 = metadata !{metadata !821, metadata !822, metadata !823, metadata !824}
!821 = metadata !{i32 786689, metadata !817, metadata !"fd", metadata !700, i32 16777348, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 132]
!822 = metadata !{i32 786689, metadata !817, metadata !"buf", metadata !700, i32 33554564, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 132]
!823 = metadata !{i32 786688, metadata !817, metadata !"tmp", metadata !700, i32 133, metadata !769, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 133]
!824 = metadata !{i32 786688, metadata !817, metadata !"res", metadata !700, i32 134, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 134]
!825 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"ftruncate", metadata !"ftruncate", metadata !"", i32 139, metadata !826, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate, null, null, metadata !828
!826 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !827, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!827 = metadata !{metadata !8, metadata !8, metadata !734}
!828 = metadata !{metadata !829, metadata !830}
!829 = metadata !{i32 786689, metadata !825, metadata !"fd", metadata !700, i32 16777355, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 139]
!830 = metadata !{i32 786689, metadata !825, metadata !"length", metadata !700, i32 33554571, metadata !734, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 139]
!831 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"statfs", metadata !"statfs", metadata !"", i32 143, metadata !832, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @statfs, null, null, metadata !
!832 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!833 = metadata !{metadata !8, metadata !42, metadata !834}
!834 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !835} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!835 = metadata !{i32 786451, metadata !476, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !836, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!836 = metadata !{metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !849, metadata !850, metadata !851, metadata !852}
!837 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !479} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!838 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !479} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!839 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_blocks", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !482} ; [ DW_TAG_member ] [f_blocks] [line 29, size 64, align 64, offset 128] [from __fsblkcnt_t]
!840 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_bfree", i32 30, i64 64, i64 64, i64 192, i32 0, metadata !482} ; [ DW_TAG_member ] [f_bfree] [line 30, size 64, align 64, offset 192] [from __fsblkcnt_t]
!841 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_bavail", i32 31, i64 64, i64 64, i64 256, i32 0, metadata !482} ; [ DW_TAG_member ] [f_bavail] [line 31, size 64, align 64, offset 256] [from __fsblkcnt_t]
!842 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_files", i32 32, i64 64, i64 64, i64 320, i32 0, metadata !486} ; [ DW_TAG_member ] [f_files] [line 32, size 64, align 64, offset 320] [from __fsfilcnt_t]
!843 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_ffree", i32 33, i64 64, i64 64, i64 384, i32 0, metadata !486} ; [ DW_TAG_member ] [f_ffree] [line 33, size 64, align 64, offset 384] [from __fsfilcnt_t]
!844 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !845} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!845 = metadata !{i32 786454, metadata !476, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !846} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!846 = metadata !{i32 786451, metadata !491, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !847, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!847 = metadata !{metadata !848}
!848 = metadata !{i32 786445, metadata !491, metadata !846, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !494} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!849 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !479} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!850 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !479} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!851 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !479} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!852 = metadata !{i32 786445, metadata !476, metadata !835, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !501} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!853 = metadata !{metadata !854, metadata !855}
!854 = metadata !{i32 786689, metadata !831, metadata !"path", metadata !700, i32 16777359, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 143]
!855 = metadata !{i32 786689, metadata !831, metadata !"buf32", metadata !700, i32 33554575, metadata !834, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf32] [line 143]
!856 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"getdents", metadata !"getdents", metadata !"", i32 168, metadata !857, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.dirent*, i64)* @getdents, null, null,
!857 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !858, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!858 = metadata !{metadata !859, metadata !8, metadata !861, metadata !869}
!859 = metadata !{i32 786454, metadata !697, null, metadata !"ssize_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !860} ; [ DW_TAG_typedef ] [ssize_t] [line 109, size 0, align 0, offset 0] [from __ssize_t]
!860 = metadata !{i32 786454, metadata !697, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!861 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !862} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent]
!862 = metadata !{i32 786451, metadata !358, null, metadata !"dirent", i32 22, i64 2240, i64 64, i32 0, i32 0, null, metadata !863, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent] [line 22, size 2240, align 64, offset 0] [def] [from ]
!863 = metadata !{metadata !864, metadata !865, metadata !866, metadata !867, metadata !868}
!864 = metadata !{i32 786445, metadata !358, metadata !862, metadata !"d_ino", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !233} ; [ DW_TAG_member ] [d_ino] [line 25, size 64, align 64, offset 0] [from __ino_t]
!865 = metadata !{i32 786445, metadata !358, metadata !862, metadata !"d_off", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !733} ; [ DW_TAG_member ] [d_off] [line 26, size 64, align 64, offset 64] [from __off_t]
!866 = metadata !{i32 786445, metadata !358, metadata !862, metadata !"d_reclen", i32 31, i64 16, i64 16, i64 128, i32 0, metadata !363} ; [ DW_TAG_member ] [d_reclen] [line 31, size 16, align 16, offset 128] [from unsigned short]
!867 = metadata !{i32 786445, metadata !358, metadata !862, metadata !"d_type", i32 32, i64 8, i64 8, i64 144, i32 0, metadata !365} ; [ DW_TAG_member ] [d_type] [line 32, size 8, align 8, offset 144] [from unsigned char]
!868 = metadata !{i32 786445, metadata !358, metadata !862, metadata !"d_name", i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !367} ; [ DW_TAG_member ] [d_name] [line 33, size 2048, align 8, offset 152] [from ]
!869 = metadata !{i32 786454, metadata !697, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!870 = metadata !{metadata !871, metadata !872, metadata !873, metadata !874, metadata !884, metadata !885, metadata !888, metadata !890}
!871 = metadata !{i32 786689, metadata !856, metadata !"fd", metadata !700, i32 16777384, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 168]
!872 = metadata !{i32 786689, metadata !856, metadata !"dirp", metadata !700, i32 33554600, metadata !861, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 168]
!873 = metadata !{i32 786689, metadata !856, metadata !"nbytes", metadata !700, i32 50331816, metadata !869, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes] [line 168]
!874 = metadata !{i32 786688, metadata !856, metadata !"dp64", metadata !700, i32 169, metadata !875, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp64] [line 169]
!875 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !876} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent64]
!876 = metadata !{i32 786451, metadata !358, null, metadata !"dirent64", i32 37, i64 2240, i64 64, i32 0, i32 0, null, metadata !877, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent64] [line 37, size 2240, align 64, offset 0] [def] [from ]
!877 = metadata !{metadata !878, metadata !879, metadata !881, metadata !882, metadata !883}
!878 = metadata !{i32 786445, metadata !358, metadata !876, metadata !"d_ino", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [d_ino] [line 39, size 64, align 64, offset 0] [from __ino64_t]
!879 = metadata !{i32 786445, metadata !358, metadata !876, metadata !"d_off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !880} ; [ DW_TAG_member ] [d_off] [line 40, size 64, align 64, offset 64] [from __off64_t]
!880 = metadata !{i32 786454, metadata !358, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!881 = metadata !{i32 786445, metadata !358, metadata !876, metadata !"d_reclen", i32 41, i64 16, i64 16, i64 128, i32 0, metadata !363} ; [ DW_TAG_member ] [d_reclen] [line 41, size 16, align 16, offset 128] [from unsigned short]
!882 = metadata !{i32 786445, metadata !358, metadata !876, metadata !"d_type", i32 42, i64 8, i64 8, i64 144, i32 0, metadata !365} ; [ DW_TAG_member ] [d_type] [line 42, size 8, align 8, offset 144] [from unsigned char]
!883 = metadata !{i32 786445, metadata !358, metadata !876, metadata !"d_name", i32 43, i64 2048, i64 8, i64 152, i32 0, metadata !367} ; [ DW_TAG_member ] [d_name] [line 43, size 2048, align 8, offset 152] [from ]
!884 = metadata !{i32 786688, metadata !856, metadata !"res", metadata !700, i32 170, metadata !859, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 170]
!885 = metadata !{i32 786688, metadata !886, metadata !"end", metadata !700, i32 173, metadata !875, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 173]
!886 = metadata !{i32 786443, metadata !697, metadata !887, i32 172, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!887 = metadata !{i32 786443, metadata !697, metadata !856, i32 172, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!888 = metadata !{i32 786688, metadata !889, metadata !"dp", metadata !700, i32 175, metadata !861, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 175]
!889 = metadata !{i32 786443, metadata !697, metadata !886, i32 174, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!890 = metadata !{i32 786688, metadata !889, metadata !"name_len", metadata !700, i32 176, metadata !869, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name_len] [line 176]
!891 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"open64", metadata !"open64", metadata !"", i32 194, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64, null, null, metadata !892, i32
!892 = metadata !{metadata !893, metadata !894, metadata !895, metadata !896}
!893 = metadata !{i32 786689, metadata !891, metadata !"pathname", metadata !700, i32 16777410, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 194]
!894 = metadata !{i32 786689, metadata !891, metadata !"flags", metadata !700, i32 33554626, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 194]
!895 = metadata !{i32 786688, metadata !891, metadata !"mode", metadata !700, i32 195, metadata !705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 195]
!896 = metadata !{i32 786688, metadata !897, metadata !"ap", metadata !700, i32 199, metadata !710, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 199]
!897 = metadata !{i32 786443, metadata !697, metadata !898, i32 197, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!898 = metadata !{i32 786443, metadata !697, metadata !891, i32 197, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_32.c]
!899 = metadata !{i32 786478, metadata !697, metadata !700, metadata !"__stat64_to_stat", metadata !"__stat64_to_stat", metadata !"", i32 41, metadata !900, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !903, i32 41} 
!900 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !901, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!901 = metadata !{null, metadata !902, metadata !742}
!902 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !769} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!903 = metadata !{metadata !904, metadata !905}
!904 = metadata !{i32 786689, metadata !899, metadata !"a", metadata !700, i32 16777257, metadata !902, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 41]
!905 = metadata !{i32 786689, metadata !899, metadata !"b", metadata !700, i32 33554473, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 41]
!906 = metadata !{i32 786449, metadata !907, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!907 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_init.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!908 = metadata !{metadata !909, metadata !947, metadata !953, metadata !975}
!909 = metadata !{i32 786478, metadata !907, metadata !910, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"", i32 110, metadata !911, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, i32)* @klee_in
!910 = metadata !{i32 786473, metadata !907}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!911 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !912, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!912 = metadata !{null, metadata !53, metadata !53, metadata !53, metadata !8, metadata !8, metadata !53}
!913 = metadata !{metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !925}
!914 = metadata !{i32 786689, metadata !909, metadata !"n_files", metadata !910, i32 16777326, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_files] [line 110]
!915 = metadata !{i32 786689, metadata !909, metadata !"file_length", metadata !910, i32 33554542, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file_length] [line 110]
!916 = metadata !{i32 786689, metadata !909, metadata !"stdin_length", metadata !910, i32 50331759, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stdin_length] [line 111]
!917 = metadata !{i32 786689, metadata !909, metadata !"sym_stdout_flag", metadata !910, i32 67108975, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym_stdout_flag] [line 111]
!918 = metadata !{i32 786689, metadata !909, metadata !"save_all_writes_flag", metadata !910, i32 83886192, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [save_all_writes_flag] [line 112]
!919 = metadata !{i32 786689, metadata !909, metadata !"max_failures", metadata !910, i32 100663408, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_failures] [line 112]
!920 = metadata !{i32 786688, metadata !909, metadata !"k", metadata !910, i32 113, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 113]
!921 = metadata !{i32 786688, metadata !909, metadata !"name", metadata !910, i32 114, metadata !922, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 114]
!922 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !10, metadata !923, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!923 = metadata !{metadata !924}
!924 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!925 = metadata !{i32 786688, metadata !909, metadata !"s", metadata !910, i32 115, metadata !926, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 115]
!926 = metadata !{i32 786451, metadata !58, null, metadata !"stat64", i32 119, i64 1152, i64 64, i32 0, i32 0, null, metadata !927, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 1152, align 64, offset 0] [def] [from ]
!927 = metadata !{metadata !928, metadata !929, metadata !930, metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !944, metadata !945, metadata !946}
!928 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_dev", i32 121, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 64, offset 0] [from __dev_t]
!929 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_ino", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [st_ino] [line 123, size 64, align 64, offset 64] [from __ino64_t]
!930 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_nlink", i32 124, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [st_nlink] [line 124, size 64, align 64, offset 128] [from __nlink_t]
!931 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_mode", i32 125, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [st_mode] [line 125, size 32, align 32, offset 192] [from __mode_t]
!932 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_uid", i32 132, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 224] [from __uid_t]
!933 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_gid", i32 133, i64 32, i64 32, i64 256, i32 0, metadata !72} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 256] [from __gid_t]
!934 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"__pad0", i32 135, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 135, size 32, align 32, offset 288] [from int]
!935 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_rdev", i32 136, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [st_rdev] [line 136, size 64, align 64, offset 320] [from __dev_t]
!936 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_size", i32 137, i64 64, i64 64, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [st_size] [line 137, size 64, align 64, offset 384] [from __off_t]
!937 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_blksize", i32 143, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [st_blksize] [line 143, size 64, align 64, offset 448] [from __blksize_t]
!938 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_blocks", i32 144, i64 64, i64 64, i64 512, i32 0, metadata !81} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 64, offset 512] [from __blkcnt64_t]
!939 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_atim", i32 152, i64 128, i64 64, i64 576, i32 0, metadata !940} ; [ DW_TAG_member ] [st_atim] [line 152, size 128, align 64, offset 576] [from timespec]
!940 = metadata !{i32 786451, metadata !84, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !941, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!941 = metadata !{metadata !942, metadata !943}
!942 = metadata !{i32 786445, metadata !84, metadata !940, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!943 = metadata !{i32 786445, metadata !84, metadata !940, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!944 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_mtim", i32 153, i64 128, i64 64, i64 704, i32 0, metadata !940} ; [ DW_TAG_member ] [st_mtim] [line 153, size 128, align 64, offset 704] [from timespec]
!945 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"st_ctim", i32 154, i64 128, i64 64, i64 832, i32 0, metadata !940} ; [ DW_TAG_member ] [st_ctim] [line 154, size 128, align 64, offset 832] [from timespec]
!946 = metadata !{i32 786445, metadata !58, metadata !926, metadata !"__glibc_reserved", i32 164, i64 192, i64 64, i64 960, i32 0, metadata !93} ; [ DW_TAG_member ] [__glibc_reserved] [line 164, size 192, align 64, offset 960] [from ]
!947 = metadata !{i32 786478, metadata !907, metadata !910, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", i32 97, metadata !948, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !950, i32 97} ; [ DW_T
!948 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !949, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!949 = metadata !{metadata !53, metadata !42}
!950 = metadata !{metadata !951, metadata !952}
!951 = metadata !{i32 786689, metadata !947, metadata !"name", metadata !910, i32 16777313, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 97]
!952 = metadata !{i32 786688, metadata !947, metadata !"x", metadata !910, i32 98, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 98]
!953 = metadata !{i32 786478, metadata !907, metadata !910, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", i32 46, metadata !954, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t*, i32, 
!954 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !955, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!955 = metadata !{null, metadata !956, metadata !53, metadata !42, metadata !963}
!956 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !957} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exe_disk_file_t]
!957 = metadata !{i32 786454, metadata !19, null, metadata !"exe_disk_file_t", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !958} ; [ DW_TAG_typedef ] [exe_disk_file_t] [line 24, size 0, align 0, offset 0] [from ]
!958 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 20, i64 192, i64 64, i32 0, i32 0, null, metadata !959, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 20, size 192, align 64, offset 0] [def] [from ]
!959 = metadata !{metadata !960, metadata !961, metadata !962}
!960 = metadata !{i32 786445, metadata !19, metadata !958, metadata !"size", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [size] [line 21, size 32, align 32, offset 0] [from unsigned int]
!961 = metadata !{i32 786445, metadata !19, metadata !958, metadata !"contents", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [contents] [line 22, size 64, align 64, offset 64] [from ]
!962 = metadata !{i32 786445, metadata !19, metadata !958, metadata !"stat", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !963} ; [ DW_TAG_member ] [stat] [line 23, size 64, align 64, offset 128] [from ]
!963 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !926} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat64]
!964 = metadata !{metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971}
!965 = metadata !{i32 786689, metadata !953, metadata !"dfile", metadata !910, i32 16777262, metadata !956, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dfile] [line 46]
!966 = metadata !{i32 786689, metadata !953, metadata !"size", metadata !910, i32 33554478, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 46]
!967 = metadata !{i32 786689, metadata !953, metadata !"name", metadata !910, i32 50331695, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 47]
!968 = metadata !{i32 786689, metadata !953, metadata !"defaults", metadata !910, i32 67108911, metadata !963, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [defaults] [line 47]
!969 = metadata !{i32 786688, metadata !953, metadata !"s", metadata !910, i32 48, metadata !963, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 48]
!970 = metadata !{i32 786688, metadata !953, metadata !"sp", metadata !910, i32 49, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sp] [line 49]
!971 = metadata !{i32 786688, metadata !953, metadata !"sname", metadata !910, i32 50, metadata !972, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname] [line 50]
!972 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !10, metadata !973, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!973 = metadata !{metadata !974}
!974 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!975 = metadata !{i32 786478, metadata !976, metadata !977, metadata !"stat64", metadata !"stat64", metadata !"", i32 501, metadata !978, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !980, i32 502} ; [ DW_TAG_subpro
!976 = metadata !{metadata !"/usr/include/sys/stat.h", metadata !"/home/user/klee/build/runtime/POSIX"}
!977 = metadata !{i32 786473, metadata !976}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!978 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !979, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!979 = metadata !{metadata !8, metadata !42, metadata !963}
!980 = metadata !{metadata !981, metadata !982}
!981 = metadata !{i32 786689, metadata !975, metadata !"__path", metadata !977, i32 16777717, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__path] [line 501]
!982 = metadata !{i32 786689, metadata !975, metadata !"__statbuf", metadata !977, i32 33554933, metadata !963, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 501]
!983 = metadata !{metadata !984, metadata !1001}
!984 = metadata !{i32 786484, i32 0, null, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !910, i32 37, metadata !985, i32 0, i32 1, { [32 x %struct.exe_file_t], i32, i32, i32, [4 x i8] }* @__exe_env, null} ; [ DW_TAG_variable ] [__
!985 = metadata !{i32 786454, metadata !907, null, metadata !"exe_sym_env_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_typedef ] [exe_sym_env_t] [line 69, size 0, align 0, offset 0] [from ]
!986 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 61, i64 6272, i64 64, i32 0, i32 0, null, metadata !987, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 61, size 6272, align 64, offset 0] [def] [from ]
!987 = metadata !{metadata !988, metadata !997, metadata !999, metadata !1000}
!988 = metadata !{i32 786445, metadata !19, metadata !986, metadata !"fds", i32 62, i64 6144, i64 64, i64 0, i32 0, metadata !989} ; [ DW_TAG_member ] [fds] [line 62, size 6144, align 64, offset 0] [from ]
!989 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 64, i32 0, i32 0, metadata !990, metadata !435, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6144, align 64, offset 0] [from exe_file_t]
!990 = metadata !{i32 786454, metadata !19, null, metadata !"exe_file_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !991} ; [ DW_TAG_typedef ] [exe_file_t] [line 40, size 0, align 0, offset 0] [from ]
!991 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 33, i64 192, i64 64, i32 0, i32 0, null, metadata !992, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 33, size 192, align 64, offset 0] [def] [from ]
!992 = metadata !{metadata !993, metadata !994, metadata !995, metadata !996}
!993 = metadata !{i32 786445, metadata !19, metadata !991, metadata !"fd", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [fd] [line 34, size 32, align 32, offset 0] [from int]
!994 = metadata !{i32 786445, metadata !19, metadata !991, metadata !"flags", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [flags] [line 35, size 32, align 32, offset 32] [from unsigned int]
!995 = metadata !{i32 786445, metadata !19, metadata !991, metadata !"off", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !122} ; [ DW_TAG_member ] [off] [line 38, size 64, align 64, offset 64] [from off64_t]
!996 = metadata !{i32 786445, metadata !19, metadata !991, metadata !"dfile", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !956} ; [ DW_TAG_member ] [dfile] [line 39, size 64, align 64, offset 128] [from ]
!997 = metadata !{i32 786445, metadata !19, metadata !986, metadata !"umask", i32 63, i64 32, i64 32, i64 6144, i32 0, metadata !998} ; [ DW_TAG_member ] [umask] [line 63, size 32, align 32, offset 6144] [from mode_t]
!998 = metadata !{i32 786454, metadata !19, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!999 = metadata !{i32 786445, metadata !19, metadata !986, metadata !"version", i32 64, i64 32, i64 32, i64 6176, i32 0, metadata !53} ; [ DW_TAG_member ] [version] [line 64, size 32, align 32, offset 6176] [from unsigned int]
!1000 = metadata !{i32 786445, metadata !19, metadata !986, metadata !"save_all_writes", i32 68, i64 32, i64 32, i64 6208, i32 0, metadata !8} ; [ DW_TAG_member ] [save_all_writes] [line 68, size 32, align 32, offset 6208] [from int]
!1001 = metadata !{i32 786484, i32 0, null, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !910, i32 24, metadata !1002, i32 0, i32 1, %struct.exe_file_system_t* @__exe_fs, null} ; [ DW_TAG_variable ] [__exe_fs] [line 24] [def]
!1002 = metadata !{i32 786454, metadata !907, null, metadata !"exe_file_system_t", i32 54, i64 0, i64 0, i64 0, i32 0, metadata !1003} ; [ DW_TAG_typedef ] [exe_file_system_t] [line 54, size 0, align 0, offset 0] [from ]
!1003 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 42, i64 832, i64 64, i32 0, i32 0, null, metadata !1004, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 42, size 832, align 64, offset 0] [def] [from ]
!1004 = metadata !{metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017}
!1005 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"n_sym_files", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [n_sym_files] [line 43, size 32, align 32, offset 0] [from unsigned int]
!1006 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"sym_stdin", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !956} ; [ DW_TAG_member ] [sym_stdin] [line 44, size 64, align 64, offset 64] [from ]
!1007 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"sym_stdout", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !956} ; [ DW_TAG_member ] [sym_stdout] [line 44, size 64, align 64, offset 128] [from ]
!1008 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"stdout_writes", i32 45, i64 32, i64 32, i64 192, i32 0, metadata !53} ; [ DW_TAG_member ] [stdout_writes] [line 45, size 32, align 32, offset 192] [from unsigned int]
!1009 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"sym_files", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !956} ; [ DW_TAG_member ] [sym_files] [line 46, size 64, align 64, offset 256] [from ]
!1010 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"max_failures", i32 49, i64 32, i64 32, i64 320, i32 0, metadata !53} ; [ DW_TAG_member ] [max_failures] [line 49, size 32, align 32, offset 320] [from unsigned int]
!1011 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"read_fail", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !452} ; [ DW_TAG_member ] [read_fail] [line 52, size 64, align 64, offset 384] [from ]
!1012 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"write_fail", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !452} ; [ DW_TAG_member ] [write_fail] [line 52, size 64, align 64, offset 448] [from ]
!1013 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"close_fail", i32 52, i64 64, i64 64, i64 512, i32 0, metadata !452} ; [ DW_TAG_member ] [close_fail] [line 52, size 64, align 64, offset 512] [from ]
!1014 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"ftruncate_fail", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !452} ; [ DW_TAG_member ] [ftruncate_fail] [line 52, size 64, align 64, offset 576] [from ]
!1015 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"getcwd_fail", i32 52, i64 64, i64 64, i64 640, i32 0, metadata !452} ; [ DW_TAG_member ] [getcwd_fail] [line 52, size 64, align 64, offset 640] [from ]
!1016 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"chmod_fail", i32 53, i64 64, i64 64, i64 704, i32 0, metadata !452} ; [ DW_TAG_member ] [chmod_fail] [line 53, size 64, align 64, offset 704] [from ]
!1017 = metadata !{i32 786445, metadata !19, metadata !1003, metadata !"fchmod_fail", i32 53, i64 64, i64 64, i64 768, i32 0, metadata !452} ; [ DW_TAG_member ] [fchmod_fail] [line 53, size 64, align 64, offset 768] [from ]
!1018 = metadata !{i32 786449, metadata !1019, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1019 = metadata !{metadata !"/home/user/klee/runtime/POSIX/klee_init_env.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!1020 = metadata !{metadata !1021, metadata !1073, metadata !1081, metadata !1086, metadata !1094, metadata !1102, metadata !1107}
!1021 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"klee_init_env", metadata !"klee_init_env", metadata !"", i32 85, metadata !1023, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8***)* @klee_init_env, null, 
!1022 = metadata !{i32 786473, metadata !1019}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1023 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1024, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1024 = metadata !{null, metadata !452, metadata !1025}
!1025 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1026 = metadata !{metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1
!1027 = metadata !{i32 786689, metadata !1021, metadata !"argcPtr", metadata !1022, i32 16777301, metadata !452, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcPtr] [line 85]
!1028 = metadata !{i32 786689, metadata !1021, metadata !"argvPtr", metadata !1022, i32 33554517, metadata !1025, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argvPtr] [line 85]
!1029 = metadata !{i32 786688, metadata !1021, metadata !"argc", metadata !1022, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argc] [line 86]
!1030 = metadata !{i32 786688, metadata !1021, metadata !"argv", metadata !1022, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 87]
!1031 = metadata !{i32 786688, metadata !1021, metadata !"new_argc", metadata !1022, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argc] [line 89]
!1032 = metadata !{i32 786688, metadata !1021, metadata !"n_args", metadata !1022, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_args] [line 89]
!1033 = metadata !{i32 786688, metadata !1021, metadata !"new_argv", metadata !1022, i32 90, metadata !1034, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_argv] [line 90]
!1034 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 64, i32 0, i32 0, metadata !9, metadata !1035, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 64, offset 0] [from ]
!1035 = metadata !{metadata !1036}
!1036 = metadata !{i32 786465, i64 0, i64 1024}   ; [ DW_TAG_subrange_type ] [0, 1023]
!1037 = metadata !{i32 786688, metadata !1021, metadata !"max_len", metadata !1022, i32 91, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_len] [line 91]
!1038 = metadata !{i32 786688, metadata !1021, metadata !"min_argvs", metadata !1022, i32 91, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_argvs] [line 91]
!1039 = metadata !{i32 786688, metadata !1021, metadata !"max_argvs", metadata !1022, i32 91, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_argvs] [line 91]
!1040 = metadata !{i32 786688, metadata !1021, metadata !"sym_files", metadata !1022, i32 92, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_files] [line 92]
!1041 = metadata !{i32 786688, metadata !1021, metadata !"sym_file_len", metadata !1022, i32 92, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_file_len] [line 92]
!1042 = metadata !{i32 786688, metadata !1021, metadata !"sym_stdin_len", metadata !1022, i32 93, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdin_len] [line 93]
!1043 = metadata !{i32 786688, metadata !1021, metadata !"sym_stdout_flag", metadata !1022, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_stdout_flag] [line 94]
!1044 = metadata !{i32 786688, metadata !1021, metadata !"save_all_writes_flag", metadata !1022, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save_all_writes_flag] [line 95]
!1045 = metadata !{i32 786688, metadata !1021, metadata !"fd_fail", metadata !1022, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd_fail] [line 96]
!1046 = metadata !{i32 786688, metadata !1021, metadata !"final_argv", metadata !1022, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [final_argv] [line 97]
!1047 = metadata !{i32 786688, metadata !1021, metadata !"sym_arg_name", metadata !1022, i32 98, metadata !1048, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_name] [line 98]
!1048 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !10, metadata !1049, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!1049 = metadata !{metadata !1050}
!1050 = metadata !{i32 786465, i64 0, i64 5}      ; [ DW_TAG_subrange_type ] [0, 4]
!1051 = metadata !{i32 786688, metadata !1021, metadata !"sym_arg_num", metadata !1022, i32 99, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym_arg_num] [line 99]
!1052 = metadata !{i32 786688, metadata !1021, metadata !"k", metadata !1022, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 100]
!1053 = metadata !{i32 786688, metadata !1021, metadata !"i", metadata !1022, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!1054 = metadata !{i32 786688, metadata !1055, metadata !"msg", metadata !1022, i32 125, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 125]
!1055 = metadata !{i32 786443, metadata !1019, metadata !1056, i32 124, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1056 = metadata !{i32 786443, metadata !1019, metadata !1057, i32 124, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1057 = metadata !{i32 786443, metadata !1019, metadata !1021, i32 123, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1058 = metadata !{i32 786688, metadata !1059, metadata !"msg", metadata !1022, i32 136, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 136]
!1059 = metadata !{i32 786443, metadata !1019, metadata !1060, i32 135, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1060 = metadata !{i32 786443, metadata !1019, metadata !1056, i32 135, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1061 = metadata !{i32 786688, metadata !1062, metadata !"msg", metadata !1022, i32 156, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 156]
!1062 = metadata !{i32 786443, metadata !1019, metadata !1063, i32 155, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1063 = metadata !{i32 786443, metadata !1019, metadata !1060, i32 155, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1064 = metadata !{i32 786688, metadata !1065, metadata !"msg", metadata !1022, i32 167, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 167]
!1065 = metadata !{i32 786443, metadata !1019, metadata !1066, i32 166, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1066 = metadata !{i32 786443, metadata !1019, metadata !1063, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1067 = metadata !{i32 786688, metadata !1068, metadata !"msg", metadata !1022, i32 188, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 188]
!1068 = metadata !{i32 786443, metadata !1019, metadata !1069, i32 187, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1069 = metadata !{i32 786443, metadata !1019, metadata !1070, i32 187, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1070 = metadata !{i32 786443, metadata !1019, metadata !1071, i32 183, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1071 = metadata !{i32 786443, metadata !1019, metadata !1072, i32 179, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1072 = metadata !{i32 786443, metadata !1019, metadata !1066, i32 174, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!1073 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"__get_sym_str", metadata !"__get_sym_str", metadata !"", i32 63, metadata !1074, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @__get_sym_str, null, null,
!1074 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1075, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1075 = metadata !{metadata !9, metadata !8, metadata !9}
!1076 = metadata !{metadata !1077, metadata !1078, metadata !1079, metadata !1080}
!1077 = metadata !{i32 786689, metadata !1073, metadata !"numChars", metadata !1022, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [numChars] [line 63]
!1078 = metadata !{i32 786689, metadata !1073, metadata !"name", metadata !1022, i32 33554495, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 63]
!1079 = metadata !{i32 786688, metadata !1073, metadata !"i", metadata !1022, i32 64, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!1080 = metadata !{i32 786688, metadata !1073, metadata !"s", metadata !1022, i32 65, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 65]
!1081 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"__isprint", metadata !"__isprint", metadata !"", i32 48, metadata !1082, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1084, i32 48} ; [ DW_TA
!1082 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1083, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1083 = metadata !{metadata !8, metadata !43}
!1084 = metadata !{metadata !1085}
!1085 = metadata !{i32 786689, metadata !1081, metadata !"c", metadata !1022, i32 16777264, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 48]
!1086 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"__add_arg", metadata !"__add_arg", metadata !"", i32 76, metadata !1087, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1089, i32 76} ; [ DW_TA
!1087 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1088 = metadata !{null, metadata !452, metadata !14, metadata !9, metadata !8}
!1089 = metadata !{metadata !1090, metadata !1091, metadata !1092, metadata !1093}
!1090 = metadata !{i32 786689, metadata !1086, metadata !"argc", metadata !1022, i32 16777292, metadata !452, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 76]
!1091 = metadata !{i32 786689, metadata !1086, metadata !"argv", metadata !1022, i32 33554508, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 76]
!1092 = metadata !{i32 786689, metadata !1086, metadata !"arg", metadata !1022, i32 50331724, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 76]
!1093 = metadata !{i32 786689, metadata !1086, metadata !"argcMax", metadata !1022, i32 67108940, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argcMax] [line 76]
!1094 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"__str_to_int", metadata !"__str_to_int", metadata !"", i32 30, metadata !1095, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1097, i32 30} ; [
!1095 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1096, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1096 = metadata !{metadata !77, metadata !9, metadata !42}
!1097 = metadata !{metadata !1098, metadata !1099, metadata !1100, metadata !1101}
!1098 = metadata !{i32 786689, metadata !1094, metadata !"s", metadata !1022, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 30]
!1099 = metadata !{i32 786689, metadata !1094, metadata !"error_msg", metadata !1022, i32 33554462, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [error_msg] [line 30]
!1100 = metadata !{i32 786688, metadata !1094, metadata !"res", metadata !1022, i32 31, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 31]
!1101 = metadata !{i32 786688, metadata !1094, metadata !"c", metadata !1022, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 32]
!1102 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"__emit_error", metadata !"__emit_error", metadata !"", i32 23, metadata !1103, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @__emit_error, null, null, metada
!1103 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1104, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1104 = metadata !{null, metadata !42}
!1105 = metadata !{metadata !1106}
!1106 = metadata !{i32 786689, metadata !1102, metadata !"msg", metadata !1022, i32 16777239, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 23]
!1107 = metadata !{i32 786478, metadata !1019, metadata !1022, metadata !"__streq", metadata !"__streq", metadata !"", i32 53, metadata !1108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1110, i32 53} ; [ DW_TAG_su
!1108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1109 = metadata !{metadata !8, metadata !42, metadata !42}
!1110 = metadata !{metadata !1111, metadata !1112}
!1111 = metadata !{i32 786689, metadata !1107, metadata !"a", metadata !1022, i32 16777269, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 53]
!1112 = metadata !{i32 786689, metadata !1107, metadata !"b", metadata !1022, i32 33554485, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 53]
!1113 = metadata !{i32 786449, metadata !1114, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1114 = metadata !{metadata !"/home/user/klee/runtime/POSIX/fd_64.c", metadata !"/home/user/klee/build/runtime/POSIX"}
!1115 = metadata !{metadata !1116, metadata !1138, metadata !1147, metadata !1156, metadata !1185, metadata !1191, metadata !1196, metadata !1200, metadata !1207, metadata !1213, metadata !1219, metadata !1246}
!1116 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"open", metadata !"open", metadata !"open64", i32 45, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64, null, null, metadata !1118
!1117 = metadata !{i32 786473, metadata !1114}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1118 = metadata !{metadata !1119, metadata !1120, metadata !1121, metadata !1124}
!1119 = metadata !{i32 786689, metadata !1116, metadata !"pathname", metadata !1117, i32 16777261, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 45]
!1120 = metadata !{i32 786689, metadata !1116, metadata !"flags", metadata !1117, i32 33554477, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 45]
!1121 = metadata !{i32 786688, metadata !1116, metadata !"mode", metadata !1117, i32 46, metadata !1122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 46]
!1122 = metadata !{i32 786454, metadata !1114, null, metadata !"mode_t", i32 70, i64 0, i64 0, i64 0, i32 0, metadata !1123} ; [ DW_TAG_typedef ] [mode_t] [line 70, size 0, align 0, offset 0] [from __mode_t]
!1123 = metadata !{i32 786454, metadata !1114, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!1124 = metadata !{i32 786688, metadata !1125, metadata !"ap", metadata !1117, i32 50, metadata !1127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 50]
!1125 = metadata !{i32 786443, metadata !1114, metadata !1126, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1126 = metadata !{i32 786443, metadata !1114, metadata !1116, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1127 = metadata !{i32 786454, metadata !1114, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !1128} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!1128 = metadata !{i32 786454, metadata !1114, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !1129} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!1129 = metadata !{i32 786454, metadata !1114, null, metadata !"__builtin_va_list", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1130} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 50, size 0, align 0, offset 0] [from ]
!1130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !1131, metadata !413, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!1131 = metadata !{i32 786454, metadata !1114, null, metadata !"__va_list_tag", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1132} ; [ DW_TAG_typedef ] [__va_list_tag] [line 50, size 0, align 0, offset 0] [from __va_list_tag]
!1132 = metadata !{i32 786451, metadata !1114, null, metadata !"__va_list_tag", i32 50, i64 192, i64 64, i32 0, i32 0, null, metadata !1133, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 50, size 192, align 64, offset 0] [def
!1133 = metadata !{metadata !1134, metadata !1135, metadata !1136, metadata !1137}
!1134 = metadata !{i32 786445, metadata !1114, metadata !1132, metadata !"gp_offset", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [gp_offset] [line 50, size 32, align 32, offset 0] [from unsigned int]
!1135 = metadata !{i32 786445, metadata !1114, metadata !1132, metadata !"fp_offset", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [fp_offset] [line 50, size 32, align 32, offset 32] [from unsigned int]
!1136 = metadata !{i32 786445, metadata !1114, metadata !1132, metadata !"overflow_arg_area", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [overflow_arg_area] [line 50, size 64, align 64, offset 64] [from ]
!1137 = metadata !{i32 786445, metadata !1114, metadata !1132, metadata !"reg_save_area", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !182} ; [ DW_TAG_member ] [reg_save_area] [line 50, size 64, align 64, offset 128] [from ]
!1138 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"openat", metadata !"openat", metadata !"openat64", i32 59, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, ...)* @openat64, null, null, 
!1139 = metadata !{metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1144}
!1140 = metadata !{i32 786689, metadata !1138, metadata !"fd", metadata !1117, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 59]
!1141 = metadata !{i32 786689, metadata !1138, metadata !"pathname", metadata !1117, i32 33554491, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pathname] [line 59]
!1142 = metadata !{i32 786689, metadata !1138, metadata !"flags", metadata !1117, i32 50331707, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 59]
!1143 = metadata !{i32 786688, metadata !1138, metadata !"mode", metadata !1117, i32 60, metadata !1122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 60]
!1144 = metadata !{i32 786688, metadata !1145, metadata !"ap", metadata !1117, i32 64, metadata !1127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 64]
!1145 = metadata !{i32 786443, metadata !1114, metadata !1146, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1146 = metadata !{i32 786443, metadata !1114, metadata !1138, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_64.c]
!1147 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"lseek", metadata !"lseek", metadata !"lseek64", i32 73, metadata !1148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64, null, null, metadata
!1148 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1149, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1149 = metadata !{metadata !1150, metadata !8, metadata !1151, metadata !8}
!1150 = metadata !{i32 786454, metadata !1114, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!1151 = metadata !{i32 786454, metadata !1114, null, metadata !"off64_t", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !1150} ; [ DW_TAG_typedef ] [off64_t] [line 93, size 0, align 0, offset 0] [from __off64_t]
!1152 = metadata !{metadata !1153, metadata !1154, metadata !1155}
!1153 = metadata !{i32 786689, metadata !1147, metadata !"fd", metadata !1117, i32 16777289, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 73]
!1154 = metadata !{i32 786689, metadata !1147, metadata !"offset", metadata !1117, i32 33554505, metadata !1151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 73]
!1155 = metadata !{i32 786689, metadata !1147, metadata !"whence", metadata !1117, i32 50331721, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [whence] [line 73]
!1156 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat64", i32 77, metadata !1157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64*)* @__xstat64, 
!1157 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1158, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1158 = metadata !{metadata !8, metadata !8, metadata !42, metadata !1159}
!1159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from stat]
!1160 = metadata !{i32 786451, metadata !58, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !1161, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [def] [from ]
!1161 = metadata !{metadata !1162, metadata !1163, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1178, metadata !1179, metadata !1
!1162 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!1163 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!1164 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!1165 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !1123} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!1166 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!1167 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !72} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!1168 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!1169 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!1170 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!1171 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !79} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!1172 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !243} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!1173 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !1174} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!1174 = metadata !{i32 786451, metadata !84, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !1175, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [def] [from ]
!1175 = metadata !{metadata !1176, metadata !1177}
!1176 = metadata !{i32 786445, metadata !84, metadata !1174, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!1177 = metadata !{i32 786445, metadata !84, metadata !1174, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!1178 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !1174} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!1179 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !1174} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!1180 = metadata !{i32 786445, metadata !58, metadata !1160, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !93} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!1181 = metadata !{metadata !1182, metadata !1183, metadata !1184}
!1182 = metadata !{i32 786689, metadata !1156, metadata !"vers", metadata !1117, i32 16777293, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 77]
!1183 = metadata !{i32 786689, metadata !1156, metadata !"path", metadata !1117, i32 33554509, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 77]
!1184 = metadata !{i32 786689, metadata !1156, metadata !"buf", metadata !1117, i32 50331725, metadata !1159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 77]
!1185 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"stat", metadata !"stat", metadata !"stat64", i32 81, metadata !1186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @stat64, null, null, metad
!1186 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1187, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1187 = metadata !{metadata !8, metadata !42, metadata !1159}
!1188 = metadata !{metadata !1189, metadata !1190}
!1189 = metadata !{i32 786689, metadata !1185, metadata !"path", metadata !1117, i32 16777297, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 81]
!1190 = metadata !{i32 786689, metadata !1185, metadata !"buf", metadata !1117, i32 33554513, metadata !1159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 81]
!1191 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat64", i32 85, metadata !1157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat64*)* @__lxstat
!1192 = metadata !{metadata !1193, metadata !1194, metadata !1195}
!1193 = metadata !{i32 786689, metadata !1191, metadata !"vers", metadata !1117, i32 16777301, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 85]
!1194 = metadata !{i32 786689, metadata !1191, metadata !"path", metadata !1117, i32 33554517, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 85]
!1195 = metadata !{i32 786689, metadata !1191, metadata !"buf", metadata !1117, i32 50331733, metadata !1159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 85]
!1196 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"lstat", metadata !"lstat", metadata !"lstat64", i32 89, metadata !1186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat64*)* @lstat64, null, null, m
!1197 = metadata !{metadata !1198, metadata !1199}
!1198 = metadata !{i32 786689, metadata !1196, metadata !"path", metadata !1117, i32 16777305, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 89]
!1199 = metadata !{i32 786689, metadata !1196, metadata !"buf", metadata !1117, i32 33554521, metadata !1159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 89]
!1200 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat64", i32 93, metadata !1201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat64*)* @__fxstat
!1201 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1202, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1202 = metadata !{metadata !8, metadata !8, metadata !8, metadata !1159}
!1203 = metadata !{metadata !1204, metadata !1205, metadata !1206}
!1204 = metadata !{i32 786689, metadata !1200, metadata !"vers", metadata !1117, i32 16777309, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vers] [line 93]
!1205 = metadata !{i32 786689, metadata !1200, metadata !"fd", metadata !1117, i32 33554525, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 93]
!1206 = metadata !{i32 786689, metadata !1200, metadata !"buf", metadata !1117, i32 50331741, metadata !1159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 93]
!1207 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"fstat", metadata !"fstat", metadata !"fstat64", i32 97, metadata !1208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat64*)* @fstat64, null, null, m
!1208 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1209 = metadata !{metadata !8, metadata !8, metadata !1159}
!1210 = metadata !{metadata !1211, metadata !1212}
!1211 = metadata !{i32 786689, metadata !1207, metadata !"fd", metadata !1117, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 97]
!1212 = metadata !{i32 786689, metadata !1207, metadata !"buf", metadata !1117, i32 33554529, metadata !1159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 97]
!1213 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"ftruncate64", metadata !"ftruncate64", metadata !"", i32 101, metadata !1214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate64, null, null, met
!1214 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1215, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1215 = metadata !{metadata !8, metadata !8, metadata !1151}
!1216 = metadata !{metadata !1217, metadata !1218}
!1217 = metadata !{i32 786689, metadata !1213, metadata !"fd", metadata !1117, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 101]
!1218 = metadata !{i32 786689, metadata !1213, metadata !"length", metadata !1117, i32 33554533, metadata !1151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 101]
!1219 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"statfs", metadata !"statfs", metadata !"statfs64", i32 106, metadata !1220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @statfs64, null, nu
!1220 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1221, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1221 = metadata !{metadata !8, metadata !42, metadata !1222}
!1222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from statfs]
!1223 = metadata !{i32 786451, metadata !476, null, metadata !"statfs", i32 24, i64 960, i64 64, i32 0, i32 0, null, metadata !1224, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [statfs] [line 24, size 960, align 64, offset 0] [def] [from ]
!1224 = metadata !{metadata !1225, metadata !1226, metadata !1227, metadata !1229, metadata !1230, metadata !1231, metadata !1233, metadata !1234, metadata !1239, metadata !1240, metadata !1241, metadata !1242}
!1225 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_type", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !479} ; [ DW_TAG_member ] [f_type] [line 26, size 64, align 64, offset 0] [from __fsword_t]
!1226 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_bsize", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !479} ; [ DW_TAG_member ] [f_bsize] [line 27, size 64, align 64, offset 64] [from __fsword_t]
!1227 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_blocks", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !1228} ; [ DW_TAG_member ] [f_blocks] [line 35, size 64, align 64, offset 128] [from __fsblkcnt64_t]
!1228 = metadata !{i32 786454, metadata !476, null, metadata !"__fsblkcnt64_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__fsblkcnt64_t] [line 163, size 0, align 0, offset 0] [from long unsigned int]
!1229 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_bfree", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !1228} ; [ DW_TAG_member ] [f_bfree] [line 36, size 64, align 64, offset 192] [from __fsblkcnt64_t]
!1230 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_bavail", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !1228} ; [ DW_TAG_member ] [f_bavail] [line 37, size 64, align 64, offset 256] [from __fsblkcnt64_t]
!1231 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_files", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !1232} ; [ DW_TAG_member ] [f_files] [line 38, size 64, align 64, offset 320] [from __fsfilcnt64_t]
!1232 = metadata !{i32 786454, metadata !476, null, metadata !"__fsfilcnt64_t", i32 167, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__fsfilcnt64_t] [line 167, size 0, align 0, offset 0] [from long unsigned int]
!1233 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_ffree", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !1232} ; [ DW_TAG_member ] [f_ffree] [line 39, size 64, align 64, offset 384] [from __fsfilcnt64_t]
!1234 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_fsid", i32 41, i64 64, i64 32, i64 448, i32 0, metadata !1235} ; [ DW_TAG_member ] [f_fsid] [line 41, size 64, align 32, offset 448] [from __fsid_t]
!1235 = metadata !{i32 786454, metadata !476, null, metadata !"__fsid_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !1236} ; [ DW_TAG_typedef ] [__fsid_t] [line 134, size 0, align 0, offset 0] [from ]
!1236 = metadata !{i32 786451, metadata !491, null, metadata !"", i32 134, i64 64, i64 32, i32 0, i32 0, null, metadata !1237, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 134, size 64, align 32, offset 0] [def] [from ]
!1237 = metadata !{metadata !1238}
!1238 = metadata !{i32 786445, metadata !491, metadata !1236, metadata !"__val", i32 134, i64 64, i64 32, i64 0, i32 0, metadata !494} ; [ DW_TAG_member ] [__val] [line 134, size 64, align 32, offset 0] [from ]
!1239 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_namelen", i32 42, i64 64, i64 64, i64 512, i32 0, metadata !479} ; [ DW_TAG_member ] [f_namelen] [line 42, size 64, align 64, offset 512] [from __fsword_t]
!1240 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_frsize", i32 43, i64 64, i64 64, i64 576, i32 0, metadata !479} ; [ DW_TAG_member ] [f_frsize] [line 43, size 64, align 64, offset 576] [from __fsword_t]
!1241 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_flags", i32 44, i64 64, i64 64, i64 640, i32 0, metadata !479} ; [ DW_TAG_member ] [f_flags] [line 44, size 64, align 64, offset 640] [from __fsword_t]
!1242 = metadata !{i32 786445, metadata !476, metadata !1223, metadata !"f_spare", i32 45, i64 256, i64 64, i64 704, i32 0, metadata !501} ; [ DW_TAG_member ] [f_spare] [line 45, size 256, align 64, offset 704] [from ]
!1243 = metadata !{metadata !1244, metadata !1245}
!1244 = metadata !{i32 786689, metadata !1219, metadata !"path", metadata !1117, i32 16777322, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 106]
!1245 = metadata !{i32 786689, metadata !1219, metadata !"buf", metadata !1117, i32 33554538, metadata !1222, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 106]
!1246 = metadata !{i32 786478, metadata !1114, metadata !1117, metadata !"getdents64", metadata !"getdents64", metadata !"", i32 110, metadata !1247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent*, i32)* @getdents64, n
!1247 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1248, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1248 = metadata !{metadata !8, metadata !53, metadata !1249, metadata !53}
!1249 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1250} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dirent]
!1250 = metadata !{i32 786451, metadata !358, null, metadata !"dirent", i32 22, i64 2240, i64 64, i32 0, i32 0, null, metadata !1251, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [dirent] [line 22, size 2240, align 64, offset 0] [def] [from ]
!1251 = metadata !{metadata !1252, metadata !1254, metadata !1255, metadata !1256, metadata !1257}
!1252 = metadata !{i32 786445, metadata !358, metadata !1250, metadata !"d_ino", i32 28, i64 64, i64 64, i64 0, i32 0, metadata !1253} ; [ DW_TAG_member ] [d_ino] [line 28, size 64, align 64, offset 0] [from __ino64_t]
!1253 = metadata !{i32 786454, metadata !358, null, metadata !"__ino64_t", i32 128, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__ino64_t] [line 128, size 0, align 0, offset 0] [from long unsigned int]
!1254 = metadata !{i32 786445, metadata !358, metadata !1250, metadata !"d_off", i32 29, i64 64, i64 64, i64 64, i32 0, metadata !1150} ; [ DW_TAG_member ] [d_off] [line 29, size 64, align 64, offset 64] [from __off64_t]
!1255 = metadata !{i32 786445, metadata !358, metadata !1250, metadata !"d_reclen", i32 31, i64 16, i64 16, i64 128, i32 0, metadata !363} ; [ DW_TAG_member ] [d_reclen] [line 31, size 16, align 16, offset 128] [from unsigned short]
!1256 = metadata !{i32 786445, metadata !358, metadata !1250, metadata !"d_type", i32 32, i64 8, i64 8, i64 144, i32 0, metadata !365} ; [ DW_TAG_member ] [d_type] [line 32, size 8, align 8, offset 144] [from unsigned char]
!1257 = metadata !{i32 786445, metadata !358, metadata !1250, metadata !"d_name", i32 33, i64 2048, i64 8, i64 152, i32 0, metadata !367} ; [ DW_TAG_member ] [d_name] [line 33, size 2048, align 8, offset 152] [from ]
!1258 = metadata !{metadata !1259, metadata !1260, metadata !1261}
!1259 = metadata !{i32 786689, metadata !1246, metadata !"fd", metadata !1117, i32 16777326, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 110]
!1260 = metadata !{i32 786689, metadata !1246, metadata !"dirp", metadata !1117, i32 33554542, metadata !1249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirp] [line 110]
!1261 = metadata !{i32 786689, metadata !1246, metadata !"count", metadata !1117, i32 50331758, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 110]
!1262 = metadata !{i32 786449, metadata !1263, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1263 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1264 = metadata !{metadata !1265, metadata !1272, metadata !1278}
!1265 = metadata !{i32 786478, metadata !1263, metadata !1266, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !1267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1266 = metadata !{i32 786473, metadata !1263}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!1267 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1268, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1268 = metadata !{metadata !1269, metadata !1269}
!1269 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!1270 = metadata !{metadata !1271}
!1271 = metadata !{i32 786689, metadata !1265, metadata !"d", metadata !1266, i32 16777227, metadata !1269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1272 = metadata !{i32 786478, metadata !1263, metadata !1266, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !1273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1273 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1274, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1274 = metadata !{metadata !1275, metadata !1275}
!1275 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!1276 = metadata !{metadata !1277}
!1277 = metadata !{i32 786689, metadata !1272, metadata !"f", metadata !1266, i32 16777231, metadata !1275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1278 = metadata !{i32 786478, metadata !1263, metadata !1266, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !1279, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1279 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1280, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1280 = metadata !{metadata !1281, metadata !1281}
!1281 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!1282 = metadata !{metadata !1283}
!1283 = metadata !{i32 786689, metadata !1278, metadata !"f", metadata !1266, i32 16777236, metadata !1281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1284 = metadata !{i32 786449, metadata !1285, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1285 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fenv.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1286 = metadata !{metadata !1287, metadata !1296}
!1287 = metadata !{i32 786436, metadata !1288, null, metadata !"KleeRoundingMode", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !1289, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KleeRoundingMode] [line 185, size 32, align 32, offset
!1288 = metadata !{metadata !"/home/user/klee/include/klee/klee.h", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1289 = metadata !{metadata !1290, metadata !1291, metadata !1292, metadata !1293, metadata !1294, metadata !1295}
!1290 = metadata !{i32 786472, metadata !"KLEE_FP_RNE", i64 0} ; [ DW_TAG_enumerator ] [KLEE_FP_RNE :: 0]
!1291 = metadata !{i32 786472, metadata !"KLEE_FP_RNA", i64 1} ; [ DW_TAG_enumerator ] [KLEE_FP_RNA :: 1]
!1292 = metadata !{i32 786472, metadata !"KLEE_FP_RU", i64 2} ; [ DW_TAG_enumerator ] [KLEE_FP_RU :: 2]
!1293 = metadata !{i32 786472, metadata !"KLEE_FP_RD", i64 3} ; [ DW_TAG_enumerator ] [KLEE_FP_RD :: 3]
!1294 = metadata !{i32 786472, metadata !"KLEE_FP_RZ", i64 4} ; [ DW_TAG_enumerator ] [KLEE_FP_RZ :: 4]
!1295 = metadata !{i32 786472, metadata !"KLEE_FP_UNKNOWN", i64 5} ; [ DW_TAG_enumerator ] [KLEE_FP_UNKNOWN :: 5]
!1296 = metadata !{i32 786436, metadata !1285, null, metadata !"", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !1297, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 15, size 32, align 32, offset 0] [def] [from ]
!1297 = metadata !{metadata !1298, metadata !1299, metadata !1300, metadata !1301, metadata !1302}
!1298 = metadata !{i32 786472, metadata !"FE_TONEAREST", i64 0} ; [ DW_TAG_enumerator ] [FE_TONEAREST :: 0]
!1299 = metadata !{i32 786472, metadata !"FE_DOWNWARD", i64 1024} ; [ DW_TAG_enumerator ] [FE_DOWNWARD :: 1024]
!1300 = metadata !{i32 786472, metadata !"FE_UPWARD", i64 2048} ; [ DW_TAG_enumerator ] [FE_UPWARD :: 2048]
!1301 = metadata !{i32 786472, metadata !"FE_TOWARDZERO", i64 3072} ; [ DW_TAG_enumerator ] [FE_TOWARDZERO :: 3072]
!1302 = metadata !{i32 786472, metadata !"FE_TONEAREST_TIES_TO_AWAY", i64 3073} ; [ DW_TAG_enumerator ] [FE_TONEAREST_TIES_TO_AWAY :: 3073]
!1303 = metadata !{metadata !1304, metadata !1310}
!1304 = metadata !{i32 786478, metadata !1285, metadata !1305, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !1306, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_intern
!1305 = metadata !{i32 786473, metadata !1285}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!1306 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1307, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1307 = metadata !{metadata !8}
!1308 = metadata !{metadata !1309}
!1309 = metadata !{i32 786688, metadata !1304, metadata !"rm", metadata !1305, i32 34, metadata !1287, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!1310 = metadata !{i32 786478, metadata !1285, metadata !1305, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_inte
!1311 = metadata !{metadata !1312}
!1312 = metadata !{i32 786689, metadata !1310, metadata !"rm", metadata !1305, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!1313 = metadata !{i32 786449, metadata !1314, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1314 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1315 = metadata !{metadata !1316}
!1316 = metadata !{i32 786436, metadata !1314, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !1317, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!1317 = metadata !{metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322}
!1318 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!1319 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!1320 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!1321 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!1322 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!1323 = metadata !{metadata !1324, metadata !1330, metadata !1335, metadata !1340, metadata !1343, metadata !1346, metadata !1349, metadata !1352, metadata !1355}
!1324 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !1326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_
!1325 = metadata !{i32 786473, metadata !1314}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!1326 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1327, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1327 = metadata !{metadata !8, metadata !1275}
!1328 = metadata !{metadata !1329}
!1329 = metadata !{i32 786689, metadata !1324, metadata !"f", metadata !1325, i32 16777232, metadata !1275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!1330 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !1331, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_i
!1331 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1332, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1332 = metadata !{metadata !8, metadata !1269}
!1333 = metadata !{metadata !1334}
!1334 = metadata !{i32 786689, metadata !1330, metadata !"d", metadata !1325, i32 16777237, metadata !1269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!1335 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !1336, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_intern
!1336 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1337, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1337 = metadata !{metadata !8, metadata !1281}
!1338 = metadata !{metadata !1339}
!1339 = metadata !{i32 786689, metadata !1335, metadata !"d", metadata !1325, i32 16777242, metadata !1281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!1340 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !1326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee
!1341 = metadata !{metadata !1342}
!1342 = metadata !{i32 786689, metadata !1340, metadata !"f", metadata !1325, i32 16777283, metadata !1275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!1343 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !1331, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_
!1344 = metadata !{metadata !1345}
!1345 = metadata !{i32 786689, metadata !1343, metadata !"f", metadata !1325, i32 16777298, metadata !1269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!1346 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !1336, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @k
!1347 = metadata !{metadata !1348}
!1348 = metadata !{i32 786689, metadata !1346, metadata !"ld", metadata !1325, i32 16777314, metadata !1281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!1349 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !1326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_intern
!1350 = metadata !{metadata !1351}
!1351 = metadata !{i32 786689, metadata !1349, metadata !"f", metadata !1325, i32 16777330, metadata !1275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!1352 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !1331, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_interna
!1353 = metadata !{metadata !1354}
!1354 = metadata !{i32 786689, metadata !1352, metadata !"f", metadata !1325, i32 16777335, metadata !1269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!1355 = metadata !{i32 786478, metadata !1314, metadata !1325, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !1336, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_int
!1356 = metadata !{metadata !1357}
!1357 = metadata !{i32 786689, metadata !1355, metadata !"f", metadata !1325, i32 16777340, metadata !1281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!1358 = metadata !{i32 786449, metadata !1359, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1359 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1360 = metadata !{metadata !1361}
!1361 = metadata !{i32 786478, metadata !1359, metadata !1362, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !1363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_che
!1362 = metadata !{i32 786473, metadata !1359}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!1363 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1364, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1364 = metadata !{null, metadata !1365}
!1365 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!1366 = metadata !{metadata !1367}
!1367 = metadata !{i32 786689, metadata !1361, metadata !"z", metadata !1362, i32 16777228, metadata !1365, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!1368 = metadata !{i32 786449, metadata !1369, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1369 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1370 = metadata !{metadata !1371}
!1371 = metadata !{i32 786478, metadata !1369, metadata !1372, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !1373, i32
!1372 = metadata !{i32 786473, metadata !1369}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!1373 = metadata !{metadata !1374, metadata !1375}
!1374 = metadata !{i32 786689, metadata !1371, metadata !"name", metadata !1372, i32 16777229, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1375 = metadata !{i32 786688, metadata !1371, metadata !"x", metadata !1372, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1376 = metadata !{i32 786449, metadata !1377, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1377 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1378 = metadata !{metadata !1379}
!1379 = metadata !{i32 786478, metadata !1377, metadata !1380, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !1381, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overs
!1380 = metadata !{i32 786473, metadata !1377}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!1381 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1382, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1382 = metadata !{null, metadata !1383, metadata !1383}
!1383 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!1384 = metadata !{metadata !1385, metadata !1386}
!1385 = metadata !{i32 786689, metadata !1379, metadata !"bitWidth", metadata !1380, i32 16777236, metadata !1383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!1386 = metadata !{i32 786689, metadata !1379, metadata !"shift", metadata !1380, i32 33554452, metadata !1383, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!1387 = metadata !{i32 786449, metadata !1388, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1388 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1389 = metadata !{metadata !1390}
!1390 = metadata !{i32 786478, metadata !1388, metadata !1391, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !1392, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, me
!1391 = metadata !{i32 786473, metadata !1388}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!1392 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1393, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1393 = metadata !{metadata !8, metadata !8, metadata !8, metadata !42}
!1394 = metadata !{metadata !1395, metadata !1396, metadata !1397, metadata !1398}
!1395 = metadata !{i32 786689, metadata !1390, metadata !"start", metadata !1391, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!1396 = metadata !{i32 786689, metadata !1390, metadata !"end", metadata !1391, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!1397 = metadata !{i32 786689, metadata !1390, metadata !"name", metadata !1391, i32 50331661, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1398 = metadata !{i32 786688, metadata !1390, metadata !"x", metadata !1391, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1399 = metadata !{i32 786449, metadata !1400, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1400 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1401 = metadata !{metadata !1287}
!1402 = metadata !{metadata !1403}
!1403 = metadata !{i32 786478, metadata !1400, metadata !1404, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !1405, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_ro
!1404 = metadata !{i32 786473, metadata !1400}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!1405 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1406, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1406 = metadata !{null, metadata !1287}
!1407 = metadata !{metadata !1408}
!1408 = metadata !{i32 786689, metadata !1403, metadata !"rm", metadata !1404, i32 16777232, metadata !1287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!1409 = metadata !{i32 786449, metadata !1410, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1410 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1411 = metadata !{metadata !1412}
!1412 = metadata !{i32 786478, metadata !1410, metadata !1413, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !1414, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !1417
!1413 = metadata !{i32 786473, metadata !1410}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!1414 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1415, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1415 = metadata !{metadata !182, metadata !182, metadata !195, metadata !1416}
!1416 = metadata !{i32 786454, metadata !1410, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1417 = metadata !{metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422}
!1418 = metadata !{i32 786689, metadata !1412, metadata !"destaddr", metadata !1413, i32 16777228, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!1419 = metadata !{i32 786689, metadata !1412, metadata !"srcaddr", metadata !1413, i32 33554444, metadata !195, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!1420 = metadata !{i32 786689, metadata !1412, metadata !"len", metadata !1413, i32 50331660, metadata !1416, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!1421 = metadata !{i32 786688, metadata !1412, metadata !"dest", metadata !1413, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!1422 = metadata !{i32 786688, metadata !1412, metadata !"src", metadata !1413, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!1423 = metadata !{i32 786449, metadata !1424, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1424 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1425 = metadata !{metadata !1426}
!1426 = metadata !{i32 786478, metadata !1424, metadata !1427, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !1428, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !1
!1427 = metadata !{i32 786473, metadata !1424}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!1428 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1429, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1429 = metadata !{metadata !182, metadata !182, metadata !195, metadata !1430}
!1430 = metadata !{i32 786454, metadata !1424, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1431 = metadata !{metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436}
!1432 = metadata !{i32 786689, metadata !1426, metadata !"dst", metadata !1427, i32 16777228, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!1433 = metadata !{i32 786689, metadata !1426, metadata !"src", metadata !1427, i32 33554444, metadata !195, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!1434 = metadata !{i32 786689, metadata !1426, metadata !"count", metadata !1427, i32 50331660, metadata !1430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!1435 = metadata !{i32 786688, metadata !1426, metadata !"a", metadata !1427, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!1436 = metadata !{i32 786688, metadata !1426, metadata !"b", metadata !1427, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!1437 = metadata !{i32 786449, metadata !1438, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1438 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1439 = metadata !{metadata !1440}
!1440 = metadata !{i32 786478, metadata !1438, metadata !1441, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !1442, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !1
!1441 = metadata !{i32 786473, metadata !1438}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!1442 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1443, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1443 = metadata !{metadata !182, metadata !182, metadata !195, metadata !1444}
!1444 = metadata !{i32 786454, metadata !1438, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1445 = metadata !{metadata !1446, metadata !1447, metadata !1448, metadata !1449, metadata !1450}
!1446 = metadata !{i32 786689, metadata !1440, metadata !"destaddr", metadata !1441, i32 16777227, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!1447 = metadata !{i32 786689, metadata !1440, metadata !"srcaddr", metadata !1441, i32 33554443, metadata !195, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!1448 = metadata !{i32 786689, metadata !1440, metadata !"len", metadata !1441, i32 50331659, metadata !1444, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!1449 = metadata !{i32 786688, metadata !1440, metadata !"dest", metadata !1441, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!1450 = metadata !{i32 786688, metadata !1440, metadata !"src", metadata !1441, i32 13, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!1451 = metadata !{i32 786449, metadata !1452, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1452 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1453 = metadata !{metadata !1454}
!1454 = metadata !{i32 786478, metadata !1452, metadata !1455, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !1456, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !1459
!1455 = metadata !{i32 786473, metadata !1452}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!1456 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1457, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1457 = metadata !{metadata !182, metadata !182, metadata !8, metadata !1458}
!1458 = metadata !{i32 786454, metadata !1452, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1459 = metadata !{metadata !1460, metadata !1461, metadata !1462, metadata !1463}
!1460 = metadata !{i32 786689, metadata !1454, metadata !"dst", metadata !1455, i32 16777227, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!1461 = metadata !{i32 786689, metadata !1454, metadata !"s", metadata !1455, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!1462 = metadata !{i32 786689, metadata !1454, metadata !"count", metadata !1455, i32 50331659, metadata !1458, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!1463 = metadata !{i32 786688, metadata !1454, metadata !"a", metadata !1455, i32 12, metadata !1464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!1464 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1465} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1465 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!1466 = metadata !{i32 786449, metadata !1467, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1467 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1468 = metadata !{metadata !1469, metadata !1473, metadata !1476}
!1469 = metadata !{i32 786478, metadata !1467, metadata !1470, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !1267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1470 = metadata !{i32 786473, metadata !1467}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!1471 = metadata !{metadata !1472}
!1472 = metadata !{i32 786689, metadata !1469, metadata !"d", metadata !1470, i32 16777227, metadata !1269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1473 = metadata !{i32 786478, metadata !1467, metadata !1470, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !1273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1474 = metadata !{metadata !1475}
!1475 = metadata !{i32 786689, metadata !1473, metadata !"f", metadata !1470, i32 16777231, metadata !1275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1476 = metadata !{i32 786478, metadata !1467, metadata !1470, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !1279, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1477 = metadata !{metadata !1478}
!1478 = metadata !{i32 786689, metadata !1476, metadata !"f", metadata !1470, i32 16777236, metadata !1281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1479 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!1480 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1481 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!1482 = metadata !{i32 9, i32 0, metadata !4, null}
!1483 = metadata !{i32 11, i32 0, metadata !4, null}
!1484 = metadata !{i32 12, i32 0, metadata !4, null}
!1485 = metadata !{i32 13, i32 0, metadata !1486, null}
!1486 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/file_posix_cp_l1_klee_annotated.c]
!1487 = metadata !{i32 15, i32 0, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !1, metadata !1486, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/file_posix_cp_l1_klee_annotated.c]
!1489 = metadata !{i32 17, i32 0, metadata !4, null}
!1490 = metadata !{i32 18, i32 0, metadata !4, null}
!1491 = metadata !{i32 19, i32 0, metadata !4, null}
!1492 = metadata !{i32 20, i32 0, metadata !4, null}
!1493 = metadata !{i32 21, i32 0, metadata !4, null}
!1494 = metadata !{i32 22, i32 0, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/file_posix_cp_l1_klee_annotated.c]
!1496 = metadata !{i32 23, i32 0, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1, metadata !1495, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/file_posix_cp_l1_klee_annotated.c]
!1498 = metadata !{i32 24, i32 0, metadata !1497, null}
!1499 = metadata !{i32 25, i32 0, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !1, metadata !1495, i32 24, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/covert_propogation/file_posix_cp_l1_klee_annotated.c]
!1501 = metadata !{i32 27, i32 0, metadata !4, null}
!1502 = metadata !{i32 31, i32 0, metadata !11, null}
!1503 = metadata !{i32 32, i32 0, metadata !11, null}
!1504 = metadata !{i32 33, i32 0, metadata !11, null}
!1505 = metadata !{i32 40, i32 0, metadata !676, metadata !1506}
!1506 = metadata !{i32 74, i32 0, metadata !38, null}
!1507 = metadata !{metadata !1508, metadata !1508, i64 0}
!1508 = metadata !{metadata !"omnipotent char", metadata !1509, i64 0}
!1509 = metadata !{metadata !"Simple C/C++ TBAA"}
!1510 = metadata !{i32 43, i32 0, metadata !1511, metadata !1506}
!1511 = metadata !{i32 786443, metadata !16, metadata !676, i32 43, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1512 = metadata !{i32 46, i32 0, metadata !687, metadata !1506}
!1513 = metadata !{metadata !1514, metadata !1515, i64 0}
!1514 = metadata !{metadata !"", metadata !1515, i64 0, metadata !1516, i64 8, metadata !1516, i64 16, metadata !1515, i64 24, metadata !1516, i64 32, metadata !1515, i64 40, metadata !1516, i64 48, metadata !1516, i64 56, metadata !1516, i64 64, metadat
!1515 = metadata !{metadata !"int", metadata !1508, i64 0}
!1516 = metadata !{metadata !"any pointer", metadata !1508, i64 0}
!1517 = metadata !{i32 47, i32 0, metadata !685, metadata !1506}
!1518 = metadata !{i32 48, i32 0, metadata !684, metadata !1506}
!1519 = metadata !{metadata !1514, metadata !1516, i64 32}
!1520 = metadata !{i32 49, i32 0, metadata !1521, metadata !1506}
!1521 = metadata !{i32 786443, metadata !16, metadata !684, i32 49, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1522 = metadata !{metadata !1523, metadata !1516, i64 16}
!1523 = metadata !{metadata !"", metadata !1515, i64 0, metadata !1516, i64 8, metadata !1516, i64 16}
!1524 = metadata !{metadata !1525, metadata !1526, i64 8}
!1525 = metadata !{metadata !"stat64", metadata !1526, i64 0, metadata !1526, i64 8, metadata !1526, i64 16, metadata !1515, i64 24, metadata !1515, i64 28, metadata !1515, i64 32, metadata !1515, i64 36, metadata !1526, i64 40, metadata !1526, i64 48, m
!1526 = metadata !{metadata !"long", metadata !1508, i64 0}
!1527 = metadata !{metadata !"timespec", metadata !1526, i64 0, metadata !1526, i64 8}
!1528 = metadata !{i32 76, i32 0, metadata !98, null}
!1529 = metadata !{i32 1417, i32 0, metadata !642, metadata !1530}
!1530 = metadata !{i32 1429, i32 0, metadata !623, metadata !1531}
!1531 = metadata !{i32 81, i32 0, metadata !97, null}
!1532 = metadata !{i32 1418, i32 0, metadata !642, metadata !1530}
!1533 = metadata !{i32 1432, i32 0, metadata !632, metadata !1531}
!1534 = metadata !{i32 1433, i32 0, metadata !631, metadata !1531}
!1535 = metadata !{i32 1434, i32 0, metadata !635, metadata !1531}
!1536 = metadata !{i32 1435, i32 0, metadata !1537, metadata !1531}
!1537 = metadata !{i32 786443, metadata !16, metadata !1538, i32 1435, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1538 = metadata !{i32 786443, metadata !16, metadata !635, i32 1434, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1539 = metadata !{i32 1436, i32 0, metadata !1540, metadata !1531}
!1540 = metadata !{i32 786443, metadata !16, metadata !1537, i32 1435, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1541 = metadata !{i32 1437, i32 0, metadata !1540, metadata !1531}
!1542 = metadata !{i32 1439, i32 0, metadata !1543, metadata !1531}
!1543 = metadata !{i32 786443, metadata !16, metadata !1544, i32 1438, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1544 = metadata !{i32 786443, metadata !16, metadata !1537, i32 1438, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1545 = metadata !{i32 1440, i32 0, metadata !1543, metadata !1531}
!1546 = metadata !{i32 1442, i32 0, metadata !634, metadata !1531}
!1547 = metadata !{i32 1443, i32 0, metadata !634, metadata !1531}
!1548 = metadata !{i32 1444, i32 0, metadata !634, metadata !1531}
!1549 = metadata !{i32 1445, i32 0, metadata !1550, metadata !1531}
!1550 = metadata !{i32 786443, metadata !16, metadata !634, i32 1445, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1551 = metadata !{i32 82, i32 0, metadata !1552, null}
!1552 = metadata !{i32 786443, metadata !16, metadata !97, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1553 = metadata !{i32 83, i32 0, metadata !1552, null}
!1554 = metadata !{metadata !1515, metadata !1515, i64 0}
!1555 = metadata !{i32 86, i32 0, metadata !38, null}
!1556 = metadata !{i32 89, i32 0, metadata !99, null}
!1557 = metadata !{metadata !1558, metadata !1515, i64 768}
!1558 = metadata !{metadata !"", metadata !1508, i64 0, metadata !1515, i64 768, metadata !1515, i64 772, metadata !1515, i64 776}
!1559 = metadata !{i32 90, i32 0, metadata !99, null}
!1560 = metadata !{i32 91, i32 0, metadata !99, null}
!1561 = metadata !{i32 133, i32 0, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !16, metadata !106, i32 133, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1563 = metadata !{i32 134, i32 0, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !16, metadata !1562, i32 134, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1565 = metadata !{metadata !1566, metadata !1515, i64 4}
!1566 = metadata !{metadata !"", metadata !1515, i64 0, metadata !1515, i64 4, metadata !1526, i64 8, metadata !1516, i64 16}
!1567 = metadata !{i32 136, i32 0, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !16, metadata !106, i32 136, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1569 = metadata !{i32 137, i32 0, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !16, metadata !1568, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1571 = metadata !{i32 138, i32 0, metadata !1570, null}
!1572 = metadata !{i32 141, i32 0, metadata !106, null}
!1573 = metadata !{i32 144, i32 0, metadata !106, null}
!1574 = metadata !{i32 40, i32 0, metadata !676, metadata !1575}
!1575 = metadata !{i32 146, i32 0, metadata !106, null}
!1576 = metadata !{i32 43, i32 0, metadata !1511, metadata !1575}
!1577 = metadata !{i32 46, i32 0, metadata !687, metadata !1575}
!1578 = metadata !{i32 47, i32 0, metadata !685, metadata !1575}
!1579 = metadata !{i32 48, i32 0, metadata !684, metadata !1575}
!1580 = metadata !{i32 49, i32 0, metadata !1521, metadata !1575}
!1581 = metadata !{i32 147, i32 0, metadata !128, null}
!1582 = metadata !{i32 150, i32 0, metadata !1583, null}
!1583 = metadata !{i32 786443, metadata !16, metadata !128, i32 147, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1584 = metadata !{metadata !1566, metadata !1516, i64 16}
!1585 = metadata !{i32 152, i32 0, metadata !1586, null}
!1586 = metadata !{i32 786443, metadata !16, metadata !1583, i32 152, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1587 = metadata !{i32 153, i32 0, metadata !1588, null}
!1588 = metadata !{i32 786443, metadata !16, metadata !1586, i32 152, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1589 = metadata !{i32 154, i32 0, metadata !1588, null}
!1590 = metadata !{i32 168, i32 0, metadata !1591, null}
!1591 = metadata !{i32 786443, metadata !16, metadata !1592, i32 165, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1592 = metadata !{i32 786443, metadata !16, metadata !1583, i32 165, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1593 = metadata !{i32 169, i32 0, metadata !1591, null}
!1594 = metadata !{i32 170, i32 0, metadata !1591, null}
!1595 = metadata !{i32 99, i32 0, metadata !669, metadata !1596}
!1596 = metadata !{i32 173, i32 0, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !16, metadata !1583, i32 173, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1598 = metadata !{metadata !1525, metadata !1515, i64 24}
!1599 = metadata !{i32 101, i32 0, metadata !1600, metadata !1596}
!1600 = metadata !{i32 786443, metadata !16, metadata !669, i32 101, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1601 = metadata !{i32 118, i32 0, metadata !1602, metadata !1596}
!1602 = metadata !{i32 786443, metadata !16, metadata !669, i32 118, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1603 = metadata !{i32 105, i32 0, metadata !1604, metadata !1596}
!1604 = metadata !{i32 786443, metadata !16, metadata !669, i32 105, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1605 = metadata !{i32 121, i32 0, metadata !1606, metadata !1596}
!1606 = metadata !{i32 786443, metadata !16, metadata !669, i32 121, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1607 = metadata !{i32 174, i32 0, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !16, metadata !1597, i32 173, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1609 = metadata !{i32 175, i32 0, metadata !1608, null}
!1610 = metadata !{i32 178, i32 0, metadata !1597, null}
!1611 = metadata !{i32 180, i32 0, metadata !1583, null}
!1612 = metadata !{i32 1417, i32 0, metadata !642, metadata !1613}
!1613 = metadata !{i32 1429, i32 0, metadata !623, metadata !1614}
!1614 = metadata !{i32 181, i32 0, metadata !127, null}
!1615 = metadata !{i32 1418, i32 0, metadata !642, metadata !1613}
!1616 = metadata !{i32 1432, i32 0, metadata !632, metadata !1614}
!1617 = metadata !{i32 1433, i32 0, metadata !631, metadata !1614}
!1618 = metadata !{i32 1434, i32 0, metadata !635, metadata !1614}
!1619 = metadata !{i32 1435, i32 0, metadata !1537, metadata !1614}
!1620 = metadata !{i32 1436, i32 0, metadata !1540, metadata !1614}
!1621 = metadata !{i32 1437, i32 0, metadata !1540, metadata !1614}
!1622 = metadata !{i32 1439, i32 0, metadata !1543, metadata !1614}
!1623 = metadata !{i32 1440, i32 0, metadata !1543, metadata !1614}
!1624 = metadata !{i32 1442, i32 0, metadata !634, metadata !1614}
!1625 = metadata !{i32 1443, i32 0, metadata !634, metadata !1614}
!1626 = metadata !{i32 1444, i32 0, metadata !634, metadata !1614}
!1627 = metadata !{i32 1445, i32 0, metadata !1550, metadata !1614}
!1628 = metadata !{i32 182, i32 0, metadata !1629, null}
!1629 = metadata !{i32 786443, metadata !16, metadata !127, i32 182, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1630 = metadata !{i32 183, i32 0, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !16, metadata !1629, i32 182, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1632 = metadata !{i32 184, i32 0, metadata !1631, null}
!1633 = metadata !{i32 186, i32 0, metadata !127, null}
!1634 = metadata !{metadata !1566, metadata !1515, i64 0}
!1635 = metadata !{i32 190, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !16, metadata !106, i32 190, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1637 = metadata !{i32 189, i32 0, metadata !106, null}
!1638 = metadata !{i32 191, i32 0, metadata !1639, null}
!1639 = metadata !{i32 786443, metadata !16, metadata !1636, i32 190, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1640 = metadata !{i32 192, i32 0, metadata !1639, null}
!1641 = metadata !{i32 193, i32 0, metadata !1642, null}
!1642 = metadata !{i32 786443, metadata !16, metadata !1643, i32 192, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1643 = metadata !{i32 786443, metadata !16, metadata !1636, i32 192, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1644 = metadata !{i32 194, i32 0, metadata !1642, null}
!1645 = metadata !{i32 195, i32 0, metadata !1646, null}
!1646 = metadata !{i32 786443, metadata !16, metadata !1643, i32 194, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1647 = metadata !{i32 199, i32 0, metadata !106, null}
!1648 = metadata !{i32 204, i32 0, metadata !141, null}
!1649 = metadata !{i32 64, i32 0, metadata !668, metadata !1650}
!1650 = metadata !{i32 205, i32 0, metadata !140, null}
!1651 = metadata !{i32 65, i32 0, metadata !667, metadata !1650}
!1652 = metadata !{i32 66, i32 0, metadata !1653, metadata !1650}
!1653 = metadata !{i32 786443, metadata !16, metadata !667, i32 66, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1654 = metadata !{i32 207, i32 0, metadata !1655, null}
!1655 = metadata !{i32 786443, metadata !16, metadata !140, i32 207, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1656 = metadata !{i32 208, i32 0, metadata !1657, null}
!1657 = metadata !{i32 786443, metadata !16, metadata !1655, i32 207, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1658 = metadata !{i32 209, i32 0, metadata !1657, null}
!1659 = metadata !{i32 210, i32 0, metadata !1660, null}
!1660 = metadata !{i32 786443, metadata !16, metadata !1655, i32 210, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1661 = metadata !{i32 211, i32 0, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !16, metadata !1660, i32 210, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1663 = metadata !{i32 212, i32 0, metadata !1662, null}
!1664 = metadata !{i32 213, i32 0, metadata !1662, null}
!1665 = metadata !{i32 215, i32 0, metadata !140, null}
!1666 = metadata !{i32 216, i32 0, metadata !140, null}
!1667 = metadata !{i32 40, i32 0, metadata !676, metadata !1668}
!1668 = metadata !{i32 218, i32 0, metadata !1669, null}
!1669 = metadata !{i32 786443, metadata !16, metadata !129, i32 218, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1670 = metadata !{i32 43, i32 0, metadata !1511, metadata !1668}
!1671 = metadata !{i32 46, i32 0, metadata !687, metadata !1668}
!1672 = metadata !{i32 47, i32 0, metadata !685, metadata !1668}
!1673 = metadata !{i32 48, i32 0, metadata !684, metadata !1668}
!1674 = metadata !{i32 49, i32 0, metadata !1521, metadata !1668}
!1675 = metadata !{i32 220, i32 0, metadata !1676, null}
!1676 = metadata !{i32 786443, metadata !16, metadata !1669, i32 218, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1677 = metadata !{i32 223, i32 0, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !16, metadata !129, i32 223, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1679 = metadata !{i32 224, i32 0, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !16, metadata !1678, i32 224, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1681 = metadata !{i32 226, i32 0, metadata !1682, null}
!1682 = metadata !{i32 786443, metadata !16, metadata !129, i32 226, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1683 = metadata !{i32 227, i32 0, metadata !1684, null}
!1684 = metadata !{i32 786443, metadata !16, metadata !1682, i32 226, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1685 = metadata !{i32 228, i32 0, metadata !1684, null}
!1686 = metadata !{i32 231, i32 0, metadata !129, null}
!1687 = metadata !{i32 234, i32 0, metadata !129, null}
!1688 = metadata !{i32 1417, i32 0, metadata !642, metadata !1689}
!1689 = metadata !{i32 1429, i32 0, metadata !623, metadata !1690}
!1690 = metadata !{i32 236, i32 0, metadata !129, null}
!1691 = metadata !{i32 1418, i32 0, metadata !642, metadata !1689}
!1692 = metadata !{i32 1432, i32 0, metadata !632, metadata !1690}
!1693 = metadata !{i32 1433, i32 0, metadata !631, metadata !1690}
!1694 = metadata !{i32 1434, i32 0, metadata !635, metadata !1690}
!1695 = metadata !{i32 1435, i32 0, metadata !1537, metadata !1690}
!1696 = metadata !{i32 1436, i32 0, metadata !1540, metadata !1690}
!1697 = metadata !{i32 1437, i32 0, metadata !1540, metadata !1690}
!1698 = metadata !{i32 1439, i32 0, metadata !1543, metadata !1690}
!1699 = metadata !{i32 1440, i32 0, metadata !1543, metadata !1690}
!1700 = metadata !{i32 1442, i32 0, metadata !634, metadata !1690}
!1701 = metadata !{i32 1443, i32 0, metadata !634, metadata !1690}
!1702 = metadata !{i32 1444, i32 0, metadata !634, metadata !1690}
!1703 = metadata !{i32 1445, i32 0, metadata !1550, metadata !1690}
!1704 = metadata !{i32 237, i32 0, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !16, metadata !129, i32 237, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1706 = metadata !{i32 238, i32 0, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !16, metadata !1705, i32 237, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1708 = metadata !{i32 239, i32 0, metadata !1707, null}
!1709 = metadata !{i32 242, i32 0, metadata !129, null}
!1710 = metadata !{i32 243, i32 0, metadata !129, null}
!1711 = metadata !{i32 244, i32 0, metadata !1712, null}
!1712 = metadata !{i32 786443, metadata !16, metadata !129, i32 244, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1713 = metadata !{i32 245, i32 0, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !16, metadata !1712, i32 244, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1715 = metadata !{i32 246, i32 0, metadata !1714, null}
!1716 = metadata !{i32 247, i32 0, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !16, metadata !1718, i32 246, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1718 = metadata !{i32 786443, metadata !16, metadata !1712, i32 246, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1719 = metadata !{i32 248, i32 0, metadata !1717, null}
!1720 = metadata !{i32 249, i32 0, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !16, metadata !1718, i32 248, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1722 = metadata !{i32 253, i32 0, metadata !129, null}
!1723 = metadata !{i32 40, i32 0, metadata !676, metadata !1724}
!1724 = metadata !{i32 257, i32 0, metadata !143, null}
!1725 = metadata !{i32 43, i32 0, metadata !1511, metadata !1724}
!1726 = metadata !{i32 46, i32 0, metadata !687, metadata !1724}
!1727 = metadata !{i32 47, i32 0, metadata !685, metadata !1724}
!1728 = metadata !{i32 48, i32 0, metadata !684, metadata !1724}
!1729 = metadata !{i32 49, i32 0, metadata !1521, metadata !1724}
!1730 = metadata !{i32 259, i32 0, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !16, metadata !143, i32 259, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1732 = metadata !{i32 261, i32 0, metadata !1733, null}
!1733 = metadata !{i32 786443, metadata !16, metadata !1731, i32 259, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1734 = metadata !{metadata !1735, metadata !1526, i64 0}
!1735 = metadata !{metadata !"timeval", metadata !1526, i64 0, metadata !1526, i64 8}
!1736 = metadata !{metadata !1525, metadata !1526, i64 72}
!1737 = metadata !{i32 262, i32 0, metadata !1733, null}
!1738 = metadata !{metadata !1525, metadata !1526, i64 88}
!1739 = metadata !{i32 267, i32 0, metadata !1733, null}
!1740 = metadata !{i32 1417, i32 0, metadata !642, metadata !1741}
!1741 = metadata !{i32 1429, i32 0, metadata !623, metadata !1742}
!1742 = metadata !{i32 269, i32 0, metadata !143, null}
!1743 = metadata !{i32 1418, i32 0, metadata !642, metadata !1741}
!1744 = metadata !{i32 1432, i32 0, metadata !632, metadata !1742}
!1745 = metadata !{i32 1433, i32 0, metadata !631, metadata !1742}
!1746 = metadata !{i32 1434, i32 0, metadata !635, metadata !1742}
!1747 = metadata !{i32 1435, i32 0, metadata !1537, metadata !1742}
!1748 = metadata !{i32 1436, i32 0, metadata !1540, metadata !1742}
!1749 = metadata !{i32 1437, i32 0, metadata !1540, metadata !1742}
!1750 = metadata !{i32 1439, i32 0, metadata !1543, metadata !1742}
!1751 = metadata !{i32 1440, i32 0, metadata !1543, metadata !1742}
!1752 = metadata !{i32 1442, i32 0, metadata !634, metadata !1742}
!1753 = metadata !{i32 1443, i32 0, metadata !634, metadata !1742}
!1754 = metadata !{i32 1444, i32 0, metadata !634, metadata !1742}
!1755 = metadata !{i32 1445, i32 0, metadata !1550, metadata !1742}
!1756 = metadata !{i32 270, i32 0, metadata !1757, null}
!1757 = metadata !{i32 786443, metadata !16, metadata !143, i32 270, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1758 = metadata !{i32 271, i32 0, metadata !1757, null}
!1759 = metadata !{i32 274, i32 0, metadata !143, null}
!1760 = metadata !{i32 278, i32 0, metadata !168, null}
!1761 = metadata !{i32 64, i32 0, metadata !668, metadata !1762}
!1762 = metadata !{i32 279, i32 0, metadata !167, null}
!1763 = metadata !{i32 65, i32 0, metadata !667, metadata !1762}
!1764 = metadata !{i32 66, i32 0, metadata !1653, metadata !1762}
!1765 = metadata !{i32 281, i32 0, metadata !1766, null}
!1766 = metadata !{i32 786443, metadata !16, metadata !167, i32 281, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1767 = metadata !{i32 282, i32 0, metadata !1768, null}
!1768 = metadata !{i32 786443, metadata !16, metadata !1766, i32 281, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1769 = metadata !{i32 283, i32 0, metadata !1768, null}
!1770 = metadata !{i32 284, i32 0, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !16, metadata !1766, i32 284, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1772 = metadata !{i32 285, i32 0, metadata !1773, null}
!1773 = metadata !{i32 786443, metadata !16, metadata !1771, i32 284, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1774 = metadata !{i32 286, i32 0, metadata !1773, null}
!1775 = metadata !{i32 287, i32 0, metadata !1773, null}
!1776 = metadata !{i32 289, i32 0, metadata !167, null}
!1777 = metadata !{i32 290, i32 0, metadata !167, null}
!1778 = metadata !{i32 40, i32 0, metadata !676, metadata !1779}
!1779 = metadata !{i32 291, i32 0, metadata !1780, null}
!1780 = metadata !{i32 786443, metadata !16, metadata !159, i32 291, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1781 = metadata !{i32 43, i32 0, metadata !1511, metadata !1779}
!1782 = metadata !{i32 46, i32 0, metadata !687, metadata !1779}
!1783 = metadata !{i32 47, i32 0, metadata !685, metadata !1779}
!1784 = metadata !{i32 48, i32 0, metadata !684, metadata !1779}
!1785 = metadata !{i32 49, i32 0, metadata !1521, metadata !1779}
!1786 = metadata !{i32 292, i32 0, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !16, metadata !1780, i32 291, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1788 = metadata !{i32 295, i32 0, metadata !159, null}
!1789 = metadata !{i32 1417, i32 0, metadata !642, metadata !1790}
!1790 = metadata !{i32 1429, i32 0, metadata !623, metadata !1791}
!1791 = metadata !{i32 296, i32 0, metadata !159, null}
!1792 = metadata !{i32 1418, i32 0, metadata !642, metadata !1790}
!1793 = metadata !{i32 1432, i32 0, metadata !632, metadata !1791}
!1794 = metadata !{i32 1433, i32 0, metadata !631, metadata !1791}
!1795 = metadata !{i32 1434, i32 0, metadata !635, metadata !1791}
!1796 = metadata !{i32 1435, i32 0, metadata !1537, metadata !1791}
!1797 = metadata !{i32 1436, i32 0, metadata !1540, metadata !1791}
!1798 = metadata !{i32 1437, i32 0, metadata !1540, metadata !1791}
!1799 = metadata !{i32 1439, i32 0, metadata !1543, metadata !1791}
!1800 = metadata !{i32 1440, i32 0, metadata !1543, metadata !1791}
!1801 = metadata !{i32 1442, i32 0, metadata !634, metadata !1791}
!1802 = metadata !{i32 1443, i32 0, metadata !634, metadata !1791}
!1803 = metadata !{i32 1444, i32 0, metadata !634, metadata !1791}
!1804 = metadata !{i32 1445, i32 0, metadata !1550, metadata !1791}
!1805 = metadata !{i32 298, i32 0, metadata !1806, null}
!1806 = metadata !{i32 786443, metadata !16, metadata !159, i32 298, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1807 = metadata !{i32 299, i32 0, metadata !1806, null}
!1808 = metadata !{i32 301, i32 0, metadata !159, null}
!1809 = metadata !{i32 308, i32 0, metadata !170, null}
!1810 = metadata !{i32 64, i32 0, metadata !668, metadata !1811}
!1811 = metadata !{i32 310, i32 0, metadata !170, null}
!1812 = metadata !{i32 65, i32 0, metadata !667, metadata !1811}
!1813 = metadata !{i32 66, i32 0, metadata !1653, metadata !1811}
!1814 = metadata !{i32 311, i32 0, metadata !1815, null}
!1815 = metadata !{i32 786443, metadata !16, metadata !170, i32 311, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1816 = metadata !{i32 312, i32 0, metadata !1817, null}
!1817 = metadata !{i32 786443, metadata !16, metadata !1815, i32 311, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1818 = metadata !{i32 313, i32 0, metadata !1817, null}
!1819 = metadata !{i32 316, i32 0, metadata !1820, null}
!1820 = metadata !{i32 786443, metadata !16, metadata !170, i32 316, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1821 = metadata !{metadata !1514, metadata !1515, i64 40}
!1822 = metadata !{metadata !1514, metadata !1516, i64 64}
!1823 = metadata !{i32 317, i32 0, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !16, metadata !1820, i32 316, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1825 = metadata !{i32 318, i32 0, metadata !1824, null}
!1826 = metadata !{i32 319, i32 0, metadata !1824, null}
!1827 = metadata !{i32 330, i32 0, metadata !170, null}
!1828 = metadata !{i32 332, i32 0, metadata !170, null}
!1829 = metadata !{i32 333, i32 0, metadata !170, null}
!1830 = metadata !{i32 339, i32 0, metadata !177, null}
!1831 = metadata !{i32 341, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !16, metadata !177, i32 341, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1833 = metadata !{i32 344, i32 0, metadata !1834, null}
!1834 = metadata !{i32 786443, metadata !16, metadata !177, i32 344, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1835 = metadata !{i32 345, i32 0, metadata !1836, null}
!1836 = metadata !{i32 786443, metadata !16, metadata !1834, i32 344, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1837 = metadata !{i32 346, i32 0, metadata !1836, null}
!1838 = metadata !{i32 64, i32 0, metadata !668, metadata !1839}
!1839 = metadata !{i32 349, i32 0, metadata !177, null}
!1840 = metadata !{i32 65, i32 0, metadata !667, metadata !1839}
!1841 = metadata !{i32 66, i32 0, metadata !1653, metadata !1839}
!1842 = metadata !{i32 351, i32 0, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !16, metadata !177, i32 351, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1844 = metadata !{i32 352, i32 0, metadata !1845, null}
!1845 = metadata !{i32 786443, metadata !16, metadata !1843, i32 351, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1846 = metadata !{i32 353, i32 0, metadata !1845, null}
!1847 = metadata !{i32 356, i32 0, metadata !1848, null}
!1848 = metadata !{i32 786443, metadata !16, metadata !177, i32 356, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1849 = metadata !{metadata !1514, metadata !1516, i64 48}
!1850 = metadata !{i32 357, i32 0, metadata !1851, null}
!1851 = metadata !{i32 786443, metadata !16, metadata !1848, i32 356, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1852 = metadata !{i32 358, i32 0, metadata !1851, null}
!1853 = metadata !{i32 359, i32 0, metadata !1851, null}
!1854 = metadata !{i32 362, i32 0, metadata !191, null}
!1855 = metadata !{i32 1417, i32 0, metadata !642, metadata !1856}
!1856 = metadata !{i32 365, i32 0, metadata !190, null}
!1857 = metadata !{i32 1418, i32 0, metadata !642, metadata !1856}
!1858 = metadata !{i32 1423, i32 0, metadata !636, metadata !1859}
!1859 = metadata !{i32 366, i32 0, metadata !190, null}
!1860 = metadata !{i32 1424, i32 0, metadata !636, metadata !1859}
!1861 = metadata !{i32 370, i32 0, metadata !190, null}
!1862 = metadata !{i32 371, i32 0, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !16, metadata !190, i32 371, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1864 = metadata !{i32 372, i32 0, metadata !1863, null}
!1865 = metadata !{i32 374, i32 0, metadata !1863, null}
!1866 = metadata !{metadata !1566, metadata !1526, i64 8}
!1867 = metadata !{i32 376, i32 0, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !16, metadata !190, i32 376, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1869 = metadata !{i32 377, i32 0, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !16, metadata !1868, i32 376, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1871 = metadata !{i32 378, i32 0, metadata !1870, null}
!1872 = metadata !{i32 381, i32 0, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !16, metadata !190, i32 381, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1874 = metadata !{i32 383, i32 0, metadata !190, null}
!1875 = metadata !{i32 382, i32 0, metadata !1873, null}
!1876 = metadata !{i32 386, i32 0, metadata !1877, null}
!1877 = metadata !{i32 786443, metadata !16, metadata !191, i32 385, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1878 = metadata !{i32 387, i32 0, metadata !1879, null}
!1879 = metadata !{i32 786443, metadata !16, metadata !1877, i32 387, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1880 = metadata !{metadata !1523, metadata !1515, i64 0}
!1881 = metadata !{i32 391, i32 0, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !16, metadata !1877, i32 391, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1883 = metadata !{i32 392, i32 0, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !16, metadata !1882, i32 391, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1885 = metadata !{i32 395, i32 0, metadata !1877, null}
!1886 = metadata !{metadata !1523, metadata !1516, i64 8}
!1887 = metadata !{i32 396, i32 0, metadata !1877, null}
!1888 = metadata !{i32 398, i32 0, metadata !1877, null}
!1889 = metadata !{i32 400, i32 0, metadata !177, null}
!1890 = metadata !{i32 407, i32 0, metadata !192, null}
!1891 = metadata !{i32 64, i32 0, metadata !668, metadata !1892}
!1892 = metadata !{i32 409, i32 0, metadata !192, null}
!1893 = metadata !{i32 65, i32 0, metadata !667, metadata !1892}
!1894 = metadata !{i32 66, i32 0, metadata !1653, metadata !1892}
!1895 = metadata !{i32 411, i32 0, metadata !1896, null}
!1896 = metadata !{i32 786443, metadata !16, metadata !192, i32 411, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1897 = metadata !{i32 412, i32 0, metadata !1898, null}
!1898 = metadata !{i32 786443, metadata !16, metadata !1896, i32 411, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1899 = metadata !{i32 413, i32 0, metadata !1898, null}
!1900 = metadata !{i32 416, i32 0, metadata !1901, null}
!1901 = metadata !{i32 786443, metadata !16, metadata !192, i32 416, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1902 = metadata !{metadata !1514, metadata !1516, i64 56}
!1903 = metadata !{i32 417, i32 0, metadata !1904, null}
!1904 = metadata !{i32 786443, metadata !16, metadata !1901, i32 416, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1905 = metadata !{i32 418, i32 0, metadata !1904, null}
!1906 = metadata !{i32 419, i32 0, metadata !1904, null}
!1907 = metadata !{i32 422, i32 0, metadata !204, null}
!1908 = metadata !{i32 1417, i32 0, metadata !642, metadata !1909}
!1909 = metadata !{i32 425, i32 0, metadata !203, null}
!1910 = metadata !{i32 1418, i32 0, metadata !642, metadata !1909}
!1911 = metadata !{i32 1423, i32 0, metadata !636, metadata !1912}
!1912 = metadata !{i32 426, i32 0, metadata !203, null}
!1913 = metadata !{i32 1424, i32 0, metadata !636, metadata !1912}
!1914 = metadata !{i32 430, i32 0, metadata !203, null}
!1915 = metadata !{i32 431, i32 0, metadata !1916, null}
!1916 = metadata !{i32 786443, metadata !16, metadata !203, i32 431, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1917 = metadata !{i32 432, i32 0, metadata !1916, null}
!1918 = metadata !{i32 433, i32 0, metadata !1916, null}
!1919 = metadata !{i32 435, i32 0, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !16, metadata !203, i32 435, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1921 = metadata !{i32 436, i32 0, metadata !1922, null}
!1922 = metadata !{i32 786443, metadata !16, metadata !1920, i32 435, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1923 = metadata !{i32 437, i32 0, metadata !1922, null}
!1924 = metadata !{i32 440, i32 0, metadata !203, null}
!1925 = metadata !{i32 441, i32 0, metadata !1926, null}
!1926 = metadata !{i32 786443, metadata !16, metadata !203, i32 441, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1927 = metadata !{i32 444, i32 0, metadata !203, null}
!1928 = metadata !{i32 442, i32 0, metadata !1926, null}
!1929 = metadata !{i32 449, i32 0, metadata !1930, null}
!1930 = metadata !{i32 786443, metadata !16, metadata !206, i32 449, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1931 = metadata !{i32 452, i32 0, metadata !1932, null}
!1932 = metadata !{i32 786443, metadata !16, metadata !1933, i32 452, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1933 = metadata !{i32 786443, metadata !16, metadata !1930, i32 451, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1934 = metadata !{metadata !1558, metadata !1515, i64 776}
!1935 = metadata !{i32 453, i32 0, metadata !1932, null}
!1936 = metadata !{i32 455, i32 0, metadata !1937, null}
!1937 = metadata !{i32 786443, metadata !16, metadata !1938, i32 455, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1938 = metadata !{i32 786443, metadata !16, metadata !1932, i32 454, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1939 = metadata !{i32 456, i32 0, metadata !1937, null}
!1940 = metadata !{i32 460, i32 0, metadata !1941, null}
!1941 = metadata !{i32 786443, metadata !16, metadata !206, i32 460, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1942 = metadata !{i32 461, i32 0, metadata !1941, null}
!1943 = metadata !{i32 463, i32 0, metadata !1944, null}
!1944 = metadata !{i32 786443, metadata !16, metadata !206, i32 463, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1945 = metadata !{i32 464, i32 0, metadata !1944, null}
!1946 = metadata !{i32 466, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !16, metadata !206, i32 466, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1948 = metadata !{metadata !1514, metadata !1516, i64 16}
!1949 = metadata !{i32 467, i32 0, metadata !1947, null}
!1950 = metadata !{metadata !1514, metadata !1515, i64 24}
!1951 = metadata !{i32 469, i32 0, metadata !206, null}
!1952 = metadata !{i32 470, i32 0, metadata !206, null}
!1953 = metadata !{i32 472, i32 0, metadata !192, null}
!1954 = metadata !{i32 64, i32 0, metadata !668, metadata !1955}
!1955 = metadata !{i32 477, i32 0, metadata !207, null}
!1956 = metadata !{i32 65, i32 0, metadata !667, metadata !1955}
!1957 = metadata !{i32 66, i32 0, metadata !1653, metadata !1955}
!1958 = metadata !{i32 479, i32 0, metadata !1959, null}
!1959 = metadata !{i32 786443, metadata !16, metadata !207, i32 479, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1960 = metadata !{i32 480, i32 0, metadata !1961, null}
!1961 = metadata !{i32 786443, metadata !16, metadata !1959, i32 479, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1962 = metadata !{i32 481, i32 0, metadata !1961, null}
!1963 = metadata !{i32 484, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !16, metadata !207, i32 484, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1965 = metadata !{i32 491, i32 0, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !16, metadata !1967, i32 491, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1967 = metadata !{i32 786443, metadata !16, metadata !1964, i32 484, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1968 = metadata !{i32 492, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !16, metadata !1966, i32 491, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1970 = metadata !{i32 493, i32 0, metadata !1969, null}
!1971 = metadata !{i32 494, i32 0, metadata !1972, null}
!1972 = metadata !{i32 786443, metadata !16, metadata !1966, i32 493, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1973 = metadata !{i32 498, i32 0, metadata !1974, null}
!1974 = metadata !{i32 786443, metadata !16, metadata !1972, i32 498, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1975 = metadata !{i32 499, i32 0, metadata !1976, null}
!1976 = metadata !{i32 786443, metadata !16, metadata !1974, i32 498, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1977 = metadata !{i32 500, i32 0, metadata !1976, null}
!1978 = metadata !{i32 501, i32 0, metadata !1976, null}
!1979 = metadata !{i32 504, i32 0, metadata !1980, null}
!1980 = metadata !{i32 786443, metadata !16, metadata !1967, i32 504, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1981 = metadata !{i32 505, i32 0, metadata !1982, null}
!1982 = metadata !{i32 786443, metadata !16, metadata !1980, i32 504, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1983 = metadata !{i32 506, i32 0, metadata !1982, null}
!1984 = metadata !{i32 509, i32 0, metadata !1967, null}
!1985 = metadata !{i32 510, i32 0, metadata !1967, null}
!1986 = metadata !{i32 513, i32 0, metadata !207, null}
!1987 = metadata !{i32 515, i32 0, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !16, metadata !207, i32 513, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1989 = metadata !{i32 516, i32 0, metadata !1988, null}
!1990 = metadata !{i32 518, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !16, metadata !1988, i32 517, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1992 = metadata !{i32 519, i32 0, metadata !1991, null}
!1993 = metadata !{i32 523, i32 0, metadata !1994, null}
!1994 = metadata !{i32 786443, metadata !16, metadata !207, i32 523, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1995 = metadata !{i32 524, i32 0, metadata !1996, null}
!1996 = metadata !{i32 786443, metadata !16, metadata !1994, i32 523, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!1997 = metadata !{i32 525, i32 0, metadata !1996, null}
!1998 = metadata !{i32 528, i32 0, metadata !207, null}
!1999 = metadata !{i32 529, i32 0, metadata !207, null}
!2000 = metadata !{i32 530, i32 0, metadata !207, null}
!2001 = metadata !{i32 40, i32 0, metadata !676, metadata !2002}
!2002 = metadata !{i32 533, i32 0, metadata !216, null}
!2003 = metadata !{i32 43, i32 0, metadata !1511, metadata !2002}
!2004 = metadata !{i32 46, i32 0, metadata !687, metadata !2002}
!2005 = metadata !{i32 47, i32 0, metadata !685, metadata !2002}
!2006 = metadata !{i32 48, i32 0, metadata !684, metadata !2002}
!2007 = metadata !{i32 49, i32 0, metadata !1521, metadata !2002}
!2008 = metadata !{i32 534, i32 0, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !16, metadata !216, i32 534, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2010 = metadata !{i32 535, i32 0, metadata !2011, null}
!2011 = metadata !{i32 786443, metadata !16, metadata !2009, i32 534, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2012 = metadata !{i32 536, i32 0, metadata !2011, null}
!2013 = metadata !{i32 1417, i32 0, metadata !642, metadata !2014}
!2014 = metadata !{i32 1429, i32 0, metadata !623, metadata !2015}
!2015 = metadata !{i32 541, i32 0, metadata !224, null}
!2016 = metadata !{i32 1418, i32 0, metadata !642, metadata !2014}
!2017 = metadata !{i32 1432, i32 0, metadata !632, metadata !2015}
!2018 = metadata !{i32 1433, i32 0, metadata !631, metadata !2015}
!2019 = metadata !{i32 1434, i32 0, metadata !635, metadata !2015}
!2020 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2015}
!2021 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2015}
!2022 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2015}
!2023 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2015}
!2024 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2015}
!2025 = metadata !{i32 1442, i32 0, metadata !634, metadata !2015}
!2026 = metadata !{i32 1443, i32 0, metadata !634, metadata !2015}
!2027 = metadata !{i32 1444, i32 0, metadata !634, metadata !2015}
!2028 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2015}
!2029 = metadata !{i32 545, i32 0, metadata !2030, null}
!2030 = metadata !{i32 786443, metadata !16, metadata !224, i32 545, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2031 = metadata !{i32 546, i32 0, metadata !2030, null}
!2032 = metadata !{i32 549, i32 0, metadata !216, null}
!2033 = metadata !{i32 552, i32 0, metadata !255, null}
!2034 = metadata !{i32 64, i32 0, metadata !668, metadata !2035}
!2035 = metadata !{i32 553, i32 0, metadata !254, null}
!2036 = metadata !{i32 65, i32 0, metadata !667, metadata !2035}
!2037 = metadata !{i32 66, i32 0, metadata !1653, metadata !2035}
!2038 = metadata !{i32 555, i32 0, metadata !2039, null}
!2039 = metadata !{i32 786443, metadata !16, metadata !254, i32 555, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2040 = metadata !{i32 556, i32 0, metadata !2041, null}
!2041 = metadata !{i32 786443, metadata !16, metadata !2039, i32 555, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2042 = metadata !{i32 557, i32 0, metadata !2041, null}
!2043 = metadata !{i32 558, i32 0, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !16, metadata !2039, i32 558, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2045 = metadata !{i32 559, i32 0, metadata !2046, null}
!2046 = metadata !{i32 786443, metadata !16, metadata !2044, i32 558, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2047 = metadata !{i32 560, i32 0, metadata !2046, null}
!2048 = metadata !{i32 561, i32 0, metadata !2046, null}
!2049 = metadata !{i32 563, i32 0, metadata !254, null}
!2050 = metadata !{i32 564, i32 0, metadata !254, null}
!2051 = metadata !{i32 40, i32 0, metadata !676, metadata !2052}
!2052 = metadata !{i32 565, i32 0, metadata !225, null}
!2053 = metadata !{i32 43, i32 0, metadata !1511, metadata !2052}
!2054 = metadata !{i32 46, i32 0, metadata !687, metadata !2052}
!2055 = metadata !{i32 47, i32 0, metadata !685, metadata !2052}
!2056 = metadata !{i32 48, i32 0, metadata !684, metadata !2052}
!2057 = metadata !{i32 49, i32 0, metadata !1521, metadata !2052}
!2058 = metadata !{i32 566, i32 0, metadata !2059, null}
!2059 = metadata !{i32 786443, metadata !16, metadata !225, i32 566, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2060 = metadata !{i32 567, i32 0, metadata !2061, null}
!2061 = metadata !{i32 786443, metadata !16, metadata !2059, i32 566, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2062 = metadata !{i32 568, i32 0, metadata !2061, null}
!2063 = metadata !{i32 572, i32 0, metadata !225, null}
!2064 = metadata !{i32 1417, i32 0, metadata !642, metadata !2065}
!2065 = metadata !{i32 1429, i32 0, metadata !623, metadata !2066}
!2066 = metadata !{i32 573, i32 0, metadata !225, null}
!2067 = metadata !{i32 1418, i32 0, metadata !642, metadata !2065}
!2068 = metadata !{i32 1432, i32 0, metadata !632, metadata !2066}
!2069 = metadata !{i32 1433, i32 0, metadata !631, metadata !2066}
!2070 = metadata !{i32 1434, i32 0, metadata !635, metadata !2066}
!2071 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2066}
!2072 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2066}
!2073 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2066}
!2074 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2066}
!2075 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2066}
!2076 = metadata !{i32 1442, i32 0, metadata !634, metadata !2066}
!2077 = metadata !{i32 1443, i32 0, metadata !634, metadata !2066}
!2078 = metadata !{i32 1444, i32 0, metadata !634, metadata !2066}
!2079 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2066}
!2080 = metadata !{i32 581, i32 0, metadata !2081, null}
!2081 = metadata !{i32 786443, metadata !16, metadata !225, i32 581, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2082 = metadata !{i32 582, i32 0, metadata !2081, null}
!2083 = metadata !{i32 584, i32 0, metadata !225, null}
!2084 = metadata !{i32 40, i32 0, metadata !676, metadata !2085}
!2085 = metadata !{i32 588, i32 0, metadata !258, null}
!2086 = metadata !{i32 43, i32 0, metadata !1511, metadata !2085}
!2087 = metadata !{i32 46, i32 0, metadata !687, metadata !2085}
!2088 = metadata !{i32 47, i32 0, metadata !685, metadata !2085}
!2089 = metadata !{i32 48, i32 0, metadata !684, metadata !2085}
!2090 = metadata !{i32 49, i32 0, metadata !1521, metadata !2085}
!2091 = metadata !{i32 589, i32 0, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !16, metadata !258, i32 589, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2093 = metadata !{i32 590, i32 0, metadata !2094, null}
!2094 = metadata !{i32 786443, metadata !16, metadata !2092, i32 589, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2095 = metadata !{i32 591, i32 0, metadata !2094, null}
!2096 = metadata !{i32 1417, i32 0, metadata !642, metadata !2097}
!2097 = metadata !{i32 1429, i32 0, metadata !623, metadata !2098}
!2098 = metadata !{i32 596, i32 0, metadata !264, null}
!2099 = metadata !{i32 1418, i32 0, metadata !642, metadata !2097}
!2100 = metadata !{i32 1432, i32 0, metadata !632, metadata !2098}
!2101 = metadata !{i32 1433, i32 0, metadata !631, metadata !2098}
!2102 = metadata !{i32 1434, i32 0, metadata !635, metadata !2098}
!2103 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2098}
!2104 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2098}
!2105 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2098}
!2106 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2098}
!2107 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2098}
!2108 = metadata !{i32 1442, i32 0, metadata !634, metadata !2098}
!2109 = metadata !{i32 1443, i32 0, metadata !634, metadata !2098}
!2110 = metadata !{i32 1444, i32 0, metadata !634, metadata !2098}
!2111 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2098}
!2112 = metadata !{i32 600, i32 0, metadata !2113, null}
!2113 = metadata !{i32 786443, metadata !16, metadata !264, i32 600, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2114 = metadata !{i32 601, i32 0, metadata !2113, null}
!2115 = metadata !{i32 604, i32 0, metadata !258, null}
!2116 = metadata !{i32 40, i32 0, metadata !676, metadata !2117}
!2117 = metadata !{i32 607, i32 0, metadata !265, null}
!2118 = metadata !{i32 43, i32 0, metadata !1511, metadata !2117}
!2119 = metadata !{i32 46, i32 0, metadata !687, metadata !2117}
!2120 = metadata !{i32 47, i32 0, metadata !685, metadata !2117}
!2121 = metadata !{i32 48, i32 0, metadata !684, metadata !2117}
!2122 = metadata !{i32 49, i32 0, metadata !1521, metadata !2117}
!2123 = metadata !{i32 609, i32 0, metadata !2124, null}
!2124 = metadata !{i32 786443, metadata !16, metadata !265, i32 609, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2125 = metadata !{i32 611, i32 0, metadata !2126, null}
!2126 = metadata !{i32 786443, metadata !16, metadata !2124, i32 609, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2127 = metadata !{i32 612, i32 0, metadata !2126, null}
!2128 = metadata !{i32 613, i32 0, metadata !2126, null}
!2129 = metadata !{i32 1417, i32 0, metadata !642, metadata !2130}
!2130 = metadata !{i32 1429, i32 0, metadata !623, metadata !2131}
!2131 = metadata !{i32 617, i32 0, metadata !272, null}
!2132 = metadata !{i32 1418, i32 0, metadata !642, metadata !2130}
!2133 = metadata !{i32 1432, i32 0, metadata !632, metadata !2131}
!2134 = metadata !{i32 1433, i32 0, metadata !631, metadata !2131}
!2135 = metadata !{i32 1434, i32 0, metadata !635, metadata !2131}
!2136 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2131}
!2137 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2131}
!2138 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2131}
!2139 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2131}
!2140 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2131}
!2141 = metadata !{i32 1442, i32 0, metadata !634, metadata !2131}
!2142 = metadata !{i32 1443, i32 0, metadata !634, metadata !2131}
!2143 = metadata !{i32 1444, i32 0, metadata !634, metadata !2131}
!2144 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2131}
!2145 = metadata !{i32 618, i32 0, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !16, metadata !272, i32 618, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2147 = metadata !{i32 619, i32 0, metadata !2146, null}
!2148 = metadata !{i32 622, i32 0, metadata !265, null}
!2149 = metadata !{i32 64, i32 0, metadata !668, metadata !2150}
!2150 = metadata !{i32 625, i32 0, metadata !273, null}
!2151 = metadata !{i32 65, i32 0, metadata !667, metadata !2150}
!2152 = metadata !{i32 66, i32 0, metadata !1653, metadata !2150}
!2153 = metadata !{i32 627, i32 0, metadata !2154, null}
!2154 = metadata !{i32 786443, metadata !16, metadata !273, i32 627, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2155 = metadata !{i32 628, i32 0, metadata !2156, null}
!2156 = metadata !{i32 786443, metadata !16, metadata !2154, i32 627, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2157 = metadata !{i32 629, i32 0, metadata !2156, null}
!2158 = metadata !{i32 632, i32 0, metadata !279, null}
!2159 = metadata !{i32 633, i32 0, metadata !2160, null}
!2160 = metadata !{i32 786443, metadata !16, metadata !279, i32 632, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2161 = metadata !{i32 634, i32 0, metadata !2160, null}
!2162 = metadata !{i32 635, i32 0, metadata !2160, null}
!2163 = metadata !{i32 637, i32 0, metadata !278, null}
!2164 = metadata !{i32 638, i32 0, metadata !2165, null}
!2165 = metadata !{i32 786443, metadata !16, metadata !278, i32 638, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2166 = metadata !{i32 639, i32 0, metadata !2165, null}
!2167 = metadata !{i32 642, i32 0, metadata !273, null}
!2168 = metadata !{i32 40, i32 0, metadata !676, metadata !2169}
!2169 = metadata !{i32 661, i32 0, metadata !280, null}
!2170 = metadata !{i32 43, i32 0, metadata !1511, metadata !2169}
!2171 = metadata !{i32 46, i32 0, metadata !687, metadata !2169}
!2172 = metadata !{i32 47, i32 0, metadata !685, metadata !2169}
!2173 = metadata !{i32 48, i32 0, metadata !684, metadata !2169}
!2174 = metadata !{i32 49, i32 0, metadata !1521, metadata !2169}
!2175 = metadata !{i32 51, i32 0, metadata !684, metadata !2169}
!2176 = metadata !{i32 663, i32 0, metadata !280, null}
!2177 = metadata !{i32 664, i32 0, metadata !2178, null}
!2178 = metadata !{i32 786443, metadata !16, metadata !280, i32 664, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2179 = metadata !{metadata !1514, metadata !1516, i64 88}
!2180 = metadata !{i32 665, i32 0, metadata !2181, null}
!2181 = metadata !{i32 786443, metadata !16, metadata !2178, i32 664, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2182 = metadata !{i32 666, i32 0, metadata !2181, null}
!2183 = metadata !{i32 667, i32 0, metadata !2181, null}
!2184 = metadata !{i32 670, i32 0, metadata !289, null}
!2185 = metadata !{i32 646, i32 0, metadata !2186, metadata !2187}
!2186 = metadata !{i32 786443, metadata !16, metadata !655, i32 646, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2187 = metadata !{i32 671, i32 0, metadata !2188, null}
!2188 = metadata !{i32 786443, metadata !16, metadata !289, i32 670, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2189 = metadata !{metadata !1525, metadata !1515, i64 28}
!2190 = metadata !{i32 647, i32 0, metadata !2191, metadata !2187}
!2191 = metadata !{i32 786443, metadata !16, metadata !2192, i32 647, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2192 = metadata !{i32 786443, metadata !16, metadata !2186, i32 646, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2193 = metadata !{metadata !1525, metadata !1515, i64 32}
!2194 = metadata !{i32 648, i32 0, metadata !2191, metadata !2187}
!2195 = metadata !{i32 649, i32 0, metadata !2192, metadata !2187}
!2196 = metadata !{i32 651, i32 0, metadata !2192, metadata !2187}
!2197 = metadata !{i32 653, i32 0, metadata !2198, metadata !2187}
!2198 = metadata !{i32 786443, metadata !16, metadata !2186, i32 652, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2199 = metadata !{i32 654, i32 0, metadata !2198, metadata !2187}
!2200 = metadata !{i32 1417, i32 0, metadata !642, metadata !2201}
!2201 = metadata !{i32 1429, i32 0, metadata !623, metadata !2202}
!2202 = metadata !{i32 673, i32 0, metadata !288, null}
!2203 = metadata !{i32 1418, i32 0, metadata !642, metadata !2201}
!2204 = metadata !{i32 1432, i32 0, metadata !632, metadata !2202}
!2205 = metadata !{i32 1433, i32 0, metadata !631, metadata !2202}
!2206 = metadata !{i32 1434, i32 0, metadata !635, metadata !2202}
!2207 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2202}
!2208 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2202}
!2209 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2202}
!2210 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2202}
!2211 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2202}
!2212 = metadata !{i32 1442, i32 0, metadata !634, metadata !2202}
!2213 = metadata !{i32 1443, i32 0, metadata !634, metadata !2202}
!2214 = metadata !{i32 1444, i32 0, metadata !634, metadata !2202}
!2215 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2202}
!2216 = metadata !{i32 674, i32 0, metadata !2217, null}
!2217 = metadata !{i32 786443, metadata !16, metadata !288, i32 674, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2218 = metadata !{i32 675, i32 0, metadata !2217, null}
!2219 = metadata !{i32 678, i32 0, metadata !280, null}
!2220 = metadata !{i32 64, i32 0, metadata !668, metadata !2221}
!2221 = metadata !{i32 683, i32 0, metadata !290, null}
!2222 = metadata !{i32 65, i32 0, metadata !667, metadata !2221}
!2223 = metadata !{i32 66, i32 0, metadata !1653, metadata !2221}
!2224 = metadata !{i32 685, i32 0, metadata !2225, null}
!2225 = metadata !{i32 786443, metadata !16, metadata !290, i32 685, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2226 = metadata !{i32 686, i32 0, metadata !2227, null}
!2227 = metadata !{i32 786443, metadata !16, metadata !2225, i32 685, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2228 = metadata !{i32 687, i32 0, metadata !2227, null}
!2229 = metadata !{i32 690, i32 0, metadata !290, null}
!2230 = metadata !{i32 691, i32 0, metadata !2231, null}
!2231 = metadata !{i32 786443, metadata !16, metadata !290, i32 691, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2232 = metadata !{metadata !1514, metadata !1516, i64 96}
!2233 = metadata !{i32 692, i32 0, metadata !2234, null}
!2234 = metadata !{i32 786443, metadata !16, metadata !2231, i32 691, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2235 = metadata !{i32 693, i32 0, metadata !2234, null}
!2236 = metadata !{i32 694, i32 0, metadata !2234, null}
!2237 = metadata !{i32 697, i32 0, metadata !299, null}
!2238 = metadata !{i32 646, i32 0, metadata !2186, metadata !2239}
!2239 = metadata !{i32 698, i32 0, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !16, metadata !299, i32 697, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2241 = metadata !{i32 647, i32 0, metadata !2191, metadata !2239}
!2242 = metadata !{i32 648, i32 0, metadata !2191, metadata !2239}
!2243 = metadata !{i32 649, i32 0, metadata !2192, metadata !2239}
!2244 = metadata !{i32 651, i32 0, metadata !2192, metadata !2239}
!2245 = metadata !{i32 653, i32 0, metadata !2198, metadata !2239}
!2246 = metadata !{i32 654, i32 0, metadata !2198, metadata !2239}
!2247 = metadata !{i32 700, i32 0, metadata !298, null}
!2248 = metadata !{i32 701, i32 0, metadata !2249, null}
!2249 = metadata !{i32 786443, metadata !16, metadata !298, i32 701, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2250 = metadata !{i32 702, i32 0, metadata !2249, null}
!2251 = metadata !{i32 705, i32 0, metadata !290, null}
!2252 = metadata !{i32 40, i32 0, metadata !676, metadata !2253}
!2253 = metadata !{i32 714, i32 0, metadata !300, null}
!2254 = metadata !{i32 43, i32 0, metadata !1511, metadata !2253}
!2255 = metadata !{i32 46, i32 0, metadata !687, metadata !2253}
!2256 = metadata !{i32 47, i32 0, metadata !685, metadata !2253}
!2257 = metadata !{i32 48, i32 0, metadata !684, metadata !2253}
!2258 = metadata !{i32 49, i32 0, metadata !1521, metadata !2253}
!2259 = metadata !{i32 716, i32 0, metadata !312, null}
!2260 = metadata !{i32 708, i32 0, metadata !648, metadata !2261}
!2261 = metadata !{i32 717, i32 0, metadata !2262, null}
!2262 = metadata !{i32 786443, metadata !16, metadata !312, i32 716, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2263 = metadata !{i32 709, i32 0, metadata !648, metadata !2261}
!2264 = metadata !{i32 1417, i32 0, metadata !642, metadata !2265}
!2265 = metadata !{i32 1429, i32 0, metadata !623, metadata !2266}
!2266 = metadata !{i32 719, i32 0, metadata !311, null}
!2267 = metadata !{i32 1418, i32 0, metadata !642, metadata !2265}
!2268 = metadata !{i32 1432, i32 0, metadata !632, metadata !2266}
!2269 = metadata !{i32 1433, i32 0, metadata !631, metadata !2266}
!2270 = metadata !{i32 1434, i32 0, metadata !635, metadata !2266}
!2271 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2266}
!2272 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2266}
!2273 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2266}
!2274 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2266}
!2275 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2266}
!2276 = metadata !{i32 1442, i32 0, metadata !634, metadata !2266}
!2277 = metadata !{i32 1443, i32 0, metadata !634, metadata !2266}
!2278 = metadata !{i32 1444, i32 0, metadata !634, metadata !2266}
!2279 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2266}
!2280 = metadata !{i32 720, i32 0, metadata !2281, null}
!2281 = metadata !{i32 786443, metadata !16, metadata !311, i32 720, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2282 = metadata !{i32 721, i32 0, metadata !2281, null}
!2283 = metadata !{i32 724, i32 0, metadata !300, null}
!2284 = metadata !{i32 64, i32 0, metadata !668, metadata !2285}
!2285 = metadata !{i32 727, i32 0, metadata !313, null}
!2286 = metadata !{i32 65, i32 0, metadata !667, metadata !2285}
!2287 = metadata !{i32 66, i32 0, metadata !1653, metadata !2285}
!2288 = metadata !{i32 729, i32 0, metadata !2289, null}
!2289 = metadata !{i32 786443, metadata !16, metadata !313, i32 729, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2290 = metadata !{i32 730, i32 0, metadata !2291, null}
!2291 = metadata !{i32 786443, metadata !16, metadata !2289, i32 729, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2292 = metadata !{i32 731, i32 0, metadata !2291, null}
!2293 = metadata !{i32 734, i32 0, metadata !323, null}
!2294 = metadata !{i32 708, i32 0, metadata !648, metadata !2295}
!2295 = metadata !{i32 735, i32 0, metadata !2296, null}
!2296 = metadata !{i32 786443, metadata !16, metadata !323, i32 734, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2297 = metadata !{i32 709, i32 0, metadata !648, metadata !2295}
!2298 = metadata !{i32 737, i32 0, metadata !322, null}
!2299 = metadata !{i32 738, i32 0, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !16, metadata !322, i32 738, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2301 = metadata !{i32 739, i32 0, metadata !2300, null}
!2302 = metadata !{i32 742, i32 0, metadata !313, null}
!2303 = metadata !{i32 40, i32 0, metadata !676, metadata !2304}
!2304 = metadata !{i32 746, i32 0, metadata !324, null}
!2305 = metadata !{i32 43, i32 0, metadata !1511, metadata !2304}
!2306 = metadata !{i32 46, i32 0, metadata !687, metadata !2304}
!2307 = metadata !{i32 47, i32 0, metadata !685, metadata !2304}
!2308 = metadata !{i32 48, i32 0, metadata !684, metadata !2304}
!2309 = metadata !{i32 49, i32 0, metadata !1521, metadata !2304}
!2310 = metadata !{i32 748, i32 0, metadata !332, null}
!2311 = metadata !{i32 708, i32 0, metadata !648, metadata !2312}
!2312 = metadata !{i32 749, i32 0, metadata !2313, null}
!2313 = metadata !{i32 786443, metadata !16, metadata !332, i32 748, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2314 = metadata !{i32 709, i32 0, metadata !648, metadata !2312}
!2315 = metadata !{i32 1417, i32 0, metadata !642, metadata !2316}
!2316 = metadata !{i32 1429, i32 0, metadata !623, metadata !2317}
!2317 = metadata !{i32 751, i32 0, metadata !331, null}
!2318 = metadata !{i32 1418, i32 0, metadata !642, metadata !2316}
!2319 = metadata !{i32 1432, i32 0, metadata !632, metadata !2317}
!2320 = metadata !{i32 1433, i32 0, metadata !631, metadata !2317}
!2321 = metadata !{i32 1434, i32 0, metadata !635, metadata !2317}
!2322 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2317}
!2323 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2317}
!2324 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2317}
!2325 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2317}
!2326 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2317}
!2327 = metadata !{i32 1442, i32 0, metadata !634, metadata !2317}
!2328 = metadata !{i32 1443, i32 0, metadata !634, metadata !2317}
!2329 = metadata !{i32 1444, i32 0, metadata !634, metadata !2317}
!2330 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2317}
!2331 = metadata !{i32 752, i32 0, metadata !2332, null}
!2332 = metadata !{i32 786443, metadata !16, metadata !331, i32 752, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2333 = metadata !{i32 753, i32 0, metadata !2332, null}
!2334 = metadata !{i32 756, i32 0, metadata !324, null}
!2335 = metadata !{i32 64, i32 0, metadata !668, metadata !2336}
!2336 = metadata !{i32 759, i32 0, metadata !333, null}
!2337 = metadata !{i32 65, i32 0, metadata !667, metadata !2336}
!2338 = metadata !{i32 66, i32 0, metadata !1653, metadata !2336}
!2339 = metadata !{i32 761, i32 0, metadata !2340, null}
!2340 = metadata !{i32 786443, metadata !16, metadata !333, i32 761, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2341 = metadata !{i32 762, i32 0, metadata !2342, null}
!2342 = metadata !{i32 786443, metadata !16, metadata !2340, i32 761, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2343 = metadata !{i32 763, i32 0, metadata !2342, null}
!2344 = metadata !{i32 766, i32 0, metadata !342, null}
!2345 = metadata !{i32 768, i32 0, metadata !341, null}
!2346 = metadata !{i32 772, i32 0, metadata !2347, null}
!2347 = metadata !{i32 786443, metadata !16, metadata !341, i32 772, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2348 = metadata !{i32 773, i32 0, metadata !2347, null}
!2349 = metadata !{i32 777, i32 0, metadata !333, null}
!2350 = metadata !{i32 778, i32 0, metadata !333, null}
!2351 = metadata !{i32 779, i32 0, metadata !333, null}
!2352 = metadata !{i32 64, i32 0, metadata !668, metadata !2353}
!2353 = metadata !{i32 783, i32 0, metadata !343, null}
!2354 = metadata !{i32 65, i32 0, metadata !667, metadata !2353}
!2355 = metadata !{i32 66, i32 0, metadata !1653, metadata !2353}
!2356 = metadata !{i32 785, i32 0, metadata !343, null}
!2357 = metadata !{i32 787, i32 0, metadata !2358, null}
!2358 = metadata !{i32 786443, metadata !16, metadata !343, i32 787, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2359 = metadata !{i32 788, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !16, metadata !2358, i32 787, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2361 = metadata !{i32 789, i32 0, metadata !2360, null}
!2362 = metadata !{i32 792, i32 0, metadata !2363, null}
!2363 = metadata !{i32 786443, metadata !16, metadata !343, i32 792, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2364 = metadata !{metadata !1514, metadata !1516, i64 72}
!2365 = metadata !{i32 793, i32 0, metadata !2366, null}
!2366 = metadata !{i32 786443, metadata !16, metadata !2363, i32 792, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2367 = metadata !{i32 794, i32 0, metadata !2366, null}
!2368 = metadata !{i32 795, i32 0, metadata !2366, null}
!2369 = metadata !{i32 798, i32 0, metadata !352, null}
!2370 = metadata !{i32 799, i32 0, metadata !2371, null}
!2371 = metadata !{i32 786443, metadata !16, metadata !352, i32 798, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2372 = metadata !{i32 800, i32 0, metadata !2371, null}
!2373 = metadata !{i32 801, i32 0, metadata !2371, null}
!2374 = metadata !{i32 804, i32 0, metadata !351, null}
!2375 = metadata !{i32 808, i32 0, metadata !2376, null}
!2376 = metadata !{i32 786443, metadata !16, metadata !351, i32 808, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2377 = metadata !{i32 809, i32 0, metadata !2376, null}
!2378 = metadata !{i32 812, i32 0, metadata !343, null}
!2379 = metadata !{i32 64, i32 0, metadata !668, metadata !2380}
!2380 = metadata !{i32 815, i32 0, metadata !353, null}
!2381 = metadata !{i32 65, i32 0, metadata !667, metadata !2380}
!2382 = metadata !{i32 66, i32 0, metadata !1653, metadata !2380}
!2383 = metadata !{i32 817, i32 0, metadata !2384, null}
!2384 = metadata !{i32 786443, metadata !16, metadata !353, i32 817, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2385 = metadata !{i32 818, i32 0, metadata !2386, null}
!2386 = metadata !{i32 786443, metadata !16, metadata !2384, i32 817, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2387 = metadata !{i32 819, i32 0, metadata !2386, null}
!2388 = metadata !{i32 822, i32 0, metadata !379, null}
!2389 = metadata !{i32 823, i32 0, metadata !2390, null}
!2390 = metadata !{i32 786443, metadata !16, metadata !379, i32 822, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2391 = metadata !{i32 824, i32 0, metadata !2390, null}
!2392 = metadata !{i32 825, i32 0, metadata !2390, null}
!2393 = metadata !{i32 827, i32 0, metadata !377, null}
!2394 = metadata !{i32 832, i32 0, metadata !376, null}
!2395 = metadata !{i32 833, i32 0, metadata !2396, null}
!2396 = metadata !{i32 786443, metadata !16, metadata !376, i32 833, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2397 = metadata !{i32 838, i32 0, metadata !384, null}
!2398 = metadata !{i32 835, i32 0, metadata !2399, null}
!2399 = metadata !{i32 786443, metadata !16, metadata !2396, i32 834, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2400 = metadata !{i32 836, i32 0, metadata !2399, null}
!2401 = metadata !{i32 839, i32 0, metadata !383, null}
!2402 = metadata !{i32 840, i32 0, metadata !383, null}
!2403 = metadata !{metadata !2404, metadata !1526, i64 0}
!2404 = metadata !{metadata !"dirent64", metadata !1526, i64 0, metadata !1526, i64 8, metadata !2405, i64 16, metadata !1508, i64 18, metadata !1508, i64 19}
!2405 = metadata !{metadata !"short", metadata !1508, i64 0}
!2406 = metadata !{i32 841, i32 0, metadata !383, null}
!2407 = metadata !{metadata !2404, metadata !2405, i64 16}
!2408 = metadata !{i32 842, i32 0, metadata !383, null}
!2409 = metadata !{metadata !2404, metadata !1508, i64 18}
!2410 = metadata !{i32 843, i32 0, metadata !383, null}
!2411 = metadata !{i32 844, i32 0, metadata !383, null}
!2412 = metadata !{i32 845, i32 0, metadata !383, null}
!2413 = metadata !{metadata !2404, metadata !1526, i64 8}
!2414 = metadata !{i32 846, i32 0, metadata !383, null}
!2415 = metadata !{i32 847, i32 0, metadata !383, null}
!2416 = metadata !{i32 851, i32 0, metadata !376, null}
!2417 = metadata !{i32 852, i32 0, metadata !376, null}
!2418 = metadata !{i32 853, i32 0, metadata !376, null}
!2419 = metadata !{i32 854, i32 0, metadata !376, null}
!2420 = metadata !{i32 855, i32 0, metadata !376, null}
!2421 = metadata !{i32 856, i32 0, metadata !376, null}
!2422 = metadata !{i32 857, i32 0, metadata !376, null}
!2423 = metadata !{i32 858, i32 0, metadata !376, null}
!2424 = metadata !{i32 860, i32 0, metadata !376, null}
!2425 = metadata !{i32 862, i32 0, metadata !386, null}
!2426 = metadata !{i32 873, i32 0, metadata !386, null}
!2427 = metadata !{i32 874, i32 0, metadata !386, null}
!2428 = metadata !{i32 875, i32 0, metadata !386, null}
!2429 = metadata !{i32 876, i32 0, metadata !386, null}
!2430 = metadata !{i32 877, i32 0, metadata !391, null}
!2431 = metadata !{i32 878, i32 0, metadata !2432, null}
!2432 = metadata !{i32 786443, metadata !16, metadata !391, i32 877, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2433 = metadata !{i32 879, i32 0, metadata !2432, null}
!2434 = metadata !{i32 881, i32 0, metadata !390, null}
!2435 = metadata !{i32 885, i32 0, metadata !390, null}
!2436 = metadata !{i32 886, i32 0, metadata !393, null}
!2437 = metadata !{i32 887, i32 0, metadata !393, null}
!2438 = metadata !{i32 888, i32 0, metadata !393, null}
!2439 = metadata !{i32 895, i32 0, metadata !353, null}
!2440 = metadata !{i32 64, i32 0, metadata !668, metadata !2441}
!2441 = metadata !{i32 902, i32 0, metadata !394, null}
!2442 = metadata !{i32 65, i32 0, metadata !667, metadata !2441}
!2443 = metadata !{i32 66, i32 0, metadata !1653, metadata !2441}
!2444 = metadata !{i32 910, i32 0, metadata !2445, null}
!2445 = metadata !{i32 786443, metadata !16, metadata !394, i32 910, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2446 = metadata !{i32 911, i32 0, metadata !2447, null}
!2447 = metadata !{i32 786443, metadata !16, metadata !2445, i32 910, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2448 = metadata !{i32 912, i32 0, metadata !2447, null}
!2449 = metadata !{i32 915, i32 0, metadata !394, null}
!2450 = metadata !{i32 916, i32 0, metadata !394, null}
!2451 = metadata !{i32 917, i32 0, metadata !394, null}
!2452 = metadata !{i32 919, i32 0, metadata !418, null}
!2453 = metadata !{i32 920, i32 0, metadata !417, null}
!2454 = metadata !{i32 922, i32 0, metadata !417, null}
!2455 = metadata !{i32 926, i32 0, metadata !420, null}
!2456 = metadata !{i32 929, i32 0, metadata !2457, null}
!2457 = metadata !{i32 786443, metadata !16, metadata !420, i32 929, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2458 = metadata !{metadata !2459, metadata !1515, i64 24}
!2459 = metadata !{metadata !"stat", metadata !1526, i64 0, metadata !1526, i64 8, metadata !1526, i64 16, metadata !1515, i64 24, metadata !1515, i64 28, metadata !1515, i64 32, metadata !1515, i64 36, metadata !1526, i64 40, metadata !1526, i64 48, met
!2460 = metadata !{i32 932, i32 0, metadata !2461, null}
!2461 = metadata !{i32 786443, metadata !16, metadata !2457, i32 929, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2462 = metadata !{metadata !2463, metadata !1515, i64 0}
!2463 = metadata !{metadata !"termios", metadata !1515, i64 0, metadata !1515, i64 4, metadata !1515, i64 8, metadata !1515, i64 12, metadata !1508, i64 16, metadata !1508, i64 17, metadata !1515, i64 52, metadata !1515, i64 56}
!2464 = metadata !{i32 933, i32 0, metadata !2461, null}
!2465 = metadata !{metadata !2463, metadata !1515, i64 4}
!2466 = metadata !{i32 934, i32 0, metadata !2461, null}
!2467 = metadata !{metadata !2463, metadata !1515, i64 8}
!2468 = metadata !{i32 935, i32 0, metadata !2461, null}
!2469 = metadata !{metadata !2463, metadata !1515, i64 12}
!2470 = metadata !{i32 936, i32 0, metadata !2461, null}
!2471 = metadata !{metadata !2463, metadata !1508, i64 16}
!2472 = metadata !{i32 937, i32 0, metadata !2461, null}
!2473 = metadata !{i32 938, i32 0, metadata !2461, null}
!2474 = metadata !{i32 939, i32 0, metadata !2461, null}
!2475 = metadata !{i32 940, i32 0, metadata !2461, null}
!2476 = metadata !{i32 941, i32 0, metadata !2461, null}
!2477 = metadata !{i32 942, i32 0, metadata !2461, null}
!2478 = metadata !{i32 943, i32 0, metadata !2461, null}
!2479 = metadata !{i32 944, i32 0, metadata !2461, null}
!2480 = metadata !{i32 945, i32 0, metadata !2461, null}
!2481 = metadata !{i32 946, i32 0, metadata !2461, null}
!2482 = metadata !{i32 947, i32 0, metadata !2461, null}
!2483 = metadata !{i32 948, i32 0, metadata !2461, null}
!2484 = metadata !{i32 949, i32 0, metadata !2461, null}
!2485 = metadata !{i32 950, i32 0, metadata !2461, null}
!2486 = metadata !{i32 951, i32 0, metadata !2461, null}
!2487 = metadata !{i32 952, i32 0, metadata !2461, null}
!2488 = metadata !{i32 953, i32 0, metadata !2461, null}
!2489 = metadata !{i32 954, i32 0, metadata !2461, null}
!2490 = metadata !{i32 955, i32 0, metadata !2461, null}
!2491 = metadata !{i32 956, i32 0, metadata !2461, null}
!2492 = metadata !{i32 958, i32 0, metadata !2493, null}
!2493 = metadata !{i32 786443, metadata !16, metadata !2457, i32 957, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2494 = metadata !{i32 959, i32 0, metadata !2493, null}
!2495 = metadata !{i32 964, i32 0, metadata !2496, null}
!2496 = metadata !{i32 786443, metadata !16, metadata !421, i32 962, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2497 = metadata !{i32 965, i32 0, metadata !2498, null}
!2498 = metadata !{i32 786443, metadata !16, metadata !2496, i32 965, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2499 = metadata !{i32 968, i32 0, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !16, metadata !2498, i32 967, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2501 = metadata !{i32 969, i32 0, metadata !2500, null}
!2502 = metadata !{i32 974, i32 0, metadata !2503, null}
!2503 = metadata !{i32 786443, metadata !16, metadata !421, i32 972, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2504 = metadata !{i32 975, i32 0, metadata !2505, null}
!2505 = metadata !{i32 786443, metadata !16, metadata !2503, i32 975, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2506 = metadata !{i32 978, i32 0, metadata !2507, null}
!2507 = metadata !{i32 786443, metadata !16, metadata !2505, i32 977, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2508 = metadata !{i32 979, i32 0, metadata !2507, null}
!2509 = metadata !{i32 984, i32 0, metadata !2510, null}
!2510 = metadata !{i32 786443, metadata !16, metadata !421, i32 982, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2511 = metadata !{i32 985, i32 0, metadata !2512, null}
!2512 = metadata !{i32 786443, metadata !16, metadata !2510, i32 985, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2513 = metadata !{i32 988, i32 0, metadata !2514, null}
!2514 = metadata !{i32 786443, metadata !16, metadata !2512, i32 987, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2515 = metadata !{i32 989, i32 0, metadata !2514, null}
!2516 = metadata !{i32 994, i32 0, metadata !441, null}
!2517 = metadata !{metadata !2518, metadata !2405, i64 0}
!2518 = metadata !{metadata !"winsize", metadata !2405, i64 0, metadata !2405, i64 2, metadata !2405, i64 4, metadata !2405, i64 6}
!2519 = metadata !{i32 995, i32 0, metadata !441, null}
!2520 = metadata !{metadata !2518, metadata !2405, i64 2}
!2521 = metadata !{i32 996, i32 0, metadata !441, null}
!2522 = metadata !{i32 997, i32 0, metadata !2523, null}
!2523 = metadata !{i32 786443, metadata !16, metadata !441, i32 997, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2524 = metadata !{i32 1000, i32 0, metadata !2525, null}
!2525 = metadata !{i32 786443, metadata !16, metadata !2523, i32 999, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2526 = metadata !{i32 1001, i32 0, metadata !2525, null}
!2527 = metadata !{i32 1006, i32 0, metadata !2528, null}
!2528 = metadata !{i32 786443, metadata !16, metadata !421, i32 1004, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2529 = metadata !{i32 1007, i32 0, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !16, metadata !2528, i32 1007, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2531 = metadata !{i32 1008, i32 0, metadata !2532, null}
!2532 = metadata !{i32 786443, metadata !16, metadata !2530, i32 1007, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2533 = metadata !{i32 1009, i32 0, metadata !2532, null}
!2534 = metadata !{i32 1011, i32 0, metadata !2535, null}
!2535 = metadata !{i32 786443, metadata !16, metadata !2530, i32 1010, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2536 = metadata !{i32 1012, i32 0, metadata !2535, null}
!2537 = metadata !{i32 1016, i32 0, metadata !451, null}
!2538 = metadata !{i32 1017, i32 0, metadata !451, null}
!2539 = metadata !{i32 1018, i32 0, metadata !2540, null}
!2540 = metadata !{i32 786443, metadata !16, metadata !451, i32 1018, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2541 = metadata !{i32 1019, i32 0, metadata !2542, null}
!2542 = metadata !{i32 786443, metadata !16, metadata !2543, i32 1019, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2543 = metadata !{i32 786443, metadata !16, metadata !2540, i32 1018, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2544 = metadata !{i32 1020, i32 0, metadata !2545, null}
!2545 = metadata !{i32 786443, metadata !16, metadata !2542, i32 1019, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2546 = metadata !{i32 1021, i32 0, metadata !2545, null}
!2547 = metadata !{i32 1024, i32 0, metadata !2543, null}
!2548 = metadata !{i32 1026, i32 0, metadata !2549, null}
!2549 = metadata !{i32 786443, metadata !16, metadata !2540, i32 1025, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2550 = metadata !{i32 1027, i32 0, metadata !2549, null}
!2551 = metadata !{i32 1031, i32 0, metadata !2552, null}
!2552 = metadata !{i32 786443, metadata !16, metadata !421, i32 1030, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2553 = metadata !{i32 1032, i32 0, metadata !2552, null}
!2554 = metadata !{i32 1033, i32 0, metadata !2552, null}
!2555 = metadata !{i32 1036, i32 0, metadata !421, null}
!2556 = metadata !{i32 1037, i32 0, metadata !421, null}
!2557 = metadata !{i32 1038, i32 0, metadata !421, null}
!2558 = metadata !{i32 1041, i32 0, metadata !454, null}
!2559 = metadata !{i32 1042, i32 0, metadata !2560, null}
!2560 = metadata !{i32 786443, metadata !16, metadata !454, i32 1042, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2561 = metadata !{i32 1043, i32 0, metadata !2560, null}
!2562 = metadata !{i32 1046, i32 0, metadata !394, null}
!2563 = metadata !{i32 64, i32 0, metadata !668, metadata !2564}
!2564 = metadata !{i32 1049, i32 0, metadata !455, null}
!2565 = metadata !{i32 65, i32 0, metadata !667, metadata !2564}
!2566 = metadata !{i32 66, i32 0, metadata !1653, metadata !2564}
!2567 = metadata !{i32 1053, i32 0, metadata !2568, null}
!2568 = metadata !{i32 786443, metadata !16, metadata !455, i32 1053, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2569 = metadata !{i32 1054, i32 0, metadata !2570, null}
!2570 = metadata !{i32 786443, metadata !16, metadata !2568, i32 1053, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2571 = metadata !{i32 1055, i32 0, metadata !2570, null}
!2572 = metadata !{i32 1058, i32 0, metadata !2573, null}
!2573 = metadata !{i32 786443, metadata !16, metadata !455, i32 1058, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2574 = metadata !{i32 1062, i32 0, metadata !2575, null}
!2575 = metadata !{i32 786443, metadata !16, metadata !2573, i32 1061, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2576 = metadata !{i32 1063, i32 0, metadata !2575, null}
!2577 = metadata !{i32 1064, i32 0, metadata !2575, null}
!2578 = metadata !{i32 1067, i32 0, metadata !468, null}
!2579 = metadata !{i32 1068, i32 0, metadata !467, null}
!2580 = metadata !{i32 1071, i32 0, metadata !2581, null}
!2581 = metadata !{i32 786443, metadata !16, metadata !465, i32 1071, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2582 = metadata !{i32 1073, i32 0, metadata !465, null}
!2583 = metadata !{i32 1076, i32 0, metadata !2584, null}
!2584 = metadata !{i32 786443, metadata !16, metadata !466, i32 1075, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2585 = metadata !{i32 1077, i32 0, metadata !2586, null}
!2586 = metadata !{i32 786443, metadata !16, metadata !2584, i32 1077, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2587 = metadata !{i32 1078, i32 0, metadata !2586, null}
!2588 = metadata !{i32 1079, i32 0, metadata !2584, null}
!2589 = metadata !{i32 1091, i32 0, metadata !466, null}
!2590 = metadata !{i32 1092, i32 0, metadata !466, null}
!2591 = metadata !{i32 1093, i32 0, metadata !466, null}
!2592 = metadata !{i32 1096, i32 0, metadata !470, null}
!2593 = metadata !{i32 1097, i32 0, metadata !2594, null}
!2594 = metadata !{i32 786443, metadata !16, metadata !470, i32 1097, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2595 = metadata !{i32 1098, i32 0, metadata !2594, null}
!2596 = metadata !{i32 1101, i32 0, metadata !455, null}
!2597 = metadata !{i32 40, i32 0, metadata !676, metadata !2598}
!2598 = metadata !{i32 1104, i32 0, metadata !471, null}
!2599 = metadata !{i32 43, i32 0, metadata !1511, metadata !2598}
!2600 = metadata !{i32 46, i32 0, metadata !687, metadata !2598}
!2601 = metadata !{i32 47, i32 0, metadata !685, metadata !2598}
!2602 = metadata !{i32 48, i32 0, metadata !684, metadata !2598}
!2603 = metadata !{i32 49, i32 0, metadata !1521, metadata !2598}
!2604 = metadata !{i32 1105, i32 0, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !16, metadata !471, i32 1105, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2606 = metadata !{i32 1107, i32 0, metadata !2607, null}
!2607 = metadata !{i32 786443, metadata !16, metadata !2605, i32 1105, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2608 = metadata !{i32 1108, i32 0, metadata !2607, null}
!2609 = metadata !{i32 1109, i32 0, metadata !2607, null}
!2610 = metadata !{i32 1417, i32 0, metadata !642, metadata !2611}
!2611 = metadata !{i32 1429, i32 0, metadata !623, metadata !2612}
!2612 = metadata !{i32 1113, i32 0, metadata !509, null}
!2613 = metadata !{i32 1418, i32 0, metadata !642, metadata !2611}
!2614 = metadata !{i32 1432, i32 0, metadata !632, metadata !2612}
!2615 = metadata !{i32 1433, i32 0, metadata !631, metadata !2612}
!2616 = metadata !{i32 1434, i32 0, metadata !635, metadata !2612}
!2617 = metadata !{i32 1435, i32 0, metadata !1537, metadata !2612}
!2618 = metadata !{i32 1436, i32 0, metadata !1540, metadata !2612}
!2619 = metadata !{i32 1437, i32 0, metadata !1540, metadata !2612}
!2620 = metadata !{i32 1439, i32 0, metadata !1543, metadata !2612}
!2621 = metadata !{i32 1440, i32 0, metadata !1543, metadata !2612}
!2622 = metadata !{i32 1442, i32 0, metadata !634, metadata !2612}
!2623 = metadata !{i32 1443, i32 0, metadata !634, metadata !2612}
!2624 = metadata !{i32 1444, i32 0, metadata !634, metadata !2612}
!2625 = metadata !{i32 1445, i32 0, metadata !1550, metadata !2612}
!2626 = metadata !{i32 1114, i32 0, metadata !2627, null}
!2627 = metadata !{i32 786443, metadata !16, metadata !509, i32 1114, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2628 = metadata !{i32 1115, i32 0, metadata !2627, null}
!2629 = metadata !{i32 1118, i32 0, metadata !471, null}
!2630 = metadata !{i32 64, i32 0, metadata !668, metadata !2631}
!2631 = metadata !{i32 1121, i32 0, metadata !510, null}
!2632 = metadata !{i32 65, i32 0, metadata !667, metadata !2631}
!2633 = metadata !{i32 66, i32 0, metadata !1653, metadata !2631}
!2634 = metadata !{i32 1123, i32 0, metadata !2635, null}
!2635 = metadata !{i32 786443, metadata !16, metadata !510, i32 1123, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2636 = metadata !{i32 1124, i32 0, metadata !2637, null}
!2637 = metadata !{i32 786443, metadata !16, metadata !2635, i32 1123, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2638 = metadata !{i32 1125, i32 0, metadata !2637, null}
!2639 = metadata !{i32 1128, i32 0, metadata !519, null}
!2640 = metadata !{i32 1129, i32 0, metadata !2641, null}
!2641 = metadata !{i32 786443, metadata !16, metadata !519, i32 1128, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2642 = metadata !{i32 1130, i32 0, metadata !2641, null}
!2643 = metadata !{i32 1131, i32 0, metadata !2641, null}
!2644 = metadata !{i32 1133, i32 0, metadata !518, null}
!2645 = metadata !{i32 1134, i32 0, metadata !2646, null}
!2646 = metadata !{i32 786443, metadata !16, metadata !518, i32 1134, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2647 = metadata !{i32 1135, i32 0, metadata !2646, null}
!2648 = metadata !{i32 1138, i32 0, metadata !510, null}
!2649 = metadata !{i32 64, i32 0, metadata !668, metadata !2650}
!2650 = metadata !{i32 1141, i32 0, metadata !520, null}
!2651 = metadata !{i32 65, i32 0, metadata !667, metadata !2650}
!2652 = metadata !{i32 66, i32 0, metadata !1653, metadata !2650}
!2653 = metadata !{i32 1143, i32 0, metadata !527, null}
!2654 = metadata !{i32 1144, i32 0, metadata !2655, null}
!2655 = metadata !{i32 786443, metadata !16, metadata !527, i32 1143, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2656 = metadata !{i32 1145, i32 0, metadata !2655, null}
!2657 = metadata !{i32 1146, i32 0, metadata !526, null}
!2658 = metadata !{i32 1149, i32 0, metadata !525, null}
!2659 = metadata !{i32 1150, i32 0, metadata !2660, null}
!2660 = metadata !{i32 786443, metadata !16, metadata !525, i32 1150, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2661 = metadata !{i32 1151, i32 0, metadata !2660, null}
!2662 = metadata !{i32 1154, i32 0, metadata !520, null}
!2663 = metadata !{i32 64, i32 0, metadata !668, metadata !2664}
!2664 = metadata !{i32 1157, i32 0, metadata !528, null}
!2665 = metadata !{i32 65, i32 0, metadata !667, metadata !2664}
!2666 = metadata !{i32 66, i32 0, metadata !1653, metadata !2664}
!2667 = metadata !{i32 1159, i32 0, metadata !535, null}
!2668 = metadata !{i32 1160, i32 0, metadata !2669, null}
!2669 = metadata !{i32 786443, metadata !16, metadata !535, i32 1159, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2670 = metadata !{i32 1161, i32 0, metadata !2669, null}
!2671 = metadata !{i32 1163, i32 0, metadata !534, null}
!2672 = metadata !{i32 1164, i32 0, metadata !2673, null}
!2673 = metadata !{i32 786443, metadata !16, metadata !534, i32 1164, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2674 = metadata !{i32 308, i32 0, metadata !170, metadata !2672}
!2675 = metadata !{i32 64, i32 0, metadata !668, metadata !2676}
!2676 = metadata !{i32 310, i32 0, metadata !170, metadata !2672}
!2677 = metadata !{i32 311, i32 0, metadata !1815, metadata !2672}
!2678 = metadata !{i32 312, i32 0, metadata !1817, metadata !2672}
!2679 = metadata !{i32 313, i32 0, metadata !1817, metadata !2672}
!2680 = metadata !{i32 316, i32 0, metadata !1820, metadata !2672}
!2681 = metadata !{i32 317, i32 0, metadata !1824, metadata !2672}
!2682 = metadata !{i32 318, i32 0, metadata !1824, metadata !2672}
!2683 = metadata !{i32 319, i32 0, metadata !1824, metadata !2672}
!2684 = metadata !{i32 330, i32 0, metadata !170, metadata !2672}
!2685 = metadata !{i32 332, i32 0, metadata !170, metadata !2672}
!2686 = metadata !{i32 1168, i32 0, metadata !534, null}
!2687 = metadata !{i32 1170, i32 0, metadata !534, null}
!2688 = metadata !{i32 1177, i32 0, metadata !534, null}
!2689 = metadata !{i32 1179, i32 0, metadata !528, null}
!2690 = metadata !{i32 64, i32 0, metadata !668, metadata !2691}
!2691 = metadata !{i32 1182, i32 0, metadata !536, null}
!2692 = metadata !{i32 65, i32 0, metadata !667, metadata !2691}
!2693 = metadata !{i32 66, i32 0, metadata !1653, metadata !2691}
!2694 = metadata !{i32 1183, i32 0, metadata !542, null}
!2695 = metadata !{i32 1184, i32 0, metadata !2696, null}
!2696 = metadata !{i32 786443, metadata !16, metadata !542, i32 1183, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2697 = metadata !{i32 1185, i32 0, metadata !2696, null}
!2698 = metadata !{i32 1188, i32 0, metadata !2699, null}
!2699 = metadata !{i32 786443, metadata !16, metadata !541, i32 1188, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2700 = metadata !{i32 1189, i32 0, metadata !2701, null}
!2701 = metadata !{i32 786443, metadata !16, metadata !2699, i32 1189, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2702 = metadata !{i32 1191, i32 0, metadata !2703, null}
!2703 = metadata !{i32 786443, metadata !16, metadata !541, i32 1191, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2704 = metadata !{i32 1192, i32 0, metadata !2705, null}
!2705 = metadata !{i32 786443, metadata !16, metadata !2703, i32 1191, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2706 = metadata !{i32 1193, i32 0, metadata !2705, null}
!2707 = metadata !{i32 1195, i32 0, metadata !2708, null}
!2708 = metadata !{i32 786443, metadata !16, metadata !2703, i32 1194, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2709 = metadata !{i32 1198, i32 0, metadata !536, null}
!2710 = metadata !{i32 40, i32 0, metadata !676, metadata !2711}
!2711 = metadata !{i32 1201, i32 0, metadata !543, null}
!2712 = metadata !{i32 43, i32 0, metadata !1511, metadata !2711}
!2713 = metadata !{i32 46, i32 0, metadata !687, metadata !2711}
!2714 = metadata !{i32 47, i32 0, metadata !685, metadata !2711}
!2715 = metadata !{i32 48, i32 0, metadata !684, metadata !2711}
!2716 = metadata !{i32 49, i32 0, metadata !1521, metadata !2711}
!2717 = metadata !{i32 1202, i32 0, metadata !2718, null}
!2718 = metadata !{i32 786443, metadata !16, metadata !543, i32 1202, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2719 = metadata !{i32 1204, i32 0, metadata !2720, null}
!2720 = metadata !{i32 786443, metadata !16, metadata !2721, i32 1204, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2721 = metadata !{i32 786443, metadata !16, metadata !2718, i32 1202, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2722 = metadata !{i32 1205, i32 0, metadata !2723, null}
!2723 = metadata !{i32 786443, metadata !16, metadata !2720, i32 1204, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2724 = metadata !{i32 1206, i32 0, metadata !2723, null}
!2725 = metadata !{i32 1208, i32 0, metadata !2726, null}
!2726 = metadata !{i32 786443, metadata !16, metadata !2720, i32 1207, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2727 = metadata !{i32 1209, i32 0, metadata !2726, null}
!2728 = metadata !{i32 1213, i32 0, metadata !543, null}
!2729 = metadata !{i32 1214, i32 0, metadata !543, null}
!2730 = metadata !{i32 1215, i32 0, metadata !543, null}
!2731 = metadata !{i32 1216, i32 0, metadata !543, null}
!2732 = metadata !{i32 40, i32 0, metadata !676, metadata !2733}
!2733 = metadata !{i32 1219, i32 0, metadata !547, null}
!2734 = metadata !{i32 43, i32 0, metadata !1511, metadata !2733}
!2735 = metadata !{i32 46, i32 0, metadata !687, metadata !2733}
!2736 = metadata !{i32 47, i32 0, metadata !685, metadata !2733}
!2737 = metadata !{i32 48, i32 0, metadata !684, metadata !2733}
!2738 = metadata !{i32 49, i32 0, metadata !1521, metadata !2733}
!2739 = metadata !{i32 1220, i32 0, metadata !2740, null}
!2740 = metadata !{i32 786443, metadata !16, metadata !547, i32 1220, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2741 = metadata !{i32 1222, i32 0, metadata !2742, null}
!2742 = metadata !{i32 786443, metadata !16, metadata !2743, i32 1222, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2743 = metadata !{i32 786443, metadata !16, metadata !2740, i32 1220, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2744 = metadata !{i32 1223, i32 0, metadata !2745, null}
!2745 = metadata !{i32 786443, metadata !16, metadata !2742, i32 1222, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2746 = metadata !{i32 1224, i32 0, metadata !2745, null}
!2747 = metadata !{i32 1225, i32 0, metadata !2748, null}
!2748 = metadata !{i32 786443, metadata !16, metadata !2742, i32 1225, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2749 = metadata !{i32 1226, i32 0, metadata !2750, null}
!2750 = metadata !{i32 786443, metadata !16, metadata !2748, i32 1225, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2751 = metadata !{i32 1227, i32 0, metadata !2750, null}
!2752 = metadata !{i32 1229, i32 0, metadata !2753, null}
!2753 = metadata !{i32 786443, metadata !16, metadata !2748, i32 1228, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2754 = metadata !{i32 1230, i32 0, metadata !2753, null}
!2755 = metadata !{i32 1234, i32 0, metadata !547, null}
!2756 = metadata !{i32 1235, i32 0, metadata !547, null}
!2757 = metadata !{i32 1236, i32 0, metadata !547, null}
!2758 = metadata !{i32 1237, i32 0, metadata !547, null}
!2759 = metadata !{i32 40, i32 0, metadata !676, metadata !2760}
!2760 = metadata !{i32 1242, i32 0, metadata !551, null}
!2761 = metadata !{i32 43, i32 0, metadata !1511, metadata !2760}
!2762 = metadata !{i32 46, i32 0, metadata !687, metadata !2760}
!2763 = metadata !{i32 47, i32 0, metadata !685, metadata !2760}
!2764 = metadata !{i32 48, i32 0, metadata !684, metadata !2760}
!2765 = metadata !{i32 49, i32 0, metadata !1521, metadata !2760}
!2766 = metadata !{i32 1243, i32 0, metadata !2767, null}
!2767 = metadata !{i32 786443, metadata !16, metadata !551, i32 1243, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2768 = metadata !{i32 1245, i32 0, metadata !2769, null}
!2769 = metadata !{i32 786443, metadata !16, metadata !2770, i32 1245, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2770 = metadata !{i32 786443, metadata !16, metadata !2767, i32 1243, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2771 = metadata !{i32 1246, i32 0, metadata !2772, null}
!2772 = metadata !{i32 786443, metadata !16, metadata !2769, i32 1245, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2773 = metadata !{i32 1247, i32 0, metadata !2772, null}
!2774 = metadata !{i32 1248, i32 0, metadata !2775, null}
!2775 = metadata !{i32 786443, metadata !16, metadata !2769, i32 1248, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2776 = metadata !{i32 1249, i32 0, metadata !2777, null}
!2777 = metadata !{i32 786443, metadata !16, metadata !2775, i32 1248, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2778 = metadata !{i32 1250, i32 0, metadata !2777, null}
!2779 = metadata !{i32 1252, i32 0, metadata !2780, null}
!2780 = metadata !{i32 786443, metadata !16, metadata !2775, i32 1251, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2781 = metadata !{i32 1253, i32 0, metadata !2780, null}
!2782 = metadata !{i32 1257, i32 0, metadata !551, null}
!2783 = metadata !{i32 1258, i32 0, metadata !551, null}
!2784 = metadata !{i32 1259, i32 0, metadata !551, null}
!2785 = metadata !{i32 1260, i32 0, metadata !551, null}
!2786 = metadata !{i32 40, i32 0, metadata !676, metadata !2787}
!2787 = metadata !{i32 1263, i32 0, metadata !559, null}
!2788 = metadata !{i32 43, i32 0, metadata !1511, metadata !2787}
!2789 = metadata !{i32 46, i32 0, metadata !687, metadata !2787}
!2790 = metadata !{i32 47, i32 0, metadata !685, metadata !2787}
!2791 = metadata !{i32 48, i32 0, metadata !684, metadata !2787}
!2792 = metadata !{i32 49, i32 0, metadata !1521, metadata !2787}
!2793 = metadata !{i32 1264, i32 0, metadata !569, null}
!2794 = metadata !{i32 1267, i32 0, metadata !2795, null}
!2795 = metadata !{i32 786443, metadata !16, metadata !2796, i32 1267, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2796 = metadata !{i32 786443, metadata !16, metadata !569, i32 1264, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2797 = metadata !{i32 1268, i32 0, metadata !2798, null}
!2798 = metadata !{i32 786443, metadata !16, metadata !2795, i32 1267, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2799 = metadata !{i32 1269, i32 0, metadata !2800, null}
!2800 = metadata !{i32 786443, metadata !16, metadata !2798, i32 1269, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2801 = metadata !{i32 1270, i32 0, metadata !2802, null}
!2802 = metadata !{i32 786443, metadata !16, metadata !2798, i32 1270, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2803 = metadata !{i32 1271, i32 0, metadata !2804, null}
!2804 = metadata !{i32 786443, metadata !16, metadata !2798, i32 1271, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2805 = metadata !{i32 1272, i32 0, metadata !2806, null}
!2806 = metadata !{i32 786443, metadata !16, metadata !2798, i32 1272, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2807 = metadata !{i32 1273, i32 0, metadata !2798, null}
!2808 = metadata !{i32 1275, i32 0, metadata !2809, null}
!2809 = metadata !{i32 786443, metadata !16, metadata !2795, i32 1274, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2810 = metadata !{i32 1276, i32 0, metadata !2809, null}
!2811 = metadata !{i32 1279, i32 0, metadata !568, null}
!2812 = metadata !{i32 1280, i32 0, metadata !2813, null}
!2813 = metadata !{i32 786443, metadata !16, metadata !568, i32 1280, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2814 = metadata !{i32 1281, i32 0, metadata !2813, null}
!2815 = metadata !{i32 1282, i32 0, metadata !568, null}
!2816 = metadata !{i32 1284, i32 0, metadata !559, null}
!2817 = metadata !{i32 1296, i32 0, metadata !570, null}
!2818 = metadata !{i32 1299, i32 0, metadata !2819, null}
!2819 = metadata !{i32 786443, metadata !16, metadata !570, i32 1299, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2820 = metadata !{i32 1300, i32 0, metadata !2821, null}
!2821 = metadata !{i32 786443, metadata !16, metadata !2819, i32 1299, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2822 = metadata !{i32 1302, i32 0, metadata !2821, null}
!2823 = metadata !{i32 1306, i32 0, metadata !2824, null}
!2824 = metadata !{i32 786443, metadata !16, metadata !570, i32 1306, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2825 = metadata !{i32 1307, i32 0, metadata !2826, null}
!2826 = metadata !{i32 786443, metadata !16, metadata !2824, i32 1306, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2827 = metadata !{i32 1309, i32 0, metadata !2826, null}
!2828 = metadata !{i32 1313, i32 0, metadata !2829, null}
!2829 = metadata !{i32 786443, metadata !16, metadata !570, i32 1313, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2830 = metadata !{i32 1314, i32 0, metadata !2831, null}
!2831 = metadata !{i32 786443, metadata !16, metadata !2829, i32 1313, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2832 = metadata !{i32 1316, i32 0, metadata !2831, null}
!2833 = metadata !{i32 1325, i32 0, metadata !603, null}
!2834 = metadata !{i32 1326, i32 0, metadata !601, null}
!2835 = metadata !{metadata !1526, metadata !1526, i64 0}
!2836 = metadata !{i32 64, i32 0, metadata !668, metadata !2837}
!2837 = metadata !{i32 1327, i32 0, metadata !600, null}
!2838 = metadata !{i32 66, i32 0, metadata !1653, metadata !2837}
!2839 = metadata !{i32 65, i32 0, metadata !667, metadata !2837}
!2840 = metadata !{i32 1328, i32 0, metadata !2841, null}
!2841 = metadata !{i32 786443, metadata !16, metadata !600, i32 1328, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2842 = metadata !{i32 1329, i32 0, metadata !2843, null}
!2843 = metadata !{i32 786443, metadata !16, metadata !2841, i32 1328, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2844 = metadata !{i32 1330, i32 0, metadata !2843, null}
!2845 = metadata !{i32 1331, i32 0, metadata !2846, null}
!2846 = metadata !{i32 786443, metadata !16, metadata !2841, i32 1331, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2847 = metadata !{i32 1333, i32 0, metadata !2848, null}
!2848 = metadata !{i32 786443, metadata !16, metadata !2849, i32 1333, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2849 = metadata !{i32 786443, metadata !16, metadata !2846, i32 1331, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2850 = metadata !{i32 1334, i32 0, metadata !2851, null}
!2851 = metadata !{i32 786443, metadata !16, metadata !2849, i32 1334, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2852 = metadata !{i32 1335, i32 0, metadata !2853, null}
!2853 = metadata !{i32 786443, metadata !16, metadata !2849, i32 1335, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2854 = metadata !{i32 1336, i32 0, metadata !2849, null}
!2855 = metadata !{i32 1337, i32 0, metadata !2849, null}
!2856 = metadata !{i32 1338, i32 0, metadata !2857, null}
!2857 = metadata !{i32 786443, metadata !16, metadata !2858, i32 1338, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2858 = metadata !{i32 786443, metadata !16, metadata !2846, i32 1337, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2859 = metadata !{i32 1339, i32 0, metadata !2860, null}
!2860 = metadata !{i32 786443, metadata !16, metadata !2858, i32 1339, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2861 = metadata !{i32 1340, i32 0, metadata !2862, null}
!2862 = metadata !{i32 786443, metadata !16, metadata !2858, i32 1340, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2863 = metadata !{i32 1341, i32 0, metadata !2864, null}
!2864 = metadata !{i32 786443, metadata !16, metadata !2858, i32 1341, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2865 = metadata !{i32 1346, i32 0, metadata !606, null}
!2866 = metadata !{i32 1349, i32 0, metadata !605, null}
!2867 = metadata !{i32 1350, i32 0, metadata !605, null}
!2868 = metadata !{i32 1353, i32 0, metadata !612, null}
!2869 = metadata !{i32 1356, i32 0, metadata !2870, null}
!2870 = metadata !{i32 786443, metadata !16, metadata !2871, i32 1356, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2871 = metadata !{i32 786443, metadata !16, metadata !612, i32 1353, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2872 = metadata !{i32 1357, i32 0, metadata !2873, null}
!2873 = metadata !{i32 786443, metadata !16, metadata !2870, i32 1356, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2874 = metadata !{i32 1358, i32 0, metadata !2873, null}
!2875 = metadata !{i32 1361, i32 0, metadata !611, null}
!2876 = metadata !{i32 1364, i32 0, metadata !610, null}
!2877 = metadata !{i32 64, i32 0, metadata !668, metadata !2878}
!2878 = metadata !{i32 1365, i32 0, metadata !609, null}
!2879 = metadata !{i32 66, i32 0, metadata !1653, metadata !2878}
!2880 = metadata !{i32 65, i32 0, metadata !667, metadata !2878}
!2881 = metadata !{i32 1366, i32 0, metadata !2882, null}
!2882 = metadata !{i32 786443, metadata !16, metadata !609, i32 1366, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2883 = metadata !{i32 1367, i32 0, metadata !2884, null}
!2884 = metadata !{i32 786443, metadata !16, metadata !2885, i32 1367, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2885 = metadata !{i32 786443, metadata !16, metadata !2882, i32 1366, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2886 = metadata !{i32 1368, i32 0, metadata !2887, null}
!2887 = metadata !{i32 786443, metadata !16, metadata !2885, i32 1368, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2888 = metadata !{i32 1369, i32 0, metadata !2889, null}
!2889 = metadata !{i32 786443, metadata !16, metadata !2885, i32 1369, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2890 = metadata !{i32 1376, i32 0, metadata !570, null}
!2891 = metadata !{i32 1384, i32 0, metadata !613, null}
!2892 = metadata !{i32 1386, i32 0, metadata !2893, null}
!2893 = metadata !{i32 786443, metadata !16, metadata !613, i32 1386, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2894 = metadata !{metadata !1514, metadata !1516, i64 80}
!2895 = metadata !{i32 1387, i32 0, metadata !2896, null}
!2896 = metadata !{i32 786443, metadata !16, metadata !2893, i32 1386, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2897 = metadata !{i32 1388, i32 0, metadata !2896, null}
!2898 = metadata !{i32 1389, i32 0, metadata !2896, null}
!2899 = metadata !{i32 1392, i32 0, metadata !2900, null}
!2900 = metadata !{i32 786443, metadata !16, metadata !613, i32 1392, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2901 = metadata !{i32 1393, i32 0, metadata !2902, null}
!2902 = metadata !{i32 786443, metadata !16, metadata !2903, i32 1393, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2903 = metadata !{i32 786443, metadata !16, metadata !2900, i32 1392, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2904 = metadata !{i32 1395, i32 0, metadata !2903, null}
!2905 = metadata !{i32 1396, i32 0, metadata !2903, null}
!2906 = metadata !{i32 1417, i32 0, metadata !642, metadata !2907}
!2907 = metadata !{i32 1398, i32 0, metadata !613, null}
!2908 = metadata !{i32 1418, i32 0, metadata !642, metadata !2907}
!2909 = metadata !{i32 1423, i32 0, metadata !636, metadata !2910}
!2910 = metadata !{i32 1399, i32 0, metadata !613, null}
!2911 = metadata !{i32 1424, i32 0, metadata !636, metadata !2910}
!2912 = metadata !{i32 1403, i32 0, metadata !613, null}
!2913 = metadata !{i32 1404, i32 0, metadata !613, null}
!2914 = metadata !{i32 1405, i32 0, metadata !2915, null}
!2915 = metadata !{i32 786443, metadata !16, metadata !613, i32 1405, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2916 = metadata !{i32 1406, i32 0, metadata !2917, null}
!2917 = metadata !{i32 786443, metadata !16, metadata !2915, i32 1405, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2918 = metadata !{i32 1407, i32 0, metadata !2917, null}
!2919 = metadata !{i32 1411, i32 0, metadata !613, null}
!2920 = metadata !{i32 1458, i32 0, metadata !2921, null}
!2921 = metadata !{i32 786443, metadata !16, metadata !620, i32 1458, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2922 = metadata !{i32 1459, i32 0, metadata !2923, null}
!2923 = metadata !{i32 786443, metadata !16, metadata !2921, i32 1458, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2924 = metadata !{i32 1460, i32 0, metadata !2923, null}
!2925 = metadata !{i32 1463, i32 0, metadata !2926, null}
!2926 = metadata !{i32 786443, metadata !16, metadata !620, i32 1463, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd.c]
!2927 = metadata !{i32 1467, i32 0, metadata !620, null}
!2928 = metadata !{i32 1468, i32 0, metadata !620, null}
!2929 = metadata !{i32 1469, i32 0, metadata !620, null}
!2930 = metadata !{i32 1470, i32 0, metadata !620, null}
!2931 = metadata !{i32 68, i32 0, metadata !709, null}
!2932 = metadata !{i32 71, i32 0, metadata !708, null}
!2933 = metadata !{i32 72, i32 0, metadata !708, null}
!2934 = metadata !{i32 73, i32 0, metadata !708, null}
!2935 = metadata !{i32 74, i32 0, metadata !708, null}
!2936 = metadata !{i32 76, i32 0, metadata !699, null}
!2937 = metadata !{i32 82, i32 0, metadata !729, null}
!2938 = metadata !{i32 85, i32 0, metadata !728, null}
!2939 = metadata !{i32 86, i32 0, metadata !728, null}
!2940 = metadata !{i32 87, i32 0, metadata !728, null}
!2941 = metadata !{i32 88, i32 0, metadata !728, null}
!2942 = metadata !{i32 90, i32 0, metadata !721, null}
!2943 = metadata !{i32 94, i32 0, metadata !730, null}
!2944 = metadata !{i32 98, i32 0, metadata !739, null}
!2945 = metadata !{i32 99, i32 0, metadata !739, null}
!2946 = metadata !{i32 42, i32 0, metadata !899, metadata !2947}
!2947 = metadata !{i32 100, i32 0, metadata !739, null}
!2948 = metadata !{i32 44, i32 0, metadata !899, metadata !2947}
!2949 = metadata !{i32 45, i32 0, metadata !899, metadata !2947}
!2950 = metadata !{metadata !1525, metadata !1526, i64 16}
!2951 = metadata !{metadata !2459, metadata !1526, i64 16}
!2952 = metadata !{i32 46, i32 0, metadata !899, metadata !2947}
!2953 = metadata !{metadata !2459, metadata !1515, i64 28}
!2954 = metadata !{i32 47, i32 0, metadata !899, metadata !2947}
!2955 = metadata !{metadata !2459, metadata !1515, i64 32}
!2956 = metadata !{i32 48, i32 0, metadata !899, metadata !2947}
!2957 = metadata !{i32 50, i32 0, metadata !899, metadata !2947}
!2958 = metadata !{metadata !2459, metadata !1526, i64 72}
!2959 = metadata !{i32 51, i32 0, metadata !899, metadata !2947}
!2960 = metadata !{metadata !2459, metadata !1526, i64 88}
!2961 = metadata !{i32 52, i32 0, metadata !899, metadata !2947}
!2962 = metadata !{metadata !1525, metadata !1526, i64 104}
!2963 = metadata !{metadata !2459, metadata !1526, i64 104}
!2964 = metadata !{i32 53, i32 0, metadata !899, metadata !2947}
!2965 = metadata !{i32 102, i32 0, metadata !739, null}
!2966 = metadata !{i32 105, i32 0, metadata !787, null}
!2967 = metadata !{i32 106, i32 0, metadata !787, null}
!2968 = metadata !{i32 42, i32 0, metadata !899, metadata !2969}
!2969 = metadata !{i32 107, i32 0, metadata !787, null}
!2970 = metadata !{i32 44, i32 0, metadata !899, metadata !2969}
!2971 = metadata !{i32 45, i32 0, metadata !899, metadata !2969}
!2972 = metadata !{i32 46, i32 0, metadata !899, metadata !2969}
!2973 = metadata !{i32 47, i32 0, metadata !899, metadata !2969}
!2974 = metadata !{i32 48, i32 0, metadata !899, metadata !2969}
!2975 = metadata !{i32 50, i32 0, metadata !899, metadata !2969}
!2976 = metadata !{i32 51, i32 0, metadata !899, metadata !2969}
!2977 = metadata !{i32 52, i32 0, metadata !899, metadata !2969}
!2978 = metadata !{i32 53, i32 0, metadata !899, metadata !2969}
!2979 = metadata !{i32 109, i32 0, metadata !787, null}
!2980 = metadata !{i32 112, i32 0, metadata !795, null}
!2981 = metadata !{i32 113, i32 0, metadata !795, null}
!2982 = metadata !{i32 42, i32 0, metadata !899, metadata !2983}
!2983 = metadata !{i32 114, i32 0, metadata !795, null}
!2984 = metadata !{i32 44, i32 0, metadata !899, metadata !2983}
!2985 = metadata !{i32 45, i32 0, metadata !899, metadata !2983}
!2986 = metadata !{i32 46, i32 0, metadata !899, metadata !2983}
!2987 = metadata !{i32 47, i32 0, metadata !899, metadata !2983}
!2988 = metadata !{i32 48, i32 0, metadata !899, metadata !2983}
!2989 = metadata !{i32 50, i32 0, metadata !899, metadata !2983}
!2990 = metadata !{i32 51, i32 0, metadata !899, metadata !2983}
!2991 = metadata !{i32 52, i32 0, metadata !899, metadata !2983}
!2992 = metadata !{i32 53, i32 0, metadata !899, metadata !2983}
!2993 = metadata !{i32 116, i32 0, metadata !795, null}
!2994 = metadata !{i32 119, i32 0, metadata !802, null}
!2995 = metadata !{i32 120, i32 0, metadata !802, null}
!2996 = metadata !{i32 42, i32 0, metadata !899, metadata !2997}
!2997 = metadata !{i32 121, i32 0, metadata !802, null}
!2998 = metadata !{i32 44, i32 0, metadata !899, metadata !2997}
!2999 = metadata !{i32 45, i32 0, metadata !899, metadata !2997}
!3000 = metadata !{i32 46, i32 0, metadata !899, metadata !2997}
!3001 = metadata !{i32 47, i32 0, metadata !899, metadata !2997}
!3002 = metadata !{i32 48, i32 0, metadata !899, metadata !2997}
!3003 = metadata !{i32 50, i32 0, metadata !899, metadata !2997}
!3004 = metadata !{i32 51, i32 0, metadata !899, metadata !2997}
!3005 = metadata !{i32 52, i32 0, metadata !899, metadata !2997}
!3006 = metadata !{i32 53, i32 0, metadata !899, metadata !2997}
!3007 = metadata !{i32 123, i32 0, metadata !802, null}
!3008 = metadata !{i32 126, i32 0, metadata !808, null}
!3009 = metadata !{i32 127, i32 0, metadata !808, null}
!3010 = metadata !{i32 42, i32 0, metadata !899, metadata !3011}
!3011 = metadata !{i32 128, i32 0, metadata !808, null}
!3012 = metadata !{i32 44, i32 0, metadata !899, metadata !3011}
!3013 = metadata !{i32 45, i32 0, metadata !899, metadata !3011}
!3014 = metadata !{i32 46, i32 0, metadata !899, metadata !3011}
!3015 = metadata !{i32 47, i32 0, metadata !899, metadata !3011}
!3016 = metadata !{i32 48, i32 0, metadata !899, metadata !3011}
!3017 = metadata !{i32 50, i32 0, metadata !899, metadata !3011}
!3018 = metadata !{i32 51, i32 0, metadata !899, metadata !3011}
!3019 = metadata !{i32 52, i32 0, metadata !899, metadata !3011}
!3020 = metadata !{i32 53, i32 0, metadata !899, metadata !3011}
!3021 = metadata !{i32 130, i32 0, metadata !808, null}
!3022 = metadata !{i32 133, i32 0, metadata !817, null}
!3023 = metadata !{i32 134, i32 0, metadata !817, null}
!3024 = metadata !{i32 42, i32 0, metadata !899, metadata !3025}
!3025 = metadata !{i32 135, i32 0, metadata !817, null}
!3026 = metadata !{i32 44, i32 0, metadata !899, metadata !3025}
!3027 = metadata !{i32 45, i32 0, metadata !899, metadata !3025}
!3028 = metadata !{i32 46, i32 0, metadata !899, metadata !3025}
!3029 = metadata !{i32 47, i32 0, metadata !899, metadata !3025}
!3030 = metadata !{i32 48, i32 0, metadata !899, metadata !3025}
!3031 = metadata !{i32 50, i32 0, metadata !899, metadata !3025}
!3032 = metadata !{i32 51, i32 0, metadata !899, metadata !3025}
!3033 = metadata !{i32 52, i32 0, metadata !899, metadata !3025}
!3034 = metadata !{i32 53, i32 0, metadata !899, metadata !3025}
!3035 = metadata !{i32 137, i32 0, metadata !817, null}
!3036 = metadata !{i32 140, i32 0, metadata !825, null}
!3037 = metadata !{i32 162, i32 0, metadata !831, null}
!3038 = metadata !{i32 169, i32 0, metadata !856, null}
!3039 = metadata !{i32 170, i32 0, metadata !856, null}
!3040 = metadata !{i32 172, i32 0, metadata !887, null}
!3041 = metadata !{i32 173, i32 0, metadata !886, null}
!3042 = metadata !{i32 174, i32 0, metadata !886, null}
!3043 = metadata !{i32 176, i32 0, metadata !889, null}
!3044 = metadata !{i32 183, i32 0, metadata !889, null}
!3045 = metadata !{metadata !3046, metadata !2405, i64 16}
!3046 = metadata !{metadata !"dirent", metadata !1526, i64 0, metadata !1526, i64 8, metadata !2405, i64 16, metadata !1508, i64 18, metadata !1508, i64 19}
!3047 = metadata !{i32 187, i32 0, metadata !856, null}
!3048 = metadata !{i32 114, i32 0, metadata !909, null}
!3049 = metadata !{i32 115, i32 0, metadata !909, null}
!3050 = metadata !{i32 503, i32 0, metadata !3051, metadata !3052}
!3051 = metadata !{i32 786443, metadata !976, metadata !975} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//usr/include/sys/stat.h]
!3052 = metadata !{i32 117, i32 0, metadata !909, null}
!3053 = metadata !{i32 119, i32 0, metadata !909, null}
!3054 = metadata !{i32 120, i32 0, metadata !909, null}
!3055 = metadata !{i32 121, i32 0, metadata !3056, null}
!3056 = metadata !{i32 786443, metadata !907, metadata !909, i32 121, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3057 = metadata !{i32 122, i32 0, metadata !3058, null}
!3058 = metadata !{i32 786443, metadata !907, metadata !3056, i32 121, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3059 = metadata !{i32 123, i32 0, metadata !3058, null}
!3060 = metadata !{i32 127, i32 0, metadata !3061, null}
!3061 = metadata !{i32 786443, metadata !907, metadata !909, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3062 = metadata !{i32 128, i32 0, metadata !3063, null}
!3063 = metadata !{i32 786443, metadata !907, metadata !3061, i32 127, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3064 = metadata !{metadata !1514, metadata !1516, i64 8}
!3065 = metadata !{i32 129, i32 0, metadata !3063, null}
!3066 = metadata !{i32 130, i32 0, metadata !3063, null}
!3067 = metadata !{i32 131, i32 0, metadata !3063, null}
!3068 = metadata !{i32 132, i32 0, metadata !3061, null}
!3069 = metadata !{i32 134, i32 0, metadata !909, null}
!3070 = metadata !{i32 135, i32 0, metadata !3071, null}
!3071 = metadata !{i32 786443, metadata !907, metadata !909, i32 135, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3072 = metadata !{i32 136, i32 0, metadata !3073, null}
!3073 = metadata !{i32 786443, metadata !907, metadata !3071, i32 135, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3074 = metadata !{i32 137, i32 0, metadata !3073, null}
!3075 = metadata !{i32 138, i32 0, metadata !3073, null}
!3076 = metadata !{i32 139, i32 0, metadata !3073, null}
!3077 = metadata !{i32 140, i32 0, metadata !3073, null}
!3078 = metadata !{i32 142, i32 0, metadata !3073, null}
!3079 = metadata !{i32 143, i32 0, metadata !3073, null}
!3080 = metadata !{i32 144, i32 0, metadata !3073, null}
!3081 = metadata !{i32 145, i32 0, metadata !3073, null}
!3082 = metadata !{i32 146, i32 0, metadata !3073, null}
!3083 = metadata !{i32 147, i32 0, metadata !3073, null}
!3084 = metadata !{i32 150, i32 0, metadata !3085, null}
!3085 = metadata !{i32 786443, metadata !907, metadata !909, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3086 = metadata !{i32 151, i32 0, metadata !3087, null}
!3087 = metadata !{i32 786443, metadata !907, metadata !3085, i32 150, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3088 = metadata !{i32 152, i32 0, metadata !3087, null}
!3089 = metadata !{i32 153, i32 0, metadata !3087, null}
!3090 = metadata !{i32 154, i32 0, metadata !3087, null}
!3091 = metadata !{i32 155, i32 0, metadata !3087, null}
!3092 = metadata !{i32 156, i32 0, metadata !3085, null}
!3093 = metadata !{i32 158, i32 0, metadata !909, null}
!3094 = metadata !{i32 97, i32 0, metadata !947, metadata !3095}
!3095 = metadata !{i32 159, i32 0, metadata !909, null}
!3096 = metadata !{i32 99, i32 0, metadata !947, metadata !3095}
!3097 = metadata !{i32 100, i32 0, metadata !947, metadata !3095}
!3098 = metadata !{metadata !1558, metadata !1515, i64 772}
!3099 = metadata !{i32 160, i32 0, metadata !909, null}
!3100 = metadata !{i32 161, i32 0, metadata !909, null}
!3101 = metadata !{i32 48, i32 0, metadata !953, null}
!3102 = metadata !{i32 50, i32 0, metadata !953, null}
!3103 = metadata !{i32 51, i32 0, metadata !3104, null}
!3104 = metadata !{i32 786443, metadata !907, metadata !953, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3105 = metadata !{i32 53, i32 0, metadata !953, null}
!3106 = metadata !{i32 52, i32 0, metadata !3104, null}
!3107 = metadata !{i32 55, i32 0, metadata !953, null}
!3108 = metadata !{i32 57, i32 0, metadata !953, null}
!3109 = metadata !{i32 58, i32 0, metadata !953, null} ; [ DW_TAG_imported_module ]
!3110 = metadata !{i32 59, i32 0, metadata !953, null}
!3111 = metadata !{i32 61, i32 0, metadata !953, null}
!3112 = metadata !{i32 64, i32 0, metadata !3113, null}
!3113 = metadata !{i32 786443, metadata !907, metadata !953, i32 64, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/fd_init.c]
!3114 = metadata !{i32 66, i32 0, metadata !3113, null}
!3115 = metadata !{i32 71, i32 0, metadata !953, null}
!3116 = metadata !{i32 75, i32 0, metadata !953, null}
!3117 = metadata !{metadata !1525, metadata !1526, i64 56}
!3118 = metadata !{i32 77, i32 0, metadata !953, null}
!3119 = metadata !{i32 78, i32 0, metadata !953, null}
!3120 = metadata !{metadata !1525, metadata !1526, i64 0}
!3121 = metadata !{i32 79, i32 0, metadata !953, null}
!3122 = metadata !{metadata !1525, metadata !1526, i64 40}
!3123 = metadata !{i32 80, i32 0, metadata !953, null}
!3124 = metadata !{i32 81, i32 0, metadata !953, null}
!3125 = metadata !{i32 82, i32 0, metadata !953, null}
!3126 = metadata !{i32 83, i32 0, metadata !953, null}
!3127 = metadata !{i32 84, i32 0, metadata !953, null}
!3128 = metadata !{i32 85, i32 0, metadata !953, null}
!3129 = metadata !{i32 86, i32 0, metadata !953, null}
!3130 = metadata !{i32 87, i32 0, metadata !953, null}
!3131 = metadata !{i32 88, i32 0, metadata !953, null}
!3132 = metadata !{i32 89, i32 0, metadata !953, null}
!3133 = metadata !{i32 90, i32 0, metadata !953, null}
!3134 = metadata !{i32 92, i32 0, metadata !953, null}
!3135 = metadata !{metadata !1525, metadata !1526, i64 48}
!3136 = metadata !{i32 93, i32 0, metadata !953, null}
!3137 = metadata !{metadata !1525, metadata !1526, i64 64}
!3138 = metadata !{i32 94, i32 0, metadata !953, null}
!3139 = metadata !{i32 95, i32 0, metadata !953, null}
!3140 = metadata !{i32 86, i32 0, metadata !1021, null}
!3141 = metadata !{i32 87, i32 0, metadata !1021, null}
!3142 = metadata !{metadata !1516, metadata !1516, i64 0}
!3143 = metadata !{i32 90, i32 0, metadata !1021, null}
!3144 = metadata !{i32 98, i32 0, metadata !1021, null}
!3145 = metadata !{i32 102, i32 0, metadata !1021, null}
!3146 = metadata !{i32 105, i32 0, metadata !3147, null}
!3147 = metadata !{i32 786443, metadata !1019, metadata !1021, i32 105, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3148 = metadata !{i32 54, i32 0, metadata !1107, metadata !3146}
!3149 = metadata !{i32 55, i32 0, metadata !3150, metadata !3146}
!3150 = metadata !{i32 786443, metadata !1019, metadata !3151, i32 55, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3151 = metadata !{i32 786443, metadata !1019, metadata !1107, i32 54, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3152 = metadata !{i32 57, i32 0, metadata !3151, metadata !3146}
!3153 = metadata !{i32 58, i32 0, metadata !3151, metadata !3146} ; [ DW_TAG_imported_module ]
!3154 = metadata !{i32 123, i32 0, metadata !1021, null}
!3155 = metadata !{i32 130, i32 0, metadata !1055, null}
!3156 = metadata !{i32 106, i32 0, metadata !3157, null}
!3157 = metadata !{i32 786443, metadata !1019, metadata !3147, i32 105, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3158 = metadata !{i32 124, i32 0, metadata !1056, null}
!3159 = metadata !{i32 54, i32 0, metadata !1107, metadata !3158}
!3160 = metadata !{i32 55, i32 0, metadata !3150, metadata !3158}
!3161 = metadata !{i32 57, i32 0, metadata !3151, metadata !3158}
!3162 = metadata !{i32 58, i32 0, metadata !3151, metadata !3158} ; [ DW_TAG_imported_module ]
!3163 = metadata !{i32 126, i32 0, metadata !3164, null}
!3164 = metadata !{i32 786443, metadata !1019, metadata !1055, i32 126, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3165 = metadata !{i32 127, i32 0, metadata !3164, null}
!3166 = metadata !{i32 129, i32 0, metadata !1055, null}
!3167 = metadata !{i32 34, i32 0, metadata !3168, metadata !3166}
!3168 = metadata !{i32 786443, metadata !1019, metadata !1094, i32 34, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3169 = metadata !{i32 36, i32 0, metadata !1094, metadata !3166}
!3170 = metadata !{i32 39, i32 0, metadata !3171, metadata !3166}
!3171 = metadata !{i32 786443, metadata !1019, metadata !3172, i32 39, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3172 = metadata !{i32 786443, metadata !1019, metadata !3173, i32 37, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3173 = metadata !{i32 786443, metadata !1019, metadata !1094, i32 36, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3174 = metadata !{i32 37, i32 0, metadata !3172, metadata !3166}
!3175 = metadata !{i32 40, i32 0, metadata !3176, metadata !3166}
!3176 = metadata !{i32 786443, metadata !1019, metadata !3171, i32 39, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3177 = metadata !{i32 42, i32 0, metadata !3178, metadata !3166}
!3178 = metadata !{i32 786443, metadata !1019, metadata !3171, i32 41, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3179 = metadata !{i32 132, i32 0, metadata !1055, null}
!3180 = metadata !{i32 77, i32 0, metadata !3181, metadata !3182}
!3181 = metadata !{i32 786443, metadata !1019, metadata !1086, i32 77, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3182 = metadata !{i32 131, i32 0, metadata !1055, null}
!3183 = metadata !{i32 78, i32 0, metadata !3184, metadata !3182}
!3184 = metadata !{i32 786443, metadata !1019, metadata !3181, i32 77, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3185 = metadata !{i32 80, i32 0, metadata !3186, metadata !3182}
!3186 = metadata !{i32 786443, metadata !1019, metadata !3181, i32 79, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3187 = metadata !{i32 81, i32 0, metadata !3186, metadata !3182}
!3188 = metadata !{i32 134, i32 0, metadata !1055, null}
!3189 = metadata !{i32 54, i32 0, metadata !1107, metadata !3190}
!3190 = metadata !{i32 135, i32 0, metadata !1060, null}
!3191 = metadata !{i32 55, i32 0, metadata !3150, metadata !3190}
!3192 = metadata !{i32 57, i32 0, metadata !3151, metadata !3190}
!3193 = metadata !{i32 58, i32 0, metadata !3151, metadata !3190} ; [ DW_TAG_imported_module ]
!3194 = metadata !{i32 139, i32 0, metadata !3195, null}
!3195 = metadata !{i32 786443, metadata !1019, metadata !1059, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3196 = metadata !{i32 140, i32 0, metadata !3195, null}
!3197 = metadata !{i32 142, i32 0, metadata !1059, null}
!3198 = metadata !{i32 143, i32 0, metadata !1059, null}
!3199 = metadata !{i32 34, i32 0, metadata !3168, metadata !3198}
!3200 = metadata !{i32 36, i32 0, metadata !1094, metadata !3198}
!3201 = metadata !{i32 39, i32 0, metadata !3171, metadata !3198}
!3202 = metadata !{i32 37, i32 0, metadata !3172, metadata !3198}
!3203 = metadata !{i32 40, i32 0, metadata !3176, metadata !3198}
!3204 = metadata !{i32 42, i32 0, metadata !3178, metadata !3198}
!3205 = metadata !{i32 144, i32 0, metadata !1059, null}
!3206 = metadata !{i32 34, i32 0, metadata !3168, metadata !3205}
!3207 = metadata !{i32 36, i32 0, metadata !1094, metadata !3205}
!3208 = metadata !{i32 39, i32 0, metadata !3171, metadata !3205}
!3209 = metadata !{i32 37, i32 0, metadata !3172, metadata !3205}
!3210 = metadata !{i32 40, i32 0, metadata !3176, metadata !3205}
!3211 = metadata !{i32 42, i32 0, metadata !3178, metadata !3205}
!3212 = metadata !{i32 145, i32 0, metadata !1059, null}
!3213 = metadata !{i32 34, i32 0, metadata !3168, metadata !3212}
!3214 = metadata !{i32 36, i32 0, metadata !1094, metadata !3212}
!3215 = metadata !{i32 39, i32 0, metadata !3171, metadata !3212}
!3216 = metadata !{i32 37, i32 0, metadata !3172, metadata !3212}
!3217 = metadata !{i32 40, i32 0, metadata !3176, metadata !3212}
!3218 = metadata !{i32 42, i32 0, metadata !3178, metadata !3212}
!3219 = metadata !{i32 147, i32 0, metadata !1059, null}
!3220 = metadata !{i32 148, i32 0, metadata !3221, null}
!3221 = metadata !{i32 786443, metadata !1019, metadata !1059, i32 148, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3222 = metadata !{i32 149, i32 0, metadata !3223, null}
!3223 = metadata !{i32 786443, metadata !1019, metadata !3221, i32 148, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3224 = metadata !{i32 151, i32 0, metadata !3223, null}
!3225 = metadata !{i32 77, i32 0, metadata !3181, metadata !3226}
!3226 = metadata !{i32 150, i32 0, metadata !3223, null}
!3227 = metadata !{i32 78, i32 0, metadata !3184, metadata !3226}
!3228 = metadata !{i32 80, i32 0, metadata !3186, metadata !3226}
!3229 = metadata !{i32 81, i32 0, metadata !3186, metadata !3226}
!3230 = metadata !{i32 54, i32 0, metadata !1107, metadata !3231}
!3231 = metadata !{i32 155, i32 0, metadata !1063, null}
!3232 = metadata !{i32 55, i32 0, metadata !3150, metadata !3231}
!3233 = metadata !{i32 57, i32 0, metadata !3151, metadata !3231}
!3234 = metadata !{i32 58, i32 0, metadata !3151, metadata !3231} ; [ DW_TAG_imported_module ]
!3235 = metadata !{i32 158, i32 0, metadata !3236, null}
!3236 = metadata !{i32 786443, metadata !1019, metadata !1062, i32 158, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3237 = metadata !{i32 159, i32 0, metadata !3236, null}
!3238 = metadata !{i32 161, i32 0, metadata !1062, null}
!3239 = metadata !{i32 162, i32 0, metadata !1062, null}
!3240 = metadata !{i32 34, i32 0, metadata !3168, metadata !3239}
!3241 = metadata !{i32 36, i32 0, metadata !1094, metadata !3239}
!3242 = metadata !{i32 39, i32 0, metadata !3171, metadata !3239}
!3243 = metadata !{i32 37, i32 0, metadata !3172, metadata !3239}
!3244 = metadata !{i32 40, i32 0, metadata !3176, metadata !3239}
!3245 = metadata !{i32 42, i32 0, metadata !3178, metadata !3239}
!3246 = metadata !{i32 163, i32 0, metadata !1062, null}
!3247 = metadata !{i32 34, i32 0, metadata !3168, metadata !3246}
!3248 = metadata !{i32 36, i32 0, metadata !1094, metadata !3246}
!3249 = metadata !{i32 39, i32 0, metadata !3171, metadata !3246}
!3250 = metadata !{i32 37, i32 0, metadata !3172, metadata !3246}
!3251 = metadata !{i32 40, i32 0, metadata !3176, metadata !3246}
!3252 = metadata !{i32 42, i32 0, metadata !3178, metadata !3246}
!3253 = metadata !{i32 165, i32 0, metadata !1062, null}
!3254 = metadata !{i32 54, i32 0, metadata !1107, metadata !3255}
!3255 = metadata !{i32 165, i32 0, metadata !1066, null}
!3256 = metadata !{i32 55, i32 0, metadata !3150, metadata !3255}
!3257 = metadata !{i32 57, i32 0, metadata !3151, metadata !3255}
!3258 = metadata !{i32 58, i32 0, metadata !3151, metadata !3255} ; [ DW_TAG_imported_module ]
!3259 = metadata !{i32 54, i32 0, metadata !1107, metadata !3260}
!3260 = metadata !{i32 166, i32 0, metadata !1066, null}
!3261 = metadata !{i32 55, i32 0, metadata !3150, metadata !3260}
!3262 = metadata !{i32 57, i32 0, metadata !3151, metadata !3260}
!3263 = metadata !{i32 58, i32 0, metadata !3151, metadata !3260} ; [ DW_TAG_imported_module ]
!3264 = metadata !{i32 170, i32 0, metadata !3265, null}
!3265 = metadata !{i32 786443, metadata !1019, metadata !1065, i32 170, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3266 = metadata !{i32 171, i32 0, metadata !3265, null}
!3267 = metadata !{i32 173, i32 0, metadata !1065, null}
!3268 = metadata !{i32 34, i32 0, metadata !3168, metadata !3267}
!3269 = metadata !{i32 36, i32 0, metadata !1094, metadata !3267}
!3270 = metadata !{i32 39, i32 0, metadata !3171, metadata !3267}
!3271 = metadata !{i32 37, i32 0, metadata !3172, metadata !3267}
!3272 = metadata !{i32 40, i32 0, metadata !3176, metadata !3267}
!3273 = metadata !{i32 42, i32 0, metadata !3178, metadata !3267}
!3274 = metadata !{i32 174, i32 0, metadata !1065, null}
!3275 = metadata !{i32 54, i32 0, metadata !1107, metadata !3276}
!3276 = metadata !{i32 174, i32 0, metadata !1072, null}
!3277 = metadata !{i32 55, i32 0, metadata !3150, metadata !3276}
!3278 = metadata !{i32 57, i32 0, metadata !3151, metadata !3276}
!3279 = metadata !{i32 58, i32 0, metadata !3151, metadata !3276} ; [ DW_TAG_imported_module ]
!3280 = metadata !{i32 54, i32 0, metadata !1107, metadata !3281}
!3281 = metadata !{i32 175, i32 0, metadata !1072, null}
!3282 = metadata !{i32 55, i32 0, metadata !3150, metadata !3281}
!3283 = metadata !{i32 57, i32 0, metadata !3151, metadata !3281}
!3284 = metadata !{i32 58, i32 0, metadata !3151, metadata !3281} ; [ DW_TAG_imported_module ]
!3285 = metadata !{i32 177, i32 0, metadata !3286, null}
!3286 = metadata !{i32 786443, metadata !1019, metadata !1072, i32 175, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3287 = metadata !{i32 178, i32 0, metadata !3286, null}
!3288 = metadata !{i32 54, i32 0, metadata !1107, metadata !3289}
!3289 = metadata !{i32 179, i32 0, metadata !1071, null}
!3290 = metadata !{i32 55, i32 0, metadata !3150, metadata !3289}
!3291 = metadata !{i32 57, i32 0, metadata !3151, metadata !3289}
!3292 = metadata !{i32 58, i32 0, metadata !3151, metadata !3289} ; [ DW_TAG_imported_module ]
!3293 = metadata !{i32 181, i32 0, metadata !3294, null}
!3294 = metadata !{i32 786443, metadata !1019, metadata !1071, i32 179, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3295 = metadata !{i32 182, i32 0, metadata !3294, null}
!3296 = metadata !{i32 54, i32 0, metadata !1107, metadata !3297}
!3297 = metadata !{i32 183, i32 0, metadata !1070, null}
!3298 = metadata !{i32 55, i32 0, metadata !3150, metadata !3297}
!3299 = metadata !{i32 57, i32 0, metadata !3151, metadata !3297}
!3300 = metadata !{i32 58, i32 0, metadata !3151, metadata !3297} ; [ DW_TAG_imported_module ]
!3301 = metadata !{i32 185, i32 0, metadata !3302, null}
!3302 = metadata !{i32 786443, metadata !1019, metadata !1070, i32 183, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3303 = metadata !{i32 186, i32 0, metadata !3302, null}
!3304 = metadata !{i32 54, i32 0, metadata !1107, metadata !3305}
!3305 = metadata !{i32 187, i32 0, metadata !1069, null}
!3306 = metadata !{i32 55, i32 0, metadata !3150, metadata !3305}
!3307 = metadata !{i32 57, i32 0, metadata !3151, metadata !3305}
!3308 = metadata !{i32 58, i32 0, metadata !3151, metadata !3305} ; [ DW_TAG_imported_module ]
!3309 = metadata !{i32 189, i32 0, metadata !3310, null}
!3310 = metadata !{i32 786443, metadata !1019, metadata !1068, i32 189, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3311 = metadata !{i32 190, i32 0, metadata !3310, null}
!3312 = metadata !{i32 192, i32 0, metadata !1068, null}
!3313 = metadata !{i32 34, i32 0, metadata !3168, metadata !3312}
!3314 = metadata !{i32 36, i32 0, metadata !1094, metadata !3312}
!3315 = metadata !{i32 39, i32 0, metadata !3171, metadata !3312}
!3316 = metadata !{i32 37, i32 0, metadata !3172, metadata !3312}
!3317 = metadata !{i32 40, i32 0, metadata !3176, metadata !3312}
!3318 = metadata !{i32 42, i32 0, metadata !3178, metadata !3312}
!3319 = metadata !{i32 193, i32 0, metadata !1068, null}
!3320 = metadata !{i32 77, i32 0, metadata !3181, metadata !3321}
!3321 = metadata !{i32 196, i32 0, metadata !3322, null}
!3322 = metadata !{i32 786443, metadata !1019, metadata !1069, i32 194, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3323 = metadata !{i32 78, i32 0, metadata !3184, metadata !3321}
!3324 = metadata !{i32 80, i32 0, metadata !3186, metadata !3321}
!3325 = metadata !{i32 81, i32 0, metadata !3186, metadata !3321}
!3326 = metadata !{i32 200, i32 0, metadata !1021, null}
!3327 = metadata !{i32 201, i32 0, metadata !1021, null}
!3328 = metadata !{i32 202, i32 0, metadata !1021, null}
!3329 = metadata !{i32 203, i32 0, metadata !1021, null}
!3330 = metadata !{i32 205, i32 0, metadata !1021, null}
!3331 = metadata !{i32 206, i32 0, metadata !1021, null}
!3332 = metadata !{i32 208, i32 0, metadata !1021, null}
!3333 = metadata !{i32 210, i32 0, metadata !1021, null}
!3334 = metadata !{i32 24, i32 0, metadata !1102, null}
!3335 = metadata !{i32 65, i32 0, metadata !1073, null}
!3336 = metadata !{i32 66, i32 0, metadata !1073, null}
!3337 = metadata !{i32 67, i32 0, metadata !1073, null}
!3338 = metadata !{i32 69, i32 0, metadata !3339, null}
!3339 = metadata !{i32 786443, metadata !1019, metadata !1073, i32 69, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/POSIX//home/user/klee/runtime/POSIX/klee_init_env.c]
!3340 = metadata !{i32 70, i32 0, metadata !3339, null}
!3341 = metadata !{i32 50, i32 0, metadata !1081, metadata !3340}
!3342 = metadata !{i32 72, i32 0, metadata !1073, null}
!3343 = metadata !{i32 73, i32 0, metadata !1073, null}
!3344 = metadata !{i32 48, i32 0, metadata !1126, null}
!3345 = metadata !{i32 51, i32 0, metadata !1125, null}
!3346 = metadata !{i32 52, i32 0, metadata !1125, null}
!3347 = metadata !{i32 53, i32 0, metadata !1125, null}
!3348 = metadata !{i32 54, i32 0, metadata !1125, null}
!3349 = metadata !{i32 56, i32 0, metadata !1116, null}
!3350 = metadata !{i32 62, i32 0, metadata !1146, null}
!3351 = metadata !{i32 65, i32 0, metadata !1145, null}
!3352 = metadata !{i32 66, i32 0, metadata !1145, null}
!3353 = metadata !{i32 67, i32 0, metadata !1145, null}
!3354 = metadata !{i32 68, i32 0, metadata !1145, null}
!3355 = metadata !{i32 70, i32 0, metadata !1138, null}
!3356 = metadata !{i32 74, i32 0, metadata !1147, null}
!3357 = metadata !{i32 78, i32 0, metadata !1156, null}
!3358 = metadata !{i32 82, i32 0, metadata !1185, null}
!3359 = metadata !{i32 86, i32 0, metadata !1191, null}
!3360 = metadata !{i32 90, i32 0, metadata !1196, null}
!3361 = metadata !{i32 94, i32 0, metadata !1200, null}
!3362 = metadata !{i32 98, i32 0, metadata !1207, null}
!3363 = metadata !{i32 102, i32 0, metadata !1213, null}
!3364 = metadata !{i32 107, i32 0, metadata !1219, null}
!3365 = metadata !{i32 111, i32 0, metadata !1246, null}
!3366 = metadata !{i32 12, i32 0, metadata !1265, null}
!3367 = metadata !{i32 16, i32 0, metadata !1272, null}
!3368 = metadata !{i32 21, i32 0, metadata !1278, null}
!3369 = metadata !{i32 34, i32 0, metadata !1304, null}
!3370 = metadata !{i32 35, i32 0, metadata !1304, null}
!3371 = metadata !{i32 50, i32 0, metadata !1304, null}
!3372 = metadata !{i32 53, i32 0, metadata !1310, null}
!3373 = metadata !{i32 55, i32 0, metadata !3374, null}
!3374 = metadata !{i32 786443, metadata !1285, metadata !1310, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!3375 = metadata !{i32 56, i32 0, metadata !3374, null}
!3376 = metadata !{i32 66, i32 0, metadata !3374, null}
!3377 = metadata !{i32 67, i32 0, metadata !3374, null}
!3378 = metadata !{i32 69, i32 0, metadata !3374, null}
!3379 = metadata !{i32 70, i32 0, metadata !3374, null}
!3380 = metadata !{i32 72, i32 0, metadata !3374, null}
!3381 = metadata !{i32 73, i32 0, metadata !3374, null}
!3382 = metadata !{i32 79, i32 0, metadata !1310, null}
!3383 = metadata !{i32 17, i32 0, metadata !1324, null}
!3384 = metadata !{i32 22, i32 0, metadata !1330, null}
!3385 = metadata !{i32 27, i32 0, metadata !1335, null}
!3386 = metadata !{i32 69, i32 0, metadata !3387, null}
!3387 = metadata !{i32 786443, metadata !1314, metadata !1340, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3388 = metadata !{i32 71, i32 0, metadata !3389, null}
!3389 = metadata !{i32 786443, metadata !1314, metadata !3387, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3390 = metadata !{i32 73, i32 0, metadata !3391, null}
!3391 = metadata !{i32 786443, metadata !1314, metadata !3389, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3392 = metadata !{i32 75, i32 0, metadata !3393, null}
!3393 = metadata !{i32 786443, metadata !1314, metadata !3391, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3394 = metadata !{i32 76, i32 0, metadata !3395, null}
!3395 = metadata !{i32 786443, metadata !1314, metadata !3393, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3396 = metadata !{i32 79, i32 0, metadata !1340, null}
!3397 = metadata !{i32 84, i32 0, metadata !3398, null}
!3398 = metadata !{i32 786443, metadata !1314, metadata !1343, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3399 = metadata !{i32 86, i32 0, metadata !3400, null}
!3400 = metadata !{i32 786443, metadata !1314, metadata !3398, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3401 = metadata !{i32 88, i32 0, metadata !3402, null}
!3402 = metadata !{i32 786443, metadata !1314, metadata !3400, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3403 = metadata !{i32 90, i32 0, metadata !3404, null}
!3404 = metadata !{i32 786443, metadata !1314, metadata !3402, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3405 = metadata !{i32 91, i32 0, metadata !3406, null}
!3406 = metadata !{i32 786443, metadata !1314, metadata !3404, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3407 = metadata !{i32 94, i32 0, metadata !1343, null}
!3408 = metadata !{i32 100, i32 0, metadata !3409, null}
!3409 = metadata !{i32 786443, metadata !1314, metadata !1346, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3410 = metadata !{i32 102, i32 0, metadata !3411, null}
!3411 = metadata !{i32 786443, metadata !1314, metadata !3409, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3412 = metadata !{i32 104, i32 0, metadata !3413, null}
!3413 = metadata !{i32 786443, metadata !1314, metadata !3411, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3414 = metadata !{i32 106, i32 0, metadata !3415, null}
!3415 = metadata !{i32 786443, metadata !1314, metadata !3413, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3416 = metadata !{i32 107, i32 0, metadata !3417, null}
!3417 = metadata !{i32 786443, metadata !1314, metadata !3415, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3418 = metadata !{i32 110, i32 0, metadata !1346, null}
!3419 = metadata !{i32 115, i32 0, metadata !1349, null}
!3420 = metadata !{i32 120, i32 0, metadata !1352, null}
!3421 = metadata !{i32 125, i32 0, metadata !1355, null}
!3422 = metadata !{i32 13, i32 0, metadata !3423, null}
!3423 = metadata !{i32 786443, metadata !1359, metadata !1361, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!3424 = metadata !{i32 14, i32 0, metadata !3423, null}
!3425 = metadata !{i32 15, i32 0, metadata !1361, null}
!3426 = metadata !{i32 15, i32 0, metadata !1371, null}
!3427 = metadata !{i32 16, i32 0, metadata !1371, null}
!3428 = metadata !{i32 21, i32 0, metadata !3429, null}
!3429 = metadata !{i32 786443, metadata !1377, metadata !1379, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3430 = metadata !{i32 27, i32 0, metadata !3431, null}
!3431 = metadata !{i32 786443, metadata !1377, metadata !3429, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3432 = metadata !{i32 29, i32 0, metadata !1379, null}
!3433 = metadata !{i32 16, i32 0, metadata !3434, null}
!3434 = metadata !{i32 786443, metadata !1388, metadata !1390, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3435 = metadata !{i32 17, i32 0, metadata !3434, null}
!3436 = metadata !{i32 19, i32 0, metadata !3437, null}
!3437 = metadata !{i32 786443, metadata !1388, metadata !1390, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3438 = metadata !{i32 22, i32 0, metadata !3439, null}
!3439 = metadata !{i32 786443, metadata !1388, metadata !3437, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3440 = metadata !{i32 25, i32 0, metadata !3441, null}
!3441 = metadata !{i32 786443, metadata !1388, metadata !3439, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3442 = metadata !{i32 26, i32 0, metadata !3443, null}
!3443 = metadata !{i32 786443, metadata !1388, metadata !3441, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3444 = metadata !{i32 27, i32 0, metadata !3443, null}
!3445 = metadata !{i32 28, i32 0, metadata !3446, null}
!3446 = metadata !{i32 786443, metadata !1388, metadata !3441, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3447 = metadata !{i32 29, i32 0, metadata !3446, null}
!3448 = metadata !{i32 32, i32 0, metadata !3439, null}
!3449 = metadata !{i32 34, i32 0, metadata !1390, null}
!3450 = metadata !{i32 19, i32 0, metadata !1403, null}
!3451 = metadata !{i32 21, i32 0, metadata !3452, null}
!3452 = metadata !{i32 786443, metadata !1400, metadata !1403, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!3453 = metadata !{i32 23, i32 0, metadata !3452, null}
!3454 = metadata !{i32 25, i32 0, metadata !3452, null}
!3455 = metadata !{i32 27, i32 0, metadata !3452, null}
!3456 = metadata !{i32 29, i32 0, metadata !3452, null}
!3457 = metadata !{i32 31, i32 0, metadata !3452, null}
!3458 = metadata !{i32 33, i32 0, metadata !1403, null}
!3459 = metadata !{i32 16, i32 0, metadata !1412, null}
!3460 = metadata !{i32 17, i32 0, metadata !1412, null}
!3461 = metadata !{metadata !3461, metadata !3462, metadata !3463}
!3462 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!3463 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!3464 = metadata !{metadata !3464, metadata !3462, metadata !3463}
!3465 = metadata !{i32 18, i32 0, metadata !1412, null}
!3466 = metadata !{i32 16, i32 0, metadata !3467, null}
!3467 = metadata !{i32 786443, metadata !1424, metadata !1426, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3468 = metadata !{i32 19, i32 0, metadata !3469, null}
!3469 = metadata !{i32 786443, metadata !1424, metadata !1426, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3470 = metadata !{i32 20, i32 0, metadata !3471, null}
!3471 = metadata !{i32 786443, metadata !1424, metadata !3469, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3472 = metadata !{metadata !3472, metadata !3462, metadata !3463}
!3473 = metadata !{metadata !3473, metadata !3462, metadata !3463}
!3474 = metadata !{i32 22, i32 0, metadata !3475, null}
!3475 = metadata !{i32 786443, metadata !1424, metadata !3469, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3476 = metadata !{i32 24, i32 0, metadata !3475, null}
!3477 = metadata !{i32 23, i32 0, metadata !3475, null}
!3478 = metadata !{metadata !3478, metadata !3462, metadata !3463}
!3479 = metadata !{metadata !3479, metadata !3462, metadata !3463}
!3480 = metadata !{i32 28, i32 0, metadata !1426, null}
!3481 = metadata !{i32 15, i32 0, metadata !1440, null}
!3482 = metadata !{i32 16, i32 0, metadata !1440, null}
!3483 = metadata !{metadata !3483, metadata !3462, metadata !3463}
!3484 = metadata !{metadata !3484, metadata !3462, metadata !3463}
!3485 = metadata !{i32 17, i32 0, metadata !1440, null}
!3486 = metadata !{i32 13, i32 0, metadata !1454, null}
!3487 = metadata !{i32 14, i32 0, metadata !1454, null}
!3488 = metadata !{i32 15, i32 0, metadata !1454, null}
!3489 = metadata !{i32 12, i32 0, metadata !1469, null}
!3490 = metadata !{i32 16, i32 0, metadata !1473, null}
!3491 = metadata !{i32 21, i32 0, metadata !1476, null}
