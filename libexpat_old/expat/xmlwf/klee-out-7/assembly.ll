; ModuleID = 'xmlwf_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__STDIO_FILE_STRUCT.274 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.274*, [2 x i32], %struct.__mbstate_t.273 }
%struct.__mbstate_t.273 = type { i32, i32 }
%struct.__STDIO_FILE_STRUCT.231 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.231*, [2 x i32], %struct.__mbstate_t.230 }
%struct.__mbstate_t.230 = type { i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.XML_ParserStruct = type opaque
%struct.PROCESS_ARGS = type { %struct.XML_ParserStruct*, i32* }
%struct.__STDIO_FILE_STRUCT.212 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.212*, [2 x i32], %struct.__mbstate_t.211 }
%struct.__mbstate_t.211 = type { i32, i32 }
%struct.__va_list_tag.232 = type { i32, i32, i8*, i8* }
%struct.ppfs_t = type { i8*, %struct.printf_info.314, i32, i32, i32, [4 x i8], [9 x i32], [1 x %struct.__va_list_tag.232], [9 x %union.argvalue_t] }
%struct.printf_info.314 = type { i32, i32, i32, i32, i32 }
%union.argvalue_t = type { x86_fp80 }
%struct.termios.442 = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__kernel_termios.447 = type { i32, i32, i32, i32, i8, [19 x i8] }
%struct.Elf64_auxv_t = type { i64, %union.anon.647 }
%union.anon.647 = type { i64 }
%struct.stat.646 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.__STDIO_FILE_STRUCT.284 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.284*, [2 x i32], %struct.__mbstate_t.283 }
%struct.__mbstate_t.283 = type { i32, i32 }
%struct.printf_info = type { i32, i32, i32, [4 x i8], i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: not a regular file\0A\00", align 1
@filemap.c = internal constant i8 0, align 1
@g_read_size_bytes = global i32 8192, align 4
@.str1 = private unnamed_addr constant [18 x i8] c"%s: out of memory\00", align 1
@.str12 = private unnamed_addr constant [63 x i8] c"%s: file too large for memory-mapping, switching to streaming\0A\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"xmlwf\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"%s:%lu:%lu: %s\0A\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"%s: (unknown message %u)\0A\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str310 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str112 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@_stdio_streams = internal global [3 x %struct.__STDIO_FILE_STRUCT.274] [%struct.__STDIO_FILE_STRUCT.274 { i16 544, [2 x i8] zeroinitializer, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.274* bitcast (i8*
@stdin = global %struct.__STDIO_FILE_STRUCT.274* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i32 0), align 8
@stdout = global %struct.__STDIO_FILE_STRUCT.274* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.274*), align 8
@stderr = global %struct.__STDIO_FILE_STRUCT.274* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams to i8*), i64 160) to %struct.__STDIO_FILE_STRUCT.274*), align 8
@__stdin = global %struct.__STDIO_FILE_STRUCT.274* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i32 0), align 8
@__stdout = global %struct.__STDIO_FILE_STRUCT.274* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.274*), align 8
@_stdio_openlist = global %struct.__STDIO_FILE_STRUCT.274* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i32 0), align 8
@_do_one_spec.spec_base = internal constant [7 x i8] c"\10\10\10\08\0A\0A\0A", align 1
@_do_one_spec.prefix = internal constant [12 x i8] c"+\00-\00 \000x\000X\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str121 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@_ppfs_parsespec.spec_flags = internal constant [8 x i8] c" +0-#'I\00", align 1
@_ppfs_parsespec.spec_chars = internal constant [21 x i8] c"npxXoudifFeEgGaACScs\00", align 16
@_ppfs_parsespec.spec_ranges = internal constant [9 x i8] c"\00\01\07\0F\10\11\12\13\14", align 1
@_ppfs_parsespec.spec_or_mask = internal constant [8 x i16] [i16 4096, i16 5, i16 0, i16 7, i16 2, i16 4, i16 1, i16 3], align 16
@_ppfs_parsespec.spec_and_mask = internal constant [8 x i16] [i16 7936, i16 5, i16 3840, i16 2055, i16 2, i16 4, i16 1, i16 3], align 16
@_ppfs_parsespec.qual_chars = internal constant [20 x i8] c"hlLjztqZ\00\02\04\08\04\04\04\08\04\00\01\08", align 16
@type_codes = internal constant [12 x i16] [i16 8, i16 5, i16 3, i16 4, i16 1, i16 512, i16 0, i16 1024, i16 2048, i16 2, i16 7, i16 2055], align 16
@type_sizes = internal constant [12 x i8] c"\00\01\01\01\04\02\01\01\01\01\01\01", align 1
@__xpg_strerror_r.unknown = internal constant [14 x i8] c"Unknown error ", align 1
@_string_syserrmsgs = hidden constant [2906 x i8] c"Success\00Operation not permitted\00No such file or directory\00No such process\00Interrupted system call\00Input/output error\00No such device or address\00Argument list too long\00Exec format error\00
@__libc_stack_end = global i8* null, align 8
@.str58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__uclibc_progname = hidden global i8* getelementptr inbounds ([1 x i8]* @.str58, i32 0, i32 0), align 8
@program_invocation_short_name = global i8* getelementptr inbounds ([1 x i8]* @.str58, i32 0, i32 0), align 8
@program_invocation_name = global i8* getelementptr inbounds ([1 x i8]* @.str58, i32 0, i32 0), align 8
@__environ = global i8** null, align 8
@__pagesize = global i64 0, align 8
@__uClibc_init.been_there_done_that = internal global i32 0, align 4
@__app_fini = hidden global void ()* null, align 8
@__rtld_fini = hidden global void ()* null, align 8
@.str159 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@__C_ctype_b_data = constant [384 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i1
@__C_ctype_b = global i16* bitcast (i8* getelementptr (i8* bitcast ([384 x i16]* @__C_ctype_b_data to i8*), i64 256) to i16*), align 8
@__ctype_b = global i16* bitcast (i8* getelementptr (i8* bitcast ([384 x i16]* @__C_ctype_b_data to i8*), i64 256) to i16*), align 8
@errno = global i32 0, align 4
@h_errno = global i32 0, align 4
@fmt = internal constant [20 x i8] c"inf\00INF\00nan\00NAN\00.\00,\00", align 16
@exp10_table = internal constant [13 x x86_fp80] [x86_fp80 0xK4002A000000000000000, x86_fp80 0xK4005C800000000000000, x86_fp80 0xK400C9C40000000000000, x86_fp80 0xK4019BEBC200000000000, x86_fp80 0xK40348E1BC9BF04000000, x86_fp80 0xK40699DC5ADA82B70B59E, 
@switch.table = private unnamed_addr constant [5 x i32] [i32 0, i32 3073, i32 2048, i32 1024, i32 3072]
@.str104 = private unnamed_addr constant [56 x i8] c"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str1105 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str2106 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str3107 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6108 = private unnamed_addr constant [47 x i8] c"/home/user/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c\00", align 1
@.str110 = private unnamed_addr constant [22 x i8] c"Invalid rounding mode\00", align 1
@.str211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

@fputs = alias i32 (i8*, %struct.__STDIO_FILE_STRUCT.231*)* @fputs_unlocked
@fwrite = alias i64 (i8*, i64, i64, %struct.__STDIO_FILE_STRUCT.231*)* @fwrite_unlocked
@strerror_r = alias weak i32 (i32, i8*, i64)* @__xpg_strerror_r
@__progname = alias weak i8** @program_invocation_short_name
@__progname_full = alias weak i8** @program_invocation_name
@environ = alias weak i8*** @__environ
@fseeko = alias i32 (%struct.__STDIO_FILE_STRUCT.231*, i64, i32)* @fseek

; Function Attrs: nounwind uwtable
define i32 @codepageMap(i32 %cp, i32* %map) #0 {
entry:
  %cp.addr = alloca i32, align 4
  %map.addr = alloca i32*, align 8
  store i32 %cp, i32* %cp.addr, align 4
  store i32* %map, i32** %map.addr, align 8
  ret i32 0, !dbg !1520
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @codepageConvert(i32 %cp, i8* %p) #0 {
entry:
  %cp.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  store i32 %cp, i32* %cp.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  ret i32 -1, !dbg !1521
}

; Function Attrs: nounwind uwtable
define i32 @filemap(i8* %name, void (i8*, i64, i8*, i8*)* %processor, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %processor.addr = alloca void (i8*, i64, i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %sb = alloca %struct.stat, align 8
  %p = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store void (i8*, i64, i8*, i8*)* %processor, void (i8*, i64, i8*, i8*)** %processor.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8** %name.addr, align 8, !dbg !1522
  %call = call i32 (i8*, i32, ...)* @open(i8* %0, i32 0), !dbg !1522
  store i32 %call, i32* %fd, align 4, !dbg !1522
  %1 = load i32* %fd, align 4, !dbg !1523
  %cmp = icmp slt i32 %1, 0, !dbg !1523
  br i1 %cmp, label %if.then, label %if.end, !dbg !1523

if.then:                                          ; preds = %entry
  %2 = load i8** %name.addr, align 8, !dbg !1525
  call void @perror(i8* %2), !dbg !1525
  store i32 0, i32* %retval, !dbg !1527
  br label %return, !dbg !1527

if.end:                                           ; preds = %entry
  %3 = load i32* %fd, align 4, !dbg !1528
  %call1 = call i32 @fstat(i32 %3, %struct.stat* %sb) #5, !dbg !1528
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1528
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1528

if.then3:                                         ; preds = %if.end
  %4 = load i8** %name.addr, align 8, !dbg !1530
  call void @perror(i8* %4), !dbg !1530
  %5 = load i32* %fd, align 4, !dbg !1532
  %call4 = call i32 @close(i32 %5), !dbg !1532
  store i32 0, i32* %retval, !dbg !1533
  br label %return, !dbg !1533

if.end5:                                          ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat* %sb, i32 0, i32 3, !dbg !1534
  %6 = load i32* %st_mode, align 4, !dbg !1534
  %and = and i32 %6, 61440, !dbg !1534
  %cmp6 = icmp eq i32 %and, 32768, !dbg !1534
  br i1 %cmp6, label %if.end10, label %if.then7, !dbg !1534

if.then7:                                         ; preds = %if.end5
  %7 = load i32* %fd, align 4, !dbg !1536
  %call8 = call i32 @close(i32 %7), !dbg !1536
  %8 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct._IO_FILE**), align 8, !dbg !1538
  %9 = load i8** %name.addr, align 8, !dbg !1538
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* %9), !dbg
  store i32 0, i32* %retval, !dbg !1539
  br label %return, !dbg !1539

if.end10:                                         ; preds = %if.end5
  %st_size = getelementptr inbounds %struct.stat* %sb, i32 0, i32 8, !dbg !1540
  %10 = load i64* %st_size, align 8, !dbg !1540
  %cmp11 = icmp sgt i64 %10, 1073741824, !dbg !1540
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !1540

if.then12:                                        ; preds = %if.end10
  %11 = load i32* %fd, align 4, !dbg !1542
  %call13 = call i32 @close(i32 %11), !dbg !1542
  store i32 2, i32* %retval, !dbg !1544
  br label %return, !dbg !1544

if.end14:                                         ; preds = %if.end10
  %st_size15 = getelementptr inbounds %struct.stat* %sb, i32 0, i32 8, !dbg !1545
  %12 = load i64* %st_size15, align 8, !dbg !1545
  store i64 %12, i64* %nbytes, align 8, !dbg !1545
  %13 = load i64* %nbytes, align 8, !dbg !1546
  %cmp16 = icmp eq i64 %13, 0, !dbg !1546
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1546

if.then17:                                        ; preds = %if.end14
  %14 = load void (i8*, i64, i8*, i8*)** %processor.addr, align 8, !dbg !1548
  %15 = load i8** %name.addr, align 8, !dbg !1548
  %16 = load i8** %arg.addr, align 8, !dbg !1548
  call void %14(i8* @filemap.c, i64 0, i8* %15, i8* %16), !dbg !1548
  %17 = load i32* %fd, align 4, !dbg !1550
  %call18 = call i32 @close(i32 %17), !dbg !1550
  store i32 1, i32* %retval, !dbg !1551
  br label %return, !dbg !1551

if.end19:                                         ; preds = %if.end14
  %18 = load i64* %nbytes, align 8, !dbg !1552
  %19 = load i32* %fd, align 4, !dbg !1552
  %call20 = call i8* @mmap(i8* null, i64 %18, i32 1, i32 2, i32 %19, i64 0) #5, !dbg !1552
  store i8* %call20, i8** %p, align 8, !dbg !1552
  %20 = load i8** %p, align 8, !dbg !1553
  %cmp21 = icmp eq i8* %20, inttoptr (i64 -1 to i8*), !dbg !1553
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !1553

if.then22:                                        ; preds = %if.end19
  %21 = load i8** %name.addr, align 8, !dbg !1555
  call void @perror(i8* %21), !dbg !1555
  %22 = load i32* %fd, align 4, !dbg !1557
  %call23 = call i32 @close(i32 %22), !dbg !1557
  store i32 0, i32* %retval, !dbg !1558
  br label %return, !dbg !1558

if.end24:                                         ; preds = %if.end19
  %23 = load void (i8*, i64, i8*, i8*)** %processor.addr, align 8, !dbg !1559
  %24 = load i8** %p, align 8, !dbg !1559
  %25 = load i64* %nbytes, align 8, !dbg !1559
  %26 = load i8** %name.addr, align 8, !dbg !1559
  %27 = load i8** %arg.addr, align 8, !dbg !1559
  call void %23(i8* %24, i64 %25, i8* %26, i8* %27), !dbg !1559
  %28 = load i8** %p, align 8, !dbg !1560
  %29 = load i64* %nbytes, align 8, !dbg !1560
  %call25 = call i32 @munmap(i8* %28, i64 %29) #5, !dbg !1560
  %30 = load i32* %fd, align 4, !dbg !1561
  %call26 = call i32 @close(i32 %30), !dbg !1561
  store i32 1, i32* %retval, !dbg !1562
  br label %return, !dbg !1562

return:                                           ; preds = %if.end24, %if.then22, %if.then17, %if.then12, %if.then7, %if.then3, %if.then
  %31 = load i32* %retval, !dbg !1563
  ret i32 %31, !dbg !1563
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #3

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @XML_ProcessFile(%struct.XML_ParserStruct* %parser, i8* %filename, i32 %flags) #0 {
entry:
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %filename.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %filemapRes = alloca i32, align 4
  %args = alloca %struct.PROCESS_ARGS, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1564
  %1 = load i8** %filename.addr, align 8, !dbg !1564
  %call = call i32 @XML_SetBase(%struct.XML_ParserStruct* %0, i8* %1), !dbg !1564
  %tobool = icmp ne i32 %call, 0, !dbg !1564
  br i1 %tobool, label %if.end, label %if.then, !dbg !1564

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct._IO_FILE**), align 8, !dbg !1566
  %3 = load i8** %filename.addr, align 8, !dbg !1566
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i8* %3), !db
  call void @exit(i32 1) #15, !dbg !1568
  unreachable, !dbg !1568

if.end:                                           ; preds = %entry
  %4 = load i32* %flags.addr, align 4, !dbg !1569
  %and = and i32 %4, 2, !dbg !1569
  %tobool2 = icmp ne i32 %and, 0, !dbg !1569
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !1569

if.then3:                                         ; preds = %if.end
  %5 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1571
  %6 = load i32* %flags.addr, align 4, !dbg !1571
  %and4 = and i32 %6, 1, !dbg !1571
  %tobool5 = icmp ne i32 %and4, 0, !dbg !1571
  %cond = select i1 %tobool5, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)* @externalEntityRefFilemap, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)* @externalEntityRefStream, !dbg !1571
  call void @XML_SetExternalEntityRefHandler(%struct.XML_ParserStruct* %5, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)* %cond), !dbg !1571
  br label %if.end6, !dbg !1571

if.end6:                                          ; preds = %if.then3, %if.end
  %7 = load i32* %flags.addr, align 4, !dbg !1572
  %and7 = and i32 %7, 1, !dbg !1572
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1572
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !1572

if.then9:                                         ; preds = %if.end6
  %retPtr = getelementptr inbounds %struct.PROCESS_ARGS* %args, i32 0, i32 1, !dbg !1574
  store i32* %result, i32** %retPtr, align 8, !dbg !1574
  %8 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1576
  %parser10 = getelementptr inbounds %struct.PROCESS_ARGS* %args, i32 0, i32 0, !dbg !1576
  store %struct.XML_ParserStruct* %8, %struct.XML_ParserStruct** %parser10, align 8, !dbg !1576
  %9 = load i8** %filename.addr, align 8, !dbg !1577
  %10 = bitcast %struct.PROCESS_ARGS* %args to i8*, !dbg !1577
  %call11 = call i32 @filemap(i8* %9, void (i8*, i64, i8*, i8*)* @processFile, i8* %10), !dbg !1577
  store i32 %call11, i32* %filemapRes, align 4, !dbg !1577
  %11 = load i32* %filemapRes, align 4, !dbg !1578
  switch i32 %11, label %if.end16 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb12
  ], !dbg !1578

sw.bb:                                            ; preds = %if.then9
  store i32 0, i32* %result, align 4, !dbg !1579
  br label %if.end16, !dbg !1581

sw.bb12:                                          ; preds = %if.then9
  %12 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct._IO_FILE**), align 8, !dbg !1582
  %13 = load i8** %filename.addr, align 8, !dbg !1582
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %12, i8* getelementptr inbounds ([63 x i8]* @.str12, i32 0, i32 0), i8* %13),
  %14 = load i8** %filename.addr, align 8, !dbg !1583
  %15 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1583
  %call14 = call i32 @processStream(i8* %14, %struct.XML_ParserStruct* %15), !dbg !1583
  store i32 %call14, i32* %result, align 4, !dbg !1583
  br label %if.end16, !dbg !1584

if.else:                                          ; preds = %if.end6
  %16 = load i8** %filename.addr, align 8, !dbg !1585
  %17 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1585
  %call15 = call i32 @processStream(i8* %16, %struct.XML_ParserStruct* %17), !dbg !1585
  store i32 %call15, i32* %result, align 4, !dbg !1585
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %sw.bb, %sw.bb12, %if.else
  %18 = load i32* %result, align 4, !dbg !1586
  ret i32 %18, !dbg !1586
}

declare i32 @XML_SetBase(%struct.XML_ParserStruct*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @XML_SetExternalEntityRefHandler(%struct.XML_ParserStruct*, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)*) #2

declare i8* @XML_GetBuffer(%struct.XML_ParserStruct*, i32) #2

declare i64 @read(i32, i8*, i64) #2

declare i32 @XML_ParseBuffer(%struct.XML_ParserStruct*, i32, i32) #2

declare i32 @XML_GetErrorCode(%struct.XML_ParserStruct*) #2

declare i8* @XML_ErrorString(i32) #2

declare i64 @XML_GetCurrentLineNumber(%struct.XML_ParserStruct*) #2

declare i64 @XML_GetCurrentColumnNumber(%struct.XML_ParserStruct*) #2

declare i32 @XML_Parse(%struct.XML_ParserStruct*, i8*, i32, i32) #2

declare %struct.XML_ParserStruct* @XML_ExternalEntityParserCreate(%struct.XML_ParserStruct*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @XML_ParserFree(%struct.XML_ParserStruct*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @externalEntityRefFilemap(%struct.XML_ParserStruct* %parser, i8* %context, i8* %base, i8* %systemId, i8* %publicId) #0 {
entry:
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %context.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %s = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %entParser = alloca %struct.XML_ParserStruct*, align 8
  %filemapRes = alloca i32, align 4
  %args = alloca %struct.PROCESS_ARGS, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  %0 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1587
  %1 = load i8** %context.addr, align 8, !dbg !1587
  %call = call %struct.XML_ParserStruct* @XML_ExternalEntityParserCreate(%struct.XML_ParserStruct* %0, i8* %1, i8* null), !dbg !1587
  store %struct.XML_ParserStruct* %call, %struct.XML_ParserStruct** %entParser, align 8, !dbg !1587
  %retPtr = getelementptr inbounds %struct.PROCESS_ARGS* %args, i32 0, i32 1, !dbg !1588
  store i32* %result, i32** %retPtr, align 8, !dbg !1588
  %2 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1589
  %parser1 = getelementptr inbounds %struct.PROCESS_ARGS* %args, i32 0, i32 0, !dbg !1589
  store %struct.XML_ParserStruct* %2, %struct.XML_ParserStruct** %parser1, align 8, !dbg !1589
  %3 = load i8** %base.addr, align 8, !dbg !1590
  %4 = load i8** %systemId.addr, align 8, !dbg !1590
  %call2 = call i8* @resolveSystemId(i8* %3, i8* %4, i8** %s), !dbg !1590
  store i8* %call2, i8** %filename, align 8, !dbg !1590
  %5 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1591
  %6 = load i8** %filename, align 8, !dbg !1591
  %call3 = call i32 @XML_SetBase(%struct.XML_ParserStruct* %5, i8* %6), !dbg !1591
  %7 = load i8** %filename, align 8, !dbg !1592
  %8 = bitcast %struct.PROCESS_ARGS* %args to i8*, !dbg !1592
  %call4 = call i32 @filemap(i8* %7, void (i8*, i64, i8*, i8*)* @processFile, i8* %8), !dbg !1592
  store i32 %call4, i32* %filemapRes, align 4, !dbg !1592
  %9 = load i32* %filemapRes, align 4, !dbg !1593
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ], !dbg !1593

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %result, align 4, !dbg !1594
  br label %sw.epilog, !dbg !1596

sw.bb5:                                           ; preds = %entry
  %10 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct._IO_FILE**), align 8, !dbg !1597
  %11 = load i8** %filename, align 8, !dbg !1597
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %10, i8* getelementptr inbounds ([63 x i8]* @.str12, i32 0, i32 0), i8* %11), 
  %12 = load i8** %filename, align 8, !dbg !1598
  %13 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1598
  %call7 = call i32 @processStream(i8* %12, %struct.XML_ParserStruct* %13), !dbg !1598
  store i32 %call7, i32* %result, align 4, !dbg !1598
  br label %sw.epilog, !dbg !1599

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry
  %14 = load i8** %s, align 8, !dbg !1600
  call void @free(i8* %14) #5, !dbg !1600
  %15 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1601
  call void @XML_ParserFree(%struct.XML_ParserStruct* %15), !dbg !1601
  %16 = load i32* %result, align 4, !dbg !1602
  ret i32 %16, !dbg !1602
}

; Function Attrs: nounwind uwtable
define internal i32 @externalEntityRefStream(%struct.XML_ParserStruct* %parser, i8* %context, i8* %base, i8* %systemId, i8* %publicId) #0 {
entry:
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %context.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %ret = alloca i32, align 4
  %entParser = alloca %struct.XML_ParserStruct*, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  %0 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1603
  %1 = load i8** %context.addr, align 8, !dbg !1603
  %call = call %struct.XML_ParserStruct* @XML_ExternalEntityParserCreate(%struct.XML_ParserStruct* %0, i8* %1, i8* null), !dbg !1603
  store %struct.XML_ParserStruct* %call, %struct.XML_ParserStruct** %entParser, align 8, !dbg !1603
  %2 = load i8** %base.addr, align 8, !dbg !1604
  %3 = load i8** %systemId.addr, align 8, !dbg !1604
  %call1 = call i8* @resolveSystemId(i8* %2, i8* %3, i8** %s), !dbg !1604
  store i8* %call1, i8** %filename, align 8, !dbg !1604
  %4 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1605
  %5 = load i8** %filename, align 8, !dbg !1605
  %call2 = call i32 @XML_SetBase(%struct.XML_ParserStruct* %4, i8* %5), !dbg !1605
  %6 = load i8** %filename, align 8, !dbg !1606
  %7 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1606
  %call3 = call i32 @processStream(i8* %6, %struct.XML_ParserStruct* %7), !dbg !1606
  store i32 %call3, i32* %ret, align 4, !dbg !1606
  %8 = load i8** %s, align 8, !dbg !1607
  call void @free(i8* %8) #5, !dbg !1607
  %9 = load %struct.XML_ParserStruct** %entParser, align 8, !dbg !1608
  call void @XML_ParserFree(%struct.XML_ParserStruct* %9), !dbg !1608
  %10 = load i32* %ret, align 4, !dbg !1609
  ret i32 %10, !dbg !1609
}

; Function Attrs: nounwind uwtable
define internal void @processFile(i8* %data, i64 %size, i8* %filename, i8* %args) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %filename.addr = alloca i8*, align 8
  %args.addr = alloca i8*, align 8
  %parser = alloca %struct.XML_ParserStruct*, align 8
  %retPtr = alloca i32*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %args, i8** %args.addr, align 8
  %0 = load i8** %args.addr, align 8, !dbg !1610
  %1 = bitcast i8* %0 to %struct.PROCESS_ARGS*, !dbg !1610
  %parser1 = getelementptr inbounds %struct.PROCESS_ARGS* %1, i32 0, i32 0, !dbg !1610
  %2 = load %struct.XML_ParserStruct** %parser1, align 8, !dbg !1610
  store %struct.XML_ParserStruct* %2, %struct.XML_ParserStruct** %parser, align 8, !dbg !1610
  %3 = load i8** %args.addr, align 8, !dbg !1611
  %4 = bitcast i8* %3 to %struct.PROCESS_ARGS*, !dbg !1611
  %retPtr2 = getelementptr inbounds %struct.PROCESS_ARGS* %4, i32 0, i32 1, !dbg !1611
  %5 = load i32** %retPtr2, align 8, !dbg !1611
  store i32* %5, i32** %retPtr, align 8, !dbg !1611
  %6 = load %struct.XML_ParserStruct** %parser, align 8, !dbg !1612
  %7 = load i8** %data.addr, align 8, !dbg !1612
  %8 = load i64* %size.addr, align 8, !dbg !1612
  %conv = trunc i64 %8 to i32, !dbg !1612
  %call = call i32 @XML_Parse(%struct.XML_ParserStruct* %6, i8* %7, i32 %conv, i32 1), !dbg !1612
  %cmp = icmp eq i32 %call, 0, !dbg !1612
  br i1 %cmp, label %if.then, label %if.else, !dbg !1612

if.then:                                          ; preds = %entry
  %9 = load %struct.XML_ParserStruct** %parser, align 8, !dbg !1614
  %10 = load i8** %filename.addr, align 8, !dbg !1614
  call void @reportError(%struct.XML_ParserStruct* %9, i8* %10), !dbg !1614
  %11 = load i32** %retPtr, align 8, !dbg !1616
  store i32 0, i32* %11, align 4, !dbg !1616
  br label %if.end, !dbg !1617

if.else:                                          ; preds = %entry
  %12 = load i32** %retPtr, align 8, !dbg !1618
  store i32 1, i32* %12, align 4, !dbg !1618
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1619
}

; Function Attrs: nounwind uwtable
define internal i32 @processStream(i8* %filename, %struct.XML_ParserStruct* %parser) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %fd = alloca i32, align 4
  %nread = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i32 0, i32* %fd, align 4, !dbg !1620
  %0 = load i8** %filename.addr, align 8, !dbg !1621
  %cmp = icmp ne i8* %0, null, !dbg !1621
  br i1 %cmp, label %if.then, label %for.cond, !dbg !1621

if.then:                                          ; preds = %entry
  %1 = load i8** %filename.addr, align 8, !dbg !1623
  %call = call i32 (i8*, i32, ...)* @open(i8* %1, i32 0), !dbg !1623
  store i32 %call, i32* %fd, align 4, !dbg !1623
  %2 = load i32* %fd, align 4, !dbg !1625
  %cmp1 = icmp slt i32 %2, 0, !dbg !1625
  br i1 %cmp1, label %if.then2, label %for.cond, !dbg !1625

if.then2:                                         ; preds = %if.then
  %3 = load i8** %filename.addr, align 8, !dbg !1627
  call void @perror(i8* %3), !dbg !1627
  store i32 0, i32* %retval, !dbg !1629
  br label %return, !dbg !1629

for.cond:                                         ; preds = %if.end47, %entry, %if.then
  %4 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1630
  %5 = load i32* @g_read_size_bytes, align 4, !dbg !1630
  %call4 = call i8* @XML_GetBuffer(%struct.XML_ParserStruct* %4, i32 %5), !dbg !1630
  store i8* %call4, i8** %buf, align 8, !dbg !1630
  %6 = load i8** %buf, align 8, !dbg !1633
  %tobool = icmp ne i8* %6, null, !dbg !1633
  br i1 %tobool, label %if.end12, label %if.then5, !dbg !1633

if.then5:                                         ; preds = %for.cond
  %7 = load i8** %filename.addr, align 8, !dbg !1635
  %cmp6 = icmp ne i8* %7, null, !dbg !1635
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1635

if.then7:                                         ; preds = %if.then5
  %8 = load i32* %fd, align 4, !dbg !1638
  %call8 = call i32 @close(i32 %8), !dbg !1638
  br label %if.end9, !dbg !1638

if.end9:                                          ; preds = %if.then7, %if.then5
  %9 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct._IO_FILE**), align 8, !dbg !1639
  %10 = load i8** %filename.addr, align 8, !dbg !1639
  %cmp10 = icmp ne i8* %10, null, !dbg !1639
  %11 = load i8** %filename.addr, align 8, !dbg !1639
  %cond = select i1 %cmp10, i8* %11, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), !dbg !1639
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %9, i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i8* %cond),
  store i32 0, i32* %retval, !dbg !1640
  br label %return, !dbg !1640

if.end12:                                         ; preds = %for.cond
  %12 = load i32* %fd, align 4, !dbg !1641
  %13 = load i8** %buf, align 8, !dbg !1641
  %14 = load i32* @g_read_size_bytes, align 4, !dbg !1641
  %conv = sext i32 %14 to i64, !dbg !1641
  %call13 = call i64 @read(i32 %12, i8* %13, i64 %conv), !dbg !1641
  store i64 %call13, i64* %nread, align 8, !dbg !1641
  %15 = load i64* %nread, align 8, !dbg !1642
  %cmp14 = icmp slt i64 %15, 0, !dbg !1642
  br i1 %cmp14, label %if.then16, label %if.end28, !dbg !1642

if.then16:                                        ; preds = %if.end12
  %16 = load i8** %filename.addr, align 8, !dbg !1644
  %cmp17 = icmp ne i8* %16, null, !dbg !1644
  %17 = load i8** %filename.addr, align 8, !dbg !1644
  %cond22 = select i1 %cmp17, i8* %17, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), !dbg !1644
  call void @perror(i8* %cond22), !dbg !1644
  %18 = load i8** %filename.addr, align 8, !dbg !1646
  %cmp23 = icmp ne i8* %18, null, !dbg !1646
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !1646

if.then25:                                        ; preds = %if.then16
  %19 = load i32* %fd, align 4, !dbg !1648
  %call26 = call i32 @close(i32 %19), !dbg !1648
  br label %if.end27, !dbg !1648

if.end27:                                         ; preds = %if.then25, %if.then16
  store i32 0, i32* %retval, !dbg !1649
  br label %return, !dbg !1649

if.end28:                                         ; preds = %if.end12
  %20 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1650
  %21 = load i64* %nread, align 8, !dbg !1650
  %conv29 = trunc i64 %21 to i32, !dbg !1650
  %22 = load i64* %nread, align 8, !dbg !1650
  %cmp30 = icmp eq i64 %22, 0, !dbg !1650
  %conv31 = zext i1 %cmp30 to i32, !dbg !1650
  %call32 = call i32 @XML_ParseBuffer(%struct.XML_ParserStruct* %20, i32 %conv29, i32 %conv31), !dbg !1650
  %cmp33 = icmp eq i32 %call32, 0, !dbg !1650
  br i1 %cmp33, label %if.then35, label %if.end47, !dbg !1650

if.then35:                                        ; preds = %if.end28
  %23 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1652
  %24 = load i8** %filename.addr, align 8, !dbg !1652
  %cmp36 = icmp ne i8* %24, null, !dbg !1652
  %25 = load i8** %filename.addr, align 8, !dbg !1652
  %cond41 = select i1 %cmp36, i8* %25, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), !dbg !1652
  call void @reportError(%struct.XML_ParserStruct* %23, i8* %cond41), !dbg !1652
  %26 = load i8** %filename.addr, align 8, !dbg !1654
  %cmp42 = icmp ne i8* %26, null, !dbg !1654
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1654

if.then44:                                        ; preds = %if.then35
  %27 = load i32* %fd, align 4, !dbg !1656
  %call45 = call i32 @close(i32 %27), !dbg !1656
  br label %if.end46, !dbg !1656

if.end46:                                         ; preds = %if.then44, %if.then35
  store i32 0, i32* %retval, !dbg !1657
  br label %return, !dbg !1657

if.end47:                                         ; preds = %if.end28
  %28 = load i64* %nread, align 8, !dbg !1658
  %cmp48 = icmp eq i64 %28, 0, !dbg !1658
  br i1 %cmp48, label %if.then50, label %for.cond, !dbg !1658

if.then50:                                        ; preds = %if.end47
  %29 = load i8** %filename.addr, align 8, !dbg !1660
  %cmp51 = icmp ne i8* %29, null, !dbg !1660
  br i1 %cmp51, label %if.then53, label %for.end, !dbg !1660

if.then53:                                        ; preds = %if.then50
  %30 = load i32* %fd, align 4, !dbg !1663
  %call54 = call i32 @close(i32 %30), !dbg !1663
  br label %for.end, !dbg !1663

for.end:                                          ; preds = %if.then50, %if.then53
  store i32 1, i32* %retval, !dbg !1664
  br label %return, !dbg !1664

return:                                           ; preds = %for.end, %if.end46, %if.end27, %if.end9, %if.then2
  %31 = load i32* %retval, !dbg !1665
  ret i32 %31, !dbg !1665
}

; Function Attrs: nounwind uwtable
define internal void @reportError(%struct.XML_ParserStruct* %parser, i8* %filename) #0 {
entry:
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %filename.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %message = alloca i8*, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1666
  %call = call i32 @XML_GetErrorCode(%struct.XML_ParserStruct* %0), !dbg !1666
  store i32 %call, i32* %code, align 4, !dbg !1666
  %1 = load i32* %code, align 4, !dbg !1667
  %call1 = call i8* @XML_ErrorString(i32 %1), !dbg !1667
  store i8* %call1, i8** %message, align 8, !dbg !1667
  %2 = load i8** %message, align 8, !dbg !1668
  %tobool = icmp ne i8* %2, null, !dbg !1668
  br i1 %tobool, label %if.then, label %if.else, !dbg !1668

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stdout to %struct._IO_FILE**), align 8, !dbg !1670
  %4 = load i8** %filename.addr, align 8, !dbg !1670
  %5 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1671
  %call2 = call i64 @XML_GetCurrentLineNumber(%struct.XML_ParserStruct* %5), !dbg !1671
  %6 = load %struct.XML_ParserStruct** %parser.addr, align 8, !dbg !1672
  %call3 = call i64 @XML_GetCurrentColumnNumber(%struct.XML_ParserStruct* %6), !dbg !1672
  %7 = load i8** %message, align 8, !dbg !1670
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8]* @.str5, i32 0, i32 0), i8* %4, i64 
  br label %if.end, !dbg !1670

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct._IO_FILE**), align 8, !dbg !1673
  %9 = load i8** %filename.addr, align 8, !dbg !1673
  %10 = load i32* %code, align 4, !dbg !1673
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct._IO_FILE*, i8*, ...)*)(%struct._IO_FILE* %8, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %9, i32 
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1674
}

; Function Attrs: nounwind uwtable
define internal i8* @resolveSystemId(i8* %base, i8* %systemId, i8** %toFree) #0 {
entry:
  %retval = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %toFree.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8** %toFree, i8*** %toFree.addr, align 8
  %0 = load i8*** %toFree.addr, align 8, !dbg !1675
  store i8* null, i8** %0, align 8, !dbg !1675
  %1 = load i8** %base.addr, align 8, !dbg !1676
  %tobool = icmp ne i8* %1, null, !dbg !1676
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1676

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8** %systemId.addr, align 8, !dbg !1676
  %3 = load i8* %2, align 1, !dbg !1676
  %conv = sext i8 %3 to i32, !dbg !1676
  %cmp = icmp eq i32 %conv, 47, !dbg !1676
  br i1 %cmp, label %if.then, label %if.end, !dbg !1676

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8** %systemId.addr, align 8, !dbg !1678
  store i8* %4, i8** %retval, !dbg !1678
  br label %return, !dbg !1678

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8** %base.addr, align 8, !dbg !1679
  %call = call i64 @strlen(i8* %5) #16, !dbg !1679
  %6 = load i8** %systemId.addr, align 8, !dbg !1679
  %call2 = call i64 @strlen(i8* %6) #16, !dbg !1679
  %add = add i64 %call, %call2, !dbg !1679
  %add3 = add i64 %add, 2, !dbg !1679
  %mul = mul i64 %add3, 1, !dbg !1679
  %call4 = call noalias i8* @malloc(i64 %mul) #5, !dbg !1679
  %7 = load i8*** %toFree.addr, align 8, !dbg !1679
  store i8* %call4, i8** %7, align 8, !dbg !1679
  %8 = load i8*** %toFree.addr, align 8, !dbg !1680
  %9 = load i8** %8, align 8, !dbg !1680
  %tobool5 = icmp ne i8* %9, null, !dbg !1680
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1680

if.then6:                                         ; preds = %if.end
  %10 = load i8** %systemId.addr, align 8, !dbg !1682
  store i8* %10, i8** %retval, !dbg !1682
  br label %return, !dbg !1682

if.end7:                                          ; preds = %if.end
  %11 = load i8*** %toFree.addr, align 8, !dbg !1683
  %12 = load i8** %11, align 8, !dbg !1683
  %13 = load i8** %base.addr, align 8, !dbg !1683
  %call8 = call i8* @strcpy(i8* %12, i8* %13) #5, !dbg !1683
  %14 = load i8*** %toFree.addr, align 8, !dbg !1684
  %15 = load i8** %14, align 8, !dbg !1684
  store i8* %15, i8** %s, align 8, !dbg !1684
  %16 = load i8** %s, align 8, !dbg !1685
  %call9 = call i8* @strrchr(i8* %16, i32 47) #16, !dbg !1685
  %tobool10 = icmp ne i8* %call9, null, !dbg !1685
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !1685

if.then11:                                        ; preds = %if.end7
  %17 = load i8** %s, align 8, !dbg !1687
  %call12 = call i8* @strrchr(i8* %17, i32 47) #16, !dbg !1687
  %add.ptr = getelementptr inbounds i8* %call12, i64 1, !dbg !1687
  store i8* %add.ptr, i8** %s, align 8, !dbg !1687
  br label %if.end13, !dbg !1687

if.end13:                                         ; preds = %if.then11, %if.end7
  %18 = load i8** %s, align 8, !dbg !1688
  %19 = load i8** %systemId.addr, align 8, !dbg !1688
  %call14 = call i8* @strcpy(i8* %18, i8* %19) #5, !dbg !1688
  %20 = load i8*** %toFree.addr, align 8, !dbg !1689
  %21 = load i8** %20, align 8, !dbg !1689
  store i8* %21, i8** %retval, !dbg !1689
  br label %return, !dbg !1689

return:                                           ; preds = %if.end13, %if.then6, %if.then
  %22 = load i8** %retval, !dbg !1690
  ret i8* %22, !dbg !1690
}

; Function Attrs: nounwind uwtable
define void @getXMLCharset(i8* %buf, i8* %charset) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %charset.addr = alloca i8*, align 8
  %next = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %charset, i8** %charset.addr, align 8
  %0 = load i8** %charset.addr, align 8, !dbg !1691
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !1691
  store i8 0, i8* %arrayidx, align 1, !dbg !1691
  %1 = load i8** %buf.addr, align 8, !dbg !1692
  store i8* %1, i8** %next, align 8, !dbg !1692
  %call = call i8* @getTok(i8** %next), !dbg !1693
  store i8* %call, i8** %p, align 8, !dbg !1693
  %2 = load i8** %p, align 8, !dbg !1694
  %3 = load i8** %next, align 8, !dbg !1694
  %call1 = call i32 @matchkey(i8* %2, i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0)), !dbg !1694
  %tobool = icmp ne i32 %call1, 0, !dbg !1694
  br i1 %tobool, label %if.then, label %if.else, !dbg !1694

if.then:                                          ; preds = %entry
  %4 = load i8** %charset.addr, align 8, !dbg !1696
  %call2 = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str18, i32 0, i32 0)) #5, !dbg !1696
  br label %if.end6, !dbg !1696

if.else:                                          ; preds = %entry
  %5 = load i8** %p, align 8, !dbg !1697
  %6 = load i8** %next, align 8, !dbg !1697
  %call3 = call i32 @matchkey(i8* %5, i8* %6, i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0)), !dbg !1697
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1697
  br i1 %tobool4, label %if.end6, label %while.end74, !dbg !1697

if.end6:                                          ; preds = %if.else, %if.then
  %call7 = call i8* @getTok(i8** %next), !dbg !1699
  store i8* %call7, i8** %p, align 8, !dbg !1699
  %7 = load i8** %p, align 8, !dbg !1700
  %tobool8 = icmp ne i8* %7, null, !dbg !1700
  br i1 %tobool8, label %lor.lhs.false, label %while.end74, !dbg !1700

lor.lhs.false:                                    ; preds = %if.end6
  %8 = load i8** %p, align 8, !dbg !1700
  %9 = load i8* %8, align 1, !dbg !1700
  %conv = sext i8 %9 to i32, !dbg !1700
  %cmp = icmp ne i32 %conv, 47, !dbg !1700
  br i1 %cmp, label %while.end74, label %if.end11, !dbg !1700

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call i8* @getTok(i8** %next), !dbg !1702
  store i8* %call12, i8** %p, align 8, !dbg !1702
  %call13 = call i8* @getTok(i8** %next), !dbg !1703
  store i8* %call13, i8** %p, align 8, !dbg !1703
  br label %while.cond, !dbg !1704

while.cond:                                       ; preds = %if.then18, %while.body, %if.end11
  %10 = load i8** %p, align 8, !dbg !1704
  %tobool14 = icmp ne i8* %10, null, !dbg !1704
  br i1 %tobool14, label %while.body, label %while.end74, !dbg !1704

while.body:                                       ; preds = %while.cond
  %11 = load i8** %p, align 8, !dbg !1705
  %12 = load i8* %11, align 1, !dbg !1705
  %conv15 = sext i8 %12 to i32, !dbg !1705
  %cmp16 = icmp eq i32 %conv15, 59, !dbg !1705
  %call19 = call i8* @getTok(i8** %next), !dbg !1708
  store i8* %call19, i8** %p, align 8, !dbg !1708
  br i1 %cmp16, label %if.then18, label %while.cond, !dbg !1705

if.then18:                                        ; preds = %while.body
  %13 = load i8** %p, align 8, !dbg !1710
  %14 = load i8** %next, align 8, !dbg !1710
  %call20 = call i32 @matchkey(i8* %13, i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str310, i32 0, i32 0)), !dbg !1710
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1710
  br i1 %tobool21, label %if.then22, label %while.cond, !dbg !1710

if.then22:                                        ; preds = %if.then18
  %call23 = call i8* @getTok(i8** %next), !dbg !1712
  store i8* %call23, i8** %p, align 8, !dbg !1712
  %15 = load i8** %p, align 8, !dbg !1714
  %tobool24 = icmp ne i8* %15, null, !dbg !1714
  br i1 %tobool24, label %land.lhs.true, label %while.end74, !dbg !1714

land.lhs.true:                                    ; preds = %if.then22
  %16 = load i8** %p, align 8, !dbg !1714
  %17 = load i8* %16, align 1, !dbg !1714
  %conv25 = sext i8 %17 to i32, !dbg !1714
  %cmp26 = icmp eq i32 %conv25, 61, !dbg !1714
  br i1 %cmp26, label %if.then28, label %while.end74, !dbg !1714

if.then28:                                        ; preds = %land.lhs.true
  %call29 = call i8* @getTok(i8** %next), !dbg !1716
  store i8* %call29, i8** %p, align 8, !dbg !1716
  %18 = load i8** %p, align 8, !dbg !1718
  %tobool30 = icmp ne i8* %18, null, !dbg !1718
  br i1 %tobool30, label %if.then31, label %while.end74, !dbg !1718

if.then31:                                        ; preds = %if.then28
  %19 = load i8** %charset.addr, align 8, !dbg !1720
  store i8* %19, i8** %s, align 8, !dbg !1720
  %20 = load i8** %p, align 8, !dbg !1722
  %21 = load i8* %20, align 1, !dbg !1722
  %conv32 = sext i8 %21 to i32, !dbg !1722
  %cmp33 = icmp eq i32 %conv32, 34, !dbg !1722
  br i1 %cmp33, label %while.cond36, label %if.else55, !dbg !1722

while.cond36:                                     ; preds = %if.then31, %if.end52
  %22 = load i8** %p, align 8, !dbg !1724
  %incdec.ptr = getelementptr inbounds i8* %22, i32 1, !dbg !1724
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1724
  %23 = load i8** %next, align 8, !dbg !1724
  %add.ptr = getelementptr inbounds i8* %23, i64 -1, !dbg !1724
  %cmp37 = icmp ne i8* %incdec.ptr, %add.ptr, !dbg !1724
  br i1 %cmp37, label %while.body39, label %while.end, !dbg !1724

while.body39:                                     ; preds = %while.cond36
  %24 = load i8** %p, align 8, !dbg !1726
  %25 = load i8* %24, align 1, !dbg !1726
  %conv40 = sext i8 %25 to i32, !dbg !1726
  %cmp41 = icmp eq i32 %conv40, 92, !dbg !1726
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !1726

if.then43:                                        ; preds = %while.body39
  %26 = load i8** %p, align 8, !dbg !1729
  %incdec.ptr44 = getelementptr inbounds i8* %26, i32 1, !dbg !1729
  store i8* %incdec.ptr44, i8** %p, align 8, !dbg !1729
  br label %if.end45, !dbg !1729

if.end45:                                         ; preds = %if.then43, %while.body39
  %27 = load i8** %s, align 8, !dbg !1730
  %28 = load i8** %charset.addr, align 8, !dbg !1730
  %add.ptr46 = getelementptr inbounds i8* %28, i64 41, !dbg !1730
  %add.ptr47 = getelementptr inbounds i8* %add.ptr46, i64 -1, !dbg !1730
  %cmp48 = icmp eq i8* %27, %add.ptr47, !dbg !1730
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !1730

if.then50:                                        ; preds = %if.end45
  %29 = load i8** %charset.addr, align 8, !dbg !1732
  %arrayidx51 = getelementptr inbounds i8* %29, i64 0, !dbg !1732
  store i8 0, i8* %arrayidx51, align 1, !dbg !1732
  br label %while.end, !dbg !1734

if.end52:                                         ; preds = %if.end45
  %30 = load i8** %p, align 8, !dbg !1735
  %31 = load i8* %30, align 1, !dbg !1735
  %32 = load i8** %s, align 8, !dbg !1735
  %incdec.ptr53 = getelementptr inbounds i8* %32, i32 1, !dbg !1735
  store i8* %incdec.ptr53, i8** %s, align 8, !dbg !1735
  store i8 %31, i8* %32, align 1, !dbg !1735
  br label %while.cond36, !dbg !1736

while.end:                                        ; preds = %if.then50, %while.cond36
  %33 = load i8** %s, align 8, !dbg !1737
  %incdec.ptr54 = getelementptr inbounds i8* %33, i32 1, !dbg !1737
  store i8* %incdec.ptr54, i8** %s, align 8, !dbg !1737
  store i8 0, i8* %33, align 1, !dbg !1737
  br label %while.end74, !dbg !1738

if.else55:                                        ; preds = %if.then31
  %34 = load i8** %next, align 8, !dbg !1739
  %35 = load i8** %p, align 8, !dbg !1739
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64, !dbg !1739
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64, !dbg !1739
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1739
  %cmp56 = icmp sgt i64 %sub.ptr.sub, 40, !dbg !1739
  br i1 %cmp56, label %while.end74, label %while.cond60, !dbg !1739

while.cond60:                                     ; preds = %if.else55, %while.body63
  %36 = load i8** %p, align 8, !dbg !1742
  %37 = load i8** %next, align 8, !dbg !1742
  %cmp61 = icmp ne i8* %36, %37, !dbg !1742
  br i1 %cmp61, label %while.body63, label %while.end66, !dbg !1742

while.body63:                                     ; preds = %while.cond60
  %38 = load i8** %p, align 8, !dbg !1743
  %incdec.ptr64 = getelementptr inbounds i8* %38, i32 1, !dbg !1743
  store i8* %incdec.ptr64, i8** %p, align 8, !dbg !1743
  %39 = load i8* %38, align 1, !dbg !1743
  %40 = load i8** %s, align 8, !dbg !1743
  %incdec.ptr65 = getelementptr inbounds i8* %40, i32 1, !dbg !1743
  store i8* %incdec.ptr65, i8** %s, align 8, !dbg !1743
  store i8 %39, i8* %40, align 1, !dbg !1743
  br label %while.cond60, !dbg !1743

while.end66:                                      ; preds = %while.cond60
  %41 = load i8** %s, align 8, !dbg !1744
  store i8 0, i8* %41, align 1, !dbg !1744
  br label %while.end74, !dbg !1745

while.end74:                                      ; preds = %if.then22, %land.lhs.true, %while.end, %if.then28, %if.else55, %if.end6, %lor.lhs.false, %if.else, %while.end66, %while.cond
  ret void, !dbg !1746
}

; Function Attrs: nounwind uwtable
define internal i8* @getTok(i8** %pp) #0 {
entry:
  %retval = alloca i8*, align 8
  %pp.addr = alloca i8**, align 8
  %state = alloca i32, align 4
  %tokStart = alloca i8*, align 8
  store i8** %pp, i8*** %pp.addr, align 8
  store i32 2, i32* %state, align 4, !dbg !1747
  store i8* null, i8** %tokStart, align 8, !dbg !1748
  br label %for.cond, !dbg !1749

for.cond:                                         ; preds = %sw.epilog50, %entry
  %0 = load i8*** %pp.addr, align 8, !dbg !1751
  %1 = load i8** %0, align 8, !dbg !1751
  %2 = load i8* %1, align 1, !dbg !1751
  %conv = sext i8 %2 to i32, !dbg !1751
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 32, label %sw.bb2
    i32 13, label %sw.bb2
    i32 9, label %sw.bb2
    i32 10, label %sw.bb2
    i32 40, label %sw.bb7
    i32 41, label %sw.bb16
    i32 59, label %sw.bb25
    i32 47, label %sw.bb25
    i32 61, label %sw.bb25
    i32 92, label %sw.bb34
    i32 34, label %sw.bb41
  ], !dbg !1751

sw.bb:                                            ; preds = %for.cond
  %3 = load i32* %state, align 4, !dbg !1753
  %cmp = icmp eq i32 %3, 0, !dbg !1753
  br i1 %cmp, label %if.then, label %if.end, !dbg !1753

if.then:                                          ; preds = %sw.bb
  %4 = load i8** %tokStart, align 8, !dbg !1756
  store i8* %4, i8** %retval, !dbg !1756
  br label %return, !dbg !1756

if.end:                                           ; preds = %sw.bb
  store i8* null, i8** %retval, !dbg !1757
  br label %return, !dbg !1757

sw.bb2:                                           ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  %5 = load i32* %state, align 4, !dbg !1758
  %cmp3 = icmp eq i32 %5, 0, !dbg !1758
  br i1 %cmp3, label %if.then5, label %sw.epilog50, !dbg !1758

if.then5:                                         ; preds = %sw.bb2
  %6 = load i8** %tokStart, align 8, !dbg !1760
  store i8* %6, i8** %retval, !dbg !1760
  br label %return, !dbg !1760

sw.bb7:                                           ; preds = %for.cond
  %7 = load i32* %state, align 4, !dbg !1761
  %cmp8 = icmp eq i32 %7, 0, !dbg !1761
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1761

if.then10:                                        ; preds = %sw.bb7
  %8 = load i8** %tokStart, align 8, !dbg !1763
  store i8* %8, i8** %retval, !dbg !1763
  br label %return, !dbg !1763

if.end11:                                         ; preds = %sw.bb7
  %9 = load i32* %state, align 4, !dbg !1764
  %cmp12 = icmp ne i32 %9, 1, !dbg !1764
  br i1 %cmp12, label %if.then14, label %sw.epilog50, !dbg !1764

if.then14:                                        ; preds = %if.end11
  %10 = load i32* %state, align 4, !dbg !1766
  %inc = add nsw i32 %10, 1, !dbg !1766
  store i32 %inc, i32* %state, align 4, !dbg !1766
  br label %sw.epilog50, !dbg !1766

sw.bb16:                                          ; preds = %for.cond
  %11 = load i32* %state, align 4, !dbg !1767
  %cmp17 = icmp sgt i32 %11, 2, !dbg !1767
  %12 = load i32* %state, align 4, !dbg !1769
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !1767

if.then19:                                        ; preds = %sw.bb16
  %dec = add nsw i32 %12, -1, !dbg !1769
  store i32 %dec, i32* %state, align 4, !dbg !1769
  br label %sw.epilog50, !dbg !1769

if.else:                                          ; preds = %sw.bb16
  %cmp20 = icmp ne i32 %12, 1, !dbg !1770
  br i1 %cmp20, label %if.then22, label %sw.epilog50, !dbg !1770

if.then22:                                        ; preds = %if.else
  store i8* null, i8** %retval, !dbg !1772
  br label %return, !dbg !1772

sw.bb25:                                          ; preds = %for.cond, %for.cond, %for.cond
  %13 = load i32* %state, align 4, !dbg !1773
  %cmp26 = icmp eq i32 %13, 0, !dbg !1773
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1773

if.then28:                                        ; preds = %sw.bb25
  %14 = load i8** %tokStart, align 8, !dbg !1775
  store i8* %14, i8** %retval, !dbg !1775
  br label %return, !dbg !1775

if.end29:                                         ; preds = %sw.bb25
  %15 = load i32* %state, align 4, !dbg !1776
  %cmp30 = icmp eq i32 %15, 2, !dbg !1776
  br i1 %cmp30, label %if.then32, label %sw.epilog50, !dbg !1776

if.then32:                                        ; preds = %if.end29
  %16 = load i8*** %pp.addr, align 8, !dbg !1778
  %17 = load i8** %16, align 8, !dbg !1778
  %incdec.ptr = getelementptr inbounds i8* %17, i32 1, !dbg !1778
  store i8* %incdec.ptr, i8** %16, align 8, !dbg !1778
  store i8* %17, i8** %retval, !dbg !1778
  br label %return, !dbg !1778

sw.bb34:                                          ; preds = %for.cond
  %18 = load i8*** %pp.addr, align 8, !dbg !1779
  %19 = load i8** %18, align 8, !dbg !1779
  %incdec.ptr35 = getelementptr inbounds i8* %19, i32 1, !dbg !1779
  store i8* %incdec.ptr35, i8** %18, align 8, !dbg !1779
  %20 = load i8*** %pp.addr, align 8, !dbg !1780
  %21 = load i8** %20, align 8, !dbg !1780
  %22 = load i8* %21, align 1, !dbg !1780
  %conv36 = sext i8 %22 to i32, !dbg !1780
  %cmp37 = icmp eq i32 %conv36, 0, !dbg !1780
  br i1 %cmp37, label %if.then39, label %sw.epilog50, !dbg !1780

if.then39:                                        ; preds = %sw.bb34
  store i8* null, i8** %retval, !dbg !1782
  br label %return, !dbg !1782

sw.bb41:                                          ; preds = %for.cond
  %23 = load i32* %state, align 4, !dbg !1783
  switch i32 %23, label %sw.epilog50 [
    i32 1, label %sw.bb42
    i32 0, label %sw.bb44
    i32 2, label %sw.bb45
  ], !dbg !1783

sw.bb42:                                          ; preds = %sw.bb41
  %24 = load i8*** %pp.addr, align 8, !dbg !1784
  %25 = load i8** %24, align 8, !dbg !1784
  %incdec.ptr43 = getelementptr inbounds i8* %25, i32 1, !dbg !1784
  store i8* %incdec.ptr43, i8** %24, align 8, !dbg !1784
  %26 = load i8** %tokStart, align 8, !dbg !1786
  store i8* %26, i8** %retval, !dbg !1786
  br label %return, !dbg !1786

sw.bb44:                                          ; preds = %sw.bb41
  %27 = load i8** %tokStart, align 8, !dbg !1787
  store i8* %27, i8** %retval, !dbg !1787
  br label %return, !dbg !1787

sw.bb45:                                          ; preds = %sw.bb41
  %28 = load i8*** %pp.addr, align 8, !dbg !1788
  %29 = load i8** %28, align 8, !dbg !1788
  store i8* %29, i8** %tokStart, align 8, !dbg !1788
  store i32 1, i32* %state, align 4, !dbg !1789
  br label %sw.epilog50, !dbg !1790

sw.default:                                       ; preds = %for.cond
  %30 = load i32* %state, align 4, !dbg !1791
  %cmp46 = icmp eq i32 %30, 2, !dbg !1791
  br i1 %cmp46, label %if.then48, label %sw.epilog50, !dbg !1791

if.then48:                                        ; preds = %sw.default
  %31 = load i8*** %pp.addr, align 8, !dbg !1793
  %32 = load i8** %31, align 8, !dbg !1793
  store i8* %32, i8** %tokStart, align 8, !dbg !1793
  store i32 0, i32* %state, align 4, !dbg !1795
  br label %sw.epilog50, !dbg !1796

sw.epilog50:                                      ; preds = %sw.default, %if.then48, %sw.bb41, %sw.bb45, %sw.bb34, %if.end29, %if.then19, %if.else, %if.end11, %if.then14, %sw.bb2
  %33 = load i8*** %pp.addr, align 8, !dbg !1797
  %34 = load i8** %33, align 8, !dbg !1797
  %incdec.ptr51 = getelementptr inbounds i8* %34, i32 1, !dbg !1797
  store i8* %incdec.ptr51, i8** %33, align 8, !dbg !1797
  br label %for.cond, !dbg !1798

return:                                           ; preds = %sw.bb44, %sw.bb42, %if.then39, %if.then32, %if.then28, %if.then22, %if.then10, %if.then5, %if.end, %if.then
  %35 = load i8** %retval, !dbg !1799
  ret i8* %35, !dbg !1799
}

; Function Attrs: nounwind uwtable
define internal i32 @matchkey(i8* %start, i8* %end, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8** %start.addr, align 8, !dbg !1800
  %tobool = icmp ne i8* %0, null, !dbg !1800
  br i1 %tobool, label %for.cond, label %if.then, !dbg !1800

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1802
  br label %return, !dbg !1802

for.cond:                                         ; preds = %entry, %for.inc
  %1 = load i8** %start.addr, align 8, !dbg !1803
  %2 = load i8** %end.addr, align 8, !dbg !1803
  %cmp = icmp ne i8* %1, %2, !dbg !1803
  br i1 %cmp, label %for.body, label %for.end, !dbg !1803

for.body:                                         ; preds = %for.cond
  %3 = load i8** %start.addr, align 8, !dbg !1805
  %4 = load i8* %3, align 1, !dbg !1805
  %conv = sext i8 %4 to i32, !dbg !1805
  %5 = load i8** %key.addr, align 8, !dbg !1805
  %6 = load i8* %5, align 1, !dbg !1805
  %conv1 = sext i8 %6 to i32, !dbg !1805
  %cmp2 = icmp ne i32 %conv, %conv1, !dbg !1805
  br i1 %cmp2, label %land.lhs.true, label %for.inc, !dbg !1805

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8** %start.addr, align 8, !dbg !1805
  %8 = load i8* %7, align 1, !dbg !1805
  %conv4 = sext i8 %8 to i32, !dbg !1805
  %9 = load i8** %key.addr, align 8, !dbg !1805
  %10 = load i8* %9, align 1, !dbg !1805
  %conv5 = sext i8 %10 to i32, !dbg !1805
  %sub = sub nsw i32 %conv5, 97, !dbg !1805
  %add = add nsw i32 65, %sub, !dbg !1805
  %cmp6 = icmp ne i32 %conv4, %add, !dbg !1805
  br i1 %cmp6, label %if.then8, label %for.inc, !dbg !1805

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !1807
  br label %return, !dbg !1807

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %11 = load i8** %start.addr, align 8, !dbg !1803
  %incdec.ptr = getelementptr inbounds i8* %11, i32 1, !dbg !1803
  store i8* %incdec.ptr, i8** %start.addr, align 8, !dbg !1803
  %12 = load i8** %key.addr, align 8, !dbg !1803
  %incdec.ptr10 = getelementptr inbounds i8* %12, i32 1, !dbg !1803
  store i8* %incdec.ptr10, i8** %key.addr, align 8, !dbg !1803
  br label %for.cond, !dbg !1803

for.end:                                          ; preds = %for.cond
  %13 = load i8** %key.addr, align 8, !dbg !1808
  %14 = load i8* %13, align 1, !dbg !1808
  %conv11 = sext i8 %14 to i32, !dbg !1808
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !1808
  %conv13 = zext i1 %cmp12 to i32, !dbg !1808
  store i32 %conv13, i32* %retval, !dbg !1808
  br label %return, !dbg !1808

return:                                           ; preds = %for.end, %if.then8, %if.then
  %15 = load i32* %retval, !dbg !1809
  ret i32 %15, !dbg !1809
}

; Function Attrs: nounwind uwtable
define i32 @__user_main() #0 {
entry:
  %retval = alloca i32, align 4
  %argc = alloca i32, align 4
  %argv = alloca [4 x i8*], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast i32* %argc to i8*, !dbg !1810
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0)), !dbg !1810
  %1 = load i32* %argc, align 4, !dbg !1811
  %cmp = icmp sge i32 %1, 1, !dbg !1811
  %conv = zext i1 %cmp to i32, !dbg !1811
  %conv1 = sext i32 %conv to i64, !dbg !1811
  call void @klee_assume(i64 %conv1), !dbg !1811
  %2 = load i32* %argc, align 4, !dbg !1812
  %cmp2 = icmp sle i32 %2, 4, !dbg !1812
  %conv3 = zext i1 %cmp2 to i32, !dbg !1812
  %conv4 = sext i32 %conv3 to i64, !dbg !1812
  call void @klee_assume(i64 %conv4), !dbg !1812
  store i32 0, i32* %i, align 4, !dbg !1813
  br label %for.cond, !dbg !1813

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i32* %i, align 4, !dbg !1813
  %4 = load i32* %argc, align 4, !dbg !1813
  %cmp5 = icmp slt i32 %3, %4, !dbg !1813
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1813

for.body:                                         ; preds = %for.cond
  %call = call noalias i8* @malloc(i64 16) #5, !dbg !1815
  %5 = load i32* %i, align 4, !dbg !1815
  %idxprom = sext i32 %5 to i64, !dbg !1815
  %arrayidx = getelementptr inbounds [4 x i8*]* %argv, i32 0, i64 %idxprom, !dbg !1815
  store i8* %call, i8** %arrayidx, align 8, !dbg !1815
  %6 = load i32* %i, align 4, !dbg !1817
  %idxprom7 = sext i32 %6 to i64, !dbg !1817
  %arrayidx8 = getelementptr inbounds [4 x i8*]* %argv, i32 0, i64 %idxprom7, !dbg !1817
  %7 = load i8** %arrayidx8, align 8, !dbg !1817
  call void @klee_make_symbolic(i8* %7, i64 16, i8* getelementptr inbounds ([5 x i8]* @.str112, i32 0, i32 0)), !dbg !1817
  %8 = load i32* %i, align 4, !dbg !1818
  %idxprom9 = sext i32 %8 to i64, !dbg !1818
  %arrayidx10 = getelementptr inbounds [4 x i8*]* %argv, i32 0, i64 %idxprom9, !dbg !1818
  %9 = load i8** %arrayidx10, align 8, !dbg !1818
  %arrayidx11 = getelementptr inbounds i8* %9, i64 15, !dbg !1818
  store i8 0, i8* %arrayidx11, align 1, !dbg !1818
  %10 = load i32* %i, align 4, !dbg !1813
  %inc = add nsw i32 %10, 1, !dbg !1813
  store i32 %inc, i32* %i, align 4, !dbg !1813
  br label %for.cond, !dbg !1813

for.end:                                          ; preds = %for.cond
  %11 = load i32* %argc, align 4, !dbg !1819
  %arraydecay = getelementptr inbounds [4 x i8*]* %argv, i32 0, i32 0, !dbg !1819
  %call12 = call i32 @xmlwf_main(i32 %11, i8** %arraydecay), !dbg !1819
  ret i32 %call12, !dbg !1819
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_assume(i64) #2

declare i32 @xmlwf_main(i32, i8**) #2

; Function Attrs: nounwind uwtable
define void @perror(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %buf = alloca [64 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  store i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i8** %sep, align 8, !dbg !1820
  %0 = load i8** %s.addr, align 8, !dbg !1821
  %tobool = icmp ne i8* %0, null, !dbg !1821
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1821

land.lhs.true:                                    ; preds = %entry
  %1 = load i8** %s.addr, align 8, !dbg !1821
  %2 = load i8* %1, align 1, !dbg !1821
  %conv = sext i8 %2 to i32, !dbg !1821
  %tobool1 = icmp ne i32 %conv, 0, !dbg !1821
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1821

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8** %sep, align 8, !dbg !1823
  %add.ptr = getelementptr inbounds i8* %3, i64 2, !dbg !1823
  store i8* %add.ptr, i8** %sep, align 8, !dbg !1823
  store i8* %add.ptr, i8** %s.addr, align 8, !dbg !1823
  br label %if.end, !dbg !1825

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %struct.__STDIO_FILE_STRUCT.212** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct.__STDIO_FILE_STRUCT.212**), align 8, !dbg !1826
  %5 = load i8** %s.addr, align 8, !dbg !1826
  %6 = load i8** %sep, align 8, !dbg !1826
  %7 = load i32* @errno, align 4, !dbg !1828
  %arraydecay = getelementptr inbounds [64 x i8]* %buf, i32 0, i32 0, !dbg !1828
  %call = call i8* @__glibc_strerror_r(i32 %7, i8* %arraydecay, i64 64) #17, !dbg !1828
  %call2 = call i32 (%struct.__STDIO_FILE_STRUCT.212*, i8*, ...)* bitcast (i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprintf to i32 (%struct.__STDIO_FILE_STRUCT.212*, i8*, ...)*)(%struct.__STDIO_FILE_STRUCT.212* %4, i8* getelementptr inbounds ([
  ret void, !dbg !1829
}

; Function Attrs: nounwind uwtable
define i32 @fprintf(%struct.__STDIO_FILE_STRUCT.231* noalias %stream, i8* noalias %format, ...) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %format.addr = alloca i8*, align 8
  %arg = alloca [1 x %struct.__va_list_tag.232], align 16
  %rv = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg, i32 0, i32 0, !dbg !1830
  %arraydecay1 = bitcast %struct.__va_list_tag.232* %arraydecay to i8*, !dbg !1830
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1830
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1831
  %1 = load %struct.__STDIO_FILE_STRUCT.231** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stdout to %struct.__STDIO_FILE_STRUCT.231**), align 8, !dbg !1831
  %cmp = icmp eq %struct.__STDIO_FILE_STRUCT.231* %0, %1, !dbg !1831
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1831

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1831
  %3 = load %struct.__STDIO_FILE_STRUCT.231** bitcast (%struct.__STDIO_FILE_STRUCT.274** @stderr to %struct.__STDIO_FILE_STRUCT.231**), align 8, !dbg !1831
  %cmp2 = icmp eq %struct.__STDIO_FILE_STRUCT.231* %2, %3, !dbg !1831
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1831

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8** %format.addr, align 8, !dbg !1833
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg, i32 0, i32 0, !dbg !1833
  %call = call i32 @vprintf(i8* %4, %struct.__va_list_tag.232* %arraydecay3) #18, !dbg !1833
  store i32 %call, i32* %rv, align 4, !dbg !1833
  br label %if.end, !dbg !1835

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1836
  %6 = load i8** %format.addr, align 8, !dbg !1836
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg, i32 0, i32 0, !dbg !1836
  %call5 = call i32 @vfprintf(%struct.__STDIO_FILE_STRUCT.231* %5, i8* %6, %struct.__va_list_tag.232* %arraydecay4) #18, !dbg !1836
  store i32 %call5, i32* %rv, align 4, !dbg !1836
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg, i32 0, i32 0, !dbg !1838
  %arraydecay67 = bitcast %struct.__va_list_tag.232* %arraydecay6 to i8*, !dbg !1838
  call void @llvm.va_end(i8* %arraydecay67), !dbg !1838
  %7 = load i32* %rv, align 4, !dbg !1839
  ret i32 %7, !dbg !1839
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare i32 @vprintf(i8*, %struct.__va_list_tag.232*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
entry:
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.274*, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.274** @_stdio_openlist, align 8, !dbg !1840
  store %struct.__STDIO_FILE_STRUCT.274* %0, %struct.__STDIO_FILE_STRUCT.274** %ptr, align 8, !dbg !1840
  br label %for.cond, !dbg !1840

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.__STDIO_FILE_STRUCT.274** %ptr, align 8, !dbg !1840
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT.274* %1, null, !dbg !1840
  br i1 %tobool, label %for.body, label %for.end, !dbg !1840

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__STDIO_FILE_STRUCT.274** %ptr, align 8, !dbg !1842
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %2, i32 0, i32 0, !dbg !1842
  %3 = load i16* %__modeflags, align 2, !dbg !1842
  %conv = zext i16 %3 to i32, !dbg !1842
  %and = and i32 %conv, 64, !dbg !1842
  %tobool1 = icmp ne i32 %and, 0, !dbg !1842
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !1842

if.then:                                          ; preds = %for.body
  %4 = load %struct.__STDIO_FILE_STRUCT.274** %ptr, align 8, !dbg !1845
  %call = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.274* %4) #18, !dbg !1845
  br label %for.inc, !dbg !1847

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.274** %ptr, align 8, !dbg !1840
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %5, i32 0, i32 9, !dbg !1840
  %6 = load %struct.__STDIO_FILE_STRUCT.274** %__nextopen, align 8, !dbg !1840
  store %struct.__STDIO_FILE_STRUCT.274* %6, %struct.__STDIO_FILE_STRUCT.274** %ptr, align 8, !dbg !1840
  br label %for.cond, !dbg !1840

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1848
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
entry:
  %old_errno = alloca i32, align 4
  %0 = load i32* @errno, align 4, !dbg !1849
  store i32 %0, i32* %old_errno, align 4, !dbg !1849
  %call = call i32 @isatty(i32 0) #17, !dbg !1850
  %sub = sub nsw i32 1, %call, !dbg !1850
  %mul = mul i32 %sub, 256, !dbg !1850
  %1 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !1850
  %conv = zext i16 %1 to i32, !dbg !1850
  %xor = xor i32 %conv, %mul, !dbg !1850
  %conv1 = trunc i32 %xor to i16, !dbg !1850
  store i16 %conv1, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !1850
  %call2 = call i32 @isatty(i32 1) #17, !dbg !1851
  %sub3 = sub nsw i32 1, %call2, !dbg !1851
  %mul4 = mul i32 %sub3, 256, !dbg !1851
  %2 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !1851
  %conv5 = zext i16 %2 to i32, !dbg !1851
  %xor6 = xor i32 %conv5, %mul4, !dbg !1851
  %conv7 = trunc i32 %xor6 to i16, !dbg !1851
  store i16 %conv7, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !1851
  %3 = load i32* %old_errno, align 4, !dbg !1852
  store i32 %3, i32* @errno, align 4, !dbg !1852
  ret void, !dbg !1853
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.274* noalias %stream) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.274*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.274* %stream, %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1854
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %0, i32 0, i32 5, !dbg !1854
  %1 = load i8** %__bufpos, align 8, !dbg !1854
  %2 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1854
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %2, i32 0, i32 3, !dbg !1854
  %3 = load i8** %__bufstart, align 8, !dbg !1854
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !1854
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !1854
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1854
  store i64 %sub.ptr.sub, i64* %bufsize, align 8, !dbg !1854
  %cmp = icmp ne i64 %sub.ptr.sub, 0, !dbg !1854
  br i1 %cmp, label %if.then, label %if.end, !dbg !1854

if.then:                                          ; preds = %entry
  %4 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1856
  %__bufstart1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %4, i32 0, i32 3, !dbg !1856
  %5 = load i8** %__bufstart1, align 8, !dbg !1856
  %6 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1856
  %__bufpos2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %6, i32 0, i32 5, !dbg !1856
  store i8* %5, i8** %__bufpos2, align 8, !dbg !1856
  %7 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1858
  %8 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1858
  %__bufstart3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %8, i32 0, i32 3, !dbg !1858
  %9 = load i8** %__bufstart3, align 8, !dbg !1858
  %10 = load i64* %bufsize, align 8, !dbg !1858
  %call = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.274* %7, i8* %9, i64 %10) #18, !dbg !1858
  br label %if.end, !dbg !1859

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1860
  %__bufpos4 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %11, i32 0, i32 5, !dbg !1860
  %12 = load i8** %__bufpos4, align 8, !dbg !1860
  %13 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !1860
  %__bufstart5 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %13, i32 0, i32 3, !dbg !1860
  %14 = load i8** %__bufstart5, align 8, !dbg !1860
  %sub.ptr.lhs.cast6 = ptrtoint i8* %12 to i64, !dbg !1860
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64, !dbg !1860
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !1860
  ret i64 %sub.ptr.sub8, !dbg !1860
}

; Function Attrs: nounwind uwtable
define i32 @vfprintf(%struct.__STDIO_FILE_STRUCT.231* noalias %stream, i8* noalias %format, %struct.__va_list_tag.232* %arg) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %format.addr = alloca i8*, align 8
  %arg.addr = alloca %struct.__va_list_tag.232*, align 8
  %ppfs = alloca %struct.ppfs_t, align 16
  %count = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag.232* %arg, %struct.__va_list_tag.232** %arg.addr, align 8
  store i32 0, i32* %count, align 4, !dbg !1861
  %0 = load i8** %format.addr, align 8, !dbg !1862
  store i8* %0, i8** %s, align 8, !dbg !1862
  %1 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1863
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %1, i32 0, i32 0, !dbg !1863
  %2 = load i16* %__modeflags, align 2, !dbg !1863
  %conv = zext i16 %2 to i32, !dbg !1863
  %and = and i32 %conv, 192, !dbg !1863
  %cmp = icmp eq i32 %and, 192, !dbg !1863
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1863

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1865
  %call = call i32 @__stdio_trans2w_o(%struct.__STDIO_FILE_STRUCT.231* %3, i32 128) #18, !dbg !1865
  %tobool = icmp ne i32 %call, 0, !dbg !1865
  br i1 %tobool, label %if.then, label %if.else, !dbg !1865

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %count, align 4, !dbg !1866
  br label %if.end65, !dbg !1868

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8** %format.addr, align 8, !dbg !1869
  %call2 = call i32 @_ppfs_init(%struct.ppfs_t* %ppfs, i8* %4) #18, !dbg !1869
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1869
  br i1 %cmp3, label %if.then5, label %if.else13, !dbg !1869

if.then5:                                         ; preds = %if.else
  %fmtpos = getelementptr inbounds %struct.ppfs_t* %ppfs, i32 0, i32 0, !dbg !1871
  %5 = load i8** %fmtpos, align 8, !dbg !1871
  %call6 = call i64 @strlen(i8* %5) #19, !dbg !1871
  %cmp7 = icmp ugt i64 %call6, 0, !dbg !1871
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !1871

cond.true:                                        ; preds = %if.then5
  %fmtpos9 = getelementptr inbounds %struct.ppfs_t* %ppfs, i32 0, i32 0, !dbg !1871
  %6 = load i8** %fmtpos9, align 8, !dbg !1871
  %fmtpos10 = getelementptr inbounds %struct.ppfs_t* %ppfs, i32 0, i32 0, !dbg !1871
  %7 = load i8** %fmtpos10, align 8, !dbg !1871
  %call11 = call i64 @strlen(i8* %7) #19, !dbg !1871
  %8 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1871
  %call12 = call i64 @__stdio_fwrite(i8* %6, i64 %call11, %struct.__STDIO_FILE_STRUCT.231* %8) #18, !dbg !1871
  br label %cond.end, !dbg !1871

cond.end:                                         ; preds = %if.then5, %cond.true
  store i32 -1, i32* %count, align 4, !dbg !1873
  br label %if.end65, !dbg !1874

if.else13:                                        ; preds = %if.else
  %9 = load %struct.__va_list_tag.232** %arg.addr, align 8, !dbg !1875
  call void @_ppfs_prepargs(%struct.ppfs_t* %ppfs, %struct.__va_list_tag.232* %9) #18, !dbg !1875
  br label %while.cond, !dbg !1877

while.cond:                                       ; preds = %if.else58, %if.end56, %if.else13, %while.body
  %10 = load i8** %format.addr, align 8, !dbg !1878
  %11 = load i8* %10, align 1, !dbg !1878
  %conv14 = sext i8 %11 to i32, !dbg !1878
  %tobool15 = icmp ne i32 %conv14, 0, !dbg !1878
  br i1 %tobool15, label %land.rhs, label %land.end, !dbg !1878

land.rhs:                                         ; preds = %while.cond
  %12 = load i8** %format.addr, align 8, !dbg !1878
  %13 = load i8* %12, align 1, !dbg !1878
  %conv16 = sext i8 %13 to i32, !dbg !1878
  %cmp17 = icmp ne i32 %conv16, 37, !dbg !1878
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  %15 = load i8** %format.addr, align 8, !dbg !1880
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %incdec.ptr = getelementptr inbounds i8* %15, i32 1, !dbg !1880
  store i8* %incdec.ptr, i8** %format.addr, align 8, !dbg !1880
  br label %while.cond, !dbg !1882

while.end:                                        ; preds = %land.end
  %16 = load i8** %s, align 8, !dbg !1883
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64, !dbg !1883
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64, !dbg !1883
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1883
  %tobool19 = icmp ne i64 %sub.ptr.sub, 0, !dbg !1883
  br i1 %tobool19, label %if.then20, label %if.end42, !dbg !1883

if.then20:                                        ; preds = %while.end
  %17 = load i8** %format.addr, align 8, !dbg !1885
  %18 = load i8** %s, align 8, !dbg !1885
  %sub.ptr.lhs.cast21 = ptrtoint i8* %17 to i64, !dbg !1885
  %sub.ptr.rhs.cast22 = ptrtoint i8* %18 to i64, !dbg !1885
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22, !dbg !1885
  %cmp24 = icmp sgt i64 %sub.ptr.sub23, 0, !dbg !1885
  br i1 %cmp24, label %cond.true26, label %cond.end32, !dbg !1885

cond.true26:                                      ; preds = %if.then20
  %19 = load i8** %s, align 8, !dbg !1885
  %20 = load i8** %format.addr, align 8, !dbg !1885
  %21 = load i8** %s, align 8, !dbg !1885
  %sub.ptr.lhs.cast27 = ptrtoint i8* %20 to i64, !dbg !1885
  %sub.ptr.rhs.cast28 = ptrtoint i8* %21 to i64, !dbg !1885
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28, !dbg !1885
  %22 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1885
  %call30 = call i64 @__stdio_fwrite(i8* %19, i64 %sub.ptr.sub29, %struct.__STDIO_FILE_STRUCT.231* %22) #18, !dbg !1885
  br label %cond.end32, !dbg !1885

cond.end32:                                       ; preds = %if.then20, %cond.true26
  %cond33 = phi i64 [ %call30, %cond.true26 ], [ 0, %if.then20 ], !dbg !1885
  %conv34 = trunc i64 %cond33 to i32, !dbg !1885
  store i32 %conv34, i32* %r, align 4, !dbg !1885
  %conv35 = sext i32 %conv34 to i64, !dbg !1885
  %23 = load i8** %format.addr, align 8, !dbg !1885
  %24 = load i8** %s, align 8, !dbg !1885
  %sub.ptr.lhs.cast36 = ptrtoint i8* %23 to i64, !dbg !1885
  %sub.ptr.rhs.cast37 = ptrtoint i8* %24 to i64, !dbg !1885
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !1885
  %cmp39 = icmp ne i64 %conv35, %sub.ptr.sub38, !dbg !1885
  br i1 %cmp39, label %if.then41, label %if.end, !dbg !1885

if.then41:                                        ; preds = %cond.end32
  store i32 -1, i32* %count, align 4, !dbg !1888
  br label %do.end, !dbg !1890

if.end:                                           ; preds = %cond.end32
  %25 = load i32* %r, align 4, !dbg !1891
  %26 = load i32* %count, align 4, !dbg !1891
  %add = add nsw i32 %26, %25, !dbg !1891
  store i32 %add, i32* %count, align 4, !dbg !1891
  br label %if.end42, !dbg !1892

if.end42:                                         ; preds = %if.end, %while.end
  %27 = load i8** %format.addr, align 8, !dbg !1893
  %28 = load i8* %27, align 1, !dbg !1893
  %tobool43 = icmp ne i8 %28, 0, !dbg !1893
  br i1 %tobool43, label %if.end45, label %do.end, !dbg !1893

if.end45:                                         ; preds = %if.end42
  %29 = load i8** %format.addr, align 8, !dbg !1895
  %arrayidx = getelementptr inbounds i8* %29, i64 1, !dbg !1895
  %30 = load i8* %arrayidx, align 1, !dbg !1895
  %conv46 = sext i8 %30 to i32, !dbg !1895
  %cmp47 = icmp ne i32 %conv46, 37, !dbg !1895
  %31 = load i8** %format.addr, align 8, !dbg !1897
  %incdec.ptr50 = getelementptr inbounds i8* %31, i32 1, !dbg !1897
  store i8* %incdec.ptr50, i8** %format.addr, align 8, !dbg !1897
  br i1 %cmp47, label %if.then49, label %if.else58, !dbg !1895

if.then49:                                        ; preds = %if.end45
  %fmtpos51 = getelementptr inbounds %struct.ppfs_t* %ppfs, i32 0, i32 0, !dbg !1897
  store i8* %incdec.ptr50, i8** %fmtpos51, align 8, !dbg !1897
  %32 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !1899
  %call52 = call i32 @_do_one_spec(%struct.__STDIO_FILE_STRUCT.231* %32, %struct.ppfs_t* %ppfs, i32* %count) #18, !dbg !1899
  store i32 %call52, i32* %r, align 4, !dbg !1899
  %cmp53 = icmp slt i32 %call52, 0, !dbg !1899
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !1899

if.then55:                                        ; preds = %if.then49
  store i32 -1, i32* %count, align 4, !dbg !1901
  br label %do.end, !dbg !1903

if.end56:                                         ; preds = %if.then49
  %fmtpos57 = getelementptr inbounds %struct.ppfs_t* %ppfs, i32 0, i32 0, !dbg !1904
  %33 = load i8** %fmtpos57, align 8, !dbg !1904
  store i8* %33, i8** %format.addr, align 8, !dbg !1904
  store i8* %33, i8** %s, align 8, !dbg !1904
  br label %while.cond, !dbg !1905

if.else58:                                        ; preds = %if.end45
  store i8* %incdec.ptr50, i8** %s, align 8, !dbg !1906
  %34 = load i8** %format.addr, align 8, !dbg !1908
  %incdec.ptr60 = getelementptr inbounds i8* %34, i32 1, !dbg !1908
  store i8* %incdec.ptr60, i8** %format.addr, align 8, !dbg !1908
  br label %while.cond

do.end:                                           ; preds = %if.end42, %if.then55, %if.then41
  %arg62 = getelementptr inbounds %struct.ppfs_t* %ppfs, i32 0, i32 7, !dbg !1909
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg62, i32 0, i32 0, !dbg !1909
  %arraydecay63 = bitcast %struct.__va_list_tag.232* %arraydecay to i8*, !dbg !1909
  call void @llvm.va_end(i8* %arraydecay63), !dbg !1909
  br label %if.end65

if.end65:                                         ; preds = %cond.end, %do.end, %if.then
  %35 = load i32* %count, align 4, !dbg !1910
  ret i32 %35, !dbg !1910
}

; Function Attrs: nounwind uwtable
define internal i32 @_do_one_spec(%struct.__STDIO_FILE_STRUCT.231* noalias %stream, %struct.ppfs_t* %ppfs, i32* %count) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %ppfs.addr = alloca %struct.ppfs_t*, align 8
  %count.addr = alloca i32*, align 8
  %argptr = alloca [1 x i8*], align 8
  %argtype = alloca i32*, align 8
  %ws = alloca i32*, align 8
  %mbstate = alloca %struct.__mbstate_t.230, align 4
  %slen = alloca i64, align 8
  %base = alloca i32, align 4
  %numpad = alloca i32, align 4
  %alphacase = alloca i32, align 4
  %numfill = alloca i32, align 4
  %prefix_num = alloca i32, align 4
  %padchar = alloca i8, align 1
  %buf = alloca [128 x i8], align 16
  %p = alloca %union.argvalue_t*, align 8
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  %nf = alloca i64, align 8
  %t = alloca i64, align 8
  %t352 = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store %struct.ppfs_t* %ppfs, %struct.ppfs_t** %ppfs.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  store i32* null, i32** %ws, align 8, !dbg !1911
  store i32 0, i32* %numfill, align 4, !dbg !1912
  store i32 11, i32* %prefix_num, align 4, !dbg !1913
  store i8 32, i8* %padchar, align 1, !dbg !1914
  %0 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1915
  %call = call i32 @_ppfs_parsespec(%struct.ppfs_t* %0) #18, !dbg !1915
  %1 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1916
  call void @_ppfs_setargs(%struct.ppfs_t* %1) #18, !dbg !1916
  %2 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1917
  %argtype1 = getelementptr inbounds %struct.ppfs_t* %2, i32 0, i32 6, !dbg !1917
  %arraydecay = getelementptr inbounds [9 x i32]* %argtype1, i32 0, i32 0, !dbg !1917
  %3 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1917
  %argnumber = getelementptr inbounds %struct.ppfs_t* %3, i32 0, i32 5, !dbg !1917
  %arrayidx = getelementptr inbounds [4 x i8]* %argnumber, i32 0, i64 2, !dbg !1917
  %4 = load i8* %arrayidx, align 1, !dbg !1917
  %conv = zext i8 %4 to i32, !dbg !1917
  %idx.ext = sext i32 %conv to i64, !dbg !1917
  %add.ptr = getelementptr inbounds i32* %arraydecay, i64 %idx.ext, !dbg !1917
  %add.ptr2 = getelementptr inbounds i32* %add.ptr, i64 -1, !dbg !1917
  store i32* %add.ptr2, i32** %argtype, align 8, !dbg !1917
  %5 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1918
  %argvalue = getelementptr inbounds %struct.ppfs_t* %5, i32 0, i32 8, !dbg !1918
  %arraydecay3 = getelementptr inbounds [9 x %union.argvalue_t]* %argvalue, i32 0, i32 0, !dbg !1918
  store %union.argvalue_t* %arraydecay3, %union.argvalue_t** %p, align 8, !dbg !1918
  %6 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1920
  %maxposarg = getelementptr inbounds %struct.ppfs_t* %6, i32 0, i32 2, !dbg !1920
  %7 = load i32* %maxposarg, align 4, !dbg !1920
  %cmp = icmp sgt i32 %7, 0, !dbg !1920
  br i1 %cmp, label %if.then, label %if.end, !dbg !1920

if.then:                                          ; preds = %entry
  %8 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1922
  %argnumber5 = getelementptr inbounds %struct.ppfs_t* %8, i32 0, i32 5, !dbg !1922
  %arrayidx6 = getelementptr inbounds [4 x i8]* %argnumber5, i32 0, i64 2, !dbg !1922
  %9 = load i8* %arrayidx6, align 1, !dbg !1922
  %conv7 = zext i8 %9 to i32, !dbg !1922
  %sub = sub nsw i32 %conv7, 1, !dbg !1922
  %10 = load %union.argvalue_t** %p, align 8, !dbg !1922
  %idx.ext8 = sext i32 %sub to i64, !dbg !1922
  %add.ptr9 = getelementptr inbounds %union.argvalue_t* %10, i64 %idx.ext8, !dbg !1922
  store %union.argvalue_t* %add.ptr9, %union.argvalue_t** %p, align 8, !dbg !1922
  br label %if.end, !dbg !1924

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !dbg !1925
  br label %for.cond, !dbg !1925

for.cond:                                         ; preds = %for.body, %if.end
  %11 = load i32* %i, align 4, !dbg !1925
  %12 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1925
  %num_data_args = getelementptr inbounds %struct.ppfs_t* %12, i32 0, i32 3, !dbg !1925
  %13 = load i32* %num_data_args, align 4, !dbg !1925
  %cmp10 = icmp slt i32 %11, %13, !dbg !1925
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1925

for.body:                                         ; preds = %for.cond
  %14 = load %union.argvalue_t** %p, align 8, !dbg !1927
  %incdec.ptr = getelementptr inbounds %union.argvalue_t* %14, i32 1, !dbg !1927
  store %union.argvalue_t* %incdec.ptr, %union.argvalue_t** %p, align 8, !dbg !1927
  %15 = bitcast %union.argvalue_t* %14 to i8*, !dbg !1927
  %16 = load i32* %i, align 4, !dbg !1927
  %idxprom = sext i32 %16 to i64, !dbg !1927
  %arrayidx12 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i64 %idxprom, !dbg !1927
  store i8* %15, i8** %arrayidx12, align 8, !dbg !1927
  %17 = load i32* %i, align 4, !dbg !1925
  %inc = add nsw i32 %17, 1, !dbg !1925
  store i32 %inc, i32* %i, align 4, !dbg !1925
  br label %for.cond, !dbg !1925

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %s, align 8, !dbg !1929
  %18 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1931
  %conv_num = getelementptr inbounds %struct.ppfs_t* %18, i32 0, i32 4, !dbg !1931
  %19 = load i32* %conv_num, align 4, !dbg !1931
  %cmp13 = icmp eq i32 %19, 0, !dbg !1931
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !1931

if.then15:                                        ; preds = %for.end
  %arraydecay16 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !1933
  %20 = load i8** %arraydecay16, align 8, !dbg !1933
  %21 = bitcast i8* %20 to i8**, !dbg !1933
  %22 = load i8** %21, align 8, !dbg !1933
  %23 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1933
  %info = getelementptr inbounds %struct.ppfs_t* %23, i32 0, i32 1, !dbg !1933
  %_flags = getelementptr inbounds %struct.printf_info.314* %info, i32 0, i32 3, !dbg !1933
  %24 = load i32* %_flags, align 4, !dbg !1933
  %and = and i32 %24, 3840, !dbg !1933
  %25 = load i32** %count.addr, align 8, !dbg !1933
  %26 = load i32* %25, align 4, !dbg !1933
  %conv17 = sext i32 %26 to i64, !dbg !1933
  call void @_store_inttype(i8* %22, i32 %and, i64 %conv17) #18, !dbg !1933
  store i32 0, i32* %retval, !dbg !1935
  br label %return, !dbg !1935

if.end18:                                         ; preds = %for.end
  %27 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1936
  %conv_num19 = getelementptr inbounds %struct.ppfs_t* %27, i32 0, i32 4, !dbg !1936
  %28 = load i32* %conv_num19, align 4, !dbg !1936
  %cmp20 = icmp ule i32 %28, 7, !dbg !1936
  br i1 %cmp20, label %if.then22, label %if.else179, !dbg !1936

if.then22:                                        ; preds = %if.end18
  store i32 87, i32* %alphacase, align 4, !dbg !1938
  %29 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1940
  %conv_num23 = getelementptr inbounds %struct.ppfs_t* %29, i32 0, i32 4, !dbg !1940
  %30 = load i32* %conv_num23, align 4, !dbg !1940
  %sub24 = sub i32 %30, 1, !dbg !1940
  %idxprom25 = sext i32 %sub24 to i64, !dbg !1940
  %arrayidx26 = getelementptr inbounds [7 x i8]* @_do_one_spec.spec_base, i32 0, i64 %idxprom25, !dbg !1940
  %31 = load i8* %arrayidx26, align 1, !dbg !1940
  %conv27 = sext i8 %31 to i32, !dbg !1940
  store i32 %conv27, i32* %base, align 4, !dbg !1940
  %cmp28 = icmp eq i32 %conv27, 10, !dbg !1940
  br i1 %cmp28, label %if.then30, label %if.end42, !dbg !1940

if.then30:                                        ; preds = %if.then22
  %32 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1942
  %info31 = getelementptr inbounds %struct.ppfs_t* %32, i32 0, i32 1, !dbg !1942
  %_flags32 = getelementptr inbounds %struct.printf_info.314* %info31, i32 0, i32 3, !dbg !1942
  %33 = load i32* %_flags32, align 4, !dbg !1942
  %and33 = and i32 %33, 32, !dbg !1942
  %tobool = icmp ne i32 %and33, 0, !dbg !1942
  br i1 %tobool, label %if.then34, label %if.end35, !dbg !1942

if.then34:                                        ; preds = %if.then30
  store i32 44, i32* %alphacase, align 4, !dbg !1945
  br label %if.end35, !dbg !1947

if.end35:                                         ; preds = %if.then34, %if.then30
  %34 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1948
  %info36 = getelementptr inbounds %struct.ppfs_t* %34, i32 0, i32 1, !dbg !1948
  %_flags37 = getelementptr inbounds %struct.printf_info.314* %info36, i32 0, i32 3, !dbg !1948
  %35 = load i32* %_flags37, align 4, !dbg !1948
  %and38 = and i32 %35, 64, !dbg !1948
  %tobool39 = icmp ne i32 %and38, 0, !dbg !1948
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !1948

if.then40:                                        ; preds = %if.end35
  %36 = load i32* %alphacase, align 4, !dbg !1950
  %or = or i32 %36, 128, !dbg !1950
  store i32 %or, i32* %alphacase, align 4, !dbg !1950
  br label %if.end42, !dbg !1952

if.end42:                                         ; preds = %if.end35, %if.then40, %if.then22
  %37 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1953
  %conv_num43 = getelementptr inbounds %struct.ppfs_t* %37, i32 0, i32 4, !dbg !1953
  %38 = load i32* %conv_num43, align 4, !dbg !1953
  %cmp44 = icmp ule i32 %38, 5, !dbg !1953
  br i1 %cmp44, label %if.then46, label %if.else57, !dbg !1953

if.then46:                                        ; preds = %if.end42
  %39 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1955
  %conv_num47 = getelementptr inbounds %struct.ppfs_t* %39, i32 0, i32 4, !dbg !1955
  %40 = load i32* %conv_num47, align 4, !dbg !1955
  %cmp48 = icmp eq i32 %40, 3, !dbg !1955
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1955

if.then50:                                        ; preds = %if.then46
  store i32 55, i32* %alphacase, align 4, !dbg !1958
  br label %if.end51, !dbg !1960

if.end51:                                         ; preds = %if.then50, %if.then46
  %41 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1961
  %conv_num52 = getelementptr inbounds %struct.ppfs_t* %41, i32 0, i32 4, !dbg !1961
  %42 = load i32* %conv_num52, align 4, !dbg !1961
  %cmp53 = icmp eq i32 %42, 1, !dbg !1961
  br i1 %cmp53, label %if.then55, label %if.end59, !dbg !1961

if.then55:                                        ; preds = %if.end51
  store i32 6, i32* %prefix_num, align 4, !dbg !1963
  br label %if.end59, !dbg !1965

if.else57:                                        ; preds = %if.end42
  %43 = load i32* %base, align 4, !dbg !1966
  %sub58 = sub nsw i32 0, %43, !dbg !1966
  store i32 %sub58, i32* %base, align 4, !dbg !1966
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end51, %if.else57
  %44 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1968
  %info60 = getelementptr inbounds %struct.ppfs_t* %44, i32 0, i32 1, !dbg !1968
  %prec = getelementptr inbounds %struct.printf_info.314* %info60, i32 0, i32 0, !dbg !1968
  %45 = load i32* %prec, align 4, !dbg !1968
  %cmp61 = icmp slt i32 %45, 0, !dbg !1968
  br i1 %cmp61, label %if.then63, label %if.end66, !dbg !1968

if.then63:                                        ; preds = %if.end59
  %46 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1970
  %info64 = getelementptr inbounds %struct.ppfs_t* %46, i32 0, i32 1, !dbg !1970
  %pad = getelementptr inbounds %struct.printf_info.314* %info64, i32 0, i32 4, !dbg !1970
  %47 = load i32* %pad, align 4, !dbg !1970
  %conv65 = trunc i32 %47 to i8, !dbg !1970
  store i8 %conv65, i8* %padchar, align 1, !dbg !1970
  br label %if.end66, !dbg !1972

if.end66:                                         ; preds = %if.then63, %if.end59
  %arraydecay67 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !1973
  %add.ptr68 = getelementptr inbounds i8* %arraydecay67, i64 128, !dbg !1973
  %add.ptr69 = getelementptr inbounds i8* %add.ptr68, i64 -1, !dbg !1973
  %48 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1974
  %conv_num70 = getelementptr inbounds %struct.ppfs_t* %48, i32 0, i32 4, !dbg !1974
  %49 = load i32* %conv_num70, align 4, !dbg !1974
  %cmp71 = icmp eq i32 %49, 1, !dbg !1974
  br i1 %cmp71, label %cond.end, label %cond.false, !dbg !1974

cond.false:                                       ; preds = %if.end66
  %50 = load i32** %argtype, align 8, !dbg !1974
  %51 = load i32* %50, align 4, !dbg !1974
  %and73 = and i32 %51, 3840, !dbg !1974
  br label %cond.end, !dbg !1974

cond.end:                                         ; preds = %if.end66, %cond.false
  %cond = phi i32 [ %and73, %cond.false ], [ 1024, %if.end66 ], !dbg !1974
  %arraydecay74 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !1974
  %52 = load i8** %arraydecay74, align 8, !dbg !1974
  %53 = load i32* %base, align 4, !dbg !1974
  %call75 = call i64 @_load_inttype(i32 %cond, i8* %52, i32 %53) #18, !dbg !1974
  %54 = load i32* %base, align 4, !dbg !1973
  %55 = load i32* %alphacase, align 4, !dbg !1973
  %call76 = call i8* @_uintmaxtostr(i8* %add.ptr69, i64 %call75, i32 %54, i32 %55) #18, !dbg !1973
  store i8* %call76, i8** %s, align 8, !dbg !1973
  %56 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1975
  %conv_num77 = getelementptr inbounds %struct.ppfs_t* %56, i32 0, i32 4, !dbg !1975
  %57 = load i32* %conv_num77, align 4, !dbg !1975
  %cmp78 = icmp ugt i32 %57, 5, !dbg !1975
  br i1 %cmp78, label %if.then80, label %if.end104, !dbg !1975

if.then80:                                        ; preds = %cond.end
  %58 = load i8** %s, align 8, !dbg !1977
  %59 = load i8* %58, align 1, !dbg !1977
  %conv81 = sext i8 %59 to i32, !dbg !1977
  %cmp82 = icmp eq i32 %conv81, 45, !dbg !1977
  %60 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1980
  %info85 = getelementptr inbounds %struct.ppfs_t* %60, i32 0, i32 1, !dbg !1980
  %_flags86 = getelementptr inbounds %struct.printf_info.314* %info85, i32 0, i32 3, !dbg !1980
  %61 = load i32* %_flags86, align 4, !dbg !1980
  br i1 %cmp82, label %if.then84, label %if.else89, !dbg !1977

if.then84:                                        ; preds = %if.then80
  %or87 = or i32 %61, 2, !dbg !1980
  store i32 %or87, i32* %_flags86, align 4, !dbg !1980
  %62 = load i8** %s, align 8, !dbg !1982
  %incdec.ptr88 = getelementptr inbounds i8* %62, i32 1, !dbg !1982
  store i8* %incdec.ptr88, i8** %s, align 8, !dbg !1982
  store i32 2, i32* %prefix_num, align 4, !dbg !1983
  br label %if.end104, !dbg !1984

if.else89:                                        ; preds = %if.then80
  %and92 = and i32 %61, 2, !dbg !1985
  %tobool93 = icmp ne i32 %and92, 0, !dbg !1985
  br i1 %tobool93, label %if.then94, label %if.else95, !dbg !1985

if.then94:                                        ; preds = %if.else89
  store i32 0, i32* %prefix_num, align 4, !dbg !1987
  br label %if.end104, !dbg !1989

if.else95:                                        ; preds = %if.else89
  %63 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1990
  %info96 = getelementptr inbounds %struct.ppfs_t* %63, i32 0, i32 1, !dbg !1990
  %_flags97 = getelementptr inbounds %struct.printf_info.314* %info96, i32 0, i32 3, !dbg !1990
  %64 = load i32* %_flags97, align 4, !dbg !1990
  %and98 = and i32 %64, 1, !dbg !1990
  %tobool99 = icmp ne i32 %and98, 0, !dbg !1990
  br i1 %tobool99, label %if.then100, label %if.end104, !dbg !1990

if.then100:                                       ; preds = %if.else95
  store i32 4, i32* %prefix_num, align 4, !dbg !1992
  br label %if.end104, !dbg !1994

if.end104:                                        ; preds = %if.then84, %if.else95, %if.then100, %if.then94, %cond.end
  %arraydecay105 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !1995
  %add.ptr106 = getelementptr inbounds i8* %arraydecay105, i64 128, !dbg !1995
  %add.ptr107 = getelementptr inbounds i8* %add.ptr106, i64 -1, !dbg !1995
  %65 = load i8** %s, align 8, !dbg !1995
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr107 to i64, !dbg !1995
  %sub.ptr.rhs.cast = ptrtoint i8* %65 to i64, !dbg !1995
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1995
  store i64 %sub.ptr.sub, i64* %slen, align 8, !dbg !1995
  %66 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1996
  %info108 = getelementptr inbounds %struct.ppfs_t* %66, i32 0, i32 1, !dbg !1996
  %prec109 = getelementptr inbounds %struct.printf_info.314* %info108, i32 0, i32 0, !dbg !1996
  %67 = load i32* %prec109, align 4, !dbg !1996
  %cmp110 = icmp slt i32 %67, 0, !dbg !1996
  br i1 %cmp110, label %cond.end116, label %cond.false113, !dbg !1996

cond.false113:                                    ; preds = %if.end104
  %68 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1996
  %info114 = getelementptr inbounds %struct.ppfs_t* %68, i32 0, i32 1, !dbg !1996
  %prec115 = getelementptr inbounds %struct.printf_info.314* %info114, i32 0, i32 0, !dbg !1996
  %69 = load i32* %prec115, align 4, !dbg !1996
  br label %cond.end116, !dbg !1996

cond.end116:                                      ; preds = %if.end104, %cond.false113
  %cond117 = phi i32 [ %69, %cond.false113 ], [ 1, %if.end104 ], !dbg !1996
  store i32 %cond117, i32* %numfill, align 4, !dbg !1996
  %70 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1997
  %info118 = getelementptr inbounds %struct.ppfs_t* %70, i32 0, i32 1, !dbg !1997
  %_flags119 = getelementptr inbounds %struct.printf_info.314* %info118, i32 0, i32 3, !dbg !1997
  %71 = load i32* %_flags119, align 4, !dbg !1997
  %and120 = and i32 %71, 16, !dbg !1997
  %tobool121 = icmp ne i32 %and120, 0, !dbg !1997
  br i1 %tobool121, label %if.then122, label %if.end149, !dbg !1997

if.then122:                                       ; preds = %cond.end116
  %72 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !1999
  %conv_num123 = getelementptr inbounds %struct.ppfs_t* %72, i32 0, i32 4, !dbg !1999
  %73 = load i32* %conv_num123, align 4, !dbg !1999
  %cmp124 = icmp ule i32 %73, 2, !dbg !1999
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !1999

if.then126:                                       ; preds = %if.then122
  store i32 6, i32* %prefix_num, align 4, !dbg !2002
  br label %if.end127, !dbg !2004

if.end127:                                        ; preds = %if.then126, %if.then122
  %74 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2005
  %conv_num128 = getelementptr inbounds %struct.ppfs_t* %74, i32 0, i32 4, !dbg !2005
  %75 = load i32* %conv_num128, align 4, !dbg !2005
  %cmp129 = icmp eq i32 %75, 3, !dbg !2005
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !2005

if.then131:                                       ; preds = %if.end127
  store i32 9, i32* %prefix_num, align 4, !dbg !2007
  br label %if.end132, !dbg !2009

if.end132:                                        ; preds = %if.then131, %if.end127
  %76 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2010
  %conv_num133 = getelementptr inbounds %struct.ppfs_t* %76, i32 0, i32 4, !dbg !2010
  %77 = load i32* %conv_num133, align 4, !dbg !2010
  %cmp134 = icmp eq i32 %77, 4, !dbg !2010
  br i1 %cmp134, label %land.lhs.true, label %if.end149, !dbg !2010

land.lhs.true:                                    ; preds = %if.end132
  %78 = load i32* %numfill, align 4, !dbg !2010
  %conv136 = sext i32 %78 to i64, !dbg !2010
  %79 = load i64* %slen, align 8, !dbg !2010
  %cmp137 = icmp ule i64 %conv136, %79, !dbg !2010
  br i1 %cmp137, label %if.then139, label %if.end149, !dbg !2010

if.then139:                                       ; preds = %land.lhs.true
  %80 = load i8** %s, align 8, !dbg !2012
  %81 = load i8* %80, align 1, !dbg !2012
  %conv140 = sext i8 %81 to i32, !dbg !2012
  %cmp141 = icmp eq i32 %conv140, 48, !dbg !2012
  br i1 %cmp141, label %cond.end145, label %cond.false144, !dbg !2012

cond.false144:                                    ; preds = %if.then139
  %82 = load i64* %slen, align 8, !dbg !2012
  %add = add i64 %82, 1, !dbg !2012
  br label %cond.end145, !dbg !2012

cond.end145:                                      ; preds = %if.then139, %cond.false144
  %cond146 = phi i64 [ %add, %cond.false144 ], [ 1, %if.then139 ], !dbg !2012
  %conv147 = trunc i64 %cond146 to i32, !dbg !2012
  store i32 %conv147, i32* %numfill, align 4, !dbg !2012
  br label %if.end149, !dbg !2014

if.end149:                                        ; preds = %if.end132, %land.lhs.true, %cond.end145, %cond.end116
  %83 = load i8** %s, align 8, !dbg !2015
  %84 = load i8* %83, align 1, !dbg !2015
  %conv150 = sext i8 %84 to i32, !dbg !2015
  %cmp151 = icmp eq i32 %conv150, 48, !dbg !2015
  br i1 %cmp151, label %if.then153, label %if.end168, !dbg !2015

if.then153:                                       ; preds = %if.end149
  %85 = load i32* %prefix_num, align 4, !dbg !2017
  %cmp154 = icmp sge i32 %85, 6, !dbg !2017
  br i1 %cmp154, label %if.then156, label %if.end157, !dbg !2017

if.then156:                                       ; preds = %if.then153
  store i32 11, i32* %prefix_num, align 4, !dbg !2020
  br label %if.end157, !dbg !2022

if.end157:                                        ; preds = %if.then156, %if.then153
  %86 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2023
  %conv_num158 = getelementptr inbounds %struct.ppfs_t* %86, i32 0, i32 4, !dbg !2023
  %87 = load i32* %conv_num158, align 4, !dbg !2023
  %cmp159 = icmp eq i32 %87, 1, !dbg !2023
  br i1 %cmp159, label %if.then161, label %if.else162, !dbg !2023

if.then161:                                       ; preds = %if.end157
  store i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i8** %s, align 8, !dbg !2025
  store i64 5, i64* %slen, align 8, !dbg !2027
  store i32 0, i32* %numfill, align 4, !dbg !2028
  br label %if.end168, !dbg !2029

if.else162:                                       ; preds = %if.end157
  %88 = load i32* %numfill, align 4, !dbg !2030
  %cmp163 = icmp eq i32 %88, 0, !dbg !2030
  br i1 %cmp163, label %if.then165, label %if.end168, !dbg !2030

if.then165:                                       ; preds = %if.else162
  store i64 0, i64* %slen, align 8, !dbg !2032
  br label %if.end168, !dbg !2034

if.end168:                                        ; preds = %if.then161, %if.then165, %if.else162, %if.end149
  %89 = load i32* %numfill, align 4, !dbg !2035
  %conv169 = sext i32 %89 to i64, !dbg !2035
  %90 = load i64* %slen, align 8, !dbg !2035
  %cmp170 = icmp ugt i64 %conv169, %90, !dbg !2035
  br i1 %cmp170, label %cond.true172, label %cond.end176, !dbg !2035

cond.true172:                                     ; preds = %if.end168
  %91 = load i32* %numfill, align 4, !dbg !2035
  %conv173 = sext i32 %91 to i64, !dbg !2035
  %92 = load i64* %slen, align 8, !dbg !2035
  %sub174 = sub i64 %conv173, %92, !dbg !2035
  br label %cond.end176, !dbg !2035

cond.end176:                                      ; preds = %if.end168, %cond.true172
  %cond177 = phi i64 [ %sub174, %cond.true172 ], [ 0, %if.end168 ], !dbg !2035
  %conv178 = trunc i64 %cond177 to i32, !dbg !2035
  store i32 %conv178, i32* %numfill, align 4, !dbg !2035
  br label %if.end279, !dbg !2036

if.else179:                                       ; preds = %if.end18
  %93 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2037
  %conv_num180 = getelementptr inbounds %struct.ppfs_t* %93, i32 0, i32 4, !dbg !2037
  %94 = load i32* %conv_num180, align 4, !dbg !2037
  %cmp181 = icmp ule i32 %94, 15, !dbg !2037
  br i1 %cmp181, label %if.then183, label %if.else204, !dbg !2037

if.then183:                                       ; preds = %if.else179
  %95 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2039
  %96 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2039
  %info184 = getelementptr inbounds %struct.ppfs_t* %96, i32 0, i32 1, !dbg !2039
  %_flags185 = getelementptr inbounds %struct.printf_info.314* %info184, i32 0, i32 3, !dbg !2039
  %97 = load i32* %_flags185, align 4, !dbg !2039
  %and186 = and i32 %97, 2048, !dbg !2039
  %tobool187 = icmp ne i32 %and186, 0, !dbg !2039
  %arraydecay189 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !2039
  %98 = load i8** %arraydecay189, align 8, !dbg !2039
  br i1 %tobool187, label %cond.true188, label %cond.false190, !dbg !2039

cond.true188:                                     ; preds = %if.then183
  %99 = bitcast i8* %98 to x86_fp80*, !dbg !2039
  %100 = load x86_fp80* %99, align 16, !dbg !2039
  br label %cond.end193, !dbg !2039

cond.false190:                                    ; preds = %if.then183
  %101 = bitcast i8* %98 to double*, !dbg !2039
  %102 = load double* %101, align 8, !dbg !2039
  %conv192 = fpext double %102 to x86_fp80, !dbg !2039
  br label %cond.end193, !dbg !2039

cond.end193:                                      ; preds = %cond.false190, %cond.true188
  %cond194 = phi x86_fp80 [ %100, %cond.true188 ], [ %conv192, %cond.false190 ], !dbg !2039
  %103 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2039
  %info195 = getelementptr inbounds %struct.ppfs_t* %103, i32 0, i32 1, !dbg !2039
  %call196 = call i64 bitcast (i64 (%struct.__STDIO_FILE_STRUCT.284*, x86_fp80, %struct.printf_info*, i64 (%struct.__STDIO_FILE_STRUCT.284*, i64, i64, i64)*)* @_fpmaxtostr to i64 (%struct.__STDIO_FILE_STRUCT.231*, x86_fp80, %struct.printf_info.314*, i64 
  store i64 %call196, i64* %nf, align 8, !dbg !2039
  %104 = load i64* %nf, align 8, !dbg !2041
  %cmp197 = icmp slt i64 %104, 0, !dbg !2041
  br i1 %cmp197, label %if.then199, label %if.end200, !dbg !2041

if.then199:                                       ; preds = %cond.end193
  store i32 -1, i32* %retval, !dbg !2043
  br label %return, !dbg !2043

if.end200:                                        ; preds = %cond.end193
  %105 = load i64* %nf, align 8, !dbg !2045
  %106 = load i32** %count.addr, align 8, !dbg !2045
  %107 = load i32* %106, align 4, !dbg !2045
  %conv201 = sext i32 %107 to i64, !dbg !2045
  %add202 = add nsw i64 %conv201, %105, !dbg !2045
  %conv203 = trunc i64 %add202 to i32, !dbg !2045
  store i32 %conv203, i32* %106, align 4, !dbg !2045
  store i32 0, i32* %retval, !dbg !2046
  br label %return, !dbg !2046

if.else204:                                       ; preds = %if.else179
  %108 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2047
  %conv_num205 = getelementptr inbounds %struct.ppfs_t* %108, i32 0, i32 4, !dbg !2047
  %109 = load i32* %conv_num205, align 4, !dbg !2047
  %cmp206 = icmp ule i32 %109, 17, !dbg !2047
  br i1 %cmp206, label %if.then208, label %if.else243, !dbg !2047

if.then208:                                       ; preds = %if.else204
  %__mask = getelementptr inbounds %struct.__mbstate_t.230* %mbstate, i32 0, i32 0, !dbg !2049
  store i32 0, i32* %__mask, align 4, !dbg !2049
  %110 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2051
  %conv_num209 = getelementptr inbounds %struct.ppfs_t* %110, i32 0, i32 4, !dbg !2051
  %111 = load i32* %conv_num209, align 4, !dbg !2051
  %cmp210 = icmp eq i32 %111, 17, !dbg !2051
  br i1 %cmp210, label %if.then212, label %if.else233, !dbg !2051

if.then212:                                       ; preds = %if.then208
  %arraydecay213 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !2053
  %112 = load i8** %arraydecay213, align 8, !dbg !2053
  %113 = bitcast i8* %112 to i32**, !dbg !2053
  %114 = load i32** %113, align 8, !dbg !2053
  store i32* %114, i32** %ws, align 8, !dbg !2053
  %tobool214 = icmp ne i32* %114, null, !dbg !2053
  br i1 %tobool214, label %if.end216, label %NULL_STRING, !dbg !2053

if.end216:                                        ; preds = %if.then212
  %115 = bitcast i32** %ws to i8*, !dbg !2056
  %116 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2056
  %info217 = getelementptr inbounds %struct.ppfs_t* %116, i32 0, i32 1, !dbg !2056
  %prec218 = getelementptr inbounds %struct.printf_info.314* %info217, i32 0, i32 0, !dbg !2056
  %117 = load i32* %prec218, align 4, !dbg !2056
  %cmp219 = icmp sge i32 %117, 0, !dbg !2056
  br i1 %cmp219, label %cond.true221, label %cond.end226, !dbg !2056

cond.true221:                                     ; preds = %if.end216
  %118 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2056
  %info222 = getelementptr inbounds %struct.ppfs_t* %118, i32 0, i32 1, !dbg !2056
  %prec223 = getelementptr inbounds %struct.printf_info.314* %info222, i32 0, i32 0, !dbg !2056
  %119 = load i32* %prec223, align 4, !dbg !2056
  %conv224 = sext i32 %119 to i64, !dbg !2056
  br label %cond.end226, !dbg !2056

cond.end226:                                      ; preds = %if.end216, %cond.true221
  %cond227 = phi i64 [ %conv224, %cond.true221 ], [ -1, %if.end216 ], !dbg !2056
  %call228 = call i64 @wcsrtombs(i8* %115, i32** %ws, i64 %cond227, %struct.__mbstate_t.230* %mbstate) #17, !dbg !2056
  store i64 %call228, i64* %slen, align 8, !dbg !2056
  %cmp229 = icmp eq i64 %call228, -1, !dbg !2056
  br i1 %cmp229, label %if.then231, label %if.end279, !dbg !2056

if.then231:                                       ; preds = %cond.end226
  store i32 -1, i32* %retval, !dbg !2058
  br label %return, !dbg !2058

if.else233:                                       ; preds = %if.then208
  %arraydecay234 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !2060
  store i8* %arraydecay234, i8** %s, align 8, !dbg !2060
  %120 = load i8** %s, align 8, !dbg !2062
  %arraydecay235 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !2062
  %121 = load i8** %arraydecay235, align 8, !dbg !2062
  %122 = bitcast i8* %121 to i32*, !dbg !2062
  %123 = load i32* %122, align 4, !dbg !2062
  %call236 = call i64 @wcrtomb(i8* %120, i32 %123, %struct.__mbstate_t.230* %mbstate) #17, !dbg !2062
  store i64 %call236, i64* %slen, align 8, !dbg !2062
  %124 = load i64* %slen, align 8, !dbg !2063
  %cmp237 = icmp eq i64 %124, -1, !dbg !2063
  br i1 %cmp237, label %if.then239, label %if.end240, !dbg !2063

if.then239:                                       ; preds = %if.else233
  store i32 -1, i32* %retval, !dbg !2065
  br label %return, !dbg !2065

if.end240:                                        ; preds = %if.else233
  %125 = load i64* %slen, align 8, !dbg !2067
  %126 = load i8** %s, align 8, !dbg !2067
  %arrayidx241 = getelementptr inbounds i8* %126, i64 %125, !dbg !2067
  store i8 0, i8* %arrayidx241, align 1, !dbg !2067
  br label %if.end279

if.else243:                                       ; preds = %if.else204
  %127 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2068
  %conv_num244 = getelementptr inbounds %struct.ppfs_t* %127, i32 0, i32 4, !dbg !2068
  %128 = load i32* %conv_num244, align 4, !dbg !2068
  %cmp245 = icmp ule i32 %128, 19, !dbg !2068
  br i1 %cmp245, label %if.then247, label %if.else275, !dbg !2068

if.then247:                                       ; preds = %if.else243
  %129 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2070
  %conv_num248 = getelementptr inbounds %struct.ppfs_t* %129, i32 0, i32 4, !dbg !2070
  %130 = load i32* %conv_num248, align 4, !dbg !2070
  %cmp249 = icmp eq i32 %130, 19, !dbg !2070
  br i1 %cmp249, label %if.then251, label %if.else269, !dbg !2070

if.then251:                                       ; preds = %if.then247
  %arraydecay252 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !2073
  %131 = load i8** %arraydecay252, align 8, !dbg !2073
  %132 = bitcast i8* %131 to i8**, !dbg !2073
  %133 = load i8** %132, align 8, !dbg !2073
  store i8* %133, i8** %s, align 8, !dbg !2073
  %134 = load i8** %s, align 8, !dbg !2075
  %tobool253 = icmp ne i8* %134, null, !dbg !2075
  br i1 %tobool253, label %if.then254, label %NULL_STRING, !dbg !2075

if.then254:                                       ; preds = %if.then251
  %135 = load i8** %s, align 8, !dbg !2077
  %136 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2077
  %info255 = getelementptr inbounds %struct.ppfs_t* %136, i32 0, i32 1, !dbg !2077
  %prec256 = getelementptr inbounds %struct.printf_info.314* %info255, i32 0, i32 0, !dbg !2077
  %137 = load i32* %prec256, align 4, !dbg !2077
  %cmp257 = icmp sge i32 %137, 0, !dbg !2077
  br i1 %cmp257, label %cond.true259, label %cond.end264, !dbg !2077

cond.true259:                                     ; preds = %if.then254
  %138 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2077
  %info260 = getelementptr inbounds %struct.ppfs_t* %138, i32 0, i32 1, !dbg !2077
  %prec261 = getelementptr inbounds %struct.printf_info.314* %info260, i32 0, i32 0, !dbg !2077
  %139 = load i32* %prec261, align 4, !dbg !2077
  %conv262 = sext i32 %139 to i64, !dbg !2077
  br label %cond.end264, !dbg !2077

cond.end264:                                      ; preds = %if.then254, %cond.true259
  %cond265 = phi i64 [ %conv262, %cond.true259 ], [ -1, %if.then254 ], !dbg !2077
  %call266 = call i64 @strnlen(i8* %135, i64 %cond265) #19, !dbg !2077
  store i64 %call266, i64* %slen, align 8, !dbg !2077
  br label %if.end279, !dbg !2079

NULL_STRING:                                      ; preds = %if.then251, %if.then212
  store i8* getelementptr inbounds ([7 x i8]* @.str121, i32 0, i32 0), i8** %s, align 8, !dbg !2080
  store i64 6, i64* %slen, align 8, !dbg !2082
  br label %if.end279

if.else269:                                       ; preds = %if.then247
  %arraydecay270 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !2083
  store i8* %arraydecay270, i8** %s, align 8, !dbg !2083
  %arraydecay271 = getelementptr inbounds [1 x i8*]* %argptr, i32 0, i32 0, !dbg !2085
  %140 = load i8** %arraydecay271, align 8, !dbg !2085
  %141 = bitcast i8* %140 to i32*, !dbg !2085
  %142 = load i32* %141, align 4, !dbg !2085
  %conv272 = trunc i32 %142 to i8, !dbg !2085
  %143 = load i8** %s, align 8, !dbg !2085
  store i8 %conv272, i8* %143, align 1, !dbg !2085
  %144 = load i8** %s, align 8, !dbg !2086
  %arrayidx273 = getelementptr inbounds i8* %144, i64 1, !dbg !2086
  store i8 0, i8* %arrayidx273, align 1, !dbg !2086
  store i64 1, i64* %slen, align 8, !dbg !2087
  br label %if.end279

if.else275:                                       ; preds = %if.else243
  store i32 -1, i32* %retval, !dbg !2088
  br label %return, !dbg !2088

if.end279:                                        ; preds = %cond.end264, %NULL_STRING, %if.else269, %if.end240, %cond.end226, %cond.end176
  %145 = load i64* %slen, align 8, !dbg !2090
  %146 = load i32* %numfill, align 4, !dbg !2090
  %conv280 = sext i32 %146 to i64, !dbg !2090
  %add281 = add i64 %145, %conv280, !dbg !2090
  store i64 %add281, i64* %t, align 8, !dbg !2090
  %147 = load i32* %prefix_num, align 4, !dbg !2092
  %cmp282 = icmp ne i32 %147, 11, !dbg !2092
  br i1 %cmp282, label %if.then284, label %if.end290, !dbg !2092

if.then284:                                       ; preds = %if.end279
  %148 = load i32* %prefix_num, align 4, !dbg !2094
  %cmp285 = icmp slt i32 %148, 6, !dbg !2094
  %cond287 = select i1 %cmp285, i32 1, i32 2, !dbg !2094
  %conv288 = sext i32 %cond287 to i64, !dbg !2094
  %149 = load i64* %t, align 8, !dbg !2094
  %add289 = add i64 %149, %conv288, !dbg !2094
  store i64 %add289, i64* %t, align 8, !dbg !2094
  br label %if.end290, !dbg !2096

if.end290:                                        ; preds = %if.then284, %if.end279
  %150 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2097
  %info291 = getelementptr inbounds %struct.ppfs_t* %150, i32 0, i32 1, !dbg !2097
  %width = getelementptr inbounds %struct.printf_info.314* %info291, i32 0, i32 1, !dbg !2097
  %151 = load i32* %width, align 4, !dbg !2097
  %conv292 = sext i32 %151 to i64, !dbg !2097
  %152 = load i64* %t, align 8, !dbg !2097
  %cmp293 = icmp ugt i64 %conv292, %152, !dbg !2097
  br i1 %cmp293, label %cond.true295, label %cond.end301, !dbg !2097

cond.true295:                                     ; preds = %if.end290
  %153 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2097
  %info296 = getelementptr inbounds %struct.ppfs_t* %153, i32 0, i32 1, !dbg !2097
  %width297 = getelementptr inbounds %struct.printf_info.314* %info296, i32 0, i32 1, !dbg !2097
  %154 = load i32* %width297, align 4, !dbg !2097
  %conv298 = sext i32 %154 to i64, !dbg !2097
  %155 = load i64* %t, align 8, !dbg !2097
  %sub299 = sub i64 %conv298, %155, !dbg !2097
  br label %cond.end301, !dbg !2097

cond.end301:                                      ; preds = %if.end290, %cond.true295
  %cond302 = phi i64 [ %sub299, %cond.true295 ], [ 0, %if.end290 ], !dbg !2097
  %conv303 = trunc i64 %cond302 to i32, !dbg !2097
  store i32 %conv303, i32* %numpad, align 4, !dbg !2097
  %156 = load i64* %t, align 8, !dbg !2098
  %157 = load i32* %numpad, align 4, !dbg !2098
  %conv304 = sext i32 %157 to i64, !dbg !2098
  %add305 = add i64 %156, %conv304, !dbg !2098
  %158 = load i32** %count.addr, align 8, !dbg !2098
  %159 = load i32* %158, align 4, !dbg !2098
  %conv306 = sext i32 %159 to i64, !dbg !2098
  %add307 = add i64 %conv306, %add305, !dbg !2098
  %conv308 = trunc i64 %add307 to i32, !dbg !2098
  store i32 %conv308, i32* %158, align 4, !dbg !2098
  %160 = load i8* %padchar, align 1, !dbg !2099
  %conv309 = sext i8 %160 to i32, !dbg !2099
  %cmp310 = icmp eq i32 %conv309, 48, !dbg !2099
  br i1 %cmp310, label %if.then312, label %if.end314, !dbg !2099

if.then312:                                       ; preds = %cond.end301
  %161 = load i32* %numpad, align 4, !dbg !2101
  %162 = load i32* %numfill, align 4, !dbg !2101
  %add313 = add nsw i32 %162, %161, !dbg !2101
  store i32 %add313, i32* %numfill, align 4, !dbg !2101
  store i32 0, i32* %numpad, align 4, !dbg !2103
  br label %if.end314, !dbg !2104

if.end314:                                        ; preds = %if.then312, %cond.end301
  %163 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2105
  %info315 = getelementptr inbounds %struct.ppfs_t* %163, i32 0, i32 1, !dbg !2105
  %_flags316 = getelementptr inbounds %struct.printf_info.314* %info315, i32 0, i32 3, !dbg !2105
  %164 = load i32* %_flags316, align 4, !dbg !2105
  %and317 = and i32 %164, 8, !dbg !2105
  %tobool318 = icmp ne i32 %and317, 0, !dbg !2105
  br i1 %tobool318, label %if.end327, label %if.then319, !dbg !2105

if.then319:                                       ; preds = %if.end314
  %165 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2107
  %166 = load i32* %numpad, align 4, !dbg !2107
  %conv320 = sext i32 %166 to i64, !dbg !2107
  %call321 = call i64 @_charpad(%struct.__STDIO_FILE_STRUCT.231* %165, i32 32, i64 %conv320) #18, !dbg !2107
  %167 = load i32* %numpad, align 4, !dbg !2107
  %conv322 = sext i32 %167 to i64, !dbg !2107
  %cmp323 = icmp ne i64 %call321, %conv322, !dbg !2107
  br i1 %cmp323, label %if.then325, label %if.end326, !dbg !2107

if.then325:                                       ; preds = %if.then319
  store i32 -1, i32* %retval, !dbg !2110
  br label %return, !dbg !2110

if.end326:                                        ; preds = %if.then319
  store i32 0, i32* %numpad, align 4, !dbg !2112
  br label %if.end327, !dbg !2113

if.end327:                                        ; preds = %if.end326, %if.end314
  %168 = load i32* %prefix_num, align 4, !dbg !2114
  %idx.ext328 = sext i32 %168 to i64, !dbg !2114
  %add.ptr329 = getelementptr inbounds i8* getelementptr inbounds ([12 x i8]* @_do_one_spec.prefix, i32 0, i32 0), i64 %idx.ext328, !dbg !2114
  %169 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2114
  %call330 = call i32 @fputs_unlocked(i8* %add.ptr329, %struct.__STDIO_FILE_STRUCT.231* %169) #18, !dbg !2114
  %170 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2115
  %171 = load i32* %numfill, align 4, !dbg !2115
  %conv331 = sext i32 %171 to i64, !dbg !2115
  %call332 = call i64 @_charpad(%struct.__STDIO_FILE_STRUCT.231* %170, i32 48, i64 %conv331) #18, !dbg !2115
  %172 = load i32* %numfill, align 4, !dbg !2115
  %conv333 = sext i32 %172 to i64, !dbg !2115
  %cmp334 = icmp ne i64 %call332, %conv333, !dbg !2115
  br i1 %cmp334, label %if.then336, label %if.end337, !dbg !2115

if.then336:                                       ; preds = %if.end327
  store i32 -1, i32* %retval, !dbg !2117
  br label %return, !dbg !2117

if.end337:                                        ; preds = %if.end327
  %173 = load i32** %ws, align 8, !dbg !2119
  %tobool338 = icmp ne i32* %173, null, !dbg !2119
  br i1 %tobool338, label %if.else351, label %if.then339, !dbg !2119

if.then339:                                       ; preds = %if.end337
  %174 = load i64* %slen, align 8, !dbg !2121
  %cmp340 = icmp ugt i64 %174, 0, !dbg !2121
  br i1 %cmp340, label %cond.true342, label %cond.end345, !dbg !2121

cond.true342:                                     ; preds = %if.then339
  %175 = load i8** %s, align 8, !dbg !2121
  %176 = load i64* %slen, align 8, !dbg !2121
  %177 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2121
  %call343 = call i64 @__stdio_fwrite(i8* %175, i64 %176, %struct.__STDIO_FILE_STRUCT.231* %177) #18, !dbg !2121
  br label %cond.end345, !dbg !2121

cond.end345:                                      ; preds = %if.then339, %cond.true342
  %cond346 = phi i64 [ %call343, %cond.true342 ], [ 0, %if.then339 ], !dbg !2121
  %178 = load i64* %slen, align 8, !dbg !2121
  %cmp347 = icmp ne i64 %cond346, %178, !dbg !2121
  br i1 %cmp347, label %if.then349, label %if.end376, !dbg !2121

if.then349:                                       ; preds = %cond.end345
  store i32 -1, i32* %retval, !dbg !2124
  br label %return, !dbg !2124

if.else351:                                       ; preds = %if.end337
  %__mask353 = getelementptr inbounds %struct.__mbstate_t.230* %mbstate, i32 0, i32 0, !dbg !2126
  store i32 0, i32* %__mask353, align 4, !dbg !2126
  br label %while.cond, !dbg !2128

while.cond:                                       ; preds = %if.end374, %if.else351
  %179 = load i64* %slen, align 8, !dbg !2128
  %tobool354 = icmp ne i64 %179, 0, !dbg !2128
  br i1 %tobool354, label %while.body, label %if.end376, !dbg !2128

while.body:                                       ; preds = %while.cond
  %180 = load i64* %slen, align 8, !dbg !2129
  %cmp355 = icmp ule i64 %180, 128, !dbg !2129
  %181 = load i64* %slen, align 8, !dbg !2129
  %cond360 = select i1 %cmp355, i64 %181, i64 128, !dbg !2129
  store i64 %cond360, i64* %t352, align 8, !dbg !2129
  %arraydecay361 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !2131
  %182 = load i64* %t352, align 8, !dbg !2131
  %call362 = call i64 @wcsrtombs(i8* %arraydecay361, i32** %ws, i64 %182, %struct.__mbstate_t.230* %mbstate) #17, !dbg !2131
  store i64 %call362, i64* %t352, align 8, !dbg !2131
  %183 = load i64* %t352, align 8, !dbg !2132
  %cmp363 = icmp ugt i64 %183, 0, !dbg !2132
  br i1 %cmp363, label %cond.true365, label %cond.end369, !dbg !2132

cond.true365:                                     ; preds = %while.body
  %arraydecay366 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !2132
  %184 = load i64* %t352, align 8, !dbg !2132
  %185 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2132
  %call367 = call i64 @__stdio_fwrite(i8* %arraydecay366, i64 %184, %struct.__STDIO_FILE_STRUCT.231* %185) #18, !dbg !2132
  br label %cond.end369, !dbg !2132

cond.end369:                                      ; preds = %while.body, %cond.true365
  %cond370 = phi i64 [ %call367, %cond.true365 ], [ 0, %while.body ], !dbg !2132
  %186 = load i64* %t352, align 8, !dbg !2132
  %cmp371 = icmp ne i64 %cond370, %186, !dbg !2132
  br i1 %cmp371, label %if.then373, label %if.end374, !dbg !2132

if.then373:                                       ; preds = %cond.end369
  store i32 -1, i32* %retval, !dbg !2134
  br label %return, !dbg !2134

if.end374:                                        ; preds = %cond.end369
  %187 = load i64* %t352, align 8, !dbg !2136
  %188 = load i64* %slen, align 8, !dbg !2136
  %sub375 = sub i64 %188, %187, !dbg !2136
  store i64 %sub375, i64* %slen, align 8, !dbg !2136
  br label %while.cond, !dbg !2137

if.end376:                                        ; preds = %while.cond, %cond.end345
  %189 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2138
  %190 = load i32* %numpad, align 4, !dbg !2138
  %conv377 = sext i32 %190 to i64, !dbg !2138
  %call378 = call i64 @_charpad(%struct.__STDIO_FILE_STRUCT.231* %189, i32 32, i64 %conv377) #18, !dbg !2138
  %191 = load i32* %numpad, align 4, !dbg !2138
  %conv379 = sext i32 %191 to i64, !dbg !2138
  %cmp380 = icmp ne i64 %call378, %conv379, !dbg !2138
  br i1 %cmp380, label %if.then382, label %if.end383, !dbg !2138

if.then382:                                       ; preds = %if.end376
  store i32 -1, i32* %retval, !dbg !2140
  br label %return, !dbg !2140

if.end383:                                        ; preds = %if.end376
  store i32 0, i32* %retval, !dbg !2142
  br label %return, !dbg !2142

return:                                           ; preds = %if.end383, %if.then382, %if.then373, %if.then349, %if.then336, %if.then325, %if.else275, %if.then239, %if.then231, %if.end200, %if.then199, %if.then15
  %192 = load i32* %retval, !dbg !2143
  ret i32 %192, !dbg !2143
}

; Function Attrs: nounwind uwtable
define internal i64 @_charpad(%struct.__STDIO_FILE_STRUCT.231* noalias %stream, i32 %padchar, i64 %numpad) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %padchar.addr = alloca i32, align 4
  %numpad.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %pad = alloca [1 x i8], align 1
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i32 %padchar, i32* %padchar.addr, align 4
  store i64 %numpad, i64* %numpad.addr, align 8
  %0 = load i64* %numpad.addr, align 8, !dbg !2144
  store i64 %0, i64* %todo, align 8, !dbg !2144
  %1 = load i32* %padchar.addr, align 4, !dbg !2145
  %conv = trunc i32 %1 to i8, !dbg !2145
  %arraydecay = getelementptr inbounds [1 x i8]* %pad, i32 0, i32 0, !dbg !2145
  store i8 %conv, i8* %arraydecay, align 1, !dbg !2145
  br label %while.cond, !dbg !2146

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %todo, align 8, !dbg !2146
  %tobool = icmp ne i64 %2, 0, !dbg !2146
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !2146

land.rhs:                                         ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1 x i8]* %pad, i32 0, i32 0, !dbg !2146
  %3 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2146
  %call = call i64 @__stdio_fwrite(i8* %arraydecay1, i64 1, %struct.__STDIO_FILE_STRUCT.231* %3) #18, !dbg !2146
  %cmp = icmp eq i64 %call, 1, !dbg !2146
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %4 = load i64* %todo, align 8, !dbg !2147
  %dec = add i64 %4, -1, !dbg !2147
  store i64 %dec, i64* %todo, align 8, !dbg !2147
  br label %while.cond, !dbg !2149

while.end:                                        ; preds = %while.cond, %land.rhs
  %5 = load i64* %numpad.addr, align 8, !dbg !2150
  %6 = load i64* %todo, align 8, !dbg !2150
  %sub = sub i64 %5, %6, !dbg !2150
  ret i64 %sub, !dbg !2150
}

; Function Attrs: nounwind uwtable
define internal i64 @_fp_out_narrow(%struct.__STDIO_FILE_STRUCT.231* %fp, i64 %type, i64 %len, i64 %buf) #0 {
entry:
  %retval = alloca i64, align 8
  %fp.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %type.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %buf.addr = alloca i64, align 8
  %r = alloca i64, align 8
  %buflen = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.231* %fp, %struct.__STDIO_FILE_STRUCT.231** %fp.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %buf, i64* %buf.addr, align 8
  store i64 0, i64* %r, align 8, !dbg !2151
  %0 = load i64* %type.addr, align 8, !dbg !2152
  %and = and i64 %0, 128, !dbg !2152
  %tobool = icmp ne i64 %and, 0, !dbg !2152
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2152

if.then:                                          ; preds = %entry
  %1 = load i64* %buf.addr, align 8, !dbg !2154
  %2 = inttoptr i64 %1 to i8*, !dbg !2154
  %call = call i64 @strlen(i8* %2) #19, !dbg !2154
  %conv = trunc i64 %call to i32, !dbg !2154
  store i32 %conv, i32* %buflen, align 4, !dbg !2154
  %3 = load i32* %buflen, align 4, !dbg !2156
  %conv1 = sext i32 %3 to i64, !dbg !2156
  %4 = load i64* %len.addr, align 8, !dbg !2156
  %sub = sub nsw i64 %4, %conv1, !dbg !2156
  store i64 %sub, i64* %len.addr, align 8, !dbg !2156
  %cmp = icmp sgt i64 %sub, 0, !dbg !2156
  br i1 %cmp, label %if.then3, label %if.end10, !dbg !2156

if.then3:                                         ; preds = %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.231** %fp.addr, align 8, !dbg !2158
  %6 = load i64* %type.addr, align 8, !dbg !2158
  %and4 = and i64 %6, 127, !dbg !2158
  %conv5 = trunc i64 %and4 to i32, !dbg !2158
  %7 = load i64* %len.addr, align 8, !dbg !2158
  %call6 = call i64 @_charpad(%struct.__STDIO_FILE_STRUCT.231* %5, i32 %conv5, i64 %7) #18, !dbg !2158
  store i64 %call6, i64* %r, align 8, !dbg !2158
  %8 = load i64* %len.addr, align 8, !dbg !2158
  %cmp7 = icmp ne i64 %call6, %8, !dbg !2158
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2158

if.then9:                                         ; preds = %if.then3
  %9 = load i64* %r, align 8, !dbg !2161
  store i64 %9, i64* %retval, !dbg !2161
  br label %return, !dbg !2161

if.end10:                                         ; preds = %if.then3, %if.then
  %10 = load i32* %buflen, align 4, !dbg !2163
  %conv11 = sext i32 %10 to i64, !dbg !2163
  store i64 %conv11, i64* %len.addr, align 8, !dbg !2163
  br label %if.end12, !dbg !2164

if.end12:                                         ; preds = %if.end10, %entry
  %11 = load i64* %r, align 8, !dbg !2165
  %12 = load i64* %len.addr, align 8, !dbg !2165
  %cmp13 = icmp sgt i64 %12, 0, !dbg !2165
  br i1 %cmp13, label %cond.true, label %cond.end, !dbg !2165

cond.true:                                        ; preds = %if.end12
  %13 = load i64* %buf.addr, align 8, !dbg !2165
  %14 = inttoptr i64 %13 to i8*, !dbg !2165
  %15 = load i64* %len.addr, align 8, !dbg !2165
  %16 = load %struct.__STDIO_FILE_STRUCT.231** %fp.addr, align 8, !dbg !2165
  %call15 = call i64 @__stdio_fwrite(i8* %14, i64 %15, %struct.__STDIO_FILE_STRUCT.231* %16) #18, !dbg !2165
  br label %cond.end, !dbg !2165

cond.end:                                         ; preds = %if.end12, %cond.true
  %cond = phi i64 [ %call15, %cond.true ], [ 0, %if.end12 ], !dbg !2165
  %add = add i64 %11, %cond, !dbg !2165
  store i64 %add, i64* %retval, !dbg !2165
  br label %return, !dbg !2165

return:                                           ; preds = %cond.end, %if.then9
  %17 = load i64* %retval, !dbg !2166
  ret i64 %17, !dbg !2166
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ppfs_init(%struct.ppfs_t* %ppfs, i8* %fmt0) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfs.addr = alloca %struct.ppfs_t*, align 8
  %fmt0.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  %p = alloca i32*, align 8
  %fmt = alloca i8*, align 8
  store %struct.ppfs_t* %ppfs, %struct.ppfs_t** %ppfs.addr, align 8
  store i8* %fmt0, i8** %fmt0.addr, align 8
  %0 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2167
  %1 = bitcast %struct.ppfs_t* %0 to i8*, !dbg !2167
  %call = call i8* @memset(i8* %1, i32 0, i64 256) #17, !dbg !2167
  %2 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2168
  %maxposarg = getelementptr inbounds %struct.ppfs_t* %2, i32 0, i32 2, !dbg !2168
  %3 = load i32* %maxposarg, align 4, !dbg !2168
  %dec = add nsw i32 %3, -1, !dbg !2168
  store i32 %dec, i32* %maxposarg, align 4, !dbg !2168
  %4 = load i8** %fmt0.addr, align 8, !dbg !2169
  %5 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2169
  %fmtpos = getelementptr inbounds %struct.ppfs_t* %5, i32 0, i32 0, !dbg !2169
  store i8* %4, i8** %fmtpos, align 8, !dbg !2169
  %6 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2170
  %argtype = getelementptr inbounds %struct.ppfs_t* %6, i32 0, i32 6, !dbg !2170
  %arraydecay = getelementptr inbounds [9 x i32]* %argtype, i32 0, i32 0, !dbg !2170
  store i32* %arraydecay, i32** %p, align 8, !dbg !2170
  store i32 9, i32* %r, align 4, !dbg !2172
  br label %do.body, !dbg !2173

do.body:                                          ; preds = %do.body, %entry
  %7 = load i32** %p, align 8, !dbg !2174
  %incdec.ptr = getelementptr inbounds i32* %7, i32 1, !dbg !2174
  store i32* %incdec.ptr, i32** %p, align 8, !dbg !2174
  store i32 8, i32* %7, align 4, !dbg !2174
  %8 = load i32* %r, align 4, !dbg !2176
  %dec1 = add nsw i32 %8, -1, !dbg !2176
  store i32 %dec1, i32* %r, align 4, !dbg !2176
  %tobool = icmp ne i32 %dec1, 0, !dbg !2176
  br i1 %tobool, label %do.body, label %do.end, !dbg !2176

do.end:                                           ; preds = %do.body
  %9 = load i8** %fmt0.addr, align 8, !dbg !2177
  store i8* %9, i8** %fmt, align 8, !dbg !2177
  br label %while.cond, !dbg !2179

while.cond:                                       ; preds = %if.end, %if.else, %do.end
  %10 = load i8** %fmt, align 8, !dbg !2179
  %11 = load i8* %10, align 1, !dbg !2179
  %tobool2 = icmp ne i8 %11, 0, !dbg !2179
  br i1 %tobool2, label %while.body, label %while.end, !dbg !2179

while.body:                                       ; preds = %while.cond
  %12 = load i8** %fmt, align 8, !dbg !2180
  %13 = load i8* %12, align 1, !dbg !2180
  %conv = sext i8 %13 to i32, !dbg !2180
  %cmp = icmp eq i32 %conv, 37, !dbg !2180
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2180

land.lhs.true:                                    ; preds = %while.body
  %14 = load i8** %fmt, align 8, !dbg !2180
  %incdec.ptr4 = getelementptr inbounds i8* %14, i32 1, !dbg !2180
  store i8* %incdec.ptr4, i8** %fmt, align 8, !dbg !2180
  %15 = load i8* %incdec.ptr4, align 1, !dbg !2180
  %conv5 = sext i8 %15 to i32, !dbg !2180
  %cmp6 = icmp ne i32 %conv5, 37, !dbg !2180
  br i1 %cmp6, label %if.then, label %if.else, !dbg !2180

if.then:                                          ; preds = %land.lhs.true
  %16 = load i8** %fmt, align 8, !dbg !2183
  %17 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2183
  %fmtpos8 = getelementptr inbounds %struct.ppfs_t* %17, i32 0, i32 0, !dbg !2183
  store i8* %16, i8** %fmtpos8, align 8, !dbg !2183
  %18 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2185
  %call9 = call i32 @_ppfs_parsespec(%struct.ppfs_t* %18) #18, !dbg !2185
  store i32 %call9, i32* %r, align 4, !dbg !2185
  %cmp10 = icmp slt i32 %call9, 0, !dbg !2185
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !2185

if.then12:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !2187
  br label %return, !dbg !2187

if.end:                                           ; preds = %if.then
  %19 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2189
  %fmtpos13 = getelementptr inbounds %struct.ppfs_t* %19, i32 0, i32 0, !dbg !2189
  %20 = load i8** %fmtpos13, align 8, !dbg !2189
  store i8* %20, i8** %fmt, align 8, !dbg !2189
  br label %while.cond, !dbg !2190

if.else:                                          ; preds = %land.lhs.true, %while.body
  %21 = load i8** %fmt, align 8, !dbg !2191
  %incdec.ptr14 = getelementptr inbounds i8* %21, i32 1, !dbg !2191
  store i8* %incdec.ptr14, i8** %fmt, align 8, !dbg !2191
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i8** %fmt0.addr, align 8, !dbg !2193
  %23 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2193
  %fmtpos16 = getelementptr inbounds %struct.ppfs_t* %23, i32 0, i32 0, !dbg !2193
  store i8* %22, i8** %fmtpos16, align 8, !dbg !2193
  store i32 0, i32* %retval, !dbg !2194
  br label %return, !dbg !2194

return:                                           ; preds = %while.end, %if.then12
  %24 = load i32* %retval, !dbg !2195
  ret i32 %24, !dbg !2195
}

; Function Attrs: nounwind uwtable
define hidden void @_ppfs_prepargs(%struct.ppfs_t* %ppfs, %struct.__va_list_tag.232* %arg) #0 {
entry:
  %ppfs.addr = alloca %struct.ppfs_t*, align 8
  %arg.addr = alloca %struct.__va_list_tag.232*, align 8
  %i = alloca i32, align 4
  store %struct.ppfs_t* %ppfs, %struct.ppfs_t** %ppfs.addr, align 8
  store %struct.__va_list_tag.232* %arg, %struct.__va_list_tag.232** %arg.addr, align 8
  %0 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2196
  %arg1 = getelementptr inbounds %struct.ppfs_t* %0, i32 0, i32 7, !dbg !2196
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg1, i32 0, i32 0, !dbg !2196
  %1 = load %struct.__va_list_tag.232** %arg.addr, align 8, !dbg !2196
  %2 = bitcast %struct.__va_list_tag.232* %arraydecay to i8*, !dbg !2196
  %3 = bitcast %struct.__va_list_tag.232* %1 to i8*, !dbg !2196
  %vacopy.cast.dst = bitcast i8* %2 to i64*
  %vacopy.cast.src = bitcast i8* %3 to i64*
  %4 = load i64* %vacopy.cast.src
  store i64 %4, i64* %vacopy.cast.dst
  %5 = getelementptr i64* %vacopy.cast.dst, i64 1
  %6 = getelementptr i64* %vacopy.cast.src, i64 1
  %7 = load i64* %6
  store i64 %7, i64* %5
  %8 = getelementptr i64* %5, i64 1
  %9 = getelementptr i64* %6, i64 1
  %10 = load i64* %9
  store i64 %10, i64* %8
  %11 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2197
  %maxposarg = getelementptr inbounds %struct.ppfs_t* %11, i32 0, i32 2, !dbg !2197
  %12 = load i32* %maxposarg, align 4, !dbg !2197
  store i32 %12, i32* %i, align 4, !dbg !2197
  %cmp = icmp sgt i32 %12, 0, !dbg !2197
  br i1 %cmp, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  %13 = load i32* %i, align 4, !dbg !2199
  %14 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2199
  %num_data_args = getelementptr inbounds %struct.ppfs_t* %14, i32 0, i32 3, !dbg !2199
  store i32 %13, i32* %num_data_args, align 4, !dbg !2199
  %15 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2201
  %maxposarg2 = getelementptr inbounds %struct.ppfs_t* %15, i32 0, i32 2, !dbg !2201
  store i32 0, i32* %maxposarg2, align 4, !dbg !2201
  %16 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2201
  %info = getelementptr inbounds %struct.ppfs_t* %16, i32 0, i32 1, !dbg !2201
  %prec = getelementptr inbounds %struct.printf_info.314* %info, i32 0, i32 0, !dbg !2201
  store i32 0, i32* %prec, align 4, !dbg !2201
  %17 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2201
  %info3 = getelementptr inbounds %struct.ppfs_t* %17, i32 0, i32 1, !dbg !2201
  %width = getelementptr inbounds %struct.printf_info.314* %info3, i32 0, i32 1, !dbg !2201
  store i32 0, i32* %width, align 4, !dbg !2201
  %18 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2202
  call void @_ppfs_setargs(%struct.ppfs_t* %18) #18, !dbg !2202
  %19 = load i32* %i, align 4, !dbg !2203
  %20 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2203
  %maxposarg4 = getelementptr inbounds %struct.ppfs_t* %20, i32 0, i32 2, !dbg !2203
  store i32 %19, i32* %maxposarg4, align 4, !dbg !2203
  br label %if.end, !dbg !2204

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2205
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define hidden void @_ppfs_setargs(%struct.ppfs_t* %ppfs) #0 {
entry:
  %ppfs.addr = alloca %struct.ppfs_t*, align 8
  %p = alloca %union.argvalue_t*, align 8
  %i = alloca i32, align 4
  store %struct.ppfs_t* %ppfs, %struct.ppfs_t** %ppfs.addr, align 8
  %0 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2206
  %argvalue = getelementptr inbounds %struct.ppfs_t* %0, i32 0, i32 8, !dbg !2206
  %arraydecay = getelementptr inbounds [9 x %union.argvalue_t]* %argvalue, i32 0, i32 0, !dbg !2206
  store %union.argvalue_t* %arraydecay, %union.argvalue_t** %p, align 8, !dbg !2206
  %1 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2207
  %maxposarg = getelementptr inbounds %struct.ppfs_t* %1, i32 0, i32 2, !dbg !2207
  %2 = load i32* %maxposarg, align 4, !dbg !2207
  %cmp = icmp eq i32 %2, 0, !dbg !2207
  %3 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2209
  %info = getelementptr inbounds %struct.ppfs_t* %3, i32 0, i32 1, !dbg !2209
  %width = getelementptr inbounds %struct.printf_info.314* %info, i32 0, i32 1, !dbg !2209
  %4 = load i32* %width, align 4, !dbg !2209
  %cmp1 = icmp eq i32 %4, -2147483648, !dbg !2209
  br i1 %cmp, label %if.then, label %if.else, !dbg !2207

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2209

if.then2:                                         ; preds = %if.then
  %5 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2212
  %arg = getelementptr inbounds %struct.ppfs_t* %5, i32 0, i32 7, !dbg !2212
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg, i32 0, i32 0, !dbg !2212
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay3, i32 0, i32 0, !dbg !2212
  %gp_offset = load i32* %gp_offset_p, !dbg !2212
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !2212
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2212

vaarg.in_reg:                                     ; preds = %if.then2
  %6 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay3, i32 0, i32 3, !dbg !2212
  %reg_save_area = load i8** %6, !dbg !2212
  %7 = getelementptr i8* %reg_save_area, i32 %gp_offset, !dbg !2212
  %8 = bitcast i8* %7 to i32*, !dbg !2212
  %9 = add i32 %gp_offset, 8, !dbg !2212
  store i32 %9, i32* %gp_offset_p, !dbg !2212
  br label %vaarg.end, !dbg !2212

vaarg.in_mem:                                     ; preds = %if.then2
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay3, i32 0, i32 2, !dbg !2212
  %overflow_arg_area = load i8** %overflow_arg_area_p, !dbg !2212
  %10 = bitcast i8* %overflow_arg_area to i32*, !dbg !2212
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8, !dbg !2212
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !2212
  br label %vaarg.end, !dbg !2212

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ], !dbg !2212
  %11 = load i32* %vaarg.addr, !dbg !2212
  %12 = load %union.argvalue_t** %p, align 8, !dbg !2212
  %u = bitcast %union.argvalue_t* %12 to i32*, !dbg !2212
  store i32 %11, i32* %u, align 4, !dbg !2212
  %13 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2212
  %info4 = getelementptr inbounds %struct.ppfs_t* %13, i32 0, i32 1, !dbg !2212
  %width5 = getelementptr inbounds %struct.printf_info.314* %info4, i32 0, i32 1, !dbg !2212
  store i32 %11, i32* %width5, align 4, !dbg !2212
  br label %if.end, !dbg !2214

if.end:                                           ; preds = %vaarg.end, %if.then
  %14 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2215
  %info6 = getelementptr inbounds %struct.ppfs_t* %14, i32 0, i32 1, !dbg !2215
  %prec = getelementptr inbounds %struct.printf_info.314* %info6, i32 0, i32 0, !dbg !2215
  %15 = load i32* %prec, align 4, !dbg !2215
  %cmp7 = icmp eq i32 %15, -2147483648, !dbg !2215
  br i1 %cmp7, label %if.then8, label %if.end25, !dbg !2215

if.then8:                                         ; preds = %if.end
  %16 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2217
  %arg9 = getelementptr inbounds %struct.ppfs_t* %16, i32 0, i32 7, !dbg !2217
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg9, i32 0, i32 0, !dbg !2217
  %gp_offset_p11 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay10, i32 0, i32 0, !dbg !2217
  %gp_offset12 = load i32* %gp_offset_p11, !dbg !2217
  %fits_in_gp13 = icmp ule i32 %gp_offset12, 40, !dbg !2217
  br i1 %fits_in_gp13, label %vaarg.in_reg14, label %vaarg.in_mem16, !dbg !2217

vaarg.in_reg14:                                   ; preds = %if.then8
  %17 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay10, i32 0, i32 3, !dbg !2217
  %reg_save_area15 = load i8** %17, !dbg !2217
  %18 = getelementptr i8* %reg_save_area15, i32 %gp_offset12, !dbg !2217
  %19 = bitcast i8* %18 to i32*, !dbg !2217
  %20 = add i32 %gp_offset12, 8, !dbg !2217
  store i32 %20, i32* %gp_offset_p11, !dbg !2217
  br label %vaarg.end20, !dbg !2217

vaarg.in_mem16:                                   ; preds = %if.then8
  %overflow_arg_area_p17 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay10, i32 0, i32 2, !dbg !2217
  %overflow_arg_area18 = load i8** %overflow_arg_area_p17, !dbg !2217
  %21 = bitcast i8* %overflow_arg_area18 to i32*, !dbg !2217
  %overflow_arg_area.next19 = getelementptr i8* %overflow_arg_area18, i32 8, !dbg !2217
  store i8* %overflow_arg_area.next19, i8** %overflow_arg_area_p17, !dbg !2217
  br label %vaarg.end20, !dbg !2217

vaarg.end20:                                      ; preds = %vaarg.in_mem16, %vaarg.in_reg14
  %vaarg.addr21 = phi i32* [ %19, %vaarg.in_reg14 ], [ %21, %vaarg.in_mem16 ], !dbg !2217
  %22 = load i32* %vaarg.addr21, !dbg !2217
  %23 = load %union.argvalue_t** %p, align 8, !dbg !2217
  %u22 = bitcast %union.argvalue_t* %23 to i32*, !dbg !2217
  store i32 %22, i32* %u22, align 4, !dbg !2217
  %24 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2217
  %info23 = getelementptr inbounds %struct.ppfs_t* %24, i32 0, i32 1, !dbg !2217
  %prec24 = getelementptr inbounds %struct.printf_info.314* %info23, i32 0, i32 0, !dbg !2217
  store i32 %22, i32* %prec24, align 4, !dbg !2217
  br label %if.end25, !dbg !2219

if.end25:                                         ; preds = %vaarg.end20, %if.end
  store i32 0, i32* %i, align 4, !dbg !2220
  br label %while.cond, !dbg !2221

while.cond:                                       ; preds = %while.body, %sw.epilog, %if.end25
  %25 = load i32* %i, align 4, !dbg !2221
  %26 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2221
  %num_data_args = getelementptr inbounds %struct.ppfs_t* %26, i32 0, i32 3, !dbg !2221
  %27 = load i32* %num_data_args, align 4, !dbg !2221
  %cmp26 = icmp slt i32 %25, %27, !dbg !2221
  br i1 %cmp26, label %while.body, label %if.end141, !dbg !2221

while.body:                                       ; preds = %while.cond
  %28 = load i32* %i, align 4, !dbg !2222
  %inc = add nsw i32 %28, 1, !dbg !2222
  store i32 %inc, i32* %i, align 4, !dbg !2222
  %idxprom = sext i32 %28 to i64, !dbg !2222
  %29 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2222
  %argtype = getelementptr inbounds %struct.ppfs_t* %29, i32 0, i32 6, !dbg !2222
  %arrayidx = getelementptr inbounds [9 x i32]* %argtype, i32 0, i64 %idxprom, !dbg !2222
  %30 = load i32* %arrayidx, align 4, !dbg !2222
  switch i32 %30, label %sw.bb100 [
    i32 2048, label %sw.bb
    i32 1024, label %sw.bb40
    i32 1, label %sw.bb54
    i32 256, label %sw.bb54
    i32 512, label %sw.bb54
    i32 0, label %sw.bb54
    i32 2, label %sw.bb69
    i32 7, label %sw.bb83
    i32 2055, label %sw.bb94
    i32 8, label %while.cond
  ], !dbg !2222

sw.bb:                                            ; preds = %while.body
  %31 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2224
  %arg27 = getelementptr inbounds %struct.ppfs_t* %31, i32 0, i32 7, !dbg !2224
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg27, i32 0, i32 0, !dbg !2224
  %gp_offset_p29 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay28, i32 0, i32 0, !dbg !2224
  %gp_offset30 = load i32* %gp_offset_p29, !dbg !2224
  %fits_in_gp31 = icmp ule i32 %gp_offset30, 40, !dbg !2224
  br i1 %fits_in_gp31, label %vaarg.in_reg32, label %vaarg.in_mem34, !dbg !2224

vaarg.in_reg32:                                   ; preds = %sw.bb
  %32 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay28, i32 0, i32 3, !dbg !2224
  %reg_save_area33 = load i8** %32, !dbg !2224
  %33 = getelementptr i8* %reg_save_area33, i32 %gp_offset30, !dbg !2224
  %34 = bitcast i8* %33 to i64*, !dbg !2224
  %35 = add i32 %gp_offset30, 8, !dbg !2224
  store i32 %35, i32* %gp_offset_p29, !dbg !2224
  br label %vaarg.end38, !dbg !2224

vaarg.in_mem34:                                   ; preds = %sw.bb
  %overflow_arg_area_p35 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay28, i32 0, i32 2, !dbg !2224
  %overflow_arg_area36 = load i8** %overflow_arg_area_p35, !dbg !2224
  %36 = bitcast i8* %overflow_arg_area36 to i64*, !dbg !2224
  %overflow_arg_area.next37 = getelementptr i8* %overflow_arg_area36, i32 8, !dbg !2224
  store i8* %overflow_arg_area.next37, i8** %overflow_arg_area_p35, !dbg !2224
  br label %vaarg.end38, !dbg !2224

vaarg.end38:                                      ; preds = %vaarg.in_mem34, %vaarg.in_reg32
  %vaarg.addr39 = phi i64* [ %34, %vaarg.in_reg32 ], [ %36, %vaarg.in_mem34 ], !dbg !2224
  %37 = load i64* %vaarg.addr39, !dbg !2224
  %38 = load %union.argvalue_t** %p, align 8, !dbg !2224
  %ull = bitcast %union.argvalue_t* %38 to i64*, !dbg !2224
  store i64 %37, i64* %ull, align 8, !dbg !2224
  br label %sw.epilog, !dbg !2226

sw.bb40:                                          ; preds = %while.body
  %39 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2227
  %arg41 = getelementptr inbounds %struct.ppfs_t* %39, i32 0, i32 7, !dbg !2227
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg41, i32 0, i32 0, !dbg !2227
  %gp_offset_p43 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay42, i32 0, i32 0, !dbg !2227
  %gp_offset44 = load i32* %gp_offset_p43, !dbg !2227
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40, !dbg !2227
  br i1 %fits_in_gp45, label %vaarg.in_reg46, label %vaarg.in_mem48, !dbg !2227

vaarg.in_reg46:                                   ; preds = %sw.bb40
  %40 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay42, i32 0, i32 3, !dbg !2227
  %reg_save_area47 = load i8** %40, !dbg !2227
  %41 = getelementptr i8* %reg_save_area47, i32 %gp_offset44, !dbg !2227
  %42 = bitcast i8* %41 to i64*, !dbg !2227
  %43 = add i32 %gp_offset44, 8, !dbg !2227
  store i32 %43, i32* %gp_offset_p43, !dbg !2227
  br label %vaarg.end52, !dbg !2227

vaarg.in_mem48:                                   ; preds = %sw.bb40
  %overflow_arg_area_p49 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay42, i32 0, i32 2, !dbg !2227
  %overflow_arg_area50 = load i8** %overflow_arg_area_p49, !dbg !2227
  %44 = bitcast i8* %overflow_arg_area50 to i64*, !dbg !2227
  %overflow_arg_area.next51 = getelementptr i8* %overflow_arg_area50, i32 8, !dbg !2227
  store i8* %overflow_arg_area.next51, i8** %overflow_arg_area_p49, !dbg !2227
  br label %vaarg.end52, !dbg !2227

vaarg.end52:                                      ; preds = %vaarg.in_mem48, %vaarg.in_reg46
  %vaarg.addr53 = phi i64* [ %42, %vaarg.in_reg46 ], [ %44, %vaarg.in_mem48 ], !dbg !2227
  %45 = load i64* %vaarg.addr53, !dbg !2227
  %46 = load %union.argvalue_t** %p, align 8, !dbg !2227
  %ul = bitcast %union.argvalue_t* %46 to i64*, !dbg !2227
  store i64 %45, i64* %ul, align 8, !dbg !2227
  br label %sw.epilog, !dbg !2228

sw.bb54:                                          ; preds = %while.body, %while.body, %while.body, %while.body
  %47 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2229
  %arg55 = getelementptr inbounds %struct.ppfs_t* %47, i32 0, i32 7, !dbg !2229
  %arraydecay56 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg55, i32 0, i32 0, !dbg !2229
  %gp_offset_p57 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay56, i32 0, i32 0, !dbg !2229
  %gp_offset58 = load i32* %gp_offset_p57, !dbg !2229
  %fits_in_gp59 = icmp ule i32 %gp_offset58, 40, !dbg !2229
  br i1 %fits_in_gp59, label %vaarg.in_reg60, label %vaarg.in_mem62, !dbg !2229

vaarg.in_reg60:                                   ; preds = %sw.bb54
  %48 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay56, i32 0, i32 3, !dbg !2229
  %reg_save_area61 = load i8** %48, !dbg !2229
  %49 = getelementptr i8* %reg_save_area61, i32 %gp_offset58, !dbg !2229
  %50 = bitcast i8* %49 to i32*, !dbg !2229
  %51 = add i32 %gp_offset58, 8, !dbg !2229
  store i32 %51, i32* %gp_offset_p57, !dbg !2229
  br label %vaarg.end66, !dbg !2229

vaarg.in_mem62:                                   ; preds = %sw.bb54
  %overflow_arg_area_p63 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay56, i32 0, i32 2, !dbg !2229
  %overflow_arg_area64 = load i8** %overflow_arg_area_p63, !dbg !2229
  %52 = bitcast i8* %overflow_arg_area64 to i32*, !dbg !2229
  %overflow_arg_area.next65 = getelementptr i8* %overflow_arg_area64, i32 8, !dbg !2229
  store i8* %overflow_arg_area.next65, i8** %overflow_arg_area_p63, !dbg !2229
  br label %vaarg.end66, !dbg !2229

vaarg.end66:                                      ; preds = %vaarg.in_mem62, %vaarg.in_reg60
  %vaarg.addr67 = phi i32* [ %50, %vaarg.in_reg60 ], [ %52, %vaarg.in_mem62 ], !dbg !2229
  %53 = load i32* %vaarg.addr67, !dbg !2229
  %54 = load %union.argvalue_t** %p, align 8, !dbg !2229
  %u68 = bitcast %union.argvalue_t* %54 to i32*, !dbg !2229
  store i32 %53, i32* %u68, align 4, !dbg !2229
  br label %sw.epilog, !dbg !2230

sw.bb69:                                          ; preds = %while.body
  %55 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2231
  %arg70 = getelementptr inbounds %struct.ppfs_t* %55, i32 0, i32 7, !dbg !2231
  %arraydecay71 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg70, i32 0, i32 0, !dbg !2231
  %gp_offset_p72 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay71, i32 0, i32 0, !dbg !2231
  %gp_offset73 = load i32* %gp_offset_p72, !dbg !2231
  %fits_in_gp74 = icmp ule i32 %gp_offset73, 40, !dbg !2231
  br i1 %fits_in_gp74, label %vaarg.in_reg75, label %vaarg.in_mem77, !dbg !2231

vaarg.in_reg75:                                   ; preds = %sw.bb69
  %56 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay71, i32 0, i32 3, !dbg !2231
  %reg_save_area76 = load i8** %56, !dbg !2231
  %57 = getelementptr i8* %reg_save_area76, i32 %gp_offset73, !dbg !2231
  %58 = bitcast i8* %57 to i32*, !dbg !2231
  %59 = add i32 %gp_offset73, 8, !dbg !2231
  store i32 %59, i32* %gp_offset_p72, !dbg !2231
  br label %vaarg.end81, !dbg !2231

vaarg.in_mem77:                                   ; preds = %sw.bb69
  %overflow_arg_area_p78 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay71, i32 0, i32 2, !dbg !2231
  %overflow_arg_area79 = load i8** %overflow_arg_area_p78, !dbg !2231
  %60 = bitcast i8* %overflow_arg_area79 to i32*, !dbg !2231
  %overflow_arg_area.next80 = getelementptr i8* %overflow_arg_area79, i32 8, !dbg !2231
  store i8* %overflow_arg_area.next80, i8** %overflow_arg_area_p78, !dbg !2231
  br label %vaarg.end81, !dbg !2231

vaarg.end81:                                      ; preds = %vaarg.in_mem77, %vaarg.in_reg75
  %vaarg.addr82 = phi i32* [ %58, %vaarg.in_reg75 ], [ %60, %vaarg.in_mem77 ], !dbg !2231
  %61 = load i32* %vaarg.addr82, !dbg !2231
  %62 = load %union.argvalue_t** %p, align 8, !dbg !2231
  %wc = bitcast %union.argvalue_t* %62 to i32*, !dbg !2231
  store i32 %61, i32* %wc, align 4, !dbg !2231
  br label %sw.epilog, !dbg !2232

sw.bb83:                                          ; preds = %while.body
  %63 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2233
  %arg84 = getelementptr inbounds %struct.ppfs_t* %63, i32 0, i32 7, !dbg !2233
  %arraydecay85 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg84, i32 0, i32 0, !dbg !2233
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay85, i32 0, i32 1, !dbg !2233
  %fp_offset = load i32* %fp_offset_p, !dbg !2233
  %fits_in_fp = icmp ule i32 %fp_offset, 160, !dbg !2233
  br i1 %fits_in_fp, label %vaarg.in_reg86, label %vaarg.in_mem88, !dbg !2233

vaarg.in_reg86:                                   ; preds = %sw.bb83
  %64 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay85, i32 0, i32 3, !dbg !2233
  %reg_save_area87 = load i8** %64, !dbg !2233
  %65 = getelementptr i8* %reg_save_area87, i32 %fp_offset, !dbg !2233
  %66 = bitcast i8* %65 to double*, !dbg !2233
  %67 = add i32 %fp_offset, 16, !dbg !2233
  store i32 %67, i32* %fp_offset_p, !dbg !2233
  br label %vaarg.end92, !dbg !2233

vaarg.in_mem88:                                   ; preds = %sw.bb83
  %overflow_arg_area_p89 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay85, i32 0, i32 2, !dbg !2233
  %overflow_arg_area90 = load i8** %overflow_arg_area_p89, !dbg !2233
  %68 = bitcast i8* %overflow_arg_area90 to double*, !dbg !2233
  %overflow_arg_area.next91 = getelementptr i8* %overflow_arg_area90, i32 8, !dbg !2233
  store i8* %overflow_arg_area.next91, i8** %overflow_arg_area_p89, !dbg !2233
  br label %vaarg.end92, !dbg !2233

vaarg.end92:                                      ; preds = %vaarg.in_mem88, %vaarg.in_reg86
  %vaarg.addr93 = phi double* [ %66, %vaarg.in_reg86 ], [ %68, %vaarg.in_mem88 ], !dbg !2233
  %69 = load double* %vaarg.addr93, !dbg !2233
  %70 = load %union.argvalue_t** %p, align 8, !dbg !2233
  %d = bitcast %union.argvalue_t* %70 to double*, !dbg !2233
  store double %69, double* %d, align 8, !dbg !2233
  br label %sw.epilog, !dbg !2234

sw.bb94:                                          ; preds = %while.body
  %71 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2235
  %arg95 = getelementptr inbounds %struct.ppfs_t* %71, i32 0, i32 7, !dbg !2235
  %arraydecay96 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg95, i32 0, i32 0, !dbg !2235
  %overflow_arg_area_p97 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay96, i32 0, i32 2, !dbg !2235
  %overflow_arg_area98 = load i8** %overflow_arg_area_p97, !dbg !2235
  %72 = getelementptr i8* %overflow_arg_area98, i64 15, !dbg !2235
  %73 = ptrtoint i8* %72 to i64, !dbg !2235
  %74 = and i64 %73, -16, !dbg !2235
  %overflow_arg_area.align = inttoptr i64 %74 to i8*, !dbg !2235
  %75 = bitcast i8* %overflow_arg_area.align to x86_fp80*, !dbg !2235
  %overflow_arg_area.next99 = getelementptr i8* %overflow_arg_area.align, i32 16, !dbg !2235
  store i8* %overflow_arg_area.next99, i8** %overflow_arg_area_p97, !dbg !2235
  %76 = load x86_fp80* %75, !dbg !2235
  %77 = load %union.argvalue_t** %p, align 8, !dbg !2235
  %ld = bitcast %union.argvalue_t* %77 to x86_fp80*, !dbg !2235
  store x86_fp80 %76, x86_fp80* %ld, align 16, !dbg !2235
  br label %sw.epilog, !dbg !2236

sw.bb100:                                         ; preds = %while.body
  %78 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2237
  %arg101 = getelementptr inbounds %struct.ppfs_t* %78, i32 0, i32 7, !dbg !2237
  %arraydecay102 = getelementptr inbounds [1 x %struct.__va_list_tag.232]* %arg101, i32 0, i32 0, !dbg !2237
  %gp_offset_p103 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay102, i32 0, i32 0, !dbg !2237
  %gp_offset104 = load i32* %gp_offset_p103, !dbg !2237
  %fits_in_gp105 = icmp ule i32 %gp_offset104, 40, !dbg !2237
  br i1 %fits_in_gp105, label %vaarg.in_reg106, label %vaarg.in_mem108, !dbg !2237

vaarg.in_reg106:                                  ; preds = %sw.bb100
  %79 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay102, i32 0, i32 3, !dbg !2237
  %reg_save_area107 = load i8** %79, !dbg !2237
  %80 = getelementptr i8* %reg_save_area107, i32 %gp_offset104, !dbg !2237
  %81 = bitcast i8* %80 to i8**, !dbg !2237
  %82 = add i32 %gp_offset104, 8, !dbg !2237
  store i32 %82, i32* %gp_offset_p103, !dbg !2237
  br label %vaarg.end112, !dbg !2237

vaarg.in_mem108:                                  ; preds = %sw.bb100
  %overflow_arg_area_p109 = getelementptr inbounds %struct.__va_list_tag.232* %arraydecay102, i32 0, i32 2, !dbg !2237
  %overflow_arg_area110 = load i8** %overflow_arg_area_p109, !dbg !2237
  %83 = bitcast i8* %overflow_arg_area110 to i8**, !dbg !2237
  %overflow_arg_area.next111 = getelementptr i8* %overflow_arg_area110, i32 8, !dbg !2237
  store i8* %overflow_arg_area.next111, i8** %overflow_arg_area_p109, !dbg !2237
  br label %vaarg.end112, !dbg !2237

vaarg.end112:                                     ; preds = %vaarg.in_mem108, %vaarg.in_reg106
  %vaarg.addr113 = phi i8** [ %81, %vaarg.in_reg106 ], [ %83, %vaarg.in_mem108 ], !dbg !2237
  %84 = load i8** %vaarg.addr113, !dbg !2237
  %85 = load %union.argvalue_t** %p, align 8, !dbg !2237
  %p114 = bitcast %union.argvalue_t* %85 to i8**, !dbg !2237
  store i8* %84, i8** %p114, align 8, !dbg !2237
  br label %sw.epilog, !dbg !2238

sw.epilog:                                        ; preds = %vaarg.end112, %sw.bb94, %vaarg.end92, %vaarg.end81, %vaarg.end66, %vaarg.end52, %vaarg.end38
  %86 = load %union.argvalue_t** %p, align 8, !dbg !2239
  %incdec.ptr = getelementptr inbounds %union.argvalue_t* %86, i32 1, !dbg !2239
  store %union.argvalue_t* %incdec.ptr, %union.argvalue_t** %p, align 8, !dbg !2239
  br label %while.cond, !dbg !2240

if.else:                                          ; preds = %entry
  br i1 %cmp1, label %if.then119, label %if.end125, !dbg !2241

if.then119:                                       ; preds = %if.else
  %87 = load %union.argvalue_t** %p, align 8, !dbg !2244
  %88 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2244
  %argnumber = getelementptr inbounds %struct.ppfs_t* %88, i32 0, i32 5, !dbg !2244
  %arrayidx120 = getelementptr inbounds [4 x i8]* %argnumber, i32 0, i64 0, !dbg !2244
  %89 = load i8* %arrayidx120, align 1, !dbg !2244
  %conv = zext i8 %89 to i32, !dbg !2244
  %idx.ext = sext i32 %conv to i64, !dbg !2244
  %add.ptr = getelementptr inbounds %union.argvalue_t* %87, i64 %idx.ext, !dbg !2244
  %add.ptr121 = getelementptr inbounds %union.argvalue_t* %add.ptr, i64 -1, !dbg !2244
  %u122 = bitcast %union.argvalue_t* %add.ptr121 to i32*, !dbg !2244
  %90 = load i32* %u122, align 4, !dbg !2244
  %91 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2244
  %info123 = getelementptr inbounds %struct.ppfs_t* %91, i32 0, i32 1, !dbg !2244
  %width124 = getelementptr inbounds %struct.printf_info.314* %info123, i32 0, i32 1, !dbg !2244
  store i32 %90, i32* %width124, align 4, !dbg !2244
  br label %if.end125, !dbg !2246

if.end125:                                        ; preds = %if.then119, %if.else
  %92 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2247
  %info126 = getelementptr inbounds %struct.ppfs_t* %92, i32 0, i32 1, !dbg !2247
  %prec127 = getelementptr inbounds %struct.printf_info.314* %info126, i32 0, i32 0, !dbg !2247
  %93 = load i32* %prec127, align 4, !dbg !2247
  %cmp128 = icmp eq i32 %93, -2147483648, !dbg !2247
  br i1 %cmp128, label %if.then130, label %if.end141, !dbg !2247

if.then130:                                       ; preds = %if.end125
  %94 = load %union.argvalue_t** %p, align 8, !dbg !2249
  %95 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2249
  %argnumber131 = getelementptr inbounds %struct.ppfs_t* %95, i32 0, i32 5, !dbg !2249
  %arrayidx132 = getelementptr inbounds [4 x i8]* %argnumber131, i32 0, i64 1, !dbg !2249
  %96 = load i8* %arrayidx132, align 1, !dbg !2249
  %conv133 = zext i8 %96 to i32, !dbg !2249
  %idx.ext134 = sext i32 %conv133 to i64, !dbg !2249
  %add.ptr135 = getelementptr inbounds %union.argvalue_t* %94, i64 %idx.ext134, !dbg !2249
  %add.ptr136 = getelementptr inbounds %union.argvalue_t* %add.ptr135, i64 -1, !dbg !2249
  %u137 = bitcast %union.argvalue_t* %add.ptr136 to i32*, !dbg !2249
  %97 = load i32* %u137, align 4, !dbg !2249
  %98 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2249
  %info138 = getelementptr inbounds %struct.ppfs_t* %98, i32 0, i32 1, !dbg !2249
  %prec139 = getelementptr inbounds %struct.printf_info.314* %info138, i32 0, i32 0, !dbg !2249
  store i32 %97, i32* %prec139, align 4, !dbg !2249
  br label %if.end141, !dbg !2251

if.end141:                                        ; preds = %if.end125, %if.then130, %while.cond
  %99 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2252
  %info142 = getelementptr inbounds %struct.ppfs_t* %99, i32 0, i32 1, !dbg !2252
  %width143 = getelementptr inbounds %struct.printf_info.314* %info142, i32 0, i32 1, !dbg !2252
  %100 = load i32* %width143, align 4, !dbg !2252
  %cmp144 = icmp slt i32 %100, 0, !dbg !2252
  br i1 %cmp144, label %if.then146, label %if.end155, !dbg !2252

if.then146:                                       ; preds = %if.end141
  %101 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2254
  %info147 = getelementptr inbounds %struct.ppfs_t* %101, i32 0, i32 1, !dbg !2254
  %width148 = getelementptr inbounds %struct.printf_info.314* %info147, i32 0, i32 1, !dbg !2254
  %102 = load i32* %width148, align 4, !dbg !2254
  %sub = sub nsw i32 0, %102, !dbg !2254
  %103 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2254
  %info149 = getelementptr inbounds %struct.ppfs_t* %103, i32 0, i32 1, !dbg !2254
  %width150 = getelementptr inbounds %struct.printf_info.314* %info149, i32 0, i32 1, !dbg !2254
  store i32 %sub, i32* %width150, align 4, !dbg !2254
  %104 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2256
  %info151 = getelementptr inbounds %struct.ppfs_t* %104, i32 0, i32 1, !dbg !2256
  %_flags = getelementptr inbounds %struct.printf_info.314* %info151, i32 0, i32 3, !dbg !2256
  %105 = load i32* %_flags, align 4, !dbg !2256
  %or = or i32 %105, 8, !dbg !2256
  store i32 %or, i32* %_flags, align 4, !dbg !2256
  %106 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2257
  %info152 = getelementptr inbounds %struct.ppfs_t* %106, i32 0, i32 1, !dbg !2257
  %_flags153 = getelementptr inbounds %struct.printf_info.314* %info152, i32 0, i32 3, !dbg !2257
  %107 = load i32* %_flags153, align 4, !dbg !2257
  %and = and i32 %107, -2, !dbg !2257
  store i32 %and, i32* %_flags153, align 4, !dbg !2257
  %108 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2258
  %info154 = getelementptr inbounds %struct.ppfs_t* %108, i32 0, i32 1, !dbg !2258
  %pad = getelementptr inbounds %struct.printf_info.314* %info154, i32 0, i32 4, !dbg !2258
  store i32 32, i32* %pad, align 4, !dbg !2258
  br label %if.end155, !dbg !2259

if.end155:                                        ; preds = %if.then146, %if.end141
  ret void, !dbg !2260
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ppfs_parsespec(%struct.ppfs_t* %ppfs) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfs.addr = alloca %struct.ppfs_t*, align 8
  %fmt = alloca i8*, align 8
  %p = alloca i8*, align 8
  %preci = alloca i32, align 4
  %width = alloca i32, align 4
  %flags = alloca i32, align 4
  %dataargtype = alloca i32, align 4
  %i = alloca i32, align 4
  %dpoint = alloca i32, align 4
  %maxposarg = alloca i32, align 4
  %p_m_spec_chars = alloca i32, align 4
  %n = alloca i32, align 4
  %argtype = alloca [3 x i32], align 4
  %argnumber = alloca [3 x i32], align 4
  %buf = alloca [32 x i8], align 16
  store %struct.ppfs_t* %ppfs, %struct.ppfs_t** %ppfs.addr, align 8
  store i32 -1, i32* %preci, align 4, !dbg !2261
  %arrayidx = getelementptr inbounds [3 x i32]* %argnumber, i32 0, i64 0, !dbg !2262
  store i32 0, i32* %arrayidx, align 4, !dbg !2262
  %arrayidx1 = getelementptr inbounds [3 x i32]* %argnumber, i32 0, i64 1, !dbg !2263
  store i32 0, i32* %arrayidx1, align 4, !dbg !2263
  %arrayidx2 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i64 0, !dbg !2264
  store i32 8, i32* %arrayidx2, align 4, !dbg !2264
  %arrayidx3 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i64 1, !dbg !2265
  store i32 8, i32* %arrayidx3, align 4, !dbg !2265
  %0 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2266
  %maxposarg4 = getelementptr inbounds %struct.ppfs_t* %0, i32 0, i32 2, !dbg !2266
  %1 = load i32* %maxposarg4, align 4, !dbg !2266
  store i32 %1, i32* %maxposarg, align 4, !dbg !2266
  store i32 0, i32* %dpoint, align 4, !dbg !2267
  store i32 0, i32* %width, align 4, !dbg !2267
  %2 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2268
  %info = getelementptr inbounds %struct.ppfs_t* %2, i32 0, i32 1, !dbg !2268
  %_flags = getelementptr inbounds %struct.printf_info.314* %info, i32 0, i32 3, !dbg !2268
  %3 = load i32* %_flags, align 4, !dbg !2268
  %and = and i32 %3, 128, !dbg !2268
  store i32 %and, i32* %flags, align 4, !dbg !2268
  %cmp = icmp eq i32 %and, 0, !dbg !2268
  br i1 %cmp, label %if.then, label %if.else, !dbg !2268

if.then:                                          ; preds = %entry
  %4 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2270
  %fmtpos = getelementptr inbounds %struct.ppfs_t* %4, i32 0, i32 0, !dbg !2270
  %5 = load i8** %fmtpos, align 8, !dbg !2270
  store i8* %5, i8** %fmt, align 8, !dbg !2270
  br label %width_precision, !dbg !2272

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i32 0, i32 0, !dbg !2273
  %add.ptr = getelementptr inbounds i8* %arraydecay, i64 1, !dbg !2273
  store i8* %add.ptr, i8** %fmt, align 8, !dbg !2273
  store i32 0, i32* %i, align 4, !dbg !2275
  br label %do.body, !dbg !2276

do.body:                                          ; preds = %do.cond, %if.else
  %6 = load i32* %i, align 4, !dbg !2277
  %sub = sub nsw i32 %6, 1, !dbg !2277
  %idxprom = sext i32 %sub to i64, !dbg !2277
  %7 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2277
  %fmtpos5 = getelementptr inbounds %struct.ppfs_t* %7, i32 0, i32 0, !dbg !2277
  %8 = load i8** %fmtpos5, align 8, !dbg !2277
  %9 = bitcast i8* %8 to i32*, !dbg !2277
  %arrayidx6 = getelementptr inbounds i32* %9, i64 %idxprom, !dbg !2277
  %10 = load i32* %arrayidx6, align 4, !dbg !2277
  %conv = trunc i32 %10 to i8, !dbg !2277
  %11 = load i32* %i, align 4, !dbg !2277
  %idxprom7 = sext i32 %11 to i64, !dbg !2277
  %arrayidx8 = getelementptr inbounds [32 x i8]* %buf, i32 0, i64 %idxprom7, !dbg !2277
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !2277
  %conv9 = sext i8 %conv to i32, !dbg !2277
  %12 = load i32* %i, align 4, !dbg !2277
  %sub10 = sub nsw i32 %12, 1, !dbg !2277
  %idxprom11 = sext i32 %sub10 to i64, !dbg !2277
  %13 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2277
  %fmtpos12 = getelementptr inbounds %struct.ppfs_t* %13, i32 0, i32 0, !dbg !2277
  %14 = load i8** %fmtpos12, align 8, !dbg !2277
  %15 = bitcast i8* %14 to i32*, !dbg !2277
  %arrayidx13 = getelementptr inbounds i32* %15, i64 %idxprom11, !dbg !2277
  %16 = load i32* %arrayidx13, align 4, !dbg !2277
  %cmp14 = icmp ne i32 %conv9, %16, !dbg !2277
  br i1 %cmp14, label %if.then16, label %do.cond, !dbg !2277

if.then16:                                        ; preds = %do.body
  store i32 -1, i32* %retval, !dbg !2280
  br label %return, !dbg !2280

do.cond:                                          ; preds = %do.body
  %17 = load i32* %i, align 4, !dbg !2282
  %inc = add nsw i32 %17, 1, !dbg !2282
  store i32 %inc, i32* %i, align 4, !dbg !2282
  %idxprom17 = sext i32 %17 to i64, !dbg !2282
  %arrayidx18 = getelementptr inbounds [32 x i8]* %buf, i32 0, i64 %idxprom17, !dbg !2282
  %18 = load i8* %arrayidx18, align 1, !dbg !2282
  %tobool = icmp ne i8 %18, 0, !dbg !2282
  br i1 %tobool, label %do.body, label %do.end, !dbg !2282

do.end:                                           ; preds = %do.cond
  %arrayidx19 = getelementptr inbounds [32 x i8]* %buf, i32 0, i64 31, !dbg !2283
  store i8 0, i8* %arrayidx19, align 1, !dbg !2283
  br label %width_precision

width_precision:                                  ; preds = %do.end89, %if.then, %do.end, %if.then129
  %19 = load i8** %fmt, align 8, !dbg !2284
  store i8* %19, i8** %p, align 8, !dbg !2284
  %20 = load i8** %fmt, align 8, !dbg !2285
  %21 = load i8* %20, align 1, !dbg !2285
  %conv21 = sext i8 %21 to i32, !dbg !2285
  %cmp22 = icmp eq i32 %conv21, 42, !dbg !2285
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !2285

if.then24:                                        ; preds = %width_precision
  %22 = load i32* %dpoint, align 4, !dbg !2287
  %sub25 = sub nsw i32 0, %22, !dbg !2287
  %idxprom26 = sext i32 %sub25 to i64, !dbg !2287
  %arrayidx27 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i64 %idxprom26, !dbg !2287
  store i32 0, i32* %arrayidx27, align 4, !dbg !2287
  %23 = load i8** %fmt, align 8, !dbg !2289
  %incdec.ptr = getelementptr inbounds i8* %23, i32 1, !dbg !2289
  store i8* %incdec.ptr, i8** %fmt, align 8, !dbg !2289
  br label %if.end28, !dbg !2290

if.end28:                                         ; preds = %if.then24, %width_precision
  store i32 0, i32* %i, align 4, !dbg !2291
  br label %while.cond, !dbg !2292

while.cond:                                       ; preds = %if.end40, %if.end28
  %24 = load i8** %fmt, align 8, !dbg !2292
  %25 = load i8* %24, align 1, !dbg !2292
  %conv29 = sext i8 %25 to i32, !dbg !2292
  %idxprom30 = sext i32 %conv29 to i64, !dbg !2292
  %26 = load i16** @__ctype_b, align 8, !dbg !2292
  %arrayidx31 = getelementptr inbounds i16* %26, i64 %idxprom30, !dbg !2292
  %27 = load i16* %arrayidx31, align 2, !dbg !2292
  %conv32 = zext i16 %27 to i32, !dbg !2292
  %and33 = and i32 %conv32, 2048, !dbg !2292
  %tobool34 = icmp ne i32 %and33, 0, !dbg !2292
  br i1 %tobool34, label %while.body, label %while.end, !dbg !2292

while.body:                                       ; preds = %while.cond
  %28 = load i32* %i, align 4, !dbg !2293
  %cmp35 = icmp slt i32 %28, 4095, !dbg !2293
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !2293

if.then37:                                        ; preds = %while.body
  %29 = load i32* %i, align 4, !dbg !2296
  %mul = mul nsw i32 %29, 10, !dbg !2296
  %30 = load i8** %fmt, align 8, !dbg !2296
  %31 = load i8* %30, align 1, !dbg !2296
  %conv38 = sext i8 %31 to i32, !dbg !2296
  %sub39 = sub nsw i32 %conv38, 48, !dbg !2296
  %add = add nsw i32 %mul, %sub39, !dbg !2296
  store i32 %add, i32* %i, align 4, !dbg !2296
  br label %if.end40, !dbg !2298

if.end40:                                         ; preds = %if.then37, %while.body
  %32 = load i8** %fmt, align 8, !dbg !2299
  %incdec.ptr41 = getelementptr inbounds i8* %32, i32 1, !dbg !2299
  store i8* %incdec.ptr41, i8** %fmt, align 8, !dbg !2299
  br label %while.cond, !dbg !2300

while.end:                                        ; preds = %while.cond
  %33 = load i8** %p, align 8, !dbg !2301
  %arrayidx42 = getelementptr inbounds i8* %33, i64 -1, !dbg !2301
  %34 = load i8* %arrayidx42, align 1, !dbg !2301
  %conv43 = sext i8 %34 to i32, !dbg !2301
  %cmp44 = icmp eq i32 %conv43, 37, !dbg !2301
  br i1 %cmp44, label %if.then46, label %PREC_WIDTH, !dbg !2301

if.then46:                                        ; preds = %while.end
  %35 = load i8** %fmt, align 8, !dbg !2303
  %36 = load i8* %35, align 1, !dbg !2303
  %conv47 = sext i8 %36 to i32, !dbg !2303
  %cmp48 = icmp eq i32 %conv47, 36, !dbg !2303
  %37 = load i32* %i, align 4, !dbg !2303
  %cmp50 = icmp sgt i32 %37, 0, !dbg !2303
  %or.cond = and i1 %cmp48, %cmp50, !dbg !2303
  br i1 %or.cond, label %if.then52, label %if.else63, !dbg !2303

if.then52:                                        ; preds = %if.then46
  %38 = load i8** %fmt, align 8, !dbg !2306
  %incdec.ptr53 = getelementptr inbounds i8* %38, i32 1, !dbg !2306
  store i8* %incdec.ptr53, i8** %fmt, align 8, !dbg !2306
  %39 = load i32* %maxposarg, align 4, !dbg !2308
  %cmp54 = icmp eq i32 %39, 0, !dbg !2308
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !2308

if.then56:                                        ; preds = %if.then52
  store i32 -1, i32* %retval, !dbg !2310
  br label %return, !dbg !2310

if.end57:                                         ; preds = %if.then52
  %40 = load i32* %i, align 4, !dbg !2312
  %arrayidx58 = getelementptr inbounds [3 x i32]* %argnumber, i32 0, i64 2, !dbg !2312
  store i32 %40, i32* %arrayidx58, align 4, !dbg !2312
  %41 = load i32* %maxposarg, align 4, !dbg !2312
  %cmp59 = icmp sgt i32 %40, %41, !dbg !2312
  br i1 %cmp59, label %if.then61, label %restart_flags, !dbg !2312

if.then61:                                        ; preds = %if.end57
  %42 = load i32* %i, align 4, !dbg !2314
  store i32 %42, i32* %maxposarg, align 4, !dbg !2314
  br label %restart_flags, !dbg !2316

if.else63:                                        ; preds = %if.then46
  %43 = load i32* %maxposarg, align 4, !dbg !2317
  %cmp64 = icmp sgt i32 %43, 0, !dbg !2317
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !2317

if.then66:                                        ; preds = %if.else63
  store i32 -1, i32* %retval, !dbg !2320
  br label %return, !dbg !2320

if.end67:                                         ; preds = %if.else63
  store i32 0, i32* %maxposarg, align 4, !dbg !2322
  %44 = load i8** %fmt, align 8, !dbg !2323
  %45 = load i8** %p, align 8, !dbg !2323
  %cmp68 = icmp ugt i8* %44, %45, !dbg !2323
  br i1 %cmp68, label %land.lhs.true70, label %if.end75, !dbg !2323

land.lhs.true70:                                  ; preds = %if.end67
  %46 = load i8** %p, align 8, !dbg !2323
  %47 = load i8* %46, align 1, !dbg !2323
  %conv71 = sext i8 %47 to i32, !dbg !2323
  %cmp72 = icmp ne i32 %conv71, 48, !dbg !2323
  br i1 %cmp72, label %PREC_WIDTH, label %if.end75, !dbg !2323

if.end75:                                         ; preds = %land.lhs.true70, %if.end67
  %48 = load i8** %p, align 8, !dbg !2325
  store i8* %48, i8** %fmt, align 8, !dbg !2325
  br label %restart_flags

restart_flags:                                    ; preds = %if.end75, %if.then61, %if.end57, %if.then83
  store i32 1, i32* %i, align 4, !dbg !2326
  store i8* getelementptr inbounds ([8 x i8]* @_ppfs_parsespec.spec_flags, i32 0, i32 0), i8** %p, align 8, !dbg !2327
  br label %do.body77, !dbg !2328

do.body77:                                        ; preds = %if.end85, %restart_flags
  %49 = load i8** %fmt, align 8, !dbg !2329
  %50 = load i8* %49, align 1, !dbg !2329
  %conv78 = sext i8 %50 to i32, !dbg !2329
  %51 = load i8** %p, align 8, !dbg !2329
  %incdec.ptr79 = getelementptr inbounds i8* %51, i32 1, !dbg !2329
  store i8* %incdec.ptr79, i8** %p, align 8, !dbg !2329
  %52 = load i8* %51, align 1, !dbg !2329
  %conv80 = sext i8 %52 to i32, !dbg !2329
  %cmp81 = icmp eq i32 %conv78, %conv80, !dbg !2329
  br i1 %cmp81, label %if.then83, label %if.end85, !dbg !2329

if.then83:                                        ; preds = %do.body77
  %53 = load i8** %fmt, align 8, !dbg !2332
  %incdec.ptr84 = getelementptr inbounds i8* %53, i32 1, !dbg !2332
  store i8* %incdec.ptr84, i8** %fmt, align 8, !dbg !2332
  %54 = load i32* %i, align 4, !dbg !2334
  %55 = load i32* %flags, align 4, !dbg !2334
  %or = or i32 %55, %54, !dbg !2334
  store i32 %or, i32* %flags, align 4, !dbg !2334
  br label %restart_flags, !dbg !2335

if.end85:                                         ; preds = %do.body77
  %56 = load i32* %i, align 4, !dbg !2336
  %57 = load i32* %i, align 4, !dbg !2336
  %add86 = add nsw i32 %57, %56, !dbg !2336
  store i32 %add86, i32* %i, align 4, !dbg !2336
  %58 = load i8** %p, align 8, !dbg !2337
  %59 = load i8* %58, align 1, !dbg !2337
  %tobool88 = icmp ne i8 %59, 0, !dbg !2337
  br i1 %tobool88, label %do.body77, label %do.end89, !dbg !2337

do.end89:                                         ; preds = %if.end85
  store i32 0, i32* %i, align 4, !dbg !2338
  %60 = load i32* %flags, align 4, !dbg !2339
  %and90 = and i32 %60, 10, !dbg !2339
  %int_cast_to_i64 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2339
  %shr = ashr i32 %and90, 1, !dbg !2339
  %neg = xor i32 %shr, -1, !dbg !2339
  %61 = load i32* %flags, align 4, !dbg !2339
  %and91 = and i32 %61, %neg, !dbg !2339
  store i32 %and91, i32* %flags, align 4, !dbg !2339
  %62 = load i8** %fmt, align 8, !dbg !2340
  %arrayidx92 = getelementptr inbounds i8* %62, i64 -1, !dbg !2340
  %63 = load i8* %arrayidx92, align 1, !dbg !2340
  %conv93 = sext i8 %63 to i32, !dbg !2340
  %cmp94 = icmp ne i32 %conv93, 37, !dbg !2340
  br i1 %cmp94, label %width_precision, label %PREC_WIDTH, !dbg !2340

PREC_WIDTH:                                       ; preds = %while.end, %do.end89, %land.lhs.true70
  %64 = load i8** %p, align 8, !dbg !2342
  %65 = load i8* %64, align 1, !dbg !2342
  %conv99 = sext i8 %65 to i32, !dbg !2342
  %cmp100 = icmp eq i32 %conv99, 42, !dbg !2342
  br i1 %cmp100, label %if.then102, label %if.end123, !dbg !2342

if.then102:                                       ; preds = %PREC_WIDTH
  %66 = load i32* %maxposarg, align 4, !dbg !2344
  %tobool103 = icmp ne i32 %66, 0, !dbg !2344
  br i1 %tobool103, label %if.then104, label %if.else116, !dbg !2344

if.then104:                                       ; preds = %if.then102
  %67 = load i8** %fmt, align 8, !dbg !2347
  %incdec.ptr105 = getelementptr inbounds i8* %67, i32 1, !dbg !2347
  store i8* %incdec.ptr105, i8** %fmt, align 8, !dbg !2347
  %68 = load i8* %67, align 1, !dbg !2347
  %conv106 = sext i8 %68 to i32, !dbg !2347
  %cmp107 = icmp ne i32 %conv106, 36, !dbg !2347
  %69 = load i32* %i, align 4, !dbg !2347
  %cmp109 = icmp sle i32 %69, 0, !dbg !2347
  %or.cond2 = or i1 %cmp107, %cmp109, !dbg !2347
  br i1 %or.cond2, label %if.then111, label %if.end112, !dbg !2347

if.then111:                                       ; preds = %if.then104
  store i32 -1, i32* %retval, !dbg !2350
  br label %return, !dbg !2350

if.end112:                                        ; preds = %if.then104
  %70 = load i32* %i, align 4, !dbg !2352
  %71 = load i32* %dpoint, align 4, !dbg !2352
  %sub113 = sub nsw i32 0, %71, !dbg !2352
  %idxprom114 = sext i32 %sub113 to i64, !dbg !2352
  %arrayidx115 = getelementptr inbounds [3 x i32]* %argnumber, i32 0, i64 %idxprom114, !dbg !2352
  store i32 %70, i32* %arrayidx115, align 4, !dbg !2352
  br label %if.end122, !dbg !2353

if.else116:                                       ; preds = %if.then102
  %72 = load i8** %p, align 8, !dbg !2354
  %incdec.ptr117 = getelementptr inbounds i8* %72, i32 1, !dbg !2354
  store i8* %incdec.ptr117, i8** %p, align 8, !dbg !2354
  %73 = load i8** %fmt, align 8, !dbg !2354
  %cmp118 = icmp ne i8* %incdec.ptr117, %73, !dbg !2354
  br i1 %cmp118, label %if.then120, label %if.end122, !dbg !2354

if.then120:                                       ; preds = %if.else116
  store i32 -1, i32* %retval, !dbg !2356
  br label %return, !dbg !2356

if.end122:                                        ; preds = %if.else116, %if.end112
  store i32 -2147483648, i32* %i, align 4, !dbg !2358
  br label %if.end123, !dbg !2359

if.end123:                                        ; preds = %if.end122, %PREC_WIDTH
  %74 = load i32* %dpoint, align 4, !dbg !2360
  %tobool124 = icmp ne i32 %74, 0, !dbg !2360
  %75 = load i32* %i, align 4, !dbg !2362
  br i1 %tobool124, label %if.else132, label %if.then125, !dbg !2360

if.then125:                                       ; preds = %if.end123
  store i32 %75, i32* %width, align 4, !dbg !2364
  %76 = load i8** %fmt, align 8, !dbg !2366
  %77 = load i8* %76, align 1, !dbg !2366
  %conv126 = sext i8 %77 to i32, !dbg !2366
  %cmp127 = icmp eq i32 %conv126, 46, !dbg !2366
  br i1 %cmp127, label %if.then129, label %if.end133, !dbg !2366

if.then129:                                       ; preds = %if.then125
  %78 = load i8** %fmt, align 8, !dbg !2368
  %incdec.ptr130 = getelementptr inbounds i8* %78, i32 1, !dbg !2368
  store i8* %incdec.ptr130, i8** %fmt, align 8, !dbg !2368
  store i32 -1, i32* %dpoint, align 4, !dbg !2370
  br label %width_precision, !dbg !2371

if.else132:                                       ; preds = %if.end123
  store i32 %75, i32* %preci, align 4, !dbg !2362
  br label %if.end133

if.end133:                                        ; preds = %if.then125, %if.else132
  store i8* getelementptr inbounds ([20 x i8]* @_ppfs_parsespec.qual_chars, i32 0, i32 0), i8** %p, align 8, !dbg !2372
  br label %do.body134, !dbg !2373

do.body134:                                       ; preds = %do.cond142, %if.end133
  %79 = load i8** %fmt, align 8, !dbg !2374
  %80 = load i8* %79, align 1, !dbg !2374
  %conv135 = sext i8 %80 to i32, !dbg !2374
  %81 = load i8** %p, align 8, !dbg !2374
  %82 = load i8* %81, align 1, !dbg !2374
  %conv136 = sext i8 %82 to i32, !dbg !2374
  %cmp137 = icmp eq i32 %conv135, %conv136, !dbg !2374
  br i1 %cmp137, label %if.then139, label %do.cond142, !dbg !2374

if.then139:                                       ; preds = %do.body134
  %83 = load i8** %fmt, align 8, !dbg !2377
  %incdec.ptr140 = getelementptr inbounds i8* %83, i32 1, !dbg !2377
  store i8* %incdec.ptr140, i8** %fmt, align 8, !dbg !2377
  br label %do.end145, !dbg !2379

do.cond142:                                       ; preds = %do.body134
  %84 = load i8** %p, align 8, !dbg !2380
  %incdec.ptr143 = getelementptr inbounds i8* %84, i32 1, !dbg !2380
  store i8* %incdec.ptr143, i8** %p, align 8, !dbg !2380
  %85 = load i8* %incdec.ptr143, align 1, !dbg !2380
  %tobool144 = icmp ne i8 %85, 0, !dbg !2380
  br i1 %tobool144, label %do.body134, label %do.end145, !dbg !2380

do.end145:                                        ; preds = %do.cond142, %if.then139
  %86 = load i8** %p, align 8, !dbg !2381
  %sub.ptr.lhs.cast = ptrtoint i8* %86 to i64, !dbg !2381
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([20 x i8]* @_ppfs_parsespec.qual_chars to i64), !dbg !2381
  %cmp146 = icmp slt i64 %sub.ptr.sub, 2, !dbg !2381
  br i1 %cmp146, label %land.lhs.true148, label %if.end156, !dbg !2381

land.lhs.true148:                                 ; preds = %do.end145
  %87 = load i8** %fmt, align 8, !dbg !2381
  %88 = load i8* %87, align 1, !dbg !2381
  %conv149 = sext i8 %88 to i32, !dbg !2381
  %89 = load i8** %p, align 8, !dbg !2381
  %90 = load i8* %89, align 1, !dbg !2381
  %conv150 = sext i8 %90 to i32, !dbg !2381
  %cmp151 = icmp eq i32 %conv149, %conv150, !dbg !2381
  br i1 %cmp151, label %if.then153, label %if.end156, !dbg !2381

if.then153:                                       ; preds = %land.lhs.true148
  %91 = load i8** %p, align 8, !dbg !2383
  %add.ptr154 = getelementptr inbounds i8* %91, i64 9, !dbg !2383
  store i8* %add.ptr154, i8** %p, align 8, !dbg !2383
  %92 = load i8** %fmt, align 8, !dbg !2385
  %incdec.ptr155 = getelementptr inbounds i8* %92, i32 1, !dbg !2385
  store i8* %incdec.ptr155, i8** %fmt, align 8, !dbg !2385
  br label %if.end156, !dbg !2386

if.end156:                                        ; preds = %if.then153, %land.lhs.true148, %do.end145
  %93 = load i8** %p, align 8, !dbg !2387
  %arrayidx157 = getelementptr inbounds i8* %93, i64 9, !dbg !2387
  %94 = load i8* %arrayidx157, align 1, !dbg !2387
  %conv158 = sext i8 %94 to i32, !dbg !2387
  %int_cast_to_i641 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !2387
  %shl = shl i32 %conv158, 8, !dbg !2387
  store i32 %shl, i32* %dataargtype, align 4, !dbg !2387
  %95 = load i8** %fmt, align 8, !dbg !2388
  %96 = load i8* %95, align 1, !dbg !2388
  %tobool159 = icmp ne i8 %96, 0, !dbg !2388
  br i1 %tobool159, label %if.end161, label %if.then160, !dbg !2388

if.then160:                                       ; preds = %if.end156
  store i32 -1, i32* %retval, !dbg !2390
  br label %return, !dbg !2390

if.end161:                                        ; preds = %if.end156
  store i8* getelementptr inbounds ([21 x i8]* @_ppfs_parsespec.spec_chars, i32 0, i32 0), i8** %p, align 8, !dbg !2392
  br label %do.body162, !dbg !2393

do.body162:                                       ; preds = %do.cond199, %if.end161
  %97 = load i8** %fmt, align 8, !dbg !2394
  %98 = load i8* %97, align 1, !dbg !2394
  %conv163 = sext i8 %98 to i32, !dbg !2394
  %99 = load i8** %p, align 8, !dbg !2394
  %100 = load i8* %99, align 1, !dbg !2394
  %conv164 = sext i8 %100 to i32, !dbg !2394
  %cmp165 = icmp eq i32 %conv163, %conv164, !dbg !2394
  %101 = load i8** %p, align 8, !dbg !2397
  br i1 %cmp165, label %if.then167, label %do.cond199, !dbg !2394

if.then167:                                       ; preds = %do.body162
  %sub.ptr.lhs.cast168 = ptrtoint i8* %101 to i64, !dbg !2397
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast168, ptrtoint ([21 x i8]* @_ppfs_parsespec.spec_chars to i64), !dbg !2397
  %conv170 = trunc i64 %sub.ptr.sub169 to i32, !dbg !2397
  store i32 %conv170, i32* %p_m_spec_chars, align 4, !dbg !2397
  %102 = load i32* %p_m_spec_chars, align 4, !dbg !2399
  %cmp171 = icmp sge i32 %102, 18, !dbg !2399
  br i1 %cmp171, label %land.lhs.true173, label %if.end178, !dbg !2399

land.lhs.true173:                                 ; preds = %if.then167
  %103 = load i32* %dataargtype, align 4, !dbg !2399
  %and174 = and i32 %103, 1024, !dbg !2399
  %tobool175 = icmp ne i32 %and174, 0, !dbg !2399
  br i1 %tobool175, label %if.then176, label %if.end178, !dbg !2399

if.then176:                                       ; preds = %land.lhs.true173
  %104 = load i32* %p_m_spec_chars, align 4, !dbg !2401
  %sub177 = sub nsw i32 %104, 2, !dbg !2401
  store i32 %sub177, i32* %p_m_spec_chars, align 4, !dbg !2401
  br label %if.end178, !dbg !2403

if.end178:                                        ; preds = %if.then176, %land.lhs.true173, %if.then167
  %105 = load i32* %p_m_spec_chars, align 4, !dbg !2404
  %106 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2404
  %conv_num = getelementptr inbounds %struct.ppfs_t* %106, i32 0, i32 4, !dbg !2404
  store i32 %105, i32* %conv_num, align 4, !dbg !2404
  store i8* getelementptr inbounds (i8* getelementptr inbounds ([9 x i8]* @_ppfs_parsespec.spec_ranges, i32 0, i32 0), i64 -1), i8** %p, align 8, !dbg !2405
  br label %while.cond179, !dbg !2406

while.cond179:                                    ; preds = %while.cond179, %if.end178
  %107 = load i32* %p_m_spec_chars, align 4, !dbg !2406
  %108 = load i8** %p, align 8, !dbg !2406
  %incdec.ptr180 = getelementptr inbounds i8* %108, i32 1, !dbg !2406
  store i8* %incdec.ptr180, i8** %p, align 8, !dbg !2406
  %109 = load i8* %incdec.ptr180, align 1, !dbg !2406
  %conv181 = sext i8 %109 to i32, !dbg !2406
  %cmp182 = icmp sgt i32 %107, %conv181, !dbg !2406
  br i1 %cmp182, label %while.cond179, label %while.end185, !dbg !2406

while.end185:                                     ; preds = %while.cond179
  %110 = load i8** %p, align 8, !dbg !2407
  %sub.ptr.lhs.cast186 = ptrtoint i8* %110 to i64, !dbg !2407
  %sub.ptr.sub187 = sub i64 %sub.ptr.lhs.cast186, ptrtoint ([9 x i8]* @_ppfs_parsespec.spec_ranges to i64), !dbg !2407
  %conv188 = trunc i64 %sub.ptr.sub187 to i32, !dbg !2407
  store i32 %conv188, i32* %i, align 4, !dbg !2407
  %111 = load i32* %dataargtype, align 4, !dbg !2408
  %112 = load i32* %i, align 4, !dbg !2408
  %idxprom189 = sext i32 %112 to i64, !dbg !2408
  %arrayidx190 = getelementptr inbounds [8 x i16]* @_ppfs_parsespec.spec_or_mask, i32 0, i64 %idxprom189, !dbg !2408
  %113 = load i16* %arrayidx190, align 2, !dbg !2408
  %conv191 = sext i16 %113 to i32, !dbg !2408
  %or192 = or i32 %111, %conv191, !dbg !2408
  %114 = load i32* %i, align 4, !dbg !2408
  %idxprom193 = sext i32 %114 to i64, !dbg !2408
  %arrayidx194 = getelementptr inbounds [8 x i16]* @_ppfs_parsespec.spec_and_mask, i32 0, i64 %idxprom193, !dbg !2408
  %115 = load i16* %arrayidx194, align 2, !dbg !2408
  %conv195 = sext i16 %115 to i32, !dbg !2408
  %and196 = and i32 %or192, %conv195, !dbg !2408
  %arrayidx197 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i64 2, !dbg !2408
  store i32 %and196, i32* %arrayidx197, align 4, !dbg !2408
  store i8* getelementptr inbounds ([21 x i8]* @_ppfs_parsespec.spec_chars, i32 0, i32 0), i8** %p, align 8, !dbg !2409
  br label %do.end202, !dbg !2410

do.cond199:                                       ; preds = %do.body162
  %incdec.ptr200 = getelementptr inbounds i8* %101, i32 1, !dbg !2411
  store i8* %incdec.ptr200, i8** %p, align 8, !dbg !2411
  %116 = load i8* %incdec.ptr200, align 1, !dbg !2411
  %tobool201 = icmp ne i8 %116, 0, !dbg !2411
  br i1 %tobool201, label %do.body162, label %do.end202, !dbg !2411

do.end202:                                        ; preds = %do.cond199, %while.end185
  %117 = load i8** %fmt, align 8, !dbg !2412
  %118 = load i8* %117, align 1, !dbg !2412
  %conv203 = sext i8 %118 to i32, !dbg !2412
  %119 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2412
  %info204 = getelementptr inbounds %struct.ppfs_t* %119, i32 0, i32 1, !dbg !2412
  %spec = getelementptr inbounds %struct.printf_info.314* %info204, i32 0, i32 2, !dbg !2412
  store i32 %conv203, i32* %spec, align 4, !dbg !2412
  %120 = load i32* %preci, align 4, !dbg !2413
  %121 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2413
  %info205 = getelementptr inbounds %struct.ppfs_t* %121, i32 0, i32 1, !dbg !2413
  %prec = getelementptr inbounds %struct.printf_info.314* %info205, i32 0, i32 0, !dbg !2413
  store i32 %120, i32* %prec, align 4, !dbg !2413
  %122 = load i32* %width, align 4, !dbg !2414
  %123 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2414
  %info206 = getelementptr inbounds %struct.ppfs_t* %123, i32 0, i32 1, !dbg !2414
  %width207 = getelementptr inbounds %struct.printf_info.314* %info206, i32 0, i32 1, !dbg !2414
  store i32 %122, i32* %width207, align 4, !dbg !2414
  %124 = load i32* %flags, align 4, !dbg !2415
  %and208 = and i32 %124, 4, !dbg !2415
  %tobool209 = icmp ne i32 %and208, 0, !dbg !2415
  %cond = select i1 %tobool209, i32 48, i32 32, !dbg !2415
  %125 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2415
  %info210 = getelementptr inbounds %struct.ppfs_t* %125, i32 0, i32 1, !dbg !2415
  %pad = getelementptr inbounds %struct.printf_info.314* %info210, i32 0, i32 4, !dbg !2415
  store i32 %cond, i32* %pad, align 4, !dbg !2415
  %126 = load i32* %flags, align 4, !dbg !2416
  %and211 = and i32 %126, -5, !dbg !2416
  %127 = load i32* %dataargtype, align 4, !dbg !2416
  %and212 = and i32 %127, 3840, !dbg !2416
  %or213 = or i32 %and211, %and212, !dbg !2416
  %128 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2416
  %info214 = getelementptr inbounds %struct.ppfs_t* %128, i32 0, i32 1, !dbg !2416
  %_flags215 = getelementptr inbounds %struct.printf_info.314* %info214, i32 0, i32 3, !dbg !2416
  store i32 %or213, i32* %_flags215, align 4, !dbg !2416
  %129 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2417
  %num_data_args = getelementptr inbounds %struct.ppfs_t* %129, i32 0, i32 3, !dbg !2417
  store i32 1, i32* %num_data_args, align 4, !dbg !2417
  %130 = load i8** %p, align 8, !dbg !2418
  %131 = load i8* %130, align 1, !dbg !2418
  %tobool216 = icmp ne i8 %131, 0, !dbg !2418
  br i1 %tobool216, label %if.end218, label %if.then217, !dbg !2418

if.then217:                                       ; preds = %do.end202
  store i32 -1, i32* %retval, !dbg !2420
  br label %return, !dbg !2420

if.end218:                                        ; preds = %do.end202
  %132 = load i32* %maxposarg, align 4, !dbg !2422
  %cmp219 = icmp sgt i32 %132, 0, !dbg !2422
  br i1 %cmp219, label %if.then221, label %if.else264, !dbg !2422

if.then221:                                       ; preds = %if.end218
  store i32 0, i32* %i, align 4, !dbg !2424
  br label %do.body222, !dbg !2426

do.body222:                                       ; preds = %do.cond257, %if.then221
  %133 = load i32* %i, align 4, !dbg !2427
  %cmp223 = icmp sle i32 %133, 2, !dbg !2427
  br i1 %cmp223, label %cond.true, label %cond.false, !dbg !2427

cond.true:                                        ; preds = %do.body222
  %134 = load i32* %i, align 4, !dbg !2427
  %idxprom225 = sext i32 %134 to i64, !dbg !2427
  %arrayidx226 = getelementptr inbounds [3 x i32]* %argnumber, i32 0, i64 %idxprom225, !dbg !2427
  %135 = load i32* %arrayidx226, align 4, !dbg !2427
  %conv227 = trunc i32 %135 to i8, !dbg !2427
  %136 = load i32* %i, align 4, !dbg !2427
  %idxprom228 = sext i32 %136 to i64, !dbg !2427
  %137 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2427
  %argnumber229 = getelementptr inbounds %struct.ppfs_t* %137, i32 0, i32 5, !dbg !2427
  %arrayidx230 = getelementptr inbounds [4 x i8]* %argnumber229, i32 0, i64 %idxprom228, !dbg !2427
  store i8 %conv227, i8* %arrayidx230, align 1, !dbg !2427
  %conv231 = zext i8 %conv227 to i32, !dbg !2427
  br label %cond.end, !dbg !2427

cond.false:                                       ; preds = %do.body222
  %arrayidx232 = getelementptr inbounds [3 x i32]* %argnumber, i32 0, i64 2, !dbg !2427
  %138 = load i32* %arrayidx232, align 4, !dbg !2427
  %139 = load i32* %i, align 4, !dbg !2427
  %sub233 = sub nsw i32 %139, 2, !dbg !2427
  %add234 = add nsw i32 %138, %sub233, !dbg !2427
  br label %cond.end, !dbg !2427

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond235 = phi i32 [ %conv231, %cond.true ], [ %add234, %cond.false ], !dbg !2427
  store i32 %cond235, i32* %n, align 4, !dbg !2427
  %140 = load i32* %n, align 4, !dbg !2429
  %141 = load i32* %maxposarg, align 4, !dbg !2429
  %cmp236 = icmp sgt i32 %140, %141, !dbg !2429
  br i1 %cmp236, label %if.then238, label %if.end243, !dbg !2429

if.then238:                                       ; preds = %cond.end
  %142 = load i32* %n, align 4, !dbg !2431
  store i32 %142, i32* %maxposarg, align 4, !dbg !2431
  %cmp239 = icmp sgt i32 %142, 9, !dbg !2431
  br i1 %cmp239, label %if.then241, label %if.end243, !dbg !2431

if.then241:                                       ; preds = %if.then238
  store i32 -1, i32* %retval, !dbg !2434
  br label %return, !dbg !2434

if.end243:                                        ; preds = %if.then238, %cond.end
  %143 = load i32* %n, align 4, !dbg !2436
  %dec = add nsw i32 %143, -1, !dbg !2436
  store i32 %dec, i32* %n, align 4, !dbg !2436
  %144 = load i32* %n, align 4, !dbg !2437
  %idxprom244 = sext i32 %144 to i64, !dbg !2437
  %145 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2437
  %argtype245 = getelementptr inbounds %struct.ppfs_t* %145, i32 0, i32 6, !dbg !2437
  %arrayidx246 = getelementptr inbounds [9 x i32]* %argtype245, i32 0, i64 %idxprom244, !dbg !2437
  %146 = load i32* %arrayidx246, align 4, !dbg !2437
  %147 = load i32* %i, align 4, !dbg !2437
  %idxprom247 = sext i32 %147 to i64, !dbg !2437
  %arrayidx248 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i64 %idxprom247, !dbg !2437
  %148 = load i32* %arrayidx248, align 4, !dbg !2437
  %call = call i32 @_is_equal_or_bigger_arg(i32 %146, i32 %148) #18, !dbg !2437
  %tobool249 = icmp ne i32 %call, 0, !dbg !2437
  br i1 %tobool249, label %if.then250, label %do.cond257, !dbg !2437

if.then250:                                       ; preds = %if.end243
  %149 = load i32* %i, align 4, !dbg !2439
  %idxprom251 = sext i32 %149 to i64, !dbg !2439
  %arrayidx252 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i64 %idxprom251, !dbg !2439
  %150 = load i32* %arrayidx252, align 4, !dbg !2439
  %151 = load i32* %n, align 4, !dbg !2439
  %idxprom253 = sext i32 %151 to i64, !dbg !2439
  %152 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2439
  %argtype254 = getelementptr inbounds %struct.ppfs_t* %152, i32 0, i32 6, !dbg !2439
  %arrayidx255 = getelementptr inbounds [9 x i32]* %argtype254, i32 0, i64 %idxprom253, !dbg !2439
  store i32 %150, i32* %arrayidx255, align 4, !dbg !2439
  br label %do.cond257, !dbg !2441

do.cond257:                                       ; preds = %if.end243, %if.then250
  %153 = load i32* %i, align 4, !dbg !2442
  %inc258 = add nsw i32 %153, 1, !dbg !2442
  store i32 %inc258, i32* %i, align 4, !dbg !2442
  %154 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2442
  %num_data_args259 = getelementptr inbounds %struct.ppfs_t* %154, i32 0, i32 3, !dbg !2442
  %155 = load i32* %num_data_args259, align 4, !dbg !2442
  %add260 = add nsw i32 %155, 2, !dbg !2442
  %cmp261 = icmp slt i32 %inc258, %add260, !dbg !2442
  br i1 %cmp261, label %do.body222, label %if.end275, !dbg !2442

if.else264:                                       ; preds = %if.end218
  %156 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2443
  %argnumber265 = getelementptr inbounds %struct.ppfs_t* %156, i32 0, i32 5, !dbg !2443
  %arrayidx266 = getelementptr inbounds [4 x i8]* %argnumber265, i32 0, i64 2, !dbg !2443
  store i8 1, i8* %arrayidx266, align 1, !dbg !2443
  %157 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2445
  %argtype267 = getelementptr inbounds %struct.ppfs_t* %157, i32 0, i32 6, !dbg !2445
  %arraydecay268 = getelementptr inbounds [9 x i32]* %argtype267, i32 0, i32 0, !dbg !2445
  %158 = bitcast i32* %arraydecay268 to i8*, !dbg !2445
  %arraydecay269 = getelementptr inbounds [3 x i32]* %argtype, i32 0, i32 0, !dbg !2445
  %add.ptr270 = getelementptr inbounds i32* %arraydecay269, i64 2, !dbg !2445
  %159 = bitcast i32* %add.ptr270 to i8*, !dbg !2445
  %160 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2445
  %num_data_args271 = getelementptr inbounds %struct.ppfs_t* %160, i32 0, i32 3, !dbg !2445
  %161 = load i32* %num_data_args271, align 4, !dbg !2445
  %conv272 = sext i32 %161 to i64, !dbg !2445
  %mul273 = mul i64 %conv272, 4, !dbg !2445
  %call274 = call i8* @memcpy(i8* %158, i8* %159, i64 %mul273) #17, !dbg !2445
  br label %if.end275

if.end275:                                        ; preds = %do.cond257, %if.else264
  %162 = load i32* %maxposarg, align 4, !dbg !2446
  %163 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2446
  %maxposarg276 = getelementptr inbounds %struct.ppfs_t* %163, i32 0, i32 2, !dbg !2446
  store i32 %162, i32* %maxposarg276, align 4, !dbg !2446
  %164 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2447
  %info277 = getelementptr inbounds %struct.ppfs_t* %164, i32 0, i32 1, !dbg !2447
  %_flags278 = getelementptr inbounds %struct.printf_info.314* %info277, i32 0, i32 3, !dbg !2447
  %165 = load i32* %_flags278, align 4, !dbg !2447
  %and279 = and i32 %165, 128, !dbg !2447
  store i32 %and279, i32* %flags, align 4, !dbg !2447
  %cmp280 = icmp eq i32 %and279, 0, !dbg !2447
  br i1 %cmp280, label %if.then282, label %if.else285, !dbg !2447

if.then282:                                       ; preds = %if.end275
  %166 = load i8** %fmt, align 8, !dbg !2449
  %incdec.ptr283 = getelementptr inbounds i8* %166, i32 1, !dbg !2449
  store i8* %incdec.ptr283, i8** %fmt, align 8, !dbg !2449
  %167 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2449
  %fmtpos284 = getelementptr inbounds %struct.ppfs_t* %167, i32 0, i32 0, !dbg !2449
  store i8* %incdec.ptr283, i8** %fmtpos284, align 8, !dbg !2449
  br label %if.end292, !dbg !2451

if.else285:                                       ; preds = %if.end275
  %168 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2452
  %fmtpos286 = getelementptr inbounds %struct.ppfs_t* %168, i32 0, i32 0, !dbg !2452
  %169 = load i8** %fmtpos286, align 8, !dbg !2452
  %170 = bitcast i8* %169 to i32*, !dbg !2452
  %171 = load i8** %fmt, align 8, !dbg !2452
  %arraydecay287 = getelementptr inbounds [32 x i8]* %buf, i32 0, i32 0, !dbg !2452
  %sub.ptr.lhs.cast288 = ptrtoint i8* %171 to i64, !dbg !2452
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay287 to i64, !dbg !2452
  %sub.ptr.sub289 = sub i64 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast, !dbg !2452
  %add.ptr290 = getelementptr inbounds i32* %170, i64 %sub.ptr.sub289, !dbg !2452
  %172 = bitcast i32* %add.ptr290 to i8*, !dbg !2452
  %173 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2452
  %fmtpos291 = getelementptr inbounds %struct.ppfs_t* %173, i32 0, i32 0, !dbg !2452
  store i8* %172, i8** %fmtpos291, align 8, !dbg !2452
  br label %if.end292

if.end292:                                        ; preds = %if.else285, %if.then282
  %174 = load %struct.ppfs_t** %ppfs.addr, align 8, !dbg !2454
  %num_data_args293 = getelementptr inbounds %struct.ppfs_t* %174, i32 0, i32 3, !dbg !2454
  %175 = load i32* %num_data_args293, align 4, !dbg !2454
  %add294 = add nsw i32 %175, 2, !dbg !2454
  store i32 %add294, i32* %retval, !dbg !2454
  br label %return, !dbg !2454

return:                                           ; preds = %if.end292, %if.then241, %if.then217, %if.then160, %if.then120, %if.then111, %if.then66, %if.then56, %if.then16
  %176 = load i32* %retval, !dbg !2455
  ret i32 %176, !dbg !2455
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_equal_or_bigger_arg(i32 %curtype, i32 %newtype) #0 {
entry:
  %retval = alloca i32, align 4
  %curtype.addr = alloca i32, align 4
  %newtype.addr = alloca i32, align 4
  store i32 %curtype, i32* %curtype.addr, align 4
  store i32 %newtype, i32* %newtype.addr, align 4
  %0 = load i32* %newtype.addr, align 4, !dbg !2456
  %cmp = icmp eq i32 %0, 8, !dbg !2456
  br i1 %cmp, label %if.then, label %if.end, !dbg !2456

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !2458
  br label %return, !dbg !2458

if.end:                                           ; preds = %entry
  %1 = load i32* %curtype.addr, align 4, !dbg !2460
  %cmp1 = icmp eq i32 %1, 8, !dbg !2460
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2460

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32* %curtype.addr, align 4, !dbg !2460
  %3 = load i32* %newtype.addr, align 4, !dbg !2460
  %cmp2 = icmp eq i32 %2, %3, !dbg !2460
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2460

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval, !dbg !2462
  br label %return, !dbg !2462

if.end4:                                          ; preds = %lor.lhs.false
  %4 = load i32* %curtype.addr, align 4, !dbg !2464
  %call = call i32 @_promoted_size(i32 %4) #18, !dbg !2464
  %5 = load i32* %newtype.addr, align 4, !dbg !2464
  %call5 = call i32 @_promoted_size(i32 %5) #18, !dbg !2464
  %cmp6 = icmp sle i32 %call, %call5, !dbg !2464
  %conv = zext i1 %cmp6 to i32, !dbg !2464
  store i32 %conv, i32* %retval, !dbg !2464
  br label %return, !dbg !2464

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32* %retval, !dbg !2465
  ret i32 %6, !dbg !2465
}

; Function Attrs: nounwind uwtable
define internal i32 @_promoted_size(i32 %argtype) #0 {
entry:
  %argtype.addr = alloca i32, align 4
  %p = alloca i16*, align 8
  store i32 %argtype, i32* %argtype.addr, align 4
  store i16* getelementptr inbounds (i16* getelementptr inbounds ([12 x i16]* @type_codes, i32 0, i32 0), i64 12), i16** %p, align 8, !dbg !2466
  br label %do.body, !dbg !2467

do.body:                                          ; preds = %do.body, %entry
  %0 = load i16** %p, align 8, !dbg !2468
  %incdec.ptr = getelementptr inbounds i16* %0, i32 -1, !dbg !2468
  store i16* %incdec.ptr, i16** %p, align 8, !dbg !2468
  %1 = load i16* %incdec.ptr, align 2, !dbg !2468
  %conv = sext i16 %1 to i32, !dbg !2468
  %2 = load i32* %argtype.addr, align 4, !dbg !2468
  %cmp = icmp ne i32 %conv, %2, !dbg !2468
  %3 = load i16** %p, align 8, !dbg !2471
  %cmp2 = icmp ugt i16* %3, getelementptr inbounds ([12 x i16]* @type_codes, i32 0, i32 0), !dbg !2471
  %or.cond = and i1 %cmp, %cmp2, !dbg !2468
  br i1 %or.cond, label %do.body, label %do.end, !dbg !2468

do.end:                                           ; preds = %do.body
  %4 = load i16** %p, align 8, !dbg !2472
  %sub.ptr.lhs.cast = ptrtoint i16* %4 to i64, !dbg !2472
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([12 x i16]* @type_codes to i64), !dbg !2472
  %int_cast_to_i64 = bitcast i64 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2472
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2, !dbg !2472
  %conv4 = trunc i64 %sub.ptr.div to i32, !dbg !2472
  %idxprom = sext i32 %conv4 to i64, !dbg !2472
  %arrayidx = getelementptr inbounds [12 x i8]* @type_sizes, i32 0, i64 %idxprom, !dbg !2472
  %5 = load i8* %arrayidx, align 1, !dbg !2472
  %conv5 = zext i8 %5 to i32, !dbg !2472
  ret i32 %conv5, !dbg !2472
}

; Function Attrs: nounwind uwtable
define i32 @fputs_unlocked(i8* noalias %s, %struct.__STDIO_FILE_STRUCT.231* noalias %stream) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %n = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !2473
  %call = call i64 @strlen(i8* %0) #19, !dbg !2473
  store i64 %call, i64* %n, align 8, !dbg !2473
  %1 = load i8** %s.addr, align 8, !dbg !2474
  %2 = load i64* %n, align 8, !dbg !2474
  %3 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2474
  %call1 = call i64 @fwrite_unlocked(i8* %1, i64 1, i64 %2, %struct.__STDIO_FILE_STRUCT.231* %3) #18, !dbg !2474
  %4 = load i64* %n, align 8, !dbg !2474
  %cmp = icmp eq i64 %call1, %4, !dbg !2474
  %5 = load i64* %n, align 8, !dbg !2474
  %cond = select i1 %cmp, i64 %5, i64 -1, !dbg !2474
  %conv = trunc i64 %cond to i32, !dbg !2474
  ret i32 %conv, !dbg !2474
}

; Function Attrs: nounwind uwtable
define i64 @fwrite_unlocked(i8* noalias %ptr, i64 %size, i64 %nmemb, %struct.__STDIO_FILE_STRUCT.231* noalias %stream) #0 {
entry:
  %retval = alloca i64, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2475
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %0, i32 0, i32 0, !dbg !2475
  %1 = load i16* %__modeflags, align 2, !dbg !2475
  %conv = zext i16 %1 to i32, !dbg !2475
  %and = and i32 %conv, 192, !dbg !2475
  %cmp = icmp eq i32 %and, 192, !dbg !2475
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2475

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2477
  %call = call i32 @__stdio_trans2w_o(%struct.__STDIO_FILE_STRUCT.231* %2, i32 128) #18, !dbg !2477
  %tobool = icmp eq i32 %call, 0, !dbg !2477
  %3 = load i64* %size.addr, align 8, !dbg !2477
  %tobool2 = icmp ne i64 %3, 0, !dbg !2477
  %or.cond = and i1 %tobool, %tobool2, !dbg !2477
  %4 = load i64* %nmemb.addr, align 8, !dbg !2477
  %tobool4 = icmp ne i64 %4, 0, !dbg !2477
  %or.cond3 = and i1 %or.cond, %tobool4, !dbg !2477
  br i1 %or.cond3, label %if.then, label %if.end13, !dbg !2477

land.lhs.true:                                    ; preds = %entry
  %.old = load i64* %size.addr, align 8, !dbg !2477
  %tobool2.old = icmp ne i64 %.old, 0, !dbg !2477
  %.old2 = load i64* %nmemb.addr, align 8, !dbg !2477
  %tobool4.old = icmp ne i64 %.old2, 0, !dbg !2477
  %or.cond5 = and i1 %tobool2.old, %tobool4.old, !dbg !2477
  br i1 %or.cond5, label %if.then, label %if.end13, !dbg !2477

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i64* %nmemb.addr, align 8, !dbg !2478
  %6 = load i64* %size.addr, align 8, !dbg !2478
  %int_cast_to_i64 = bitcast i64 %6 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2478
  %div = udiv i64 -1, %6, !dbg !2478
  %cmp5 = icmp ule i64 %5, %div, !dbg !2478
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !2478

if.then7:                                         ; preds = %if.then
  %7 = load i8** %ptr.addr, align 8, !dbg !2481
  %8 = load i64* %size.addr, align 8, !dbg !2481
  %9 = load i64* %nmemb.addr, align 8, !dbg !2481
  %mul = mul i64 %8, %9, !dbg !2481
  %10 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2481
  %call8 = call i64 @__stdio_fwrite(i8* %7, i64 %mul, %struct.__STDIO_FILE_STRUCT.231* %10) #18, !dbg !2481
  %11 = load i64* %size.addr, align 8, !dbg !2481
  %int_cast_to_i641 = bitcast i64 %11 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2481
  %div9 = udiv i64 %call8, %11, !dbg !2481
  store i64 %div9, i64* %retval, !dbg !2481
  br label %return, !dbg !2481

if.end:                                           ; preds = %if.then
  %12 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2483
  %__modeflags10 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %12, i32 0, i32 0, !dbg !2483
  %13 = load i16* %__modeflags10, align 2, !dbg !2483
  %conv11 = zext i16 %13 to i32, !dbg !2483
  %or = or i32 %conv11, 8, !dbg !2483
  %conv12 = trunc i32 %or to i16, !dbg !2483
  store i16 %conv12, i16* %__modeflags10, align 2, !dbg !2483
  store i32 22, i32* @errno, align 4, !dbg !2484
  br label %if.end13, !dbg !2485

if.end13:                                         ; preds = %lor.lhs.false, %if.end, %land.lhs.true
  store i64 0, i64* %retval, !dbg !2486
  br label %return, !dbg !2486

return:                                           ; preds = %if.end13, %if.then7
  %14 = load i64* %retval, !dbg !2487
  ret i64 %14, !dbg !2487
}

; Function Attrs: nounwind readonly uwtable
define i8* @strrchr(i8* %s, i32 %c) #6 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* null, i8** %p, align 8, !dbg !2488
  br label %do.body, !dbg !2489

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8** %s.addr, align 8, !dbg !2490
  %1 = load i8* %0, align 1, !dbg !2490
  %conv = sext i8 %1 to i32, !dbg !2490
  %2 = load i32* %c.addr, align 4, !dbg !2490
  %conv1 = trunc i32 %2 to i8, !dbg !2490
  %conv2 = sext i8 %conv1 to i32, !dbg !2490
  %cmp = icmp eq i32 %conv, %conv2, !dbg !2490
  br i1 %cmp, label %if.then, label %do.cond, !dbg !2490

if.then:                                          ; preds = %do.body
  %3 = load i8** %s.addr, align 8, !dbg !2493
  store i8* %3, i8** %p, align 8, !dbg !2493
  br label %do.cond, !dbg !2495

do.cond:                                          ; preds = %do.body, %if.then
  %4 = load i8** %s.addr, align 8, !dbg !2496
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1, !dbg !2496
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !2496
  %5 = load i8* %4, align 1, !dbg !2496
  %tobool = icmp ne i8 %5, 0, !dbg !2496
  br i1 %tobool, label %do.body, label %do.end, !dbg !2496

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !2497
  ret i8* %6, !dbg !2497
}

; Function Attrs: nounwind uwtable
define i8* @memcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %r1 = alloca i8*, align 8
  %r2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s1.addr, align 8, !dbg !2498
  store i8* %0, i8** %r1, align 8, !dbg !2498
  %1 = load i8** %s2.addr, align 8, !dbg !2499
  store i8* %1, i8** %r2, align 8, !dbg !2499
  br label %while.cond, !dbg !2500

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !2500
  %tobool = icmp ne i64 %2, 0, !dbg !2500
  br i1 %tobool, label %while.body, label %while.end, !dbg !2500

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !2501
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !2501
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !2501
  %4 = load i8* %3, align 1, !dbg !2501
  %5 = load i8** %r1, align 8, !dbg !2501
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !2501
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !2501
  store i8 %4, i8* %5, align 1, !dbg !2501
  %6 = load i64* %n.addr, align 8, !dbg !2503
  %dec = add i64 %6, -1, !dbg !2503
  store i64 %dec, i64* %n.addr, align 8, !dbg !2503
  br label %while.cond, !dbg !2504

while.end:                                        ; preds = %while.cond
  %7 = load i8** %s1.addr, align 8, !dbg !2505
  ret i8* %7, !dbg !2505
}

; Function Attrs: nounwind uwtable
define i8* @memset(i8* %s, i32 %c, i64 %n) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !2506
  store i8* %0, i8** %p, align 8, !dbg !2506
  br label %while.cond, !dbg !2507

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %n.addr, align 8, !dbg !2507
  %tobool = icmp ne i64 %1, 0, !dbg !2507
  br i1 %tobool, label %while.body, label %while.end, !dbg !2507

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4, !dbg !2508
  %conv = trunc i32 %2 to i8, !dbg !2508
  %3 = load i8** %p, align 8, !dbg !2508
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !2508
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !2508
  store i8 %conv, i8* %3, align 1, !dbg !2508
  %4 = load i64* %n.addr, align 8, !dbg !2510
  %dec = add i64 %4, -1, !dbg !2510
  store i64 %dec, i64* %n.addr, align 8, !dbg !2510
  br label %while.cond, !dbg !2511

while.end:                                        ; preds = %while.cond
  %5 = load i8** %s.addr, align 8, !dbg !2512
  ret i8* %5, !dbg !2512
}

; Function Attrs: nounwind uwtable
define i8* @strcpy(i8* noalias %s1, i8* noalias %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8** %s1.addr, align 8, !dbg !2513
  store i8* %0, i8** %s, align 8, !dbg !2513
  br label %while.cond, !dbg !2514

while.cond:                                       ; preds = %while.cond, %entry
  %1 = load i8** %s2.addr, align 8, !dbg !2514
  %incdec.ptr = getelementptr inbounds i8* %1, i32 1, !dbg !2514
  store i8* %incdec.ptr, i8** %s2.addr, align 8, !dbg !2514
  %2 = load i8* %1, align 1, !dbg !2514
  %3 = load i8** %s, align 8, !dbg !2514
  %incdec.ptr1 = getelementptr inbounds i8* %3, i32 1, !dbg !2514
  store i8* %incdec.ptr1, i8** %s, align 8, !dbg !2514
  store i8 %2, i8* %3, align 1, !dbg !2514
  %conv = sext i8 %2 to i32, !dbg !2514
  %cmp = icmp ne i32 %conv, 0, !dbg !2514
  br i1 %cmp, label %while.cond, label %while.end, !dbg !2514

while.end:                                        ; preds = %while.cond
  %4 = load i8** %s1.addr, align 8, !dbg !2515
  ret i8* %4, !dbg !2515
}

; Function Attrs: nounwind readonly uwtable
define i64 @strnlen(i8* %s, i64 %max) #6 {
entry:
  %s.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !2516
  store i8* %0, i8** %p, align 8, !dbg !2516
  br label %while.cond, !dbg !2517

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %max.addr, align 8, !dbg !2517
  %tobool = icmp ne i64 %1, 0, !dbg !2517
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2517

land.rhs:                                         ; preds = %while.cond
  %2 = load i8** %p, align 8, !dbg !2517
  %3 = load i8* %2, align 1, !dbg !2517
  %conv = sext i8 %3 to i32, !dbg !2517
  %tobool1 = icmp ne i32 %conv, 0, !dbg !2517
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  %5 = load i8** %p, align 8, !dbg !2518
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1, !dbg !2518
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !2518
  %6 = load i64* %max.addr, align 8, !dbg !2520
  %dec = add i64 %6, -1, !dbg !2520
  store i64 %dec, i64* %max.addr, align 8, !dbg !2520
  br label %while.cond, !dbg !2521

while.end:                                        ; preds = %land.end
  %7 = load i8** %s.addr, align 8, !dbg !2522
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !2522
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !2522
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2522
  ret i64 %sub.ptr.sub, !dbg !2522
}

; Function Attrs: nounwind uwtable
define i8* @__glibc_strerror_r(i32 %errnum, i8* %strerrbuf, i64 %buflen) #0 {
entry:
  %errnum.addr = alloca i32, align 4
  %strerrbuf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  store i32 %errnum, i32* %errnum.addr, align 4
  store i8* %strerrbuf, i8** %strerrbuf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  %0 = load i32* %errnum.addr, align 4, !dbg !2523
  %1 = load i8** %strerrbuf.addr, align 8, !dbg !2523
  %2 = load i64* %buflen.addr, align 8, !dbg !2523
  %call = call i32 @__xpg_strerror_r(i32 %0, i8* %1, i64 %2) #18, !dbg !2523
  %3 = load i8** %strerrbuf.addr, align 8, !dbg !2524
  ret i8* %3, !dbg !2524
}

; Function Attrs: nounwind uwtable
define i32 @__xpg_strerror_r(i32 %errnum, i8* %strerrbuf, i64 %buflen) #0 {
entry:
  %errnum.addr = alloca i32, align 4
  %strerrbuf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  store i32 %errnum, i32* %errnum.addr, align 4
  store i8* %strerrbuf, i8** %strerrbuf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 22, i32* %retval1, align 4, !dbg !2525
  %0 = load i32* %errnum.addr, align 4, !dbg !2526
  store i32 %0, i32* %i, align 4, !dbg !2526
  %1 = load i32* %i, align 4, !dbg !2527
  %cmp = icmp ult i32 %1, 125, !dbg !2527
  br i1 %cmp, label %if.then, label %if.end7, !dbg !2527

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2906 x i8]* @_string_syserrmsgs, i32 0, i32 0), i8** %s, align 8, !dbg !2529
  br label %for.cond, !dbg !2529

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32* %i, align 4, !dbg !2529
  %tobool = icmp ne i32 %2, 0, !dbg !2529
  %3 = load i8** %s, align 8, !dbg !2532
  %4 = load i8* %3, align 1, !dbg !2532
  %tobool2 = icmp ne i8 %4, 0, !dbg !2532
  br i1 %tobool, label %for.body, label %for.end, !dbg !2529

for.body:                                         ; preds = %for.cond
  br i1 %tobool2, label %for.inc, label %if.then3, !dbg !2532

if.then3:                                         ; preds = %for.body
  %5 = load i32* %i, align 4, !dbg !2535
  %dec = add nsw i32 %5, -1, !dbg !2535
  store i32 %dec, i32* %i, align 4, !dbg !2535
  br label %for.inc, !dbg !2537

for.inc:                                          ; preds = %for.body, %if.then3
  %6 = load i8** %s, align 8, !dbg !2529
  %incdec.ptr = getelementptr inbounds i8* %6, i32 1, !dbg !2529
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !2529
  br label %for.cond, !dbg !2529

for.end:                                          ; preds = %for.cond
  br i1 %tobool2, label %if.then5, label %if.end7, !dbg !2538

if.then5:                                         ; preds = %for.end
  store i32 0, i32* %retval1, align 4, !dbg !2540
  br label %GOT_MESG, !dbg !2542

if.end7:                                          ; preds = %for.end, %entry
  %arraydecay = getelementptr inbounds [50 x i8]* %buf, i32 0, i32 0, !dbg !2543
  %add.ptr = getelementptr inbounds i8* %arraydecay, i64 50, !dbg !2543
  %add.ptr8 = getelementptr inbounds i8* %add.ptr, i64 -1, !dbg !2543
  %7 = load i32* %errnum.addr, align 4, !dbg !2543
  %conv = sext i32 %7 to i64, !dbg !2543
  %call = call i8* @_uintmaxtostr(i8* %add.ptr8, i64 %conv, i32 -10, i32 0) #18, !dbg !2543
  %add.ptr9 = getelementptr inbounds i8* %call, i64 -14, !dbg !2543
  store i8* %add.ptr9, i8** %s, align 8, !dbg !2543
  %8 = load i8** %s, align 8, !dbg !2544
  %call10 = call i8* @memcpy(i8* %8, i8* getelementptr inbounds ([14 x i8]* @__xpg_strerror_r.unknown, i32 0, i32 0), i64 14) #17, !dbg !2544
  br label %GOT_MESG, !dbg !2544

GOT_MESG:                                         ; preds = %if.end7, %if.then5
  %9 = load i8** %strerrbuf.addr, align 8, !dbg !2545
  %tobool11 = icmp ne i8* %9, null, !dbg !2545
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2545

if.then12:                                        ; preds = %GOT_MESG
  store i64 0, i64* %buflen.addr, align 8, !dbg !2547
  br label %if.end13, !dbg !2549

if.end13:                                         ; preds = %if.then12, %GOT_MESG
  %10 = load i8** %s, align 8, !dbg !2550
  %call14 = call i64 @strlen(i8* %10) #19, !dbg !2550
  %add = add i64 %call14, 1, !dbg !2550
  %conv15 = trunc i64 %add to i32, !dbg !2550
  store i32 %conv15, i32* %i, align 4, !dbg !2550
  %11 = load i32* %i, align 4, !dbg !2551
  %conv16 = sext i32 %11 to i64, !dbg !2551
  %12 = load i64* %buflen.addr, align 8, !dbg !2551
  %cmp17 = icmp ugt i64 %conv16, %12, !dbg !2551
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !2551

if.then19:                                        ; preds = %if.end13
  %13 = load i64* %buflen.addr, align 8, !dbg !2553
  %conv20 = trunc i64 %13 to i32, !dbg !2553
  store i32 %conv20, i32* %i, align 4, !dbg !2553
  store i32 34, i32* %retval1, align 4, !dbg !2555
  br label %if.end21, !dbg !2556

if.end21:                                         ; preds = %if.then19, %if.end13
  %14 = load i32* %i, align 4, !dbg !2557
  %tobool22 = icmp ne i32 %14, 0, !dbg !2557
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !2557

if.then23:                                        ; preds = %if.end21
  %15 = load i8** %strerrbuf.addr, align 8, !dbg !2559
  %16 = load i8** %s, align 8, !dbg !2559
  %17 = load i32* %i, align 4, !dbg !2559
  %conv24 = sext i32 %17 to i64, !dbg !2559
  %call25 = call i8* @memcpy(i8* %15, i8* %16, i64 %conv24) #17, !dbg !2559
  %18 = load i32* %i, align 4, !dbg !2561
  %sub = sub nsw i32 %18, 1, !dbg !2561
  %idxprom = sext i32 %sub to i64, !dbg !2561
  %19 = load i8** %strerrbuf.addr, align 8, !dbg !2561
  %arrayidx = getelementptr inbounds i8* %19, i64 %idxprom, !dbg !2561
  store i8 0, i8* %arrayidx, align 1, !dbg !2561
  br label %if.end26, !dbg !2562

if.end26:                                         ; preds = %if.then23, %if.end21
  %20 = load i32* %retval1, align 4, !dbg !2563
  %tobool27 = icmp ne i32 %20, 0, !dbg !2563
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !2563

if.then28:                                        ; preds = %if.end26
  %21 = load i32* %retval1, align 4, !dbg !2565
  store i32 %21, i32* @errno, align 4, !dbg !2565
  br label %if.end29, !dbg !2567

if.end29:                                         ; preds = %if.then28, %if.end26
  %22 = load i32* %retval1, align 4, !dbg !2568
  ret i32 %22, !dbg !2568
}

; Function Attrs: nounwind readonly uwtable
define i64 @strlen(i8* %s) #6 {
entry:
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !2569
  store i8* %0, i8** %p, align 8, !dbg !2569
  br label %for.cond, !dbg !2569

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8** %p, align 8, !dbg !2569
  %2 = load i8* %1, align 1, !dbg !2569
  %tobool = icmp ne i8 %2, 0, !dbg !2569
  %3 = load i8** %p, align 8, !dbg !2569
  br i1 %tobool, label %for.inc, label %for.end, !dbg !2569

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !2569
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !2569
  br label %for.cond, !dbg !2569

for.end:                                          ; preds = %for.cond
  %4 = load i8** %s.addr, align 8, !dbg !2571
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64, !dbg !2571
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64, !dbg !2571
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2571
  ret i64 %sub.ptr.sub, !dbg !2571
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %term = alloca %struct.termios.442, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !2572
  %call = call i32 @tcgetattr(i32 %0, %struct.termios.442* %term) #17, !dbg !2572
  %cmp = icmp eq i32 %call, 0, !dbg !2572
  %conv = zext i1 %cmp to i32, !dbg !2572
  ret i32 %conv, !dbg !2572
}

; Function Attrs: nounwind uwtable
define i32 @tcgetattr(i32 %fd, %struct.termios.442* %termios_p) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %termios_p.addr = alloca %struct.termios.442*, align 8
  %k_termios = alloca %struct.__kernel_termios.447, align 4
  %retval1 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.termios.442* %termios_p, %struct.termios.442** %termios_p.addr, align 8
  %0 = load i32* %fd.addr, align 4, !dbg !2573
  %call = call i32 (i32, i64, ...)* @ioctl(i32 %0, i64 21505, %struct.__kernel_termios.447* %k_termios) #17, !dbg !2573
  store i32 %call, i32* %retval1, align 4, !dbg !2573
  %c_iflag = getelementptr inbounds %struct.__kernel_termios.447* %k_termios, i32 0, i32 0, !dbg !2574
  %1 = load i32* %c_iflag, align 4, !dbg !2574
  %2 = load %struct.termios.442** %termios_p.addr, align 8, !dbg !2574
  %c_iflag2 = getelementptr inbounds %struct.termios.442* %2, i32 0, i32 0, !dbg !2574
  store i32 %1, i32* %c_iflag2, align 4, !dbg !2574
  %c_oflag = getelementptr inbounds %struct.__kernel_termios.447* %k_termios, i32 0, i32 1, !dbg !2575
  %3 = load i32* %c_oflag, align 4, !dbg !2575
  %4 = load %struct.termios.442** %termios_p.addr, align 8, !dbg !2575
  %c_oflag3 = getelementptr inbounds %struct.termios.442* %4, i32 0, i32 1, !dbg !2575
  store i32 %3, i32* %c_oflag3, align 4, !dbg !2575
  %c_cflag = getelementptr inbounds %struct.__kernel_termios.447* %k_termios, i32 0, i32 2, !dbg !2576
  %5 = load i32* %c_cflag, align 4, !dbg !2576
  %6 = load %struct.termios.442** %termios_p.addr, align 8, !dbg !2576
  %c_cflag4 = getelementptr inbounds %struct.termios.442* %6, i32 0, i32 2, !dbg !2576
  store i32 %5, i32* %c_cflag4, align 4, !dbg !2576
  %c_lflag = getelementptr inbounds %struct.__kernel_termios.447* %k_termios, i32 0, i32 3, !dbg !2577
  %7 = load i32* %c_lflag, align 4, !dbg !2577
  %8 = load %struct.termios.442** %termios_p.addr, align 8, !dbg !2577
  %c_lflag5 = getelementptr inbounds %struct.termios.442* %8, i32 0, i32 3, !dbg !2577
  store i32 %7, i32* %c_lflag5, align 4, !dbg !2577
  %c_line = getelementptr inbounds %struct.__kernel_termios.447* %k_termios, i32 0, i32 4, !dbg !2578
  %9 = load i8* %c_line, align 1, !dbg !2578
  %10 = load %struct.termios.442** %termios_p.addr, align 8, !dbg !2578
  %c_line6 = getelementptr inbounds %struct.termios.442* %10, i32 0, i32 4, !dbg !2578
  store i8 %9, i8* %c_line6, align 1, !dbg !2578
  %11 = load %struct.termios.442** %termios_p.addr, align 8, !dbg !2579
  %c_cc = getelementptr inbounds %struct.termios.442* %11, i32 0, i32 5, !dbg !2579
  %arrayidx = getelementptr inbounds [32 x i8]* %c_cc, i32 0, i64 0, !dbg !2579
  %c_cc7 = getelementptr inbounds %struct.__kernel_termios.447* %k_termios, i32 0, i32 5, !dbg !2579
  %arrayidx8 = getelementptr inbounds [19 x i8]* %c_cc7, i32 0, i64 0, !dbg !2579
  %call9 = call i8* @mempcpy(i8* %arrayidx, i8* %arrayidx8, i64 19) #17, !dbg !2579
  %call10 = call i8* @memset(i8* %call9, i32 0, i64 13) #17, !dbg !2579
  %12 = load i32* %retval1, align 4, !dbg !2582
  ret i32 %12, !dbg !2582
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
entry:
  %0 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !2583
  %tobool = icmp ne i32 %0, 0, !dbg !2583
  br i1 %tobool, label %if.end3, label %if.end, !dbg !2583

if.end:                                           ; preds = %entry
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !2585
  %inc = add nsw i32 %1, 1, !dbg !2585
  store i32 %inc, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !2585
  store i64 4096, i64* @__pagesize, align 8, !dbg !2586
  %tobool1 = icmp ne i64 1, 0, !dbg !2587
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2587

if.then2:                                         ; preds = %if.end
  call void @_stdio_init() #18, !dbg !2589
  br label %if.end3, !dbg !2589

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !2590
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !2591
  %cmp = icmp ne void ()* %0, null, !dbg !2591
  br i1 %cmp, label %if.then, label %if.end, !dbg !2591

if.then:                                          ; preds = %entry
  %1 = load void ()** @__app_fini, align 8, !dbg !2593
  call void %1() #18, !dbg !2593
  br label %if.end, !dbg !2593

if.end:                                           ; preds = %if.then, %entry
  %2 = load void ()** @__rtld_fini, align 8, !dbg !2594
  %cmp1 = icmp ne void ()* %2, null, !dbg !2594
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2594

if.then2:                                         ; preds = %if.end
  %3 = load void ()** @__rtld_fini, align 8, !dbg !2596
  call void %3() #18, !dbg !2596
  br label %if.end3, !dbg !2596

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !2597
}

; Function Attrs: noreturn nounwind uwtable
define void @__uClibc_main(i32 (i32, i8**, i8**)* %main, i32 %argc, i8** %argv, void ()* %app_init, void ()* %app_fini, void ()* %rtld_fini, i8* %stack_end) #7 {
entry:
  %main.addr = alloca i32 (i32, i8**, i8**)*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %app_init.addr = alloca void ()*, align 8
  %app_fini.addr = alloca void ()*, align 8
  %rtld_fini.addr = alloca void ()*, align 8
  %stack_end.addr = alloca i8*, align 8
  %aux_dat = alloca i64*, align 8
  %auxvt = alloca [15 x %struct.Elf64_auxv_t], align 16
  %auxv_entry = alloca %struct.Elf64_auxv_t*, align 8
  store i32 (i32, i8**, i8**)* %main, i32 (i32, i8**, i8**)** %main.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store void ()* %app_init, void ()** %app_init.addr, align 8
  store void ()* %app_fini, void ()** %app_fini.addr, align 8
  store void ()* %rtld_fini, void ()** %rtld_fini.addr, align 8
  store i8* %stack_end, i8** %stack_end.addr, align 8
  %0 = load i8** %stack_end.addr, align 8, !dbg !2598
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !2598
  %1 = load void ()** %rtld_fini.addr, align 8, !dbg !2599
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !2599
  %2 = load i32* %argc.addr, align 4, !dbg !2600
  %add = add nsw i32 %2, 1, !dbg !2600
  %idxprom = sext i32 %add to i64, !dbg !2600
  %3 = load i8*** %argv.addr, align 8, !dbg !2600
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !2600
  store i8** %arrayidx, i8*** @__environ, align 8, !dbg !2600
  %4 = load i8*** @__environ, align 8, !dbg !2601
  %5 = bitcast i8** %4 to i8*, !dbg !2601
  %6 = load i8*** %argv.addr, align 8, !dbg !2601
  %7 = load i8** %6, align 8, !dbg !2601
  %cmp = icmp eq i8* %5, %7, !dbg !2601
  br i1 %cmp, label %if.then, label %if.end, !dbg !2601

if.then:                                          ; preds = %entry
  %8 = load i32* %argc.addr, align 4, !dbg !2603
  %idxprom1 = sext i32 %8 to i64, !dbg !2603
  %9 = load i8*** %argv.addr, align 8, !dbg !2603
  %arrayidx2 = getelementptr inbounds i8** %9, i64 %idxprom1, !dbg !2603
  store i8** %arrayidx2, i8*** @__environ, align 8, !dbg !2603
  br label %if.end, !dbg !2605

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !2606
  %10 = bitcast %struct.Elf64_auxv_t* %arraydecay to i8*, !dbg !2606
  %call = call i8* @memset(i8* %10, i32 0, i64 240) #17, !dbg !2606
  %11 = load i8*** @__environ, align 8, !dbg !2607
  %12 = bitcast i8** %11 to i64*, !dbg !2607
  store i64* %12, i64** %aux_dat, align 8, !dbg !2607
  br label %while.cond, !dbg !2608

while.cond:                                       ; preds = %while.cond, %if.end
  %13 = load i64** %aux_dat, align 8, !dbg !2608
  %14 = load i64* %13, align 8, !dbg !2608
  %tobool = icmp ne i64 %14, 0, !dbg !2608
  %15 = load i64** %aux_dat, align 8, !dbg !2609
  %incdec.ptr = getelementptr inbounds i64* %15, i32 1, !dbg !2609
  store i64* %incdec.ptr, i64** %aux_dat, align 8, !dbg !2609
  br i1 %tobool, label %while.cond, label %while.cond4, !dbg !2608

while.cond4:                                      ; preds = %while.cond, %if.end12
  %16 = load i64** %aux_dat, align 8, !dbg !2611
  %17 = load i64* %16, align 8, !dbg !2611
  %tobool5 = icmp ne i64 %17, 0, !dbg !2611
  br i1 %tobool5, label %while.body6, label %while.end13, !dbg !2611

while.body6:                                      ; preds = %while.cond4
  %18 = load i64** %aux_dat, align 8, !dbg !2612
  %19 = bitcast i64* %18 to %struct.Elf64_auxv_t*, !dbg !2612
  store %struct.Elf64_auxv_t* %19, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !2612
  %20 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !2614
  %a_type = getelementptr inbounds %struct.Elf64_auxv_t* %20, i32 0, i32 0, !dbg !2614
  %21 = load i64* %a_type, align 8, !dbg !2614
  %cmp7 = icmp ule i64 %21, 14, !dbg !2614
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !2614

if.then8:                                         ; preds = %while.body6
  %22 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !2616
  %a_type9 = getelementptr inbounds %struct.Elf64_auxv_t* %22, i32 0, i32 0, !dbg !2616
  %23 = load i64* %a_type9, align 8, !dbg !2616
  %arrayidx10 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %23, !dbg !2616
  %24 = bitcast %struct.Elf64_auxv_t* %arrayidx10 to i8*, !dbg !2616
  %25 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !2616
  %26 = bitcast %struct.Elf64_auxv_t* %25 to i8*, !dbg !2616
  %call11 = call i8* @memcpy(i8* %24, i8* %26, i64 16) #17, !dbg !2616
  br label %if.end12, !dbg !2618

if.end12:                                         ; preds = %if.then8, %while.body6
  %27 = load i64** %aux_dat, align 8, !dbg !2619
  %add.ptr = getelementptr inbounds i64* %27, i64 2, !dbg !2619
  store i64* %add.ptr, i64** %aux_dat, align 8, !dbg !2619
  br label %while.cond4, !dbg !2620

while.end13:                                      ; preds = %while.cond4
  call void @__uClibc_init() #18, !dbg !2621
  %arrayidx14 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !2622
  %a_un = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx14, i32 0, i32 1, !dbg !2622
  %a_val = bitcast %union.anon.647* %a_un to i64*, !dbg !2622
  %28 = load i64* %a_val, align 8, !dbg !2622
  %tobool15 = icmp ne i64 %28, 0, !dbg !2622
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !2622

cond.true:                                        ; preds = %while.end13
  %arrayidx16 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !2622
  %a_un17 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx16, i32 0, i32 1, !dbg !2622
  %a_val18 = bitcast %union.anon.647* %a_un17 to i64*, !dbg !2622
  %29 = load i64* %a_val18, align 8, !dbg !2622
  br label %cond.end, !dbg !2622

cond.end:                                         ; preds = %while.end13, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 4096, %while.end13 ], !dbg !2622
  store i64 %cond, i64* @__pagesize, align 8, !dbg !2622
  %arrayidx19 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !2623
  %a_un20 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx19, i32 0, i32 1, !dbg !2623
  %a_val21 = bitcast %union.anon.647* %a_un20 to i64*, !dbg !2623
  %30 = load i64* %a_val21, align 8, !dbg !2623
  %cmp22 = icmp eq i64 %30, -1, !dbg !2623
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !2623

land.lhs.true:                                    ; preds = %cond.end
  %call23 = call i32 @__check_suid() #18, !dbg !2623
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2623
  br i1 %tobool24, label %if.then45, label %lor.lhs.false, !dbg !2623

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %arrayidx25 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !2623
  %a_un26 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx25, i32 0, i32 1, !dbg !2623
  %a_val27 = bitcast %union.anon.647* %a_un26 to i64*, !dbg !2623
  %31 = load i64* %a_val27, align 8, !dbg !2623
  %cmp28 = icmp ne i64 %31, -1, !dbg !2623
  br i1 %cmp28, label %land.lhs.true29, label %if.end46, !dbg !2623

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !2623
  %a_un31 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx30, i32 0, i32 1, !dbg !2623
  %a_val32 = bitcast %union.anon.647* %a_un31 to i64*, !dbg !2623
  %32 = load i64* %a_val32, align 8, !dbg !2623
  %arrayidx33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !2623
  %a_un34 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx33, i32 0, i32 1, !dbg !2623
  %a_val35 = bitcast %union.anon.647* %a_un34 to i64*, !dbg !2623
  %33 = load i64* %a_val35, align 8, !dbg !2623
  %cmp36 = icmp ne i64 %32, %33, !dbg !2623
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !2623

lor.lhs.false37:                                  ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !2623
  %a_un39 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx38, i32 0, i32 1, !dbg !2623
  %a_val40 = bitcast %union.anon.647* %a_un39 to i64*, !dbg !2623
  %34 = load i64* %a_val40, align 8, !dbg !2623
  %arrayidx41 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !2623
  %a_un42 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx41, i32 0, i32 1, !dbg !2623
  %a_val43 = bitcast %union.anon.647* %a_un42 to i64*, !dbg !2623
  %35 = load i64* %a_val43, align 8, !dbg !2623
  %cmp44 = icmp ne i64 %34, %35, !dbg !2623
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !2623

if.then45:                                        ; preds = %lor.lhs.false37, %land.lhs.true29, %land.lhs.true
  call void @__check_one_fd(i32 0, i32 131072) #18, !dbg !2625
  call void @__check_one_fd(i32 1, i32 131074) #18, !dbg !2627
  call void @__check_one_fd(i32 2, i32 131074) #18, !dbg !2628
  br label %if.end46, !dbg !2629

if.end46:                                         ; preds = %if.then45, %lor.lhs.false37, %lor.lhs.false
  %36 = load i8*** %argv.addr, align 8, !dbg !2630
  %37 = load i8** %36, align 8, !dbg !2630
  store i8* %37, i8** @__uclibc_progname, align 8, !dbg !2630
  %38 = load i8*** %argv.addr, align 8, !dbg !2631
  %39 = load i8** %38, align 8, !dbg !2631
  store i8* %39, i8** @program_invocation_name, align 8, !dbg !2631
  %40 = load i8*** %argv.addr, align 8, !dbg !2632
  %41 = load i8** %40, align 8, !dbg !2632
  %call47 = call i8* @strrchr(i8* %41, i32 47) #19, !dbg !2632
  store i8* %call47, i8** @program_invocation_short_name, align 8, !dbg !2632
  %42 = load i8** @program_invocation_short_name, align 8, !dbg !2633
  %cmp48 = icmp ne i8* %42, null, !dbg !2633
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !2633

if.then49:                                        ; preds = %if.end46
  %43 = load i8** @program_invocation_short_name, align 8, !dbg !2635
  %incdec.ptr50 = getelementptr inbounds i8* %43, i32 1, !dbg !2635
  store i8* %incdec.ptr50, i8** @program_invocation_short_name, align 8, !dbg !2635
  br label %if.end51, !dbg !2635

if.else:                                          ; preds = %if.end46
  %44 = load i8** @program_invocation_name, align 8, !dbg !2636
  store i8* %44, i8** @program_invocation_short_name, align 8, !dbg !2636
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %45 = load void ()** %app_fini.addr, align 8, !dbg !2637
  store void ()* %45, void ()** @__app_fini, align 8, !dbg !2637
  %46 = load void ()** %app_init.addr, align 8, !dbg !2638
  %cmp52 = icmp ne void ()* %46, null, !dbg !2638
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !2638

if.then53:                                        ; preds = %if.end51
  %47 = load void ()** %app_init.addr, align 8, !dbg !2640
  call void %47() #18, !dbg !2640
  br label %if.end54, !dbg !2642

if.end54:                                         ; preds = %if.then53, %if.end51
  %tobool55 = icmp ne i64 1, 0, !dbg !2643
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !2643

if.then56:                                        ; preds = %if.end54
  %call57 = call i32* @__errno_location() #20, !dbg !2645
  store i32 0, i32* %call57, align 4, !dbg !2645
  br label %if.end58, !dbg !2645

if.end58:                                         ; preds = %if.then56, %if.end54
  %tobool60 = icmp ne i64 1, 0, !dbg !2646
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !2646

if.then61:                                        ; preds = %if.end58
  %call62 = call i32* @__h_errno_location() #20, !dbg !2648
  store i32 0, i32* %call62, align 4, !dbg !2648
  br label %if.end63, !dbg !2648

if.end63:                                         ; preds = %if.then61, %if.end58
  %48 = load i32 (i32, i8**, i8**)** %main.addr, align 8, !dbg !2649
  %49 = load i32* %argc.addr, align 4, !dbg !2649
  %50 = load i8*** %argv.addr, align 8, !dbg !2649
  %51 = load i8*** @__environ, align 8, !dbg !2649
  %call64 = call i32 %48(i32 %49, i8** %50, i8** %51) #18, !dbg !2649
  call void @exit(i32 %call64) #21, !dbg !2649
  unreachable, !dbg !2649
}

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @getgid() #3

; Function Attrs: nounwind
declare i32 @getegid() #3

; Function Attrs: nounwind uwtable
define internal i32 @__check_suid() #0 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca i32, align 4
  %euid = alloca i32, align 4
  %gid = alloca i32, align 4
  %egid = alloca i32, align 4
  %call = call i32 @getuid() #17, !dbg !2650
  store i32 %call, i32* %uid, align 4, !dbg !2650
  %call1 = call i32 @geteuid() #17, !dbg !2652
  store i32 %call1, i32* %euid, align 4, !dbg !2652
  %call2 = call i32 @getgid() #17, !dbg !2653
  store i32 %call2, i32* %gid, align 4, !dbg !2653
  %call3 = call i32 @getegid() #17, !dbg !2654
  store i32 %call3, i32* %egid, align 4, !dbg !2654
  %0 = load i32* %uid, align 4, !dbg !2655
  %1 = load i32* %euid, align 4, !dbg !2655
  %cmp = icmp eq i32 %0, %1, !dbg !2655
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2655

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %gid, align 4, !dbg !2655
  %3 = load i32* %egid, align 4, !dbg !2655
  %cmp4 = icmp eq i32 %2, %3, !dbg !2655
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2655

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !2657
  br label %return, !dbg !2657

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, !dbg !2659
  br label %return, !dbg !2659

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval, !dbg !2660
  ret i32 %4, !dbg !2660
}

; Function Attrs: nounwind uwtable
define internal void @__check_one_fd(i32 %fd, i32 %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %st = alloca %struct.stat.646, align 8
  %nullfd = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !2661
  %call = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) #18, !dbg !2661
  %cmp = icmp eq i32 %call, -1, !dbg !2661
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2661

land.rhs:                                         ; preds = %entry
  %call1 = call i32* @__errno_location() #20, !dbg !2661
  %1 = load i32* %call1, align 4, !dbg !2661
  %cmp2 = icmp eq i32 %1, 9, !dbg !2661
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %land.end
  %3 = load i32* %mode.addr, align 4, !dbg !2663
  %call4 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str159, i32 0, i32 0), i32 %3) #18, !dbg !2663
  store i32 %call4, i32* %nullfd, align 4, !dbg !2663
  %4 = load i32* %nullfd, align 4, !dbg !2665
  %5 = load i32* %fd.addr, align 4, !dbg !2665
  %cmp5 = icmp ne i32 %4, %5, !dbg !2665
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !2665

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %fd.addr, align 4, !dbg !2665
  %call7 = call i32 bitcast (i32 (i32, %struct.stat*)* @fstat to i32 (i32, %struct.stat.646*)*)(i32 %6, %struct.stat.646* %st) #17, !dbg !2665
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2665
  br i1 %tobool8, label %if.then16, label %lor.lhs.false9, !dbg !2665

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat.646* %st, i32 0, i32 3, !dbg !2665
  %7 = load i32* %st_mode, align 4, !dbg !2665
  %and = and i32 %7, 61440, !dbg !2665
  %cmp10 = icmp eq i32 %and, 8192, !dbg !2665
  br i1 %cmp10, label %lor.lhs.false12, label %if.then16, !dbg !2665

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %st_rdev = getelementptr inbounds %struct.stat.646* %st, i32 0, i32 7, !dbg !2665
  %8 = load i64* %st_rdev, align 8, !dbg !2665
  %call13 = call i64 @gnu_dev_makedev(i32 1, i32 3) #17, !dbg !2667
  %cmp14 = icmp ne i64 %8, %call13, !dbg !2667
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2667

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %if.then
  call void @abort() #21, !dbg !2668
  unreachable, !dbg !2668

if.end17:                                         ; preds = %lor.lhs.false12, %land.end
  ret void, !dbg !2670
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #8 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %0 = load i32* %__minor.addr, align 4, !dbg !2671
  %and = and i32 %0, 255, !dbg !2671
  %1 = load i32* %__major.addr, align 4, !dbg !2671
  %and1 = and i32 %1, 4095, !dbg !2671
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !2671
  %shl = shl i32 %and1, 8, !dbg !2671
  %or = or i32 %and, %shl, !dbg !2671
  %conv = zext i32 %or to i64, !dbg !2671
  %2 = load i32* %__minor.addr, align 4, !dbg !2671
  %and2 = and i32 %2, -256, !dbg !2671
  %conv3 = zext i32 %and2 to i64, !dbg !2671
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !2671
  %shl4 = shl i64 %conv3, 12, !dbg !2671
  %or5 = or i64 %conv, %shl4, !dbg !2671
  %3 = load i32* %__major.addr, align 4, !dbg !2671
  %and6 = and i32 %3, -4096, !dbg !2671
  %conv7 = zext i32 %and6 to i64, !dbg !2671
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !2671
  %shl8 = shl i64 %conv7, 32, !dbg !2671
  %or9 = or i64 %or5, %shl8, !dbg !2671
  ret i64 %or9, !dbg !2671
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__errno_location() #9 {
entry:
  ret i32* @errno, !dbg !2673
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #9 {
entry:
  ret i32* @h_errno, !dbg !2674
}

; Function Attrs: nounwind uwtable
define i64 @wcrtomb(i8* noalias %s, i32 %wc, %struct.__mbstate_t.230* noalias %ps) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %wc.addr = alloca i32, align 4
  %ps.addr = alloca %struct.__mbstate_t.230*, align 8
  %wcbuf = alloca [1 x i32], align 4
  %pwc = alloca i32*, align 8
  %r = alloca i64, align 8
  %buf = alloca [16 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  store i32 %wc, i32* %wc.addr, align 4
  store %struct.__mbstate_t.230* %ps, %struct.__mbstate_t.230** %ps.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !2675
  %tobool = icmp ne i8* %0, null, !dbg !2675
  br i1 %tobool, label %if.end, label %if.then, !dbg !2675

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !2677
  store i8* %arraydecay, i8** %s.addr, align 8, !dbg !2677
  store i32 0, i32* %wc.addr, align 4, !dbg !2679
  br label %if.end, !dbg !2680

if.end:                                           ; preds = %if.then, %entry
  %arraydecay1 = getelementptr inbounds [1 x i32]* %wcbuf, i32 0, i32 0, !dbg !2681
  store i32* %arraydecay1, i32** %pwc, align 8, !dbg !2681
  %1 = load i32* %wc.addr, align 4, !dbg !2682
  %arrayidx = getelementptr inbounds [1 x i32]* %wcbuf, i32 0, i64 0, !dbg !2682
  store i32 %1, i32* %arrayidx, align 4, !dbg !2682
  %2 = load i8** %s.addr, align 8, !dbg !2683
  %3 = load %struct.__mbstate_t.230** %ps.addr, align 8, !dbg !2683
  %call = call i64 @wcsnrtombs(i8* %2, i32** %pwc, i64 1, i64 16, %struct.__mbstate_t.230* %3) #17, !dbg !2683
  store i64 %call, i64* %r, align 8, !dbg !2683
  %4 = load i64* %r, align 8, !dbg !2684
  %cmp = icmp ne i64 %4, 0, !dbg !2684
  %5 = load i64* %r, align 8, !dbg !2684
  %cond = select i1 %cmp, i64 %5, i64 1, !dbg !2684
  ret i64 %cond, !dbg !2684
}

; Function Attrs: nounwind uwtable
define i64 @wcsrtombs(i8* noalias %dst, i32** noalias %src, i64 %len, %struct.__mbstate_t.230* noalias %ps) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i32**, align 8
  %len.addr = alloca i64, align 8
  %ps.addr = alloca %struct.__mbstate_t.230*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32** %src, i32*** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.__mbstate_t.230* %ps, %struct.__mbstate_t.230** %ps.addr, align 8
  %0 = load i8** %dst.addr, align 8, !dbg !2685
  %1 = load i32*** %src.addr, align 8, !dbg !2685
  %2 = load i64* %len.addr, align 8, !dbg !2685
  %3 = load %struct.__mbstate_t.230** %ps.addr, align 8, !dbg !2685
  %call = call i64 @wcsnrtombs(i8* %0, i32** %1, i64 -1, i64 %2, %struct.__mbstate_t.230* %3) #17, !dbg !2685
  ret i64 %call, !dbg !2685
}

; Function Attrs: nounwind uwtable
define i64 @wcsnrtombs(i8* noalias %dst, i32** noalias %src, i64 %NWC, i64 %len, %struct.__mbstate_t.230* noalias %ps) #0 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i32**, align 8
  %NWC.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %ps.addr = alloca %struct.__mbstate_t.230*, align 8
  %s = alloca i32*, align 8
  %count = alloca i64, align 8
  %incr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  store i8* %dst, i8** %dst.addr, align 8
  store i32** %src, i32*** %src.addr, align 8
  store i64 %NWC, i64* %NWC.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.__mbstate_t.230* %ps, %struct.__mbstate_t.230** %ps.addr, align 8
  store i32 1, i32* %incr, align 4, !dbg !2686
  %0 = load i8** %dst.addr, align 8, !dbg !2687
  %tobool = icmp ne i8* %0, null, !dbg !2687
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2687

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8** %dst.addr, align 8, !dbg !2687
  %2 = load i32*** %src.addr, align 8, !dbg !2687
  %3 = bitcast i32** %2 to i8*, !dbg !2687
  %cmp = icmp eq i8* %1, %3, !dbg !2687
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2687

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8** %dst.addr, align 8, !dbg !2689
  %tobool1 = icmp ne i8* %4, null, !dbg !2689
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2689

if.then2:                                         ; preds = %if.then
  store i64 -1, i64* %len.addr, align 8, !dbg !2692
  br label %if.end, !dbg !2694

if.end:                                           ; preds = %if.then2, %if.then
  %arraydecay = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !2695
  store i8* %arraydecay, i8** %dst.addr, align 8, !dbg !2695
  store i32 0, i32* %incr, align 4, !dbg !2696
  br label %if.end3, !dbg !2697

if.end3:                                          ; preds = %if.end, %lor.lhs.false
  %5 = load i64* %len.addr, align 8, !dbg !2698
  %6 = load i64* %NWC.addr, align 8, !dbg !2698
  %cmp4 = icmp ugt i64 %5, %6, !dbg !2698
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2698

if.then5:                                         ; preds = %if.end3
  %7 = load i64* %NWC.addr, align 8, !dbg !2700
  store i64 %7, i64* %len.addr, align 8, !dbg !2700
  br label %if.end6, !dbg !2702

if.end6:                                          ; preds = %if.then5, %if.end3
  %8 = load i64* %len.addr, align 8, !dbg !2703
  store i64 %8, i64* %count, align 8, !dbg !2703
  %9 = load i32*** %src.addr, align 8, !dbg !2704
  %10 = load i32** %9, align 8, !dbg !2704
  store i32* %10, i32** %s, align 8, !dbg !2704
  br label %while.cond, !dbg !2705

while.cond:                                       ; preds = %if.end15, %if.end6
  %11 = load i64* %count, align 8, !dbg !2705
  %tobool7 = icmp ne i64 %11, 0, !dbg !2705
  br i1 %tobool7, label %while.body, label %while.end, !dbg !2705

while.body:                                       ; preds = %while.cond
  %12 = load i32** %s, align 8, !dbg !2706
  %13 = load i32* %12, align 4, !dbg !2706
  %cmp8 = icmp uge i32 %13, 128, !dbg !2706
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2706

if.then9:                                         ; preds = %while.body
  store i32 84, i32* @errno, align 4, !dbg !2709
  store i64 -1, i64* %retval, !dbg !2711
  br label %return, !dbg !2711

if.end10:                                         ; preds = %while.body
  %14 = load i32** %s, align 8, !dbg !2712
  %15 = load i32* %14, align 4, !dbg !2712
  %conv = trunc i32 %15 to i8, !dbg !2712
  %16 = load i8** %dst.addr, align 8, !dbg !2712
  store i8 %conv, i8* %16, align 1, !dbg !2712
  %conv11 = sext i8 %conv to i32, !dbg !2712
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !2712
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2712

if.then14:                                        ; preds = %if.end10
  store i32* null, i32** %s, align 8, !dbg !2714
  br label %while.end, !dbg !2716

if.end15:                                         ; preds = %if.end10
  %17 = load i32** %s, align 8, !dbg !2717
  %incdec.ptr = getelementptr inbounds i32* %17, i32 1, !dbg !2717
  store i32* %incdec.ptr, i32** %s, align 8, !dbg !2717
  %18 = load i32* %incr, align 4, !dbg !2718
  %19 = load i8** %dst.addr, align 8, !dbg !2718
  %idx.ext = sext i32 %18 to i64, !dbg !2718
  %add.ptr = getelementptr inbounds i8* %19, i64 %idx.ext, !dbg !2718
  store i8* %add.ptr, i8** %dst.addr, align 8, !dbg !2718
  %20 = load i64* %count, align 8, !dbg !2719
  %dec = add i64 %20, -1, !dbg !2719
  store i64 %dec, i64* %count, align 8, !dbg !2719
  br label %while.cond, !dbg !2720

while.end:                                        ; preds = %if.then14, %while.cond
  %21 = load i8** %dst.addr, align 8, !dbg !2721
  %arraydecay16 = getelementptr inbounds [16 x i8]* %buf, i32 0, i32 0, !dbg !2721
  %cmp17 = icmp ne i8* %21, %arraydecay16, !dbg !2721
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !2721

if.then19:                                        ; preds = %while.end
  %22 = load i32** %s, align 8, !dbg !2723
  %23 = load i32*** %src.addr, align 8, !dbg !2723
  store i32* %22, i32** %23, align 8, !dbg !2723
  br label %if.end20, !dbg !2725

if.end20:                                         ; preds = %if.then19, %while.end
  %24 = load i64* %len.addr, align 8, !dbg !2726
  %25 = load i64* %count, align 8, !dbg !2726
  %sub = sub i64 %24, %25, !dbg !2726
  store i64 %sub, i64* %retval, !dbg !2726
  br label %return, !dbg !2726

return:                                           ; preds = %if.end20, %if.then9
  %26 = load i64* %retval, !dbg !2727
  ret i64 %26, !dbg !2727
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.274* %stream, i8* %buf, i64 %bufsize) #0 {
entry:
  %retval = alloca i64, align 8
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.274*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %rv = alloca i64, align 8
  %stodo = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.__STDIO_FILE_STRUCT.274* %stream, %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  %0 = load i64* %bufsize.addr, align 8, !dbg !2728
  store i64 %0, i64* %todo, align 8, !dbg !2728
  br label %do.body, !dbg !2729

do.body:                                          ; preds = %if.then3, %entry
  %1 = load i64* %todo, align 8, !dbg !2730
  %cmp = icmp eq i64 %1, 0, !dbg !2730
  br i1 %cmp, label %if.then, label %if.end, !dbg !2730

if.then:                                          ; preds = %do.body
  %2 = load i64* %bufsize.addr, align 8, !dbg !2733
  store i64 %2, i64* %retval, !dbg !2733
  br label %do.end32, !dbg !2733

if.end:                                           ; preds = %do.body
  %3 = load i64* %todo, align 8, !dbg !2735
  %cmp1 = icmp ule i64 %3, 9223372036854775807, !dbg !2735
  %4 = load i64* %todo, align 8, !dbg !2735
  %cond = select i1 %cmp1, i64 %4, i64 9223372036854775807, !dbg !2735
  store i64 %cond, i64* %stodo, align 8, !dbg !2735
  %5 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2736
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %5, i32 0, i32 2, !dbg !2736
  %6 = load i32* %__filedes, align 4, !dbg !2736
  %7 = load i8** %buf.addr, align 8, !dbg !2736
  %8 = load i64* %stodo, align 8, !dbg !2736
  %call = call i64 @write(i32 %6, i8* %7, i64 %8) #18, !dbg !2736
  store i64 %call, i64* %rv, align 8, !dbg !2736
  %cmp2 = icmp sge i64 %call, 0, !dbg !2736
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2736

if.then3:                                         ; preds = %if.end
  %9 = load i64* %rv, align 8, !dbg !2738
  %10 = load i64* %todo, align 8, !dbg !2738
  %sub = sub i64 %10, %9, !dbg !2738
  store i64 %sub, i64* %todo, align 8, !dbg !2738
  %11 = load i64* %rv, align 8, !dbg !2740
  %12 = load i8** %buf.addr, align 8, !dbg !2740
  %add.ptr = getelementptr inbounds i8* %12, i64 %11, !dbg !2740
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !2740
  br label %do.body, !dbg !2741

if.else:                                          ; preds = %if.end
  %13 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2742
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %13, i32 0, i32 0, !dbg !2742
  %14 = load i16* %__modeflags, align 2, !dbg !2742
  %conv = zext i16 %14 to i32, !dbg !2742
  %or = or i32 %conv, 8, !dbg !2742
  %conv4 = trunc i32 %or to i16, !dbg !2742
  store i16 %conv4, i16* %__modeflags, align 2, !dbg !2742
  %15 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2744
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %15, i32 0, i32 4, !dbg !2744
  %16 = load i8** %__bufend, align 8, !dbg !2744
  %17 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2744
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %17, i32 0, i32 3, !dbg !2744
  %18 = load i8** %__bufstart, align 8, !dbg !2744
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !2744
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !2744
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2744
  store i64 %sub.ptr.sub, i64* %stodo, align 8, !dbg !2744
  %cmp5 = icmp ne i64 %sub.ptr.sub, 0, !dbg !2744
  br i1 %cmp5, label %if.then7, label %if.end28, !dbg !2744

if.then7:                                         ; preds = %if.else
  %19 = load i64* %stodo, align 8, !dbg !2746
  %20 = load i64* %todo, align 8, !dbg !2746
  %cmp8 = icmp ugt i64 %19, %20, !dbg !2746
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !2746

if.then10:                                        ; preds = %if.then7
  %21 = load i64* %todo, align 8, !dbg !2749
  store i64 %21, i64* %stodo, align 8, !dbg !2749
  br label %if.end11, !dbg !2751

if.end11:                                         ; preds = %if.then10, %if.then7
  %22 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2752
  %__bufstart12 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %22, i32 0, i32 3, !dbg !2752
  %23 = load i8** %__bufstart12, align 8, !dbg !2752
  store i8* %23, i8** %s, align 8, !dbg !2752
  br label %do.body13, !dbg !2753

do.body13:                                        ; preds = %if.end20, %if.end11
  %24 = load i8** %buf.addr, align 8, !dbg !2754
  %25 = load i8* %24, align 1, !dbg !2754
  %26 = load i8** %s, align 8, !dbg !2754
  store i8 %25, i8* %26, align 1, !dbg !2754
  %conv14 = zext i8 %25 to i32, !dbg !2754
  %cmp15 = icmp eq i32 %conv14, 10, !dbg !2754
  br i1 %cmp15, label %land.lhs.true, label %if.end20, !dbg !2754

land.lhs.true:                                    ; preds = %do.body13
  %27 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2754
  %__modeflags17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %27, i32 0, i32 0, !dbg !2754
  %28 = load i16* %__modeflags17, align 2, !dbg !2754
  %conv18 = zext i16 %28 to i32, !dbg !2754
  %and = and i32 %conv18, 256, !dbg !2754
  %tobool = icmp ne i32 %and, 0, !dbg !2754
  br i1 %tobool, label %do.end, label %if.end20, !dbg !2754

if.end20:                                         ; preds = %land.lhs.true, %do.body13
  %29 = load i8** %s, align 8, !dbg !2757
  %incdec.ptr = getelementptr inbounds i8* %29, i32 1, !dbg !2757
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !2757
  %30 = load i8** %buf.addr, align 8, !dbg !2758
  %incdec.ptr21 = getelementptr inbounds i8* %30, i32 1, !dbg !2758
  store i8* %incdec.ptr21, i8** %buf.addr, align 8, !dbg !2758
  %31 = load i64* %stodo, align 8, !dbg !2759
  %dec = add nsw i64 %31, -1, !dbg !2759
  store i64 %dec, i64* %stodo, align 8, !dbg !2759
  %tobool22 = icmp ne i64 %dec, 0, !dbg !2759
  br i1 %tobool22, label %do.body13, label %do.end, !dbg !2759

do.end:                                           ; preds = %land.lhs.true, %if.end20
  %32 = load i8** %s, align 8, !dbg !2760
  %33 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2760
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %33, i32 0, i32 5, !dbg !2760
  store i8* %32, i8** %__bufpos, align 8, !dbg !2760
  %34 = load i8** %s, align 8, !dbg !2761
  %35 = load %struct.__STDIO_FILE_STRUCT.274** %stream.addr, align 8, !dbg !2761
  %__bufstart23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.274* %35, i32 0, i32 3, !dbg !2761
  %36 = load i8** %__bufstart23, align 8, !dbg !2761
  %sub.ptr.lhs.cast24 = ptrtoint i8* %34 to i64, !dbg !2761
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64, !dbg !2761
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !2761
  %37 = load i64* %todo, align 8, !dbg !2761
  %sub27 = sub i64 %37, %sub.ptr.sub26, !dbg !2761
  store i64 %sub27, i64* %todo, align 8, !dbg !2761
  br label %if.end28, !dbg !2762

if.end28:                                         ; preds = %do.end, %if.else
  %38 = load i64* %bufsize.addr, align 8, !dbg !2763
  %39 = load i64* %todo, align 8, !dbg !2763
  %sub29 = sub i64 %38, %39, !dbg !2763
  store i64 %sub29, i64* %retval, !dbg !2763
  br label %do.end32, !dbg !2763

do.end32:                                         ; preds = %if.end28, %if.then
  %40 = load i64* %retval, !dbg !2764
  ret i64 %40, !dbg !2764
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_fwrite(i8* noalias %buffer, i64 %bytes, %struct.__STDIO_FILE_STRUCT.231* noalias %stream) #0 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i64, align 8
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %pending = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2765
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %0, i32 0, i32 0, !dbg !2765
  %1 = load i16* %__modeflags, align 2, !dbg !2765
  %conv = zext i16 %1 to i32, !dbg !2765
  %and = and i32 %conv, 512, !dbg !2765
  %tobool = icmp ne i32 %and, 0, !dbg !2765
  br i1 %tobool, label %if.end63, label %if.then, !dbg !2765

if.then:                                          ; preds = %entry
  %2 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2767
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %2, i32 0, i32 2, !dbg !2767
  %3 = load i32* %__filedes, align 4, !dbg !2767
  %cmp = icmp eq i32 %3, -2, !dbg !2767
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !2767

if.then2:                                         ; preds = %if.then
  %4 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2770
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %4, i32 0, i32 4, !dbg !2770
  %5 = load i8** %__bufend, align 8, !dbg !2770
  %6 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2770
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %6, i32 0, i32 5, !dbg !2770
  %7 = load i8** %__bufpos, align 8, !dbg !2770
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !2770
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !2770
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2770
  store i64 %sub.ptr.sub, i64* %pending, align 8, !dbg !2770
  %8 = load i64* %pending, align 8, !dbg !2772
  %9 = load i64* %bytes.addr, align 8, !dbg !2772
  %cmp3 = icmp ugt i64 %8, %9, !dbg !2772
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !2772

if.then5:                                         ; preds = %if.then2
  %10 = load i64* %bytes.addr, align 8, !dbg !2774
  store i64 %10, i64* %pending, align 8, !dbg !2774
  br label %if.end, !dbg !2776

if.end:                                           ; preds = %if.then5, %if.then2
  %11 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2777
  %__bufpos6 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %11, i32 0, i32 5, !dbg !2777
  %12 = load i8** %__bufpos6, align 8, !dbg !2777
  %13 = load i8** %buffer.addr, align 8, !dbg !2777
  %14 = load i64* %pending, align 8, !dbg !2777
  %call = call i8* @memcpy(i8* %12, i8* %13, i64 %14) #17, !dbg !2777
  %15 = load i64* %pending, align 8, !dbg !2778
  %16 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2778
  %__bufpos7 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %16, i32 0, i32 5, !dbg !2778
  %17 = load i8** %__bufpos7, align 8, !dbg !2778
  %add.ptr = getelementptr inbounds i8* %17, i64 %15, !dbg !2778
  store i8* %add.ptr, i8** %__bufpos7, align 8, !dbg !2778
  %18 = load i64* %bytes.addr, align 8, !dbg !2779
  store i64 %18, i64* %retval, !dbg !2779
  br label %return, !dbg !2779

if.end8:                                          ; preds = %if.then
  %19 = load i64* %bytes.addr, align 8, !dbg !2780
  %20 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2780
  %__bufend9 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %20, i32 0, i32 4, !dbg !2780
  %21 = load i8** %__bufend9, align 8, !dbg !2780
  %22 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2780
  %__bufpos10 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %22, i32 0, i32 5, !dbg !2780
  %23 = load i8** %__bufpos10, align 8, !dbg !2780
  %sub.ptr.lhs.cast11 = ptrtoint i8* %21 to i64, !dbg !2780
  %sub.ptr.rhs.cast12 = ptrtoint i8* %23 to i64, !dbg !2780
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12, !dbg !2780
  %cmp14 = icmp ule i64 %19, %sub.ptr.sub13, !dbg !2780
  %24 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2782
  %__bufpos17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %24, i32 0, i32 5, !dbg !2782
  %25 = load i8** %__bufpos17, align 8, !dbg !2782
  br i1 %cmp14, label %if.then16, label %if.end51, !dbg !2780

if.then16:                                        ; preds = %if.end8
  %26 = load i8** %buffer.addr, align 8, !dbg !2782
  %27 = load i64* %bytes.addr, align 8, !dbg !2782
  %call18 = call i8* @memcpy(i8* %25, i8* %26, i64 %27) #17, !dbg !2782
  %28 = load i64* %bytes.addr, align 8, !dbg !2784
  %29 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2784
  %__bufpos19 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %29, i32 0, i32 5, !dbg !2784
  %30 = load i8** %__bufpos19, align 8, !dbg !2784
  %add.ptr20 = getelementptr inbounds i8* %30, i64 %28, !dbg !2784
  store i8* %add.ptr20, i8** %__bufpos19, align 8, !dbg !2784
  %31 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2785
  %__modeflags21 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %31, i32 0, i32 0, !dbg !2785
  %32 = load i16* %__modeflags21, align 2, !dbg !2785
  %conv22 = zext i16 %32 to i32, !dbg !2785
  %and23 = and i32 %conv22, 256, !dbg !2785
  %tobool24 = icmp ne i32 %and23, 0, !dbg !2785
  br i1 %tobool24, label %land.lhs.true, label %if.end50, !dbg !2785

land.lhs.true:                                    ; preds = %if.then16
  %33 = load i8** %buffer.addr, align 8, !dbg !2787
  %34 = load i64* %bytes.addr, align 8, !dbg !2787
  %call25 = call i8* @memrchr(i8* %33, i32 10, i64 %34) #19, !dbg !2787
  %tobool26 = icmp ne i8* %call25, null, !dbg !2787
  br i1 %tobool26, label %if.then27, label %if.end50, !dbg !2787

if.then27:                                        ; preds = %land.lhs.true
  %35 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2788
  %call28 = call i64 bitcast (i64 (%struct.__STDIO_FILE_STRUCT.274*)* @__stdio_wcommit to i64 (%struct.__STDIO_FILE_STRUCT.231*)*)(%struct.__STDIO_FILE_STRUCT.231* %35) #18, !dbg !2788
  store i64 %call28, i64* %pending, align 8, !dbg !2788
  %cmp29 = icmp ugt i64 %call28, 0, !dbg !2788
  br i1 %cmp29, label %if.then31, label %if.end50, !dbg !2788

if.then31:                                        ; preds = %if.then27
  %36 = load i64* %pending, align 8, !dbg !2791
  %37 = load i64* %bytes.addr, align 8, !dbg !2791
  %cmp32 = icmp ugt i64 %36, %37, !dbg !2791
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !2791

if.then34:                                        ; preds = %if.then31
  %38 = load i64* %bytes.addr, align 8, !dbg !2794
  store i64 %38, i64* %pending, align 8, !dbg !2794
  br label %if.end35, !dbg !2796

if.end35:                                         ; preds = %if.then34, %if.then31
  %39 = load i64* %bytes.addr, align 8, !dbg !2797
  %40 = load i64* %pending, align 8, !dbg !2797
  %sub = sub i64 %39, %40, !dbg !2797
  %41 = load i8** %buffer.addr, align 8, !dbg !2797
  %add.ptr36 = getelementptr inbounds i8* %41, i64 %sub, !dbg !2797
  store i8* %add.ptr36, i8** %buffer.addr, align 8, !dbg !2797
  %42 = load i8** %buffer.addr, align 8, !dbg !2798
  %43 = load i64* %pending, align 8, !dbg !2798
  %call37 = call i8* @memchr(i8* %42, i32 10, i64 %43) #19, !dbg !2798
  store i8* %call37, i8** %p, align 8, !dbg !2798
  %cmp38 = icmp ne i8* %call37, null, !dbg !2798
  br i1 %cmp38, label %if.then40, label %if.end50, !dbg !2798

if.then40:                                        ; preds = %if.end35
  %44 = load i8** %buffer.addr, align 8, !dbg !2800
  %45 = load i64* %pending, align 8, !dbg !2800
  %add.ptr41 = getelementptr inbounds i8* %44, i64 %45, !dbg !2800
  %46 = load i8** %p, align 8, !dbg !2800
  %sub.ptr.lhs.cast42 = ptrtoint i8* %add.ptr41 to i64, !dbg !2800
  %sub.ptr.rhs.cast43 = ptrtoint i8* %46 to i64, !dbg !2800
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43, !dbg !2800
  store i64 %sub.ptr.sub44, i64* %pending, align 8, !dbg !2800
  %47 = load i64* %pending, align 8, !dbg !2802
  %48 = load i64* %bytes.addr, align 8, !dbg !2802
  %sub45 = sub i64 %48, %47, !dbg !2802
  store i64 %sub45, i64* %bytes.addr, align 8, !dbg !2802
  %49 = load i64* %pending, align 8, !dbg !2803
  %50 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2803
  %__bufpos46 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %50, i32 0, i32 5, !dbg !2803
  %51 = load i8** %__bufpos46, align 8, !dbg !2803
  %idx.neg = sub i64 0, %49, !dbg !2803
  %add.ptr47 = getelementptr inbounds i8* %51, i64 %idx.neg, !dbg !2803
  store i8* %add.ptr47, i8** %__bufpos46, align 8, !dbg !2803
  br label %if.end50, !dbg !2804

if.end50:                                         ; preds = %if.then27, %if.then40, %if.end35, %land.lhs.true, %if.then16
  %52 = load i64* %bytes.addr, align 8, !dbg !2805
  store i64 %52, i64* %retval, !dbg !2805
  br label %return, !dbg !2805

if.end51:                                         ; preds = %if.end8
  %53 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2806
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %53, i32 0, i32 3, !dbg !2806
  %54 = load i8** %__bufstart, align 8, !dbg !2806
  %sub.ptr.lhs.cast53 = ptrtoint i8* %25 to i64, !dbg !2806
  %sub.ptr.rhs.cast54 = ptrtoint i8* %54 to i64, !dbg !2806
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54, !dbg !2806
  %tobool56 = icmp ne i64 %sub.ptr.sub55, 0, !dbg !2806
  br i1 %tobool56, label %if.then57, label %if.end63, !dbg !2806

if.then57:                                        ; preds = %if.end51
  %55 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2808
  %call58 = call i64 bitcast (i64 (%struct.__STDIO_FILE_STRUCT.274*)* @__stdio_wcommit to i64 (%struct.__STDIO_FILE_STRUCT.231*)*)(%struct.__STDIO_FILE_STRUCT.231* %55) #18, !dbg !2808
  %tobool59 = icmp ne i64 %call58, 0, !dbg !2808
  br i1 %tobool59, label %if.then60, label %if.end63, !dbg !2808

if.then60:                                        ; preds = %if.then57
  store i64 0, i64* %retval, !dbg !2811
  br label %return, !dbg !2811

if.end63:                                         ; preds = %if.end51, %if.then57, %entry
  %56 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2813
  %57 = load i8** %buffer.addr, align 8, !dbg !2813
  %58 = load i64* %bytes.addr, align 8, !dbg !2813
  %call64 = call i64 bitcast (i64 (%struct.__STDIO_FILE_STRUCT.274*, i8*, i64)* @__stdio_WRITE to i64 (%struct.__STDIO_FILE_STRUCT.231*, i8*, i64)*)(%struct.__STDIO_FILE_STRUCT.231* %56, i8* %57, i64 %58) #18, !dbg !2813
  store i64 %call64, i64* %retval, !dbg !2813
  br label %return, !dbg !2813

return:                                           ; preds = %if.end63, %if.then60, %if.end50, %if.end
  %59 = load i64* %retval, !dbg !2814
  ret i64 %59, !dbg !2814
}

; Function Attrs: nounwind uwtable
define hidden i32 @__stdio_trans2w_o(%struct.__STDIO_FILE_STRUCT.231* noalias %stream, i32 %oflag) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %oflag.addr = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i32 %oflag, i32* %oflag.addr, align 4
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2815
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %0, i32 0, i32 0, !dbg !2815
  %1 = load i16* %__modeflags, align 2, !dbg !2815
  %conv = zext i16 %1 to i32, !dbg !2815
  %2 = load i32* %oflag.addr, align 4, !dbg !2815
  %and = and i32 %conv, %2, !dbg !2815
  %tobool = icmp ne i32 %and, 0, !dbg !2815
  br i1 %tobool, label %if.end9, label %if.then, !dbg !2815

if.then:                                          ; preds = %entry
  %3 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2817
  %__modeflags1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %3, i32 0, i32 0, !dbg !2817
  %4 = load i16* %__modeflags1, align 2, !dbg !2817
  %conv2 = zext i16 %4 to i32, !dbg !2817
  %and3 = and i32 %conv2, 2176, !dbg !2817
  %tobool4 = icmp ne i32 %and3, 0, !dbg !2817
  br i1 %tobool4, label %DO_EBADF, label %if.end, !dbg !2817

if.end:                                           ; preds = %if.then
  %5 = load i32* %oflag.addr, align 4, !dbg !2820
  %6 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2820
  %__modeflags6 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %6, i32 0, i32 0, !dbg !2820
  %7 = load i16* %__modeflags6, align 2, !dbg !2820
  %conv7 = zext i16 %7 to i32, !dbg !2820
  %or = or i32 %conv7, %5, !dbg !2820
  %conv8 = trunc i32 %or to i16, !dbg !2820
  store i16 %conv8, i16* %__modeflags6, align 2, !dbg !2820
  br label %if.end9, !dbg !2821

if.end9:                                          ; preds = %if.end, %entry
  %8 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2822
  %__modeflags10 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %8, i32 0, i32 0, !dbg !2822
  %9 = load i16* %__modeflags10, align 2, !dbg !2822
  %conv11 = zext i16 %9 to i32, !dbg !2822
  %and12 = and i32 %conv11, 32, !dbg !2822
  %tobool13 = icmp ne i32 %and12, 0, !dbg !2822
  br i1 %tobool13, label %DO_EBADF, label %if.end19, !dbg !2822

DO_EBADF:                                         ; preds = %if.end9, %if.then
  store i32 9, i32* @errno, align 4, !dbg !2824
  br label %ERROR, !dbg !2824

ERROR:                                            ; preds = %land.lhs.true, %DO_EBADF
  %10 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2826
  %__modeflags15 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %10, i32 0, i32 0, !dbg !2826
  %11 = load i16* %__modeflags15, align 2, !dbg !2826
  %conv16 = zext i16 %11 to i32, !dbg !2826
  %or17 = or i32 %conv16, 8, !dbg !2826
  %conv18 = trunc i32 %or17 to i16, !dbg !2826
  store i16 %conv18, i16* %__modeflags15, align 2, !dbg !2826
  store i32 -1, i32* %retval, !dbg !2827
  br label %return, !dbg !2827

if.end19:                                         ; preds = %if.end9
  %12 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2828
  %__modeflags20 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %12, i32 0, i32 0, !dbg !2828
  %13 = load i16* %__modeflags20, align 2, !dbg !2828
  %conv21 = zext i16 %13 to i32, !dbg !2828
  %and22 = and i32 %conv21, 3, !dbg !2828
  %tobool23 = icmp ne i32 %and22, 0, !dbg !2828
  br i1 %tobool23, label %if.then24, label %if.end50, !dbg !2828

if.then24:                                        ; preds = %if.end19
  %14 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2830
  %__modeflags25 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %14, i32 0, i32 0, !dbg !2830
  %15 = load i16* %__modeflags25, align 2, !dbg !2830
  %conv26 = zext i16 %15 to i32, !dbg !2830
  %and27 = and i32 %conv26, 4, !dbg !2830
  %tobool28 = icmp ne i32 %and27, 0, !dbg !2830
  br i1 %tobool28, label %if.end42, label %if.then29, !dbg !2830

if.then29:                                        ; preds = %if.then24
  %16 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2833
  %__bufread = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %16, i32 0, i32 6, !dbg !2833
  %17 = load i8** %__bufread, align 8, !dbg !2833
  %18 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2833
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %18, i32 0, i32 5, !dbg !2833
  %19 = load i8** %__bufpos, align 8, !dbg !2833
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64, !dbg !2833
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64, !dbg !2833
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2833
  %tobool30 = icmp ne i64 %sub.ptr.sub, 0, !dbg !2833
  br i1 %tobool30, label %land.lhs.true, label %lor.lhs.false, !dbg !2833

lor.lhs.false:                                    ; preds = %if.then29
  %20 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2833
  %__modeflags31 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %20, i32 0, i32 0, !dbg !2833
  %21 = load i16* %__modeflags31, align 2, !dbg !2833
  %conv32 = zext i16 %21 to i32, !dbg !2833
  %and33 = and i32 %conv32, 2, !dbg !2833
  %tobool34 = icmp ne i32 %and33, 0, !dbg !2833
  br i1 %tobool34, label %land.lhs.true, label %if.end42, !dbg !2833

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then29
  %22 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2836
  %23 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2836
  %__modeflags35 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %23, i32 0, i32 0, !dbg !2836
  %24 = load i16* %__modeflags35, align 2, !dbg !2836
  %conv36 = zext i16 %24 to i32, !dbg !2836
  %and37 = and i32 %conv36, 1024, !dbg !2836
  %tobool38 = icmp ne i32 %and37, 0, !dbg !2836
  %cond = select i1 %tobool38, i32 2, i32 1, !dbg !2836
  %call = call i32 @fseek(%struct.__STDIO_FILE_STRUCT.231* %22, i64 0, i32 %cond) #18, !dbg !2836
  %tobool39 = icmp ne i32 %call, 0, !dbg !2836
  br i1 %tobool39, label %ERROR, label %if.end42, !dbg !2836

if.end42:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.then24
  %25 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2837
  %__modeflags43 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %25, i32 0, i32 0, !dbg !2837
  %26 = load i16* %__modeflags43, align 2, !dbg !2837
  %conv44 = zext i16 %26 to i32, !dbg !2837
  %and45 = and i32 %conv44, -4, !dbg !2837
  %conv46 = trunc i32 %and45 to i16, !dbg !2837
  store i16 %conv46, i16* %__modeflags43, align 2, !dbg !2837
  %27 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2838
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %27, i32 0, i32 3, !dbg !2838
  %28 = load i8** %__bufstart, align 8, !dbg !2838
  %29 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2838
  %__bufgetc_u = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %29, i32 0, i32 7, !dbg !2838
  store i8* %28, i8** %__bufgetc_u, align 8, !dbg !2838
  %30 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2839
  %__bufstart47 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %30, i32 0, i32 3, !dbg !2839
  %31 = load i8** %__bufstart47, align 8, !dbg !2839
  %32 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2839
  %__bufpos48 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %32, i32 0, i32 5, !dbg !2839
  store i8* %31, i8** %__bufpos48, align 8, !dbg !2839
  %33 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2839
  %__bufread49 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %33, i32 0, i32 6, !dbg !2839
  store i8* %31, i8** %__bufread49, align 8, !dbg !2839
  br label %if.end50, !dbg !2840

if.end50:                                         ; preds = %if.end42, %if.end19
  %34 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2841
  %__modeflags51 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %34, i32 0, i32 0, !dbg !2841
  %35 = load i16* %__modeflags51, align 2, !dbg !2841
  %conv52 = zext i16 %35 to i32, !dbg !2841
  %or53 = or i32 %conv52, 64, !dbg !2841
  %conv54 = trunc i32 %or53 to i16, !dbg !2841
  store i16 %conv54, i16* %__modeflags51, align 2, !dbg !2841
  %36 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2842
  %__modeflags55 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %36, i32 0, i32 0, !dbg !2842
  %37 = load i16* %__modeflags55, align 2, !dbg !2842
  %conv56 = zext i16 %37 to i32, !dbg !2842
  %and57 = and i32 %conv56, 2816, !dbg !2842
  %tobool58 = icmp ne i32 %and57, 0, !dbg !2842
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !2842

if.then59:                                        ; preds = %if.end50
  %38 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2844
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %38, i32 0, i32 4, !dbg !2844
  %39 = load i8** %__bufend, align 8, !dbg !2844
  %40 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !2844
  %__bufputc_u = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %40, i32 0, i32 8, !dbg !2844
  store i8* %39, i8** %__bufputc_u, align 8, !dbg !2844
  br label %if.end60, !dbg !2846

if.end60:                                         ; preds = %if.then59, %if.end50
  store i32 0, i32* %retval, !dbg !2847
  br label %return, !dbg !2847

return:                                           ; preds = %if.end60, %ERROR
  %41 = load i32* %retval, !dbg !2848
  ret i32 %41, !dbg !2848
}

; Function Attrs: nounwind uwtable
define hidden i64 @_load_inttype(i32 %desttype, i8* %src, i32 %uflag) #0 {
entry:
  %retval = alloca i64, align 8
  %desttype.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %uflag.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %x24 = alloca i32, align 4
  store i32 %desttype, i32* %desttype.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %uflag, i32* %uflag.addr, align 4
  %0 = load i32* %uflag.addr, align 4, !dbg !2849
  %cmp = icmp sge i32 %0, 0, !dbg !2849
  %1 = load i32* %desttype.addr, align 4, !dbg !2851
  %and = and i32 %1, 3072, !dbg !2851
  %tobool = icmp ne i32 %and, 0, !dbg !2851
  %2 = load i8** %src.addr, align 8, !dbg !2854
  br i1 %cmp, label %if.then, label %if.else, !dbg !2849

if.then:                                          ; preds = %entry
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !2851

if.then1:                                         ; preds = %if.then
  %3 = bitcast i8* %2 to i64*, !dbg !2854
  %4 = load i64* %3, align 8, !dbg !2854
  store i64 %4, i64* %retval, !dbg !2854
  br label %return, !dbg !2854

if.end4:                                          ; preds = %if.then
  %5 = bitcast i8* %2 to i32*, !dbg !2858
  %6 = load i32* %5, align 4, !dbg !2858
  store i32 %6, i32* %x, align 4, !dbg !2858
  %7 = load i32* %desttype.addr, align 4, !dbg !2860
  %cmp5 = icmp eq i32 %7, 256, !dbg !2860
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2860

if.then6:                                         ; preds = %if.end4
  %8 = load i32* %x, align 4, !dbg !2860
  %conv = trunc i32 %8 to i8, !dbg !2860
  %conv7 = zext i8 %conv to i32, !dbg !2860
  store i32 %conv7, i32* %x, align 4, !dbg !2860
  br label %if.end8, !dbg !2860

if.end8:                                          ; preds = %if.then6, %if.end4
  %9 = load i32* %desttype.addr, align 4, !dbg !2862
  %cmp9 = icmp eq i32 %9, 512, !dbg !2862
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !2862

if.then11:                                        ; preds = %if.end8
  %10 = load i32* %x, align 4, !dbg !2862
  %conv12 = trunc i32 %10 to i16, !dbg !2862
  %conv13 = zext i16 %conv12 to i32, !dbg !2862
  store i32 %conv13, i32* %x, align 4, !dbg !2862
  br label %if.end14, !dbg !2862

if.end14:                                         ; preds = %if.then11, %if.end8
  %11 = load i32* %x, align 4, !dbg !2864
  %conv15 = zext i32 %11 to i64, !dbg !2864
  store i64 %conv15, i64* %retval, !dbg !2864
  br label %return, !dbg !2864

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.then18, label %if.end23, !dbg !2865

if.then18:                                        ; preds = %if.else
  %12 = bitcast i8* %2 to i64*, !dbg !2868
  %13 = load i64* %12, align 8, !dbg !2868
  store i64 %13, i64* %retval, !dbg !2868
  br label %return, !dbg !2868

if.end23:                                         ; preds = %if.else
  %14 = bitcast i8* %2 to i32*, !dbg !2872
  %15 = load i32* %14, align 4, !dbg !2872
  store i32 %15, i32* %x24, align 4, !dbg !2872
  %16 = load i32* %desttype.addr, align 4, !dbg !2874
  %cmp25 = icmp eq i32 %16, 256, !dbg !2874
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !2874

if.then27:                                        ; preds = %if.end23
  %17 = load i32* %x24, align 4, !dbg !2874
  %conv28 = trunc i32 %17 to i8, !dbg !2874
  %conv29 = sext i8 %conv28 to i32, !dbg !2874
  store i32 %conv29, i32* %x24, align 4, !dbg !2874
  br label %if.end30, !dbg !2874

if.end30:                                         ; preds = %if.then27, %if.end23
  %18 = load i32* %desttype.addr, align 4, !dbg !2876
  %cmp31 = icmp eq i32 %18, 512, !dbg !2876
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !2876

if.then33:                                        ; preds = %if.end30
  %19 = load i32* %x24, align 4, !dbg !2876
  %conv34 = trunc i32 %19 to i16, !dbg !2876
  %conv35 = sext i16 %conv34 to i32, !dbg !2876
  store i32 %conv35, i32* %x24, align 4, !dbg !2876
  br label %if.end36, !dbg !2876

if.end36:                                         ; preds = %if.then33, %if.end30
  %20 = load i32* %x24, align 4, !dbg !2878
  %conv37 = sext i32 %20 to i64, !dbg !2878
  store i64 %conv37, i64* %retval, !dbg !2878
  br label %return, !dbg !2878

return:                                           ; preds = %if.then18, %if.then1, %if.end36, %if.end14
  %21 = load i64* %retval, !dbg !2879
  ret i64 %21, !dbg !2879
}

; Function Attrs: nounwind uwtable
define hidden void @_store_inttype(i8* %dest, i32 %desttype, i64 %val) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %desttype.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %desttype, i32* %desttype.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i32* %desttype.addr, align 4, !dbg !2880
  %cmp = icmp eq i32 %0, 256, !dbg !2880
  br i1 %cmp, label %if.then, label %if.end, !dbg !2880

if.then:                                          ; preds = %entry
  %1 = load i64* %val.addr, align 8, !dbg !2882
  %conv = trunc i64 %1 to i8, !dbg !2882
  %2 = load i8** %dest.addr, align 8, !dbg !2882
  store i8 %conv, i8* %2, align 1, !dbg !2882
  br label %return, !dbg !2884

if.end:                                           ; preds = %entry
  %3 = load i32* %desttype.addr, align 4, !dbg !2885
  %cmp1 = icmp eq i32 %3, 2048, !dbg !2885
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !2885

if.then3:                                         ; preds = %if.end
  %4 = load i64* %val.addr, align 8, !dbg !2887
  %5 = load i8** %dest.addr, align 8, !dbg !2887
  %6 = bitcast i8* %5 to i64*, !dbg !2887
  store i64 %4, i64* %6, align 8, !dbg !2887
  br label %return, !dbg !2889

if.end4:                                          ; preds = %if.end
  %7 = load i32* %desttype.addr, align 4, !dbg !2890
  %cmp5 = icmp eq i32 %7, 512, !dbg !2890
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !2890

if.then7:                                         ; preds = %if.end4
  %8 = load i64* %val.addr, align 8, !dbg !2892
  %conv8 = trunc i64 %8 to i16, !dbg !2892
  %9 = load i8** %dest.addr, align 8, !dbg !2892
  %10 = bitcast i8* %9 to i16*, !dbg !2892
  store i16 %conv8, i16* %10, align 2, !dbg !2892
  br label %return, !dbg !2894

if.end9:                                          ; preds = %if.end4
  %11 = load i32* %desttype.addr, align 4, !dbg !2895
  %cmp10 = icmp eq i32 %11, 1024, !dbg !2895
  %12 = load i64* %val.addr, align 8, !dbg !2897
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2895

if.then12:                                        ; preds = %if.end9
  %13 = load i8** %dest.addr, align 8, !dbg !2897
  %14 = bitcast i8* %13 to i64*, !dbg !2897
  store i64 %12, i64* %14, align 8, !dbg !2897
  br label %return, !dbg !2899

if.end13:                                         ; preds = %if.end9
  %conv14 = trunc i64 %12 to i32, !dbg !2900
  %15 = load i8** %dest.addr, align 8, !dbg !2900
  %16 = bitcast i8* %15 to i32*, !dbg !2900
  store i32 %conv14, i32* %16, align 4, !dbg !2900
  br label %return, !dbg !2901

return:                                           ; preds = %if.end13, %if.then12, %if.then7, %if.then3, %if.then
  ret void, !dbg !2901
}

; Function Attrs: nounwind uwtable
define hidden i8* @_uintmaxtostr(i8* noalias %bufend, i64 %uval, i32 %base, i32 %alphacase) #0 {
entry:
  %bufend.addr = alloca i8*, align 8
  %uval.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %alphacase.addr = alloca i32, align 4
  %negative = alloca i32, align 4
  %digit = alloca i32, align 4
  %H = alloca i32, align 4
  %L = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  %rh = alloca i32, align 4
  store i8* %bufend, i8** %bufend.addr, align 8
  store i64 %uval, i64* %uval.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %alphacase, i32* %alphacase.addr, align 4
  store i32 0, i32* %negative, align 4, !dbg !2902
  %0 = load i32* %base.addr, align 4, !dbg !2903
  %cmp = icmp slt i32 %0, 0, !dbg !2903
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2903

if.then:                                          ; preds = %entry
  %1 = load i32* %base.addr, align 4, !dbg !2905
  %sub = sub nsw i32 0, %1, !dbg !2905
  store i32 %sub, i32* %base.addr, align 4, !dbg !2905
  %2 = load i64* %uval.addr, align 8, !dbg !2907
  %cmp1 = icmp ugt i64 %2, 9223372036854775807, !dbg !2907
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2907

if.then2:                                         ; preds = %if.then
  %3 = load i64* %uval.addr, align 8, !dbg !2909
  %sub3 = sub i64 0, %3, !dbg !2909
  store i64 %sub3, i64* %uval.addr, align 8, !dbg !2909
  store i32 1, i32* %negative, align 4, !dbg !2911
  br label %if.end4, !dbg !2912

if.end4:                                          ; preds = %if.then, %if.then2, %entry
  %4 = load i8** %bufend.addr, align 8, !dbg !2913
  store i8 0, i8* %4, align 1, !dbg !2913
  %5 = load i32* %base.addr, align 4, !dbg !2914
  %int_cast_to_i64 = zext i32 %5 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2914
  %div = udiv i32 -1, %5, !dbg !2914
  store i32 %div, i32* %H, align 4, !dbg !2914
  %6 = load i32* %base.addr, align 4, !dbg !2915
  %int_cast_to_i641 = zext i32 %6 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2915
  %rem = urem i32 -1, %6, !dbg !2915
  %add = add i32 %rem, 1, !dbg !2915
  store i32 %add, i32* %L, align 4, !dbg !2915
  %7 = load i32* %L, align 4, !dbg !2916
  %8 = load i32* %base.addr, align 4, !dbg !2916
  %cmp5 = icmp eq i32 %7, %8, !dbg !2916
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2916

if.then6:                                         ; preds = %if.end4
  %9 = load i32* %H, align 4, !dbg !2918
  %inc = add i32 %9, 1, !dbg !2918
  store i32 %inc, i32* %H, align 4, !dbg !2918
  store i32 0, i32* %L, align 4, !dbg !2920
  br label %if.end7, !dbg !2921

if.end7:                                          ; preds = %if.then6, %if.end4
  %10 = load i64* %uval.addr, align 8, !dbg !2922
  %conv = trunc i64 %10 to i32, !dbg !2922
  store i32 %conv, i32* %low, align 4, !dbg !2922
  %11 = load i64* %uval.addr, align 8, !dbg !2923
  %int_cast_to_i6410 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i6410), !dbg !2923
  %shr = lshr i64 %11, 32, !dbg !2923
  %conv8 = trunc i64 %shr to i32, !dbg !2923
  store i32 %conv8, i32* %high, align 4, !dbg !2923
  br label %do.body, !dbg !2924

do.body:                                          ; preds = %cond.end, %if.end7
  %12 = load i32* %high, align 4, !dbg !2925
  %tobool = icmp ne i32 %12, 0, !dbg !2925
  %lnot = xor i1 %tobool, true, !dbg !2925
  %lnot9 = xor i1 %lnot, true, !dbg !2925
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !2925
  %conv10 = sext i32 %lnot.ext to i64, !dbg !2925
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !2925
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !2925

if.then12:                                        ; preds = %do.body
  %13 = load i32* %high, align 4, !dbg !2928
  %14 = load i32* %base.addr, align 4, !dbg !2928
  %int_cast_to_i642 = zext i32 %14 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !2928
  %rem13 = urem i32 %13, %14, !dbg !2928
  store i32 %rem13, i32* %rh, align 4, !dbg !2928
  %15 = load i32* %base.addr, align 4, !dbg !2930
  %16 = load i32* %high, align 4, !dbg !2930
  %int_cast_to_i643 = zext i32 %15 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !2930
  %div14 = udiv i32 %16, %15, !dbg !2930
  store i32 %div14, i32* %high, align 4, !dbg !2930
  %17 = load i32* %low, align 4, !dbg !2931
  %18 = load i32* %base.addr, align 4, !dbg !2931
  %int_cast_to_i644 = zext i32 %18 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !2931
  %rem15 = urem i32 %17, %18, !dbg !2931
  %19 = load i32* %L, align 4, !dbg !2931
  %20 = load i32* %rh, align 4, !dbg !2931
  %mul = mul i32 %19, %20, !dbg !2931
  %add16 = add i32 %rem15, %mul, !dbg !2931
  store i32 %add16, i32* %digit, align 4, !dbg !2931
  %21 = load i32* %low, align 4, !dbg !2932
  %22 = load i32* %base.addr, align 4, !dbg !2932
  %int_cast_to_i645 = zext i32 %22 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !2932
  %div17 = udiv i32 %21, %22, !dbg !2932
  %23 = load i32* %H, align 4, !dbg !2932
  %24 = load i32* %rh, align 4, !dbg !2932
  %mul18 = mul i32 %23, %24, !dbg !2932
  %add19 = add i32 %div17, %mul18, !dbg !2932
  %25 = load i32* %digit, align 4, !dbg !2932
  %26 = load i32* %base.addr, align 4, !dbg !2932
  %int_cast_to_i646 = zext i32 %26 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !2932
  %div20 = udiv i32 %25, %26, !dbg !2932
  %add21 = add i32 %add19, %div20, !dbg !2932
  store i32 %add21, i32* %low, align 4, !dbg !2932
  %27 = load i32* %base.addr, align 4, !dbg !2933
  %28 = load i32* %digit, align 4, !dbg !2933
  %int_cast_to_i647 = zext i32 %27 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !2933
  %rem22 = urem i32 %28, %27, !dbg !2933
  store i32 %rem22, i32* %digit, align 4, !dbg !2933
  br label %if.end25, !dbg !2934

if.else:                                          ; preds = %do.body
  %29 = load i32* %low, align 4, !dbg !2935
  %30 = load i32* %base.addr, align 4, !dbg !2935
  %int_cast_to_i648 = zext i32 %30 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !2935
  %rem23 = urem i32 %29, %30, !dbg !2935
  store i32 %rem23, i32* %digit, align 4, !dbg !2935
  %31 = load i32* %base.addr, align 4, !dbg !2937
  %32 = load i32* %low, align 4, !dbg !2937
  %int_cast_to_i649 = zext i32 %31 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i649), !dbg !2937
  %div24 = udiv i32 %32, %31, !dbg !2937
  store i32 %div24, i32* %low, align 4, !dbg !2937
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then12
  %33 = load i32* %digit, align 4, !dbg !2938
  %cmp26 = icmp ult i32 %33, 10, !dbg !2938
  %34 = load i32* %digit, align 4, !dbg !2938
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !2938

cond.true:                                        ; preds = %if.end25
  %add28 = add i32 %34, 48, !dbg !2938
  br label %cond.end, !dbg !2938

cond.false:                                       ; preds = %if.end25
  %35 = load i32* %alphacase.addr, align 4, !dbg !2938
  %add29 = add i32 %34, %35, !dbg !2938
  br label %cond.end, !dbg !2938

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add28, %cond.true ], [ %add29, %cond.false ], !dbg !2938
  %conv30 = trunc i32 %cond to i8, !dbg !2938
  %36 = load i8** %bufend.addr, align 8, !dbg !2938
  %incdec.ptr = getelementptr inbounds i8* %36, i32 -1, !dbg !2938
  store i8* %incdec.ptr, i8** %bufend.addr, align 8, !dbg !2938
  store i8 %conv30, i8* %incdec.ptr, align 1, !dbg !2938
  %37 = load i32* %low, align 4, !dbg !2940
  %38 = load i32* %high, align 4, !dbg !2940
  %or = or i32 %37, %38, !dbg !2940
  %tobool31 = icmp ne i32 %or, 0, !dbg !2940
  br i1 %tobool31, label %do.body, label %do.end, !dbg !2940

do.end:                                           ; preds = %cond.end
  %39 = load i32* %negative, align 4, !dbg !2941
  %tobool32 = icmp ne i32 %39, 0, !dbg !2941
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2941

if.then33:                                        ; preds = %do.end
  %40 = load i8** %bufend.addr, align 8, !dbg !2943
  %incdec.ptr34 = getelementptr inbounds i8* %40, i32 -1, !dbg !2943
  store i8* %incdec.ptr34, i8** %bufend.addr, align 8, !dbg !2943
  store i8 45, i8* %incdec.ptr34, align 1, !dbg !2943
  br label %if.end35, !dbg !2945

if.end35:                                         ; preds = %if.then33, %do.end
  %41 = load i8** %bufend.addr, align 8, !dbg !2946
  ret i8* %41, !dbg !2946
}

; Function Attrs: nounwind uwtable
define hidden i64 @_fpmaxtostr(%struct.__STDIO_FILE_STRUCT.284* %fp, x86_fp80 %x, %struct.printf_info* %info, i64 (%struct.__STDIO_FILE_STRUCT.284*, i64, i64, i64)* %fp_outfunc) #0 {
entry:
  %retval = alloca i64, align 8
  %fp.addr = alloca %struct.__STDIO_FILE_STRUCT.284*, align 8
  %x.addr = alloca x86_fp80, align 16
  %info.addr = alloca %struct.printf_info*, align 8
  %fp_outfunc.addr = alloca i64 (%struct.__STDIO_FILE_STRUCT.284*, i64, i64, i64)*, align 8
  %round = alloca i32, align 4
  %o_exp = alloca i32, align 4
  %exp = alloca i32, align 4
  %width = alloca i32, align 4
  %preci = alloca i32, align 4
  %cnt = alloca i32, align 4
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  %pc_fwi = alloca [24 x i64], align 16
  %ppc = alloca i64*, align 8
  %ppc_last = alloca i64*, align 8
  %exp_buf = alloca [16 x i8], align 16
  %buf = alloca [30 x i8], align 16
  %sign_str = alloca [6 x i8], align 1
  %o_mode = alloca i8, align 1
  %mode = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %exp_neg = alloca i32, align 4
  %i93 = alloca i32, align 4
  %j94 = alloca i32, align 4
  %digit_block = alloca i64, align 8
  %i152 = alloca i32, align 4
  %i219 = alloca i32, align 4
  %p = alloca i8*, align 8
  %j320 = alloca i32, align 4
  %exp_char = alloca i8, align 1
  %exp_sign = alloca i8, align 1
  %i350 = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.284* %fp, %struct.__STDIO_FILE_STRUCT.284** %fp.addr, align 8
  store x86_fp80 %x, x86_fp80* %x.addr, align 16
  store %struct.printf_info* %info, %struct.printf_info** %info.addr, align 8
  store i64 (%struct.__STDIO_FILE_STRUCT.284*, i64, i64, i64)* %fp_outfunc, i64 (%struct.__STDIO_FILE_STRUCT.284*, i64, i64, i64)** %fp_outfunc.addr, align 8
  %0 = load %struct.printf_info** %info.addr, align 8, !dbg !2947
  %width1 = getelementptr inbounds %struct.printf_info* %0, i32 0, i32 1, !dbg !2947
  %1 = load i32* %width1, align 4, !dbg !2947
  store i32 %1, i32* %width, align 4, !dbg !2947
  %2 = load %struct.printf_info** %info.addr, align 8, !dbg !2948
  %prec = getelementptr inbounds %struct.printf_info* %2, i32 0, i32 0, !dbg !2948
  %3 = load i32* %prec, align 4, !dbg !2948
  store i32 %3, i32* %preci, align 4, !dbg !2948
  %4 = load %struct.printf_info** %info.addr, align 8, !dbg !2949
  %spec = getelementptr inbounds %struct.printf_info* %4, i32 0, i32 2, !dbg !2949
  %5 = load i32* %spec, align 4, !dbg !2949
  %conv = trunc i32 %5 to i8, !dbg !2949
  store i8 %conv, i8* %mode, align 1, !dbg !2949
  %arraydecay = getelementptr inbounds [16 x i8]* %exp_buf, i32 0, i32 0, !dbg !2950
  store i8 101, i8* %arraydecay, align 1, !dbg !2950
  %6 = load i8* %mode, align 1, !dbg !2951
  %conv2 = sext i8 %6 to i32, !dbg !2951
  %or = or i32 %conv2, 32, !dbg !2951
  %cmp = icmp eq i32 %or, 97, !dbg !2951
  br i1 %cmp, label %if.then, label %if.end, !dbg !2951

if.then:                                          ; preds = %entry
  %7 = load i8* %mode, align 1, !dbg !2953
  %conv4 = sext i8 %7 to i32, !dbg !2953
  %add = add nsw i32 %conv4, 6, !dbg !2953
  %conv5 = trunc i32 %add to i8, !dbg !2953
  store i8 %conv5, i8* %mode, align 1, !dbg !2953
  br label %if.end, !dbg !2955

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32* %preci, align 4, !dbg !2956
  %cmp6 = icmp slt i32 %8, 0, !dbg !2956
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2956

if.then8:                                         ; preds = %if.end
  store i32 6, i32* %preci, align 4, !dbg !2958
  br label %if.end9, !dbg !2960

if.end9:                                          ; preds = %if.then8, %if.end
  %arraydecay10 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !2961
  store i8 0, i8* %arraydecay10, align 1, !dbg !2961
  %9 = load %struct.printf_info** %info.addr, align 8, !dbg !2962
  %showsign = getelementptr inbounds %struct.printf_info* %9, i32 0, i32 3, !dbg !2962
  %10 = bitcast [4 x i8]* %showsign to i32*, !dbg !2962
  %bf.load = load i32* %10, align 4, !dbg !2962
  %int_cast_to_i644 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i644), !dbg !2962
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !2962
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2962
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2962
  br i1 %tobool, label %if.then11, label %if.else, !dbg !2962

if.then11:                                        ; preds = %if.end9
  %arraydecay12 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !2964
  store i8 43, i8* %arraydecay12, align 1, !dbg !2964
  br label %if.end19, !dbg !2966

if.else:                                          ; preds = %if.end9
  %11 = load %struct.printf_info** %info.addr, align 8, !dbg !2967
  %space = getelementptr inbounds %struct.printf_info* %11, i32 0, i32 3, !dbg !2967
  %12 = bitcast [4 x i8]* %space to i32*, !dbg !2967
  %bf.load13 = load i32* %12, align 4, !dbg !2967
  %bf.clear14 = and i32 %bf.load13, 1, !dbg !2967
  %tobool15 = icmp ne i32 %bf.clear14, 0, !dbg !2967
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !2967

if.then16:                                        ; preds = %if.else
  %arraydecay17 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !2969
  store i8 32, i8* %arraydecay17, align 1, !dbg !2969
  br label %if.end19, !dbg !2971

if.end19:                                         ; preds = %if.else, %if.then16, %if.then11
  %arraydecay20 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !2972
  %add.ptr = getelementptr inbounds i8* %arraydecay20, i64 1, !dbg !2972
  store i8 0, i8* %add.ptr, align 1, !dbg !2972
  %arrayidx = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 5, !dbg !2973
  store i64 0, i64* %arrayidx, align 8, !dbg !2973
  %13 = load x86_fp80* %x.addr, align 16, !dbg !2974
  %14 = load x86_fp80* %x.addr, align 16, !dbg !2974
  %cmp21 = fcmp une x86_fp80 %13, %14, !dbg !2974
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !2974

if.then23:                                        ; preds = %if.end19
  %arrayidx24 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 5, !dbg !2976
  store i64 8, i64* %arrayidx24, align 8, !dbg !2976
  br label %INF_NAN, !dbg !2978

if.end25:                                         ; preds = %if.end19
  %15 = load x86_fp80* %x.addr, align 16, !dbg !2979
  %cmp26 = fcmp oeq x86_fp80 %15, 0xK00000000000000000000, !dbg !2979
  %16 = load x86_fp80* %x.addr, align 16, !dbg !2981
  br i1 %cmp26, label %if.then28, label %if.end34, !dbg !2979

if.then28:                                        ; preds = %if.end25
  %div = fdiv x86_fp80 0xK3FFF8000000000000000, %16, !dbg !2981
  %cmp29 = fcmp olt x86_fp80 %div, 0xK00000000000000000000, !dbg !2981
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !2981

if.then31:                                        ; preds = %if.then28
  %arraydecay32 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !2984
  store i8 45, i8* %arraydecay32, align 1, !dbg !2984
  br label %if.end33, !dbg !2986

if.end33:                                         ; preds = %if.then31, %if.then28
  store i32 -1, i32* %exp, align 4, !dbg !2987
  br label %GENERATE_DIGITS, !dbg !2988

if.end34:                                         ; preds = %if.end25
  %cmp35 = fcmp olt x86_fp80 %16, 0xK00000000000000000000, !dbg !2989
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !2989

if.then37:                                        ; preds = %if.end34
  %arraydecay38 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !2991
  store i8 45, i8* %arraydecay38, align 1, !dbg !2991
  %17 = load x86_fp80* %x.addr, align 16, !dbg !2993
  %sub = fsub x86_fp80 0xK80000000000000000000, %17, !dbg !2993
  store x86_fp80 %sub, x86_fp80* %x.addr, align 16, !dbg !2993
  br label %if.end39, !dbg !2994

if.end39:                                         ; preds = %if.then37, %if.end34
  %18 = load x86_fp80* %x.addr, align 16, !dbg !2995
  %19 = load x86_fp80* %x.addr, align 16, !dbg !2995
  %div40 = fdiv x86_fp80 %19, 0xK40018000000000000000, !dbg !2995
  %cmp41 = fcmp oeq x86_fp80 %18, %div40, !dbg !2995
  br i1 %cmp41, label %INF_NAN, label %if.end58, !dbg !2995

INF_NAN:                                          ; preds = %if.end39, %if.then23
  %20 = load %struct.printf_info** %info.addr, align 8, !dbg !2997
  %pad = getelementptr inbounds %struct.printf_info* %20, i32 0, i32 4, !dbg !2997
  store i32 32, i32* %pad, align 4, !dbg !2997
  %arraydecay44 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i32 0, !dbg !2999
  %add.ptr45 = getelementptr inbounds i64* %arraydecay44, i64 6, !dbg !2999
  store i64* %add.ptr45, i64** %ppc, align 8, !dbg !2999
  %arrayidx46 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 3, !dbg !3000
  store i64 112, i64* %arrayidx46, align 8, !dbg !3000
  %arrayidx47 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 4, !dbg !3001
  store i64 3, i64* %arrayidx47, align 8, !dbg !3001
  %21 = load i8* %mode, align 1, !dbg !3002
  %conv48 = sext i8 %21 to i32, !dbg !3002
  %cmp49 = icmp slt i32 %conv48, 97, !dbg !3002
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !3002

if.then51:                                        ; preds = %INF_NAN
  %arrayidx52 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 5, !dbg !3004
  %22 = load i64* %arrayidx52, align 8, !dbg !3004
  %add53 = add nsw i64 %22, 4, !dbg !3004
  store i64 %add53, i64* %arrayidx52, align 8, !dbg !3004
  br label %if.end54, !dbg !3006

if.end54:                                         ; preds = %if.then51, %INF_NAN
  %arrayidx55 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 5, !dbg !3007
  %23 = load i64* %arrayidx55, align 8, !dbg !3007
  %add.ptr56 = getelementptr inbounds i8* getelementptr inbounds ([20 x i8]* @fmt, i32 0, i32 0), i64 %23, !dbg !3007
  %24 = ptrtoint i8* %add.ptr56 to i64, !dbg !3007
  %arrayidx57 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 5, !dbg !3007
  store i64 %24, i64* %arrayidx57, align 8, !dbg !3007
  br label %EXIT_SPECIAL, !dbg !3008

if.end58:                                         ; preds = %if.end39
  store i32 8, i32* %exp, align 4, !dbg !3009
  store i32 13, i32* %i, align 4, !dbg !3011
  store i32 4096, i32* %j, align 4, !dbg !3012
  store i32 0, i32* %exp_neg, align 4, !dbg !3013
  %25 = load x86_fp80* %x.addr, align 16, !dbg !3015
  %cmp59 = fcmp olt x86_fp80 %25, 0xK4019BEBC200000000000, !dbg !3015
  br i1 %cmp59, label %if.then61, label %do.body, !dbg !3015

if.then61:                                        ; preds = %if.end58
  store i32 1, i32* %exp_neg, align 4, !dbg !3017
  br label %do.body, !dbg !3019

do.body:                                          ; preds = %if.end58, %if.then61, %if.end86
  %26 = load i32* %i, align 4, !dbg !3020
  %dec = add nsw i32 %26, -1, !dbg !3020
  store i32 %dec, i32* %i, align 4, !dbg !3020
  %27 = load i32* %exp_neg, align 4, !dbg !3022
  %tobool63 = icmp ne i32 %27, 0, !dbg !3022
  %28 = load x86_fp80* %x.addr, align 16, !dbg !3024
  %29 = load i32* %i, align 4, !dbg !3024
  %idxprom = sext i32 %29 to i64, !dbg !3024
  %arrayidx65 = getelementptr inbounds [13 x x86_fp80]* @exp10_table, i32 0, i64 %idxprom, !dbg !3024
  %30 = load x86_fp80* %arrayidx65, align 16, !dbg !3024
  br i1 %tobool63, label %if.then64, label %if.else74, !dbg !3022

if.then64:                                        ; preds = %do.body
  %mul = fmul x86_fp80 %28, %30, !dbg !3024
  %cmp66 = fcmp olt x86_fp80 %mul, 0xK401CEE6B280000000000, !dbg !3024
  br i1 %cmp66, label %if.then68, label %if.end86, !dbg !3024

if.then68:                                        ; preds = %if.then64
  %31 = load i32* %i, align 4, !dbg !3027
  %idxprom69 = sext i32 %31 to i64, !dbg !3027
  %arrayidx70 = getelementptr inbounds [13 x x86_fp80]* @exp10_table, i32 0, i64 %idxprom69, !dbg !3027
  %32 = load x86_fp80* %arrayidx70, align 16, !dbg !3027
  %33 = load x86_fp80* %x.addr, align 16, !dbg !3027
  %mul71 = fmul x86_fp80 %33, %32, !dbg !3027
  store x86_fp80 %mul71, x86_fp80* %x.addr, align 16, !dbg !3027
  %34 = load i32* %j, align 4, !dbg !3029
  %35 = load i32* %exp, align 4, !dbg !3029
  %sub72 = sub nsw i32 %35, %34, !dbg !3029
  store i32 %sub72, i32* %exp, align 4, !dbg !3029
  br label %if.end86, !dbg !3030

if.else74:                                        ; preds = %do.body
  %div77 = fdiv x86_fp80 %28, %30, !dbg !3031
  %cmp78 = fcmp oge x86_fp80 %div77, 0xK4019BEBC200000000000, !dbg !3031
  br i1 %cmp78, label %if.then80, label %if.end86, !dbg !3031

if.then80:                                        ; preds = %if.else74
  %36 = load i32* %i, align 4, !dbg !3034
  %idxprom81 = sext i32 %36 to i64, !dbg !3034
  %arrayidx82 = getelementptr inbounds [13 x x86_fp80]* @exp10_table, i32 0, i64 %idxprom81, !dbg !3034
  %37 = load x86_fp80* %arrayidx82, align 16, !dbg !3034
  %38 = load x86_fp80* %x.addr, align 16, !dbg !3034
  %div83 = fdiv x86_fp80 %38, %37, !dbg !3034
  store x86_fp80 %div83, x86_fp80* %x.addr, align 16, !dbg !3034
  %39 = load i32* %j, align 4, !dbg !3036
  %40 = load i32* %exp, align 4, !dbg !3036
  %add84 = add nsw i32 %40, %39, !dbg !3036
  store i32 %add84, i32* %exp, align 4, !dbg !3036
  br label %if.end86, !dbg !3037

if.end86:                                         ; preds = %if.else74, %if.then80, %if.then64, %if.then68
  %41 = load i32* %j, align 4, !dbg !3038
  %int_cast_to_i645 = zext i32 1 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i645), !dbg !3038
  %shr = ashr i32 %41, 1, !dbg !3038
  store i32 %shr, i32* %j, align 4, !dbg !3038
  %42 = load i32* %i, align 4, !dbg !3039
  %tobool87 = icmp ne i32 %42, 0, !dbg !3039
  br i1 %tobool87, label %do.body, label %do.end, !dbg !3039

do.end:                                           ; preds = %if.end86
  %43 = load x86_fp80* %x.addr, align 16, !dbg !3040
  %cmp88 = fcmp oge x86_fp80 %43, 0xK401CEE6B280000000000, !dbg !3040
  br i1 %cmp88, label %if.then90, label %GENERATE_DIGITS, !dbg !3040

if.then90:                                        ; preds = %do.end
  %44 = load x86_fp80* getelementptr inbounds ([13 x x86_fp80]* @exp10_table, i32 0, i64 0), align 16, !dbg !3042
  %45 = load x86_fp80* %x.addr, align 16, !dbg !3042
  %div91 = fdiv x86_fp80 %45, %44, !dbg !3042
  store x86_fp80 %div91, x86_fp80* %x.addr, align 16, !dbg !3042
  %46 = load i32* %exp, align 4, !dbg !3044
  %inc = add nsw i32 %46, 1, !dbg !3044
  store i32 %inc, i32* %exp, align 4, !dbg !3044
  br label %GENERATE_DIGITS, !dbg !3045

GENERATE_DIGITS:                                  ; preds = %do.end, %if.then90, %if.end33
  %arraydecay95 = getelementptr inbounds [30 x i8]* %buf, i32 0, i32 0, !dbg !3046
  %add.ptr96 = getelementptr inbounds i8* %arraydecay95, i64 2, !dbg !3046
  store i8* %add.ptr96, i8** %s, align 8, !dbg !3046
  store i32 0, i32* %i93, align 4, !dbg !3048
  br label %do.body97, !dbg !3049

do.body97:                                        ; preds = %do.cond115, %GENERATE_DIGITS
  %47 = load x86_fp80* %x.addr, align 16, !dbg !3050
  %conv98 = fptoui x86_fp80 %47 to i64, !dbg !3050
  store i64 %conv98, i64* %digit_block, align 8, !dbg !3050
  %48 = load x86_fp80* %x.addr, align 16, !dbg !3052
  %49 = load i64* %digit_block, align 8, !dbg !3052
  %conv99 = uitofp i64 %49 to x86_fp80, !dbg !3052
  %sub100 = fsub x86_fp80 %48, %conv99, !dbg !3052
  %mul101 = fmul x86_fp80 %sub100, 0xK401CEE6B280000000000, !dbg !3052
  store x86_fp80 %mul101, x86_fp80* %x.addr, align 16, !dbg !3052
  %50 = load i8** %s, align 8, !dbg !3053
  %add.ptr102 = getelementptr inbounds i8* %50, i64 9, !dbg !3053
  store i8* %add.ptr102, i8** %s, align 8, !dbg !3053
  store i32 0, i32* %j94, align 4, !dbg !3054
  br label %do.body103, !dbg !3055

do.body103:                                       ; preds = %do.body103, %do.body97
  %51 = load i64* %digit_block, align 8, !dbg !3056
  %int_cast_to_i64 = bitcast i64 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !3056
  %rem = urem i64 %51, 10, !dbg !3056
  %add104 = add i64 48, %rem, !dbg !3056
  %conv105 = trunc i64 %add104 to i8, !dbg !3056
  %52 = load i32* %j94, align 4, !dbg !3056
  %inc106 = add nsw i32 %52, 1, !dbg !3056
  store i32 %inc106, i32* %j94, align 4, !dbg !3056
  %sub107 = sub nsw i32 0, %inc106, !dbg !3056
  %idxprom108 = sext i32 %sub107 to i64, !dbg !3056
  %53 = load i8** %s, align 8, !dbg !3056
  %arrayidx109 = getelementptr inbounds i8* %53, i64 %idxprom108, !dbg !3056
  store i8 %conv105, i8* %arrayidx109, align 1, !dbg !3056
  %54 = load i64* %digit_block, align 8, !dbg !3058
  %int_cast_to_i641 = bitcast i64 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !3058
  %div110 = udiv i64 %54, 10, !dbg !3058
  store i64 %div110, i64* %digit_block, align 8, !dbg !3058
  %55 = load i32* %j94, align 4, !dbg !3059
  %cmp112 = icmp slt i32 %55, 9, !dbg !3059
  br i1 %cmp112, label %do.body103, label %do.cond115, !dbg !3059

do.cond115:                                       ; preds = %do.body103
  %56 = load i32* %i93, align 4, !dbg !3060
  %inc116 = add nsw i32 %56, 1, !dbg !3060
  store i32 %inc116, i32* %i93, align 4, !dbg !3060
  %cmp117 = icmp slt i32 %inc116, 3, !dbg !3060
  br i1 %cmp117, label %do.body97, label %do.end119, !dbg !3060

do.end119:                                        ; preds = %do.cond115
  %57 = load i8* %mode, align 1, !dbg !3061
  %conv120 = sext i8 %57 to i32, !dbg !3061
  %cmp121 = icmp slt i32 %conv120, 97, !dbg !3061
  br i1 %cmp121, label %if.then123, label %if.end131, !dbg !3061

if.then123:                                       ; preds = %do.end119
  %arraydecay124 = getelementptr inbounds [16 x i8]* %exp_buf, i32 0, i32 0, !dbg !3063
  %58 = load i8* %arraydecay124, align 1, !dbg !3063
  %conv125 = sext i8 %58 to i32, !dbg !3063
  %sub126 = sub nsw i32 %conv125, 32, !dbg !3063
  %conv127 = trunc i32 %sub126 to i8, !dbg !3063
  store i8 %conv127, i8* %arraydecay124, align 1, !dbg !3063
  %59 = load i8* %mode, align 1, !dbg !3065
  %conv128 = sext i8 %59 to i32, !dbg !3065
  %add129 = add nsw i32 %conv128, 32, !dbg !3065
  %conv130 = trunc i32 %add129 to i8, !dbg !3065
  store i8 %conv130, i8* %mode, align 1, !dbg !3065
  br label %if.end131, !dbg !3066

if.end131:                                        ; preds = %if.then123, %do.end119
  %60 = load i8* %mode, align 1, !dbg !3067
  store i8 %60, i8* %o_mode, align 1, !dbg !3067
  %61 = load i8* %mode, align 1, !dbg !3068
  %conv132 = sext i8 %61 to i32, !dbg !3068
  %cmp133 = icmp eq i32 %conv132, 103, !dbg !3068
  %62 = load i32* %preci, align 4, !dbg !3068
  %cmp135 = icmp sgt i32 %62, 0, !dbg !3068
  %or.cond = and i1 %cmp133, %cmp135, !dbg !3068
  br i1 %or.cond, label %if.then137, label %if.end139, !dbg !3068

if.then137:                                       ; preds = %if.end131
  %63 = load i32* %preci, align 4, !dbg !3070
  %dec138 = add nsw i32 %63, -1, !dbg !3070
  store i32 %dec138, i32* %preci, align 4, !dbg !3070
  br label %if.end139, !dbg !3072

if.end139:                                        ; preds = %if.then137, %if.end131
  %64 = load i32* %preci, align 4, !dbg !3073
  store i32 %64, i32* %round, align 4, !dbg !3073
  %65 = load i8* %mode, align 1, !dbg !3074
  %conv140 = sext i8 %65 to i32, !dbg !3074
  %cmp141 = icmp eq i32 %conv140, 102, !dbg !3074
  br i1 %cmp141, label %if.then143, label %if.end150, !dbg !3074

if.then143:                                       ; preds = %if.end139
  %66 = load i32* %exp, align 4, !dbg !3076
  %67 = load i32* %round, align 4, !dbg !3076
  %add144 = add nsw i32 %67, %66, !dbg !3076
  store i32 %add144, i32* %round, align 4, !dbg !3076
  %68 = load i32* %round, align 4, !dbg !3078
  %cmp145 = icmp slt i32 %68, -1, !dbg !3078
  br i1 %cmp145, label %if.then147, label %if.end150, !dbg !3078

if.then147:                                       ; preds = %if.then143
  %arraydecay148 = getelementptr inbounds [30 x i8]* %buf, i32 0, i32 0, !dbg !3080
  %call = call i8* @memset(i8* %arraydecay148, i32 48, i64 21) #17, !dbg !3080
  store i32 -1, i32* %exp, align 4, !dbg !3082
  store i32 -1, i32* %round, align 4, !dbg !3083
  br label %if.end150, !dbg !3084

if.end150:                                        ; preds = %if.then143, %if.then147, %if.end139
  %arraydecay151 = getelementptr inbounds [30 x i8]* %buf, i32 0, i32 0, !dbg !3085
  store i8* %arraydecay151, i8** %s, align 8, !dbg !3085
  %69 = load i8** %s, align 8, !dbg !3086
  %incdec.ptr = getelementptr inbounds i8* %69, i32 1, !dbg !3086
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !3086
  store i8 0, i8* %69, align 1, !dbg !3086
  %70 = load i8** %s, align 8, !dbg !3087
  store i8 48, i8* %70, align 1, !dbg !3087
  store i32 0, i32* %i152, align 4, !dbg !3088
  %71 = load i8** %s, align 8, !dbg !3090
  %add.ptr153 = getelementptr inbounds i8* %71, i64 21, !dbg !3090
  %add.ptr154 = getelementptr inbounds i8* %add.ptr153, i64 1, !dbg !3090
  store i8* %add.ptr154, i8** %e, align 8, !dbg !3090
  %72 = load i32* %round, align 4, !dbg !3091
  %cmp155 = icmp slt i32 %72, 21, !dbg !3091
  br i1 %cmp155, label %if.then157, label %do.body166, !dbg !3091

if.then157:                                       ; preds = %if.end150
  %73 = load i8** %s, align 8, !dbg !3093
  %74 = load i32* %round, align 4, !dbg !3093
  %idx.ext = sext i32 %74 to i64, !dbg !3093
  %add.ptr158 = getelementptr inbounds i8* %73, i64 %idx.ext, !dbg !3093
  %add.ptr159 = getelementptr inbounds i8* %add.ptr158, i64 2, !dbg !3093
  store i8* %add.ptr159, i8** %e, align 8, !dbg !3093
  %75 = load i8** %e, align 8, !dbg !3095
  %76 = load i8* %75, align 1, !dbg !3095
  %conv160 = sext i8 %76 to i32, !dbg !3095
  %cmp161 = icmp sge i32 %conv160, 53, !dbg !3095
  br i1 %cmp161, label %if.then163, label %do.body166, !dbg !3095

if.then163:                                       ; preds = %if.then157
  store i32 1, i32* %i152, align 4, !dbg !3097
  br label %do.body166, !dbg !3099

do.body166:                                       ; preds = %do.body166, %if.end150, %if.then163, %if.then157, %lor.rhs
  %77 = load i32* %i152, align 4, !dbg !3100
  %78 = load i8** %e, align 8, !dbg !3100
  %incdec.ptr167 = getelementptr inbounds i8* %78, i32 -1, !dbg !3100
  store i8* %incdec.ptr167, i8** %e, align 8, !dbg !3100
  %79 = load i8* %incdec.ptr167, align 1, !dbg !3100
  %conv168 = sext i8 %79 to i32, !dbg !3100
  %add169 = add nsw i32 %conv168, %77, !dbg !3100
  %conv170 = trunc i32 %add169 to i8, !dbg !3100
  store i8 %conv170, i8* %incdec.ptr167, align 1, !dbg !3100
  %80 = load i8** %e, align 8, !dbg !3102
  %81 = load i8* %80, align 1, !dbg !3102
  %conv172 = sext i8 %81 to i32, !dbg !3102
  %cmp173 = icmp eq i32 %conv172, 48, !dbg !3102
  br i1 %cmp173, label %do.body166, label %lor.rhs, !dbg !3102

lor.rhs:                                          ; preds = %do.body166
  %82 = load i8** %e, align 8, !dbg !3102
  %83 = load i8* %82, align 1, !dbg !3102
  %conv175 = sext i8 %83 to i32, !dbg !3102
  %cmp176 = icmp sgt i32 %conv175, 57, !dbg !3102
  br i1 %cmp176, label %do.body166, label %do.end178, !dbg !3102

do.end178:                                        ; preds = %lor.rhs
  %84 = load i32* %exp, align 4, !dbg !3103
  store i32 %84, i32* %o_exp, align 4, !dbg !3103
  %85 = load i8** %e, align 8, !dbg !3104
  %86 = load i8** %s, align 8, !dbg !3104
  %cmp179 = icmp ule i8* %85, %86, !dbg !3104
  br i1 %cmp179, label %if.then181, label %if.else183, !dbg !3104

if.then181:                                       ; preds = %do.end178
  %87 = load i32* %o_exp, align 4, !dbg !3106
  %inc182 = add nsw i32 %87, 1, !dbg !3106
  store i32 %inc182, i32* %o_exp, align 4, !dbg !3106
  %88 = load i8** %s, align 8, !dbg !3108
  store i8* %88, i8** %e, align 8, !dbg !3108
  br label %if.end185, !dbg !3109

if.else183:                                       ; preds = %do.end178
  %89 = load i8** %s, align 8, !dbg !3110
  %incdec.ptr184 = getelementptr inbounds i8* %89, i32 1, !dbg !3110
  store i8* %incdec.ptr184, i8** %s, align 8, !dbg !3110
  br label %if.end185

if.end185:                                        ; preds = %if.else183, %if.then181
  %90 = load i8** %e, align 8, !dbg !3112
  %incdec.ptr186 = getelementptr inbounds i8* %90, i32 1, !dbg !3112
  store i8* %incdec.ptr186, i8** %e, align 8, !dbg !3112
  store i8 0, i8* %incdec.ptr186, align 1, !dbg !3112
  %91 = load i8* %mode, align 1, !dbg !3113
  %conv187 = sext i8 %91 to i32, !dbg !3113
  %cmp188 = icmp eq i32 %conv187, 103, !dbg !3113
  %92 = load i32* %o_exp, align 4, !dbg !3113
  %cmp191 = icmp sge i32 %92, -4, !dbg !3113
  %or.cond9 = and i1 %cmp188, %cmp191, !dbg !3113
  br i1 %or.cond9, label %land.lhs.true193, label %if.end198, !dbg !3113

land.lhs.true193:                                 ; preds = %if.end185
  %93 = load i32* %o_exp, align 4, !dbg !3113
  %94 = load i32* %round, align 4, !dbg !3113
  %cmp194 = icmp sle i32 %93, %94, !dbg !3113
  br i1 %cmp194, label %if.then196, label %if.end198, !dbg !3113

if.then196:                                       ; preds = %land.lhs.true193
  store i8 102, i8* %mode, align 1, !dbg !3115
  %95 = load i32* %round, align 4, !dbg !3117
  %96 = load i32* %o_exp, align 4, !dbg !3117
  %sub197 = sub nsw i32 %95, %96, !dbg !3117
  store i32 %sub197, i32* %preci, align 4, !dbg !3117
  br label %if.end198, !dbg !3118

if.end198:                                        ; preds = %if.then196, %land.lhs.true193, %if.end185
  %97 = load i32* %o_exp, align 4, !dbg !3119
  store i32 %97, i32* %exp, align 4, !dbg !3119
  %98 = load i8* %mode, align 1, !dbg !3120
  %conv199 = sext i8 %98 to i32, !dbg !3120
  %cmp200 = icmp ne i32 %conv199, 102, !dbg !3120
  br i1 %cmp200, label %if.then202, label %if.end203, !dbg !3120

if.then202:                                       ; preds = %if.end198
  store i32 0, i32* %o_exp, align 4, !dbg !3122
  br label %if.end203, !dbg !3124

if.end203:                                        ; preds = %if.then202, %if.end198
  %99 = load i32* %o_exp, align 4, !dbg !3125
  %cmp204 = icmp slt i32 %99, 0, !dbg !3125
  br i1 %cmp204, label %if.then206, label %if.end208, !dbg !3125

if.then206:                                       ; preds = %if.end203
  %100 = load i8** %s, align 8, !dbg !3127
  %incdec.ptr207 = getelementptr inbounds i8* %100, i32 -1, !dbg !3127
  store i8* %incdec.ptr207, i8** %s, align 8, !dbg !3127
  store i8 48, i8* %incdec.ptr207, align 1, !dbg !3127
  br label %if.end208, !dbg !3129

if.end208:                                        ; preds = %if.then206, %if.end203
  %arrayidx209 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 3, !dbg !3130
  store i64 176, i64* %arrayidx209, align 8, !dbg !3130
  %arrayidx210 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 4, !dbg !3131
  store i64 1, i64* %arrayidx210, align 8, !dbg !3131
  %arraydecay211 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !3132
  %add.ptr212 = getelementptr inbounds i8* %arraydecay211, i64 4, !dbg !3132
  %101 = ptrtoint i8* %add.ptr212 to i64, !dbg !3132
  %arrayidx213 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i64 5, !dbg !3132
  store i64 %101, i64* %arrayidx213, align 8, !dbg !3132
  %102 = load i8** %s, align 8, !dbg !3133
  %incdec.ptr214 = getelementptr inbounds i8* %102, i32 1, !dbg !3133
  store i8* %incdec.ptr214, i8** %s, align 8, !dbg !3133
  %103 = load i8* %102, align 1, !dbg !3133
  %arrayidx215 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i64 4, !dbg !3133
  store i8 %103, i8* %arrayidx215, align 1, !dbg !3133
  %arrayidx216 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i64 5, !dbg !3134
  store i8 0, i8* %arrayidx216, align 1, !dbg !3134
  %arraydecay217 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i32 0, !dbg !3135
  %add.ptr218 = getelementptr inbounds i64* %arraydecay217, i64 6, !dbg !3135
  store i64* %add.ptr218, i64** %ppc, align 8, !dbg !3135
  %104 = load i8** %e, align 8, !dbg !3136
  %105 = load i8** %s, align 8, !dbg !3136
  %sub.ptr.lhs.cast = ptrtoint i8* %104 to i64, !dbg !3136
  %sub.ptr.rhs.cast = ptrtoint i8* %105 to i64, !dbg !3136
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3136
  %conv220 = trunc i64 %sub.ptr.sub to i32, !dbg !3136
  store i32 %conv220, i32* %i219, align 4, !dbg !3136
  %106 = load i32* %o_exp, align 4, !dbg !3138
  %cmp221 = icmp sge i32 %106, 0, !dbg !3138
  br i1 %cmp221, label %if.then223, label %if.end254, !dbg !3138

if.then223:                                       ; preds = %if.end208
  %107 = load i64** %ppc, align 8, !dbg !3140
  %arrayidx224 = getelementptr inbounds i64* %107, i64 0, !dbg !3140
  store i64 112, i64* %arrayidx224, align 8, !dbg !3140
  %108 = load i8** %s, align 8, !dbg !3142
  %109 = ptrtoint i8* %108 to i64, !dbg !3142
  %110 = load i64** %ppc, align 8, !dbg !3142
  %arrayidx225 = getelementptr inbounds i64* %110, i64 2, !dbg !3142
  store i64 %109, i64* %arrayidx225, align 8, !dbg !3142
  %111 = load i32* %o_exp, align 4, !dbg !3143
  %112 = load i32* %i219, align 4, !dbg !3143
  %cmp226 = icmp sge i32 %111, %112, !dbg !3143
  br i1 %cmp226, label %if.then228, label %if.else242, !dbg !3143

if.then228:                                       ; preds = %if.then223
  %113 = load i32* %i219, align 4, !dbg !3145
  %conv229 = sext i32 %113 to i64, !dbg !3145
  %114 = load i64** %ppc, align 8, !dbg !3145
  %arrayidx230 = getelementptr inbounds i64* %114, i64 1, !dbg !3145
  store i64 %conv229, i64* %arrayidx230, align 8, !dbg !3145
  %115 = load i64** %ppc, align 8, !dbg !3147
  %add.ptr231 = getelementptr inbounds i64* %115, i64 3, !dbg !3147
  store i64* %add.ptr231, i64** %ppc, align 8, !dbg !3147
  %116 = load i32* %i219, align 4, !dbg !3148
  %117 = load i32* %o_exp, align 4, !dbg !3148
  %sub232 = sub nsw i32 %117, %116, !dbg !3148
  store i32 %sub232, i32* %o_exp, align 4, !dbg !3148
  store i32 0, i32* %i219, align 4, !dbg !3149
  %118 = load i32* %o_exp, align 4, !dbg !3150
  %cmp233 = icmp sgt i32 %118, 0, !dbg !3150
  br i1 %cmp233, label %if.then235, label %if.end253, !dbg !3150

if.then235:                                       ; preds = %if.then228
  %119 = load i64** %ppc, align 8, !dbg !3152
  %arrayidx236 = getelementptr inbounds i64* %119, i64 0, !dbg !3152
  store i64 176, i64* %arrayidx236, align 8, !dbg !3152
  %120 = load i32* %o_exp, align 4, !dbg !3154
  %conv237 = sext i32 %120 to i64, !dbg !3154
  %121 = load i64** %ppc, align 8, !dbg !3154
  %arrayidx238 = getelementptr inbounds i64* %121, i64 1, !dbg !3154
  store i64 %conv237, i64* %arrayidx238, align 8, !dbg !3154
  %122 = load i64** %ppc, align 8, !dbg !3155
  %arrayidx239 = getelementptr inbounds i64* %122, i64 2, !dbg !3155
  store i64 ptrtoint (i8* getelementptr inbounds ([20 x i8]* @fmt, i32 0, i64 3) to i64), i64* %arrayidx239, align 8, !dbg !3155
  %123 = load i64** %ppc, align 8, !dbg !3156
  %add.ptr240 = getelementptr inbounds i64* %123, i64 3, !dbg !3156
  store i64* %add.ptr240, i64** %ppc, align 8, !dbg !3156
  br label %if.end253, !dbg !3157

if.else242:                                       ; preds = %if.then223
  %124 = load i32* %o_exp, align 4, !dbg !3158
  %cmp243 = icmp sgt i32 %124, 0, !dbg !3158
  br i1 %cmp243, label %if.then245, label %if.end253, !dbg !3158

if.then245:                                       ; preds = %if.else242
  %125 = load i32* %o_exp, align 4, !dbg !3160
  %conv246 = sext i32 %125 to i64, !dbg !3160
  %126 = load i64** %ppc, align 8, !dbg !3160
  %arrayidx247 = getelementptr inbounds i64* %126, i64 1, !dbg !3160
  store i64 %conv246, i64* %arrayidx247, align 8, !dbg !3160
  %127 = load i64** %ppc, align 8, !dbg !3162
  %add.ptr248 = getelementptr inbounds i64* %127, i64 3, !dbg !3162
  store i64* %add.ptr248, i64** %ppc, align 8, !dbg !3162
  %128 = load i32* %o_exp, align 4, !dbg !3163
  %129 = load i8** %s, align 8, !dbg !3163
  %idx.ext249 = sext i32 %128 to i64, !dbg !3163
  %add.ptr250 = getelementptr inbounds i8* %129, i64 %idx.ext249, !dbg !3163
  store i8* %add.ptr250, i8** %s, align 8, !dbg !3163
  %130 = load i32* %o_exp, align 4, !dbg !3164
  %131 = load i32* %i219, align 4, !dbg !3164
  %sub251 = sub nsw i32 %131, %130, !dbg !3164
  store i32 %sub251, i32* %i219, align 4, !dbg !3164
  br label %if.end253, !dbg !3165

if.end253:                                        ; preds = %if.else242, %if.then245, %if.then228, %if.then235
  store i32 -1, i32* %o_exp, align 4, !dbg !3166
  br label %if.end254, !dbg !3167

if.end254:                                        ; preds = %if.end253, %if.end208
  %132 = load %struct.printf_info** %info.addr, align 8, !dbg !3168
  %alt = getelementptr inbounds %struct.printf_info* %132, i32 0, i32 3, !dbg !3168
  %133 = bitcast [4 x i8]* %alt to i32*, !dbg !3168
  %bf.load255 = load i32* %133, align 4, !dbg !3168
  %int_cast_to_i646 = zext i32 4 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i646), !dbg !3168
  %bf.lshr256 = lshr i32 %bf.load255, 4, !dbg !3168
  %bf.clear257 = and i32 %bf.lshr256, 1, !dbg !3168
  %tobool258 = icmp ne i32 %bf.clear257, 0, !dbg !3168
  %134 = load i32* %i219, align 4, !dbg !3168
  %tobool259 = icmp ne i32 %134, 0, !dbg !3168
  %or.cond10 = or i1 %tobool258, %tobool259, !dbg !3168
  br i1 %or.cond10, label %if.then267, label %lor.lhs.false260, !dbg !3168

lor.lhs.false260:                                 ; preds = %if.end254
  %135 = load i8* %o_mode, align 1, !dbg !3168
  %conv261 = sext i8 %135 to i32, !dbg !3168
  %cmp262 = icmp ne i32 %conv261, 103, !dbg !3168
  %136 = load i32* %preci, align 4, !dbg !3168
  %cmp265 = icmp sgt i32 %136, 0, !dbg !3168
  %or.cond11 = and i1 %cmp262, %cmp265, !dbg !3168
  br i1 %or.cond11, label %if.then267, label %if.end272, !dbg !3168

if.then267:                                       ; preds = %lor.lhs.false260, %if.end254
  %137 = load i64** %ppc, align 8, !dbg !3170
  %arrayidx268 = getelementptr inbounds i64* %137, i64 0, !dbg !3170
  store i64 112, i64* %arrayidx268, align 8, !dbg !3170
  %138 = load i64** %ppc, align 8, !dbg !3172
  %arrayidx269 = getelementptr inbounds i64* %138, i64 1, !dbg !3172
  store i64 1, i64* %arrayidx269, align 8, !dbg !3172
  %139 = load i64** %ppc, align 8, !dbg !3173
  %arrayidx270 = getelementptr inbounds i64* %139, i64 2, !dbg !3173
  store i64 ptrtoint (i8* getelementptr inbounds ([20 x i8]* @fmt, i32 0, i64 16) to i64), i64* %arrayidx270, align 8, !dbg !3173
  %140 = load i64** %ppc, align 8, !dbg !3174
  %add.ptr271 = getelementptr inbounds i64* %140, i64 3, !dbg !3174
  store i64* %add.ptr271, i64** %ppc, align 8, !dbg !3174
  br label %if.end272, !dbg !3175

if.end272:                                        ; preds = %if.then267, %lor.lhs.false260
  %141 = load i32* %o_exp, align 4, !dbg !3176
  %inc273 = add nsw i32 %141, 1, !dbg !3176
  store i32 %inc273, i32* %o_exp, align 4, !dbg !3176
  %cmp274 = icmp slt i32 %inc273, 0, !dbg !3176
  br i1 %cmp274, label %if.then276, label %if.end283, !dbg !3176

if.then276:                                       ; preds = %if.end272
  %142 = load i64** %ppc, align 8, !dbg !3178
  %arrayidx277 = getelementptr inbounds i64* %142, i64 0, !dbg !3178
  store i64 176, i64* %arrayidx277, align 8, !dbg !3178
  %143 = load i32* %o_exp, align 4, !dbg !3180
  %sub278 = sub nsw i32 0, %143, !dbg !3180
  %conv279 = sext i32 %sub278 to i64, !dbg !3180
  %144 = load i64** %ppc, align 8, !dbg !3180
  %arrayidx280 = getelementptr inbounds i64* %144, i64 1, !dbg !3180
  store i64 %conv279, i64* %arrayidx280, align 8, !dbg !3180
  %145 = load i64** %ppc, align 8, !dbg !3181
  %arrayidx281 = getelementptr inbounds i64* %145, i64 2, !dbg !3181
  store i64 ptrtoint (i8* getelementptr inbounds ([20 x i8]* @fmt, i32 0, i64 3) to i64), i64* %arrayidx281, align 8, !dbg !3181
  %146 = load i64** %ppc, align 8, !dbg !3182
  %add.ptr282 = getelementptr inbounds i64* %146, i64 3, !dbg !3182
  store i64* %add.ptr282, i64** %ppc, align 8, !dbg !3182
  br label %if.end283, !dbg !3183

if.end283:                                        ; preds = %if.then276, %if.end272
  %147 = load i32* %i219, align 4, !dbg !3184
  %tobool284 = icmp ne i32 %147, 0, !dbg !3184
  br i1 %tobool284, label %if.then285, label %if.end291, !dbg !3184

if.then285:                                       ; preds = %if.end283
  %148 = load i64** %ppc, align 8, !dbg !3186
  %arrayidx286 = getelementptr inbounds i64* %148, i64 0, !dbg !3186
  store i64 112, i64* %arrayidx286, align 8, !dbg !3186
  %149 = load i32* %i219, align 4, !dbg !3188
  %conv287 = sext i32 %149 to i64, !dbg !3188
  %150 = load i64** %ppc, align 8, !dbg !3188
  %arrayidx288 = getelementptr inbounds i64* %150, i64 1, !dbg !3188
  store i64 %conv287, i64* %arrayidx288, align 8, !dbg !3188
  %151 = load i8** %s, align 8, !dbg !3189
  %152 = ptrtoint i8* %151 to i64, !dbg !3189
  %153 = load i64** %ppc, align 8, !dbg !3189
  %arrayidx289 = getelementptr inbounds i64* %153, i64 2, !dbg !3189
  store i64 %152, i64* %arrayidx289, align 8, !dbg !3189
  %154 = load i64** %ppc, align 8, !dbg !3190
  %add.ptr290 = getelementptr inbounds i64* %154, i64 3, !dbg !3190
  store i64* %add.ptr290, i64** %ppc, align 8, !dbg !3190
  br label %if.end291, !dbg !3191

if.end291:                                        ; preds = %if.then285, %if.end283
  %155 = load i8* %o_mode, align 1, !dbg !3192
  %conv292 = sext i8 %155 to i32, !dbg !3192
  %cmp293 = icmp ne i32 %conv292, 103, !dbg !3192
  br i1 %cmp293, label %if.then301, label %lor.lhs.false295, !dbg !3192

lor.lhs.false295:                                 ; preds = %if.end291
  %156 = load %struct.printf_info** %info.addr, align 8, !dbg !3192
  %alt296 = getelementptr inbounds %struct.printf_info* %156, i32 0, i32 3, !dbg !3192
  %157 = bitcast [4 x i8]* %alt296 to i32*, !dbg !3192
  %bf.load297 = load i32* %157, align 4, !dbg !3192
  %int_cast_to_i647 = zext i32 4 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i647), !dbg !3192
  %bf.lshr298 = lshr i32 %bf.load297, 4, !dbg !3192
  %bf.clear299 = and i32 %bf.lshr298, 1, !dbg !3192
  %tobool300 = icmp ne i32 %bf.clear299, 0, !dbg !3192
  br i1 %tobool300, label %if.then301, label %if.end313, !dbg !3192

if.then301:                                       ; preds = %lor.lhs.false295, %if.end291
  %158 = load i32* %o_exp, align 4, !dbg !3194
  %159 = load i32* %i219, align 4, !dbg !3194
  %sub302 = sub nsw i32 %159, %158, !dbg !3194
  store i32 %sub302, i32* %i219, align 4, !dbg !3194
  %160 = load i32* %i219, align 4, !dbg !3196
  %161 = load i32* %preci, align 4, !dbg !3196
  %cmp303 = icmp slt i32 %160, %161, !dbg !3196
  br i1 %cmp303, label %if.then305, label %if.end313, !dbg !3196

if.then305:                                       ; preds = %if.then301
  %162 = load i32* %preci, align 4, !dbg !3198
  %163 = load i32* %i219, align 4, !dbg !3198
  %sub306 = sub nsw i32 %162, %163, !dbg !3198
  store i32 %sub306, i32* %i219, align 4, !dbg !3198
  %164 = load i64** %ppc, align 8, !dbg !3200
  %arrayidx307 = getelementptr inbounds i64* %164, i64 0, !dbg !3200
  store i64 176, i64* %arrayidx307, align 8, !dbg !3200
  %165 = load i32* %i219, align 4, !dbg !3201
  %conv308 = sext i32 %165 to i64, !dbg !3201
  %166 = load i64** %ppc, align 8, !dbg !3201
  %arrayidx309 = getelementptr inbounds i64* %166, i64 1, !dbg !3201
  store i64 %conv308, i64* %arrayidx309, align 8, !dbg !3201
  %167 = load i64** %ppc, align 8, !dbg !3202
  %arrayidx310 = getelementptr inbounds i64* %167, i64 2, !dbg !3202
  store i64 ptrtoint (i8* getelementptr inbounds ([20 x i8]* @fmt, i32 0, i64 3) to i64), i64* %arrayidx310, align 8, !dbg !3202
  %168 = load i64** %ppc, align 8, !dbg !3203
  %add.ptr311 = getelementptr inbounds i64* %168, i64 3, !dbg !3203
  store i64* %add.ptr311, i64** %ppc, align 8, !dbg !3203
  br label %if.end313, !dbg !3204

if.end313:                                        ; preds = %if.then301, %if.then305, %lor.lhs.false295
  %169 = load i8* %mode, align 1, !dbg !3205
  %conv314 = sext i8 %169 to i32, !dbg !3205
  %cmp315 = icmp ne i32 %conv314, 102, !dbg !3205
  br i1 %cmp315, label %if.then317, label %EXIT_SPECIAL, !dbg !3205

if.then317:                                       ; preds = %if.end313
  %arraydecay318 = getelementptr inbounds [16 x i8]* %exp_buf, i32 0, i32 0, !dbg !3207
  %add.ptr319 = getelementptr inbounds i8* %arraydecay318, i64 16, !dbg !3207
  store i8* %add.ptr319, i8** %p, align 8, !dbg !3207
  %arraydecay321 = getelementptr inbounds [16 x i8]* %exp_buf, i32 0, i32 0, !dbg !3209
  %170 = load i8* %arraydecay321, align 1, !dbg !3209
  store i8 %170, i8* %exp_char, align 1, !dbg !3209
  store i8 43, i8* %exp_sign, align 1, !dbg !3210
  %171 = load i32* %exp, align 4, !dbg !3211
  %cmp322 = icmp slt i32 %171, 0, !dbg !3211
  br i1 %cmp322, label %if.then324, label %if.end326, !dbg !3211

if.then324:                                       ; preds = %if.then317
  store i8 45, i8* %exp_sign, align 1, !dbg !3213
  %172 = load i32* %exp, align 4, !dbg !3215
  %sub325 = sub nsw i32 0, %172, !dbg !3215
  store i32 %sub325, i32* %exp, align 4, !dbg !3215
  br label %if.end326, !dbg !3216

if.end326:                                        ; preds = %if.then324, %if.then317
  %173 = load i8** %p, align 8, !dbg !3217
  %incdec.ptr327 = getelementptr inbounds i8* %173, i32 -1, !dbg !3217
  store i8* %incdec.ptr327, i8** %p, align 8, !dbg !3217
  store i8 0, i8* %incdec.ptr327, align 1, !dbg !3217
  store i32 2, i32* %j320, align 4, !dbg !3218
  br label %do.body328, !dbg !3219

do.body328:                                       ; preds = %do.body328, %if.end326
  %174 = load i32* %exp, align 4, !dbg !3220
  %int_cast_to_i642 = zext i32 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !3220
  %rem329 = srem i32 %174, 10, !dbg !3220
  %add330 = add nsw i32 48, %rem329, !dbg !3220
  %conv331 = trunc i32 %add330 to i8, !dbg !3220
  %175 = load i8** %p, align 8, !dbg !3220
  %incdec.ptr332 = getelementptr inbounds i8* %175, i32 -1, !dbg !3220
  store i8* %incdec.ptr332, i8** %p, align 8, !dbg !3220
  store i8 %conv331, i8* %incdec.ptr332, align 1, !dbg !3220
  %176 = load i32* %exp, align 4, !dbg !3222
  %int_cast_to_i643 = zext i32 10 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !3222
  %div333 = sdiv i32 %176, 10, !dbg !3222
  store i32 %div333, i32* %exp, align 4, !dbg !3222
  %177 = load i32* %j320, align 4, !dbg !3223
  %inc335 = add nsw i32 %177, 1, !dbg !3223
  store i32 %inc335, i32* %j320, align 4, !dbg !3223
  %cmp336 = icmp slt i32 %inc335, 4, !dbg !3223
  %178 = load i32* %exp, align 4, !dbg !3223
  %tobool339 = icmp ne i32 %178, 0, !dbg !3223
  %or.cond12 = or i1 %cmp336, %tobool339, !dbg !3223
  br i1 %or.cond12, label %do.body328, label %do.end341, !dbg !3223

do.end341:                                        ; preds = %do.body328
  %179 = load i8* %exp_sign, align 1, !dbg !3224
  %180 = load i8** %p, align 8, !dbg !3224
  %incdec.ptr342 = getelementptr inbounds i8* %180, i32 -1, !dbg !3224
  store i8* %incdec.ptr342, i8** %p, align 8, !dbg !3224
  store i8 %179, i8* %incdec.ptr342, align 1, !dbg !3224
  %181 = load i8* %exp_char, align 1, !dbg !3225
  %182 = load i8** %p, align 8, !dbg !3225
  %incdec.ptr343 = getelementptr inbounds i8* %182, i32 -1, !dbg !3225
  store i8* %incdec.ptr343, i8** %p, align 8, !dbg !3225
  store i8 %181, i8* %incdec.ptr343, align 1, !dbg !3225
  %183 = load i64** %ppc, align 8, !dbg !3226
  %arrayidx344 = getelementptr inbounds i64* %183, i64 0, !dbg !3226
  store i64 112, i64* %arrayidx344, align 8, !dbg !3226
  %184 = load i32* %j320, align 4, !dbg !3227
  %conv345 = sext i32 %184 to i64, !dbg !3227
  %185 = load i64** %ppc, align 8, !dbg !3227
  %arrayidx346 = getelementptr inbounds i64* %185, i64 1, !dbg !3227
  store i64 %conv345, i64* %arrayidx346, align 8, !dbg !3227
  %186 = load i8** %p, align 8, !dbg !3228
  %187 = ptrtoint i8* %186 to i64, !dbg !3228
  %188 = load i64** %ppc, align 8, !dbg !3228
  %arrayidx347 = getelementptr inbounds i64* %188, i64 2, !dbg !3228
  store i64 %187, i64* %arrayidx347, align 8, !dbg !3228
  %189 = load i64** %ppc, align 8, !dbg !3229
  %add.ptr348 = getelementptr inbounds i64* %189, i64 3, !dbg !3229
  store i64* %add.ptr348, i64** %ppc, align 8, !dbg !3229
  br label %EXIT_SPECIAL, !dbg !3230

EXIT_SPECIAL:                                     ; preds = %if.end313, %do.end341, %if.end54
  %190 = load i64** %ppc, align 8, !dbg !3231
  store i64* %190, i64** %ppc_last, align 8, !dbg !3231
  %arraydecay351 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i32 0, !dbg !3233
  %add.ptr352 = getelementptr inbounds i64* %arraydecay351, i64 4, !dbg !3233
  store i64* %add.ptr352, i64** %ppc, align 8, !dbg !3233
  br label %do.body353, !dbg !3234

do.body353:                                       ; preds = %do.body353, %EXIT_SPECIAL
  %191 = load i64** %ppc, align 8, !dbg !3235
  %192 = load i64* %191, align 8, !dbg !3235
  %193 = load i32* %width, align 4, !dbg !3235
  %conv354 = sext i32 %193 to i64, !dbg !3235
  %sub355 = sub nsw i64 %conv354, %192, !dbg !3235
  %conv356 = trunc i64 %sub355 to i32, !dbg !3235
  store i32 %conv356, i32* %width, align 4, !dbg !3235
  %194 = load i64** %ppc, align 8, !dbg !3237
  %add.ptr357 = getelementptr inbounds i64* %194, i64 3, !dbg !3237
  store i64* %add.ptr357, i64** %ppc, align 8, !dbg !3237
  %195 = load i64** %ppc, align 8, !dbg !3238
  %196 = load i64** %ppc_last, align 8, !dbg !3238
  %cmp359 = icmp ult i64* %195, %196, !dbg !3238
  br i1 %cmp359, label %do.body353, label %do.end361, !dbg !3238

do.end361:                                        ; preds = %do.body353
  %arraydecay362 = getelementptr inbounds [24 x i64]* %pc_fwi, i32 0, i32 0, !dbg !3239
  store i64* %arraydecay362, i64** %ppc, align 8, !dbg !3239
  %197 = load i64** %ppc, align 8, !dbg !3240
  %arrayidx363 = getelementptr inbounds i64* %197, i64 0, !dbg !3240
  store i64 160, i64* %arrayidx363, align 8, !dbg !3240
  %arraydecay364 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !3241
  %198 = load i8* %arraydecay364, align 1, !dbg !3241
  %conv365 = sext i8 %198 to i32, !dbg !3241
  %cmp366 = icmp ne i32 %conv365, 0, !dbg !3241
  %conv367 = zext i1 %cmp366 to i32, !dbg !3241
  store i32 %conv367, i32* %i350, align 4, !dbg !3241
  %conv368 = sext i32 %conv367 to i64, !dbg !3241
  %199 = load i64** %ppc, align 8, !dbg !3241
  %arrayidx369 = getelementptr inbounds i64* %199, i64 1, !dbg !3241
  store i64 %conv368, i64* %arrayidx369, align 8, !dbg !3241
  %arraydecay370 = getelementptr inbounds [6 x i8]* %sign_str, i32 0, i32 0, !dbg !3242
  %200 = ptrtoint i8* %arraydecay370 to i64, !dbg !3242
  %201 = load i64** %ppc, align 8, !dbg !3242
  %arrayidx371 = getelementptr inbounds i64* %201, i64 2, !dbg !3242
  store i64 %200, i64* %arrayidx371, align 8, !dbg !3242
  %202 = load i32* %i350, align 4, !dbg !3243
  %203 = load i32* %width, align 4, !dbg !3243
  %sub372 = sub nsw i32 %203, %202, !dbg !3243
  store i32 %sub372, i32* %width, align 4, !dbg !3243
  %cmp373 = icmp sgt i32 %sub372, 0, !dbg !3243
  br i1 %cmp373, label %if.then375, label %if.end400, !dbg !3243

if.then375:                                       ; preds = %do.end361
  %204 = load %struct.printf_info** %info.addr, align 8, !dbg !3245
  %left = getelementptr inbounds %struct.printf_info* %204, i32 0, i32 3, !dbg !3245
  %205 = bitcast [4 x i8]* %left to i32*, !dbg !3245
  %bf.load376 = load i32* %205, align 4, !dbg !3245
  %int_cast_to_i648 = zext i32 3 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i648), !dbg !3245
  %bf.lshr377 = lshr i32 %bf.load376, 3, !dbg !3245
  %bf.clear378 = and i32 %bf.lshr377, 1, !dbg !3245
  %tobool379 = icmp ne i32 %bf.clear378, 0, !dbg !3245
  br i1 %tobool379, label %if.then380, label %if.else386, !dbg !3245

if.then380:                                       ; preds = %if.then375
  %206 = load i64** %ppc_last, align 8, !dbg !3248
  %arrayidx381 = getelementptr inbounds i64* %206, i64 0, !dbg !3248
  store i64 160, i64* %arrayidx381, align 8, !dbg !3248
  %207 = load i32* %width, align 4, !dbg !3250
  %conv382 = sext i32 %207 to i64, !dbg !3250
  %208 = load i64** %ppc_last, align 8, !dbg !3250
  %arrayidx383 = getelementptr inbounds i64* %208, i64 1, !dbg !3250
  store i64 %conv382, i64* %arrayidx383, align 8, !dbg !3250
  %209 = load i64** %ppc_last, align 8, !dbg !3251
  %arrayidx384 = getelementptr inbounds i64* %209, i64 2, !dbg !3251
  store i64 ptrtoint (i8* getelementptr inbounds ([20 x i8]* @fmt, i32 0, i64 3) to i64), i64* %arrayidx384, align 8, !dbg !3251
  %210 = load i64** %ppc_last, align 8, !dbg !3252
  %add.ptr385 = getelementptr inbounds i64* %210, i64 3, !dbg !3252
  store i64* %add.ptr385, i64** %ppc_last, align 8, !dbg !3252
  br label %if.end400, !dbg !3253

if.else386:                                       ; preds = %if.then375
  %211 = load %struct.printf_info** %info.addr, align 8, !dbg !3254
  %pad387 = getelementptr inbounds %struct.printf_info* %211, i32 0, i32 4, !dbg !3254
  %212 = load i32* %pad387, align 4, !dbg !3254
  %cmp388 = icmp eq i32 %212, 48, !dbg !3254
  %213 = load i32* %width, align 4, !dbg !3256
  %conv391 = sext i32 %213 to i64, !dbg !3256
  %214 = load i64** %ppc, align 8, !dbg !3256
  br i1 %cmp388, label %if.then390, label %if.else394, !dbg !3254

if.then390:                                       ; preds = %if.else386
  %arrayidx392 = getelementptr inbounds i64* %214, i64 4, !dbg !3256
  %215 = load i64* %arrayidx392, align 8, !dbg !3256
  %add393 = add nsw i64 %215, %conv391, !dbg !3256
  store i64 %add393, i64* %arrayidx392, align 8, !dbg !3256
  br label %if.end400, !dbg !3258

if.else394:                                       ; preds = %if.else386
  %arrayidx396 = getelementptr inbounds i64* %214, i64 1, !dbg !3259
  %216 = load i64* %arrayidx396, align 8, !dbg !3259
  %add397 = add nsw i64 %216, %conv391, !dbg !3259
  store i64 %add397, i64* %arrayidx396, align 8, !dbg !3259
  br label %if.end400

if.end400:                                        ; preds = %if.then380, %if.else394, %if.then390, %do.end361
  store i32 0, i32* %cnt, align 4, !dbg !3261
  br label %do.body401, !dbg !3262

do.body401:                                       ; preds = %if.end409, %if.end400
  %217 = load i64 (%struct.__STDIO_FILE_STRUCT.284*, i64, i64, i64)** %fp_outfunc.addr, align 8, !dbg !3263
  %218 = load %struct.__STDIO_FILE_STRUCT.284** %fp.addr, align 8, !dbg !3263
  %219 = load i64** %ppc, align 8, !dbg !3263
  %220 = load i64* %219, align 8, !dbg !3263
  %221 = load i64** %ppc, align 8, !dbg !3263
  %arrayidx402 = getelementptr inbounds i64* %221, i64 1, !dbg !3263
  %222 = load i64* %arrayidx402, align 8, !dbg !3263
  %223 = load i64** %ppc, align 8, !dbg !3263
  %arrayidx403 = getelementptr inbounds i64* %223, i64 2, !dbg !3263
  %224 = load i64* %arrayidx403, align 8, !dbg !3263
  %call404 = call i64 %217(%struct.__STDIO_FILE_STRUCT.284* %218, i64 %220, i64 %222, i64 %224) #18, !dbg !3263
  %225 = load i64** %ppc, align 8, !dbg !3263
  %arrayidx405 = getelementptr inbounds i64* %225, i64 1, !dbg !3263
  %226 = load i64* %arrayidx405, align 8, !dbg !3263
  %cmp406 = icmp ne i64 %call404, %226, !dbg !3263
  br i1 %cmp406, label %if.then408, label %if.end409, !dbg !3263

if.then408:                                       ; preds = %do.body401
  store i64 -1, i64* %retval, !dbg !3267
  br label %return, !dbg !3267

if.end409:                                        ; preds = %do.body401
  %227 = load i64** %ppc, align 8, !dbg !3269
  %arrayidx410 = getelementptr inbounds i64* %227, i64 1, !dbg !3269
  %228 = load i64* %arrayidx410, align 8, !dbg !3269
  %229 = load i32* %cnt, align 4, !dbg !3269
  %conv411 = sext i32 %229 to i64, !dbg !3269
  %add412 = add nsw i64 %conv411, %228, !dbg !3269
  %conv413 = trunc i64 %add412 to i32, !dbg !3269
  store i32 %conv413, i32* %cnt, align 4, !dbg !3269
  %230 = load i64** %ppc, align 8, !dbg !3270
  %add.ptr414 = getelementptr inbounds i64* %230, i64 3, !dbg !3270
  store i64* %add.ptr414, i64** %ppc, align 8, !dbg !3270
  %231 = load i64** %ppc, align 8, !dbg !3271
  %232 = load i64** %ppc_last, align 8, !dbg !3271
  %cmp416 = icmp ult i64* %231, %232, !dbg !3271
  br i1 %cmp416, label %do.body401, label %do.end418, !dbg !3271

do.end418:                                        ; preds = %if.end409
  %233 = load i32* %cnt, align 4, !dbg !3272
  %conv419 = sext i32 %233 to i64, !dbg !3272
  store i64 %conv419, i64* %retval, !dbg !3272
  br label %return, !dbg !3272

return:                                           ; preds = %do.end418, %if.then408
  %234 = load i64* %retval, !dbg !3273
  ret i64 %234, !dbg !3273
}

; Function Attrs: nounwind readonly uwtable
define i8* @memrchr(i8* %s, i32 %c, i64 %n) #6 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %r = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !3274
  %1 = load i64* %n.addr, align 8, !dbg !3274
  %add.ptr = getelementptr inbounds i8* %0, i64 %1, !dbg !3274
  store i8* %add.ptr, i8** %r, align 8, !dbg !3274
  br label %while.cond, !dbg !3275

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64* %n.addr, align 8, !dbg !3275
  %tobool = icmp ne i64 %2, 0, !dbg !3275
  br i1 %tobool, label %while.body, label %while.end, !dbg !3275

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r, align 8, !dbg !3276
  %incdec.ptr = getelementptr inbounds i8* %3, i32 -1, !dbg !3276
  store i8* %incdec.ptr, i8** %r, align 8, !dbg !3276
  %4 = load i8* %incdec.ptr, align 1, !dbg !3276
  %conv = zext i8 %4 to i32, !dbg !3276
  %5 = load i32* %c.addr, align 4, !dbg !3276
  %conv1 = trunc i32 %5 to i8, !dbg !3276
  %conv2 = zext i8 %conv1 to i32, !dbg !3276
  %cmp = icmp eq i32 %conv, %conv2, !dbg !3276
  br i1 %cmp, label %if.then, label %if.end, !dbg !3276

if.then:                                          ; preds = %while.body
  %6 = load i8** %r, align 8, !dbg !3279
  store i8* %6, i8** %retval, !dbg !3279
  br label %return, !dbg !3279

if.end:                                           ; preds = %while.body
  %7 = load i64* %n.addr, align 8, !dbg !3281
  %dec = add i64 %7, -1, !dbg !3281
  store i64 %dec, i64* %n.addr, align 8, !dbg !3281
  br label %while.cond, !dbg !3282

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, !dbg !3283
  br label %return, !dbg !3283

return:                                           ; preds = %while.end, %if.then
  %8 = load i8** %retval, !dbg !3284
  ret i8* %8, !dbg !3284
}

; Function Attrs: nounwind uwtable
define i8* @mempcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %r1 = alloca i8*, align 8
  %r2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s1.addr, align 8, !dbg !3285
  store i8* %0, i8** %r1, align 8, !dbg !3285
  %1 = load i8** %s2.addr, align 8, !dbg !3286
  store i8* %1, i8** %r2, align 8, !dbg !3286
  br label %while.cond, !dbg !3287

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !3287
  %tobool = icmp ne i64 %2, 0, !dbg !3287
  br i1 %tobool, label %while.body, label %while.end, !dbg !3287

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !3288
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !3288
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !3288
  %4 = load i8* %3, align 1, !dbg !3288
  %5 = load i8** %r1, align 8, !dbg !3288
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !3288
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !3288
  store i8 %4, i8* %5, align 1, !dbg !3288
  %6 = load i64* %n.addr, align 8, !dbg !3290
  %dec = add i64 %6, -1, !dbg !3290
  store i64 %dec, i64* %n.addr, align 8, !dbg !3290
  br label %while.cond, !dbg !3291

while.end:                                        ; preds = %while.cond
  %7 = load i8** %r1, align 8, !dbg !3292
  ret i8* %7, !dbg !3292
}

; Function Attrs: nounwind readonly uwtable
define i8* @memchr(i8* %s, i32 %c, i64 %n) #6 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %r = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !3293
  store i8* %0, i8** %r, align 8, !dbg !3293
  br label %while.cond, !dbg !3294

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64* %n.addr, align 8, !dbg !3294
  %tobool = icmp ne i64 %1, 0, !dbg !3294
  br i1 %tobool, label %while.body, label %while.end, !dbg !3294

while.body:                                       ; preds = %while.cond
  %2 = load i8** %r, align 8, !dbg !3295
  %3 = load i8* %2, align 1, !dbg !3295
  %conv = zext i8 %3 to i32, !dbg !3295
  %4 = load i32* %c.addr, align 4, !dbg !3295
  %conv1 = trunc i32 %4 to i8, !dbg !3295
  %conv2 = zext i8 %conv1 to i32, !dbg !3295
  %cmp = icmp eq i32 %conv, %conv2, !dbg !3295
  %5 = load i8** %r, align 8, !dbg !3298
  br i1 %cmp, label %if.then, label %if.end, !dbg !3295

if.then:                                          ; preds = %while.body
  store i8* %5, i8** %retval, !dbg !3298
  br label %return, !dbg !3298

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1, !dbg !3300
  store i8* %incdec.ptr, i8** %r, align 8, !dbg !3300
  %6 = load i64* %n.addr, align 8, !dbg !3301
  %dec = add i64 %6, -1, !dbg !3301
  store i64 %dec, i64* %n.addr, align 8, !dbg !3301
  br label %while.cond, !dbg !3302

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, !dbg !3303
  br label %return, !dbg !3303

return:                                           ; preds = %while.end, %if.then
  %7 = load i8** %retval, !dbg !3304
  ret i8* %7, !dbg !3304
}

; Function Attrs: nounwind uwtable
define i32 @fseek(%struct.__STDIO_FILE_STRUCT.231* %stream, i64 %offset, i32 %whence) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3305
  %1 = load i64* %offset.addr, align 8, !dbg !3305
  %2 = load i32* %whence.addr, align 4, !dbg !3305
  %call = call i32 @fseeko64(%struct.__STDIO_FILE_STRUCT.231* %0, i64 %1, i32 %2) #18, !dbg !3305
  ret i32 %call, !dbg !3305
}

; Function Attrs: nounwind uwtable
define i32 @fseeko64(%struct.__STDIO_FILE_STRUCT.231* %stream, i64 %offset, i32 %whence) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load i64* %offset.addr, align 8, !dbg !3306
  store i64 %0, i64* %pos, align 8, !dbg !3306
  store i32 -1, i32* %retval1, align 4, !dbg !3307
  %1 = load i32* %whence.addr, align 4, !dbg !3308
  %cmp = icmp ugt i32 %1, 2, !dbg !3308
  br i1 %cmp, label %if.then, label %if.else, !dbg !3308

if.then:                                          ; preds = %entry
  store i32 22, i32* @errno, align 4, !dbg !3310
  br label %if.end20, !dbg !3312

if.else:                                          ; preds = %entry
  %2 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3313
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %2, i32 0, i32 0, !dbg !3313
  %3 = load i16* %__modeflags, align 2, !dbg !3313
  %conv = zext i16 %3 to i32, !dbg !3313
  %and = and i32 %conv, 64, !dbg !3313
  %tobool = icmp ne i32 %and, 0, !dbg !3313
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !3313

lor.lhs.false:                                    ; preds = %if.else
  %4 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3316
  %call = call i64 bitcast (i64 (%struct.__STDIO_FILE_STRUCT.274*)* @__stdio_wcommit to i64 (%struct.__STDIO_FILE_STRUCT.231*)*)(%struct.__STDIO_FILE_STRUCT.231* %4) #18, !dbg !3316
  %tobool2 = icmp ne i64 %call, 0, !dbg !3316
  br i1 %tobool2, label %if.end20, label %land.lhs.true, !dbg !3316

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else
  %5 = load i32* %whence.addr, align 4, !dbg !3316
  %cmp3 = icmp ne i32 %5, 1, !dbg !3316
  br i1 %cmp3, label %land.lhs.true9, label %lor.lhs.false5, !dbg !3316

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %6 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3317
  %call6 = call i32 @__stdio_adjust_position(%struct.__STDIO_FILE_STRUCT.231* %6, i64* %pos) #18, !dbg !3317
  %cmp7 = icmp sge i32 %call6, 0, !dbg !3317
  br i1 %cmp7, label %land.lhs.true9, label %if.end20, !dbg !3317

land.lhs.true9:                                   ; preds = %lor.lhs.false5, %land.lhs.true
  %7 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3318
  %8 = load i32* %whence.addr, align 4, !dbg !3318
  %call10 = call i32 @__stdio_seek(%struct.__STDIO_FILE_STRUCT.231* %7, i64* %pos, i32 %8) #18, !dbg !3318
  %cmp11 = icmp sge i32 %call10, 0, !dbg !3318
  br i1 %cmp11, label %if.then13, label %if.end20, !dbg !3318

if.then13:                                        ; preds = %land.lhs.true9
  %9 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3319
  %__modeflags14 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %9, i32 0, i32 0, !dbg !3319
  %10 = load i16* %__modeflags14, align 2, !dbg !3319
  %conv15 = zext i16 %10 to i32, !dbg !3319
  %and16 = and i32 %conv15, -72, !dbg !3319
  %conv17 = trunc i32 %and16 to i16, !dbg !3319
  store i16 %conv17, i16* %__modeflags14, align 2, !dbg !3319
  %11 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3321
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %11, i32 0, i32 3, !dbg !3321
  %12 = load i8** %__bufstart, align 8, !dbg !3321
  %13 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3321
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %13, i32 0, i32 5, !dbg !3321
  store i8* %12, i8** %__bufpos, align 8, !dbg !3321
  %14 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3321
  %__bufread = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %14, i32 0, i32 6, !dbg !3321
  store i8* %12, i8** %__bufread, align 8, !dbg !3321
  %15 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3322
  %__bufstart18 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %15, i32 0, i32 3, !dbg !3322
  %16 = load i8** %__bufstart18, align 8, !dbg !3322
  %17 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3322
  %__bufgetc_u = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %17, i32 0, i32 7, !dbg !3322
  store i8* %16, i8** %__bufgetc_u, align 8, !dbg !3322
  %18 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3323
  %__bufstart19 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %18, i32 0, i32 3, !dbg !3323
  %19 = load i8** %__bufstart19, align 8, !dbg !3323
  %20 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3323
  %__bufputc_u = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %20, i32 0, i32 8, !dbg !3323
  store i8* %19, i8** %__bufputc_u, align 8, !dbg !3323
  %21 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3324
  %__state = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %21, i32 0, i32 11, !dbg !3324
  %__mask = getelementptr inbounds %struct.__mbstate_t.230* %__state, i32 0, i32 0, !dbg !3324
  store i32 0, i32* %__mask, align 4, !dbg !3324
  %22 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3325
  %__ungot_width = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %22, i32 0, i32 1, !dbg !3325
  %arrayidx = getelementptr inbounds [2 x i8]* %__ungot_width, i32 0, i64 0, !dbg !3325
  store i8 0, i8* %arrayidx, align 1, !dbg !3325
  store i32 0, i32* %retval1, align 4, !dbg !3326
  br label %if.end20, !dbg !3327

if.end20:                                         ; preds = %lor.lhs.false, %lor.lhs.false5, %land.lhs.true9, %if.then13, %if.then
  %23 = load i32* %retval1, align 4, !dbg !3328
  ret i32 %23, !dbg !3328
}

; Function Attrs: nounwind uwtable
define hidden i32 @__stdio_adjust_position(%struct.__STDIO_FILE_STRUCT.231* noalias %stream, i64* %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %pos.addr = alloca i64*, align 8
  %oldpos = alloca i64, align 8
  %corr = alloca i32, align 4
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i64* %pos, i64** %pos.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3329
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %0, i32 0, i32 0, !dbg !3329
  %1 = load i16* %__modeflags, align 2, !dbg !3329
  %conv = zext i16 %1 to i32, !dbg !3329
  %and = and i32 %conv, 3, !dbg !3329
  store i32 %and, i32* %corr, align 4, !dbg !3329
  %cmp = icmp ne i32 %and, 0, !dbg !3329
  br i1 %cmp, label %if.then, label %if.end, !dbg !3329

if.then:                                          ; preds = %entry
  %2 = load i32* %corr, align 4, !dbg !3331
  %dec = add nsw i32 %2, -1, !dbg !3331
  store i32 %dec, i32* %corr, align 4, !dbg !3331
  br label %if.end, !dbg !3333

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32* %corr, align 4, !dbg !3334
  %tobool = icmp ne i32 %3, 0, !dbg !3334
  br i1 %tobool, label %land.lhs.true, label %if.end22, !dbg !3334

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3334
  %__modeflags2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %4, i32 0, i32 0, !dbg !3334
  %5 = load i16* %__modeflags2, align 2, !dbg !3334
  %conv3 = zext i16 %5 to i32, !dbg !3334
  %and4 = and i32 %conv3, 2048, !dbg !3334
  %tobool5 = icmp ne i32 %and4, 0, !dbg !3334
  br i1 %tobool5, label %if.then6, label %if.end22, !dbg !3334

if.then6:                                         ; preds = %land.lhs.true
  %6 = load i32* %corr, align 4, !dbg !3336
  %cmp7 = icmp sgt i32 %6, 1, !dbg !3336
  br i1 %cmp7, label %if.then10, label %lor.lhs.false, !dbg !3336

lor.lhs.false:                                    ; preds = %if.then6
  %7 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3336
  %__ungot = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %7, i32 0, i32 10, !dbg !3336
  %arrayidx = getelementptr inbounds [2 x i32]* %__ungot, i32 0, i64 1, !dbg !3336
  %8 = load i32* %arrayidx, align 4, !dbg !3336
  %tobool9 = icmp ne i32 %8, 0, !dbg !3336
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3336

if.then10:                                        ; preds = %lor.lhs.false, %if.then6
  store i32 -1, i32* %retval, !dbg !3339
  br label %return, !dbg !3339

if.end11:                                         ; preds = %lor.lhs.false
  %9 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3341
  %__ungot_width = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %9, i32 0, i32 1, !dbg !3341
  %arrayidx12 = getelementptr inbounds [2 x i8]* %__ungot_width, i32 0, i64 1, !dbg !3341
  %10 = load i8* %arrayidx12, align 1, !dbg !3341
  %conv13 = zext i8 %10 to i32, !dbg !3341
  %add = add nsw i32 1, %conv13, !dbg !3341
  %11 = load i32* %corr, align 4, !dbg !3341
  %sub = sub nsw i32 %11, %add, !dbg !3341
  store i32 %sub, i32* %corr, align 4, !dbg !3341
  %12 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3342
  %__state = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %12, i32 0, i32 11, !dbg !3342
  %__mask = getelementptr inbounds %struct.__mbstate_t.230* %__state, i32 0, i32 0, !dbg !3342
  %13 = load i32* %__mask, align 4, !dbg !3342
  %cmp14 = icmp sgt i32 %13, 0, !dbg !3342
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !3342

if.then16:                                        ; preds = %if.end11
  %14 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3344
  %__ungot_width17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %14, i32 0, i32 1, !dbg !3344
  %arrayidx18 = getelementptr inbounds [2 x i8]* %__ungot_width17, i32 0, i64 0, !dbg !3344
  %15 = load i8* %arrayidx18, align 1, !dbg !3344
  %conv19 = zext i8 %15 to i32, !dbg !3344
  %16 = load i32* %corr, align 4, !dbg !3344
  %sub20 = sub nsw i32 %16, %conv19, !dbg !3344
  store i32 %sub20, i32* %corr, align 4, !dbg !3344
  br label %if.end22, !dbg !3346

if.end22:                                         ; preds = %if.end11, %if.then16, %land.lhs.true, %if.end
  %17 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3347
  %__modeflags23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %17, i32 0, i32 0, !dbg !3347
  %18 = load i16* %__modeflags23, align 2, !dbg !3347
  %conv24 = zext i16 %18 to i32, !dbg !3347
  %and25 = and i32 %conv24, 64, !dbg !3347
  %tobool26 = icmp ne i32 %and25, 0, !dbg !3347
  %19 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3347
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !3347

cond.true:                                        ; preds = %if.end22
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %19, i32 0, i32 3, !dbg !3347
  %20 = load i8** %__bufstart, align 8, !dbg !3347
  br label %cond.end, !dbg !3347

cond.false:                                       ; preds = %if.end22
  %__bufread = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %19, i32 0, i32 6, !dbg !3347
  %21 = load i8** %__bufread, align 8, !dbg !3347
  br label %cond.end, !dbg !3347

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %21, %cond.false ], !dbg !3347
  %22 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3347
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %22, i32 0, i32 5, !dbg !3347
  %23 = load i8** %__bufpos, align 8, !dbg !3347
  %sub.ptr.lhs.cast = ptrtoint i8* %cond to i64, !dbg !3347
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64, !dbg !3347
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3347
  %24 = load i32* %corr, align 4, !dbg !3347
  %conv27 = sext i32 %24 to i64, !dbg !3347
  %add28 = add nsw i64 %conv27, %sub.ptr.sub, !dbg !3347
  %conv29 = trunc i64 %add28 to i32, !dbg !3347
  store i32 %conv29, i32* %corr, align 4, !dbg !3347
  %25 = load i64** %pos.addr, align 8, !dbg !3348
  %26 = load i64* %25, align 8, !dbg !3348
  store i64 %26, i64* %oldpos, align 8, !dbg !3348
  %27 = load i32* %corr, align 4, !dbg !3349
  %conv30 = sext i32 %27 to i64, !dbg !3349
  %28 = load i64** %pos.addr, align 8, !dbg !3349
  %29 = load i64* %28, align 8, !dbg !3349
  %sub31 = sub nsw i64 %29, %conv30, !dbg !3349
  store i64 %sub31, i64* %28, align 8, !dbg !3349
  %30 = load i64* %oldpos, align 8, !dbg !3349
  %cmp32 = icmp sgt i64 %sub31, %30, !dbg !3349
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !3349

if.then34:                                        ; preds = %cond.end
  %31 = load i32* %corr, align 4, !dbg !3351
  %sub35 = sub nsw i32 0, %31, !dbg !3351
  store i32 %sub35, i32* %corr, align 4, !dbg !3351
  br label %if.end36, !dbg !3353

if.end36:                                         ; preds = %if.then34, %cond.end
  %32 = load i32* %corr, align 4, !dbg !3354
  %cmp37 = icmp slt i32 %32, 0, !dbg !3354
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !3354

if.then39:                                        ; preds = %if.end36
  store i32 75, i32* @errno, align 4, !dbg !3356
  br label %if.end40, !dbg !3358

if.end40:                                         ; preds = %if.then39, %if.end36
  %33 = load i32* %corr, align 4, !dbg !3359
  store i32 %33, i32* %retval, !dbg !3359
  br label %return, !dbg !3359

return:                                           ; preds = %if.end40, %if.then10
  %34 = load i32* %retval, !dbg !3360
  ret i32 %34, !dbg !3360
}

; Function Attrs: nounwind uwtable
define hidden i32 @__stdio_seek(%struct.__STDIO_FILE_STRUCT.231* %stream, i64* %pos, i32 %whence) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.231*, align 8
  %pos.addr = alloca i64*, align 8
  %whence.addr = alloca i32, align 4
  %res = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.231* %stream, %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8
  store i64* %pos, i64** %pos.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct.__STDIO_FILE_STRUCT.231** %stream.addr, align 8, !dbg !3361
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.231* %0, i32 0, i32 2, !dbg !3361
  %1 = load i32* %__filedes, align 4, !dbg !3361
  %2 = load i64** %pos.addr, align 8, !dbg !3361
  %3 = load i64* %2, align 8, !dbg !3361
  %4 = load i32* %whence.addr, align 4, !dbg !3361
  %call = call i64 @lseek64(i32 %1, i64 %3, i32 %4) #17, !dbg !3361
  store i64 %call, i64* %res, align 8, !dbg !3361
  %5 = load i64* %res, align 8, !dbg !3362
  %cmp = icmp sge i64 %5, 0, !dbg !3362
  %6 = load i64* %res, align 8, !dbg !3362
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3362

cond.true:                                        ; preds = %entry
  %7 = load i64** %pos.addr, align 8, !dbg !3362
  store i64 %6, i64* %7, align 8, !dbg !3362
  br label %cond.end, !dbg !3362

cond.false:                                       ; preds = %entry
  %conv = trunc i64 %6 to i32, !dbg !3362
  br label %cond.end, !dbg !3362

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ], !dbg !3362
  ret i32 %cond, !dbg !3362
}

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #3

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

declare zeroext i1 @klee_is_infinite_float(float) #10

declare zeroext i1 @klee_is_infinite_double(double) #10

declare zeroext i1 @klee_is_infinite_long_double(x86_fp80) #10

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinff(float %f) #11 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_float(float %f) #17
  %cmp = fcmp ogt float %f, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinf(double %d) #11 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_double(double %d) #17
  %cmp = fcmp ogt double %d, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline optnone
define i32 @klee_internal_isinfl(x86_fp80 %d) #12 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %d) #17
  %cmp = fcmp ogt x86_fp80 %d, 0xK00000000000000000000
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: nounwind uwtable
define double @klee_internal_fabs(double %d) #13 {
entry:
  %call = tail call double @klee_abs_double(double %d) #17, !dbg !3363
  ret double %call, !dbg !3363
}

declare double @klee_abs_double(double) #10

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #13 {
entry:
  %call = tail call float @klee_abs_float(float %f) #17, !dbg !3364
  ret float %call, !dbg !3364
}

declare float @klee_abs_float(float) #10

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #13 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #17, !dbg !3365
  ret x86_fp80 %call, !dbg !3365
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #13 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #17, !dbg !3366
  %0 = icmp ult i32 %call, 5, !dbg !3367
  br i1 %0, label %switch.lookup, label %return, !dbg !3367

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !3367
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !3367
  %switch.load = load i32* %switch.gep, align 4, !dbg !3367
  ret i32 %switch.load, !dbg !3367

return:                                           ; preds = %entry
  ret i32 -1, !dbg !3368
}

declare i32 @klee_get_rounding_mode(...) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fesetround(i32 %rm) #13 {
entry:
  switch i32 %rm, label %return [
    i32 0, label %sw.bb
    i32 2048, label %sw.bb1
    i32 1024, label %sw.bb2
    i32 3072, label %sw.bb3
  ], !dbg !3369

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #17, !dbg !3370
  br label %return, !dbg !3372

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #17, !dbg !3373
  br label %return, !dbg !3374

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #17, !dbg !3375
  br label %return, !dbg !3376

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #17, !dbg !3377
  br label %return, !dbg !3378

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !3379
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #17, !dbg !3380
  %conv = zext i1 %call to i32, !dbg !3380
  ret i32 %conv, !dbg !3380
}

declare zeroext i1 @klee_is_nan_float(float) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #17, !dbg !3381
  %conv = zext i1 %call to i32, !dbg !3381
  ret i32 %conv, !dbg !3381
}

declare zeroext i1 @klee_is_nan_double(double) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #17, !dbg !3382
  %conv = zext i1 %call to i32, !dbg !3382
  ret i32 %conv, !dbg !3382
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #17, !dbg !3383
  br i1 %call, label %return, label %if.else, !dbg !3383

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #17, !dbg !3385
  br i1 %call1, label %return, label %if.else3, !dbg !3385

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !3387
  br i1 %cmp, label %return, label %if.else5, !dbg !3387

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #17, !dbg !3389
  %. = select i1 %call6, i32 4, i32 3, !dbg !3391
  br label %return, !dbg !3391

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3393
}

declare zeroext i1 @klee_is_normal_float(float) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #17, !dbg !3394
  br i1 %call, label %return, label %if.else, !dbg !3394

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #17, !dbg !3396
  br i1 %call1, label %return, label %if.else3, !dbg !3396

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !3398
  br i1 %cmp, label %return, label %if.else5, !dbg !3398

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #17, !dbg !3400
  %. = select i1 %call6, i32 4, i32 3, !dbg !3402
  br label %return, !dbg !3402

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3404
}

declare zeroext i1 @klee_is_normal_double(double) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #17, !dbg !3405
  br i1 %call, label %return, label %if.else, !dbg !3405

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #17, !dbg !3407
  br i1 %call1, label %return, label %if.else3, !dbg !3407

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !3409
  br i1 %cmp, label %return, label %if.else5, !dbg !3409

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #17, !dbg !3411
  %. = select i1 %call6, i32 4, i32 3, !dbg !3413
  br label %return, !dbg !3413

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !3415
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #10

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #17, !dbg !3416
  %0 = zext i1 %call to i32, !dbg !3416
  %lnot.ext = xor i32 %0, 1, !dbg !3416
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #17, !dbg !3416
  %1 = zext i1 %call1 to i32, !dbg !3416
  %lnot.ext3 = xor i32 %1, 1, !dbg !3416
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3416
  ret i32 %and, !dbg !3416
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #17, !dbg !3417
  %0 = zext i1 %call to i32, !dbg !3417
  %lnot.ext = xor i32 %0, 1, !dbg !3417
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #17, !dbg !3417
  %1 = zext i1 %call1 to i32, !dbg !3417
  %lnot.ext3 = xor i32 %1, 1, !dbg !3417
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3417
  ret i32 %and, !dbg !3417
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #13 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #17, !dbg !3418
  %0 = zext i1 %call to i32, !dbg !3418
  %lnot.ext = xor i32 %0, 1, !dbg !3418
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #17, !dbg !3418
  %1 = zext i1 %call1 to i32, !dbg !3418
  %lnot.ext3 = xor i32 %1, 1, !dbg !3418
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !3418
  ret i32 %and, !dbg !3418
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #13 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !3419
  br i1 %cmp, label %if.then, label %if.end, !dbg !3419

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str104, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str1105, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2106, i64 0, i64 0)) #21, !dbg !3421
  unreachable, !dbg !3421

if.end:                                           ; preds = %entry
  ret void, !dbg !3422
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #14

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #13 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !3423
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #17, !dbg !3423
  %1 = load i32* %x, align 4, !dbg !3424, !tbaa !3425
  ret i32 %1, !dbg !3424
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #13 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !3429
  br i1 %cmp, label %if.end, label %if.then, !dbg !3429

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str3107, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #21, !dbg !3431
  unreachable, !dbg !3431

if.end:                                           ; preds = %entry
  ret void, !dbg !3433
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #13 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !3434
  br i1 %cmp, label %if.end, label %if.then, !dbg !3434

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str6108, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #21, !dbg !3436
  unreachable, !dbg !3436

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !3437
  %cmp1 = icmp eq i32 %add, %end, !dbg !3437
  br i1 %cmp1, label %return, label %if.else, !dbg !3437

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !3439
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #17, !dbg !3439
  %cmp3 = icmp eq i32 %start, 0, !dbg !3441
  %1 = load i32* %x, align 4, !dbg !3443, !tbaa !3425
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !3441

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !3443
  %conv6 = zext i1 %cmp5 to i64, !dbg !3443
  call void @klee_assume(i64 %conv6) #17, !dbg !3443
  br label %if.end14, !dbg !3445

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !3446
  %conv10 = zext i1 %cmp8 to i64, !dbg !3446
  call void @klee_assume(i64 %conv10) #17, !dbg !3446
  %2 = load i32* %x, align 4, !dbg !3448, !tbaa !3425
  %cmp11 = icmp slt i32 %2, %end, !dbg !3448
  %conv13 = zext i1 %cmp11 to i64, !dbg !3448
  call void @klee_assume(i64 %conv13) #17, !dbg !3448
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !3449, !tbaa !3425
  br label %return, !dbg !3449

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !3450
}

; Function Attrs: nounwind uwtable
define void @klee_set_rounding_mode(i32 %rm) #13 {
entry:
  switch i32 %rm, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !3451

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #17, !dbg !3452
  br label %sw.epilog, !dbg !3452

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #17, !dbg !3454
  br label %sw.epilog, !dbg !3454

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #17, !dbg !3455
  br label %sw.epilog, !dbg !3455

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #17, !dbg !3456
  br label %sw.epilog, !dbg !3456

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #17, !dbg !3457
  br label %sw.epilog, !dbg !3457

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #21, !dbg !3458
  unreachable, !dbg !3458

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !3459
}

declare void @klee_set_rounding_mode_internal(i32) #10

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #13 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !3460
  br i1 %cmp, label %return, label %if.end, !dbg !3460

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !3462
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !3462

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !3464
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !3464

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !3464
  %wide.load = load <16 x i8>* %1, align 1, !dbg !3464
  %next.gep.sum610 = or i64 %index, 16, !dbg !3464
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !3464
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !3464
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !3464
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !3464
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !3464
  %next.gep136.sum627 = or i64 %index, 16, !dbg !3464
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !3464
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !3464
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !3464
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3466

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
  %dec = add i64 %count.addr.028, -1, !dbg !3464
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !3464
  %8 = load i8* %b.030, align 1, !dbg !3464, !tbaa !3469
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !3464
  store i8 %8, i8* %a.029, align 1, !dbg !3464, !tbaa !3469
  %tobool = icmp eq i64 %dec, 0, !dbg !3464
  br i1 %tobool, label %return, label %while.body, !dbg !3464, !llvm.loop !3470

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !3471
  %tobool832 = icmp eq i64 %count, 0, !dbg !3473
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !3473

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !3474
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !3471
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !3473
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !3473
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !3473
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !3473
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3473
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !3473
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !3473
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !3473
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !3473
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3473
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3473
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !3473
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !3473
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !3473
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !3473
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3473
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !3473
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !3473
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !3473
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !3473
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !3475

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !3473
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !3473
  %19 = load i8* %b.135, align 1, !dbg !3473, !tbaa !3469
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !3473
  store i8 %19, i8* %a.134, align 1, !dbg !3473, !tbaa !3469
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !3473
  br i1 %tobool8, label %return, label %while.body9, !dbg !3473, !llvm.loop !3476

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !3477
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #13 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #17, !dbg !3478
  ret double %call, !dbg !3478
}

declare double @klee_sqrt_double(double) #10

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #13 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #17, !dbg !3479
  ret float %call, !dbg !3479
}

declare float @klee_sqrt_float(float) #10

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #13 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #17, !dbg !3480
  ret x86_fp80 %call, !dbg !3480
}

declare x86_fp80 @klee_sqrt_long_double(x86_fp80) #10

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #7 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #8 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use
attributes #9 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #10 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline nounwind optnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline optnone }
attributes #13 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind readonly }
attributes #20 = { nobuiltin nounwind readnone }
attributes #21 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !16, !33, !122, !144, !146, !148, !150, !152, !159, !166, !207, !248, !279, !424, !485, !533, !580, !684, !715, !748, !755, !764, !772, !780, !788, !796, !810, !818, !826, !831, !856, !890, !905, !911, !918, !923, !941, !959, !973, !
!llvm.module.flags = !{!1517, !1518}
!llvm.ident = !{!1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, !1519, 

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"codepage.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"codepageMap", metadata !"codepageMap", metadata !"", i32 48, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32*)* @codepageMap, null, null, metadata !2, i
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/codepage.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"codepageConvert", metadata !"codepageConvert", metadata !"", i32 85, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*)* @codepageConvert, null, null, m
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !13}
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{i32 786449, metadata !17, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, m
!17 = metadata !{metadata !"unixfilemap.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786478, metadata !17, metadata !20, metadata !"filemap", metadata !"filemap", metadata !"", i32 61, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, void (i8*, i64, i8*, i8*)*, i8*)* @filemap, null, n
!20 = metadata !{i32 786473, metadata !17}        ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !8, metadata !13, metadata !23, metadata !30}
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !26, metadata !28, metadata !13, metadata !30}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{i32 786454, metadata !17, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!29 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786484, i32 0, metadata !19, metadata !"c", metadata !"c", metadata !"", metadata !20, i32 92, metadata !14, i32 1, i32 1, i8* @filemap.c, null} ; [ DW_TAG_variable ] [c] [line 92] [local] [def]
!33 = metadata !{i32 786449, metadata !34, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, m
!34 = metadata !{metadata !"xmlfile.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!35 = metadata !{metadata !36, metadata !42}
!36 = metadata !{i32 786436, metadata !37, null, metadata !"XML_Status", i32 75, i64 32, i64 32, i32 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [XML_Status] [line 75, size 32, align 32, offset 0] [def] [from ]
!37 = metadata !{metadata !"../lib/expat.h", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!38 = metadata !{metadata !39, metadata !40, metadata !41}
!39 = metadata !{i32 786472, metadata !"XML_STATUS_ERROR", i64 0} ; [ DW_TAG_enumerator ] [XML_STATUS_ERROR :: 0]
!40 = metadata !{i32 786472, metadata !"XML_STATUS_OK", i64 1} ; [ DW_TAG_enumerator ] [XML_STATUS_OK :: 1]
!41 = metadata !{i32 786472, metadata !"XML_STATUS_SUSPENDED", i64 2} ; [ DW_TAG_enumerator ] [XML_STATUS_SUSPENDED :: 2]
!42 = metadata !{i32 786436, metadata !37, null, metadata !"XML_Error", i32 84, i64 32, i64 32, i32 0, i32 0, null, metadata !43, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [XML_Error] [line 84, size 32, align 32, offset 0] [def] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60,
!44 = metadata !{i32 786472, metadata !"XML_ERROR_NONE", i64 0} ; [ DW_TAG_enumerator ] [XML_ERROR_NONE :: 0]
!45 = metadata !{i32 786472, metadata !"XML_ERROR_NO_MEMORY", i64 1} ; [ DW_TAG_enumerator ] [XML_ERROR_NO_MEMORY :: 1]
!46 = metadata !{i32 786472, metadata !"XML_ERROR_SYNTAX", i64 2} ; [ DW_TAG_enumerator ] [XML_ERROR_SYNTAX :: 2]
!47 = metadata !{i32 786472, metadata !"XML_ERROR_NO_ELEMENTS", i64 3} ; [ DW_TAG_enumerator ] [XML_ERROR_NO_ELEMENTS :: 3]
!48 = metadata !{i32 786472, metadata !"XML_ERROR_INVALID_TOKEN", i64 4} ; [ DW_TAG_enumerator ] [XML_ERROR_INVALID_TOKEN :: 4]
!49 = metadata !{i32 786472, metadata !"XML_ERROR_UNCLOSED_TOKEN", i64 5} ; [ DW_TAG_enumerator ] [XML_ERROR_UNCLOSED_TOKEN :: 5]
!50 = metadata !{i32 786472, metadata !"XML_ERROR_PARTIAL_CHAR", i64 6} ; [ DW_TAG_enumerator ] [XML_ERROR_PARTIAL_CHAR :: 6]
!51 = metadata !{i32 786472, metadata !"XML_ERROR_TAG_MISMATCH", i64 7} ; [ DW_TAG_enumerator ] [XML_ERROR_TAG_MISMATCH :: 7]
!52 = metadata !{i32 786472, metadata !"XML_ERROR_DUPLICATE_ATTRIBUTE", i64 8} ; [ DW_TAG_enumerator ] [XML_ERROR_DUPLICATE_ATTRIBUTE :: 8]
!53 = metadata !{i32 786472, metadata !"XML_ERROR_JUNK_AFTER_DOC_ELEMENT", i64 9} ; [ DW_TAG_enumerator ] [XML_ERROR_JUNK_AFTER_DOC_ELEMENT :: 9]
!54 = metadata !{i32 786472, metadata !"XML_ERROR_PARAM_ENTITY_REF", i64 10} ; [ DW_TAG_enumerator ] [XML_ERROR_PARAM_ENTITY_REF :: 10]
!55 = metadata !{i32 786472, metadata !"XML_ERROR_UNDEFINED_ENTITY", i64 11} ; [ DW_TAG_enumerator ] [XML_ERROR_UNDEFINED_ENTITY :: 11]
!56 = metadata !{i32 786472, metadata !"XML_ERROR_RECURSIVE_ENTITY_REF", i64 12} ; [ DW_TAG_enumerator ] [XML_ERROR_RECURSIVE_ENTITY_REF :: 12]
!57 = metadata !{i32 786472, metadata !"XML_ERROR_ASYNC_ENTITY", i64 13} ; [ DW_TAG_enumerator ] [XML_ERROR_ASYNC_ENTITY :: 13]
!58 = metadata !{i32 786472, metadata !"XML_ERROR_BAD_CHAR_REF", i64 14} ; [ DW_TAG_enumerator ] [XML_ERROR_BAD_CHAR_REF :: 14]
!59 = metadata !{i32 786472, metadata !"XML_ERROR_BINARY_ENTITY_REF", i64 15} ; [ DW_TAG_enumerator ] [XML_ERROR_BINARY_ENTITY_REF :: 15]
!60 = metadata !{i32 786472, metadata !"XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF", i64 16} ; [ DW_TAG_enumerator ] [XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF :: 16]
!61 = metadata !{i32 786472, metadata !"XML_ERROR_MISPLACED_XML_PI", i64 17} ; [ DW_TAG_enumerator ] [XML_ERROR_MISPLACED_XML_PI :: 17]
!62 = metadata !{i32 786472, metadata !"XML_ERROR_UNKNOWN_ENCODING", i64 18} ; [ DW_TAG_enumerator ] [XML_ERROR_UNKNOWN_ENCODING :: 18]
!63 = metadata !{i32 786472, metadata !"XML_ERROR_INCORRECT_ENCODING", i64 19} ; [ DW_TAG_enumerator ] [XML_ERROR_INCORRECT_ENCODING :: 19]
!64 = metadata !{i32 786472, metadata !"XML_ERROR_UNCLOSED_CDATA_SECTION", i64 20} ; [ DW_TAG_enumerator ] [XML_ERROR_UNCLOSED_CDATA_SECTION :: 20]
!65 = metadata !{i32 786472, metadata !"XML_ERROR_EXTERNAL_ENTITY_HANDLING", i64 21} ; [ DW_TAG_enumerator ] [XML_ERROR_EXTERNAL_ENTITY_HANDLING :: 21]
!66 = metadata !{i32 786472, metadata !"XML_ERROR_NOT_STANDALONE", i64 22} ; [ DW_TAG_enumerator ] [XML_ERROR_NOT_STANDALONE :: 22]
!67 = metadata !{i32 786472, metadata !"XML_ERROR_UNEXPECTED_STATE", i64 23} ; [ DW_TAG_enumerator ] [XML_ERROR_UNEXPECTED_STATE :: 23]
!68 = metadata !{i32 786472, metadata !"XML_ERROR_ENTITY_DECLARED_IN_PE", i64 24} ; [ DW_TAG_enumerator ] [XML_ERROR_ENTITY_DECLARED_IN_PE :: 24]
!69 = metadata !{i32 786472, metadata !"XML_ERROR_FEATURE_REQUIRES_XML_DTD", i64 25} ; [ DW_TAG_enumerator ] [XML_ERROR_FEATURE_REQUIRES_XML_DTD :: 25]
!70 = metadata !{i32 786472, metadata !"XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING", i64 26} ; [ DW_TAG_enumerator ] [XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING :: 26]
!71 = metadata !{i32 786472, metadata !"XML_ERROR_UNBOUND_PREFIX", i64 27} ; [ DW_TAG_enumerator ] [XML_ERROR_UNBOUND_PREFIX :: 27]
!72 = metadata !{i32 786472, metadata !"XML_ERROR_UNDECLARING_PREFIX", i64 28} ; [ DW_TAG_enumerator ] [XML_ERROR_UNDECLARING_PREFIX :: 28]
!73 = metadata !{i32 786472, metadata !"XML_ERROR_INCOMPLETE_PE", i64 29} ; [ DW_TAG_enumerator ] [XML_ERROR_INCOMPLETE_PE :: 29]
!74 = metadata !{i32 786472, metadata !"XML_ERROR_XML_DECL", i64 30} ; [ DW_TAG_enumerator ] [XML_ERROR_XML_DECL :: 30]
!75 = metadata !{i32 786472, metadata !"XML_ERROR_TEXT_DECL", i64 31} ; [ DW_TAG_enumerator ] [XML_ERROR_TEXT_DECL :: 31]
!76 = metadata !{i32 786472, metadata !"XML_ERROR_PUBLICID", i64 32} ; [ DW_TAG_enumerator ] [XML_ERROR_PUBLICID :: 32]
!77 = metadata !{i32 786472, metadata !"XML_ERROR_SUSPENDED", i64 33} ; [ DW_TAG_enumerator ] [XML_ERROR_SUSPENDED :: 33]
!78 = metadata !{i32 786472, metadata !"XML_ERROR_NOT_SUSPENDED", i64 34} ; [ DW_TAG_enumerator ] [XML_ERROR_NOT_SUSPENDED :: 34]
!79 = metadata !{i32 786472, metadata !"XML_ERROR_ABORTED", i64 35} ; [ DW_TAG_enumerator ] [XML_ERROR_ABORTED :: 35]
!80 = metadata !{i32 786472, metadata !"XML_ERROR_FINISHED", i64 36} ; [ DW_TAG_enumerator ] [XML_ERROR_FINISHED :: 36]
!81 = metadata !{i32 786472, metadata !"XML_ERROR_SUSPEND_PE", i64 37} ; [ DW_TAG_enumerator ] [XML_ERROR_SUSPEND_PE :: 37]
!82 = metadata !{i32 786472, metadata !"XML_ERROR_RESERVED_PREFIX_XML", i64 38} ; [ DW_TAG_enumerator ] [XML_ERROR_RESERVED_PREFIX_XML :: 38]
!83 = metadata !{i32 786472, metadata !"XML_ERROR_RESERVED_PREFIX_XMLNS", i64 39} ; [ DW_TAG_enumerator ] [XML_ERROR_RESERVED_PREFIX_XMLNS :: 39]
!84 = metadata !{i32 786472, metadata !"XML_ERROR_RESERVED_NAMESPACE_URI", i64 40} ; [ DW_TAG_enumerator ] [XML_ERROR_RESERVED_NAMESPACE_URI :: 40]
!85 = metadata !{i32 786472, metadata !"XML_ERROR_INVALID_ARGUMENT", i64 41} ; [ DW_TAG_enumerator ] [XML_ERROR_INVALID_ARGUMENT :: 41]
!86 = metadata !{i32 786472, metadata !"XML_ERROR_NO_BUFFER", i64 42} ; [ DW_TAG_enumerator ] [XML_ERROR_NO_BUFFER :: 42]
!87 = metadata !{i32 786472, metadata !"XML_ERROR_AMPLIFICATION_LIMIT_BREACH", i64 43} ; [ DW_TAG_enumerator ] [XML_ERROR_AMPLIFICATION_LIMIT_BREACH :: 43]
!88 = metadata !{i32 786472, metadata !"XML_ERROR_NOT_STARTED", i64 44} ; [ DW_TAG_enumerator ] [XML_ERROR_NOT_STARTED :: 44]
!89 = metadata !{metadata !90, metadata !101, metadata !104, metadata !107, metadata !111, metadata !114, metadata !119}
!90 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"XML_ProcessFile", metadata !"XML_ProcessFile", metadata !"", i32 252, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XML_ParserStruct*, i8*, i32)* @
!91 = metadata !{i32 786473, metadata !34}        ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!92 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !8, metadata !94, metadata !97, metadata !100}
!94 = metadata !{i32 786454, metadata !34, null, metadata !"XML_Parser", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [XML_Parser] [line 56, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XML_ParserStruct]
!96 = metadata !{i32 786451, metadata !37, null, metadata !"XML_ParserStruct", i32 55, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [XML_ParserStruct] [line 55, size 0, align 0, offset 0] [decl] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!98 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from XML_Char]
!99 = metadata !{i32 786454, metadata !34, null, metadata !"XML_Char", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [XML_Char] [line 149, size 0, align 0, offset 0] [from char]
!100 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!101 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"processStream", metadata !"processStream", metadata !"", i32 190, metadata !102, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.XML_ParserStruct*)* @processS
!102 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{metadata !8, metadata !97, metadata !94}
!104 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"reportError", metadata !"reportError", metadata !"", i32 92, metadata !105, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XML_ParserStruct*, i8*)* @reportError,
!105 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{null, metadata !94, metadata !97}
!107 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"processFile", metadata !"processFile", metadata !"", i32 108, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i64, i8*, i8*)* @processFile, null, null
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !26, metadata !110, metadata !97, metadata !30}
!110 = metadata !{i32 786454, metadata !34, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!111 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"externalEntityRefStream", metadata !"externalEntityRefStream", metadata !"", i32 235, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XML_ParserStru
!112 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !8, metadata !94, metadata !97, metadata !97, metadata !97, metadata !97}
!114 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"resolveSystemId", metadata !"resolveSystemId", metadata !"", i32 129, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i8**)* @resolveSystemId, nul
!115 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !97, metadata !97, metadata !97, metadata !117}
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XML_Char]
!119 = metadata !{i32 786478, metadata !34, metadata !91, metadata !"externalEntityRefFilemap", metadata !"externalEntityRefFilemap", metadata !"", i32 157, metadata !112, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XML_ParserSt
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786484, i32 0, null, metadata !"g_read_size_bytes", metadata !"g_read_size_bytes", metadata !"", metadata !91, i32 82, metadata !8, i32 0, i32 1, i32* @g_read_size_bytes, null} ; [ DW_TAG_variable ] [g_read_size_bytes] [line 82] [de
!122 = metadata !{i32 786449, metadata !123, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!123 = metadata !{metadata !"xmlmime.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 786436, metadata !123, metadata !126, metadata !"", i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !131, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 41, size 32, align 32, offset 0] [def] [from ]
!126 = metadata !{i32 786478, metadata !123, metadata !127, metadata !"getTok", metadata !"getTok", metadata !"", i32 39, metadata !128, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8**)* @getTok, null, null, metadata !2, i32 39} ; [ DW
!127 = metadata !{i32 786473, metadata !123}      ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!128 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !13, metadata !130}
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135}
!132 = metadata !{i32 786472, metadata !"inAtom", i64 0} ; [ DW_TAG_enumerator ] [inAtom :: 0]
!133 = metadata !{i32 786472, metadata !"inString", i64 1} ; [ DW_TAG_enumerator ] [inString :: 1]
!134 = metadata !{i32 786472, metadata !"init", i64 2} ; [ DW_TAG_enumerator ] [init :: 2]
!135 = metadata !{i32 786472, metadata !"inComment", i64 3} ; [ DW_TAG_enumerator ] [inComment :: 3]
!136 = metadata !{metadata !137, metadata !141, metadata !126}
!137 = metadata !{i32 786478, metadata !123, metadata !127, metadata !"getXMLCharset", metadata !"getXMLCharset", metadata !"", i32 120, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @getXMLCharset, null, null,
!138 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{null, metadata !13, metadata !140}
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!141 = metadata !{i32 786478, metadata !123, metadata !127, metadata !"matchkey", metadata !"matchkey", metadata !"", i32 110, metadata !142, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*, i8*)* @matchkey, null, null, metadata !2
!142 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !8, metadata !13, metadata !13, metadata !13}
!144 = metadata !{i32 786449, metadata !145, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!145 = metadata !{metadata !"../lib/xmlparse.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!146 = metadata !{i32 786449, metadata !147, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!147 = metadata !{metadata !"../lib/xmlrole.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!148 = metadata !{i32 786449, metadata !149, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!149 = metadata !{metadata !"../lib/xmltok.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!150 = metadata !{i32 786449, metadata !151, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!151 = metadata !{metadata !"../lib/xmltok_impl.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!152 = metadata !{i32 786449, metadata !153, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!153 = metadata !{metadata !"xmlwf_harness.c", metadata !"/home/klee/logic_bombs/libexpat/expat/xmlwf"}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786478, metadata !153, metadata !156, metadata !"main", metadata !"main", metadata !"", i32 7, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @__user_main, null, null, metadata !2, i32 7} ; [ DW_TAG_s
!156 = metadata !{i32 786473, metadata !153}      ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlwf_harness.c]
!157 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{metadata !8}
!159 = metadata !{i32 786449, metadata !160, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!160 = metadata !{metadata !"libc/stdio/perror.c", metadata !"/home/user/uclibc"}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786478, metadata !160, metadata !163, metadata !"perror", metadata !"perror", metadata !"", i32 18, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @perror, null, null, metadata !2, i32 19} ; [ D
!163 = metadata !{i32 786473, metadata !160}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/perror.c]
!164 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{null, metadata !13}
!166 = metadata !{i32 786449, metadata !167, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!167 = metadata !{metadata !"libc/stdio/fprintf.c", metadata !"/home/user/uclibc"}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786478, metadata !167, metadata !170, metadata !"fprintf", metadata !"fprintf", metadata !"", i32 14, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, ...)* @fprint
!170 = metadata !{i32 786473, metadata !167}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/fprintf.c]
!171 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !8, metadata !173, metadata !206}
!173 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!175 = metadata !{i32 786454, metadata !167, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!176 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !178, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!177 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/user/uclibc"}
!178 = metadata !{metadata !179, metadata !181, metadata !186, metadata !187, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !196, metadata !199}
!179 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!180 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!181 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!182 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !183, metadata !184, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!183 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!184 = metadata !{metadata !185}
!185 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!186 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!187 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!189 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!190 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!191 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!192 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!193 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!194 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !195} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!196 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!197 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !198, metadata !184, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!198 = metadata !{i32 786454, metadata !177, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!199 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !200} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!200 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!201 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !203, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!202 = metadata !{metadata !"./include/wchar.h", metadata !"/home/user/uclibc"}
!203 = metadata !{metadata !204, metadata !205}
!204 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!205 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!206 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!207 = metadata !{i32 786449, metadata !208, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!208 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/user/uclibc"}
!209 = metadata !{metadata !210, metadata !214}
!210 = metadata !{i32 786478, metadata !208, metadata !211, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, 
!211 = metadata !{i32 786473, metadata !208}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_stdio.c]
!212 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{null}
!214 = metadata !{i32 786478, metadata !208, metadata !211, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, 
!215 = metadata !{metadata !216, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244}
!216 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !211, i32 154, metadata !217, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.274** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!218 = metadata !{i32 786454, metadata !208, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!219 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !232, metadata !233}
!221 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!222 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!223 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!224 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!225 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!226 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!227 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!228 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!229 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!230 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !231} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!231 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!232 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!233 = metadata !{i32 786445, metadata !177, metadata !219, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !234} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!234 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!235 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !238}
!237 = metadata !{i32 786445, metadata !202, metadata !235, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!238 = metadata !{i32 786445, metadata !202, metadata !235, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!239 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !211, i32 155, metadata !217, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.274** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!240 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !211, i32 156, metadata !217, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.274** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!241 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !211, i32 159, metadata !217, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.274** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!242 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !211, i32 162, metadata !217, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.274** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!243 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !211, i32 180, metadata !217, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.274** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdi
!244 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !211, i32 131, metadata !245, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.274]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_st
!245 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !218, metadata !246, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!246 = metadata !{metadata !247}
!247 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!248 = metadata !{i32 786449, metadata !249, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!249 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/user/uclibc"}
!250 = metadata !{metadata !251}
!251 = metadata !{i32 786478, metadata !249, metadata !252, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !253, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.274*)* @
!252 = metadata !{i32 786473, metadata !249}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_wcommit.c]
!253 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!254 = metadata !{metadata !255, metadata !256}
!255 = metadata !{i32 786454, metadata !249, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!256 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!258 = metadata !{i32 786454, metadata !249, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!259 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !272, metadata !273}
!261 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!262 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!263 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!264 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!265 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!266 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!267 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!268 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!269 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!270 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !271} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !259} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!272 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!273 = metadata !{i32 786445, metadata !177, metadata !259, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !274} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!274 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!275 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !276, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!276 = metadata !{metadata !277, metadata !278}
!277 = metadata !{i32 786445, metadata !202, metadata !275, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!278 = metadata !{i32 786445, metadata !202, metadata !275, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!279 = metadata !{i32 786449, metadata !280, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!280 = metadata !{metadata !"libc/stdio/vfprintf.c", metadata !"/home/user/uclibc"}
!281 = metadata !{metadata !282, metadata !371, metadata !394}
!282 = metadata !{i32 786436, metadata !283, metadata !284, metadata !"", i32 1448, i64 32, i64 32, i32 0, i32 0, null, metadata !364, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 1448, size 32, align 32, offset 0] [def] [from ]
!283 = metadata !{metadata !"libc/stdio/_vfprintf.c", metadata !"/home/user/uclibc"}
!284 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_do_one_spec", metadata !"_do_one_spec", metadata !"", i32 1438, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.231*, %struct
!285 = metadata !{i32 786473, metadata !283}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!286 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{metadata !8, metadata !288, metadata !311, metadata !9}
!288 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!290 = metadata !{i32 786454, metadata !283, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!291 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !292, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!292 = metadata !{metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !304, metadata !305}
!293 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!294 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!295 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!296 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!297 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!298 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!299 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!300 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!301 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!302 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !303} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !291} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!304 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!305 = metadata !{i32 786445, metadata !177, metadata !291, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !306} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!306 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!307 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !308, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!308 = metadata !{metadata !309, metadata !310}
!309 = metadata !{i32 786445, metadata !202, metadata !307, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!310 = metadata !{i32 786445, metadata !202, metadata !307, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!311 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !312} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ppfs_t]
!312 = metadata !{i32 786454, metadata !283, null, metadata !"ppfs_t", i32 419, i64 0, i64 0, i64 0, i32 0, metadata !313} ; [ DW_TAG_typedef ] [ppfs_t] [line 419, size 0, align 0, offset 0] [from ]
!313 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 400, i64 2048, i64 128, i32 0, i32 0, null, metadata !314, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 400, size 2048, align 128, offset 0] [def] [from ]
!314 = metadata !{metadata !315, metadata !316, metadata !325, metadata !326, metadata !327, metadata !328, metadata !332, metadata !336, metadata !349}
!315 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"fmtpos", i32 401, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [fmtpos] [line 401, size 64, align 64, offset 0] [from ]
!316 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"info", i32 402, i64 160, i64 32, i64 64, i32 0, metadata !317} ; [ DW_TAG_member ] [info] [line 402, size 160, align 32, offset 64] [from printf_info]
!317 = metadata !{i32 786451, metadata !318, null, metadata !"printf_info", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !319, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [printf_info] [line 55, size 160, align 32, offset 0] [def] [from
!318 = metadata !{metadata !"./include/printf.h", metadata !"/home/user/uclibc"}
!319 = metadata !{metadata !320, metadata !321, metadata !322, metadata !323, metadata !324}
!320 = metadata !{i32 786445, metadata !318, metadata !317, metadata !"prec", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [prec] [line 57, size 32, align 32, offset 0] [from int]
!321 = metadata !{i32 786445, metadata !318, metadata !317, metadata !"width", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [width] [line 58, size 32, align 32, offset 32] [from int]
!322 = metadata !{i32 786445, metadata !318, metadata !317, metadata !"spec", i32 60, i64 32, i64 32, i64 64, i32 0, metadata !198} ; [ DW_TAG_member ] [spec] [line 60, size 32, align 32, offset 64] [from wchar_t]
!323 = metadata !{i32 786445, metadata !318, metadata !317, metadata !"_flags", i32 107, i64 32, i64 32, i64 96, i32 0, metadata !100} ; [ DW_TAG_member ] [_flags] [line 107, size 32, align 32, offset 96] [from unsigned int]
!324 = metadata !{i32 786445, metadata !318, metadata !317, metadata !"pad", i32 141, i64 32, i64 32, i64 128, i32 0, metadata !198} ; [ DW_TAG_member ] [pad] [line 141, size 32, align 32, offset 128] [from wchar_t]
!325 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"maxposarg", i32 404, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [maxposarg] [line 404, size 32, align 32, offset 224] [from int]
!326 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"num_data_args", i32 406, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [num_data_args] [line 406, size 32, align 32, offset 256] [from int]
!327 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"conv_num", i32 407, i64 32, i64 32, i64 288, i32 0, metadata !100} ; [ DW_TAG_member ] [conv_num] [line 407, size 32, align 32, offset 288] [from unsigned int]
!328 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"argnumber", i32 408, i64 32, i64 8, i64 320, i32 0, metadata !329} ; [ DW_TAG_member ] [argnumber] [line 408, size 32, align 8, offset 320] [from ]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !183, metadata !330, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from unsigned char]
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!332 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"argtype", i32 409, i64 288, i64 32, i64 352, i32 0, metadata !333} ; [ DW_TAG_member ] [argtype] [line 409, size 288, align 32, offset 352] [from ]
!333 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !8, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from int]
!334 = metadata !{metadata !335}
!335 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!336 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"arg", i32 410, i64 192, i64 64, i64 640, i32 0, metadata !337} ; [ DW_TAG_member ] [arg] [line 410, size 192, align 64, offset 640] [from va_list]
!337 = metadata !{i32 786454, metadata !283, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!338 = metadata !{i32 786454, metadata !283, null, metadata !"__builtin_va_list", i32 1868, i64 0, i64 0, i64 0, i32 0, metadata !339} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 1868, size 0, align 0, offset 0] [from ]
!339 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !340, metadata !347, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!340 = metadata !{i32 786454, metadata !283, null, metadata !"__va_list_tag", i32 1867, i64 0, i64 0, i64 0, i32 0, metadata !341} ; [ DW_TAG_typedef ] [__va_list_tag] [line 1867, size 0, align 0, offset 0] [from __va_list_tag]
!341 = metadata !{i32 786451, metadata !280, null, metadata !"__va_list_tag", i32 1867, i64 192, i64 64, i32 0, i32 0, null, metadata !342, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 1867, size 192, align 64, offset 0] [de
!342 = metadata !{metadata !343, metadata !344, metadata !345, metadata !346}
!343 = metadata !{i32 786445, metadata !280, metadata !341, metadata !"gp_offset", i32 1867, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [gp_offset] [line 1867, size 32, align 32, offset 0] [from unsigned int]
!344 = metadata !{i32 786445, metadata !280, metadata !341, metadata !"fp_offset", i32 1867, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ] [fp_offset] [line 1867, size 32, align 32, offset 32] [from unsigned int]
!345 = metadata !{i32 786445, metadata !280, metadata !341, metadata !"overflow_arg_area", i32 1867, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [overflow_arg_area] [line 1867, size 64, align 64, offset 64] [from ]
!346 = metadata !{i32 786445, metadata !280, metadata !341, metadata !"reg_save_area", i32 1867, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [reg_save_area] [line 1867, size 64, align 64, offset 128] [from ]
!347 = metadata !{metadata !348}
!348 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!349 = metadata !{i32 786445, metadata !283, metadata !313, metadata !"argvalue", i32 417, i64 1152, i64 128, i64 896, i32 0, metadata !350} ; [ DW_TAG_member ] [argvalue] [line 417, size 1152, align 128, offset 896] [from ]
!350 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 128, i32 0, i32 0, metadata !351, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1152, align 128, offset 0] [from argvalue_t]
!351 = metadata !{i32 786454, metadata !283, null, metadata !"argvalue_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_typedef ] [argvalue_t] [line 394, size 0, align 0, offset 0] [from ]
!352 = metadata !{i32 786455, metadata !283, null, metadata !"", i32 382, i64 128, i64 128, i64 0, i32 0, null, metadata !353, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 382, size 128, align 128, offset 0] [def] [from ]
!353 = metadata !{metadata !354, metadata !355, metadata !356, metadata !357, metadata !359, metadata !361, metadata !363}
!354 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"wc", i32 383, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [wc] [line 383, size 32, align 32, offset 0] [from wchar_t]
!355 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"u", i32 384, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [u] [line 384, size 32, align 32, offset 0] [from unsigned int]
!356 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"ul", i32 385, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [ul] [line 385, size 64, align 64, offset 0] [from long unsigned int]
!357 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"ull", i32 387, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [ull] [line 387, size 64, align 64, offset 0] [from long long unsigned int]
!358 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!359 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"d", i32 390, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ] [d] [line 390, size 64, align 64, offset 0] [from double]
!360 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!361 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"ld", i32 391, i64 128, i64 128, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [ld] [line 391, size 128, align 128, offset 0] [from long double]
!362 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!363 = metadata !{i32 786445, metadata !283, metadata !352, metadata !"p", i32 393, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [p] [line 393, size 64, align 64, offset 0] [from ]
!364 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370}
!365 = metadata !{i32 786472, metadata !"PREFIX_PLUS", i64 0} ; [ DW_TAG_enumerator ] [PREFIX_PLUS :: 0]
!366 = metadata !{i32 786472, metadata !"PREFIX_MINUS", i64 2} ; [ DW_TAG_enumerator ] [PREFIX_MINUS :: 2]
!367 = metadata !{i32 786472, metadata !"PREFIX_SPACE", i64 4} ; [ DW_TAG_enumerator ] [PREFIX_SPACE :: 4]
!368 = metadata !{i32 786472, metadata !"PREFIX_LWR_X", i64 6} ; [ DW_TAG_enumerator ] [PREFIX_LWR_X :: 6]
!369 = metadata !{i32 786472, metadata !"PREFIX_UPR_X", i64 9} ; [ DW_TAG_enumerator ] [PREFIX_UPR_X :: 9]
!370 = metadata !{i32 786472, metadata !"PREFIX_NONE", i64 11} ; [ DW_TAG_enumerator ] [PREFIX_NONE :: 11]
!371 = metadata !{i32 786436, metadata !283, null, metadata !"", i32 252, i64 32, i64 32, i32 0, i32 0, null, metadata !372, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 252, size 32, align 32, offset 0] [def] [from ]
!372 = metadata !{metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !3
!373 = metadata !{i32 786472, metadata !"CONV_n", i64 0} ; [ DW_TAG_enumerator ] [CONV_n :: 0]
!374 = metadata !{i32 786472, metadata !"CONV_p", i64 1} ; [ DW_TAG_enumerator ] [CONV_p :: 1]
!375 = metadata !{i32 786472, metadata !"CONV_x", i64 2} ; [ DW_TAG_enumerator ] [CONV_x :: 2]
!376 = metadata !{i32 786472, metadata !"CONV_X", i64 3} ; [ DW_TAG_enumerator ] [CONV_X :: 3]
!377 = metadata !{i32 786472, metadata !"CONV_o", i64 4} ; [ DW_TAG_enumerator ] [CONV_o :: 4]
!378 = metadata !{i32 786472, metadata !"CONV_u", i64 5} ; [ DW_TAG_enumerator ] [CONV_u :: 5]
!379 = metadata !{i32 786472, metadata !"CONV_d", i64 6} ; [ DW_TAG_enumerator ] [CONV_d :: 6]
!380 = metadata !{i32 786472, metadata !"CONV_i", i64 7} ; [ DW_TAG_enumerator ] [CONV_i :: 7]
!381 = metadata !{i32 786472, metadata !"CONV_f", i64 8} ; [ DW_TAG_enumerator ] [CONV_f :: 8]
!382 = metadata !{i32 786472, metadata !"CONV_F", i64 9} ; [ DW_TAG_enumerator ] [CONV_F :: 9]
!383 = metadata !{i32 786472, metadata !"CONV_e", i64 10} ; [ DW_TAG_enumerator ] [CONV_e :: 10]
!384 = metadata !{i32 786472, metadata !"CONV_E", i64 11} ; [ DW_TAG_enumerator ] [CONV_E :: 11]
!385 = metadata !{i32 786472, metadata !"CONV_g", i64 12} ; [ DW_TAG_enumerator ] [CONV_g :: 12]
!386 = metadata !{i32 786472, metadata !"CONV_G", i64 13} ; [ DW_TAG_enumerator ] [CONV_G :: 13]
!387 = metadata !{i32 786472, metadata !"CONV_a", i64 14} ; [ DW_TAG_enumerator ] [CONV_a :: 14]
!388 = metadata !{i32 786472, metadata !"CONV_A", i64 15} ; [ DW_TAG_enumerator ] [CONV_A :: 15]
!389 = metadata !{i32 786472, metadata !"CONV_C", i64 16} ; [ DW_TAG_enumerator ] [CONV_C :: 16]
!390 = metadata !{i32 786472, metadata !"CONV_S", i64 17} ; [ DW_TAG_enumerator ] [CONV_S :: 17]
!391 = metadata !{i32 786472, metadata !"CONV_c", i64 18} ; [ DW_TAG_enumerator ] [CONV_c :: 18]
!392 = metadata !{i32 786472, metadata !"CONV_s", i64 19} ; [ DW_TAG_enumerator ] [CONV_s :: 19]
!393 = metadata !{i32 786472, metadata !"CONV_custom0", i64 20} ; [ DW_TAG_enumerator ] [CONV_custom0 :: 20]
!394 = metadata !{i32 786436, metadata !395, null, metadata !"", i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !396, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 79, size 32, align 32, offset 0] [def] [from ]
!395 = metadata !{metadata !"./include/bits/uClibc_uintmaxtostr.h", metadata !"/home/user/uclibc"}
!396 = metadata !{metadata !397, metadata !398, metadata !399, metadata !400}
!397 = metadata !{i32 786472, metadata !"__UIM_DECIMAL", i64 0} ; [ DW_TAG_enumerator ] [__UIM_DECIMAL :: 0]
!398 = metadata !{i32 786472, metadata !"__UIM_GROUP", i64 44} ; [ DW_TAG_enumerator ] [__UIM_GROUP :: 44]
!399 = metadata !{i32 786472, metadata !"__UIM_LOWER", i64 87} ; [ DW_TAG_enumerator ] [__UIM_LOWER :: 87]
!400 = metadata !{i32 786472, metadata !"__UIM_UPPER", i64 55} ; [ DW_TAG_enumerator ] [__UIM_UPPER :: 55]
!401 = metadata !{metadata !402, metadata !284, metadata !406, metadata !410}
!402 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"vfprintf", metadata !"vfprintf", metadata !"", i32 1864, metadata !403, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.231*, i8*, %struct._
!403 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!404 = metadata !{metadata !8, metadata !288, metadata !206, metadata !405}
!405 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!406 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_charpad", metadata !"_charpad", metadata !"", i32 1422, metadata !407, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.231*, i32, i64)* @_ch
!407 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{metadata !409, metadata !288, metadata !8, metadata !409}
!409 = metadata !{i32 786454, metadata !283, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!410 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_fp_out_narrow", metadata !"_fp_out_narrow", metadata !"", i32 1224, metadata !411, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.231*, i64
!411 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!412 = metadata !{metadata !409, metadata !289, metadata !413, metadata !413, metadata !413}
!413 = metadata !{i32 786454, metadata !283, null, metadata !"intptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [intptr_t] [line 122, size 0, align 0, offset 0] [from long int]
!414 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!415 = metadata !{metadata !416, metadata !420}
!416 = metadata !{i32 786484, i32 0, metadata !284, metadata !"spec_base", metadata !"spec_base", metadata !"", metadata !285, i32 1441, metadata !417, i32 1, i32 1, [7 x i8]* @_do_one_spec.spec_base, null} ; [ DW_TAG_variable ] [spec_base] [line 1441] [
!417 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !14, metadata !418, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from ]
!418 = metadata !{metadata !419}
!419 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!420 = metadata !{i32 786484, i32 0, metadata !284, metadata !"prefix", metadata !"prefix", metadata !"", metadata !285, i32 1443, metadata !421, i32 1, i32 1, [12 x i8]* @_do_one_spec.prefix, null} ; [ DW_TAG_variable ] [prefix] [line 1443] [local] [def
!421 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !14, metadata !422, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from ]
!422 = metadata !{metadata !423}
!423 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!424 = metadata !{i32 786449, metadata !425, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!425 = metadata !{metadata !"libc/stdio/_ppfs_init.c", metadata !"/home/user/uclibc"}
!426 = metadata !{metadata !427}
!427 = metadata !{i32 786436, metadata !318, null, metadata !"", i32 206, i64 32, i64 32, i32 0, i32 0, null, metadata !428, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 206, size 32, align 32, offset 0] [def] [from ]
!428 = metadata !{metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438}
!429 = metadata !{i32 786472, metadata !"PA_INT", i64 0} ; [ DW_TAG_enumerator ] [PA_INT :: 0]
!430 = metadata !{i32 786472, metadata !"PA_CHAR", i64 1} ; [ DW_TAG_enumerator ] [PA_CHAR :: 1]
!431 = metadata !{i32 786472, metadata !"PA_WCHAR", i64 2} ; [ DW_TAG_enumerator ] [PA_WCHAR :: 2]
!432 = metadata !{i32 786472, metadata !"PA_STRING", i64 3} ; [ DW_TAG_enumerator ] [PA_STRING :: 3]
!433 = metadata !{i32 786472, metadata !"PA_WSTRING", i64 4} ; [ DW_TAG_enumerator ] [PA_WSTRING :: 4]
!434 = metadata !{i32 786472, metadata !"PA_POINTER", i64 5} ; [ DW_TAG_enumerator ] [PA_POINTER :: 5]
!435 = metadata !{i32 786472, metadata !"PA_FLOAT", i64 6} ; [ DW_TAG_enumerator ] [PA_FLOAT :: 6]
!436 = metadata !{i32 786472, metadata !"PA_DOUBLE", i64 7} ; [ DW_TAG_enumerator ] [PA_DOUBLE :: 7]
!437 = metadata !{i32 786472, metadata !"__PA_NOARG", i64 8} ; [ DW_TAG_enumerator ] [__PA_NOARG :: 8]
!438 = metadata !{i32 786472, metadata !"PA_LAST", i64 9} ; [ DW_TAG_enumerator ] [PA_LAST :: 9]
!439 = metadata !{metadata !440}
!440 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_ppfs_init", metadata !"_ppfs_init", metadata !"", i32 515, metadata !441, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.ppfs_t*, i8*)* @_ppfs_init, null, nul
!441 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!442 = metadata !{metadata !8, metadata !443, metadata !13}
!443 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !444} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ppfs_t]
!444 = metadata !{i32 786454, metadata !283, null, metadata !"ppfs_t", i32 419, i64 0, i64 0, i64 0, i32 0, metadata !445} ; [ DW_TAG_typedef ] [ppfs_t] [line 419, size 0, align 0, offset 0] [from ]
!445 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 400, i64 2048, i64 128, i32 0, i32 0, null, metadata !446, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 400, size 2048, align 128, offset 0] [def] [from ]
!446 = metadata !{metadata !447, metadata !448, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !473}
!447 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"fmtpos", i32 401, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [fmtpos] [line 401, size 64, align 64, offset 0] [from ]
!448 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"info", i32 402, i64 160, i64 32, i64 64, i32 0, metadata !449} ; [ DW_TAG_member ] [info] [line 402, size 160, align 32, offset 64] [from printf_info]
!449 = metadata !{i32 786451, metadata !318, null, metadata !"printf_info", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !450, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [printf_info] [line 55, size 160, align 32, offset 0] [def] [from
!450 = metadata !{metadata !451, metadata !452, metadata !453, metadata !455, metadata !456}
!451 = metadata !{i32 786445, metadata !318, metadata !449, metadata !"prec", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [prec] [line 57, size 32, align 32, offset 0] [from int]
!452 = metadata !{i32 786445, metadata !318, metadata !449, metadata !"width", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [width] [line 58, size 32, align 32, offset 32] [from int]
!453 = metadata !{i32 786445, metadata !318, metadata !449, metadata !"spec", i32 60, i64 32, i64 32, i64 64, i32 0, metadata !454} ; [ DW_TAG_member ] [spec] [line 60, size 32, align 32, offset 64] [from wchar_t]
!454 = metadata !{i32 786454, metadata !318, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!455 = metadata !{i32 786445, metadata !318, metadata !449, metadata !"_flags", i32 107, i64 32, i64 32, i64 96, i32 0, metadata !100} ; [ DW_TAG_member ] [_flags] [line 107, size 32, align 32, offset 96] [from unsigned int]
!456 = metadata !{i32 786445, metadata !318, metadata !449, metadata !"pad", i32 141, i64 32, i64 32, i64 128, i32 0, metadata !454} ; [ DW_TAG_member ] [pad] [line 141, size 32, align 32, offset 128] [from wchar_t]
!457 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"maxposarg", i32 404, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [maxposarg] [line 404, size 32, align 32, offset 224] [from int]
!458 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"num_data_args", i32 406, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [num_data_args] [line 406, size 32, align 32, offset 256] [from int]
!459 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"conv_num", i32 407, i64 32, i64 32, i64 288, i32 0, metadata !100} ; [ DW_TAG_member ] [conv_num] [line 407, size 32, align 32, offset 288] [from unsigned int]
!460 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"argnumber", i32 408, i64 32, i64 8, i64 320, i32 0, metadata !329} ; [ DW_TAG_member ] [argnumber] [line 408, size 32, align 8, offset 320] [from ]
!461 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"argtype", i32 409, i64 288, i64 32, i64 352, i32 0, metadata !333} ; [ DW_TAG_member ] [argtype] [line 409, size 288, align 32, offset 352] [from ]
!462 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"arg", i32 410, i64 192, i64 64, i64 640, i32 0, metadata !463} ; [ DW_TAG_member ] [arg] [line 410, size 192, align 64, offset 640] [from va_list]
!463 = metadata !{i32 786454, metadata !283, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !464} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!464 = metadata !{i32 786454, metadata !283, null, metadata !"__builtin_va_list", i32 516, i64 0, i64 0, i64 0, i32 0, metadata !465} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 516, size 0, align 0, offset 0] [from ]
!465 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !466, metadata !347, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!466 = metadata !{i32 786454, metadata !283, null, metadata !"__va_list_tag", i32 516, i64 0, i64 0, i64 0, i32 0, metadata !467} ; [ DW_TAG_typedef ] [__va_list_tag] [line 516, size 0, align 0, offset 0] [from __va_list_tag]
!467 = metadata !{i32 786451, metadata !425, null, metadata !"__va_list_tag", i32 516, i64 192, i64 64, i32 0, i32 0, null, metadata !468, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 516, size 192, align 64, offset 0] [def]
!468 = metadata !{metadata !469, metadata !470, metadata !471, metadata !472}
!469 = metadata !{i32 786445, metadata !425, metadata !467, metadata !"gp_offset", i32 516, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [gp_offset] [line 516, size 32, align 32, offset 0] [from unsigned int]
!470 = metadata !{i32 786445, metadata !425, metadata !467, metadata !"fp_offset", i32 516, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ] [fp_offset] [line 516, size 32, align 32, offset 32] [from unsigned int]
!471 = metadata !{i32 786445, metadata !425, metadata !467, metadata !"overflow_arg_area", i32 516, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [overflow_arg_area] [line 516, size 64, align 64, offset 64] [from ]
!472 = metadata !{i32 786445, metadata !425, metadata !467, metadata !"reg_save_area", i32 516, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [reg_save_area] [line 516, size 64, align 64, offset 128] [from ]
!473 = metadata !{i32 786445, metadata !283, metadata !445, metadata !"argvalue", i32 417, i64 1152, i64 128, i64 896, i32 0, metadata !474} ; [ DW_TAG_member ] [argvalue] [line 417, size 1152, align 128, offset 896] [from ]
!474 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 128, i32 0, i32 0, metadata !475, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1152, align 128, offset 0] [from argvalue_t]
!475 = metadata !{i32 786454, metadata !283, null, metadata !"argvalue_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_typedef ] [argvalue_t] [line 394, size 0, align 0, offset 0] [from ]
!476 = metadata !{i32 786455, metadata !283, null, metadata !"", i32 382, i64 128, i64 128, i64 0, i32 0, null, metadata !477, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 382, size 128, align 128, offset 0] [def] [from ]
!477 = metadata !{metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484}
!478 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"wc", i32 383, i64 32, i64 32, i64 0, i32 0, metadata !454} ; [ DW_TAG_member ] [wc] [line 383, size 32, align 32, offset 0] [from wchar_t]
!479 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"u", i32 384, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [u] [line 384, size 32, align 32, offset 0] [from unsigned int]
!480 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"ul", i32 385, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [ul] [line 385, size 64, align 64, offset 0] [from long unsigned int]
!481 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"ull", i32 387, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [ull] [line 387, size 64, align 64, offset 0] [from long long unsigned int]
!482 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"d", i32 390, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ] [d] [line 390, size 64, align 64, offset 0] [from double]
!483 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"ld", i32 391, i64 128, i64 128, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [ld] [line 391, size 128, align 128, offset 0] [from long double]
!484 = metadata !{i32 786445, metadata !283, metadata !476, metadata !"p", i32 393, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [p] [line 393, size 64, align 64, offset 0] [from ]
!485 = metadata !{i32 786449, metadata !486, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!486 = metadata !{metadata !"libc/stdio/_ppfs_prepargs.c", metadata !"/home/user/uclibc"}
!487 = metadata !{metadata !488}
!488 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_ppfs_prepargs", metadata !"_ppfs_prepargs", metadata !"", i32 605, metadata !489, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.ppfs_t*, %struct.__va_list_t
!489 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!490 = metadata !{null, metadata !491, metadata !532}
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ppfs_t]
!492 = metadata !{i32 786454, metadata !283, null, metadata !"ppfs_t", i32 419, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [ppfs_t] [line 419, size 0, align 0, offset 0] [from ]
!493 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 400, i64 2048, i64 128, i32 0, i32 0, null, metadata !494, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 400, size 2048, align 128, offset 0] [def] [from ]
!494 = metadata !{metadata !495, metadata !496, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !520}
!495 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"fmtpos", i32 401, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [fmtpos] [line 401, size 64, align 64, offset 0] [from ]
!496 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"info", i32 402, i64 160, i64 32, i64 64, i32 0, metadata !497} ; [ DW_TAG_member ] [info] [line 402, size 160, align 32, offset 64] [from printf_info]
!497 = metadata !{i32 786451, metadata !318, null, metadata !"printf_info", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !498, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [printf_info] [line 55, size 160, align 32, offset 0] [def] [from
!498 = metadata !{metadata !499, metadata !500, metadata !501, metadata !502, metadata !503}
!499 = metadata !{i32 786445, metadata !318, metadata !497, metadata !"prec", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [prec] [line 57, size 32, align 32, offset 0] [from int]
!500 = metadata !{i32 786445, metadata !318, metadata !497, metadata !"width", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [width] [line 58, size 32, align 32, offset 32] [from int]
!501 = metadata !{i32 786445, metadata !318, metadata !497, metadata !"spec", i32 60, i64 32, i64 32, i64 64, i32 0, metadata !454} ; [ DW_TAG_member ] [spec] [line 60, size 32, align 32, offset 64] [from wchar_t]
!502 = metadata !{i32 786445, metadata !318, metadata !497, metadata !"_flags", i32 107, i64 32, i64 32, i64 96, i32 0, metadata !100} ; [ DW_TAG_member ] [_flags] [line 107, size 32, align 32, offset 96] [from unsigned int]
!503 = metadata !{i32 786445, metadata !318, metadata !497, metadata !"pad", i32 141, i64 32, i64 32, i64 128, i32 0, metadata !454} ; [ DW_TAG_member ] [pad] [line 141, size 32, align 32, offset 128] [from wchar_t]
!504 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"maxposarg", i32 404, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [maxposarg] [line 404, size 32, align 32, offset 224] [from int]
!505 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"num_data_args", i32 406, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [num_data_args] [line 406, size 32, align 32, offset 256] [from int]
!506 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"conv_num", i32 407, i64 32, i64 32, i64 288, i32 0, metadata !100} ; [ DW_TAG_member ] [conv_num] [line 407, size 32, align 32, offset 288] [from unsigned int]
!507 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"argnumber", i32 408, i64 32, i64 8, i64 320, i32 0, metadata !329} ; [ DW_TAG_member ] [argnumber] [line 408, size 32, align 8, offset 320] [from ]
!508 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"argtype", i32 409, i64 288, i64 32, i64 352, i32 0, metadata !333} ; [ DW_TAG_member ] [argtype] [line 409, size 288, align 32, offset 352] [from ]
!509 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"arg", i32 410, i64 192, i64 64, i64 640, i32 0, metadata !510} ; [ DW_TAG_member ] [arg] [line 410, size 192, align 64, offset 640] [from va_list]
!510 = metadata !{i32 786454, metadata !283, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !511} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!511 = metadata !{i32 786454, metadata !283, null, metadata !"__builtin_va_list", i32 606, i64 0, i64 0, i64 0, i32 0, metadata !512} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 606, size 0, align 0, offset 0] [from ]
!512 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !513, metadata !347, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!513 = metadata !{i32 786454, metadata !283, null, metadata !"__va_list_tag", i32 606, i64 0, i64 0, i64 0, i32 0, metadata !514} ; [ DW_TAG_typedef ] [__va_list_tag] [line 606, size 0, align 0, offset 0] [from __va_list_tag]
!514 = metadata !{i32 786451, metadata !486, null, metadata !"__va_list_tag", i32 606, i64 192, i64 64, i32 0, i32 0, null, metadata !515, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 606, size 192, align 64, offset 0] [def]
!515 = metadata !{metadata !516, metadata !517, metadata !518, metadata !519}
!516 = metadata !{i32 786445, metadata !486, metadata !514, metadata !"gp_offset", i32 606, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [gp_offset] [line 606, size 32, align 32, offset 0] [from unsigned int]
!517 = metadata !{i32 786445, metadata !486, metadata !514, metadata !"fp_offset", i32 606, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ] [fp_offset] [line 606, size 32, align 32, offset 32] [from unsigned int]
!518 = metadata !{i32 786445, metadata !486, metadata !514, metadata !"overflow_arg_area", i32 606, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [overflow_arg_area] [line 606, size 64, align 64, offset 64] [from ]
!519 = metadata !{i32 786445, metadata !486, metadata !514, metadata !"reg_save_area", i32 606, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [reg_save_area] [line 606, size 64, align 64, offset 128] [from ]
!520 = metadata !{i32 786445, metadata !283, metadata !493, metadata !"argvalue", i32 417, i64 1152, i64 128, i64 896, i32 0, metadata !521} ; [ DW_TAG_member ] [argvalue] [line 417, size 1152, align 128, offset 896] [from ]
!521 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 128, i32 0, i32 0, metadata !522, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1152, align 128, offset 0] [from argvalue_t]
!522 = metadata !{i32 786454, metadata !283, null, metadata !"argvalue_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !523} ; [ DW_TAG_typedef ] [argvalue_t] [line 394, size 0, align 0, offset 0] [from ]
!523 = metadata !{i32 786455, metadata !283, null, metadata !"", i32 382, i64 128, i64 128, i64 0, i32 0, null, metadata !524, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 382, size 128, align 128, offset 0] [def] [from ]
!524 = metadata !{metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531}
!525 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"wc", i32 383, i64 32, i64 32, i64 0, i32 0, metadata !454} ; [ DW_TAG_member ] [wc] [line 383, size 32, align 32, offset 0] [from wchar_t]
!526 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"u", i32 384, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [u] [line 384, size 32, align 32, offset 0] [from unsigned int]
!527 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"ul", i32 385, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [ul] [line 385, size 64, align 64, offset 0] [from long unsigned int]
!528 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"ull", i32 387, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [ull] [line 387, size 64, align 64, offset 0] [from long long unsigned int]
!529 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"d", i32 390, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ] [d] [line 390, size 64, align 64, offset 0] [from double]
!530 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"ld", i32 391, i64 128, i64 128, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [ld] [line 391, size 128, align 128, offset 0] [from long double]
!531 = metadata !{i32 786445, metadata !283, metadata !523, metadata !"p", i32 393, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [p] [line 393, size 64, align 64, offset 0] [from ]
!532 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!533 = metadata !{i32 786449, metadata !534, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!534 = metadata !{metadata !"libc/stdio/_ppfs_setargs.c", metadata !"/home/user/uclibc"}
!535 = metadata !{metadata !536}
!536 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_ppfs_setargs", metadata !"_ppfs_setargs", metadata !"", i32 624, metadata !537, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.ppfs_t*)* @_ppfs_setargs, null
!537 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !538, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!538 = metadata !{null, metadata !539}
!539 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !540} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ppfs_t]
!540 = metadata !{i32 786454, metadata !283, null, metadata !"ppfs_t", i32 419, i64 0, i64 0, i64 0, i32 0, metadata !541} ; [ DW_TAG_typedef ] [ppfs_t] [line 419, size 0, align 0, offset 0] [from ]
!541 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 400, i64 2048, i64 128, i32 0, i32 0, null, metadata !542, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 400, size 2048, align 128, offset 0] [def] [from ]
!542 = metadata !{metadata !543, metadata !544, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !568}
!543 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"fmtpos", i32 401, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [fmtpos] [line 401, size 64, align 64, offset 0] [from ]
!544 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"info", i32 402, i64 160, i64 32, i64 64, i32 0, metadata !545} ; [ DW_TAG_member ] [info] [line 402, size 160, align 32, offset 64] [from printf_info]
!545 = metadata !{i32 786451, metadata !318, null, metadata !"printf_info", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !546, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [printf_info] [line 55, size 160, align 32, offset 0] [def] [from
!546 = metadata !{metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
!547 = metadata !{i32 786445, metadata !318, metadata !545, metadata !"prec", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [prec] [line 57, size 32, align 32, offset 0] [from int]
!548 = metadata !{i32 786445, metadata !318, metadata !545, metadata !"width", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [width] [line 58, size 32, align 32, offset 32] [from int]
!549 = metadata !{i32 786445, metadata !318, metadata !545, metadata !"spec", i32 60, i64 32, i64 32, i64 64, i32 0, metadata !454} ; [ DW_TAG_member ] [spec] [line 60, size 32, align 32, offset 64] [from wchar_t]
!550 = metadata !{i32 786445, metadata !318, metadata !545, metadata !"_flags", i32 107, i64 32, i64 32, i64 96, i32 0, metadata !100} ; [ DW_TAG_member ] [_flags] [line 107, size 32, align 32, offset 96] [from unsigned int]
!551 = metadata !{i32 786445, metadata !318, metadata !545, metadata !"pad", i32 141, i64 32, i64 32, i64 128, i32 0, metadata !454} ; [ DW_TAG_member ] [pad] [line 141, size 32, align 32, offset 128] [from wchar_t]
!552 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"maxposarg", i32 404, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [maxposarg] [line 404, size 32, align 32, offset 224] [from int]
!553 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"num_data_args", i32 406, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [num_data_args] [line 406, size 32, align 32, offset 256] [from int]
!554 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"conv_num", i32 407, i64 32, i64 32, i64 288, i32 0, metadata !100} ; [ DW_TAG_member ] [conv_num] [line 407, size 32, align 32, offset 288] [from unsigned int]
!555 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"argnumber", i32 408, i64 32, i64 8, i64 320, i32 0, metadata !329} ; [ DW_TAG_member ] [argnumber] [line 408, size 32, align 8, offset 320] [from ]
!556 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"argtype", i32 409, i64 288, i64 32, i64 352, i32 0, metadata !333} ; [ DW_TAG_member ] [argtype] [line 409, size 288, align 32, offset 352] [from ]
!557 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"arg", i32 410, i64 192, i64 64, i64 640, i32 0, metadata !558} ; [ DW_TAG_member ] [arg] [line 410, size 192, align 64, offset 640] [from va_list]
!558 = metadata !{i32 786454, metadata !283, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !559} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!559 = metadata !{i32 786454, metadata !283, null, metadata !"__builtin_va_list", i32 625, i64 0, i64 0, i64 0, i32 0, metadata !560} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 625, size 0, align 0, offset 0] [from ]
!560 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !561, metadata !347, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!561 = metadata !{i32 786454, metadata !283, null, metadata !"__va_list_tag", i32 625, i64 0, i64 0, i64 0, i32 0, metadata !562} ; [ DW_TAG_typedef ] [__va_list_tag] [line 625, size 0, align 0, offset 0] [from __va_list_tag]
!562 = metadata !{i32 786451, metadata !534, null, metadata !"__va_list_tag", i32 625, i64 192, i64 64, i32 0, i32 0, null, metadata !563, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 625, size 192, align 64, offset 0] [def]
!563 = metadata !{metadata !564, metadata !565, metadata !566, metadata !567}
!564 = metadata !{i32 786445, metadata !534, metadata !562, metadata !"gp_offset", i32 625, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [gp_offset] [line 625, size 32, align 32, offset 0] [from unsigned int]
!565 = metadata !{i32 786445, metadata !534, metadata !562, metadata !"fp_offset", i32 625, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ] [fp_offset] [line 625, size 32, align 32, offset 32] [from unsigned int]
!566 = metadata !{i32 786445, metadata !534, metadata !562, metadata !"overflow_arg_area", i32 625, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [overflow_arg_area] [line 625, size 64, align 64, offset 64] [from ]
!567 = metadata !{i32 786445, metadata !534, metadata !562, metadata !"reg_save_area", i32 625, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [reg_save_area] [line 625, size 64, align 64, offset 128] [from ]
!568 = metadata !{i32 786445, metadata !283, metadata !541, metadata !"argvalue", i32 417, i64 1152, i64 128, i64 896, i32 0, metadata !569} ; [ DW_TAG_member ] [argvalue] [line 417, size 1152, align 128, offset 896] [from ]
!569 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 128, i32 0, i32 0, metadata !570, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1152, align 128, offset 0] [from argvalue_t]
!570 = metadata !{i32 786454, metadata !283, null, metadata !"argvalue_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !571} ; [ DW_TAG_typedef ] [argvalue_t] [line 394, size 0, align 0, offset 0] [from ]
!571 = metadata !{i32 786455, metadata !283, null, metadata !"", i32 382, i64 128, i64 128, i64 0, i32 0, null, metadata !572, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 382, size 128, align 128, offset 0] [def] [from ]
!572 = metadata !{metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579}
!573 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"wc", i32 383, i64 32, i64 32, i64 0, i32 0, metadata !454} ; [ DW_TAG_member ] [wc] [line 383, size 32, align 32, offset 0] [from wchar_t]
!574 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"u", i32 384, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [u] [line 384, size 32, align 32, offset 0] [from unsigned int]
!575 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"ul", i32 385, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [ul] [line 385, size 64, align 64, offset 0] [from long unsigned int]
!576 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"ull", i32 387, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [ull] [line 387, size 64, align 64, offset 0] [from long long unsigned int]
!577 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"d", i32 390, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ] [d] [line 390, size 64, align 64, offset 0] [from double]
!578 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"ld", i32 391, i64 128, i64 128, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [ld] [line 391, size 128, align 128, offset 0] [from long double]
!579 = metadata !{i32 786445, metadata !283, metadata !571, metadata !"p", i32 393, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [p] [line 393, size 64, align 64, offset 0] [from ]
!580 = metadata !{i32 786449, metadata !581, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!581 = metadata !{metadata !"libc/stdio/_ppfs_parsespec.c", metadata !"/home/user/uclibc"}
!582 = metadata !{metadata !427, metadata !583, metadata !593, metadata !371}
!583 = metadata !{i32 786436, metadata !283, null, metadata !"", i32 237, i64 32, i64 32, i32 0, i32 0, null, metadata !584, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 237, size 32, align 32, offset 0] [def] [from ]
!584 = metadata !{metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592}
!585 = metadata !{i32 786472, metadata !"FLAG_SPACE", i64 1} ; [ DW_TAG_enumerator ] [FLAG_SPACE :: 1]
!586 = metadata !{i32 786472, metadata !"FLAG_PLUS", i64 2} ; [ DW_TAG_enumerator ] [FLAG_PLUS :: 2]
!587 = metadata !{i32 786472, metadata !"FLAG_ZERO", i64 4} ; [ DW_TAG_enumerator ] [FLAG_ZERO :: 4]
!588 = metadata !{i32 786472, metadata !"FLAG_MINUS", i64 8} ; [ DW_TAG_enumerator ] [FLAG_MINUS :: 8]
!589 = metadata !{i32 786472, metadata !"FLAG_HASH", i64 16} ; [ DW_TAG_enumerator ] [FLAG_HASH :: 16]
!590 = metadata !{i32 786472, metadata !"FLAG_THOUSANDS", i64 32} ; [ DW_TAG_enumerator ] [FLAG_THOUSANDS :: 32]
!591 = metadata !{i32 786472, metadata !"FLAG_I18N", i64 64} ; [ DW_TAG_enumerator ] [FLAG_I18N :: 64]
!592 = metadata !{i32 786472, metadata !"FLAG_WIDESTREAM", i64 128} ; [ DW_TAG_enumerator ] [FLAG_WIDESTREAM :: 128]
!593 = metadata !{i32 786436, metadata !594, null, metadata !"", i32 48, i64 32, i64 32, i32 0, i32 0, null, metadata !595, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 48, size 32, align 32, offset 0] [def] [from ]
!594 = metadata !{metadata !"./include/ctype.h", metadata !"/home/user/uclibc"}
!595 = metadata !{metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607}
!596 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!597 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!598 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!599 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!600 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!601 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!602 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!603 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!604 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!605 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!606 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!607 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!608 = metadata !{metadata !609, metadata !653, metadata !656}
!609 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_ppfs_parsespec", metadata !"_ppfs_parsespec", metadata !"", i32 844, metadata !610, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.ppfs_t*)* @_ppfs_parsespec,
!610 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!611 = metadata !{metadata !8, metadata !612}
!612 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !613} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ppfs_t]
!613 = metadata !{i32 786454, metadata !283, null, metadata !"ppfs_t", i32 419, i64 0, i64 0, i64 0, i32 0, metadata !614} ; [ DW_TAG_typedef ] [ppfs_t] [line 419, size 0, align 0, offset 0] [from ]
!614 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 400, i64 2048, i64 128, i32 0, i32 0, null, metadata !615, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 400, size 2048, align 128, offset 0] [def] [from ]
!615 = metadata !{metadata !616, metadata !617, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !641}
!616 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"fmtpos", i32 401, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [fmtpos] [line 401, size 64, align 64, offset 0] [from ]
!617 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"info", i32 402, i64 160, i64 32, i64 64, i32 0, metadata !618} ; [ DW_TAG_member ] [info] [line 402, size 160, align 32, offset 64] [from printf_info]
!618 = metadata !{i32 786451, metadata !318, null, metadata !"printf_info", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !619, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [printf_info] [line 55, size 160, align 32, offset 0] [def] [from
!619 = metadata !{metadata !620, metadata !621, metadata !622, metadata !623, metadata !624}
!620 = metadata !{i32 786445, metadata !318, metadata !618, metadata !"prec", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [prec] [line 57, size 32, align 32, offset 0] [from int]
!621 = metadata !{i32 786445, metadata !318, metadata !618, metadata !"width", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [width] [line 58, size 32, align 32, offset 32] [from int]
!622 = metadata !{i32 786445, metadata !318, metadata !618, metadata !"spec", i32 60, i64 32, i64 32, i64 64, i32 0, metadata !454} ; [ DW_TAG_member ] [spec] [line 60, size 32, align 32, offset 64] [from wchar_t]
!623 = metadata !{i32 786445, metadata !318, metadata !618, metadata !"_flags", i32 107, i64 32, i64 32, i64 96, i32 0, metadata !100} ; [ DW_TAG_member ] [_flags] [line 107, size 32, align 32, offset 96] [from unsigned int]
!624 = metadata !{i32 786445, metadata !318, metadata !618, metadata !"pad", i32 141, i64 32, i64 32, i64 128, i32 0, metadata !454} ; [ DW_TAG_member ] [pad] [line 141, size 32, align 32, offset 128] [from wchar_t]
!625 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"maxposarg", i32 404, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [maxposarg] [line 404, size 32, align 32, offset 224] [from int]
!626 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"num_data_args", i32 406, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [num_data_args] [line 406, size 32, align 32, offset 256] [from int]
!627 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"conv_num", i32 407, i64 32, i64 32, i64 288, i32 0, metadata !100} ; [ DW_TAG_member ] [conv_num] [line 407, size 32, align 32, offset 288] [from unsigned int]
!628 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"argnumber", i32 408, i64 32, i64 8, i64 320, i32 0, metadata !329} ; [ DW_TAG_member ] [argnumber] [line 408, size 32, align 8, offset 320] [from ]
!629 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"argtype", i32 409, i64 288, i64 32, i64 352, i32 0, metadata !333} ; [ DW_TAG_member ] [argtype] [line 409, size 288, align 32, offset 352] [from ]
!630 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"arg", i32 410, i64 192, i64 64, i64 640, i32 0, metadata !631} ; [ DW_TAG_member ] [arg] [line 410, size 192, align 64, offset 640] [from va_list]
!631 = metadata !{i32 786454, metadata !283, null, metadata !"va_list", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !632} ; [ DW_TAG_typedef ] [va_list] [line 30, size 0, align 0, offset 0] [from __builtin_va_list]
!632 = metadata !{i32 786454, metadata !283, null, metadata !"__builtin_va_list", i32 845, i64 0, i64 0, i64 0, i32 0, metadata !633} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 845, size 0, align 0, offset 0] [from ]
!633 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !634, metadata !347, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!634 = metadata !{i32 786454, metadata !283, null, metadata !"__va_list_tag", i32 845, i64 0, i64 0, i64 0, i32 0, metadata !635} ; [ DW_TAG_typedef ] [__va_list_tag] [line 845, size 0, align 0, offset 0] [from __va_list_tag]
!635 = metadata !{i32 786451, metadata !581, null, metadata !"__va_list_tag", i32 845, i64 192, i64 64, i32 0, i32 0, null, metadata !636, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 845, size 192, align 64, offset 0] [def]
!636 = metadata !{metadata !637, metadata !638, metadata !639, metadata !640}
!637 = metadata !{i32 786445, metadata !581, metadata !635, metadata !"gp_offset", i32 845, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [gp_offset] [line 845, size 32, align 32, offset 0] [from unsigned int]
!638 = metadata !{i32 786445, metadata !581, metadata !635, metadata !"fp_offset", i32 845, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ] [fp_offset] [line 845, size 32, align 32, offset 32] [from unsigned int]
!639 = metadata !{i32 786445, metadata !581, metadata !635, metadata !"overflow_arg_area", i32 845, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [overflow_arg_area] [line 845, size 64, align 64, offset 64] [from ]
!640 = metadata !{i32 786445, metadata !581, metadata !635, metadata !"reg_save_area", i32 845, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [reg_save_area] [line 845, size 64, align 64, offset 128] [from ]
!641 = metadata !{i32 786445, metadata !283, metadata !614, metadata !"argvalue", i32 417, i64 1152, i64 128, i64 896, i32 0, metadata !642} ; [ DW_TAG_member ] [argvalue] [line 417, size 1152, align 128, offset 896] [from ]
!642 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 128, i32 0, i32 0, metadata !643, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1152, align 128, offset 0] [from argvalue_t]
!643 = metadata !{i32 786454, metadata !283, null, metadata !"argvalue_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !644} ; [ DW_TAG_typedef ] [argvalue_t] [line 394, size 0, align 0, offset 0] [from ]
!644 = metadata !{i32 786455, metadata !283, null, metadata !"", i32 382, i64 128, i64 128, i64 0, i32 0, null, metadata !645, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 382, size 128, align 128, offset 0] [def] [from ]
!645 = metadata !{metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652}
!646 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"wc", i32 383, i64 32, i64 32, i64 0, i32 0, metadata !454} ; [ DW_TAG_member ] [wc] [line 383, size 32, align 32, offset 0] [from wchar_t]
!647 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"u", i32 384, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [u] [line 384, size 32, align 32, offset 0] [from unsigned int]
!648 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"ul", i32 385, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [ul] [line 385, size 64, align 64, offset 0] [from long unsigned int]
!649 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"ull", i32 387, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [ull] [line 387, size 64, align 64, offset 0] [from long long unsigned int]
!650 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"d", i32 390, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ] [d] [line 390, size 64, align 64, offset 0] [from double]
!651 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"ld", i32 391, i64 128, i64 128, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [ld] [line 391, size 128, align 128, offset 0] [from long double]
!652 = metadata !{i32 786445, metadata !283, metadata !644, metadata !"p", i32 393, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [p] [line 393, size 64, align 64, offset 0] [from ]
!653 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_is_equal_or_bigger_arg", metadata !"_is_equal_or_bigger_arg", metadata !"", i32 815, metadata !654, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @_is_equa
!654 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!655 = metadata !{metadata !8, metadata !8, metadata !8}
!656 = metadata !{i32 786478, metadata !283, metadata !285, metadata !"_promoted_size", metadata !"_promoted_size", metadata !"", i32 800, metadata !657, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @_promoted_size, null, null, met
!657 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !658, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!658 = metadata !{metadata !8, metadata !8}
!659 = metadata !{metadata !660, metadata !664, metadata !668, metadata !670, metadata !674, metadata !675, metadata !679, metadata !682}
!660 = metadata !{i32 786484, i32 0, metadata !609, metadata !"spec_flags", metadata !"spec_flags", metadata !"", metadata !285, i32 861, metadata !661, i32 1, i32 1, [8 x i8]* @_ppfs_parsespec.spec_flags, null} ; [ DW_TAG_variable ] [spec_flags] [line 8
!661 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !14, metadata !662, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from ]
!662 = metadata !{metadata !663}
!663 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!664 = metadata !{i32 786484, i32 0, metadata !609, metadata !"spec_chars", metadata !"spec_chars", metadata !"", metadata !285, i32 862, metadata !665, i32 1, i32 1, [21 x i8]* @_ppfs_parsespec.spec_chars, null} ; [ DW_TAG_variable ] [spec_chars] [line 
!665 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 168, i64 8, i32 0, i32 0, metadata !14, metadata !666, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 168, align 8, offset 0] [from ]
!666 = metadata !{metadata !667}
!667 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!668 = metadata !{i32 786484, i32 0, metadata !609, metadata !"spec_ranges", metadata !"spec_ranges", metadata !"", metadata !285, i32 863, metadata !669, i32 1, i32 1, [9 x i8]* @_ppfs_parsespec.spec_ranges, null} ; [ DW_TAG_variable ] [spec_ranges] [li
!669 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !14, metadata !334, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from ]
!670 = metadata !{i32 786484, i32 0, metadata !609, metadata !"spec_or_mask", metadata !"spec_or_mask", metadata !"", metadata !285, i32 864, metadata !671, i32 1, i32 1, [8 x i16]* @_ppfs_parsespec.spec_or_mask, null} ; [ DW_TAG_variable ] [spec_or_mask
!671 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 16, i32 0, i32 0, metadata !672, metadata !662, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 16, offset 0] [from ]
!672 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !673} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!673 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!674 = metadata !{i32 786484, i32 0, metadata !609, metadata !"spec_and_mask", metadata !"spec_and_mask", metadata !"", metadata !285, i32 865, metadata !671, i32 1, i32 1, [8 x i16]* @_ppfs_parsespec.spec_and_mask, null} ; [ DW_TAG_variable ] [spec_and_
!675 = metadata !{i32 786484, i32 0, metadata !609, metadata !"qual_chars", metadata !"qual_chars", metadata !"", metadata !285, i32 866, metadata !676, i32 1, i32 1, [20 x i8]* @_ppfs_parsespec.qual_chars, null} ; [ DW_TAG_variable ] [qual_chars] [line 
!676 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !14, metadata !677, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from ]
!677 = metadata !{metadata !678}
!678 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!679 = metadata !{i32 786484, i32 0, null, metadata !"type_sizes", metadata !"type_sizes", metadata !"", metadata !285, i32 777, metadata !680, i32 1, i32 1, [12 x i8]* @type_sizes, null} ; [ DW_TAG_variable ] [type_sizes] [line 777] [local] [def]
!680 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !681, metadata !422, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from ]
!681 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!682 = metadata !{i32 786484, i32 0, null, metadata !"type_codes", metadata !"type_codes", metadata !"", metadata !285, i32 759, metadata !683, i32 1, i32 1, [12 x i16]* @type_codes, null} ; [ DW_TAG_variable ] [type_codes] [line 759] [local] [def]
!683 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 16, i32 0, i32 0, metadata !672, metadata !422, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 16, offset 0] [from ]
!684 = metadata !{i32 786449, metadata !685, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!685 = metadata !{metadata !"libc/stdio/fputs_unlocked.c", metadata !"/home/user/uclibc"}
!686 = metadata !{metadata !687}
!687 = metadata !{i32 786478, metadata !688, metadata !689, metadata !"fputs_unlocked", metadata !"fputs_unlocked", metadata !"", i32 22, metadata !690, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.__STDIO_FILE_STRUCT.231*)
!688 = metadata !{metadata !"libc/stdio/fputs.c", metadata !"/home/user/uclibc"}
!689 = metadata !{i32 786473, metadata !688}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/fputs.c]
!690 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !691, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!691 = metadata !{metadata !8, metadata !206, metadata !692}
!692 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !693} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!693 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !694} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!694 = metadata !{i32 786454, metadata !688, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !695} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!695 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !696, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!696 = metadata !{metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !706, metadata !708, metadata !709}
!697 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!698 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!699 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!700 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!701 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!702 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!703 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!704 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!705 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!706 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !707} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!707 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !695} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!708 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!709 = metadata !{i32 786445, metadata !177, metadata !695, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !710} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!710 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !711} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!711 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !712, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!712 = metadata !{metadata !713, metadata !714}
!713 = metadata !{i32 786445, metadata !202, metadata !711, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!714 = metadata !{i32 786445, metadata !202, metadata !711, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!715 = metadata !{i32 786449, metadata !716, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!716 = metadata !{metadata !"libc/stdio/fwrite_unlocked.c", metadata !"/home/user/uclibc"}
!717 = metadata !{metadata !718}
!718 = metadata !{i32 786478, metadata !719, metadata !720, metadata !"fwrite_unlocked", metadata !"fwrite_unlocked", metadata !"", i32 14, metadata !721, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i64, %struct.__STDIO_FILE_
!719 = metadata !{metadata !"libc/stdio/fwrite.c", metadata !"/home/user/uclibc"}
!720 = metadata !{i32 786473, metadata !719}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/fwrite.c]
!721 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !722, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!722 = metadata !{metadata !723, metadata !724, metadata !723, metadata !723, metadata !725}
!723 = metadata !{i32 786454, metadata !719, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!724 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!725 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !726} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!726 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !727} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!727 = metadata !{i32 786454, metadata !719, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !728} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!728 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !729, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!729 = metadata !{metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !741, metadata !742}
!730 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!731 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!732 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!733 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!734 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!735 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!736 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!737 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!738 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!739 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !740} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!740 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !728} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!741 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!742 = metadata !{i32 786445, metadata !177, metadata !728, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !743} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!743 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !744} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!744 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !745, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!745 = metadata !{metadata !746, metadata !747}
!746 = metadata !{i32 786445, metadata !202, metadata !744, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!747 = metadata !{i32 786445, metadata !202, metadata !744, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!748 = metadata !{i32 786449, metadata !749, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!749 = metadata !{metadata !"libc/string/strrchr.c", metadata !"/home/user/uclibc"}
!750 = metadata !{metadata !751}
!751 = metadata !{i32 786478, metadata !749, metadata !752, metadata !"strrchr", metadata !"strrchr", metadata !"", i32 17, metadata !753, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr, null, null, metadata !2, i32 18
!752 = metadata !{i32 786473, metadata !749}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/strrchr.c]
!753 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !754, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!754 = metadata !{metadata !140, metadata !13, metadata !8}
!755 = metadata !{i32 786449, metadata !756, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!756 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/user/uclibc"}
!757 = metadata !{metadata !758}
!758 = metadata !{i32 786478, metadata !756, metadata !759, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !760, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 
!759 = metadata !{i32 786473, metadata !756}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/memcpy.c]
!760 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !761, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!761 = metadata !{metadata !30, metadata !762, metadata !724, metadata !763}
!762 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!763 = metadata !{i32 786454, metadata !756, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!764 = metadata !{i32 786449, metadata !765, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!765 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/user/uclibc"}
!766 = metadata !{metadata !767}
!767 = metadata !{i32 786478, metadata !765, metadata !768, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !769, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 
!768 = metadata !{i32 786473, metadata !765}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/memset.c]
!769 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !770, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!770 = metadata !{metadata !30, metadata !30, metadata !8, metadata !771}
!771 = metadata !{i32 786454, metadata !765, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!772 = metadata !{i32 786449, metadata !773, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!773 = metadata !{metadata !"libc/string/strcpy.c", metadata !"/home/user/uclibc"}
!774 = metadata !{metadata !775}
!775 = metadata !{i32 786478, metadata !773, metadata !776, metadata !"strcpy", metadata !"strcpy", metadata !"", i32 18, metadata !777, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*)* @strcpy, null, null, metadata !2, i32 19} ;
!776 = metadata !{i32 786473, metadata !773}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/strcpy.c]
!777 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !778, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!778 = metadata !{metadata !140, metadata !779, metadata !206}
!779 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!780 = metadata !{i32 786449, metadata !781, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!781 = metadata !{metadata !"libc/string/strnlen.c", metadata !"/home/user/uclibc"}
!782 = metadata !{metadata !783}
!783 = metadata !{i32 786478, metadata !781, metadata !784, metadata !"strnlen", metadata !"strnlen", metadata !"", i32 20, metadata !785, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64)* @strnlen, null, null, metadata !2, i32 21
!784 = metadata !{i32 786473, metadata !781}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/strnlen.c]
!785 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !786, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!786 = metadata !{metadata !787, metadata !13, metadata !787}
!787 = metadata !{i32 786454, metadata !781, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!788 = metadata !{i32 786449, metadata !789, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!789 = metadata !{metadata !"libc/string/__glibc_strerror_r.c", metadata !"/home/user/uclibc"}
!790 = metadata !{metadata !791}
!791 = metadata !{i32 786478, metadata !789, metadata !792, metadata !"__glibc_strerror_r", metadata !"__glibc_strerror_r", metadata !"", i32 14, metadata !793, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*, i64)* @__glibc_strer
!792 = metadata !{i32 786473, metadata !789}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/__glibc_strerror_r.c]
!793 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !794, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!794 = metadata !{metadata !140, metadata !8, metadata !140, metadata !795}
!795 = metadata !{i32 786454, metadata !789, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!796 = metadata !{i32 786449, metadata !797, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!797 = metadata !{metadata !"libc/string/__xpg_strerror_r.c", metadata !"/home/user/uclibc"}
!798 = metadata !{metadata !394}
!799 = metadata !{metadata !800}
!800 = metadata !{i32 786478, metadata !797, metadata !801, metadata !"__xpg_strerror_r", metadata !"__xpg_strerror_r", metadata !"", i32 165, metadata !802, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*, i64)* @__xpg_strerror_r
!801 = metadata !{i32 786473, metadata !797}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!802 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !803, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!803 = metadata !{metadata !8, metadata !8, metadata !140, metadata !804}
!804 = metadata !{i32 786454, metadata !797, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!805 = metadata !{metadata !806}
!806 = metadata !{i32 786484, i32 0, metadata !800, metadata !"unknown", metadata !"unknown", metadata !"", metadata !801, i32 170, metadata !807, i32 1, i32 1, [14 x i8]* @__xpg_strerror_r.unknown, null} ; [ DW_TAG_variable ] [unknown] [line 170] [local
!807 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 112, i64 8, i32 0, i32 0, metadata !14, metadata !808, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from ]
!808 = metadata !{metadata !809}
!809 = metadata !{i32 786465, i64 0, i64 14}      ; [ DW_TAG_subrange_type ] [0, 13]
!810 = metadata !{i32 786449, metadata !811, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!811 = metadata !{metadata !"libc/string/strlen.c", metadata !"/home/user/uclibc"}
!812 = metadata !{metadata !813}
!813 = metadata !{i32 786478, metadata !811, metadata !814, metadata !"strlen", metadata !"strlen", metadata !"", i32 18, metadata !815, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*)* @strlen, null, null, metadata !2, i32 19} ; [ DW
!814 = metadata !{i32 786473, metadata !811}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/strlen.c]
!815 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !816, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!816 = metadata !{metadata !817, metadata !13}
!817 = metadata !{i32 786454, metadata !811, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!818 = metadata !{i32 786449, metadata !819, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!819 = metadata !{metadata !"libc/string/_string_syserrmsgs.c", metadata !"/home/user/uclibc"}
!820 = metadata !{metadata !821}
!821 = metadata !{i32 786484, i32 0, null, metadata !"_string_syserrmsgs", metadata !"_string_syserrmsgs", metadata !"", metadata !822, i32 13, metadata !823, i32 0, i32 1, [2906 x i8]* @_string_syserrmsgs, null} ; [ DW_TAG_variable ] [_string_syserrmsgs
!822 = metadata !{i32 786473, metadata !819}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/_string_syserrmsgs.c]
!823 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 23248, i64 8, i32 0, i32 0, metadata !14, metadata !824, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 23248, align 8, offset 0] [from ]
!824 = metadata !{metadata !825}
!825 = metadata !{i32 786465, i64 0, i64 2906}    ; [ DW_TAG_subrange_type ] [0, 2905]
!826 = metadata !{i32 786449, metadata !827, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!827 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/user/uclibc"}
!828 = metadata !{metadata !829}
!829 = metadata !{i32 786478, metadata !827, metadata !830, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !657, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW
!830 = metadata !{i32 786473, metadata !827}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/termios/isatty.c]
!831 = metadata !{i32 786449, metadata !832, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!832 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/user/uclibc"}
!833 = metadata !{metadata !834}
!834 = metadata !{i32 786478, metadata !832, metadata !835, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !836, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.442*)* @tcgetattr, null, nu
!835 = metadata !{i32 786473, metadata !832}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/termios/tcgetattr.c]
!836 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !837, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!837 = metadata !{metadata !8, metadata !8, metadata !838}
!838 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !839} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!839 = metadata !{i32 786451, metadata !840, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !841, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!840 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/user/uclibc"}
!841 = metadata !{metadata !842, metadata !844, metadata !845, metadata !846, metadata !847, metadata !849, metadata !853, metadata !855}
!842 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !843} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!843 = metadata !{i32 786454, metadata !840, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!844 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !843} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!845 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !843} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!846 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !843} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!847 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !848} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!848 = metadata !{i32 786454, metadata !840, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!849 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !850} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!850 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !848, metadata !851, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!851 = metadata !{metadata !852}
!852 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!853 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !854} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!854 = metadata !{i32 786454, metadata !840, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!855 = metadata !{i32 786445, metadata !840, metadata !839, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !854} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!856 = metadata !{i32 786449, metadata !857, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!857 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/user/uclibc"}
!858 = metadata !{metadata !859, metadata !861, metadata !862, metadata !870, metadata !873, metadata !878}
!859 = metadata !{i32 786478, metadata !857, metadata !860, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadat
!860 = metadata !{i32 786473, metadata !857}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!861 = metadata !{i32 786478, metadata !857, metadata !860, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadat
!862 = metadata !{i32 786478, metadata !857, metadata !860, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !863, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, voi
!863 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !864, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!864 = metadata !{null, metadata !865, metadata !8, metadata !868, metadata !869, metadata !869, metadata !869, metadata !30}
!865 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !866} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!866 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !867, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!867 = metadata !{metadata !8, metadata !8, metadata !868, metadata !868}
!868 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!869 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!870 = metadata !{i32 786478, metadata !857, metadata !860, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !871, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, nul
!871 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !872, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!872 = metadata !{null, metadata !8, metadata !8}
!873 = metadata !{i32 786478, metadata !874, metadata !875, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !876, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, nu
!874 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/user/uclibc"}
!875 = metadata !{i32 786473, metadata !874}      ; [ DW_TAG_file_type ] [/home/user/uclibc/./include/sys/sysmacros.h]
!876 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !877, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!877 = metadata !{metadata !358, metadata !100, metadata !100}
!878 = metadata !{i32 786478, metadata !857, metadata !860, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !157, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2,
!879 = metadata !{metadata !880, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !887, metadata !888, metadata !889}
!880 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !860, i32 52, metadata !30, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!881 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !860, i32 110, metadata !13, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110]
!882 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_short_name", metadata !"program_invocation_short_name", metadata !"", metadata !860, i32 112, metadata !13, i32 0, i32 1, i8** @program_invocation_short_name, null} ; [ DW_TAG_varia
!883 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_name", metadata !"program_invocation_name", metadata !"", metadata !860, i32 113, metadata !13, i32 0, i32 1, i8** @program_invocation_name, null} ; [ DW_TAG_variable ] [program_inv
!884 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !860, i32 125, metadata !868, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!885 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !860, i32 129, metadata !886, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!886 = metadata !{i32 786454, metadata !857, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!887 = metadata !{i32 786484, i32 0, metadata !859, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !860, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ]
!888 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !860, i32 244, metadata !869, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!889 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !860, i32 247, metadata !869, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!890 = metadata !{i32 786449, metadata !891, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!891 = metadata !{metadata !"libc/misc/ctype/__C_ctype_b.c", metadata !"/home/user/uclibc"}
!892 = metadata !{metadata !893, metadata !902, metadata !904}
!893 = metadata !{i32 786484, i32 0, null, metadata !"__C_ctype_b_data", metadata !"__C_ctype_b_data", metadata !"", metadata !894, i32 471, metadata !896, i32 0, i32 1, [384 x i16]* @__C_ctype_b_data, null} ; [ DW_TAG_variable ] [__C_ctype_b_data] [line
!894 = metadata !{i32 786473, metadata !895}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/misc/ctype/ctype.c]
!895 = metadata !{metadata !"libc/misc/ctype/ctype.c", metadata !"/home/user/uclibc"}
!896 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 16, i32 0, i32 0, metadata !897, metadata !900, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6144, align 16, offset 0] [from ]
!897 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !898} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __ctype_mask_t]
!898 = metadata !{i32 786454, metadata !895, null, metadata !"__ctype_mask_t", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !899} ; [ DW_TAG_typedef ] [__ctype_mask_t] [line 38, size 0, align 0, offset 0] [from __uint16_t]
!899 = metadata !{i32 786454, metadata !895, null, metadata !"__uint16_t", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [__uint16_t] [line 44, size 0, align 0, offset 0] [from unsigned short]
!900 = metadata !{metadata !901}
!901 = metadata !{i32 786465, i64 0, i64 384}     ; [ DW_TAG_subrange_type ] [0, 383]
!902 = metadata !{i32 786484, i32 0, null, metadata !"__C_ctype_b", metadata !"__C_ctype_b", metadata !"", metadata !894, i32 862, metadata !903, i32 0, i32 1, i16** @__C_ctype_b, null} ; [ DW_TAG_variable ] [__C_ctype_b] [line 862] [def]
!903 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !897} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!904 = metadata !{i32 786484, i32 0, null, metadata !"__ctype_b", metadata !"__ctype_b", metadata !"", metadata !894, i32 867, metadata !903, i32 0, i32 1, i16** @__ctype_b, null} ; [ DW_TAG_variable ] [__ctype_b] [line 867] [def]
!905 = metadata !{i32 786449, metadata !906, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!906 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/user/uclibc"}
!907 = metadata !{metadata !908, metadata !910}
!908 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !909, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!909 = metadata !{i32 786473, metadata !906}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/misc/internals/errno.c]
!910 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !909, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!911 = metadata !{i32 786449, metadata !912, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!912 = metadata !{metadata !"libc/misc/internals/__errno_location.c", metadata !"/home/user/uclibc"}
!913 = metadata !{metadata !914}
!914 = metadata !{i32 786478, metadata !912, metadata !915, metadata !"__errno_location", metadata !"__errno_location", metadata !"", i32 11, metadata !916, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_location, null, null,
!915 = metadata !{i32 786473, metadata !912}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/misc/internals/__errno_location.c]
!916 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !917, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!917 = metadata !{metadata !9}
!918 = metadata !{i32 786449, metadata !919, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!919 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/user/uclibc"}
!920 = metadata !{metadata !921}
!921 = metadata !{i32 786478, metadata !919, metadata !922, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !916, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null,
!922 = metadata !{i32 786473, metadata !919}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/misc/internals/__h_errno_location.c]
!923 = metadata !{i32 786449, metadata !924, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!924 = metadata !{metadata !"libc/misc/wchar/wcrtomb.c", metadata !"/home/user/uclibc"}
!925 = metadata !{metadata !926}
!926 = metadata !{i32 786478, metadata !927, metadata !928, metadata !"wcrtomb", metadata !"wcrtomb", metadata !"", i32 340, metadata !929, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i32, %struct.__mbstate_t.230*)* @wcrtomb, null
!927 = metadata !{metadata !"libc/misc/wchar/wchar.c", metadata !"/home/user/uclibc"}
!928 = metadata !{i32 786473, metadata !927}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!929 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !930, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!930 = metadata !{metadata !931, metadata !779, metadata !932, metadata !933}
!931 = metadata !{i32 786454, metadata !927, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!932 = metadata !{i32 786454, metadata !927, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!933 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !934} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!934 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !935} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from mbstate_t]
!935 = metadata !{i32 786454, metadata !927, null, metadata !"mbstate_t", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !936} ; [ DW_TAG_typedef ] [mbstate_t] [line 107, size 0, align 0, offset 0] [from __mbstate_t]
!936 = metadata !{i32 786454, metadata !927, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!937 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !938, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!938 = metadata !{metadata !939, metadata !940}
!939 = metadata !{i32 786445, metadata !202, metadata !937, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !932} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!940 = metadata !{i32 786445, metadata !202, metadata !937, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !932} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!941 = metadata !{i32 786449, metadata !942, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!942 = metadata !{metadata !"libc/misc/wchar/wcsrtombs.c", metadata !"/home/user/uclibc"}
!943 = metadata !{metadata !944}
!944 = metadata !{i32 786478, metadata !927, metadata !928, metadata !"wcsrtombs", metadata !"wcsrtombs", metadata !"", i32 392, metadata !945, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i32**, i64, %struct.__mbstate_t.230*)* @wc
!945 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !946, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!946 = metadata !{metadata !931, metadata !779, metadata !947, metadata !931, metadata !951}
!947 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !948} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!948 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !949} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!949 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !950} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!950 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !932} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from wchar_t]
!951 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !952} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!952 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !953} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from mbstate_t]
!953 = metadata !{i32 786454, metadata !927, null, metadata !"mbstate_t", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !954} ; [ DW_TAG_typedef ] [mbstate_t] [line 107, size 0, align 0, offset 0] [from __mbstate_t]
!954 = metadata !{i32 786454, metadata !927, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !955} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!955 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !956, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!956 = metadata !{metadata !957, metadata !958}
!957 = metadata !{i32 786445, metadata !202, metadata !955, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !932} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!958 = metadata !{i32 786445, metadata !202, metadata !955, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !932} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!959 = metadata !{i32 786449, metadata !960, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!960 = metadata !{metadata !"libc/misc/wchar/wcsnrtombs.c", metadata !"/home/user/uclibc"}
!961 = metadata !{metadata !962}
!962 = metadata !{i32 786478, metadata !927, metadata !928, metadata !"wcsnrtombs", metadata !"wcsnrtombs", metadata !"", i32 806, metadata !963, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i32**, i64, i64, %struct.__mbstate_t.230
!963 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !964, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!964 = metadata !{metadata !931, metadata !779, metadata !947, metadata !931, metadata !931, metadata !965}
!965 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !966} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!966 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !967} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from mbstate_t]
!967 = metadata !{i32 786454, metadata !927, null, metadata !"mbstate_t", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !968} ; [ DW_TAG_typedef ] [mbstate_t] [line 107, size 0, align 0, offset 0] [from __mbstate_t]
!968 = metadata !{i32 786454, metadata !927, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !969} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!969 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !970, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!970 = metadata !{metadata !971, metadata !972}
!971 = metadata !{i32 786445, metadata !202, metadata !969, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !932} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!972 = metadata !{i32 786445, metadata !202, metadata !969, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !932} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!973 = metadata !{i32 786449, metadata !974, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false,
!974 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/user/uclibc"}
!975 = metadata !{metadata !976}
!976 = metadata !{i32 786478, metadata !974, metadata !977, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !978, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.274*, i8*, i
!977 = metadata !{i32 786473, metadata !974}      ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!978 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !979, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!979 = metadata !{metadata !980, metadata !981, metadata !1003, metadata !980}
!980 = metadata !{i32 786454, metadata !974, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!981 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !982} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!982 = metadata !{i32 786454, metadata !974, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !983} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!983 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !984, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, off
!984 = metadata !{metadata !985, metadata !986, metadata !987, metadata !988, metadata !989, metadata !990, metadata !991, metadata !992, metadata !993, metadata !994, metadata !996, metadata !997}
!985 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!986 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!987 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!988 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!989 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!990 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!991 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!992 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!993 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!994 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !995} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!995 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !983} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!996 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!997 = metadata !{i32 786445, metadata !177, metadata !983, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !998} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!998 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !999} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!999 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1000, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1000 = metadata !{metadata !1001, metadata !1002}
!1001 = metadata !{i32 786445, metadata !202, metadata !999, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1002 = metadata !{i32 786445, metadata !202, metadata !999, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1003 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !681} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1004 = metadata !{i32 786449, metadata !1005, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1005 = metadata !{metadata !"libc/stdio/_fwrite.c", metadata !"/home/user/uclibc"}
!1006 = metadata !{metadata !1007}
!1007 = metadata !{i32 786478, metadata !1005, metadata !1008, metadata !"__stdio_fwrite", metadata !"__stdio_fwrite", metadata !"", i32 18, metadata !1009, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, %struct.__STDIO_FILE_STR
!1008 = metadata !{i32 786473, metadata !1005}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!1009 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1010, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1010 = metadata !{metadata !1011, metadata !1012, metadata !1011, metadata !1013}
!1011 = metadata !{i32 786454, metadata !1005, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1012 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1003} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!1013 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1014} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!1014 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1015} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1015 = metadata !{i32 786454, metadata !1005, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1016} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1016 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1017, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1017 = metadata !{metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1029, metadata !1030}
!1018 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1019 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1020 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1021 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1022 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1023 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1024 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1025 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1026 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1027 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1028} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1028 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1016} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1029 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1030 = metadata !{i32 786445, metadata !177, metadata !1016, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1031} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1031 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1032} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1032 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1033, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1033 = metadata !{metadata !1034, metadata !1035}
!1034 = metadata !{i32 786445, metadata !202, metadata !1032, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1035 = metadata !{i32 786445, metadata !202, metadata !1032, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1036 = metadata !{i32 786449, metadata !1037, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1037 = metadata !{metadata !"libc/stdio/_trans2w.c", metadata !"/home/user/uclibc"}
!1038 = metadata !{metadata !1039}
!1039 = metadata !{i32 786478, metadata !1037, metadata !1040, metadata !"__stdio_trans2w_o", metadata !"__stdio_trans2w_o", metadata !"", i32 26, metadata !1041, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.
!1040 = metadata !{i32 786473, metadata !1037}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!1041 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1042, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1042 = metadata !{metadata !8, metadata !1043, metadata !8}
!1043 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1044} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!1044 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1045} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1045 = metadata !{i32 786454, metadata !1037, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1046} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1046 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1047, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1047 = metadata !{metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1059, metadata !1060}
!1048 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1049 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1050 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1051 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1052 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1053 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1054 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1055 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1056 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1057 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1058} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1058 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1046} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1059 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1060 = metadata !{i32 786445, metadata !177, metadata !1046, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1061} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1061 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1062} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1062 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1063, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1063 = metadata !{metadata !1064, metadata !1065}
!1064 = metadata !{i32 786445, metadata !202, metadata !1062, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1065 = metadata !{i32 786445, metadata !202, metadata !1062, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1066 = metadata !{i32 786449, metadata !1067, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1067 = metadata !{metadata !"libc/stdio/_load_inttype.c", metadata !"/home/user/uclibc"}
!1068 = metadata !{metadata !1069}
!1069 = metadata !{i32 786478, metadata !1067, metadata !1070, metadata !"_load_inttype", metadata !"_load_inttype", metadata !"", i32 12, metadata !1071, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i8*, i32)* @_load_inttype, null
!1070 = metadata !{i32 786473, metadata !1067}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!1071 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1072, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1072 = metadata !{metadata !1073, metadata !8, metadata !26, metadata !8}
!1073 = metadata !{i32 786454, metadata !1067, null, metadata !"uintmax_t", i32 138, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [uintmax_t] [line 138, size 0, align 0, offset 0] [from long unsigned int]
!1074 = metadata !{i32 786449, metadata !1075, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1075 = metadata !{metadata !"libc/stdio/_store_inttype.c", metadata !"/home/user/uclibc"}
!1076 = metadata !{metadata !1077}
!1077 = metadata !{i32 786478, metadata !1075, metadata !1078, metadata !"_store_inttype", metadata !"_store_inttype", metadata !"", i32 32, metadata !1079, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32, i64)* @_store_inttype, 
!1078 = metadata !{i32 786473, metadata !1075}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!1079 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1080, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1080 = metadata !{null, metadata !30, metadata !8, metadata !1081}
!1081 = metadata !{i32 786454, metadata !1075, null, metadata !"uintmax_t", i32 138, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [uintmax_t] [line 138, size 0, align 0, offset 0] [from long unsigned int]
!1082 = metadata !{i32 786449, metadata !1083, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1083 = metadata !{metadata !"libc/stdio/_uintmaxtostr.c", metadata !"/home/user/uclibc"}
!1084 = metadata !{metadata !1085}
!1085 = metadata !{i32 786478, metadata !1083, metadata !1086, metadata !"_uintmaxtostr", metadata !"_uintmaxtostr", metadata !"", i32 22, metadata !1087, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i32, i32)* @_uintmaxtostr,
!1086 = metadata !{i32 786473, metadata !1083}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!1087 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1088 = metadata !{metadata !140, metadata !779, metadata !1089, metadata !8, metadata !1090}
!1089 = metadata !{i32 786454, metadata !1083, null, metadata !"uintmax_t", i32 138, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [uintmax_t] [line 138, size 0, align 0, offset 0] [from long unsigned int]
!1090 = metadata !{i32 786454, metadata !1083, null, metadata !"__UIM_CASE", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_typedef ] [__UIM_CASE] [line 84, size 0, align 0, offset 0] [from ]
!1091 = metadata !{i32 786449, metadata !1092, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1092 = metadata !{metadata !"libc/stdio/_fpmaxtostr.c", metadata !"/home/user/uclibc"}
!1093 = metadata !{metadata !1094}
!1094 = metadata !{i32 786478, metadata !1092, metadata !1095, metadata !"_fpmaxtostr", metadata !"_fpmaxtostr", metadata !"", i32 205, metadata !1096, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.284*, x86_f
!1095 = metadata !{i32 786473, metadata !1092}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!1096 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1097, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1097 = metadata !{metadata !1098, metadata !1100, metadata !1122, metadata !1123, metadata !1143}
!1098 = metadata !{i32 786454, metadata !1092, null, metadata !"ssize_t", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !1099} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!1099 = metadata !{i32 786454, metadata !1092, null, metadata !"__ssize_t", i32 184, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [__ssize_t] [line 184, size 0, align 0, offset 0] [from long int]
!1100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1101 = metadata !{i32 786454, metadata !1092, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1102} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1102 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1103, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1103 = metadata !{metadata !1104, metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1115, metadata !1116}
!1104 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1105 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1106 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1107 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1108 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1109 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1110 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1111 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1112 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1113 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1114} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1102} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1115 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1116 = metadata !{i32 786445, metadata !177, metadata !1102, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1117} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1117 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1118} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1118 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1119, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1119 = metadata !{metadata !1120, metadata !1121}
!1120 = metadata !{i32 786445, metadata !202, metadata !1118, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1121 = metadata !{i32 786445, metadata !202, metadata !1118, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1122 = metadata !{i32 786454, metadata !1092, null, metadata !"__fpmax_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !362} ; [ DW_TAG_typedef ] [__fpmax_t] [line 26, size 0, align 0, offset 0] [from long double]
!1123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from printf_info]
!1124 = metadata !{i32 786451, metadata !318, null, metadata !"printf_info", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !1125, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [printf_info] [line 55, size 160, align 32, offset 0] [def] [fr
!1125 = metadata !{metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131, metadata !1132, metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1
!1126 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"prec", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [prec] [line 57, size 32, align 32, offset 0] [from int]
!1127 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"width", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [width] [line 58, size 32, align 32, offset 32] [from int]
!1128 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"spec", i32 60, i64 32, i64 32, i64 64, i32 0, metadata !198} ; [ DW_TAG_member ] [spec] [line 60, size 32, align 32, offset 64] [from wchar_t]
!1129 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"space", i32 66, i64 1, i64 32, i64 96, i32 0, metadata !100} ; [ DW_TAG_member ] [space] [line 66, size 1, align 32, offset 96] [from unsigned int]
!1130 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"showsign", i32 67, i64 1, i64 32, i64 97, i32 0, metadata !100} ; [ DW_TAG_member ] [showsign] [line 67, size 1, align 32, offset 97] [from unsigned int]
!1131 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"extra", i32 68, i64 1, i64 32, i64 98, i32 0, metadata !100} ; [ DW_TAG_member ] [extra] [line 68, size 1, align 32, offset 98] [from unsigned int]
!1132 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"left", i32 69, i64 1, i64 32, i64 99, i32 0, metadata !100} ; [ DW_TAG_member ] [left] [line 69, size 1, align 32, offset 99] [from unsigned int]
!1133 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"alt", i32 70, i64 1, i64 32, i64 100, i32 0, metadata !100} ; [ DW_TAG_member ] [alt] [line 70, size 1, align 32, offset 100] [from unsigned int]
!1134 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"group", i32 71, i64 1, i64 32, i64 101, i32 0, metadata !100} ; [ DW_TAG_member ] [group] [line 71, size 1, align 32, offset 101] [from unsigned int]
!1135 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"i18n", i32 72, i64 1, i64 32, i64 102, i32 0, metadata !100} ; [ DW_TAG_member ] [i18n] [line 72, size 1, align 32, offset 102] [from unsigned int]
!1136 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"wide", i32 73, i64 1, i64 32, i64 103, i32 0, metadata !100} ; [ DW_TAG_member ] [wide] [line 73, size 1, align 32, offset 103] [from unsigned int]
!1137 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"is_char", i32 74, i64 1, i64 32, i64 104, i32 0, metadata !100} ; [ DW_TAG_member ] [is_char] [line 74, size 1, align 32, offset 104] [from unsigned int]
!1138 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"is_short", i32 75, i64 1, i64 32, i64 105, i32 0, metadata !100} ; [ DW_TAG_member ] [is_short] [line 75, size 1, align 32, offset 105] [from unsigned int]
!1139 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"is_long", i32 76, i64 1, i64 32, i64 106, i32 0, metadata !100} ; [ DW_TAG_member ] [is_long] [line 76, size 1, align 32, offset 106] [from unsigned int]
!1140 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"is_long_double", i32 77, i64 1, i64 32, i64 107, i32 0, metadata !100} ; [ DW_TAG_member ] [is_long_double] [line 77, size 1, align 32, offset 107] [from unsigned int]
!1141 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"__padding", i32 78, i64 20, i64 32, i64 108, i32 0, metadata !100} ; [ DW_TAG_member ] [__padding] [line 78, size 20, align 32, offset 108] [from unsigned int]
!1142 = metadata !{i32 786445, metadata !318, metadata !1124, metadata !"pad", i32 141, i64 32, i64 32, i64 128, i32 0, metadata !198} ; [ DW_TAG_member ] [pad] [line 141, size 32, align 32, offset 128] [from wchar_t]
!1143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __fp_outfunc_t]
!1144 = metadata !{i32 786454, metadata !1092, null, metadata !"__fp_outfunc_t", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !1145} ; [ DW_TAG_typedef ] [__fp_outfunc_t] [line 16, size 0, align 0, offset 0] [from ]
!1145 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1146, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1146 = metadata !{metadata !1147, metadata !1100, metadata !1148, metadata !1148, metadata !1148}
!1147 = metadata !{i32 786454, metadata !1092, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1148 = metadata !{i32 786454, metadata !1092, null, metadata !"intptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [intptr_t] [line 122, size 0, align 0, offset 0] [from long int]
!1149 = metadata !{metadata !1150, metadata !1155}
!1150 = metadata !{i32 786484, i32 0, null, metadata !"exp10_table", metadata !"exp10_table", metadata !"", metadata !1095, i32 116, metadata !1151, i32 1, i32 1, [13 x x86_fp80]* @exp10_table, null} ; [ DW_TAG_variable ] [exp10_table] [line 116] [local]
!1151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1664, i64 128, i32 0, i32 0, metadata !1152, metadata !1153, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1664, align 128, offset 0] [from ]
!1152 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1122} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __fpmax_t]
!1153 = metadata !{metadata !1154}
!1154 = metadata !{i32 786465, i64 0, i64 13}     ; [ DW_TAG_subrange_type ] [0, 12]
!1155 = metadata !{i32 786484, i32 0, null, metadata !"fmt", metadata !"fmt", metadata !"", metadata !1095, i32 102, metadata !676, i32 1, i32 1, [20 x i8]* @fmt, null} ; [ DW_TAG_variable ] [fmt] [line 102] [local] [def]
!1156 = metadata !{i32 786449, metadata !1157, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1157 = metadata !{metadata !"libc/string/memrchr.c", metadata !"/home/user/uclibc"}
!1158 = metadata !{metadata !1159}
!1159 = metadata !{i32 786478, metadata !1157, metadata !1160, metadata !"memrchr", metadata !"memrchr", metadata !"", i32 14, metadata !1161, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memrchr, null, null, metadata !
!1160 = metadata !{i32 786473, metadata !1157}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/memrchr.c]
!1161 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1162, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1162 = metadata !{metadata !30, metadata !26, metadata !8, metadata !1163}
!1163 = metadata !{i32 786454, metadata !1157, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1164 = metadata !{i32 786449, metadata !1165, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1165 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/user/uclibc"}
!1166 = metadata !{metadata !1167}
!1167 = metadata !{i32 786478, metadata !1165, metadata !1168, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !1169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !
!1168 = metadata !{i32 786473, metadata !1165}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/mempcpy.c]
!1169 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1170, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1170 = metadata !{metadata !30, metadata !762, metadata !724, metadata !1171}
!1171 = metadata !{i32 786454, metadata !1165, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1172 = metadata !{i32 786449, metadata !1173, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1173 = metadata !{metadata !"libc/string/memchr.c", metadata !"/home/user/uclibc"}
!1174 = metadata !{metadata !1175}
!1175 = metadata !{i32 786478, metadata !1173, metadata !1176, metadata !"memchr", metadata !"memchr", metadata !"", i32 18, metadata !1177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memchr, null, null, metadata !2, 
!1176 = metadata !{i32 786473, metadata !1173}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/string/memchr.c]
!1177 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1178, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1178 = metadata !{metadata !30, metadata !26, metadata !8, metadata !1179}
!1179 = metadata !{i32 786454, metadata !1173, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1180 = metadata !{i32 786449, metadata !1181, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1181 = metadata !{metadata !"libc/stdio/fseeko.c", metadata !"/home/user/uclibc"}
!1182 = metadata !{metadata !1183}
!1183 = metadata !{i32 786478, metadata !1181, metadata !1184, metadata !"fseek", metadata !"fseek", metadata !"", i32 24, metadata !1185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.231*, i64, i32)* @fseek,
!1184 = metadata !{i32 786473, metadata !1181}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/fseeko.c]
!1185 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1186, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1186 = metadata !{metadata !8, metadata !1187, metadata !414, metadata !8}
!1187 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1188} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1188 = metadata !{i32 786454, metadata !1181, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1189} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1189 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1190, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1190 = metadata !{metadata !1191, metadata !1192, metadata !1193, metadata !1194, metadata !1195, metadata !1196, metadata !1197, metadata !1198, metadata !1199, metadata !1200, metadata !1202, metadata !1203}
!1191 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1192 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1193 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1194 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1195 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1196 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1197 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1198 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1199 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1200 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1201} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1189} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1202 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1203 = metadata !{i32 786445, metadata !177, metadata !1189, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1204} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1204 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1205} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1205 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1206, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1206 = metadata !{metadata !1207, metadata !1208}
!1207 = metadata !{i32 786445, metadata !202, metadata !1205, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1208 = metadata !{i32 786445, metadata !202, metadata !1205, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1209 = metadata !{i32 786449, metadata !1210, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1210 = metadata !{metadata !"libc/stdio/fseeko64.c", metadata !"/home/user/uclibc"}
!1211 = metadata !{metadata !1212}
!1212 = metadata !{i32 786478, metadata !1181, metadata !1184, metadata !"fseeko64", metadata !"fseeko64", metadata !"", i32 24, metadata !1213, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.231*, i64, i32)* @
!1213 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1214, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1214 = metadata !{metadata !8, metadata !1215, metadata !1237, metadata !8}
!1215 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1216} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1216 = metadata !{i32 786454, metadata !1181, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1217} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1217 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1218, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1218 = metadata !{metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1224, metadata !1225, metadata !1226, metadata !1227, metadata !1228, metadata !1230, metadata !1231}
!1219 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1220 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1221 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1222 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1223 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1224 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1225 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1226 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1227 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1228 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1229} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1230 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1231 = metadata !{i32 786445, metadata !177, metadata !1217, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1232} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1232 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1233} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1233 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1234, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1234 = metadata !{metadata !1235, metadata !1236}
!1235 = metadata !{i32 786445, metadata !202, metadata !1233, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1236 = metadata !{i32 786445, metadata !202, metadata !1233, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1237 = metadata !{i32 786454, metadata !1181, null, metadata !"__off64_t", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [__off64_t] [line 146, size 0, align 0, offset 0] [from long int]
!1238 = metadata !{i32 786449, metadata !1239, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1239 = metadata !{metadata !"libc/stdio/_adjust_pos.c", metadata !"/home/user/uclibc"}
!1240 = metadata !{metadata !1241}
!1241 = metadata !{i32 786478, metadata !1239, metadata !1242, metadata !"__stdio_adjust_position", metadata !"__stdio_adjust_position", metadata !"", i32 19, metadata !1243, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_
!1242 = metadata !{i32 786473, metadata !1239}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!1243 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1244, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1244 = metadata !{metadata !8, metadata !1245, metadata !1268}
!1245 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1246} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!1246 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1247} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1247 = metadata !{i32 786454, metadata !1239, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1248} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1248 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1249, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1249 = metadata !{metadata !1250, metadata !1251, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257, metadata !1258, metadata !1259, metadata !1261, metadata !1262}
!1250 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1251 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1252 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1253 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1254 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1255 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1256 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1257 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1258 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1259 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1260} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1260 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1248} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1261 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1262 = metadata !{i32 786445, metadata !177, metadata !1248, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1263} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1263 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1264} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1264 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1265, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1265 = metadata !{metadata !1266, metadata !1267}
!1266 = metadata !{i32 786445, metadata !202, metadata !1264, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1267 = metadata !{i32 786445, metadata !202, metadata !1264, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __offmax_t]
!1269 = metadata !{i32 786454, metadata !1239, null, metadata !"__offmax_t", i32 194, i64 0, i64 0, i64 0, i32 0, metadata !1270} ; [ DW_TAG_typedef ] [__offmax_t] [line 194, size 0, align 0, offset 0] [from __off64_t]
!1270 = metadata !{i32 786454, metadata !1239, null, metadata !"__off64_t", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [__off64_t] [line 146, size 0, align 0, offset 0] [from long int]
!1271 = metadata !{i32 786449, metadata !1272, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 fals
!1272 = metadata !{metadata !"libc/stdio/_cs_funcs.c", metadata !"/home/user/uclibc"}
!1273 = metadata !{metadata !1274}
!1274 = metadata !{i32 786478, metadata !1272, metadata !1275, metadata !"__stdio_seek", metadata !"__stdio_seek", metadata !"", i32 61, metadata !1276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.__STDIO_FILE_STRUCT.231*, i64*
!1275 = metadata !{i32 786473, metadata !1272}    ; [ DW_TAG_file_type ] [/home/user/uclibc/libc/stdio/_cs_funcs.c]
!1276 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1277, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1277 = metadata !{metadata !8, metadata !1278, metadata !1300, metadata !8}
!1278 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!1279 = metadata !{i32 786454, metadata !1272, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1280} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!1280 = metadata !{i32 786451, metadata !177, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !1281, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, o
!1281 = metadata !{metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290, metadata !1291, metadata !1293, metadata !1294}
!1282 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!1283 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !182} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!1284 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!1285 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!1286 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!1287 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!1288 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!1289 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!1290 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!1291 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !1292} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!1292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1280} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!1293 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!1294 = metadata !{i32 786445, metadata !177, metadata !1280, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !1295} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!1295 = metadata !{i32 786454, metadata !177, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1296} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!1296 = metadata !{i32 786451, metadata !202, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !1297, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!1297 = metadata !{metadata !1298, metadata !1299}
!1298 = metadata !{i32 786445, metadata !202, metadata !1296, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!1299 = metadata !{i32 786445, metadata !202, metadata !1296, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!1300 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1301} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __offmax_t]
!1301 = metadata !{i32 786454, metadata !1272, null, metadata !"__offmax_t", i32 194, i64 0, i64 0, i64 0, i32 0, metadata !1302} ; [ DW_TAG_typedef ] [__offmax_t] [line 194, size 0, align 0, offset 0] [from __off64_t]
!1302 = metadata !{i32 786454, metadata !1272, null, metadata !"__off64_t", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !414} ; [ DW_TAG_typedef ] [__off64_t] [line 146, size 0, align 0, offset 0] [from long int]
!1303 = metadata !{i32 786449, metadata !1304, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1304 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1305 = metadata !{metadata !1306, metadata !1312, metadata !1318}
!1306 = metadata !{i32 786478, metadata !1304, metadata !1307, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !1308, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1307 = metadata !{i32 786473, metadata !1304}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!1308 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1309, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1309 = metadata !{metadata !360, metadata !360}
!1310 = metadata !{metadata !1311}
!1311 = metadata !{i32 786689, metadata !1306, metadata !"d", metadata !1307, i32 16777227, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1312 = metadata !{i32 786478, metadata !1304, metadata !1307, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !1313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1313 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1314, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1314 = metadata !{metadata !1315, metadata !1315}
!1315 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!1316 = metadata !{metadata !1317}
!1317 = metadata !{i32 786689, metadata !1312, metadata !"f", metadata !1307, i32 16777231, metadata !1315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1318 = metadata !{i32 786478, metadata !1304, metadata !1307, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !1319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1320 = metadata !{metadata !362, metadata !362}
!1321 = metadata !{metadata !1322}
!1322 = metadata !{i32 786689, metadata !1318, metadata !"f", metadata !1307, i32 16777236, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1323 = metadata !{i32 786449, metadata !1324, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1324 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fenv.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1325 = metadata !{metadata !1326, metadata !1335}
!1326 = metadata !{i32 786436, metadata !1327, null, metadata !"KleeRoundingMode", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !1328, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KleeRoundingMode] [line 185, size 32, align 32, offset
!1327 = metadata !{metadata !"/home/user/klee/include/klee/klee.h", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1328 = metadata !{metadata !1329, metadata !1330, metadata !1331, metadata !1332, metadata !1333, metadata !1334}
!1329 = metadata !{i32 786472, metadata !"KLEE_FP_RNE", i64 0} ; [ DW_TAG_enumerator ] [KLEE_FP_RNE :: 0]
!1330 = metadata !{i32 786472, metadata !"KLEE_FP_RNA", i64 1} ; [ DW_TAG_enumerator ] [KLEE_FP_RNA :: 1]
!1331 = metadata !{i32 786472, metadata !"KLEE_FP_RU", i64 2} ; [ DW_TAG_enumerator ] [KLEE_FP_RU :: 2]
!1332 = metadata !{i32 786472, metadata !"KLEE_FP_RD", i64 3} ; [ DW_TAG_enumerator ] [KLEE_FP_RD :: 3]
!1333 = metadata !{i32 786472, metadata !"KLEE_FP_RZ", i64 4} ; [ DW_TAG_enumerator ] [KLEE_FP_RZ :: 4]
!1334 = metadata !{i32 786472, metadata !"KLEE_FP_UNKNOWN", i64 5} ; [ DW_TAG_enumerator ] [KLEE_FP_UNKNOWN :: 5]
!1335 = metadata !{i32 786436, metadata !1324, null, metadata !"", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !1336, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 15, size 32, align 32, offset 0] [def] [from ]
!1336 = metadata !{metadata !1337, metadata !1338, metadata !1339, metadata !1340, metadata !1341}
!1337 = metadata !{i32 786472, metadata !"FE_TONEAREST", i64 0} ; [ DW_TAG_enumerator ] [FE_TONEAREST :: 0]
!1338 = metadata !{i32 786472, metadata !"FE_DOWNWARD", i64 1024} ; [ DW_TAG_enumerator ] [FE_DOWNWARD :: 1024]
!1339 = metadata !{i32 786472, metadata !"FE_UPWARD", i64 2048} ; [ DW_TAG_enumerator ] [FE_UPWARD :: 2048]
!1340 = metadata !{i32 786472, metadata !"FE_TOWARDZERO", i64 3072} ; [ DW_TAG_enumerator ] [FE_TOWARDZERO :: 3072]
!1341 = metadata !{i32 786472, metadata !"FE_TONEAREST_TIES_TO_AWAY", i64 3073} ; [ DW_TAG_enumerator ] [FE_TONEAREST_TIES_TO_AWAY :: 3073]
!1342 = metadata !{metadata !1343, metadata !1347}
!1343 = metadata !{i32 786478, metadata !1324, metadata !1344, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_interna
!1344 = metadata !{i32 786473, metadata !1324}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!1345 = metadata !{metadata !1346}
!1346 = metadata !{i32 786688, metadata !1343, metadata !"rm", metadata !1344, i32 34, metadata !1326, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!1347 = metadata !{i32 786478, metadata !1324, metadata !1344, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !657, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_inte
!1348 = metadata !{metadata !1349}
!1349 = metadata !{i32 786689, metadata !1347, metadata !"rm", metadata !1344, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!1350 = metadata !{i32 786449, metadata !1351, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1351 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1352 = metadata !{metadata !1353}
!1353 = metadata !{i32 786436, metadata !1351, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !1354, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!1354 = metadata !{metadata !1355, metadata !1356, metadata !1357, metadata !1358, metadata !1359}
!1355 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!1356 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!1357 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!1358 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!1359 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!1360 = metadata !{metadata !1361, metadata !1367, metadata !1372, metadata !1377, metadata !1380, metadata !1383, metadata !1386, metadata !1389, metadata !1392}
!1361 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !1363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_
!1362 = metadata !{i32 786473, metadata !1351}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!1363 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1364, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1364 = metadata !{metadata !8, metadata !1315}
!1365 = metadata !{metadata !1366}
!1366 = metadata !{i32 786689, metadata !1361, metadata !"f", metadata !1362, i32 16777232, metadata !1315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!1367 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !1368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_i
!1368 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1369, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1369 = metadata !{metadata !8, metadata !360}
!1370 = metadata !{metadata !1371}
!1371 = metadata !{i32 786689, metadata !1367, metadata !"d", metadata !1362, i32 16777237, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!1372 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !1373, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_intern
!1373 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1374, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1374 = metadata !{metadata !8, metadata !362}
!1375 = metadata !{metadata !1376}
!1376 = metadata !{i32 786689, metadata !1372, metadata !"d", metadata !1362, i32 16777242, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!1377 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !1363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee
!1378 = metadata !{metadata !1379}
!1379 = metadata !{i32 786689, metadata !1377, metadata !"f", metadata !1362, i32 16777283, metadata !1315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!1380 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !1368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_
!1381 = metadata !{metadata !1382}
!1382 = metadata !{i32 786689, metadata !1380, metadata !"f", metadata !1362, i32 16777298, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!1383 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !1373, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @k
!1384 = metadata !{metadata !1385}
!1385 = metadata !{i32 786689, metadata !1383, metadata !"ld", metadata !1362, i32 16777314, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!1386 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !1363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_intern
!1387 = metadata !{metadata !1388}
!1388 = metadata !{i32 786689, metadata !1386, metadata !"f", metadata !1362, i32 16777330, metadata !1315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!1389 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !1368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_interna
!1390 = metadata !{metadata !1391}
!1391 = metadata !{i32 786689, metadata !1389, metadata !"f", metadata !1362, i32 16777335, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!1392 = metadata !{i32 786478, metadata !1351, metadata !1362, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !1373, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_int
!1393 = metadata !{metadata !1394}
!1394 = metadata !{i32 786689, metadata !1392, metadata !"f", metadata !1362, i32 16777340, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!1395 = metadata !{i32 786449, metadata !1396, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1396 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1397 = metadata !{metadata !1398}
!1398 = metadata !{i32 786478, metadata !1396, metadata !1399, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !1400, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_che
!1399 = metadata !{i32 786473, metadata !1396}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!1400 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1401, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1401 = metadata !{null, metadata !1402}
!1402 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!1403 = metadata !{metadata !1404}
!1404 = metadata !{i32 786689, metadata !1398, metadata !"z", metadata !1399, i32 16777228, metadata !1402, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!1405 = metadata !{i32 786449, metadata !1406, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1406 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1407 = metadata !{metadata !1408}
!1408 = metadata !{i32 786478, metadata !1406, metadata !1409, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !1410, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !1412, i3
!1409 = metadata !{i32 786473, metadata !1406}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!1410 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1411, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1411 = metadata !{metadata !8, metadata !13}
!1412 = metadata !{metadata !1413, metadata !1414}
!1413 = metadata !{i32 786689, metadata !1408, metadata !"name", metadata !1409, i32 16777229, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1414 = metadata !{i32 786688, metadata !1408, metadata !"x", metadata !1409, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1415 = metadata !{i32 786449, metadata !1416, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1416 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1417 = metadata !{metadata !1418}
!1418 = metadata !{i32 786478, metadata !1416, metadata !1419, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !1420, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overs
!1419 = metadata !{i32 786473, metadata !1416}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!1420 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1421, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1421 = metadata !{null, metadata !358, metadata !358}
!1422 = metadata !{metadata !1423, metadata !1424}
!1423 = metadata !{i32 786689, metadata !1418, metadata !"bitWidth", metadata !1419, i32 16777236, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!1424 = metadata !{i32 786689, metadata !1418, metadata !"shift", metadata !1419, i32 33554452, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!1425 = metadata !{i32 786449, metadata !1426, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1426 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1427 = metadata !{metadata !1428}
!1428 = metadata !{i32 786478, metadata !1426, metadata !1429, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !1430, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, me
!1429 = metadata !{i32 786473, metadata !1426}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!1430 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1431, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1431 = metadata !{metadata !8, metadata !8, metadata !8, metadata !13}
!1432 = metadata !{metadata !1433, metadata !1434, metadata !1435, metadata !1436}
!1433 = metadata !{i32 786689, metadata !1428, metadata !"start", metadata !1429, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!1434 = metadata !{i32 786689, metadata !1428, metadata !"end", metadata !1429, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!1435 = metadata !{i32 786689, metadata !1428, metadata !"name", metadata !1429, i32 50331661, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!1436 = metadata !{i32 786688, metadata !1428, metadata !"x", metadata !1429, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!1437 = metadata !{i32 786449, metadata !1438, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1438 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1439 = metadata !{metadata !1326}
!1440 = metadata !{metadata !1441}
!1441 = metadata !{i32 786478, metadata !1438, metadata !1442, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !1443, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_ro
!1442 = metadata !{i32 786473, metadata !1438}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!1443 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1444, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1444 = metadata !{null, metadata !1326}
!1445 = metadata !{metadata !1446}
!1446 = metadata !{i32 786689, metadata !1441, metadata !"rm", metadata !1442, i32 16777232, metadata !1326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!1447 = metadata !{i32 786449, metadata !1448, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1448 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1449 = metadata !{metadata !1450}
!1450 = metadata !{i32 786478, metadata !1448, metadata !1451, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !1452, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !1455
!1451 = metadata !{i32 786473, metadata !1448}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!1452 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1453, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1453 = metadata !{metadata !30, metadata !30, metadata !26, metadata !1454}
!1454 = metadata !{i32 786454, metadata !1448, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1455 = metadata !{metadata !1456, metadata !1457, metadata !1458, metadata !1459, metadata !1460}
!1456 = metadata !{i32 786689, metadata !1450, metadata !"destaddr", metadata !1451, i32 16777228, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!1457 = metadata !{i32 786689, metadata !1450, metadata !"srcaddr", metadata !1451, i32 33554444, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!1458 = metadata !{i32 786689, metadata !1450, metadata !"len", metadata !1451, i32 50331660, metadata !1454, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!1459 = metadata !{i32 786688, metadata !1450, metadata !"dest", metadata !1451, i32 13, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!1460 = metadata !{i32 786688, metadata !1450, metadata !"src", metadata !1451, i32 14, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!1461 = metadata !{i32 786449, metadata !1462, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1462 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1463 = metadata !{metadata !1464}
!1464 = metadata !{i32 786478, metadata !1462, metadata !1465, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !1466, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !1
!1465 = metadata !{i32 786473, metadata !1462}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!1466 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1467, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1467 = metadata !{metadata !30, metadata !30, metadata !26, metadata !1468}
!1468 = metadata !{i32 786454, metadata !1462, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1469 = metadata !{metadata !1470, metadata !1471, metadata !1472, metadata !1473, metadata !1474}
!1470 = metadata !{i32 786689, metadata !1464, metadata !"dst", metadata !1465, i32 16777228, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!1471 = metadata !{i32 786689, metadata !1464, metadata !"src", metadata !1465, i32 33554444, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!1472 = metadata !{i32 786689, metadata !1464, metadata !"count", metadata !1465, i32 50331660, metadata !1468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!1473 = metadata !{i32 786688, metadata !1464, metadata !"a", metadata !1465, i32 13, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!1474 = metadata !{i32 786688, metadata !1464, metadata !"b", metadata !1465, i32 14, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!1475 = metadata !{i32 786449, metadata !1476, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1476 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1477 = metadata !{metadata !1478}
!1478 = metadata !{i32 786478, metadata !1476, metadata !1479, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !1480, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !1
!1479 = metadata !{i32 786473, metadata !1476}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!1480 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1481, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1481 = metadata !{metadata !30, metadata !30, metadata !26, metadata !1482}
!1482 = metadata !{i32 786454, metadata !1476, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1483 = metadata !{metadata !1484, metadata !1485, metadata !1486, metadata !1487, metadata !1488}
!1484 = metadata !{i32 786689, metadata !1478, metadata !"destaddr", metadata !1479, i32 16777227, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!1485 = metadata !{i32 786689, metadata !1478, metadata !"srcaddr", metadata !1479, i32 33554443, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!1486 = metadata !{i32 786689, metadata !1478, metadata !"len", metadata !1479, i32 50331659, metadata !1482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!1487 = metadata !{i32 786688, metadata !1478, metadata !"dest", metadata !1479, i32 12, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!1488 = metadata !{i32 786688, metadata !1478, metadata !"src", metadata !1479, i32 13, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!1489 = metadata !{i32 786449, metadata !1490, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1490 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1491 = metadata !{metadata !1492}
!1492 = metadata !{i32 786478, metadata !1490, metadata !1493, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !1494, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !1497
!1493 = metadata !{i32 786473, metadata !1490}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!1494 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1495, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1495 = metadata !{metadata !30, metadata !30, metadata !8, metadata !1496}
!1496 = metadata !{i32 786454, metadata !1490, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1497 = metadata !{metadata !1498, metadata !1499, metadata !1500, metadata !1501}
!1498 = metadata !{i32 786689, metadata !1492, metadata !"dst", metadata !1493, i32 16777227, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!1499 = metadata !{i32 786689, metadata !1492, metadata !"s", metadata !1493, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!1500 = metadata !{i32 786689, metadata !1492, metadata !"count", metadata !1493, i32 50331659, metadata !1496, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!1501 = metadata !{i32 786688, metadata !1492, metadata !"a", metadata !1493, i32 12, metadata !1502, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!1502 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1503} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1503 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!1504 = metadata !{i32 786449, metadata !1505, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true,
!1505 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!1506 = metadata !{metadata !1507, metadata !1511, metadata !1514}
!1507 = metadata !{i32 786478, metadata !1505, metadata !1508, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !1308, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_
!1508 = metadata !{i32 786473, metadata !1505}    ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!1509 = metadata !{metadata !1510}
!1510 = metadata !{i32 786689, metadata !1507, metadata !"d", metadata !1508, i32 16777227, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!1511 = metadata !{i32 786478, metadata !1505, metadata !1508, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !1313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_
!1512 = metadata !{metadata !1513}
!1513 = metadata !{i32 786689, metadata !1511, metadata !"f", metadata !1508, i32 16777231, metadata !1315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!1514 = metadata !{i32 786478, metadata !1505, metadata !1508, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !1319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_int
!1515 = metadata !{metadata !1516}
!1516 = metadata !{i32 786689, metadata !1514, metadata !"f", metadata !1508, i32 16777236, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!1517 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!1518 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1519 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!1520 = metadata !{i32 80, i32 0, metadata !4, null}
!1521 = metadata !{i32 96, i32 0, metadata !10, null}
!1522 = metadata !{i32 69, i32 0, metadata !19, null}
!1523 = metadata !{i32 70, i32 0, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !17, metadata !19, i32 70, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1525 = metadata !{i32 71, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !17, metadata !1524, i32 70, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1527 = metadata !{i32 72, i32 0, metadata !1526, null}
!1528 = metadata !{i32 74, i32 0, metadata !1529, null}
!1529 = metadata !{i32 786443, metadata !17, metadata !19, i32 74, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1530 = metadata !{i32 75, i32 0, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !17, metadata !1529, i32 74, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1532 = metadata !{i32 76, i32 0, metadata !1531, null}
!1533 = metadata !{i32 77, i32 0, metadata !1531, null}
!1534 = metadata !{i32 79, i32 0, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !17, metadata !19, i32 79, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1536 = metadata !{i32 80, i32 0, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !17, metadata !1535, i32 79, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1538 = metadata !{i32 81, i32 0, metadata !1537, null}
!1539 = metadata !{i32 82, i32 0, metadata !1537, null}
!1540 = metadata !{i32 84, i32 0, metadata !1541, null}
!1541 = metadata !{i32 786443, metadata !17, metadata !19, i32 84, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1542 = metadata !{i32 85, i32 0, metadata !1543, null}
!1543 = metadata !{i32 786443, metadata !17, metadata !1541, i32 84, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1544 = metadata !{i32 86, i32 0, metadata !1543, null}
!1545 = metadata !{i32 89, i32 0, metadata !19, null}
!1546 = metadata !{i32 91, i32 0, metadata !1547, null}
!1547 = metadata !{i32 786443, metadata !17, metadata !19, i32 91, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1548 = metadata !{i32 93, i32 0, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !17, metadata !1547, i32 91, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1550 = metadata !{i32 94, i32 0, metadata !1549, null}
!1551 = metadata !{i32 95, i32 0, metadata !1549, null}
!1552 = metadata !{i32 97, i32 0, metadata !19, null}
!1553 = metadata !{i32 98, i32 0, metadata !1554, null}
!1554 = metadata !{i32 786443, metadata !17, metadata !19, i32 98, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1555 = metadata !{i32 99, i32 0, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !17, metadata !1554, i32 98, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/unixfilemap.c]
!1557 = metadata !{i32 100, i32 0, metadata !1556, null}
!1558 = metadata !{i32 101, i32 0, metadata !1556, null}
!1559 = metadata !{i32 103, i32 0, metadata !19, null}
!1560 = metadata !{i32 104, i32 0, metadata !19, null}
!1561 = metadata !{i32 105, i32 0, metadata !19, null}
!1562 = metadata !{i32 106, i32 0, metadata !19, null}
!1563 = metadata !{i32 107, i32 0, metadata !19, null}
!1564 = metadata !{i32 255, i32 0, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !34, metadata !90, i32 255, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1566 = metadata !{i32 256, i32 0, metadata !1567, null}
!1567 = metadata !{i32 786443, metadata !34, metadata !1565, i32 255, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1568 = metadata !{i32 257, i32 0, metadata !1567, null}
!1569 = metadata !{i32 260, i32 0, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !34, metadata !90, i32 260, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1571 = metadata !{i32 261, i32 0, metadata !1570, null}
!1572 = metadata !{i32 264, i32 0, metadata !1573, null}
!1573 = metadata !{i32 786443, metadata !34, metadata !90, i32 264, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1574 = metadata !{i32 267, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !34, metadata !1573, i32 264, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1576 = metadata !{i32 268, i32 0, metadata !1575, null}
!1577 = metadata !{i32 269, i32 0, metadata !1575, null}
!1578 = metadata !{i32 270, i32 0, metadata !1575, null}
!1579 = metadata !{i32 272, i32 0, metadata !1580, null}
!1580 = metadata !{i32 786443, metadata !34, metadata !1575, i32 270, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1581 = metadata !{i32 273, i32 0, metadata !1580, null}
!1582 = metadata !{i32 275, i32 0, metadata !1580, null}
!1583 = metadata !{i32 279, i32 0, metadata !1580, null}
!1584 = metadata !{i32 280, i32 0, metadata !1580, null}
!1585 = metadata !{i32 283, i32 0, metadata !1573, null}
!1586 = metadata !{i32 284, i32 0, metadata !90, null}
!1587 = metadata !{i32 163, i32 0, metadata !119, null}
!1588 = metadata !{i32 167, i32 0, metadata !119, null}
!1589 = metadata !{i32 168, i32 0, metadata !119, null}
!1590 = metadata !{i32 169, i32 0, metadata !119, null}
!1591 = metadata !{i32 170, i32 0, metadata !119, null}
!1592 = metadata !{i32 171, i32 0, metadata !119, null}
!1593 = metadata !{i32 172, i32 0, metadata !119, null}
!1594 = metadata !{i32 174, i32 0, metadata !1595, null}
!1595 = metadata !{i32 786443, metadata !34, metadata !119, i32 172, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1596 = metadata !{i32 175, i32 0, metadata !1595, null}
!1597 = metadata !{i32 177, i32 0, metadata !1595, null}
!1598 = metadata !{i32 181, i32 0, metadata !1595, null}
!1599 = metadata !{i32 182, i32 0, metadata !1595, null}
!1600 = metadata !{i32 184, i32 0, metadata !119, null}
!1601 = metadata !{i32 185, i32 0, metadata !119, null}
!1602 = metadata !{i32 186, i32 0, metadata !119, null}
!1603 = metadata !{i32 241, i32 0, metadata !111, null}
!1604 = metadata !{i32 243, i32 0, metadata !111, null}
!1605 = metadata !{i32 244, i32 0, metadata !111, null}
!1606 = metadata !{i32 245, i32 0, metadata !111, null}
!1607 = metadata !{i32 246, i32 0, metadata !111, null}
!1608 = metadata !{i32 247, i32 0, metadata !111, null}
!1609 = metadata !{i32 248, i32 0, metadata !111, null}
!1610 = metadata !{i32 110, i32 0, metadata !107, null}
!1611 = metadata !{i32 111, i32 0, metadata !107, null}
!1612 = metadata !{i32 112, i32 0, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !34, metadata !107, i32 112, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1614 = metadata !{i32 113, i32 0, metadata !1615, null}
!1615 = metadata !{i32 786443, metadata !34, metadata !1613, i32 112, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1616 = metadata !{i32 114, i32 0, metadata !1615, null}
!1617 = metadata !{i32 115, i32 0, metadata !1615, null}
!1618 = metadata !{i32 116, i32 0, metadata !1613, null}
!1619 = metadata !{i32 117, i32 0, metadata !107, null}
!1620 = metadata !{i32 192, i32 0, metadata !101, null}
!1621 = metadata !{i32 194, i32 0, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !34, metadata !101, i32 194, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1623 = metadata !{i32 195, i32 0, metadata !1624, null}
!1624 = metadata !{i32 786443, metadata !34, metadata !1622, i32 194, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1625 = metadata !{i32 196, i32 0, metadata !1626, null}
!1626 = metadata !{i32 786443, metadata !34, metadata !1624, i32 196, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1627 = metadata !{i32 197, i32 0, metadata !1628, null}
!1628 = metadata !{i32 786443, metadata !34, metadata !1626, i32 196, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1629 = metadata !{i32 198, i32 0, metadata !1628, null}
!1630 = metadata !{i32 203, i32 0, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !34, metadata !1632, i32 201, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1632 = metadata !{i32 786443, metadata !34, metadata !101, i32 201, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1633 = metadata !{i32 204, i32 0, metadata !1634, null}
!1634 = metadata !{i32 786443, metadata !34, metadata !1631, i32 204, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1635 = metadata !{i32 205, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !34, metadata !1637, i32 205, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1637 = metadata !{i32 786443, metadata !34, metadata !1634, i32 204, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1638 = metadata !{i32 206, i32 0, metadata !1636, null}
!1639 = metadata !{i32 207, i32 0, metadata !1637, null}
!1640 = metadata !{i32 209, i32 0, metadata !1637, null}
!1641 = metadata !{i32 211, i32 0, metadata !1631, null}
!1642 = metadata !{i32 212, i32 0, metadata !1643, null}
!1643 = metadata !{i32 786443, metadata !34, metadata !1631, i32 212, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1644 = metadata !{i32 213, i32 0, metadata !1645, null}
!1645 = metadata !{i32 786443, metadata !34, metadata !1643, i32 212, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1646 = metadata !{i32 214, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !34, metadata !1645, i32 214, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1648 = metadata !{i32 215, i32 0, metadata !1647, null}
!1649 = metadata !{i32 216, i32 0, metadata !1645, null}
!1650 = metadata !{i32 218, i32 0, metadata !1651, null}
!1651 = metadata !{i32 786443, metadata !34, metadata !1631, i32 218, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1652 = metadata !{i32 219, i32 0, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !34, metadata !1651, i32 218, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1654 = metadata !{i32 220, i32 0, metadata !1655, null}
!1655 = metadata !{i32 786443, metadata !34, metadata !1653, i32 220, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1656 = metadata !{i32 221, i32 0, metadata !1655, null}
!1657 = metadata !{i32 222, i32 0, metadata !1653, null}
!1658 = metadata !{i32 224, i32 0, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !34, metadata !1631, i32 224, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1660 = metadata !{i32 225, i32 0, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !34, metadata !1662, i32 225, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1662 = metadata !{i32 786443, metadata !34, metadata !1659, i32 224, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1663 = metadata !{i32 226, i32 0, metadata !1661, null}
!1664 = metadata !{i32 231, i32 0, metadata !101, null}
!1665 = metadata !{i32 232, i32 0, metadata !101, null}
!1666 = metadata !{i32 93, i32 0, metadata !104, null}
!1667 = metadata !{i32 94, i32 0, metadata !104, null}
!1668 = metadata !{i32 95, i32 0, metadata !1669, null}
!1669 = metadata !{i32 786443, metadata !34, metadata !104, i32 95, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1670 = metadata !{i32 96, i32 0, metadata !1669, null}
!1671 = metadata !{i32 99, i32 0, metadata !1669, null}
!1672 = metadata !{i32 100, i32 0, metadata !1669, null}
!1673 = metadata !{i32 102, i32 0, metadata !1669, null}
!1674 = metadata !{i32 104, i32 0, metadata !104, null}
!1675 = metadata !{i32 132, i32 0, metadata !114, null}
!1676 = metadata !{i32 133, i32 0, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !34, metadata !114, i32 133, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1678 = metadata !{i32 139, i32 0, metadata !1677, null}
!1679 = metadata !{i32 140, i32 0, metadata !114, null}
!1680 = metadata !{i32 142, i32 0, metadata !1681, null}
!1681 = metadata !{i32 786443, metadata !34, metadata !114, i32 142, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1682 = metadata !{i32 143, i32 0, metadata !1681, null}
!1683 = metadata !{i32 144, i32 0, metadata !114, null}
!1684 = metadata !{i32 145, i32 0, metadata !114, null}
!1685 = metadata !{i32 146, i32 0, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !34, metadata !114, i32 146, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlfile.c]
!1687 = metadata !{i32 147, i32 0, metadata !1686, null}
!1688 = metadata !{i32 152, i32 0, metadata !114, null}
!1689 = metadata !{i32 153, i32 0, metadata !114, null}
!1690 = metadata !{i32 154, i32 0, metadata !114, null}
!1691 = metadata !{i32 123, i32 0, metadata !137, null}
!1692 = metadata !{i32 124, i32 0, metadata !137, null}
!1693 = metadata !{i32 125, i32 0, metadata !137, null}
!1694 = metadata !{i32 126, i32 0, metadata !1695, null}
!1695 = metadata !{i32 786443, metadata !123, metadata !137, i32 126, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1696 = metadata !{i32 127, i32 0, metadata !1695, null}
!1697 = metadata !{i32 128, i32 0, metadata !1698, null}
!1698 = metadata !{i32 786443, metadata !123, metadata !1695, i32 128, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1699 = metadata !{i32 130, i32 0, metadata !137, null}
!1700 = metadata !{i32 131, i32 0, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !123, metadata !137, i32 131, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1702 = metadata !{i32 133, i32 0, metadata !137, null}
!1703 = metadata !{i32 140, i32 0, metadata !137, null}
!1704 = metadata !{i32 141, i32 0, metadata !137, null}
!1705 = metadata !{i32 142, i32 0, metadata !1706, null}
!1706 = metadata !{i32 786443, metadata !123, metadata !1707, i32 142, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1707 = metadata !{i32 786443, metadata !123, metadata !137, i32 141, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1708 = metadata !{i32 143, i32 0, metadata !1709, null}
!1709 = metadata !{i32 786443, metadata !123, metadata !1706, i32 142, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1710 = metadata !{i32 144, i32 0, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !123, metadata !1709, i32 144, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1712 = metadata !{i32 145, i32 0, metadata !1713, null}
!1713 = metadata !{i32 786443, metadata !123, metadata !1711, i32 144, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1714 = metadata !{i32 146, i32 0, metadata !1715, null}
!1715 = metadata !{i32 786443, metadata !123, metadata !1713, i32 146, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1716 = metadata !{i32 147, i32 0, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !123, metadata !1715, i32 146, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1718 = metadata !{i32 148, i32 0, metadata !1719, null}
!1719 = metadata !{i32 786443, metadata !123, metadata !1717, i32 148, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1720 = metadata !{i32 149, i32 0, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !123, metadata !1719, i32 148, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1722 = metadata !{i32 150, i32 0, metadata !1723, null}
!1723 = metadata !{i32 786443, metadata !123, metadata !1721, i32 150, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1724 = metadata !{i32 151, i32 0, metadata !1725, null}
!1725 = metadata !{i32 786443, metadata !123, metadata !1723, i32 150, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1726 = metadata !{i32 152, i32 0, metadata !1727, null}
!1727 = metadata !{i32 786443, metadata !123, metadata !1728, i32 152, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1728 = metadata !{i32 786443, metadata !123, metadata !1725, i32 151, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1729 = metadata !{i32 153, i32 0, metadata !1727, null}
!1730 = metadata !{i32 154, i32 0, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !123, metadata !1728, i32 154, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1732 = metadata !{i32 155, i32 0, metadata !1733, null}
!1733 = metadata !{i32 786443, metadata !123, metadata !1731, i32 154, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1734 = metadata !{i32 156, i32 0, metadata !1733, null}
!1735 = metadata !{i32 158, i32 0, metadata !1728, null}
!1736 = metadata !{i32 159, i32 0, metadata !1728, null}
!1737 = metadata !{i32 160, i32 0, metadata !1725, null}
!1738 = metadata !{i32 169, i32 0, metadata !1721, null}
!1739 = metadata !{i32 162, i32 0, metadata !1740, null}
!1740 = metadata !{i32 786443, metadata !123, metadata !1741, i32 162, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1741 = metadata !{i32 786443, metadata !123, metadata !1723, i32 161, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1742 = metadata !{i32 164, i32 0, metadata !1741, null}
!1743 = metadata !{i32 165, i32 0, metadata !1741, null}
!1744 = metadata !{i32 166, i32 0, metadata !1741, null}
!1745 = metadata !{i32 167, i32 0, metadata !1741, null}
!1746 = metadata !{i32 176, i32 0, metadata !137, null}
!1747 = metadata !{i32 42, i32 0, metadata !126, null}
!1748 = metadata !{i32 43, i32 0, metadata !126, null}
!1749 = metadata !{i32 44, i32 0, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !123, metadata !126, i32 44, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1751 = metadata !{i32 45, i32 0, metadata !1752, null}
!1752 = metadata !{i32 786443, metadata !123, metadata !1750, i32 44, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1753 = metadata !{i32 47, i32 0, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !123, metadata !1755, i32 47, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1755 = metadata !{i32 786443, metadata !123, metadata !1752, i32 45, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1756 = metadata !{i32 48, i32 0, metadata !1754, null}
!1757 = metadata !{i32 49, i32 0, metadata !1755, null}
!1758 = metadata !{i32 54, i32 0, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !123, metadata !1755, i32 54, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1760 = metadata !{i32 55, i32 0, metadata !1759, null}
!1761 = metadata !{i32 58, i32 0, metadata !1762, null} ; [ DW_TAG_imported_module ]
!1762 = metadata !{i32 786443, metadata !123, metadata !1755, i32 58, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1763 = metadata !{i32 59, i32 0, metadata !1762, null}
!1764 = metadata !{i32 60, i32 0, metadata !1765, null}
!1765 = metadata !{i32 786443, metadata !123, metadata !1755, i32 60, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1766 = metadata !{i32 61, i32 0, metadata !1765, null}
!1767 = metadata !{i32 64, i32 0, metadata !1768, null}
!1768 = metadata !{i32 786443, metadata !123, metadata !1755, i32 64, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1769 = metadata !{i32 65, i32 0, metadata !1768, null}
!1770 = metadata !{i32 66, i32 0, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !123, metadata !1768, i32 66, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1772 = metadata !{i32 67, i32 0, metadata !1771, null}
!1773 = metadata !{i32 72, i32 0, metadata !1774, null}
!1774 = metadata !{i32 786443, metadata !123, metadata !1755, i32 72, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1775 = metadata !{i32 73, i32 0, metadata !1774, null}
!1776 = metadata !{i32 74, i32 0, metadata !1777, null}
!1777 = metadata !{i32 786443, metadata !123, metadata !1755, i32 74, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1778 = metadata !{i32 75, i32 0, metadata !1777, null}
!1779 = metadata !{i32 78, i32 0, metadata !1755, null}
!1780 = metadata !{i32 79, i32 0, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !123, metadata !1755, i32 79, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1782 = metadata !{i32 80, i32 0, metadata !1781, null}
!1783 = metadata !{i32 83, i32 0, metadata !1755, null}
!1784 = metadata !{i32 85, i32 0, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !123, metadata !1755, i32 83, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1786 = metadata !{i32 86, i32 0, metadata !1785, null}
!1787 = metadata !{i32 88, i32 0, metadata !1785, null}
!1788 = metadata !{i32 90, i32 0, metadata !1785, null}
!1789 = metadata !{i32 91, i32 0, metadata !1785, null}
!1790 = metadata !{i32 92, i32 0, metadata !1785, null}
!1791 = metadata !{i32 96, i32 0, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !123, metadata !1755, i32 96, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1793 = metadata !{i32 97, i32 0, metadata !1794, null}
!1794 = metadata !{i32 786443, metadata !123, metadata !1792, i32 96, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1795 = metadata !{i32 98, i32 0, metadata !1794, null}
!1796 = metadata !{i32 99, i32 0, metadata !1794, null}
!1797 = metadata !{i32 102, i32 0, metadata !1752, null}
!1798 = metadata !{i32 103, i32 0, metadata !1752, null}
!1799 = metadata !{i32 105, i32 0, metadata !126, null}
!1800 = metadata !{i32 111, i32 0, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !123, metadata !141, i32 111, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1802 = metadata !{i32 112, i32 0, metadata !1801, null}
!1803 = metadata !{i32 113, i32 0, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !123, metadata !141, i32 113, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1805 = metadata !{i32 114, i32 0, metadata !1806, null}
!1806 = metadata !{i32 786443, metadata !123, metadata !1804, i32 114, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlmime.c]
!1807 = metadata !{i32 115, i32 0, metadata !1806, null}
!1808 = metadata !{i32 116, i32 0, metadata !141, null}
!1809 = metadata !{i32 117, i32 0, metadata !141, null}
!1810 = metadata !{i32 9, i32 0, metadata !155, null}
!1811 = metadata !{i32 10, i32 0, metadata !155, null}
!1812 = metadata !{i32 11, i32 0, metadata !155, null}
!1813 = metadata !{i32 15, i32 0, metadata !1814, null}
!1814 = metadata !{i32 786443, metadata !153, metadata !155, i32 15, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlwf_harness.c]
!1815 = metadata !{i32 16, i32 0, metadata !1816, null}
!1816 = metadata !{i32 786443, metadata !153, metadata !1814, i32 15, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/libexpat/expat/xmlwf/xmlwf_harness.c]
!1817 = metadata !{i32 17, i32 0, metadata !1816, null}
!1818 = metadata !{i32 18, i32 0, metadata !1816, null}
!1819 = metadata !{i32 21, i32 0, metadata !155, null}
!1820 = metadata !{i32 26, i32 0, metadata !162, null}
!1821 = metadata !{i32 27, i32 0, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !160, metadata !162, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/perror.c]
!1823 = metadata !{i32 28, i32 0, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !160, metadata !1822, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/perror.c]
!1825 = metadata !{i32 29, i32 0, metadata !1824, null}
!1826 = metadata !{i32 36, i32 0, metadata !1827, null}
!1827 = metadata !{i32 786443, metadata !160, metadata !162, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/perror.c]
!1828 = metadata !{i32 37, i32 0, metadata !1827, null}
!1829 = metadata !{i32 40, i32 0, metadata !162, null}
!1830 = metadata !{i32 19, i32 0, metadata !169, null}
!1831 = metadata !{i32 33, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !167, metadata !169, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fprintf.c]
!1833 = metadata !{i32 35, i32 0, metadata !1834, null}
!1834 = metadata !{i32 786443, metadata !167, metadata !1832, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fprintf.c]
!1835 = metadata !{i32 36, i32 0, metadata !1834, null}
!1836 = metadata !{i32 37, i32 0, metadata !1837, null}
!1837 = metadata !{i32 786443, metadata !167, metadata !1832, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fprintf.c]
!1838 = metadata !{i32 39, i32 0, metadata !169, null}
!1839 = metadata !{i32 41, i32 0, metadata !169, null}
!1840 = metadata !{i32 258, i32 0, metadata !1841, null}
!1841 = metadata !{i32 786443, metadata !208, metadata !210, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_stdio.c]
!1842 = metadata !{i32 261, i32 0, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !208, metadata !1844, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_stdio.c]
!1844 = metadata !{i32 786443, metadata !208, metadata !1841, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_stdio.c]
!1845 = metadata !{i32 262, i32 0, metadata !1846, null}
!1846 = metadata !{i32 786443, metadata !208, metadata !1843, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_stdio.c]
!1847 = metadata !{i32 263, i32 0, metadata !1846, null}
!1848 = metadata !{i32 274, i32 0, metadata !210, null}
!1849 = metadata !{i32 280, i32 0, metadata !214, null}
!1850 = metadata !{i32 282, i32 0, metadata !214, null}
!1851 = metadata !{i32 283, i32 0, metadata !214, null}
!1852 = metadata !{i32 284, i32 0, metadata !214, null}
!1853 = metadata !{i32 291, i32 0, metadata !214, null}
!1854 = metadata !{i32 23, i32 0, metadata !1855, null}
!1855 = metadata !{i32 786443, metadata !249, metadata !251, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_wcommit.c]
!1856 = metadata !{i32 24, i32 0, metadata !1857, null}
!1857 = metadata !{i32 786443, metadata !249, metadata !1855, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_wcommit.c]
!1858 = metadata !{i32 25, i32 0, metadata !1857, null}
!1859 = metadata !{i32 26, i32 0, metadata !1857, null}
!1860 = metadata !{i32 28, i32 0, metadata !251, null}
!1861 = metadata !{i32 1875, i32 0, metadata !402, null}
!1862 = metadata !{i32 1876, i32 0, metadata !402, null}
!1863 = metadata !{i32 1878, i32 0, metadata !1864, null}
!1864 = metadata !{i32 786443, metadata !283, metadata !402, i32 1878, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1865 = metadata !{i32 1881, i32 0, metadata !1864, null}
!1866 = metadata !{i32 1887, i32 0, metadata !1867, null}
!1867 = metadata !{i32 786443, metadata !283, metadata !1864, i32 1886, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1868 = metadata !{i32 1888, i32 0, metadata !1867, null}
!1869 = metadata !{i32 1888, i32 0, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !283, metadata !1864, i32 1888, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1871 = metadata !{i32 1889, i32 0, metadata !1872, null}
!1872 = metadata !{i32 786443, metadata !283, metadata !1870, i32 1888, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1873 = metadata !{i32 1894, i32 0, metadata !1872, null}
!1874 = metadata !{i32 1895, i32 0, metadata !1872, null}
!1875 = metadata !{i32 1896, i32 0, metadata !1876, null}
!1876 = metadata !{i32 786443, metadata !283, metadata !1870, i32 1895, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1877 = metadata !{i32 1898, i32 0, metadata !1876, null}
!1878 = metadata !{i32 1899, i32 0, metadata !1879, null}
!1879 = metadata !{i32 786443, metadata !283, metadata !1876, i32 1898, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1880 = metadata !{i32 1900, i32 0, metadata !1881, null}
!1881 = metadata !{i32 786443, metadata !283, metadata !1879, i32 1899, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1882 = metadata !{i32 1901, i32 0, metadata !1881, null}
!1883 = metadata !{i32 1903, i32 0, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !283, metadata !1879, i32 1903, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1885 = metadata !{i32 1904, i32 0, metadata !1886, null}
!1886 = metadata !{i32 786443, metadata !283, metadata !1887, i32 1904, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1887 = metadata !{i32 786443, metadata !283, metadata !1884, i32 1903, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1888 = metadata !{i32 1905, i32 0, metadata !1889, null}
!1889 = metadata !{i32 786443, metadata !283, metadata !1886, i32 1904, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1890 = metadata !{i32 1906, i32 0, metadata !1889, null}
!1891 = metadata !{i32 1908, i32 0, metadata !1887, null}
!1892 = metadata !{i32 1909, i32 0, metadata !1887, null}
!1893 = metadata !{i32 1911, i32 0, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !283, metadata !1879, i32 1911, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1895 = metadata !{i32 1915, i32 0, metadata !1896, null}
!1896 = metadata !{i32 786443, metadata !283, metadata !1879, i32 1915, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1897 = metadata !{i32 1917, i32 0, metadata !1898, null}
!1898 = metadata !{i32 786443, metadata !283, metadata !1896, i32 1915, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1899 = metadata !{i32 1919, i32 0, metadata !1900, null}
!1900 = metadata !{i32 786443, metadata !283, metadata !1898, i32 1919, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1901 = metadata !{i32 1920, i32 0, metadata !1902, null}
!1902 = metadata !{i32 786443, metadata !283, metadata !1900, i32 1919, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1903 = metadata !{i32 1921, i32 0, metadata !1902, null}
!1904 = metadata !{i32 1923, i32 0, metadata !1898, null}
!1905 = metadata !{i32 1924, i32 0, metadata !1898, null}
!1906 = metadata !{i32 1925, i32 0, metadata !1907, null}
!1907 = metadata !{i32 786443, metadata !283, metadata !1896, i32 1924, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1908 = metadata !{i32 1926, i32 0, metadata !1907, null}
!1909 = metadata !{i32 1930, i32 0, metadata !1876, null}
!1910 = metadata !{i32 1939, i32 0, metadata !402, null}
!1911 = metadata !{i32 1464, i32 0, metadata !284, null}
!1912 = metadata !{i32 1477, i32 0, metadata !284, null}
!1913 = metadata !{i32 1478, i32 0, metadata !284, null}
!1914 = metadata !{i32 1479, i32 0, metadata !284, null}
!1915 = metadata !{i32 1490, i32 0, metadata !284, null}
!1916 = metadata !{i32 1496, i32 0, metadata !284, null}
!1917 = metadata !{i32 1498, i32 0, metadata !284, null}
!1918 = metadata !{i32 1510, i32 0, metadata !1919, null}
!1919 = metadata !{i32 786443, metadata !283, metadata !284, i32 1509, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1920 = metadata !{i32 1513, i32 0, metadata !1921, null}
!1921 = metadata !{i32 786443, metadata !283, metadata !1919, i32 1513, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1922 = metadata !{i32 1514, i32 0, metadata !1923, null}
!1923 = metadata !{i32 786443, metadata !283, metadata !1921, i32 1513, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1924 = metadata !{i32 1515, i32 0, metadata !1923, null}
!1925 = metadata !{i32 1517, i32 0, metadata !1926, null}
!1926 = metadata !{i32 786443, metadata !283, metadata !1919, i32 1517, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1927 = metadata !{i32 1518, i32 0, metadata !1928, null}
!1928 = metadata !{i32 786443, metadata !283, metadata !1926, i32 1517, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1929 = metadata !{i32 1523, i32 0, metadata !1930, null}
!1930 = metadata !{i32 786443, metadata !283, metadata !284, i32 1522, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1931 = metadata !{i32 1525, i32 0, metadata !1932, null}
!1932 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1525, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1933 = metadata !{i32 1526, i32 0, metadata !1934, null}
!1934 = metadata !{i32 786443, metadata !283, metadata !1932, i32 1525, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1935 = metadata !{i32 1529, i32 0, metadata !1934, null}
!1936 = metadata !{i32 1531, i32 0, metadata !1937, null}
!1937 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1531, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1938 = metadata !{i32 1532, i32 0, metadata !1939, null}
!1939 = metadata !{i32 786443, metadata !283, metadata !1937, i32 1531, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1940 = metadata !{i32 1539, i32 0, metadata !1941, null}
!1941 = metadata !{i32 786443, metadata !283, metadata !1939, i32 1539, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1942 = metadata !{i32 1540, i32 0, metadata !1943, null}
!1943 = metadata !{i32 786443, metadata !283, metadata !1944, i32 1540, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1944 = metadata !{i32 786443, metadata !283, metadata !1941, i32 1539, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1945 = metadata !{i32 1541, i32 0, metadata !1946, null}
!1946 = metadata !{i32 786443, metadata !283, metadata !1943, i32 1540, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1947 = metadata !{i32 1542, i32 0, metadata !1946, null}
!1948 = metadata !{i32 1543, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !283, metadata !1944, i32 1543, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1950 = metadata !{i32 1544, i32 0, metadata !1951, null}
!1951 = metadata !{i32 786443, metadata !283, metadata !1949, i32 1543, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1952 = metadata !{i32 1545, i32 0, metadata !1951, null}
!1953 = metadata !{i32 1548, i32 0, metadata !1954, null}
!1954 = metadata !{i32 786443, metadata !283, metadata !1939, i32 1548, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1955 = metadata !{i32 1549, i32 0, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !283, metadata !1957, i32 1549, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1957 = metadata !{i32 786443, metadata !283, metadata !1954, i32 1548, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1958 = metadata !{i32 1550, i32 0, metadata !1959, null}
!1959 = metadata !{i32 786443, metadata !283, metadata !1956, i32 1549, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1960 = metadata !{i32 1551, i32 0, metadata !1959, null}
!1961 = metadata !{i32 1552, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !283, metadata !1957, i32 1552, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1963 = metadata !{i32 1553, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !283, metadata !1962, i32 1552, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1965 = metadata !{i32 1554, i32 0, metadata !1964, null}
!1966 = metadata !{i32 1557, i32 0, metadata !1967, null}
!1967 = metadata !{i32 786443, metadata !283, metadata !1954, i32 1556, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1968 = metadata !{i32 1559, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !283, metadata !1939, i32 1559, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1970 = metadata !{i32 1560, i32 0, metadata !1971, null}
!1971 = metadata !{i32 786443, metadata !283, metadata !1969, i32 1559, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1972 = metadata !{i32 1561, i32 0, metadata !1971, null}
!1973 = metadata !{i32 1567, i32 0, metadata !1939, null}
!1974 = metadata !{i32 1569, i32 0, metadata !1939, null}
!1975 = metadata !{i32 1571, i32 0, metadata !1976, null}
!1976 = metadata !{i32 786443, metadata !283, metadata !1939, i32 1571, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1977 = metadata !{i32 1572, i32 0, metadata !1978, null}
!1978 = metadata !{i32 786443, metadata !283, metadata !1979, i32 1572, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1979 = metadata !{i32 786443, metadata !283, metadata !1976, i32 1571, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1980 = metadata !{i32 1573, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !283, metadata !1978, i32 1572, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1982 = metadata !{i32 1574, i32 0, metadata !1981, null}
!1983 = metadata !{i32 1575, i32 0, metadata !1981, null}
!1984 = metadata !{i32 1576, i32 0, metadata !1981, null}
!1985 = metadata !{i32 1576, i32 0, metadata !1986, null}
!1986 = metadata !{i32 786443, metadata !283, metadata !1978, i32 1576, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1987 = metadata !{i32 1577, i32 0, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !283, metadata !1986, i32 1576, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1989 = metadata !{i32 1578, i32 0, metadata !1988, null}
!1990 = metadata !{i32 1578, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !283, metadata !1986, i32 1578, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1992 = metadata !{i32 1579, i32 0, metadata !1993, null}
!1993 = metadata !{i32 786443, metadata !283, metadata !1991, i32 1578, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1994 = metadata !{i32 1580, i32 0, metadata !1993, null}
!1995 = metadata !{i32 1582, i32 0, metadata !1939, null}
!1996 = metadata !{i32 1590, i32 0, metadata !1939, null}
!1997 = metadata !{i32 1591, i32 0, metadata !1998, null}
!1998 = metadata !{i32 786443, metadata !283, metadata !1939, i32 1591, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!1999 = metadata !{i32 1592, i32 0, metadata !2000, null}
!2000 = metadata !{i32 786443, metadata !283, metadata !2001, i32 1592, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2001 = metadata !{i32 786443, metadata !283, metadata !1998, i32 1591, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2002 = metadata !{i32 1593, i32 0, metadata !2003, null}
!2003 = metadata !{i32 786443, metadata !283, metadata !2000, i32 1592, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2004 = metadata !{i32 1594, i32 0, metadata !2003, null}
!2005 = metadata !{i32 1595, i32 0, metadata !2006, null}
!2006 = metadata !{i32 786443, metadata !283, metadata !2001, i32 1595, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2007 = metadata !{i32 1596, i32 0, metadata !2008, null}
!2008 = metadata !{i32 786443, metadata !283, metadata !2006, i32 1595, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2009 = metadata !{i32 1597, i32 0, metadata !2008, null}
!2010 = metadata !{i32 1598, i32 0, metadata !2011, null}
!2011 = metadata !{i32 786443, metadata !283, metadata !2001, i32 1598, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2012 = metadata !{i32 1599, i32 0, metadata !2013, null}
!2013 = metadata !{i32 786443, metadata !283, metadata !2011, i32 1598, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2014 = metadata !{i32 1600, i32 0, metadata !2013, null}
!2015 = metadata !{i32 1602, i32 0, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !283, metadata !1939, i32 1602, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2017 = metadata !{i32 1603, i32 0, metadata !2018, null}
!2018 = metadata !{i32 786443, metadata !283, metadata !2019, i32 1603, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2019 = metadata !{i32 786443, metadata !283, metadata !2016, i32 1602, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2020 = metadata !{i32 1604, i32 0, metadata !2021, null}
!2021 = metadata !{i32 786443, metadata !283, metadata !2018, i32 1603, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2022 = metadata !{i32 1605, i32 0, metadata !2021, null}
!2023 = metadata !{i32 1606, i32 0, metadata !2024, null}
!2024 = metadata !{i32 786443, metadata !283, metadata !2019, i32 1606, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2025 = metadata !{i32 1607, i32 0, metadata !2026, null}
!2026 = metadata !{i32 786443, metadata !283, metadata !2024, i32 1606, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2027 = metadata !{i32 1611, i32 0, metadata !2026, null}
!2028 = metadata !{i32 1612, i32 0, metadata !2026, null}
!2029 = metadata !{i32 1613, i32 0, metadata !2026, null}
!2030 = metadata !{i32 1613, i32 0, metadata !2031, null}
!2031 = metadata !{i32 786443, metadata !283, metadata !2024, i32 1613, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2032 = metadata !{i32 1617, i32 0, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !283, metadata !2031, i32 1613, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2034 = metadata !{i32 1618, i32 0, metadata !2033, null}
!2035 = metadata !{i32 1620, i32 0, metadata !1939, null}
!2036 = metadata !{i32 1621, i32 0, metadata !1939, null}
!2037 = metadata !{i32 1621, i32 0, metadata !2038, null}
!2038 = metadata !{i32 786443, metadata !283, metadata !1937, i32 1621, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2039 = metadata !{i32 1624, i32 0, metadata !2040, null}
!2040 = metadata !{i32 786443, metadata !283, metadata !2038, i32 1621, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2041 = metadata !{i32 1630, i32 0, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !283, metadata !2040, i32 1630, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2043 = metadata !{i32 1631, i32 0, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !283, metadata !2042, i32 1630, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2045 = metadata !{i32 1633, i32 0, metadata !2040, null}
!2046 = metadata !{i32 1635, i32 0, metadata !2040, null}
!2047 = metadata !{i32 1639, i32 0, metadata !2048, null}
!2048 = metadata !{i32 786443, metadata !283, metadata !2038, i32 1639, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2049 = metadata !{i32 1643, i32 0, metadata !2050, null}
!2050 = metadata !{i32 786443, metadata !283, metadata !2048, i32 1639, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2051 = metadata !{i32 1644, i32 0, metadata !2052, null}
!2052 = metadata !{i32 786443, metadata !283, metadata !2050, i32 1644, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2053 = metadata !{i32 1645, i32 0, metadata !2054, null}
!2054 = metadata !{i32 786443, metadata !283, metadata !2055, i32 1645, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2055 = metadata !{i32 786443, metadata !283, metadata !2052, i32 1644, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2056 = metadata !{i32 1653, i32 0, metadata !2057, null}
!2057 = metadata !{i32 786443, metadata !283, metadata !2055, i32 1653, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2058 = metadata !{i32 1659, i32 0, metadata !2059, null}
!2059 = metadata !{i32 786443, metadata !283, metadata !2057, i32 1658, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2060 = metadata !{i32 1662, i32 0, metadata !2061, null}
!2061 = metadata !{i32 786443, metadata !283, metadata !2052, i32 1661, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2062 = metadata !{i32 1663, i32 0, metadata !2061, null}
!2063 = metadata !{i32 1664, i32 0, metadata !2064, null}
!2064 = metadata !{i32 786443, metadata !283, metadata !2061, i32 1664, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2065 = metadata !{i32 1665, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !283, metadata !2064, i32 1664, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2067 = metadata !{i32 1667, i32 0, metadata !2061, null}
!2068 = metadata !{i32 1672, i32 0, metadata !2069, null}
!2069 = metadata !{i32 786443, metadata !283, metadata !2048, i32 1672, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2070 = metadata !{i32 1673, i32 0, metadata !2071, null}
!2071 = metadata !{i32 786443, metadata !283, metadata !2072, i32 1673, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2072 = metadata !{i32 786443, metadata !283, metadata !2069, i32 1672, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2073 = metadata !{i32 1674, i32 0, metadata !2074, null}
!2074 = metadata !{i32 786443, metadata !283, metadata !2071, i32 1673, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2075 = metadata !{i32 1675, i32 0, metadata !2076, null}
!2076 = metadata !{i32 786443, metadata !283, metadata !2074, i32 1675, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2077 = metadata !{i32 1679, i32 0, metadata !2078, null}
!2078 = metadata !{i32 786443, metadata !283, metadata !2076, i32 1675, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2079 = metadata !{i32 1681, i32 0, metadata !2078, null}
!2080 = metadata !{i32 1685, i32 0, metadata !2081, null}
!2081 = metadata !{i32 786443, metadata !283, metadata !2076, i32 1681, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2082 = metadata !{i32 1686, i32 0, metadata !2081, null}
!2083 = metadata !{i32 1689, i32 0, metadata !2084, null}
!2084 = metadata !{i32 786443, metadata !283, metadata !2071, i32 1688, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2085 = metadata !{i32 1690, i32 0, metadata !2084, null}
!2086 = metadata !{i32 1691, i32 0, metadata !2084, null}
!2087 = metadata !{i32 1692, i32 0, metadata !2084, null}
!2088 = metadata !{i32 1777, i32 0, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !283, metadata !2069, i32 1756, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2090 = metadata !{i32 1788, i32 0, metadata !2091, null}
!2091 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1785, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2092 = metadata !{i32 1789, i32 0, metadata !2093, null}
!2093 = metadata !{i32 786443, metadata !283, metadata !2091, i32 1789, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2094 = metadata !{i32 1790, i32 0, metadata !2095, null}
!2095 = metadata !{i32 786443, metadata !283, metadata !2093, i32 1789, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2096 = metadata !{i32 1791, i32 0, metadata !2095, null}
!2097 = metadata !{i32 1792, i32 0, metadata !2091, null}
!2098 = metadata !{i32 1793, i32 0, metadata !2091, null}
!2099 = metadata !{i32 1795, i32 0, metadata !2100, null}
!2100 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1795, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2101 = metadata !{i32 1796, i32 0, metadata !2102, null}
!2102 = metadata !{i32 786443, metadata !283, metadata !2100, i32 1795, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2103 = metadata !{i32 1797, i32 0, metadata !2102, null}
!2104 = metadata !{i32 1798, i32 0, metadata !2102, null}
!2105 = metadata !{i32 1801, i32 0, metadata !2106, null}
!2106 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1801, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2107 = metadata !{i32 1802, i32 0, metadata !2108, null}
!2108 = metadata !{i32 786443, metadata !283, metadata !2109, i32 1802, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2109 = metadata !{i32 786443, metadata !283, metadata !2106, i32 1801, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2110 = metadata !{i32 1803, i32 0, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !283, metadata !2108, i32 1802, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2112 = metadata !{i32 1805, i32 0, metadata !2109, null}
!2113 = metadata !{i32 1806, i32 0, metadata !2109, null}
!2114 = metadata !{i32 1807, i32 0, metadata !1930, null}
!2115 = metadata !{i32 1808, i32 0, metadata !2116, null}
!2116 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1808, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2117 = metadata !{i32 1809, i32 0, metadata !2118, null}
!2118 = metadata !{i32 786443, metadata !283, metadata !2116, i32 1808, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2119 = metadata !{i32 1815, i32 0, metadata !2120, null}
!2120 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1815, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2121 = metadata !{i32 1817, i32 0, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !283, metadata !2123, i32 1817, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2123 = metadata !{i32 786443, metadata !283, metadata !2120, i32 1815, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2124 = metadata !{i32 1818, i32 0, metadata !2125, null}
!2125 = metadata !{i32 786443, metadata !283, metadata !2122, i32 1817, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2126 = metadata !{i32 1822, i32 0, metadata !2127, null}
!2127 = metadata !{i32 786443, metadata !283, metadata !2120, i32 1820, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2128 = metadata !{i32 1823, i32 0, metadata !2127, null}
!2129 = metadata !{i32 1824, i32 0, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !283, metadata !2127, i32 1823, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2131 = metadata !{i32 1825, i32 0, metadata !2130, null}
!2132 = metadata !{i32 1827, i32 0, metadata !2133, null}
!2133 = metadata !{i32 786443, metadata !283, metadata !2130, i32 1827, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2134 = metadata !{i32 1828, i32 0, metadata !2135, null}
!2135 = metadata !{i32 786443, metadata !283, metadata !2133, i32 1827, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2136 = metadata !{i32 1830, i32 0, metadata !2130, null}
!2137 = metadata !{i32 1831, i32 0, metadata !2130, null}
!2138 = metadata !{i32 1853, i32 0, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !283, metadata !1930, i32 1853, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2140 = metadata !{i32 1854, i32 0, metadata !2141, null}
!2141 = metadata !{i32 786443, metadata !283, metadata !2139, i32 1853, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2142 = metadata !{i32 1858, i32 0, metadata !284, null}
!2143 = metadata !{i32 1859, i32 0, metadata !284, null}
!2144 = metadata !{i32 1424, i32 0, metadata !406, null}
!2145 = metadata !{i32 1429, i32 0, metadata !406, null}
!2146 = metadata !{i32 1430, i32 0, metadata !406, null}
!2147 = metadata !{i32 1431, i32 0, metadata !2148, null}
!2148 = metadata !{i32 786443, metadata !283, metadata !406, i32 1430, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2149 = metadata !{i32 1432, i32 0, metadata !2148, null}
!2150 = metadata !{i32 1434, i32 0, metadata !406, null}
!2151 = metadata !{i32 1226, i32 0, metadata !410, null}
!2152 = metadata !{i32 1228, i32 0, metadata !2153, null}
!2153 = metadata !{i32 786443, metadata !283, metadata !410, i32 1228, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2154 = metadata !{i32 1229, i32 0, metadata !2155, null}
!2155 = metadata !{i32 786443, metadata !283, metadata !2153, i32 1228, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2156 = metadata !{i32 1230, i32 0, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !283, metadata !2155, i32 1230, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2158 = metadata !{i32 1231, i32 0, metadata !2159, null}
!2159 = metadata !{i32 786443, metadata !283, metadata !2160, i32 1231, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2160 = metadata !{i32 786443, metadata !283, metadata !2157, i32 1230, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2161 = metadata !{i32 1232, i32 0, metadata !2162, null}
!2162 = metadata !{i32 786443, metadata !283, metadata !2159, i32 1231, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2163 = metadata !{i32 1235, i32 0, metadata !2155, null}
!2164 = metadata !{i32 1236, i32 0, metadata !2155, null}
!2165 = metadata !{i32 1237, i32 0, metadata !410, null}
!2166 = metadata !{i32 1238, i32 0, metadata !410, null}
!2167 = metadata !{i32 520, i32 0, metadata !440, null}
!2168 = metadata !{i32 522, i32 0, metadata !440, null}
!2169 = metadata !{i32 524, i32 0, metadata !440, null}
!2170 = metadata !{i32 548, i32 0, metadata !2171, null}
!2171 = metadata !{i32 786443, metadata !283, metadata !440, i32 545, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2172 = metadata !{i32 550, i32 0, metadata !2171, null}
!2173 = metadata !{i32 551, i32 0, metadata !2171, null}
!2174 = metadata !{i32 552, i32 0, metadata !2175, null}
!2175 = metadata !{i32 786443, metadata !283, metadata !2171, i32 551, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2176 = metadata !{i32 553, i32 0, metadata !2175, null}
!2177 = metadata !{i32 570, i32 0, metadata !2178, null}
!2178 = metadata !{i32 786443, metadata !283, metadata !440, i32 569, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2179 = metadata !{i32 572, i32 0, metadata !2178, null}
!2180 = metadata !{i32 573, i32 0, metadata !2181, null}
!2181 = metadata !{i32 786443, metadata !283, metadata !2182, i32 573, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2182 = metadata !{i32 786443, metadata !283, metadata !2178, i32 572, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2183 = metadata !{i32 574, i32 0, metadata !2184, null}
!2184 = metadata !{i32 786443, metadata !283, metadata !2181, i32 573, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2185 = metadata !{i32 575, i32 0, metadata !2186, null}
!2186 = metadata !{i32 786443, metadata !283, metadata !2184, i32 575, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2187 = metadata !{i32 576, i32 0, metadata !2188, null}
!2188 = metadata !{i32 786443, metadata !283, metadata !2186, i32 575, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2189 = metadata !{i32 578, i32 0, metadata !2184, null}
!2190 = metadata !{i32 579, i32 0, metadata !2184, null}
!2191 = metadata !{i32 580, i32 0, metadata !2192, null}
!2192 = metadata !{i32 786443, metadata !283, metadata !2181, i32 579, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2193 = metadata !{i32 583, i32 0, metadata !2178, null}
!2194 = metadata !{i32 600, i32 0, metadata !440, null}
!2195 = metadata !{i32 601, i32 0, metadata !440, null}
!2196 = metadata !{i32 609, i32 0, metadata !488, null}
!2197 = metadata !{i32 612, i32 0, metadata !2198, null}
!2198 = metadata !{i32 786443, metadata !283, metadata !488, i32 612, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2199 = metadata !{i32 613, i32 0, metadata !2200, null}
!2200 = metadata !{i32 786443, metadata !283, metadata !2198, i32 612, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2201 = metadata !{i32 614, i32 0, metadata !2200, null}
!2202 = metadata !{i32 615, i32 0, metadata !2200, null}
!2203 = metadata !{i32 616, i32 0, metadata !2200, null}
!2204 = metadata !{i32 617, i32 0, metadata !2200, null}
!2205 = metadata !{i32 619, i32 0, metadata !488, null}
!2206 = metadata !{i32 629, i32 0, metadata !536, null}
!2207 = metadata !{i32 634, i32 0, metadata !2208, null}
!2208 = metadata !{i32 786443, metadata !283, metadata !536, i32 634, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2209 = metadata !{i32 636, i32 0, metadata !2210, null}
!2210 = metadata !{i32 786443, metadata !283, metadata !2211, i32 636, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2211 = metadata !{i32 786443, metadata !283, metadata !2208, i32 634, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2212 = metadata !{i32 637, i32 0, metadata !2213, null}
!2213 = metadata !{i32 786443, metadata !283, metadata !2210, i32 636, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2214 = metadata !{i32 642, i32 0, metadata !2213, null}
!2215 = metadata !{i32 643, i32 0, metadata !2216, null}
!2216 = metadata !{i32 786443, metadata !283, metadata !2211, i32 643, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2217 = metadata !{i32 644, i32 0, metadata !2218, null}
!2218 = metadata !{i32 786443, metadata !283, metadata !2216, i32 643, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2219 = metadata !{i32 649, i32 0, metadata !2218, null}
!2220 = metadata !{i32 650, i32 0, metadata !2211, null}
!2221 = metadata !{i32 651, i32 0, metadata !2211, null}
!2222 = metadata !{i32 652, i32 0, metadata !2223, null}
!2223 = metadata !{i32 786443, metadata !283, metadata !2211, i32 651, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2224 = metadata !{i32 655, i32 0, metadata !2225, null}
!2225 = metadata !{i32 786443, metadata !283, metadata !2223, i32 652, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2226 = metadata !{i32 656, i32 0, metadata !2225, null}
!2227 = metadata !{i32 660, i32 0, metadata !2225, null}
!2228 = metadata !{i32 661, i32 0, metadata !2225, null}
!2229 = metadata !{i32 668, i32 0, metadata !2225, null}
!2230 = metadata !{i32 669, i32 0, metadata !2225, null}
!2231 = metadata !{i32 672, i32 0, metadata !2225, null}
!2232 = metadata !{i32 673, i32 0, metadata !2225, null}
!2233 = metadata !{i32 677, i32 0, metadata !2225, null}
!2234 = metadata !{i32 678, i32 0, metadata !2225, null}
!2235 = metadata !{i32 680, i32 0, metadata !2225, null}
!2236 = metadata !{i32 681, i32 0, metadata !2225, null}
!2237 = metadata !{i32 694, i32 0, metadata !2225, null}
!2238 = metadata !{i32 695, i32 0, metadata !2225, null}
!2239 = metadata !{i32 699, i32 0, metadata !2223, null}
!2240 = metadata !{i32 700, i32 0, metadata !2223, null}
!2241 = metadata !{i32 703, i32 0, metadata !2242, null}
!2242 = metadata !{i32 786443, metadata !283, metadata !2243, i32 703, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2243 = metadata !{i32 786443, metadata !283, metadata !2208, i32 702, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2244 = metadata !{i32 704, i32 0, metadata !2245, null}
!2245 = metadata !{i32 786443, metadata !283, metadata !2242, i32 703, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2246 = metadata !{i32 706, i32 0, metadata !2245, null}
!2247 = metadata !{i32 707, i32 0, metadata !2248, null}
!2248 = metadata !{i32 786443, metadata !283, metadata !2243, i32 707, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2249 = metadata !{i32 708, i32 0, metadata !2250, null}
!2250 = metadata !{i32 786443, metadata !283, metadata !2248, i32 707, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2251 = metadata !{i32 710, i32 0, metadata !2250, null}
!2252 = metadata !{i32 715, i32 0, metadata !2253, null}
!2253 = metadata !{i32 786443, metadata !283, metadata !536, i32 715, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2254 = metadata !{i32 716, i32 0, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !283, metadata !2253, i32 715, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2256 = metadata !{i32 717, i32 0, metadata !2255, null}
!2257 = metadata !{i32 718, i32 0, metadata !2255, null}
!2258 = metadata !{i32 719, i32 0, metadata !2255, null}
!2259 = metadata !{i32 720, i32 0, metadata !2255, null}
!2260 = metadata !{i32 728, i32 0, metadata !536, null}
!2261 = metadata !{i32 873, i32 0, metadata !609, null}
!2262 = metadata !{i32 874, i32 0, metadata !609, null}
!2263 = metadata !{i32 875, i32 0, metadata !609, null}
!2264 = metadata !{i32 876, i32 0, metadata !609, null}
!2265 = metadata !{i32 877, i32 0, metadata !609, null}
!2266 = metadata !{i32 879, i32 0, metadata !609, null}
!2267 = metadata !{i32 889, i32 0, metadata !609, null}
!2268 = metadata !{i32 890, i32 0, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !283, metadata !609, i32 890, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2270 = metadata !{i32 891, i32 0, metadata !2271, null}
!2271 = metadata !{i32 786443, metadata !283, metadata !2269, i32 890, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2272 = metadata !{i32 892, i32 0, metadata !2271, null}
!2273 = metadata !{i32 893, i32 0, metadata !2274, null}
!2274 = metadata !{i32 786443, metadata !283, metadata !2269, i32 892, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2275 = metadata !{i32 894, i32 0, metadata !2274, null}
!2276 = metadata !{i32 895, i32 0, metadata !2274, null}
!2277 = metadata !{i32 896, i32 0, metadata !2278, null}
!2278 = metadata !{i32 786443, metadata !283, metadata !2279, i32 896, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2279 = metadata !{i32 786443, metadata !283, metadata !2274, i32 895, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2280 = metadata !{i32 899, i32 0, metadata !2281, null}
!2281 = metadata !{i32 786443, metadata !283, metadata !2278, i32 898, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2282 = metadata !{i32 901, i32 0, metadata !2279, null}
!2283 = metadata !{i32 902, i32 0, metadata !2274, null}
!2284 = metadata !{i32 914, i32 0, metadata !609, null}
!2285 = metadata !{i32 915, i32 0, metadata !2286, null}
!2286 = metadata !{i32 786443, metadata !283, metadata !609, i32 915, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2287 = metadata !{i32 916, i32 0, metadata !2288, null}
!2288 = metadata !{i32 786443, metadata !283, metadata !2286, i32 915, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2289 = metadata !{i32 917, i32 0, metadata !2288, null}
!2290 = metadata !{i32 918, i32 0, metadata !2288, null}
!2291 = metadata !{i32 919, i32 0, metadata !609, null}
!2292 = metadata !{i32 920, i32 0, metadata !609, null}
!2293 = metadata !{i32 921, i32 0, metadata !2294, null}
!2294 = metadata !{i32 786443, metadata !283, metadata !2295, i32 921, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2295 = metadata !{i32 786443, metadata !283, metadata !609, i32 920, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2296 = metadata !{i32 922, i32 0, metadata !2297, null}
!2297 = metadata !{i32 786443, metadata !283, metadata !2294, i32 921, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2298 = metadata !{i32 923, i32 0, metadata !2297, null}
!2299 = metadata !{i32 924, i32 0, metadata !2295, null}
!2300 = metadata !{i32 925, i32 0, metadata !2295, null}
!2301 = metadata !{i32 926, i32 0, metadata !2302, null}
!2302 = metadata !{i32 786443, metadata !283, metadata !609, i32 926, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2303 = metadata !{i32 931, i32 0, metadata !2304, null}
!2304 = metadata !{i32 786443, metadata !283, metadata !2305, i32 931, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2305 = metadata !{i32 786443, metadata !283, metadata !2302, i32 926, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2306 = metadata !{i32 932, i32 0, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !283, metadata !2304, i32 931, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2308 = metadata !{i32 933, i32 0, metadata !2309, null}
!2309 = metadata !{i32 786443, metadata !283, metadata !2307, i32 933, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2310 = metadata !{i32 934, i32 0, metadata !2311, null}
!2311 = metadata !{i32 786443, metadata !283, metadata !2309, i32 933, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2312 = metadata !{i32 936, i32 0, metadata !2313, null}
!2313 = metadata !{i32 786443, metadata !283, metadata !2307, i32 936, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2314 = metadata !{i32 937, i32 0, metadata !2315, null}
!2315 = metadata !{i32 786443, metadata !283, metadata !2313, i32 936, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2316 = metadata !{i32 938, i32 0, metadata !2315, null}
!2317 = metadata !{i32 941, i32 0, metadata !2318, null}
!2318 = metadata !{i32 786443, metadata !283, metadata !2319, i32 941, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2319 = metadata !{i32 786443, metadata !283, metadata !2304, i32 940, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2320 = metadata !{i32 952, i32 0, metadata !2321, null}
!2321 = metadata !{i32 786443, metadata !283, metadata !2318, i32 941, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2322 = metadata !{i32 954, i32 0, metadata !2319, null}
!2323 = metadata !{i32 956, i32 0, metadata !2324, null}
!2324 = metadata !{i32 786443, metadata !283, metadata !2319, i32 956, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2325 = metadata !{i32 960, i32 0, metadata !2319, null}
!2326 = metadata !{i32 977, i32 0, metadata !2305, null}
!2327 = metadata !{i32 978, i32 0, metadata !2305, null}
!2328 = metadata !{i32 980, i32 0, metadata !2305, null}
!2329 = metadata !{i32 981, i32 0, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !283, metadata !2331, i32 981, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2331 = metadata !{i32 786443, metadata !283, metadata !2305, i32 980, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2332 = metadata !{i32 982, i32 0, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !283, metadata !2330, i32 981, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2334 = metadata !{i32 983, i32 0, metadata !2333, null}
!2335 = metadata !{i32 984, i32 0, metadata !2333, null}
!2336 = metadata !{i32 986, i32 0, metadata !2331, null}
!2337 = metadata !{i32 987, i32 0, metadata !2331, null}
!2338 = metadata !{i32 988, i32 0, metadata !2305, null}
!2339 = metadata !{i32 993, i32 0, metadata !2305, null}
!2340 = metadata !{i32 996, i32 0, metadata !2341, null}
!2341 = metadata !{i32 786443, metadata !283, metadata !2305, i32 996, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2342 = metadata !{i32 1001, i32 0, metadata !2343, null}
!2343 = metadata !{i32 786443, metadata !283, metadata !609, i32 1001, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2344 = metadata !{i32 1003, i32 0, metadata !2345, null}
!2345 = metadata !{i32 786443, metadata !283, metadata !2346, i32 1003, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2346 = metadata !{i32 786443, metadata !283, metadata !2343, i32 1001, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2347 = metadata !{i32 1004, i32 0, metadata !2348, null}
!2348 = metadata !{i32 786443, metadata !283, metadata !2349, i32 1004, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2349 = metadata !{i32 786443, metadata !283, metadata !2345, i32 1003, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2350 = metadata !{i32 1006, i32 0, metadata !2351, null}
!2351 = metadata !{i32 786443, metadata !283, metadata !2348, i32 1004, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2352 = metadata !{i32 1008, i32 0, metadata !2349, null}
!2353 = metadata !{i32 1009, i32 0, metadata !2349, null}
!2354 = metadata !{i32 1011, i32 0, metadata !2355, null}
!2355 = metadata !{i32 786443, metadata !283, metadata !2345, i32 1011, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2356 = metadata !{i32 1013, i32 0, metadata !2357, null}
!2357 = metadata !{i32 786443, metadata !283, metadata !2355, i32 1011, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2358 = metadata !{i32 1015, i32 0, metadata !2346, null}
!2359 = metadata !{i32 1016, i32 0, metadata !2346, null}
!2360 = metadata !{i32 1018, i32 0, metadata !2361, null}
!2361 = metadata !{i32 786443, metadata !283, metadata !609, i32 1018, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2362 = metadata !{i32 1026, i32 0, metadata !2363, null}
!2363 = metadata !{i32 786443, metadata !283, metadata !2361, i32 1025, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2364 = metadata !{i32 1019, i32 0, metadata !2365, null}
!2365 = metadata !{i32 786443, metadata !283, metadata !2361, i32 1018, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2366 = metadata !{i32 1020, i32 0, metadata !2367, null}
!2367 = metadata !{i32 786443, metadata !283, metadata !2365, i32 1020, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2368 = metadata !{i32 1021, i32 0, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !283, metadata !2367, i32 1020, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2370 = metadata !{i32 1022, i32 0, metadata !2369, null}
!2371 = metadata !{i32 1023, i32 0, metadata !2369, null}
!2372 = metadata !{i32 1030, i32 0, metadata !609, null}
!2373 = metadata !{i32 1031, i32 0, metadata !609, null}
!2374 = metadata !{i32 1032, i32 0, metadata !2375, null}
!2375 = metadata !{i32 786443, metadata !283, metadata !2376, i32 1032, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2376 = metadata !{i32 786443, metadata !283, metadata !609, i32 1031, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2377 = metadata !{i32 1033, i32 0, metadata !2378, null}
!2378 = metadata !{i32 786443, metadata !283, metadata !2375, i32 1032, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2379 = metadata !{i32 1034, i32 0, metadata !2378, null}
!2380 = metadata !{i32 1036, i32 0, metadata !2376, null}
!2381 = metadata !{i32 1037, i32 0, metadata !2382, null}
!2382 = metadata !{i32 786443, metadata !283, metadata !609, i32 1037, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2383 = metadata !{i32 1038, i32 0, metadata !2384, null}
!2384 = metadata !{i32 786443, metadata !283, metadata !2382, i32 1037, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2385 = metadata !{i32 1039, i32 0, metadata !2384, null}
!2386 = metadata !{i32 1040, i32 0, metadata !2384, null}
!2387 = metadata !{i32 1041, i32 0, metadata !609, null}
!2388 = metadata !{i32 1044, i32 0, metadata !2389, null}
!2389 = metadata !{i32 786443, metadata !283, metadata !609, i32 1044, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2390 = metadata !{i32 1045, i32 0, metadata !2391, null}
!2391 = metadata !{i32 786443, metadata !283, metadata !2389, i32 1044, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2392 = metadata !{i32 1048, i32 0, metadata !609, null}
!2393 = metadata !{i32 1050, i32 0, metadata !609, null}
!2394 = metadata !{i32 1051, i32 0, metadata !2395, null}
!2395 = metadata !{i32 786443, metadata !283, metadata !2396, i32 1051, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2396 = metadata !{i32 786443, metadata !283, metadata !609, i32 1050, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2397 = metadata !{i32 1052, i32 0, metadata !2398, null}
!2398 = metadata !{i32 786443, metadata !283, metadata !2395, i32 1051, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2399 = metadata !{i32 1054, i32 0, metadata !2400, null}
!2400 = metadata !{i32 786443, metadata !283, metadata !2398, i32 1054, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2401 = metadata !{i32 1056, i32 0, metadata !2402, null}
!2402 = metadata !{i32 786443, metadata !283, metadata !2400, i32 1055, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2403 = metadata !{i32 1057, i32 0, metadata !2402, null}
!2404 = metadata !{i32 1059, i32 0, metadata !2398, null}
!2405 = metadata !{i32 1060, i32 0, metadata !2398, null}
!2406 = metadata !{i32 1061, i32 0, metadata !2398, null}
!2407 = metadata !{i32 1063, i32 0, metadata !2398, null}
!2408 = metadata !{i32 1064, i32 0, metadata !2398, null}
!2409 = metadata !{i32 1065, i32 0, metadata !2398, null}
!2410 = metadata !{i32 1066, i32 0, metadata !2398, null}
!2411 = metadata !{i32 1068, i32 0, metadata !2396, null}
!2412 = metadata !{i32 1070, i32 0, metadata !609, null}
!2413 = metadata !{i32 1071, i32 0, metadata !609, null}
!2414 = metadata !{i32 1072, i32 0, metadata !609, null}
!2415 = metadata !{i32 1073, i32 0, metadata !609, null}
!2416 = metadata !{i32 1074, i32 0, metadata !609, null}
!2417 = metadata !{i32 1075, i32 0, metadata !609, null}
!2418 = metadata !{i32 1077, i32 0, metadata !2419, null}
!2419 = metadata !{i32 786443, metadata !283, metadata !609, i32 1077, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2420 = metadata !{i32 1103, i32 0, metadata !2421, null}
!2421 = metadata !{i32 786443, metadata !283, metadata !2419, i32 1077, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2422 = metadata !{i32 1111, i32 0, metadata !2423, null}
!2423 = metadata !{i32 786443, metadata !283, metadata !609, i32 1111, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2424 = metadata !{i32 1112, i32 0, metadata !2425, null}
!2425 = metadata !{i32 786443, metadata !283, metadata !2423, i32 1111, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2426 = metadata !{i32 1113, i32 0, metadata !2425, null}
!2427 = metadata !{i32 1115, i32 0, metadata !2428, null}
!2428 = metadata !{i32 786443, metadata !283, metadata !2425, i32 1113, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2429 = metadata !{i32 1118, i32 0, metadata !2430, null}
!2430 = metadata !{i32 786443, metadata !283, metadata !2428, i32 1118, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2431 = metadata !{i32 1119, i32 0, metadata !2432, null}
!2432 = metadata !{i32 786443, metadata !283, metadata !2433, i32 1119, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2433 = metadata !{i32 786443, metadata !283, metadata !2430, i32 1118, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2434 = metadata !{i32 1120, i32 0, metadata !2435, null}
!2435 = metadata !{i32 786443, metadata !283, metadata !2432, i32 1119, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2436 = metadata !{i32 1123, i32 0, metadata !2428, null}
!2437 = metadata !{i32 1125, i32 0, metadata !2438, null}
!2438 = metadata !{i32 786443, metadata !283, metadata !2428, i32 1125, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2439 = metadata !{i32 1126, i32 0, metadata !2440, null}
!2440 = metadata !{i32 786443, metadata !283, metadata !2438, i32 1125, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2441 = metadata !{i32 1127, i32 0, metadata !2440, null}
!2442 = metadata !{i32 1128, i32 0, metadata !2428, null}
!2443 = metadata !{i32 1131, i32 0, metadata !2444, null}
!2444 = metadata !{i32 786443, metadata !283, metadata !2423, i32 1129, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2445 = metadata !{i32 1132, i32 0, metadata !2444, null}
!2446 = metadata !{i32 1136, i32 0, metadata !609, null}
!2447 = metadata !{i32 1140, i32 0, metadata !2448, null}
!2448 = metadata !{i32 786443, metadata !283, metadata !609, i32 1140, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2449 = metadata !{i32 1141, i32 0, metadata !2450, null}
!2450 = metadata !{i32 786443, metadata !283, metadata !2448, i32 1140, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2451 = metadata !{i32 1142, i32 0, metadata !2450, null}
!2452 = metadata !{i32 1143, i32 0, metadata !2453, null}
!2453 = metadata !{i32 786443, metadata !283, metadata !2448, i32 1142, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2454 = metadata !{i32 1150, i32 0, metadata !609, null}
!2455 = metadata !{i32 1151, i32 0, metadata !609, null}
!2456 = metadata !{i32 818, i32 0, metadata !2457, null}
!2457 = metadata !{i32 786443, metadata !283, metadata !653, i32 818, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2458 = metadata !{i32 819, i32 0, metadata !2459, null}
!2459 = metadata !{i32 786443, metadata !283, metadata !2457, i32 818, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2460 = metadata !{i32 821, i32 0, metadata !2461, null}
!2461 = metadata !{i32 786443, metadata !283, metadata !653, i32 821, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2462 = metadata !{i32 822, i32 0, metadata !2463, null}
!2463 = metadata !{i32 786443, metadata !283, metadata !2461, i32 821, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2464 = metadata !{i32 826, i32 0, metadata !653, null}
!2465 = metadata !{i32 827, i32 0, metadata !653, null}
!2466 = metadata !{i32 805, i32 0, metadata !656, null}
!2467 = metadata !{i32 806, i32 0, metadata !656, null}
!2468 = metadata !{i32 807, i32 0, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !283, metadata !2470, i32 807, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2470 = metadata !{i32 786443, metadata !283, metadata !656, i32 806, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_vfprintf.c]
!2471 = metadata !{i32 810, i32 0, metadata !2470, null}
!2472 = metadata !{i32 812, i32 0, metadata !656, null}
!2473 = metadata !{i32 25, i32 0, metadata !687, null}
!2474 = metadata !{i32 27, i32 0, metadata !687, null}
!2475 = metadata !{i32 22, i32 0, metadata !2476, null}
!2476 = metadata !{i32 786443, metadata !719, metadata !718, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fwrite.c]
!2477 = metadata !{i32 23, i32 0, metadata !2476, null}
!2478 = metadata !{i32 27, i32 0, metadata !2479, null}
!2479 = metadata !{i32 786443, metadata !719, metadata !2480, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fwrite.c]
!2480 = metadata !{i32 786443, metadata !719, metadata !2476, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fwrite.c]
!2481 = metadata !{i32 28, i32 0, metadata !2482, null}
!2482 = metadata !{i32 786443, metadata !719, metadata !2479, i32 27, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fwrite.c]
!2483 = metadata !{i32 32, i32 0, metadata !2480, null}
!2484 = metadata !{i32 33, i32 0, metadata !2480, null}
!2485 = metadata !{i32 34, i32 0, metadata !2480, null}
!2486 = metadata !{i32 36, i32 0, metadata !718, null}
!2487 = metadata !{i32 37, i32 0, metadata !718, null}
!2488 = metadata !{i32 21, i32 0, metadata !751, null}
!2489 = metadata !{i32 22, i32 0, metadata !751, null}
!2490 = metadata !{i32 23, i32 0, metadata !2491, null}
!2491 = metadata !{i32 786443, metadata !749, metadata !2492, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/strrchr.c]
!2492 = metadata !{i32 786443, metadata !749, metadata !751, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/strrchr.c]
!2493 = metadata !{i32 24, i32 0, metadata !2494, null}
!2494 = metadata !{i32 786443, metadata !749, metadata !2491, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/strrchr.c]
!2495 = metadata !{i32 25, i32 0, metadata !2494, null}
!2496 = metadata !{i32 26, i32 0, metadata !2492, null}
!2497 = metadata !{i32 28, i32 0, metadata !751, null}
!2498 = metadata !{i32 20, i32 0, metadata !758, null}
!2499 = metadata !{i32 21, i32 0, metadata !758, null}
!2500 = metadata !{i32 28, i32 0, metadata !758, null}
!2501 = metadata !{i32 29, i32 0, metadata !2502, null}
!2502 = metadata !{i32 786443, metadata !756, metadata !758, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memcpy.c]
!2503 = metadata !{i32 30, i32 0, metadata !2502, null}
!2504 = metadata !{i32 31, i32 0, metadata !2502, null}
!2505 = metadata !{i32 34, i32 0, metadata !758, null}
!2506 = metadata !{i32 19, i32 0, metadata !767, null}
!2507 = metadata !{i32 27, i32 0, metadata !767, null}
!2508 = metadata !{i32 28, i32 0, metadata !2509, null}
!2509 = metadata !{i32 786443, metadata !765, metadata !767, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memset.c]
!2510 = metadata !{i32 29, i32 0, metadata !2509, null}
!2511 = metadata !{i32 30, i32 0, metadata !2509, null}
!2512 = metadata !{i32 32, i32 0, metadata !767, null}
!2513 = metadata !{i32 20, i32 0, metadata !775, null}
!2514 = metadata !{i32 27, i32 0, metadata !775, null}
!2515 = metadata !{i32 30, i32 0, metadata !775, null}
!2516 = metadata !{i32 22, i32 0, metadata !783, null}
!2517 = metadata !{i32 30, i32 0, metadata !783, null}
!2518 = metadata !{i32 31, i32 0, metadata !2519, null}
!2519 = metadata !{i32 786443, metadata !781, metadata !783, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/strnlen.c]
!2520 = metadata !{i32 32, i32 0, metadata !2519, null}
!2521 = metadata !{i32 33, i32 0, metadata !2519, null}
!2522 = metadata !{i32 35, i32 0, metadata !783, null}
!2523 = metadata !{i32 16, i32 0, metadata !791, null}
!2524 = metadata !{i32 18, i32 0, metadata !791, null}
!2525 = metadata !{i32 174, i32 0, metadata !800, null}
!2526 = metadata !{i32 194, i32 0, metadata !800, null}
!2527 = metadata !{i32 197, i32 0, metadata !2528, null}
!2528 = metadata !{i32 786443, metadata !797, metadata !800, i32 197, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2529 = metadata !{i32 202, i32 0, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !797, metadata !2531, i32 202, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2531 = metadata !{i32 786443, metadata !797, metadata !2528, i32 197, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2532 = metadata !{i32 203, i32 0, metadata !2533, null}
!2533 = metadata !{i32 786443, metadata !797, metadata !2534, i32 203, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2534 = metadata !{i32 786443, metadata !797, metadata !2530, i32 202, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2535 = metadata !{i32 204, i32 0, metadata !2536, null}
!2536 = metadata !{i32 786443, metadata !797, metadata !2533, i32 203, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2537 = metadata !{i32 205, i32 0, metadata !2536, null}
!2538 = metadata !{i32 207, i32 0, metadata !2539, null}
!2539 = metadata !{i32 786443, metadata !797, metadata !2531, i32 207, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2540 = metadata !{i32 208, i32 0, metadata !2541, null}
!2541 = metadata !{i32 786443, metadata !797, metadata !2539, i32 207, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2542 = metadata !{i32 209, i32 0, metadata !2541, null}
!2543 = metadata !{i32 215, i32 0, metadata !800, null}
!2544 = metadata !{i32 216, i32 0, metadata !800, null}
!2545 = metadata !{i32 219, i32 0, metadata !2546, null}
!2546 = metadata !{i32 786443, metadata !797, metadata !800, i32 219, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2547 = metadata !{i32 220, i32 0, metadata !2548, null}
!2548 = metadata !{i32 786443, metadata !797, metadata !2546, i32 219, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2549 = metadata !{i32 221, i32 0, metadata !2548, null}
!2550 = metadata !{i32 222, i32 0, metadata !800, null}
!2551 = metadata !{i32 223, i32 0, metadata !2552, null}
!2552 = metadata !{i32 786443, metadata !797, metadata !800, i32 223, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2553 = metadata !{i32 224, i32 0, metadata !2554, null}
!2554 = metadata !{i32 786443, metadata !797, metadata !2552, i32 223, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2555 = metadata !{i32 225, i32 0, metadata !2554, null}
!2556 = metadata !{i32 226, i32 0, metadata !2554, null}
!2557 = metadata !{i32 228, i32 0, metadata !2558, null}
!2558 = metadata !{i32 786443, metadata !797, metadata !800, i32 228, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2559 = metadata !{i32 229, i32 0, metadata !2560, null}
!2560 = metadata !{i32 786443, metadata !797, metadata !2558, i32 228, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2561 = metadata !{i32 230, i32 0, metadata !2560, null}
!2562 = metadata !{i32 231, i32 0, metadata !2560, null}
!2563 = metadata !{i32 233, i32 0, metadata !2564, null}
!2564 = metadata !{i32 786443, metadata !797, metadata !800, i32 233, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2565 = metadata !{i32 234, i32 0, metadata !2566, null}
!2566 = metadata !{i32 786443, metadata !797, metadata !2564, i32 233, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/__xpg_strerror_r.c]
!2567 = metadata !{i32 235, i32 0, metadata !2566, null}
!2568 = metadata !{i32 237, i32 0, metadata !800, null}
!2569 = metadata !{i32 22, i32 0, metadata !2570, null}
!2570 = metadata !{i32 786443, metadata !811, metadata !813, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/strlen.c]
!2571 = metadata !{i32 24, i32 0, metadata !813, null}
!2572 = metadata !{i32 30, i32 0, metadata !829, null}
!2573 = metadata !{i32 43, i32 0, metadata !834, null}
!2574 = metadata !{i32 45, i32 0, metadata !834, null}
!2575 = metadata !{i32 46, i32 0, metadata !834, null}
!2576 = metadata !{i32 47, i32 0, metadata !834, null}
!2577 = metadata !{i32 48, i32 0, metadata !834, null}
!2578 = metadata !{i32 49, i32 0, metadata !834, null}
!2579 = metadata !{i32 61, i32 0, metadata !2580, null}
!2580 = metadata !{i32 786443, metadata !832, metadata !2581, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/termios/tcgetattr.c]
!2581 = metadata !{i32 786443, metadata !832, metadata !834, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/termios/tcgetattr.c]
!2582 = metadata !{i32 79, i32 0, metadata !834, null}
!2583 = metadata !{i32 191, i32 0, metadata !2584, null}
!2584 = metadata !{i32 786443, metadata !857, metadata !859, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2585 = metadata !{i32 193, i32 0, metadata !859, null}
!2586 = metadata !{i32 197, i32 0, metadata !859, null}
!2587 = metadata !{i32 238, i32 0, metadata !2588, null}
!2588 = metadata !{i32 786443, metadata !857, metadata !859, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2589 = metadata !{i32 239, i32 0, metadata !2588, null}
!2590 = metadata !{i32 240, i32 0, metadata !859, null}
!2591 = metadata !{i32 263, i32 0, metadata !2592, null}
!2592 = metadata !{i32 786443, metadata !857, metadata !861, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2593 = metadata !{i32 264, i32 0, metadata !2592, null}
!2594 = metadata !{i32 266, i32 0, metadata !2595, null}
!2595 = metadata !{i32 786443, metadata !857, metadata !861, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2596 = metadata !{i32 267, i32 0, metadata !2595, null}
!2597 = metadata !{i32 268, i32 0, metadata !861, null}
!2598 = metadata !{i32 288, i32 0, metadata !862, null}
!2599 = metadata !{i32 291, i32 0, metadata !862, null}
!2600 = metadata !{i32 294, i32 0, metadata !862, null}
!2601 = metadata !{i32 298, i32 0, metadata !2602, null}
!2602 = metadata !{i32 786443, metadata !857, metadata !862, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2603 = metadata !{i32 300, i32 0, metadata !2604, null}
!2604 = metadata !{i32 786443, metadata !857, metadata !2602, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2605 = metadata !{i32 301, i32 0, metadata !2604, null}
!2606 = metadata !{i32 305, i32 0, metadata !862, null}
!2607 = metadata !{i32 306, i32 0, metadata !862, null}
!2608 = metadata !{i32 307, i32 0, metadata !862, null}
!2609 = metadata !{i32 308, i32 0, metadata !2610, null}
!2610 = metadata !{i32 786443, metadata !857, metadata !862, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2611 = metadata !{i32 311, i32 0, metadata !862, null}
!2612 = metadata !{i32 312, i32 0, metadata !2613, null}
!2613 = metadata !{i32 786443, metadata !857, metadata !862, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2614 = metadata !{i32 313, i32 0, metadata !2615, null}
!2615 = metadata !{i32 786443, metadata !857, metadata !2613, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2616 = metadata !{i32 314, i32 0, metadata !2617, null}
!2617 = metadata !{i32 786443, metadata !857, metadata !2615, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2618 = metadata !{i32 315, i32 0, metadata !2617, null}
!2619 = metadata !{i32 316, i32 0, metadata !2613, null}
!2620 = metadata !{i32 317, i32 0, metadata !2613, null}
!2621 = metadata !{i32 323, i32 0, metadata !862, null}
!2622 = metadata !{i32 327, i32 0, metadata !862, null}
!2623 = metadata !{i32 331, i32 0, metadata !2624, null}
!2624 = metadata !{i32 786443, metadata !857, metadata !862, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2625 = metadata !{i32 336, i32 0, metadata !2626, null}
!2626 = metadata !{i32 786443, metadata !857, metadata !2624, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2627 = metadata !{i32 337, i32 0, metadata !2626, null}
!2628 = metadata !{i32 338, i32 0, metadata !2626, null}
!2629 = metadata !{i32 339, i32 0, metadata !2626, null}
!2630 = metadata !{i32 342, i32 0, metadata !862, null}
!2631 = metadata !{i32 344, i32 0, metadata !862, null}
!2632 = metadata !{i32 345, i32 0, metadata !862, null}
!2633 = metadata !{i32 346, i32 0, metadata !2634, null}
!2634 = metadata !{i32 786443, metadata !857, metadata !862, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2635 = metadata !{i32 347, i32 0, metadata !2634, null}
!2636 = metadata !{i32 349, i32 0, metadata !2634, null}
!2637 = metadata !{i32 354, i32 0, metadata !862, null}
!2638 = metadata !{i32 370, i32 0, metadata !2639, null}
!2639 = metadata !{i32 786443, metadata !857, metadata !862, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2640 = metadata !{i32 371, i32 0, metadata !2641, null}
!2641 = metadata !{i32 786443, metadata !857, metadata !2639, i32 370, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2642 = metadata !{i32 372, i32 0, metadata !2641, null}
!2643 = metadata !{i32 391, i32 0, metadata !2644, null}
!2644 = metadata !{i32 786443, metadata !857, metadata !862, i32 391, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2645 = metadata !{i32 392, i32 0, metadata !2644, null}
!2646 = metadata !{i32 395, i32 0, metadata !2647, null}
!2647 = metadata !{i32 786443, metadata !857, metadata !862, i32 395, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2648 = metadata !{i32 396, i32 0, metadata !2647, null}
!2649 = metadata !{i32 401, i32 0, metadata !862, null}
!2650 = metadata !{i32 160, i32 0, metadata !2651, null}
!2651 = metadata !{i32 786443, metadata !857, metadata !878} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2652 = metadata !{i32 161, i32 0, metadata !2651, null}
!2653 = metadata !{i32 162, i32 0, metadata !2651, null}
!2654 = metadata !{i32 163, i32 0, metadata !2651, null}
!2655 = metadata !{i32 165, i32 0, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !857, metadata !2651, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2657 = metadata !{i32 166, i32 0, metadata !2658, null}
!2658 = metadata !{i32 786443, metadata !857, metadata !2656, i32 165, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2659 = metadata !{i32 168, i32 0, metadata !2651, null}
!2660 = metadata !{i32 169, i32 0, metadata !2651, null}
!2661 = metadata !{i32 139, i32 0, metadata !2662, null}
!2662 = metadata !{i32 786443, metadata !857, metadata !870, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2663 = metadata !{i32 143, i32 0, metadata !2664, null}
!2664 = metadata !{i32 786443, metadata !857, metadata !2662, i32 140, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2665 = metadata !{i32 147, i32 0, metadata !2666, null}
!2666 = metadata !{i32 786443, metadata !857, metadata !2664, i32 147, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2667 = metadata !{i32 148, i32 18, metadata !2666, null}
!2668 = metadata !{i32 150, i32 0, metadata !2669, null}
!2669 = metadata !{i32 786443, metadata !857, metadata !2666, i32 149, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/internals/__uClibc_main.c]
!2670 = metadata !{i32 153, i32 0, metadata !870, null}
!2671 = metadata !{i32 56, i32 0, metadata !2672, null}
!2672 = metadata !{i32 786443, metadata !874, metadata !873} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/./include/sys/sysmacros.h]
!2673 = metadata !{i32 13, i32 0, metadata !914, null}
!2674 = metadata !{i32 12, i32 0, metadata !921, null}
!2675 = metadata !{i32 351, i32 0, metadata !2676, null}
!2676 = metadata !{i32 786443, metadata !927, metadata !926, i32 351, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2677 = metadata !{i32 352, i32 0, metadata !2678, null}
!2678 = metadata !{i32 786443, metadata !927, metadata !2676, i32 351, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2679 = metadata !{i32 353, i32 0, metadata !2678, null}
!2680 = metadata !{i32 354, i32 0, metadata !2678, null}
!2681 = metadata !{i32 356, i32 0, metadata !926, null}
!2682 = metadata !{i32 357, i32 0, metadata !926, null}
!2683 = metadata !{i32 359, i32 0, metadata !926, null}
!2684 = metadata !{i32 360, i32 0, metadata !926, null}
!2685 = metadata !{i32 395, i32 0, metadata !944, null}
!2686 = metadata !{i32 820, i32 0, metadata !962, null}
!2687 = metadata !{i32 829, i32 0, metadata !2688, null}
!2688 = metadata !{i32 786443, metadata !927, metadata !962, i32 829, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2689 = metadata !{i32 830, i32 0, metadata !2690, null}
!2690 = metadata !{i32 786443, metadata !927, metadata !2691, i32 830, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2691 = metadata !{i32 786443, metadata !927, metadata !2688, i32 829, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2692 = metadata !{i32 831, i32 0, metadata !2693, null}
!2693 = metadata !{i32 786443, metadata !927, metadata !2690, i32 830, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2694 = metadata !{i32 832, i32 0, metadata !2693, null}
!2695 = metadata !{i32 833, i32 0, metadata !2691, null}
!2696 = metadata !{i32 834, i32 0, metadata !2691, null}
!2697 = metadata !{i32 835, i32 0, metadata !2691, null}
!2698 = metadata !{i32 838, i32 0, metadata !2699, null}
!2699 = metadata !{i32 786443, metadata !927, metadata !962, i32 838, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2700 = metadata !{i32 839, i32 0, metadata !2701, null}
!2701 = metadata !{i32 786443, metadata !927, metadata !2699, i32 838, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2702 = metadata !{i32 840, i32 0, metadata !2701, null}
!2703 = metadata !{i32 842, i32 0, metadata !962, null}
!2704 = metadata !{i32 843, i32 0, metadata !962, null}
!2705 = metadata !{i32 893, i32 0, metadata !962, null}
!2706 = metadata !{i32 894, i32 0, metadata !2707, null}
!2707 = metadata !{i32 786443, metadata !927, metadata !2708, i32 894, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2708 = metadata !{i32 786443, metadata !927, metadata !962, i32 893, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2709 = metadata !{i32 898, i32 0, metadata !2710, null}
!2710 = metadata !{i32 786443, metadata !927, metadata !2707, i32 894, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2711 = metadata !{i32 899, i32 0, metadata !2710, null}
!2712 = metadata !{i32 901, i32 0, metadata !2713, null}
!2713 = metadata !{i32 786443, metadata !927, metadata !2708, i32 901, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2714 = metadata !{i32 902, i32 0, metadata !2715, null}
!2715 = metadata !{i32 786443, metadata !927, metadata !2713, i32 901, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2716 = metadata !{i32 903, i32 0, metadata !2715, null}
!2717 = metadata !{i32 905, i32 0, metadata !2708, null}
!2718 = metadata !{i32 906, i32 0, metadata !2708, null}
!2719 = metadata !{i32 907, i32 0, metadata !2708, null}
!2720 = metadata !{i32 908, i32 0, metadata !2708, null}
!2721 = metadata !{i32 909, i32 0, metadata !2722, null}
!2722 = metadata !{i32 786443, metadata !927, metadata !962, i32 909, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2723 = metadata !{i32 910, i32 0, metadata !2724, null}
!2724 = metadata !{i32 786443, metadata !927, metadata !2722, i32 909, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/misc/wchar/wchar.c]
!2725 = metadata !{i32 911, i32 0, metadata !2724, null}
!2726 = metadata !{i32 912, i32 0, metadata !962, null}
!2727 = metadata !{i32 913, i32 0, metadata !962, null}
!2728 = metadata !{i32 44, i32 0, metadata !976, null}
!2729 = metadata !{i32 46, i32 0, metadata !976, null}
!2730 = metadata !{i32 47, i32 0, metadata !2731, null}
!2731 = metadata !{i32 786443, metadata !974, metadata !2732, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2732 = metadata !{i32 786443, metadata !974, metadata !976, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2733 = metadata !{i32 49, i32 0, metadata !2734, null}
!2734 = metadata !{i32 786443, metadata !974, metadata !2731, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2735 = metadata !{i32 51, i32 0, metadata !2732, null}
!2736 = metadata !{i32 52, i32 0, metadata !2737, null}
!2737 = metadata !{i32 786443, metadata !974, metadata !2732, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2738 = metadata !{i32 62, i32 0, metadata !2739, null}
!2739 = metadata !{i32 786443, metadata !974, metadata !2737, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2740 = metadata !{i32 63, i32 0, metadata !2739, null}
!2741 = metadata !{i32 101, i32 0, metadata !2732, null}
!2742 = metadata !{i32 70, i32 0, metadata !2743, null}
!2743 = metadata !{i32 786443, metadata !974, metadata !2737, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2744 = metadata !{i32 73, i32 0, metadata !2745, null}
!2745 = metadata !{i32 786443, metadata !974, metadata !2743, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2746 = metadata !{i32 76, i32 0, metadata !2747, null}
!2747 = metadata !{i32 786443, metadata !974, metadata !2748, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2748 = metadata !{i32 786443, metadata !974, metadata !2745, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2749 = metadata !{i32 77, i32 0, metadata !2750, null}
!2750 = metadata !{i32 786443, metadata !974, metadata !2747, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2751 = metadata !{i32 78, i32 0, metadata !2750, null}
!2752 = metadata !{i32 80, i32 0, metadata !2748, null}
!2753 = metadata !{i32 82, i32 0, metadata !2748, null}
!2754 = metadata !{i32 83, i32 0, metadata !2755, null}
!2755 = metadata !{i32 786443, metadata !974, metadata !2756, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2756 = metadata !{i32 786443, metadata !974, metadata !2748, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_WRITE.c]
!2757 = metadata !{i32 88, i32 0, metadata !2756, null}
!2758 = metadata !{i32 89, i32 0, metadata !2756, null}
!2759 = metadata !{i32 90, i32 0, metadata !2756, null}
!2760 = metadata !{i32 92, i32 0, metadata !2748, null}
!2761 = metadata !{i32 94, i32 0, metadata !2748, null}
!2762 = metadata !{i32 95, i32 0, metadata !2748, null}
!2763 = metadata !{i32 99, i32 0, metadata !2743, null}
!2764 = metadata !{i32 102, i32 0, metadata !976, null}
!2765 = metadata !{i32 30, i32 0, metadata !2766, null}
!2766 = metadata !{i32 786443, metadata !1005, metadata !1007, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2767 = metadata !{i32 34, i32 0, metadata !2768, null}
!2768 = metadata !{i32 786443, metadata !1005, metadata !2769, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2769 = metadata !{i32 786443, metadata !1005, metadata !2766, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2770 = metadata !{i32 35, i32 0, metadata !2771, null}
!2771 = metadata !{i32 786443, metadata !1005, metadata !2768, i32 34, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2772 = metadata !{i32 36, i32 0, metadata !2773, null}
!2773 = metadata !{i32 786443, metadata !1005, metadata !2771, i32 36, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2774 = metadata !{i32 37, i32 0, metadata !2775, null}
!2775 = metadata !{i32 786443, metadata !1005, metadata !2773, i32 36, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2776 = metadata !{i32 38, i32 0, metadata !2775, null}
!2777 = metadata !{i32 39, i32 0, metadata !2771, null}
!2778 = metadata !{i32 40, i32 0, metadata !2771, null}
!2779 = metadata !{i32 42, i32 0, metadata !2771, null}
!2780 = metadata !{i32 46, i32 0, metadata !2781, null}
!2781 = metadata !{i32 786443, metadata !1005, metadata !2769, i32 46, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2782 = metadata !{i32 47, i32 0, metadata !2783, null}
!2783 = metadata !{i32 786443, metadata !1005, metadata !2781, i32 46, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2784 = metadata !{i32 48, i32 0, metadata !2783, null}
!2785 = metadata !{i32 49, i32 0, metadata !2786, null}
!2786 = metadata !{i32 786443, metadata !1005, metadata !2783, i32 49, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2787 = metadata !{i32 50, i32 0, metadata !2786, null}
!2788 = metadata !{i32 52, i32 0, metadata !2789, null}
!2789 = metadata !{i32 786443, metadata !1005, metadata !2790, i32 52, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2790 = metadata !{i32 786443, metadata !1005, metadata !2786, i32 51, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2791 = metadata !{i32 53, i32 0, metadata !2792, null}
!2792 = metadata !{i32 786443, metadata !1005, metadata !2793, i32 53, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2793 = metadata !{i32 786443, metadata !1005, metadata !2789, i32 52, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2794 = metadata !{i32 54, i32 0, metadata !2795, null}
!2795 = metadata !{i32 786443, metadata !1005, metadata !2792, i32 53, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2796 = metadata !{i32 55, i32 0, metadata !2795, null}
!2797 = metadata !{i32 56, i32 0, metadata !2793, null}
!2798 = metadata !{i32 57, i32 0, metadata !2799, null}
!2799 = metadata !{i32 786443, metadata !1005, metadata !2793, i32 57, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2800 = metadata !{i32 58, i32 0, metadata !2801, null} ; [ DW_TAG_imported_module ]
!2801 = metadata !{i32 786443, metadata !1005, metadata !2799, i32 57, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2802 = metadata !{i32 59, i32 0, metadata !2801, null}
!2803 = metadata !{i32 60, i32 0, metadata !2801, null}
!2804 = metadata !{i32 61, i32 0, metadata !2801, null}
!2805 = metadata !{i32 65, i32 0, metadata !2783, null}
!2806 = metadata !{i32 68, i32 0, metadata !2807, null}
!2807 = metadata !{i32 786443, metadata !1005, metadata !2769, i32 68, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2808 = metadata !{i32 69, i32 0, metadata !2809, null}
!2809 = metadata !{i32 786443, metadata !1005, metadata !2810, i32 69, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2810 = metadata !{i32 786443, metadata !1005, metadata !2807, i32 68, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2811 = metadata !{i32 70, i32 0, metadata !2812, null}
!2812 = metadata !{i32 786443, metadata !1005, metadata !2809, i32 69, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fwrite.c]
!2813 = metadata !{i32 79, i32 0, metadata !1007, null}
!2814 = metadata !{i32 80, i32 0, metadata !1007, null}
!2815 = metadata !{i32 35, i32 0, metadata !2816, null}
!2816 = metadata !{i32 786443, metadata !1037, metadata !1039, i32 35, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2817 = metadata !{i32 36, i32 0, metadata !2818, null}
!2818 = metadata !{i32 786443, metadata !1037, metadata !2819, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2819 = metadata !{i32 786443, metadata !1037, metadata !2816, i32 35, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2820 = metadata !{i32 40, i32 0, metadata !2819, null}
!2821 = metadata !{i32 41, i32 0, metadata !2819, null}
!2822 = metadata !{i32 44, i32 0, metadata !2823, null}
!2823 = metadata !{i32 786443, metadata !1037, metadata !1039, i32 44, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2824 = metadata !{i32 48, i32 0, metadata !2825, null}
!2825 = metadata !{i32 786443, metadata !1037, metadata !2823, i32 44, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2826 = metadata !{i32 52, i32 0, metadata !2825, null}
!2827 = metadata !{i32 54, i32 0, metadata !2825, null}
!2828 = metadata !{i32 57, i32 0, metadata !2829, null}
!2829 = metadata !{i32 786443, metadata !1037, metadata !1039, i32 57, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2830 = metadata !{i32 58, i32 0, metadata !2831, null} ; [ DW_TAG_imported_module ]
!2831 = metadata !{i32 786443, metadata !1037, metadata !2832, i32 58, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2832 = metadata !{i32 786443, metadata !1037, metadata !2829, i32 57, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2833 = metadata !{i32 67, i32 0, metadata !2834, null}
!2834 = metadata !{i32 786443, metadata !1037, metadata !2835, i32 67, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2835 = metadata !{i32 786443, metadata !1037, metadata !2831, i32 58, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2836 = metadata !{i32 69, i32 0, metadata !2834, null}
!2837 = metadata !{i32 82, i32 0, metadata !2832, null}
!2838 = metadata !{i32 83, i32 0, metadata !2832, null}
!2839 = metadata !{i32 85, i32 0, metadata !2832, null}
!2840 = metadata !{i32 86, i32 0, metadata !2832, null}
!2841 = metadata !{i32 88, i32 0, metadata !1039, null}
!2842 = metadata !{i32 89, i32 0, metadata !2843, null}
!2843 = metadata !{i32 786443, metadata !1037, metadata !1039, i32 89, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2844 = metadata !{i32 90, i32 0, metadata !2845, null}
!2845 = metadata !{i32 786443, metadata !1037, metadata !2843, i32 89, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_trans2w.c]
!2846 = metadata !{i32 91, i32 0, metadata !2845, null}
!2847 = metadata !{i32 94, i32 0, metadata !1039, null}
!2848 = metadata !{i32 95, i32 0, metadata !1039, null}
!2849 = metadata !{i32 14, i32 0, metadata !2850, null}
!2850 = metadata !{i32 786443, metadata !1067, metadata !1069, i32 14, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2851 = metadata !{i32 16, i32 0, metadata !2852, null}
!2852 = metadata !{i32 786443, metadata !1067, metadata !2853, i32 16, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2853 = metadata !{i32 786443, metadata !1067, metadata !2850, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2854 = metadata !{i32 19, i32 0, metadata !2855, null}
!2855 = metadata !{i32 786443, metadata !1067, metadata !2856, i32 18, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2856 = metadata !{i32 786443, metadata !1067, metadata !2857, i32 18, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2857 = metadata !{i32 786443, metadata !1067, metadata !2852, i32 16, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2858 = metadata !{i32 33, i32 0, metadata !2859, null}
!2859 = metadata !{i32 786443, metadata !1067, metadata !2853, i32 31, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2860 = metadata !{i32 34, i32 0, metadata !2861, null}
!2861 = metadata !{i32 786443, metadata !1067, metadata !2859, i32 34, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2862 = metadata !{i32 36, i32 0, metadata !2863, null}
!2863 = metadata !{i32 786443, metadata !1067, metadata !2859, i32 36, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2864 = metadata !{i32 38, i32 0, metadata !2859, null}
!2865 = metadata !{i32 42, i32 0, metadata !2866, null}
!2866 = metadata !{i32 786443, metadata !1067, metadata !2867, i32 42, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2867 = metadata !{i32 786443, metadata !1067, metadata !2850, i32 40, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2868 = metadata !{i32 45, i32 0, metadata !2869, null}
!2869 = metadata !{i32 786443, metadata !1067, metadata !2870, i32 44, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2870 = metadata !{i32 786443, metadata !1067, metadata !2871, i32 44, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2871 = metadata !{i32 786443, metadata !1067, metadata !2866, i32 42, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2872 = metadata !{i32 59, i32 0, metadata !2873, null}
!2873 = metadata !{i32 786443, metadata !1067, metadata !2867, i32 57, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2874 = metadata !{i32 60, i32 0, metadata !2875, null}
!2875 = metadata !{i32 786443, metadata !1067, metadata !2873, i32 60, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2876 = metadata !{i32 62, i32 0, metadata !2877, null}
!2877 = metadata !{i32 786443, metadata !1067, metadata !2873, i32 62, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_load_inttype.c]
!2878 = metadata !{i32 64, i32 0, metadata !2873, null}
!2879 = metadata !{i32 67, i32 0, metadata !1069, null}
!2880 = metadata !{i32 34, i32 0, metadata !2881, null}
!2881 = metadata !{i32 786443, metadata !1075, metadata !1077, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2882 = metadata !{i32 35, i32 0, metadata !2883, null}
!2883 = metadata !{i32 786443, metadata !1075, metadata !2881, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2884 = metadata !{i32 36, i32 0, metadata !2883, null}
!2885 = metadata !{i32 39, i32 0, metadata !2886, null}
!2886 = metadata !{i32 786443, metadata !1075, metadata !1077, i32 39, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2887 = metadata !{i32 40, i32 0, metadata !2888, null}
!2888 = metadata !{i32 786443, metadata !1075, metadata !2886, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2889 = metadata !{i32 41, i32 0, metadata !2888, null}
!2890 = metadata !{i32 45, i32 0, metadata !2891, null}
!2891 = metadata !{i32 786443, metadata !1075, metadata !1077, i32 45, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2892 = metadata !{i32 46, i32 0, metadata !2893, null}
!2893 = metadata !{i32 786443, metadata !1075, metadata !2891, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2894 = metadata !{i32 47, i32 0, metadata !2893, null}
!2895 = metadata !{i32 51, i32 0, metadata !2896, null}
!2896 = metadata !{i32 786443, metadata !1075, metadata !1077, i32 51, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2897 = metadata !{i32 52, i32 0, metadata !2898, null}
!2898 = metadata !{i32 786443, metadata !1075, metadata !2896, i32 51, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_store_inttype.c]
!2899 = metadata !{i32 53, i32 0, metadata !2898, null}
!2900 = metadata !{i32 57, i32 0, metadata !1077, null}
!2901 = metadata !{i32 58, i32 0, metadata !1077, null} ; [ DW_TAG_imported_module ]
!2902 = metadata !{i32 35, i32 0, metadata !1085, null}
!2903 = metadata !{i32 36, i32 0, metadata !2904, null}
!2904 = metadata !{i32 786443, metadata !1083, metadata !1085, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2905 = metadata !{i32 37, i32 0, metadata !2906, null}
!2906 = metadata !{i32 786443, metadata !1083, metadata !2904, i32 36, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2907 = metadata !{i32 38, i32 0, metadata !2908, null}
!2908 = metadata !{i32 786443, metadata !1083, metadata !2906, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2909 = metadata !{i32 39, i32 0, metadata !2910, null}
!2910 = metadata !{i32 786443, metadata !1083, metadata !2908, i32 38, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2911 = metadata !{i32 40, i32 0, metadata !2910, null}
!2912 = metadata !{i32 41, i32 0, metadata !2910, null}
!2913 = metadata !{i32 59, i32 0, metadata !1085, null}
!2914 = metadata !{i32 96, i32 0, metadata !1085, null}
!2915 = metadata !{i32 97, i32 0, metadata !1085, null}
!2916 = metadata !{i32 98, i32 0, metadata !2917, null}
!2917 = metadata !{i32 786443, metadata !1083, metadata !1085, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2918 = metadata !{i32 99, i32 0, metadata !2919, null}
!2919 = metadata !{i32 786443, metadata !1083, metadata !2917, i32 98, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2920 = metadata !{i32 100, i32 0, metadata !2919, null}
!2921 = metadata !{i32 101, i32 0, metadata !2919, null}
!2922 = metadata !{i32 102, i32 0, metadata !1085, null}
!2923 = metadata !{i32 103, i32 0, metadata !1085, null}
!2924 = metadata !{i32 105, i32 0, metadata !1085, null}
!2925 = metadata !{i32 122, i32 0, metadata !2926, null}
!2926 = metadata !{i32 786443, metadata !1083, metadata !2927, i32 122, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2927 = metadata !{i32 786443, metadata !1083, metadata !1085, i32 105, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2928 = metadata !{i32 123, i32 0, metadata !2929, null}
!2929 = metadata !{i32 786443, metadata !1083, metadata !2926, i32 122, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2930 = metadata !{i32 124, i32 0, metadata !2929, null}
!2931 = metadata !{i32 125, i32 0, metadata !2929, null}
!2932 = metadata !{i32 126, i32 0, metadata !2929, null}
!2933 = metadata !{i32 127, i32 0, metadata !2929, null}
!2934 = metadata !{i32 128, i32 0, metadata !2929, null}
!2935 = metadata !{i32 129, i32 0, metadata !2936, null}
!2936 = metadata !{i32 786443, metadata !1083, metadata !2926, i32 128, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2937 = metadata !{i32 130, i32 0, metadata !2936, null}
!2938 = metadata !{i32 142, i32 0, metadata !2939, null}
!2939 = metadata !{i32 786443, metadata !1083, metadata !2927, i32 141, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2940 = metadata !{i32 144, i32 0, metadata !2927, null}
!2941 = metadata !{i32 148, i32 0, metadata !2942, null}
!2942 = metadata !{i32 786443, metadata !1083, metadata !1085, i32 148, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2943 = metadata !{i32 149, i32 0, metadata !2944, null}
!2944 = metadata !{i32 786443, metadata !1083, metadata !2942, i32 148, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_uintmaxtostr.c]
!2945 = metadata !{i32 150, i32 0, metadata !2944, null}
!2946 = metadata !{i32 152, i32 0, metadata !1085, null}
!2947 = metadata !{i32 246, i32 0, metadata !1094, null}
!2948 = metadata !{i32 247, i32 0, metadata !1094, null}
!2949 = metadata !{i32 248, i32 0, metadata !1094, null}
!2950 = metadata !{i32 250, i32 0, metadata !1094, null}
!2951 = metadata !{i32 251, i32 0, metadata !2952, null}
!2952 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 251, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2953 = metadata !{i32 259, i32 0, metadata !2954, null}
!2954 = metadata !{i32 786443, metadata !1092, metadata !2952, i32 251, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2955 = metadata !{i32 261, i32 0, metadata !2954, null}
!2956 = metadata !{i32 263, i32 0, metadata !2957, null}
!2957 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2958 = metadata !{i32 264, i32 0, metadata !2959, null}
!2959 = metadata !{i32 786443, metadata !1092, metadata !2957, i32 263, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2960 = metadata !{i32 265, i32 0, metadata !2959, null}
!2961 = metadata !{i32 267, i32 0, metadata !1094, null}
!2962 = metadata !{i32 268, i32 0, metadata !2963, null}
!2963 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 268, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2964 = metadata !{i32 269, i32 0, metadata !2965, null}
!2965 = metadata !{i32 786443, metadata !1092, metadata !2963, i32 268, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2966 = metadata !{i32 270, i32 0, metadata !2965, null}
!2967 = metadata !{i32 270, i32 0, metadata !2968, null}
!2968 = metadata !{i32 786443, metadata !1092, metadata !2963, i32 270, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2969 = metadata !{i32 271, i32 0, metadata !2970, null}
!2970 = metadata !{i32 786443, metadata !1092, metadata !2968, i32 270, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2971 = metadata !{i32 272, i32 0, metadata !2970, null}
!2972 = metadata !{i32 274, i32 0, metadata !1094, null}
!2973 = metadata !{i32 275, i32 0, metadata !1094, null}
!2974 = metadata !{i32 276, i32 0, metadata !2975, null}
!2975 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 276, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2976 = metadata !{i32 277, i32 0, metadata !2977, null}
!2977 = metadata !{i32 786443, metadata !1092, metadata !2975, i32 276, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2978 = metadata !{i32 278, i32 0, metadata !2977, null}
!2979 = metadata !{i32 281, i32 0, metadata !2980, null}
!2980 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 281, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2981 = metadata !{i32 283, i32 0, metadata !2982, null}
!2982 = metadata !{i32 786443, metadata !1092, metadata !2983, i32 283, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2983 = metadata !{i32 786443, metadata !1092, metadata !2980, i32 281, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2984 = metadata !{i32 284, i32 0, metadata !2985, null}
!2985 = metadata !{i32 786443, metadata !1092, metadata !2982, i32 283, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2986 = metadata !{i32 285, i32 0, metadata !2985, null}
!2987 = metadata !{i32 287, i32 0, metadata !2983, null}
!2988 = metadata !{i32 288, i32 0, metadata !2983, null}
!2989 = metadata !{i32 291, i32 0, metadata !2990, null}
!2990 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 291, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2991 = metadata !{i32 292, i32 0, metadata !2992, null}
!2992 = metadata !{i32 786443, metadata !1092, metadata !2990, i32 291, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2993 = metadata !{i32 293, i32 0, metadata !2992, null}
!2994 = metadata !{i32 294, i32 0, metadata !2992, null}
!2995 = metadata !{i32 296, i32 0, metadata !2996, null}
!2996 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 296, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2997 = metadata !{i32 298, i32 0, metadata !2998, null}
!2998 = metadata !{i32 786443, metadata !1092, metadata !2996, i32 296, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!2999 = metadata !{i32 299, i32 0, metadata !2998, null}
!3000 = metadata !{i32 300, i32 0, metadata !2998, null}
!3001 = metadata !{i32 301, i32 0, metadata !2998, null}
!3002 = metadata !{i32 302, i32 0, metadata !3003, null}
!3003 = metadata !{i32 786443, metadata !1092, metadata !2998, i32 302, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3004 = metadata !{i32 303, i32 0, metadata !3005, null}
!3005 = metadata !{i32 786443, metadata !1092, metadata !3003, i32 302, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3006 = metadata !{i32 304, i32 0, metadata !3005, null}
!3007 = metadata !{i32 305, i32 0, metadata !2998, null}
!3008 = metadata !{i32 306, i32 0, metadata !2998, null}
!3009 = metadata !{i32 352, i32 0, metadata !3010, null}
!3010 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 309, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3011 = metadata !{i32 353, i32 0, metadata !3010, null}
!3012 = metadata !{i32 354, i32 0, metadata !3010, null}
!3013 = metadata !{i32 359, i32 0, metadata !3014, null}
!3014 = metadata !{i32 786443, metadata !1092, metadata !3010, i32 358, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3015 = metadata !{i32 360, i32 0, metadata !3016, null}
!3016 = metadata !{i32 786443, metadata !1092, metadata !3014, i32 360, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3017 = metadata !{i32 361, i32 0, metadata !3018, null}
!3018 = metadata !{i32 786443, metadata !1092, metadata !3016, i32 360, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3019 = metadata !{i32 362, i32 0, metadata !3018, null}
!3020 = metadata !{i32 365, i32 0, metadata !3021, null}
!3021 = metadata !{i32 786443, metadata !1092, metadata !3014, i32 364, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3022 = metadata !{i32 366, i32 0, metadata !3023, null}
!3023 = metadata !{i32 786443, metadata !1092, metadata !3021, i32 366, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3024 = metadata !{i32 367, i32 0, metadata !3025, null}
!3025 = metadata !{i32 786443, metadata !1092, metadata !3026, i32 367, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3026 = metadata !{i32 786443, metadata !1092, metadata !3023, i32 366, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3027 = metadata !{i32 368, i32 0, metadata !3028, null}
!3028 = metadata !{i32 786443, metadata !1092, metadata !3025, i32 367, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3029 = metadata !{i32 369, i32 0, metadata !3028, null}
!3030 = metadata !{i32 370, i32 0, metadata !3028, null}
!3031 = metadata !{i32 372, i32 0, metadata !3032, null}
!3032 = metadata !{i32 786443, metadata !1092, metadata !3033, i32 372, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3033 = metadata !{i32 786443, metadata !1092, metadata !3023, i32 371, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3034 = metadata !{i32 373, i32 0, metadata !3035, null}
!3035 = metadata !{i32 786443, metadata !1092, metadata !3032, i32 372, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3036 = metadata !{i32 374, i32 0, metadata !3035, null}
!3037 = metadata !{i32 375, i32 0, metadata !3035, null}
!3038 = metadata !{i32 377, i32 0, metadata !3021, null}
!3039 = metadata !{i32 378, i32 0, metadata !3021, null}
!3040 = metadata !{i32 381, i32 0, metadata !3041, null}
!3041 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 381, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3042 = metadata !{i32 382, i32 0, metadata !3043, null}
!3043 = metadata !{i32 786443, metadata !1092, metadata !3041, i32 381, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3044 = metadata !{i32 383, i32 0, metadata !3043, null}
!3045 = metadata !{i32 384, i32 0, metadata !3043, null}
!3046 = metadata !{i32 390, i32 0, metadata !3047, null}
!3047 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 388, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3048 = metadata !{i32 391, i32 0, metadata !3047, null}
!3049 = metadata !{i32 392, i32 0, metadata !3047, null}
!3050 = metadata !{i32 393, i32 0, metadata !3051, null}
!3051 = metadata !{i32 786443, metadata !1092, metadata !3047, i32 392, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3052 = metadata !{i32 398, i32 0, metadata !3051, null}
!3053 = metadata !{i32 399, i32 0, metadata !3051, null}
!3054 = metadata !{i32 400, i32 0, metadata !3051, null}
!3055 = metadata !{i32 401, i32 0, metadata !3051, null}
!3056 = metadata !{i32 402, i32 0, metadata !3057, null}
!3057 = metadata !{i32 786443, metadata !1092, metadata !3051, i32 401, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3058 = metadata !{i32 403, i32 0, metadata !3057, null}
!3059 = metadata !{i32 404, i32 0, metadata !3057, null}
!3060 = metadata !{i32 405, i32 0, metadata !3051, null}
!3061 = metadata !{i32 410, i32 0, metadata !3062, null}
!3062 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 410, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3063 = metadata !{i32 411, i32 0, metadata !3064, null}
!3064 = metadata !{i32 786443, metadata !1092, metadata !3062, i32 410, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3065 = metadata !{i32 412, i32 0, metadata !3064, null}
!3066 = metadata !{i32 413, i32 0, metadata !3064, null}
!3067 = metadata !{i32 415, i32 0, metadata !1094, null}
!3068 = metadata !{i32 416, i32 0, metadata !3069, null}
!3069 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 416, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3070 = metadata !{i32 417, i32 0, metadata !3071, null}
!3071 = metadata !{i32 786443, metadata !1092, metadata !3069, i32 416, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3072 = metadata !{i32 418, i32 0, metadata !3071, null}
!3073 = metadata !{i32 419, i32 0, metadata !1094, null}
!3074 = metadata !{i32 421, i32 0, metadata !3075, null}
!3075 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 421, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3076 = metadata !{i32 422, i32 0, metadata !3077, null}
!3077 = metadata !{i32 786443, metadata !1092, metadata !3075, i32 421, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3078 = metadata !{i32 423, i32 0, metadata !3079, null}
!3079 = metadata !{i32 786443, metadata !1092, metadata !3077, i32 423, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3080 = metadata !{i32 424, i32 0, metadata !3081, null}
!3081 = metadata !{i32 786443, metadata !1092, metadata !3079, i32 423, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3082 = metadata !{i32 425, i32 0, metadata !3081, null}
!3083 = metadata !{i32 426, i32 0, metadata !3081, null}
!3084 = metadata !{i32 427, i32 0, metadata !3081, null}
!3085 = metadata !{i32 430, i32 0, metadata !1094, null}
!3086 = metadata !{i32 431, i32 0, metadata !1094, null}
!3087 = metadata !{i32 432, i32 0, metadata !1094, null}
!3088 = metadata !{i32 436, i32 0, metadata !3089, null}
!3089 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 434, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3090 = metadata !{i32 437, i32 0, metadata !3089, null}
!3091 = metadata !{i32 438, i32 0, metadata !3092, null}
!3092 = metadata !{i32 786443, metadata !1092, metadata !3089, i32 438, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3093 = metadata !{i32 439, i32 0, metadata !3094, null}
!3094 = metadata !{i32 786443, metadata !1092, metadata !3092, i32 438, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3095 = metadata !{i32 440, i32 0, metadata !3096, null}
!3096 = metadata !{i32 786443, metadata !1092, metadata !3094, i32 440, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3097 = metadata !{i32 441, i32 0, metadata !3098, null}
!3098 = metadata !{i32 786443, metadata !1092, metadata !3096, i32 440, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3099 = metadata !{i32 442, i32 0, metadata !3098, null}
!3100 = metadata !{i32 446, i32 0, metadata !3101, null}
!3101 = metadata !{i32 786443, metadata !1092, metadata !3089, i32 445, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3102 = metadata !{i32 447, i32 0, metadata !3101, null}
!3103 = metadata !{i32 466, i32 0, metadata !1094, null}
!3104 = metadata !{i32 467, i32 0, metadata !3105, null}
!3105 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 467, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3106 = metadata !{i32 468, i32 0, metadata !3107, null}
!3107 = metadata !{i32 786443, metadata !1092, metadata !3105, i32 467, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3108 = metadata !{i32 469, i32 0, metadata !3107, null}
!3109 = metadata !{i32 470, i32 0, metadata !3107, null}
!3110 = metadata !{i32 471, i32 0, metadata !3111, null}
!3111 = metadata !{i32 786443, metadata !1092, metadata !3105, i32 470, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3112 = metadata !{i32 473, i32 0, metadata !1094, null}
!3113 = metadata !{i32 475, i32 0, metadata !3114, null}
!3114 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 475, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3115 = metadata !{i32 476, i32 0, metadata !3116, null}
!3116 = metadata !{i32 786443, metadata !1092, metadata !3114, i32 475, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3117 = metadata !{i32 477, i32 0, metadata !3116, null}
!3118 = metadata !{i32 478, i32 0, metadata !3116, null}
!3119 = metadata !{i32 480, i32 0, metadata !1094, null}
!3120 = metadata !{i32 481, i32 0, metadata !3121, null}
!3121 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 481, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3122 = metadata !{i32 482, i32 0, metadata !3123, null}
!3123 = metadata !{i32 786443, metadata !1092, metadata !3121, i32 481, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3124 = metadata !{i32 483, i32 0, metadata !3123, null}
!3125 = metadata !{i32 485, i32 0, metadata !3126, null}
!3126 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 485, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3127 = metadata !{i32 486, i32 0, metadata !3128, null}
!3128 = metadata !{i32 786443, metadata !1092, metadata !3126, i32 485, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3129 = metadata !{i32 487, i32 0, metadata !3128, null}
!3130 = metadata !{i32 489, i32 0, metadata !1094, null}
!3131 = metadata !{i32 490, i32 0, metadata !1094, null}
!3132 = metadata !{i32 491, i32 0, metadata !1094, null}
!3133 = metadata !{i32 492, i32 0, metadata !1094, null}
!3134 = metadata !{i32 493, i32 0, metadata !1094, null}
!3135 = metadata !{i32 494, i32 0, metadata !1094, null}
!3136 = metadata !{i32 497, i32 0, metadata !3137, null}
!3137 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 496, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3138 = metadata !{i32 498, i32 0, metadata !3139, null}
!3139 = metadata !{i32 786443, metadata !1092, metadata !3137, i32 498, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3140 = metadata !{i32 537, i32 0, metadata !3141, null}
!3141 = metadata !{i32 786443, metadata !1092, metadata !3139, i32 498, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3142 = metadata !{i32 538, i32 0, metadata !3141, null}
!3143 = metadata !{i32 539, i32 0, metadata !3144, null}
!3144 = metadata !{i32 786443, metadata !1092, metadata !3141, i32 539, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3145 = metadata !{i32 540, i32 0, metadata !3146, null}
!3146 = metadata !{i32 786443, metadata !1092, metadata !3144, i32 539, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3147 = metadata !{i32 541, i32 0, metadata !3146, null}
!3148 = metadata !{i32 542, i32 0, metadata !3146, null}
!3149 = metadata !{i32 543, i32 0, metadata !3146, null}
!3150 = metadata !{i32 544, i32 0, metadata !3151, null}
!3151 = metadata !{i32 786443, metadata !1092, metadata !3146, i32 544, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3152 = metadata !{i32 545, i32 0, metadata !3153, null}
!3153 = metadata !{i32 786443, metadata !1092, metadata !3151, i32 544, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3154 = metadata !{i32 546, i32 0, metadata !3153, null}
!3155 = metadata !{i32 547, i32 0, metadata !3153, null}
!3156 = metadata !{i32 548, i32 0, metadata !3153, null}
!3157 = metadata !{i32 549, i32 0, metadata !3153, null}
!3158 = metadata !{i32 550, i32 0, metadata !3159, null}
!3159 = metadata !{i32 786443, metadata !1092, metadata !3144, i32 550, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3160 = metadata !{i32 551, i32 0, metadata !3161, null}
!3161 = metadata !{i32 786443, metadata !1092, metadata !3159, i32 550, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3162 = metadata !{i32 552, i32 0, metadata !3161, null}
!3163 = metadata !{i32 553, i32 0, metadata !3161, null}
!3164 = metadata !{i32 554, i32 0, metadata !3161, null}
!3165 = metadata !{i32 555, i32 0, metadata !3161, null}
!3166 = metadata !{i32 556, i32 0, metadata !3141, null}
!3167 = metadata !{i32 557, i32 0, metadata !3141, null}
!3168 = metadata !{i32 559, i32 0, metadata !3169, null}
!3169 = metadata !{i32 786443, metadata !1092, metadata !3137, i32 559, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3170 = metadata !{i32 567, i32 0, metadata !3171, null}
!3171 = metadata !{i32 786443, metadata !1092, metadata !3169, i32 566, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3172 = metadata !{i32 569, i32 0, metadata !3171, null}
!3173 = metadata !{i32 570, i32 0, metadata !3171, null}
!3174 = metadata !{i32 585, i32 0, metadata !3171, null}
!3175 = metadata !{i32 586, i32 0, metadata !3171, null}
!3176 = metadata !{i32 588, i32 0, metadata !3177, null}
!3177 = metadata !{i32 786443, metadata !1092, metadata !3137, i32 588, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3178 = metadata !{i32 589, i32 0, metadata !3179, null}
!3179 = metadata !{i32 786443, metadata !1092, metadata !3177, i32 588, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3180 = metadata !{i32 590, i32 0, metadata !3179, null}
!3181 = metadata !{i32 591, i32 0, metadata !3179, null}
!3182 = metadata !{i32 592, i32 0, metadata !3179, null}
!3183 = metadata !{i32 593, i32 0, metadata !3179, null}
!3184 = metadata !{i32 594, i32 0, metadata !3185, null}
!3185 = metadata !{i32 786443, metadata !1092, metadata !3137, i32 594, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3186 = metadata !{i32 595, i32 0, metadata !3187, null}
!3187 = metadata !{i32 786443, metadata !1092, metadata !3185, i32 594, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3188 = metadata !{i32 596, i32 0, metadata !3187, null}
!3189 = metadata !{i32 597, i32 0, metadata !3187, null}
!3190 = metadata !{i32 598, i32 0, metadata !3187, null}
!3191 = metadata !{i32 599, i32 0, metadata !3187, null}
!3192 = metadata !{i32 601, i32 0, metadata !3193, null}
!3193 = metadata !{i32 786443, metadata !1092, metadata !3137, i32 601, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3194 = metadata !{i32 606, i32 0, metadata !3195, null}
!3195 = metadata !{i32 786443, metadata !1092, metadata !3193, i32 605, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3196 = metadata !{i32 607, i32 0, metadata !3197, null}
!3197 = metadata !{i32 786443, metadata !1092, metadata !3195, i32 607, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3198 = metadata !{i32 608, i32 0, metadata !3199, null}
!3199 = metadata !{i32 786443, metadata !1092, metadata !3197, i32 607, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3200 = metadata !{i32 609, i32 0, metadata !3199, null}
!3201 = metadata !{i32 610, i32 0, metadata !3199, null}
!3202 = metadata !{i32 611, i32 0, metadata !3199, null}
!3203 = metadata !{i32 612, i32 0, metadata !3199, null}
!3204 = metadata !{i32 613, i32 0, metadata !3199, null}
!3205 = metadata !{i32 618, i32 0, metadata !3206, null}
!3206 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 618, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3207 = metadata !{i32 619, i32 0, metadata !3208, null}
!3208 = metadata !{i32 786443, metadata !1092, metadata !3206, i32 618, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3209 = metadata !{i32 621, i32 0, metadata !3208, null}
!3210 = metadata !{i32 622, i32 0, metadata !3208, null}
!3211 = metadata !{i32 629, i32 0, metadata !3212, null}
!3212 = metadata !{i32 786443, metadata !1092, metadata !3208, i32 629, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3213 = metadata !{i32 630, i32 0, metadata !3214, null}
!3214 = metadata !{i32 786443, metadata !1092, metadata !3212, i32 629, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3215 = metadata !{i32 631, i32 0, metadata !3214, null}
!3216 = metadata !{i32 632, i32 0, metadata !3214, null}
!3217 = metadata !{i32 634, i32 0, metadata !3208, null}
!3218 = metadata !{i32 635, i32 0, metadata !3208, null}
!3219 = metadata !{i32 636, i32 0, metadata !3208, null}
!3220 = metadata !{i32 637, i32 0, metadata !3221, null}
!3221 = metadata !{i32 786443, metadata !1092, metadata !3208, i32 636, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3222 = metadata !{i32 638, i32 0, metadata !3221, null}
!3223 = metadata !{i32 639, i32 0, metadata !3221, null}
!3224 = metadata !{i32 640, i32 0, metadata !3208, null}
!3225 = metadata !{i32 641, i32 0, metadata !3208, null}
!3226 = metadata !{i32 643, i32 0, metadata !3208, null}
!3227 = metadata !{i32 644, i32 0, metadata !3208, null}
!3228 = metadata !{i32 645, i32 0, metadata !3208, null}
!3229 = metadata !{i32 646, i32 0, metadata !3208, null}
!3230 = metadata !{i32 647, i32 0, metadata !3208, null}
!3231 = metadata !{i32 652, i32 0, metadata !3232, null}
!3232 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 650, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3233 = metadata !{i32 653, i32 0, metadata !3232, null}
!3234 = metadata !{i32 654, i32 0, metadata !3232, null}
!3235 = metadata !{i32 655, i32 0, metadata !3236, null}
!3236 = metadata !{i32 786443, metadata !1092, metadata !3232, i32 654, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3237 = metadata !{i32 656, i32 0, metadata !3236, null}
!3238 = metadata !{i32 657, i32 0, metadata !3236, null}
!3239 = metadata !{i32 659, i32 0, metadata !3232, null}
!3240 = metadata !{i32 660, i32 0, metadata !3232, null}
!3241 = metadata !{i32 661, i32 0, metadata !3232, null}
!3242 = metadata !{i32 662, i32 0, metadata !3232, null}
!3243 = metadata !{i32 675, i32 0, metadata !3244, null}
!3244 = metadata !{i32 786443, metadata !1092, metadata !3232, i32 675, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3245 = metadata !{i32 676, i32 0, metadata !3246, null}
!3246 = metadata !{i32 786443, metadata !1092, metadata !3247, i32 676, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3247 = metadata !{i32 786443, metadata !1092, metadata !3244, i32 675, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3248 = metadata !{i32 677, i32 0, metadata !3249, null}
!3249 = metadata !{i32 786443, metadata !1092, metadata !3246, i32 676, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3250 = metadata !{i32 678, i32 0, metadata !3249, null}
!3251 = metadata !{i32 679, i32 0, metadata !3249, null}
!3252 = metadata !{i32 680, i32 0, metadata !3249, null}
!3253 = metadata !{i32 681, i32 0, metadata !3249, null}
!3254 = metadata !{i32 681, i32 0, metadata !3255, null}
!3255 = metadata !{i32 786443, metadata !1092, metadata !3246, i32 681, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3256 = metadata !{i32 682, i32 0, metadata !3257, null}
!3257 = metadata !{i32 786443, metadata !1092, metadata !3255, i32 681, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3258 = metadata !{i32 683, i32 0, metadata !3257, null}
!3259 = metadata !{i32 684, i32 0, metadata !3260, null}
!3260 = metadata !{i32 786443, metadata !1092, metadata !3255, i32 683, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3261 = metadata !{i32 688, i32 0, metadata !3232, null}
!3262 = metadata !{i32 691, i32 0, metadata !1094, null}
!3263 = metadata !{i32 756, i32 0, metadata !3264, null}
!3264 = metadata !{i32 786443, metadata !1092, metadata !3265, i32 756, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3265 = metadata !{i32 786443, metadata !1092, metadata !3266, i32 755, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3266 = metadata !{i32 786443, metadata !1092, metadata !1094, i32 691, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3267 = metadata !{i32 757, i32 0, metadata !3268, null}
!3268 = metadata !{i32 786443, metadata !1092, metadata !3264, i32 756, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_fpmaxtostr.c]
!3269 = metadata !{i32 761, i32 0, metadata !3266, null}
!3270 = metadata !{i32 762, i32 0, metadata !3266, null}
!3271 = metadata !{i32 763, i32 0, metadata !3266, null}
!3272 = metadata !{i32 765, i32 0, metadata !1094, null}
!3273 = metadata !{i32 766, i32 0, metadata !1094, null}
!3274 = metadata !{i32 24, i32 0, metadata !1159, null}
!3275 = metadata !{i32 26, i32 0, metadata !1159, null}
!3276 = metadata !{i32 27, i32 0, metadata !3277, null}
!3277 = metadata !{i32 786443, metadata !1157, metadata !3278, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memrchr.c]
!3278 = metadata !{i32 786443, metadata !1157, metadata !1159, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memrchr.c]
!3279 = metadata !{i32 28, i32 0, metadata !3280, null}
!3280 = metadata !{i32 786443, metadata !1157, metadata !3277, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memrchr.c]
!3281 = metadata !{i32 30, i32 0, metadata !3278, null}
!3282 = metadata !{i32 31, i32 0, metadata !3278, null}
!3283 = metadata !{i32 33, i32 0, metadata !1159, null}
!3284 = metadata !{i32 34, i32 0, metadata !1159, null}
!3285 = metadata !{i32 22, i32 0, metadata !1167, null}
!3286 = metadata !{i32 23, i32 0, metadata !1167, null}
!3287 = metadata !{i32 30, i32 0, metadata !1167, null}
!3288 = metadata !{i32 31, i32 0, metadata !3289, null}
!3289 = metadata !{i32 786443, metadata !1165, metadata !1167, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/mempcpy.c]
!3290 = metadata !{i32 32, i32 0, metadata !3289, null}
!3291 = metadata !{i32 33, i32 0, metadata !3289, null}
!3292 = metadata !{i32 36, i32 0, metadata !1167, null}
!3293 = metadata !{i32 20, i32 0, metadata !1175, null}
!3294 = metadata !{i32 28, i32 0, metadata !1175, null}
!3295 = metadata !{i32 29, i32 0, metadata !3296, null}
!3296 = metadata !{i32 786443, metadata !1173, metadata !3297, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memchr.c]
!3297 = metadata !{i32 786443, metadata !1173, metadata !1175, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memchr.c]
!3298 = metadata !{i32 30, i32 0, metadata !3299, null}
!3299 = metadata !{i32 786443, metadata !1173, metadata !3296, i32 29, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/string/memchr.c]
!3300 = metadata !{i32 32, i32 0, metadata !3297, null}
!3301 = metadata !{i32 33, i32 0, metadata !3297, null}
!3302 = metadata !{i32 34, i32 0, metadata !3297, null}
!3303 = metadata !{i32 36, i32 0, metadata !1175, null}
!3304 = metadata !{i32 37, i32 0, metadata !1175, null}
!3305 = metadata !{i32 28, i32 0, metadata !1183, null}
!3306 = metadata !{i32 32, i32 0, metadata !1212, null}
!3307 = metadata !{i32 33, i32 0, metadata !1212, null}
!3308 = metadata !{i32 36, i32 0, metadata !3309, null}
!3309 = metadata !{i32 786443, metadata !1181, metadata !1212, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fseeko.c]
!3310 = metadata !{i32 37, i32 0, metadata !3311, null}
!3311 = metadata !{i32 786443, metadata !1181, metadata !3309, i32 36, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fseeko.c]
!3312 = metadata !{i32 38, i32 0, metadata !3311, null}
!3313 = metadata !{i32 43, i32 0, metadata !3314, null}
!3314 = metadata !{i32 786443, metadata !1181, metadata !3315, i32 43, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fseeko.c]
!3315 = metadata !{i32 786443, metadata !1181, metadata !3309, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fseeko.c]
!3316 = metadata !{i32 44, i32 0, metadata !3314, null}
!3317 = metadata !{i32 46, i32 0, metadata !3314, null}
!3318 = metadata !{i32 47, i32 0, metadata !3314, null}
!3319 = metadata !{i32 51, i32 0, metadata !3320, null}
!3320 = metadata !{i32 786443, metadata !1181, metadata !3314, i32 48, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/fseeko.c]
!3321 = metadata !{i32 55, i32 0, metadata !3320, null}
!3322 = metadata !{i32 56, i32 0, metadata !3320, null}
!3323 = metadata !{i32 57, i32 0, metadata !3320, null}
!3324 = metadata !{i32 62, i32 0, metadata !3320, null}
!3325 = metadata !{i32 65, i32 0, metadata !3320, null}
!3326 = metadata !{i32 68, i32 0, metadata !3320, null}
!3327 = metadata !{i32 69, i32 0, metadata !3320, null}
!3328 = metadata !{i32 76, i32 0, metadata !1212, null}
!3329 = metadata !{i32 25, i32 0, metadata !3330, null}
!3330 = metadata !{i32 786443, metadata !1239, metadata !1241, i32 25, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3331 = metadata !{i32 26, i32 0, metadata !3332, null}
!3332 = metadata !{i32 786443, metadata !1239, metadata !3330, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3333 = metadata !{i32 27, i32 0, metadata !3332, null}
!3334 = metadata !{i32 30, i32 0, metadata !3335, null}
!3335 = metadata !{i32 786443, metadata !1239, metadata !1241, i32 30, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3336 = metadata !{i32 34, i32 0, metadata !3337, null}
!3337 = metadata !{i32 786443, metadata !1239, metadata !3338, i32 34, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3338 = metadata !{i32 786443, metadata !1239, metadata !3335, i32 30, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3339 = metadata !{i32 35, i32 0, metadata !3340, null}
!3340 = metadata !{i32 786443, metadata !1239, metadata !3337, i32 34, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3341 = metadata !{i32 37, i32 0, metadata !3338, null}
!3342 = metadata !{i32 38, i32 0, metadata !3343, null}
!3343 = metadata !{i32 786443, metadata !1239, metadata !3338, i32 38, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3344 = metadata !{i32 39, i32 0, metadata !3345, null}
!3345 = metadata !{i32 786443, metadata !1239, metadata !3343, i32 38, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3346 = metadata !{i32 40, i32 0, metadata !3345, null}
!3347 = metadata !{i32 45, i32 0, metadata !1241, null}
!3348 = metadata !{i32 50, i32 0, metadata !1241, null}
!3349 = metadata !{i32 59, i32 0, metadata !3350, null}
!3350 = metadata !{i32 786443, metadata !1239, metadata !1241, i32 59, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3351 = metadata !{i32 60, i32 0, metadata !3352, null}
!3352 = metadata !{i32 786443, metadata !1239, metadata !3350, i32 59, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3353 = metadata !{i32 61, i32 0, metadata !3352, null}
!3354 = metadata !{i32 63, i32 0, metadata !3355, null}
!3355 = metadata !{i32 786443, metadata !1239, metadata !1241, i32 63, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3356 = metadata !{i32 64, i32 0, metadata !3357, null}
!3357 = metadata !{i32 786443, metadata !1239, metadata !3355, i32 63, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/user/uclibc/libc/stdio/_adjust_pos.c]
!3358 = metadata !{i32 65, i32 0, metadata !3357, null}
!3359 = metadata !{i32 67, i32 0, metadata !1241, null}
!3360 = metadata !{i32 68, i32 0, metadata !1241, null}
!3361 = metadata !{i32 66, i32 0, metadata !1274, null}
!3362 = metadata !{i32 71, i32 0, metadata !1274, null}
!3363 = metadata !{i32 12, i32 0, metadata !1306, null}
!3364 = metadata !{i32 16, i32 0, metadata !1312, null}
!3365 = metadata !{i32 21, i32 0, metadata !1318, null}
!3366 = metadata !{i32 34, i32 0, metadata !1343, null}
!3367 = metadata !{i32 35, i32 0, metadata !1343, null}
!3368 = metadata !{i32 50, i32 0, metadata !1343, null}
!3369 = metadata !{i32 53, i32 0, metadata !1347, null}
!3370 = metadata !{i32 55, i32 0, metadata !3371, null}
!3371 = metadata !{i32 786443, metadata !1324, metadata !1347, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!3372 = metadata !{i32 56, i32 0, metadata !3371, null}
!3373 = metadata !{i32 66, i32 0, metadata !3371, null}
!3374 = metadata !{i32 67, i32 0, metadata !3371, null}
!3375 = metadata !{i32 69, i32 0, metadata !3371, null}
!3376 = metadata !{i32 70, i32 0, metadata !3371, null}
!3377 = metadata !{i32 72, i32 0, metadata !3371, null}
!3378 = metadata !{i32 73, i32 0, metadata !3371, null}
!3379 = metadata !{i32 79, i32 0, metadata !1347, null}
!3380 = metadata !{i32 17, i32 0, metadata !1361, null}
!3381 = metadata !{i32 22, i32 0, metadata !1367, null}
!3382 = metadata !{i32 27, i32 0, metadata !1372, null}
!3383 = metadata !{i32 69, i32 0, metadata !3384, null}
!3384 = metadata !{i32 786443, metadata !1351, metadata !1377, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3385 = metadata !{i32 71, i32 0, metadata !3386, null}
!3386 = metadata !{i32 786443, metadata !1351, metadata !3384, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3387 = metadata !{i32 73, i32 0, metadata !3388, null}
!3388 = metadata !{i32 786443, metadata !1351, metadata !3386, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3389 = metadata !{i32 75, i32 0, metadata !3390, null}
!3390 = metadata !{i32 786443, metadata !1351, metadata !3388, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3391 = metadata !{i32 76, i32 0, metadata !3392, null}
!3392 = metadata !{i32 786443, metadata !1351, metadata !3390, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3393 = metadata !{i32 79, i32 0, metadata !1377, null}
!3394 = metadata !{i32 84, i32 0, metadata !3395, null}
!3395 = metadata !{i32 786443, metadata !1351, metadata !1380, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3396 = metadata !{i32 86, i32 0, metadata !3397, null}
!3397 = metadata !{i32 786443, metadata !1351, metadata !3395, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3398 = metadata !{i32 88, i32 0, metadata !3399, null}
!3399 = metadata !{i32 786443, metadata !1351, metadata !3397, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3400 = metadata !{i32 90, i32 0, metadata !3401, null}
!3401 = metadata !{i32 786443, metadata !1351, metadata !3399, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3402 = metadata !{i32 91, i32 0, metadata !3403, null}
!3403 = metadata !{i32 786443, metadata !1351, metadata !3401, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3404 = metadata !{i32 94, i32 0, metadata !1380, null}
!3405 = metadata !{i32 100, i32 0, metadata !3406, null}
!3406 = metadata !{i32 786443, metadata !1351, metadata !1383, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3407 = metadata !{i32 102, i32 0, metadata !3408, null}
!3408 = metadata !{i32 786443, metadata !1351, metadata !3406, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3409 = metadata !{i32 104, i32 0, metadata !3410, null}
!3410 = metadata !{i32 786443, metadata !1351, metadata !3408, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3411 = metadata !{i32 106, i32 0, metadata !3412, null}
!3412 = metadata !{i32 786443, metadata !1351, metadata !3410, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3413 = metadata !{i32 107, i32 0, metadata !3414, null}
!3414 = metadata !{i32 786443, metadata !1351, metadata !3412, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!3415 = metadata !{i32 110, i32 0, metadata !1383, null}
!3416 = metadata !{i32 115, i32 0, metadata !1386, null}
!3417 = metadata !{i32 120, i32 0, metadata !1389, null}
!3418 = metadata !{i32 125, i32 0, metadata !1392, null}
!3419 = metadata !{i32 13, i32 0, metadata !3420, null}
!3420 = metadata !{i32 786443, metadata !1396, metadata !1398, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!3421 = metadata !{i32 14, i32 0, metadata !3420, null}
!3422 = metadata !{i32 15, i32 0, metadata !1398, null}
!3423 = metadata !{i32 15, i32 0, metadata !1408, null}
!3424 = metadata !{i32 16, i32 0, metadata !1408, null}
!3425 = metadata !{metadata !3426, metadata !3426, i64 0}
!3426 = metadata !{metadata !"int", metadata !3427, i64 0}
!3427 = metadata !{metadata !"omnipotent char", metadata !3428, i64 0}
!3428 = metadata !{metadata !"Simple C/C++ TBAA"}
!3429 = metadata !{i32 21, i32 0, metadata !3430, null}
!3430 = metadata !{i32 786443, metadata !1416, metadata !1418, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3431 = metadata !{i32 27, i32 0, metadata !3432, null}
!3432 = metadata !{i32 786443, metadata !1416, metadata !3430, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!3433 = metadata !{i32 29, i32 0, metadata !1418, null}
!3434 = metadata !{i32 16, i32 0, metadata !3435, null}
!3435 = metadata !{i32 786443, metadata !1426, metadata !1428, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3436 = metadata !{i32 17, i32 0, metadata !3435, null}
!3437 = metadata !{i32 19, i32 0, metadata !3438, null}
!3438 = metadata !{i32 786443, metadata !1426, metadata !1428, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3439 = metadata !{i32 22, i32 0, metadata !3440, null}
!3440 = metadata !{i32 786443, metadata !1426, metadata !3438, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3441 = metadata !{i32 25, i32 0, metadata !3442, null}
!3442 = metadata !{i32 786443, metadata !1426, metadata !3440, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3443 = metadata !{i32 26, i32 0, metadata !3444, null}
!3444 = metadata !{i32 786443, metadata !1426, metadata !3442, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3445 = metadata !{i32 27, i32 0, metadata !3444, null}
!3446 = metadata !{i32 28, i32 0, metadata !3447, null}
!3447 = metadata !{i32 786443, metadata !1426, metadata !3442, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!3448 = metadata !{i32 29, i32 0, metadata !3447, null}
!3449 = metadata !{i32 32, i32 0, metadata !3440, null}
!3450 = metadata !{i32 34, i32 0, metadata !1428, null}
!3451 = metadata !{i32 19, i32 0, metadata !1441, null}
!3452 = metadata !{i32 21, i32 0, metadata !3453, null}
!3453 = metadata !{i32 786443, metadata !1438, metadata !1441, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!3454 = metadata !{i32 23, i32 0, metadata !3453, null}
!3455 = metadata !{i32 25, i32 0, metadata !3453, null}
!3456 = metadata !{i32 27, i32 0, metadata !3453, null}
!3457 = metadata !{i32 29, i32 0, metadata !3453, null}
!3458 = metadata !{i32 31, i32 0, metadata !3453, null}
!3459 = metadata !{i32 33, i32 0, metadata !1441, null}
!3460 = metadata !{i32 16, i32 0, metadata !3461, null}
!3461 = metadata !{i32 786443, metadata !1462, metadata !1464, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3462 = metadata !{i32 19, i32 0, metadata !3463, null}
!3463 = metadata !{i32 786443, metadata !1462, metadata !1464, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3464 = metadata !{i32 20, i32 0, metadata !3465, null}
!3465 = metadata !{i32 786443, metadata !1462, metadata !3463, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3466 = metadata !{metadata !3466, metadata !3467, metadata !3468}
!3467 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!3468 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!3469 = metadata !{metadata !3427, metadata !3427, i64 0}
!3470 = metadata !{metadata !3470, metadata !3467, metadata !3468}
!3471 = metadata !{i32 22, i32 0, metadata !3472, null}
!3472 = metadata !{i32 786443, metadata !1462, metadata !3463, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!3473 = metadata !{i32 24, i32 0, metadata !3472, null}
!3474 = metadata !{i32 23, i32 0, metadata !3472, null}
!3475 = metadata !{metadata !3475, metadata !3467, metadata !3468}
!3476 = metadata !{metadata !3476, metadata !3467, metadata !3468}
!3477 = metadata !{i32 28, i32 0, metadata !1464, null}
!3478 = metadata !{i32 12, i32 0, metadata !1507, null}
!3479 = metadata !{i32 16, i32 0, metadata !1511, null}
!3480 = metadata !{i32 21, i32 0, metadata !1514, null}
