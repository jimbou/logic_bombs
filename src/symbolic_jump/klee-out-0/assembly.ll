; ModuleID = 'test_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Logic bomb triggered\22\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"jmp_sj_l1_klee_annotated.c\00", align 1
@__PRETTY_FUNCTION__.logic_bomb = private unnamed_addr constant [23 x i8] c"int logic_bomb(char *)\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"0 && \22Path without the bomb\22\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@switch.table = private unnamed_addr constant [5 x i32] [i32 0, i32 3073, i32 2048, i32 1024, i32 3072]
@.str4 = private unnamed_addr constant [56 x i8] c"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [47 x i8] c"/home/user/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c\00", align 1
@.str110 = private unnamed_addr constant [22 x i8] c"Invalid rounding mode\00", align 1
@.str211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @logic_bomb(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %symvar = alloca i32, align 4
  %addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !245
  %arrayidx = getelementptr inbounds i8* %0, i64 0, !dbg !245
  %1 = load i8* %arrayidx, align 1, !dbg !245
  %conv = sext i8 %1 to i32, !dbg !245
  %sub = sub nsw i32 %conv, 48, !dbg !245
  store i32 %sub, i32* %symvar, align 4, !dbg !245
  %2 = load i32* %symvar, align 4, !dbg !246
  %int_cast_to_i64 = zext i32 6 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !246
  %rem = srem i32 %2, 6, !dbg !246
  %cmp = icmp ne i32 %rem, 1, !dbg !246
  %3 = load i32* %symvar, align 4, !dbg !246
  %cmp2 = icmp slt i32 %3, 10, !dbg !246
  %or.cond = or i1 %cmp, %cmp2, !dbg !246
  %4 = load i32* %symvar, align 4, !dbg !246
  %cmp5 = icmp sgt i32 %4, 40, !dbg !246
  %or.cond1 = or i1 %or.cond, %cmp5, !dbg !246
  %5 = load i32* %symvar, align 4, !dbg !246
  %cmp8 = icmp eq i32 %5, 19, !dbg !246
  %or.cond2 = or i1 %or.cond1, %cmp8, !dbg !246
  br i1 %or.cond2, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  store i32 13, i32* %symvar, align 4, !dbg !248
  br label %if.end, !dbg !248

if.end:                                           ; preds = %entry, %if.then
  %6 = load i32* %symvar, align 4, !dbg !249
  %idx.ext = sext i32 %6 to i64, !dbg !249
  %add.ptr = getelementptr i8* blockaddress(@logic_bomb, %flag_0), i64 %idx.ext, !dbg !249
  %7 = ptrtoint i8* %add.ptr to i64, !dbg !249
  store i64 %7, i64* %addr, align 8, !dbg !249
  %8 = load i64* %addr, align 8, !dbg !250
  call void asm sideeffect "jmp *$0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %8) #9, !dbg !250, !srcloc !251
  br label %flag_0, !dbg !250

flag_0:                                           ; preds = %if.end
  %9 = load i32* %symvar, align 4, !dbg !252
  %cmp10 = icmp sgt i32 %9, 0, !dbg !252
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !252

if.then12:                                        ; preds = %flag_0
  %10 = load i32* %symvar, align 4, !dbg !254
  %inc = add nsw i32 %10, 1, !dbg !254
  store i32 %inc, i32* %symvar, align 4, !dbg !254
  %11 = load i32* %symvar, align 4, !dbg !256
  %cmp13 = icmp eq i32 %11, 0, !dbg !256
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !256

if.then15:                                        ; preds = %if.then12
  %call = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i32 20, i8* get
  br label %if.end17, !dbg !258

if.end17:                                         ; preds = %if.then12, %if.then15, %flag_0
  %call18 = call i32 (i8*, i8*, i32, i8*, ...)* bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i32 22, i8* 
  %12 = load i32* %retval, !dbg !260
  ret i32 %12, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [5 x i8], align 1
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [5 x i8]* %s to i8*, !dbg !261
  call void @klee_make_symbolic(i8* %0, i64 5, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !261
  %arrayidx = getelementptr inbounds [5 x i8]* %s, i32 0, i64 4, !dbg !262
  %1 = load i8* %arrayidx, align 1, !dbg !262
  %conv = sext i8 %1 to i32, !dbg !262
  %cmp = icmp eq i32 %conv, 0, !dbg !262
  %conv1 = zext i1 %cmp to i32, !dbg !262
  %conv2 = sext i32 %conv1 to i64, !dbg !262
  call void @klee_assume(i64 %conv2), !dbg !262
  %arraydecay = getelementptr inbounds [5 x i8]* %s, i32 0, i32 0, !dbg !263
  %call = call i32 @logic_bomb(i8* %arraydecay), !dbg !263
  ret i32 %call, !dbg !263
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_assume(i64) #3

declare zeroext i1 @klee_is_infinite_float(float) #4

declare zeroext i1 @klee_is_infinite_double(double) #4

declare zeroext i1 @klee_is_infinite_long_double(x86_fp80) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinff(float %f) #5 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_float(float %f) #10
  %cmp = fcmp ogt float %f, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @klee_internal_isinf(double %d) #5 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_double(double %d) #10
  %cmp = fcmp ogt double %d, 0.000000e+00
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: noinline optnone
define i32 @klee_internal_isinfl(x86_fp80 %d) #6 {
entry:
  %isinf = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %d) #10
  %cmp = fcmp ogt x86_fp80 %d, 0xK00000000000000000000
  %posOrNeg = select i1 %cmp, i32 1, i32 -1
  %result = select i1 %isinf, i32 %posOrNeg, i32 0
  ret i32 %result
}

; Function Attrs: nounwind uwtable
define double @klee_internal_fabs(double %d) #7 {
entry:
  %call = tail call double @klee_abs_double(double %d) #10, !dbg !264
  ret double %call, !dbg !264
}

declare double @klee_abs_double(double) #4

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #7 {
entry:
  %call = tail call float @klee_abs_float(float %f) #10, !dbg !265
  ret float %call, !dbg !265
}

declare float @klee_abs_float(float) #4

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #7 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #10, !dbg !266
  ret x86_fp80 %call, !dbg !266
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #7 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #10, !dbg !267
  %0 = icmp ult i32 %call, 5, !dbg !268
  br i1 %0, label %switch.lookup, label %return, !dbg !268

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !268
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !268
  %switch.load = load i32* %switch.gep, align 4, !dbg !268
  ret i32 %switch.load, !dbg !268

return:                                           ; preds = %entry
  ret i32 -1, !dbg !269
}

declare i32 @klee_get_rounding_mode(...) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fesetround(i32 %rm) #7 {
entry:
  switch i32 %rm, label %return [
    i32 0, label %sw.bb
    i32 2048, label %sw.bb1
    i32 1024, label %sw.bb2
    i32 3072, label %sw.bb3
  ], !dbg !270

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #10, !dbg !271
  br label %return, !dbg !273

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #10, !dbg !274
  br label %return, !dbg !275

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #10, !dbg !276
  br label %return, !dbg !277

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #10, !dbg !278
  br label %return, !dbg !279

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !280
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #10, !dbg !281
  %conv = zext i1 %call to i32, !dbg !281
  ret i32 %conv, !dbg !281
}

declare zeroext i1 @klee_is_nan_float(float) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #10, !dbg !282
  %conv = zext i1 %call to i32, !dbg !282
  ret i32 %conv, !dbg !282
}

declare zeroext i1 @klee_is_nan_double(double) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #10, !dbg !283
  %conv = zext i1 %call to i32, !dbg !283
  ret i32 %conv, !dbg !283
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #10, !dbg !284
  br i1 %call, label %return, label %if.else, !dbg !284

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #10, !dbg !286
  br i1 %call1, label %return, label %if.else3, !dbg !286

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !288
  br i1 %cmp, label %return, label %if.else5, !dbg !288

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #10, !dbg !290
  %. = select i1 %call6, i32 4, i32 3, !dbg !292
  br label %return, !dbg !292

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !294
}

declare zeroext i1 @klee_is_normal_float(float) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #10, !dbg !295
  br i1 %call, label %return, label %if.else, !dbg !295

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #10, !dbg !297
  br i1 %call1, label %return, label %if.else3, !dbg !297

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !299
  br i1 %cmp, label %return, label %if.else5, !dbg !299

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #10, !dbg !301
  %. = select i1 %call6, i32 4, i32 3, !dbg !303
  br label %return, !dbg !303

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !305
}

declare zeroext i1 @klee_is_normal_double(double) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #10, !dbg !306
  br i1 %call, label %return, label %if.else, !dbg !306

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #10, !dbg !308
  br i1 %call1, label %return, label %if.else3, !dbg !308

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !310
  br i1 %cmp, label %return, label %if.else5, !dbg !310

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #10, !dbg !312
  %. = select i1 %call6, i32 4, i32 3, !dbg !314
  br label %return, !dbg !314

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !316
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #10, !dbg !317
  %0 = zext i1 %call to i32, !dbg !317
  %lnot.ext = xor i32 %0, 1, !dbg !317
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #10, !dbg !317
  %1 = zext i1 %call1 to i32, !dbg !317
  %lnot.ext3 = xor i32 %1, 1, !dbg !317
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !317
  ret i32 %and, !dbg !317
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #10, !dbg !318
  %0 = zext i1 %call to i32, !dbg !318
  %lnot.ext = xor i32 %0, 1, !dbg !318
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #10, !dbg !318
  %1 = zext i1 %call1 to i32, !dbg !318
  %lnot.ext3 = xor i32 %1, 1, !dbg !318
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !318
  ret i32 %and, !dbg !318
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #10, !dbg !319
  %0 = zext i1 %call to i32, !dbg !319
  %lnot.ext = xor i32 %0, 1, !dbg !319
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #10, !dbg !319
  %1 = zext i1 %call1 to i32, !dbg !319
  %lnot.ext3 = xor i32 %1, 1, !dbg !319
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !319
  ret i32 %and, !dbg !319
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #7 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !320
  br i1 %cmp, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0)) #11, !dbg !322
  unreachable, !dbg !322

if.end:                                           ; preds = %entry
  ret void, !dbg !323
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #8

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #7 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !324
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #10, !dbg !324
  %1 = load i32* %x, align 4, !dbg !325, !tbaa !326
  ret i32 %1, !dbg !325
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #7 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !330
  br i1 %cmp, label %if.end, label %if.then, !dbg !330

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #11, !dbg !332
  unreachable, !dbg !332

if.end:                                           ; preds = %entry
  ret void, !dbg !334
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #7 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !335
  br i1 %cmp, label %if.end, label %if.then, !dbg !335

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #11, !dbg !337
  unreachable, !dbg !337

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !338
  %cmp1 = icmp eq i32 %add, %end, !dbg !338
  br i1 %cmp1, label %return, label %if.else, !dbg !338

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !340
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #10, !dbg !340
  %cmp3 = icmp eq i32 %start, 0, !dbg !342
  %1 = load i32* %x, align 4, !dbg !344, !tbaa !326
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !342

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !344
  %conv6 = zext i1 %cmp5 to i64, !dbg !344
  call void @klee_assume(i64 %conv6) #10, !dbg !344
  br label %if.end14, !dbg !346

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !347
  %conv10 = zext i1 %cmp8 to i64, !dbg !347
  call void @klee_assume(i64 %conv10) #10, !dbg !347
  %2 = load i32* %x, align 4, !dbg !349, !tbaa !326
  %cmp11 = icmp slt i32 %2, %end, !dbg !349
  %conv13 = zext i1 %cmp11 to i64, !dbg !349
  call void @klee_assume(i64 %conv13) #10, !dbg !349
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !350, !tbaa !326
  br label %return, !dbg !350

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !351
}

; Function Attrs: nounwind uwtable
define void @klee_set_rounding_mode(i32 %rm) #7 {
entry:
  switch i32 %rm, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !352

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #10, !dbg !353
  br label %sw.epilog, !dbg !353

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #10, !dbg !355
  br label %sw.epilog, !dbg !355

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #10, !dbg !356
  br label %sw.epilog, !dbg !356

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #10, !dbg !357
  br label %sw.epilog, !dbg !357

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #10, !dbg !358
  br label %sw.epilog, !dbg !358

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #11, !dbg !359
  unreachable, !dbg !359

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !360
}

declare void @klee_set_rounding_mode_internal(i32) #4

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #7 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !361
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !361

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !362
  %wide.load = load <16 x i8>* %1, align 1, !dbg !362
  %next.gep.sum282 = or i64 %index, 16, !dbg !362
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !362
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !362
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !362
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !362
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !362
  %next.gep106.sum299 = or i64 %index, 16, !dbg !362
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !362
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !362
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !362
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !363

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
  %dec = add i64 %len.addr.04, -1, !dbg !361
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !362
  %8 = load i8* %src.06, align 1, !dbg !362, !tbaa !366
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !362
  store i8 %8, i8* %dest.05, align 1, !dbg !362, !tbaa !366
  %cmp = icmp eq i64 %dec, 0, !dbg !361
  br i1 %cmp, label %while.end, label %while.body, !dbg !361, !llvm.loop !367

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !368
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #7 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !369
  br i1 %cmp, label %return, label %if.end, !dbg !369

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !371
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !371

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !373
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !373

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !373
  %wide.load = load <16 x i8>* %1, align 1, !dbg !373
  %next.gep.sum610 = or i64 %index, 16, !dbg !373
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !373
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !373
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !373
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !373
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !373
  %next.gep136.sum627 = or i64 %index, 16, !dbg !373
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !373
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !373
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !373
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !375

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
  %dec = add i64 %count.addr.028, -1, !dbg !373
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !373
  %8 = load i8* %b.030, align 1, !dbg !373, !tbaa !366
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !373
  store i8 %8, i8* %a.029, align 1, !dbg !373, !tbaa !366
  %tobool = icmp eq i64 %dec, 0, !dbg !373
  br i1 %tobool, label %return, label %while.body, !dbg !373, !llvm.loop !376

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !377
  %tobool832 = icmp eq i64 %count, 0, !dbg !379
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !379

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !380
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !377
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !379
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !379
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !379
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !379
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !379
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !379
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !379
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !379
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !379
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !379
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !379
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !379
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !379
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !379
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !379
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !379
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !379
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !379
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !379
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !379
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !381

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !379
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !379
  %19 = load i8* %b.135, align 1, !dbg !379, !tbaa !366
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !379
  store i8 %19, i8* %a.134, align 1, !dbg !379, !tbaa !366
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !379
  br i1 %tobool8, label %return, label %while.body9, !dbg !379, !llvm.loop !382

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !383
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #7 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !384
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !384

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !385
  %wide.load = load <16 x i8>* %1, align 1, !dbg !385
  %next.gep.sum283 = or i64 %index, 16, !dbg !385
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !385
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !385
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !385
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !385
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !385
  %next.gep107.sum300 = or i64 %index, 16, !dbg !385
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !385
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !385
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !385
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !386

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
  %dec = add i64 %len.addr.04, -1, !dbg !384
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !385
  %8 = load i8* %src.06, align 1, !dbg !385, !tbaa !366
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !385
  store i8 %8, i8* %dest.05, align 1, !dbg !385, !tbaa !366
  %cmp = icmp eq i64 %dec, 0, !dbg !384
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !384, !llvm.loop !387

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !384

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !388
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #7 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !389
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !389

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !390
  br label %while.body, !dbg !389

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !389
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !390
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !390, !tbaa !366
  %cmp = icmp eq i64 %dec, 0, !dbg !389
  br i1 %cmp, label %while.end, label %while.body, !dbg !389

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !391
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #7 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #10, !dbg !392
  ret double %call, !dbg !392
}

declare double @klee_sqrt_double(double) #4

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #7 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #10, !dbg !393
  ret float %call, !dbg !393
}

declare float @klee_sqrt_float(float) #4

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #7 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #10, !dbg !394
  ret x86_fp80 %call, !dbg !394
}

declare x86_fp80 @klee_sqrt_long_double(x86_fp80) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone }
attributes #7 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !15, !37, !68, !113, !123, !135, !146, !158, !168, !186, !200, !214, !229}
!llvm.module.flags = !{!242, !243}
!llvm.ident = !{!244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"jmp_sj_l1_klee_annotated.c", metadata !"/home/klee/logic_bombs/src/symbolic_jump"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"logic_bomb", metadata !"logic_bomb", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @logic_bomb, null, null, metadata !2, i32 10} ; 
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 25, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_s
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786449, metadata !16, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!16 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!17 = metadata !{metadata !18, metadata !25, metadata !31}
!18 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_fabs, nu
!19 = metadata !{i32 786473, metadata !16}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!20 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !22}
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !18, metadata !"d", metadata !19, i32 16777227, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!25 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_fabsf, n
!26 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !28}
!28 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !25, metadata !"f", metadata !19, i32 16777231, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!31 = metadata !{i32 786478, metadata !16, metadata !19, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_internal_fa
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !34}
!34 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786689, metadata !31, metadata !"f", metadata !19, i32 16777236, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!37 = metadata !{i32 786449, metadata !38, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!38 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fenv.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!39 = metadata !{metadata !40, metadata !49}
!40 = metadata !{i32 786436, metadata !41, null, metadata !"KleeRoundingMode", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KleeRoundingMode] [line 185, size 32, align 32, offset 0] [d
!41 = metadata !{metadata !"/home/user/klee/include/klee/klee.h", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!43 = metadata !{i32 786472, metadata !"KLEE_FP_RNE", i64 0} ; [ DW_TAG_enumerator ] [KLEE_FP_RNE :: 0]
!44 = metadata !{i32 786472, metadata !"KLEE_FP_RNA", i64 1} ; [ DW_TAG_enumerator ] [KLEE_FP_RNA :: 1]
!45 = metadata !{i32 786472, metadata !"KLEE_FP_RU", i64 2} ; [ DW_TAG_enumerator ] [KLEE_FP_RU :: 2]
!46 = metadata !{i32 786472, metadata !"KLEE_FP_RD", i64 3} ; [ DW_TAG_enumerator ] [KLEE_FP_RD :: 3]
!47 = metadata !{i32 786472, metadata !"KLEE_FP_RZ", i64 4} ; [ DW_TAG_enumerator ] [KLEE_FP_RZ :: 4]
!48 = metadata !{i32 786472, metadata !"KLEE_FP_UNKNOWN", i64 5} ; [ DW_TAG_enumerator ] [KLEE_FP_UNKNOWN :: 5]
!49 = metadata !{i32 786436, metadata !38, null, metadata !"", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 15, size 32, align 32, offset 0] [def] [from ]
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!51 = metadata !{i32 786472, metadata !"FE_TONEAREST", i64 0} ; [ DW_TAG_enumerator ] [FE_TONEAREST :: 0]
!52 = metadata !{i32 786472, metadata !"FE_DOWNWARD", i64 1024} ; [ DW_TAG_enumerator ] [FE_DOWNWARD :: 1024]
!53 = metadata !{i32 786472, metadata !"FE_UPWARD", i64 2048} ; [ DW_TAG_enumerator ] [FE_UPWARD :: 2048]
!54 = metadata !{i32 786472, metadata !"FE_TOWARDZERO", i64 3072} ; [ DW_TAG_enumerator ] [FE_TOWARDZERO :: 3072]
!55 = metadata !{i32 786472, metadata !"FE_TONEAREST_TIES_TO_AWAY", i64 3073} ; [ DW_TAG_enumerator ] [FE_TONEAREST_TIES_TO_AWAY :: 3073]
!56 = metadata !{metadata !57, metadata !63}
!57 = metadata !{i32 786478, metadata !38, metadata !58, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_internal_feget
!58 = metadata !{i32 786473, metadata !38}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!59 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !8}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786688, metadata !57, metadata !"rm", metadata !58, i32 34, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!63 = metadata !{i32 786478, metadata !38, metadata !58, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_internal_fe
!64 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !8, metadata !8}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786689, metadata !63, metadata !"rm", metadata !58, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!68 = metadata !{i32 786449, metadata !69, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!69 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786436, metadata !69, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !72, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!73 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!74 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!75 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!76 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!77 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!78 = metadata !{metadata !79, metadata !85, metadata !90, metadata !95, metadata !98, metadata !101, metadata !104, metadata !107, metadata !110}
!79 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_isnanf, 
!80 = metadata !{i32 786473, metadata !69}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!81 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !8, metadata !28}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786689, metadata !79, metadata !"f", metadata !80, i32 16777232, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!85 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_isnan, nu
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !8, metadata !22}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786689, metadata !85, metadata !"d", metadata !80, i32 16777237, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!90 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_internal_isnan
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !8, metadata !34}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786689, metadata !90, metadata !"d", metadata !80, i32 16777242, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!95 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_interna
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786689, metadata !95, metadata !"f", metadata !80, i32 16777283, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!98 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786689, metadata !98, metadata !"f", metadata !80, i32 16777298, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!101 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_int
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786689, metadata !101, metadata !"ld", metadata !80, i32 16777314, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!104 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_fini
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786689, metadata !104, metadata !"f", metadata !80, i32 16777330, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!107 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_finit
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786689, metadata !107, metadata !"f", metadata !80, i32 16777335, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!110 = metadata !{i32 786478, metadata !69, metadata !80, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_internal_f
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786689, metadata !110, metadata !"f", metadata !80, i32 16777340, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!113 = metadata !{i32 786449, metadata !114, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!114 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786478, metadata !114, metadata !117, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!117 = metadata !{i32 786473, metadata !114}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!118 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !120}
!120 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786689, metadata !116, metadata !"z", metadata !117, i32 16777228, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!123 = metadata !{i32 786449, metadata !124, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!124 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786478, metadata !124, metadata !127, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !132, i32 13}
!127 = metadata !{i32 786473, metadata !124}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!128 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !8, metadata !130}
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!132 = metadata !{metadata !133, metadata !134}
!133 = metadata !{i32 786689, metadata !126, metadata !"name", metadata !127, i32 16777229, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!134 = metadata !{i32 786688, metadata !126, metadata !"x", metadata !127, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!135 = metadata !{i32 786449, metadata !136, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!136 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 786478, metadata !136, metadata !139, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!139 = metadata !{i32 786473, metadata !136}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!140 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{null, metadata !142, metadata !142}
!142 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!143 = metadata !{metadata !144, metadata !145}
!144 = metadata !{i32 786689, metadata !138, metadata !"bitWidth", metadata !139, i32 16777236, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!145 = metadata !{i32 786689, metadata !138, metadata !"shift", metadata !139, i32 33554452, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!146 = metadata !{i32 786449, metadata !147, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!147 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 786478, metadata !147, metadata !150, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!150 = metadata !{i32 786473, metadata !147}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!151 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!152 = metadata !{metadata !8, metadata !8, metadata !8, metadata !130}
!153 = metadata !{metadata !154, metadata !155, metadata !156, metadata !157}
!154 = metadata !{i32 786689, metadata !149, metadata !"start", metadata !150, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!155 = metadata !{i32 786689, metadata !149, metadata !"end", metadata !150, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!156 = metadata !{i32 786689, metadata !149, metadata !"name", metadata !150, i32 50331661, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!157 = metadata !{i32 786688, metadata !149, metadata !"x", metadata !150, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!158 = metadata !{i32 786449, metadata !159, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!159 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!160 = metadata !{metadata !40}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786478, metadata !159, metadata !163, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_roundi
!163 = metadata !{i32 786473, metadata !159}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!164 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{null, metadata !40}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 786689, metadata !162, metadata !"rm", metadata !163, i32 16777232, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!168 = metadata !{i32 786449, metadata !169, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!169 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 786478, metadata !169, metadata !172, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !180, i32
!172 = metadata !{i32 786473, metadata !169}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!173 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !175, metadata !176, metadata !178}
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!177 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{i32 786454, metadata !169, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!179 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!180 = metadata !{metadata !181, metadata !182, metadata !183, metadata !184, metadata !185}
!181 = metadata !{i32 786689, metadata !171, metadata !"destaddr", metadata !172, i32 16777228, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!182 = metadata !{i32 786689, metadata !171, metadata !"srcaddr", metadata !172, i32 33554444, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!183 = metadata !{i32 786689, metadata !171, metadata !"len", metadata !172, i32 50331660, metadata !178, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!184 = metadata !{i32 786688, metadata !171, metadata !"dest", metadata !172, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!185 = metadata !{i32 786688, metadata !171, metadata !"src", metadata !172, i32 14, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!186 = metadata !{i32 786449, metadata !187, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!187 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 786478, metadata !187, metadata !190, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !191, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !194, 
!190 = metadata !{i32 786473, metadata !187}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!191 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!192 = metadata !{metadata !175, metadata !175, metadata !176, metadata !193}
!193 = metadata !{i32 786454, metadata !187, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!195 = metadata !{i32 786689, metadata !189, metadata !"dst", metadata !190, i32 16777228, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!196 = metadata !{i32 786689, metadata !189, metadata !"src", metadata !190, i32 33554444, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!197 = metadata !{i32 786689, metadata !189, metadata !"count", metadata !190, i32 50331660, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!198 = metadata !{i32 786688, metadata !189, metadata !"a", metadata !190, i32 13, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!199 = metadata !{i32 786688, metadata !189, metadata !"b", metadata !190, i32 14, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!200 = metadata !{i32 786449, metadata !201, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!201 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786478, metadata !201, metadata !204, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !205, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !208, 
!204 = metadata !{i32 786473, metadata !201}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!205 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{metadata !175, metadata !175, metadata !176, metadata !207}
!207 = metadata !{i32 786454, metadata !201, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!209 = metadata !{i32 786689, metadata !203, metadata !"destaddr", metadata !204, i32 16777227, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!210 = metadata !{i32 786689, metadata !203, metadata !"srcaddr", metadata !204, i32 33554443, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!211 = metadata !{i32 786689, metadata !203, metadata !"len", metadata !204, i32 50331659, metadata !207, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!212 = metadata !{i32 786688, metadata !203, metadata !"dest", metadata !204, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!213 = metadata !{i32 786688, metadata !203, metadata !"src", metadata !204, i32 13, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!214 = metadata !{i32 786449, metadata !215, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!215 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786478, metadata !215, metadata !218, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !222, i32
!218 = metadata !{i32 786473, metadata !215}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!219 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !175, metadata !175, metadata !8, metadata !221}
!221 = metadata !{i32 786454, metadata !215, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226}
!223 = metadata !{i32 786689, metadata !217, metadata !"dst", metadata !218, i32 16777227, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!224 = metadata !{i32 786689, metadata !217, metadata !"s", metadata !218, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!225 = metadata !{i32 786689, metadata !217, metadata !"count", metadata !218, i32 50331659, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!226 = metadata !{i32 786688, metadata !217, metadata !"a", metadata !218, i32 12, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!228 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!229 = metadata !{i32 786449, metadata !230, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!230 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!231 = metadata !{metadata !232, metadata !236, metadata !239}
!232 = metadata !{i32 786478, metadata !230, metadata !233, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_sqrt,
!233 = metadata !{i32 786473, metadata !230}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!234 = metadata !{metadata !235}
!235 = metadata !{i32 786689, metadata !232, metadata !"d", metadata !233, i32 16777227, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!236 = metadata !{i32 786478, metadata !230, metadata !233, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_sqrtf
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786689, metadata !236, metadata !"f", metadata !233, i32 16777231, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!239 = metadata !{i32 786478, metadata !230, metadata !233, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_internal
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786689, metadata !239, metadata !"f", metadata !233, i32 16777236, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!242 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!243 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!244 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!245 = metadata !{i32 11, i32 0, metadata !4, null}
!246 = metadata !{i32 12, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!248 = metadata !{i32 13, i32 0, metadata !247, null}
!249 = metadata !{i32 14, i32 0, metadata !4, null}
!250 = metadata !{i32 15, i32 0, metadata !4, null}
!251 = metadata !{i32 -2146802964}
!252 = metadata !{i32 17, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!254 = metadata !{i32 18, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 17, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!256 = metadata !{i32 19, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 19, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/src/symbolic_jump/jmp_sj_l1_klee_annotated.c]
!258 = metadata !{i32 20, i32 0, metadata !257, null}
!259 = metadata !{i32 22, i32 0, metadata !4, null}
!260 = metadata !{i32 23, i32 0, metadata !4, null}
!261 = metadata !{i32 27, i32 0, metadata !11, null}
!262 = metadata !{i32 28, i32 0, metadata !11, null}
!263 = metadata !{i32 29, i32 0, metadata !11, null}
!264 = metadata !{i32 12, i32 0, metadata !18, null}
!265 = metadata !{i32 16, i32 0, metadata !25, null}
!266 = metadata !{i32 21, i32 0, metadata !31, null}
!267 = metadata !{i32 34, i32 0, metadata !57, null}
!268 = metadata !{i32 35, i32 0, metadata !57, null}
!269 = metadata !{i32 50, i32 0, metadata !57, null}
!270 = metadata !{i32 53, i32 0, metadata !63, null}
!271 = metadata !{i32 55, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !38, metadata !63, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!273 = metadata !{i32 56, i32 0, metadata !272, null}
!274 = metadata !{i32 66, i32 0, metadata !272, null}
!275 = metadata !{i32 67, i32 0, metadata !272, null}
!276 = metadata !{i32 69, i32 0, metadata !272, null}
!277 = metadata !{i32 70, i32 0, metadata !272, null}
!278 = metadata !{i32 72, i32 0, metadata !272, null}
!279 = metadata !{i32 73, i32 0, metadata !272, null}
!280 = metadata !{i32 79, i32 0, metadata !63, null}
!281 = metadata !{i32 17, i32 0, metadata !79, null}
!282 = metadata !{i32 22, i32 0, metadata !85, null}
!283 = metadata !{i32 27, i32 0, metadata !90, null}
!284 = metadata !{i32 69, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !69, metadata !95, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!286 = metadata !{i32 71, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !69, metadata !285, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!288 = metadata !{i32 73, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !69, metadata !287, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!290 = metadata !{i32 75, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !69, metadata !289, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!292 = metadata !{i32 76, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !69, metadata !291, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!294 = metadata !{i32 79, i32 0, metadata !95, null}
!295 = metadata !{i32 84, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !69, metadata !98, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!297 = metadata !{i32 86, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !69, metadata !296, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!299 = metadata !{i32 88, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !69, metadata !298, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!301 = metadata !{i32 90, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !69, metadata !300, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!303 = metadata !{i32 91, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !69, metadata !302, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!305 = metadata !{i32 94, i32 0, metadata !98, null}
!306 = metadata !{i32 100, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !69, metadata !101, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!308 = metadata !{i32 102, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !69, metadata !307, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!310 = metadata !{i32 104, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !69, metadata !309, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!312 = metadata !{i32 106, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !69, metadata !311, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!314 = metadata !{i32 107, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !69, metadata !313, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!316 = metadata !{i32 110, i32 0, metadata !101, null}
!317 = metadata !{i32 115, i32 0, metadata !104, null}
!318 = metadata !{i32 120, i32 0, metadata !107, null}
!319 = metadata !{i32 125, i32 0, metadata !110, null}
!320 = metadata !{i32 13, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !114, metadata !116, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!322 = metadata !{i32 14, i32 0, metadata !321, null}
!323 = metadata !{i32 15, i32 0, metadata !116, null}
!324 = metadata !{i32 15, i32 0, metadata !126, null}
!325 = metadata !{i32 16, i32 0, metadata !126, null}
!326 = metadata !{metadata !327, metadata !327, i64 0}
!327 = metadata !{metadata !"int", metadata !328, i64 0}
!328 = metadata !{metadata !"omnipotent char", metadata !329, i64 0}
!329 = metadata !{metadata !"Simple C/C++ TBAA"}
!330 = metadata !{i32 21, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !136, metadata !138, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!332 = metadata !{i32 27, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !136, metadata !331, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!334 = metadata !{i32 29, i32 0, metadata !138, null}
!335 = metadata !{i32 16, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !147, metadata !149, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!337 = metadata !{i32 17, i32 0, metadata !336, null}
!338 = metadata !{i32 19, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !147, metadata !149, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!340 = metadata !{i32 22, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !147, metadata !339, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!342 = metadata !{i32 25, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !147, metadata !341, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!344 = metadata !{i32 26, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !147, metadata !343, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!346 = metadata !{i32 27, i32 0, metadata !345, null}
!347 = metadata !{i32 28, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !147, metadata !343, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!349 = metadata !{i32 29, i32 0, metadata !348, null}
!350 = metadata !{i32 32, i32 0, metadata !341, null}
!351 = metadata !{i32 34, i32 0, metadata !149, null}
!352 = metadata !{i32 19, i32 0, metadata !162, null}
!353 = metadata !{i32 21, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !159, metadata !162, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!355 = metadata !{i32 23, i32 0, metadata !354, null}
!356 = metadata !{i32 25, i32 0, metadata !354, null}
!357 = metadata !{i32 27, i32 0, metadata !354, null}
!358 = metadata !{i32 29, i32 0, metadata !354, null}
!359 = metadata !{i32 31, i32 0, metadata !354, null}
!360 = metadata !{i32 33, i32 0, metadata !162, null}
!361 = metadata !{i32 16, i32 0, metadata !171, null}
!362 = metadata !{i32 17, i32 0, metadata !171, null}
!363 = metadata !{metadata !363, metadata !364, metadata !365}
!364 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!365 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!366 = metadata !{metadata !328, metadata !328, i64 0}
!367 = metadata !{metadata !367, metadata !364, metadata !365}
!368 = metadata !{i32 18, i32 0, metadata !171, null}
!369 = metadata !{i32 16, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !187, metadata !189, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!371 = metadata !{i32 19, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !187, metadata !189, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!373 = metadata !{i32 20, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !187, metadata !372, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!375 = metadata !{metadata !375, metadata !364, metadata !365}
!376 = metadata !{metadata !376, metadata !364, metadata !365}
!377 = metadata !{i32 22, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !187, metadata !372, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!379 = metadata !{i32 24, i32 0, metadata !378, null}
!380 = metadata !{i32 23, i32 0, metadata !378, null}
!381 = metadata !{metadata !381, metadata !364, metadata !365}
!382 = metadata !{metadata !382, metadata !364, metadata !365}
!383 = metadata !{i32 28, i32 0, metadata !189, null}
!384 = metadata !{i32 15, i32 0, metadata !203, null}
!385 = metadata !{i32 16, i32 0, metadata !203, null}
!386 = metadata !{metadata !386, metadata !364, metadata !365}
!387 = metadata !{metadata !387, metadata !364, metadata !365}
!388 = metadata !{i32 17, i32 0, metadata !203, null}
!389 = metadata !{i32 13, i32 0, metadata !217, null}
!390 = metadata !{i32 14, i32 0, metadata !217, null}
!391 = metadata !{i32 15, i32 0, metadata !217, null}
!392 = metadata !{i32 12, i32 0, metadata !232, null}
!393 = metadata !{i32 16, i32 0, metadata !236, null}
!394 = metadata !{i32 21, i32 0, metadata !239, null}
