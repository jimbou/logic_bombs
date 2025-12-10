; ModuleID = 'e_acosh_float.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@switch.table = private unnamed_addr constant [5 x i32] [i32 0, i32 3073, i32 2048, i32 1024, i32 3072]
@.str1 = private unnamed_addr constant [56 x i8] c"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [47 x i8] c"/home/user/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c\00", align 1
@.str110 = private unnamed_addr constant [22 x i8] c"Invalid rounding mode\00", align 1
@.str211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define double @__ieee754_acosh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %hx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  %0 = bitcast double* %x.addr to i32*, !dbg !245
  %1 = load i32* %0, align 4, !dbg !245
  store i32 %1, i32* %hx, align 4, !dbg !245
  %2 = load i32* %hx, align 4, !dbg !246
  %cmp = icmp slt i32 %2, 1072693248, !dbg !246
  br i1 %cmp, label %if.then, label %if.else, !dbg !246

if.then:                                          ; preds = %entry
  %3 = load double* %x.addr, align 8, !dbg !248
  %4 = load double* %x.addr, align 8, !dbg !248
  %sub = fsub double %3, %4, !dbg !248
  %5 = load double* %x.addr, align 8, !dbg !248
  %6 = load double* %x.addr, align 8, !dbg !248
  %sub1 = fsub double %5, %6, !dbg !248
  %div = fdiv double %sub, %sub1, !dbg !248
  store double %div, double* %retval, !dbg !248
  br label %return, !dbg !248

if.else:                                          ; preds = %entry
  %7 = load i32* %hx, align 4, !dbg !250
  %cmp2 = icmp sge i32 %7, 1102053376, !dbg !250
  %8 = load i32* %hx, align 4, !dbg !252
  br i1 %cmp2, label %if.then3, label %if.else8, !dbg !250

if.then3:                                         ; preds = %if.else
  %cmp4 = icmp sge i32 %8, 2146435072, !dbg !252
  %9 = load double* %x.addr, align 8, !dbg !255
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !252

if.then5:                                         ; preds = %if.then3
  %10 = load double* %x.addr, align 8, !dbg !255
  %add = fadd double %9, %10, !dbg !255
  store double %add, double* %retval, !dbg !255
  br label %return, !dbg !255

if.else6:                                         ; preds = %if.then3
  %call = call double @__ieee754_log(double %9), !dbg !257
  %add7 = fadd double %call, 0x3FE62E42FEFA39EF, !dbg !257
  store double %add7, double* %retval, !dbg !257
  br label %return, !dbg !257

if.else8:                                         ; preds = %if.else
  %sub9 = sub nsw i32 %8, 1072693248, !dbg !258
  %11 = bitcast double* %x.addr to i32*, !dbg !258
  %add.ptr = getelementptr inbounds i32* %11, i64 1, !dbg !258
  %12 = load i32* %add.ptr, align 4, !dbg !258
  %or = or i32 %sub9, %12, !dbg !258
  %cmp10 = icmp eq i32 %or, 0, !dbg !258
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !258

if.then11:                                        ; preds = %if.else8
  store double 0.000000e+00, double* %retval, !dbg !260
  br label %return, !dbg !260

if.else12:                                        ; preds = %if.else8
  %13 = load i32* %hx, align 4, !dbg !262
  %cmp13 = icmp sgt i32 %13, 1073741824, !dbg !262
  %14 = load double* %x.addr, align 8, !dbg !264
  br i1 %cmp13, label %if.then14, label %if.else22, !dbg !262

if.then14:                                        ; preds = %if.else12
  %15 = load double* %x.addr, align 8, !dbg !264
  %mul = fmul double %14, %15, !dbg !264
  store double %mul, double* %t, align 8, !dbg !264
  %16 = load double* %x.addr, align 8, !dbg !266
  %mul15 = fmul double 2.000000e+00, %16, !dbg !266
  %17 = load double* %x.addr, align 8, !dbg !266
  %18 = load double* %t, align 8, !dbg !266
  %sub16 = fsub double %18, 1.000000e+00, !dbg !266
  %call17 = call double @klee_internal_sqrt(double %sub16) #9, !dbg !266
  %add18 = fadd double %17, %call17, !dbg !266
  %div19 = fdiv double 1.000000e+00, %add18, !dbg !266
  %sub20 = fsub double %mul15, %div19, !dbg !266
  %call21 = call double @__ieee754_log(double %sub20), !dbg !266
  store double %call21, double* %retval, !dbg !266
  br label %return, !dbg !266

if.else22:                                        ; preds = %if.else12
  %sub23 = fsub double %14, 1.000000e+00, !dbg !267
  store double %sub23, double* %t, align 8, !dbg !267
  %19 = load double* %t, align 8, !dbg !269
  %20 = load double* %t, align 8, !dbg !269
  %mul24 = fmul double 2.000000e+00, %20, !dbg !269
  %21 = load double* %t, align 8, !dbg !269
  %22 = load double* %t, align 8, !dbg !269
  %mul25 = fmul double %21, %22, !dbg !269
  %add26 = fadd double %mul24, %mul25, !dbg !269
  %call27 = call double @klee_internal_sqrt(double %add26) #9, !dbg !269
  %add28 = fadd double %19, %call27, !dbg !269
  %call29 = call double @log1p(double %add28) #9, !dbg !269
  store double %call29, double* %retval, !dbg !269
  br label %return, !dbg !269

return:                                           ; preds = %if.else22, %if.then14, %if.then11, %if.else6, %if.then5, %if.then
  %23 = load double* %retval, !dbg !270
  ret double %23, !dbg !270
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare double @__ieee754_log(double) #2

; Function Attrs: nounwind
declare double @log1p(double) #3

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval
  %0 = bitcast double* %a0 to i8*, !dbg !271
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)), !dbg !271
  %1 = load double* %a0, align 8, !dbg !272
  %call = call double @__ieee754_acosh(double %1), !dbg !272
  store double %call, double* %r, align 8, !dbg !272
  ret i32 0, !dbg !273
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

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
  %call = tail call double @klee_abs_double(double %d) #10, !dbg !274
  ret double %call, !dbg !274
}

declare double @klee_abs_double(double) #4

; Function Attrs: nounwind uwtable
define float @klee_internal_fabsf(float %f) #7 {
entry:
  %call = tail call float @klee_abs_float(float %f) #10, !dbg !275
  ret float %call, !dbg !275
}

declare float @klee_abs_float(float) #4

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_fabsl(x86_fp80 %f) #7 {
entry:
  %call = tail call x86_fp80 @klee_abs_long_double(x86_fp80 %f) #10, !dbg !276
  ret x86_fp80 %call, !dbg !276
}

declare x86_fp80 @klee_abs_long_double(x86_fp80) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fegetround() #7 {
entry:
  %call = tail call i32 (...)* @klee_get_rounding_mode() #10, !dbg !277
  %0 = icmp ult i32 %call, 5, !dbg !278
  br i1 %0, label %switch.lookup, label %return, !dbg !278

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %call to i64, !dbg !278
  %switch.gep = getelementptr inbounds [5 x i32]* @switch.table, i64 0, i64 %1, !dbg !278
  %switch.load = load i32* %switch.gep, align 4, !dbg !278
  ret i32 %switch.load, !dbg !278

return:                                           ; preds = %entry
  ret i32 -1, !dbg !279
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
  ], !dbg !280

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 0) #10, !dbg !281
  br label %return, !dbg !283

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 2) #10, !dbg !284
  br label %return, !dbg !285

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 3) #10, !dbg !286
  br label %return, !dbg !287

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode(i32 4) #10, !dbg !288
  br label %return, !dbg !289

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !290
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanf(float %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #10, !dbg !291
  %conv = zext i1 %call to i32, !dbg !291
  ret i32 %conv, !dbg !291
}

declare zeroext i1 @klee_is_nan_float(float) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnan(double %d) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %d) #10, !dbg !292
  %conv = zext i1 %call to i32, !dbg !292
  ret i32 %conv, !dbg !292
}

declare zeroext i1 @klee_is_nan_double(double) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_isnanl(x86_fp80 %d) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %d) #10, !dbg !293
  %conv = zext i1 %call to i32, !dbg !293
  ret i32 %conv, !dbg !293
}

declare zeroext i1 @klee_is_nan_long_double(x86_fp80) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyf(float %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #10, !dbg !294
  br i1 %call, label %return, label %if.else, !dbg !294

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #10, !dbg !296
  br i1 %call1, label %return, label %if.else3, !dbg !296

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq float %f, 0.000000e+00, !dbg !298
  br i1 %cmp, label %return, label %if.else5, !dbg !298

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_float(float %f) #10, !dbg !300
  %. = select i1 %call6, i32 4, i32 3, !dbg !302
  br label %return, !dbg !302

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !304
}

declare zeroext i1 @klee_is_normal_float(float) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassify(double %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #10, !dbg !305
  br i1 %call, label %return, label %if.else, !dbg !305

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #10, !dbg !307
  br i1 %call1, label %return, label %if.else3, !dbg !307

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq double %f, 0.000000e+00, !dbg !309
  br i1 %cmp, label %return, label %if.else5, !dbg !309

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_double(double %f) #10, !dbg !311
  %. = select i1 %call6, i32 4, i32 3, !dbg !313
  br label %return, !dbg !313

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !315
}

declare zeroext i1 @klee_is_normal_double(double) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_fpclassifyl(x86_fp80 %ld) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %ld) #10, !dbg !316
  br i1 %call, label %return, label %if.else, !dbg !316

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %ld) #10, !dbg !318
  br i1 %call1, label %return, label %if.else3, !dbg !318

if.else3:                                         ; preds = %if.else
  %cmp = fcmp oeq x86_fp80 %ld, 0xK00000000000000000000, !dbg !320
  br i1 %cmp, label %return, label %if.else5, !dbg !320

if.else5:                                         ; preds = %if.else3
  %call6 = tail call zeroext i1 @klee_is_normal_long_double(x86_fp80 %ld) #10, !dbg !322
  %. = select i1 %call6, i32 4, i32 3, !dbg !324
  br label %return, !dbg !324

return:                                           ; preds = %if.else5, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], [ %., %if.else5 ]
  ret i32 %retval.0, !dbg !326
}

declare zeroext i1 @klee_is_normal_long_double(x86_fp80) #4

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitef(float %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_float(float %f) #10, !dbg !327
  %0 = zext i1 %call to i32, !dbg !327
  %lnot.ext = xor i32 %0, 1, !dbg !327
  %call1 = tail call zeroext i1 @klee_is_infinite_float(float %f) #10, !dbg !327
  %1 = zext i1 %call1 to i32, !dbg !327
  %lnot.ext3 = xor i32 %1, 1, !dbg !327
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !327
  ret i32 %and, !dbg !327
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finite(double %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_double(double %f) #10, !dbg !328
  %0 = zext i1 %call to i32, !dbg !328
  %lnot.ext = xor i32 %0, 1, !dbg !328
  %call1 = tail call zeroext i1 @klee_is_infinite_double(double %f) #10, !dbg !328
  %1 = zext i1 %call1 to i32, !dbg !328
  %lnot.ext3 = xor i32 %1, 1, !dbg !328
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !328
  ret i32 %and, !dbg !328
}

; Function Attrs: nounwind uwtable
define i32 @klee_internal_finitel(x86_fp80 %f) #7 {
entry:
  %call = tail call zeroext i1 @klee_is_nan_long_double(x86_fp80 %f) #10, !dbg !329
  %0 = zext i1 %call to i32, !dbg !329
  %lnot.ext = xor i32 %0, 1, !dbg !329
  %call1 = tail call zeroext i1 @klee_is_infinite_long_double(x86_fp80 %f) #10, !dbg !329
  %1 = zext i1 %call1 to i32, !dbg !329
  %lnot.ext3 = xor i32 %1, 1, !dbg !329
  %and = and i32 %lnot.ext3, %lnot.ext, !dbg !329
  ret i32 %and, !dbg !329
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #7 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #11, !dbg !332
  unreachable, !dbg !332

if.end:                                           ; preds = %entry
  ret void, !dbg !333
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #8

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #7 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !334
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #10, !dbg !334
  %1 = load i32* %x, align 4, !dbg !335, !tbaa !336
  ret i32 %1, !dbg !335
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #7 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !340
  br i1 %cmp, label %if.end, label %if.then, !dbg !340

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #11, !dbg !342
  unreachable, !dbg !342

if.end:                                           ; preds = %entry
  ret void, !dbg !344
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #7 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !345
  br i1 %cmp, label %if.end, label %if.then, !dbg !345

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([47 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #11, !dbg !347
  unreachable, !dbg !347

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !348
  %cmp1 = icmp eq i32 %add, %end, !dbg !348
  br i1 %cmp1, label %return, label %if.else, !dbg !348

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !350
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #10, !dbg !350
  %cmp3 = icmp eq i32 %start, 0, !dbg !352
  %1 = load i32* %x, align 4, !dbg !354, !tbaa !336
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !352

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !354
  %conv6 = zext i1 %cmp5 to i64, !dbg !354
  call void @klee_assume(i64 %conv6) #10, !dbg !354
  br label %if.end14, !dbg !356

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !357
  %conv10 = zext i1 %cmp8 to i64, !dbg !357
  call void @klee_assume(i64 %conv10) #10, !dbg !357
  %2 = load i32* %x, align 4, !dbg !359, !tbaa !336
  %cmp11 = icmp slt i32 %2, %end, !dbg !359
  %conv13 = zext i1 %cmp11 to i64, !dbg !359
  call void @klee_assume(i64 %conv13) #10, !dbg !359
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !360, !tbaa !336
  br label %return, !dbg !360

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !361
}

declare void @klee_assume(i64) #4

; Function Attrs: nounwind uwtable
define void @klee_set_rounding_mode(i32 %rm) #7 {
entry:
  switch i32 %rm, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !362

sw.bb:                                            ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 0) #10, !dbg !363
  br label %sw.epilog, !dbg !363

sw.bb1:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 1) #10, !dbg !365
  br label %sw.epilog, !dbg !365

sw.bb2:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 2) #10, !dbg !366
  br label %sw.epilog, !dbg !366

sw.bb3:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 3) #10, !dbg !367
  br label %sw.epilog, !dbg !367

sw.bb4:                                           ; preds = %entry
  tail call void @klee_set_rounding_mode_internal(i32 4) #10, !dbg !368
  br label %sw.epilog, !dbg !368

sw.default:                                       ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([22 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str211, i64 0, i64 0)) #11, !dbg !369
  unreachable, !dbg !369

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !370
}

declare void @klee_set_rounding_mode_internal(i32) #4

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #7 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !371
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !371

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !372
  %wide.load = load <16 x i8>* %1, align 1, !dbg !372
  %next.gep.sum282 = or i64 %index, 16, !dbg !372
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !372
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !372
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !372
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !372
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !372
  %next.gep106.sum299 = or i64 %index, 16, !dbg !372
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !372
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !372
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !372
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !373

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
  %dec = add i64 %len.addr.04, -1, !dbg !371
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !372
  %8 = load i8* %src.06, align 1, !dbg !372, !tbaa !376
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !372
  store i8 %8, i8* %dest.05, align 1, !dbg !372, !tbaa !376
  %cmp = icmp eq i64 %dec, 0, !dbg !371
  br i1 %cmp, label %while.end, label %while.body, !dbg !371, !llvm.loop !377

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !378
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #7 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !379
  br i1 %cmp, label %return, label %if.end, !dbg !379

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !381
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !381

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !383
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !383

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !383
  %wide.load = load <16 x i8>* %1, align 1, !dbg !383
  %next.gep.sum610 = or i64 %index, 16, !dbg !383
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !383
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !383
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !383
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !383
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !383
  %next.gep136.sum627 = or i64 %index, 16, !dbg !383
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !383
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !383
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !383
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !385

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
  %dec = add i64 %count.addr.028, -1, !dbg !383
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !383
  %8 = load i8* %b.030, align 1, !dbg !383, !tbaa !376
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !383
  store i8 %8, i8* %a.029, align 1, !dbg !383, !tbaa !376
  %tobool = icmp eq i64 %dec, 0, !dbg !383
  br i1 %tobool, label %return, label %while.body, !dbg !383, !llvm.loop !386

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !387
  %tobool832 = icmp eq i64 %count, 0, !dbg !389
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !389

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !390
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !387
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !389
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !389
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !389
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !389
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !389
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !389
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !389
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !389
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !389
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !389
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !389
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !389
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !389
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !389
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !389
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !389
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !389
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !389
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !389
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !389
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !391

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !389
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !389
  %19 = load i8* %b.135, align 1, !dbg !389, !tbaa !376
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !389
  store i8 %19, i8* %a.134, align 1, !dbg !389, !tbaa !376
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !389
  br i1 %tobool8, label %return, label %while.body9, !dbg !389, !llvm.loop !392

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !393
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #7 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !394
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !394

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !395
  %wide.load = load <16 x i8>* %1, align 1, !dbg !395
  %next.gep.sum283 = or i64 %index, 16, !dbg !395
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !395
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !395
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !395
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !395
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !395
  %next.gep107.sum300 = or i64 %index, 16, !dbg !395
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !395
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !395
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !395
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !396

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
  %dec = add i64 %len.addr.04, -1, !dbg !394
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !395
  %8 = load i8* %src.06, align 1, !dbg !395, !tbaa !376
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !395
  store i8 %8, i8* %dest.05, align 1, !dbg !395, !tbaa !376
  %cmp = icmp eq i64 %dec, 0, !dbg !394
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !394, !llvm.loop !397

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !394

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !398
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #7 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !399
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !399

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !400
  br label %while.body, !dbg !399

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !399
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !400
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !400, !tbaa !376
  %cmp = icmp eq i64 %dec, 0, !dbg !399
  br i1 %cmp, label %while.end, label %while.body, !dbg !399

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !401
}

; Function Attrs: nounwind uwtable
define double @klee_internal_sqrt(double %d) #7 {
entry:
  %call = tail call double @klee_sqrt_double(double %d) #10, !dbg !402
  ret double %call, !dbg !402
}

declare double @klee_sqrt_double(double) #4

; Function Attrs: nounwind uwtable
define float @klee_internal_sqrtf(float %f) #7 {
entry:
  %call = tail call float @klee_sqrt_float(float %f) #10, !dbg !403
  ret float %call, !dbg !403
}

declare float @klee_sqrt_float(float) #4

; Function Attrs: nounwind uwtable
define x86_fp80 @klee_internal_sqrtl(x86_fp80 %f) #7 {
entry:
  %call = tail call x86_fp80 @klee_sqrt_long_double(x86_fp80 %f) #10, !dbg !404
  ret x86_fp80 %call, !dbg !404
}

declare x86_fp80 @klee_sqrt_long_double(x86_fp80) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone }
attributes #7 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !18, !37, !66, !111, !121, !134, !145, !157, !167, !186, !200, !214, !229}
!llvm.module.flags = !{!242, !243}
!llvm.ident = !{!244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244, !244}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 false, met
!1 = metadata !{metadata !"e_acosh.c", metadata !"/home/klee/logic_bombs/fdlibm"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"__ieee754_acosh", metadata !"__ieee754_acosh", metadata !"", i32 40, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @__ieee754_acosh, null, null, me
!5 = metadata !{metadata !"./e_acosh.c", metadata !"/home/klee/logic_bombs/fdlibm"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 69, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 69} ; [ DW_TAG_subprogram ]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{metadata !15, metadata !17, metadata !17, metadata !17}
!15 = metadata !{i32 786484, i32 0, metadata !6, metadata !"ln2", metadata !"ln2", metadata !"ln2", metadata !6, i32 37, metadata !16, i32 1, i32 1, double 0x3FE62E42FEFA39EF, null} ; [ DW_TAG_variable ] [ln2] [line 37] [local] [def]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!17 = metadata !{i32 786484, i32 0, metadata !6, metadata !"one", metadata !"one", metadata !"one", metadata !6, i32 36, metadata !16, i32 1, i32 1, double 1.000000e+00, null} ; [ DW_TAG_variable ] [one] [line 36] [local] [def]
!18 = metadata !{i32 786449, metadata !19, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!19 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fabs.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!20 = metadata !{metadata !21, metadata !25, metadata !31}
!21 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"klee_internal_fabs", metadata !"klee_internal_fabs", metadata !"", i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_fabs, nul
!22 = metadata !{i32 786473, metadata !19}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fabs.c]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !21, metadata !"d", metadata !22, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!25 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"klee_internal_fabsf", metadata !"klee_internal_fabsf", metadata !"", i32 15, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_fabsf, n
!26 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !28}
!28 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !25, metadata !"f", metadata !22, i32 16777231, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!31 = metadata !{i32 786478, metadata !19, metadata !22, metadata !"klee_internal_fabsl", metadata !"klee_internal_fabsl", metadata !"", i32 20, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_internal_fa
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !34}
!34 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786689, metadata !31, metadata !"f", metadata !22, i32 16777236, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
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
!56 = metadata !{metadata !57, metadata !61}
!57 = metadata !{i32 786478, metadata !38, metadata !58, metadata !"klee_internal_fegetround", metadata !"klee_internal_fegetround", metadata !"", i32 33, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @klee_internal_feget
!58 = metadata !{i32 786473, metadata !38}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786688, metadata !57, metadata !"rm", metadata !58, i32 34, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 34]
!61 = metadata !{i32 786478, metadata !38, metadata !58, metadata !"klee_internal_fesetround", metadata !"klee_internal_fesetround", metadata !"", i32 52, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @klee_internal_fe
!62 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !13, metadata !13}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786689, metadata !61, metadata !"rm", metadata !58, i32 16777268, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 52]
!66 = metadata !{i32 786449, metadata !67, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, met
!67 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/fpclassify.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786436, metadata !67, null, metadata !"", i32 58, i64 32, i64 32, i32 0, i32 0, null, metadata !70, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 58, size 32, align 32, offset 0] [def] [from ]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!71 = metadata !{i32 786472, metadata !"FP_NAN", i64 0} ; [ DW_TAG_enumerator ] [FP_NAN :: 0]
!72 = metadata !{i32 786472, metadata !"FP_INFINITE", i64 1} ; [ DW_TAG_enumerator ] [FP_INFINITE :: 1]
!73 = metadata !{i32 786472, metadata !"FP_ZERO", i64 2} ; [ DW_TAG_enumerator ] [FP_ZERO :: 2]
!74 = metadata !{i32 786472, metadata !"FP_SUBNORMAL", i64 3} ; [ DW_TAG_enumerator ] [FP_SUBNORMAL :: 3]
!75 = metadata !{i32 786472, metadata !"FP_NORMAL", i64 4} ; [ DW_TAG_enumerator ] [FP_NORMAL :: 4]
!76 = metadata !{metadata !77, metadata !83, metadata !88, metadata !93, metadata !96, metadata !99, metadata !102, metadata !105, metadata !108}
!77 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_isnanf", metadata !"klee_internal_isnanf", metadata !"", i32 16, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_isnanf, 
!78 = metadata !{i32 786473, metadata !67}        ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!79 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !13, metadata !28}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786689, metadata !77, metadata !"f", metadata !78, i32 16777232, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 16]
!83 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_isnan", metadata !"klee_internal_isnan", metadata !"", i32 21, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_isnan, nu
!84 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{metadata !13, metadata !9}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786689, metadata !83, metadata !"d", metadata !78, i32 16777237, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!88 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_isnanl", metadata !"klee_internal_isnanl", metadata !"", i32 26, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_internal_isnan
!89 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !13, metadata !34}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786689, metadata !88, metadata !"d", metadata !78, i32 16777242, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 26]
!93 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_fpclassifyf", metadata !"klee_internal_fpclassifyf", metadata !"", i32 67, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_interna
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786689, metadata !93, metadata !"f", metadata !78, i32 16777283, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 67]
!96 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_fpclassify", metadata !"klee_internal_fpclassify", metadata !"", i32 82, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786689, metadata !96, metadata !"f", metadata !78, i32 16777298, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 82]
!99 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_fpclassifyl", metadata !"klee_internal_fpclassifyl", metadata !"", i32 98, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_inte
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786689, metadata !99, metadata !"ld", metadata !78, i32 16777314, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ld] [line 98]
!102 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_finitef", metadata !"klee_internal_finitef", metadata !"", i32 114, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @klee_internal_fini
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786689, metadata !102, metadata !"f", metadata !78, i32 16777330, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 114]
!105 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_finite", metadata !"klee_internal_finite", metadata !"", i32 119, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @klee_internal_finit
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786689, metadata !105, metadata !"f", metadata !78, i32 16777335, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 119]
!108 = metadata !{i32 786478, metadata !67, metadata !78, metadata !"klee_internal_finitel", metadata !"klee_internal_finitel", metadata !"", i32 124, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (x86_fp80)* @klee_internal_f
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786689, metadata !108, metadata !"f", metadata !78, i32 16777340, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 124]
!111 = metadata !{i32 786449, metadata !112, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!112 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786478, metadata !112, metadata !115, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!115 = metadata !{i32 786473, metadata !112}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!116 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !118}
!118 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786689, metadata !114, metadata !"z", metadata !115, i32 16777228, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!121 = metadata !{i32 786449, metadata !122, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!122 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786478, metadata !122, metadata !125, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !131, i32 13}
!125 = metadata !{i32 786473, metadata !122}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_int.c]
!126 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{metadata !13, metadata !128}
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!130 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!131 = metadata !{metadata !132, metadata !133}
!132 = metadata !{i32 786689, metadata !124, metadata !"name", metadata !125, i32 16777229, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!133 = metadata !{i32 786688, metadata !124, metadata !"x", metadata !125, i32 14, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!134 = metadata !{i32 786449, metadata !135, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!135 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786478, metadata !135, metadata !138, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!138 = metadata !{i32 786473, metadata !135}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!139 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{null, metadata !141, metadata !141}
!141 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!142 = metadata !{metadata !143, metadata !144}
!143 = metadata !{i32 786689, metadata !137, metadata !"bitWidth", metadata !138, i32 16777236, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!144 = metadata !{i32 786689, metadata !137, metadata !"shift", metadata !138, i32 33554452, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!145 = metadata !{i32 786449, metadata !146, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!146 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786478, metadata !146, metadata !149, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!149 = metadata !{i32 786473, metadata !146}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!150 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !13, metadata !13, metadata !13, metadata !128}
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156}
!153 = metadata !{i32 786689, metadata !148, metadata !"start", metadata !149, i32 16777229, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!154 = metadata !{i32 786689, metadata !148, metadata !"end", metadata !149, i32 33554445, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!155 = metadata !{i32 786689, metadata !148, metadata !"name", metadata !149, i32 50331661, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!156 = metadata !{i32 786688, metadata !148, metadata !"x", metadata !149, i32 14, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!157 = metadata !{i32 786449, metadata !158, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!158 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!159 = metadata !{metadata !40}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786478, metadata !158, metadata !162, metadata !"klee_set_rounding_mode", metadata !"klee_set_rounding_mode", metadata !"", i32 16, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @klee_set_roundi
!162 = metadata !{i32 786473, metadata !158}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!163 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{null, metadata !40}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786689, metadata !161, metadata !"rm", metadata !162, i32 16777232, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rm] [line 16]
!167 = metadata !{i32 786449, metadata !168, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!168 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 786478, metadata !168, metadata !171, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !179, i32
!171 = metadata !{i32 786473, metadata !168}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memcpy.c]
!172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !174, metadata !175, metadata !177}
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!176 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{i32 786454, metadata !168, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!178 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !185}
!180 = metadata !{i32 786689, metadata !170, metadata !"destaddr", metadata !171, i32 16777228, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!181 = metadata !{i32 786689, metadata !170, metadata !"srcaddr", metadata !171, i32 33554444, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!182 = metadata !{i32 786689, metadata !170, metadata !"len", metadata !171, i32 50331660, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!183 = metadata !{i32 786688, metadata !170, metadata !"dest", metadata !171, i32 13, metadata !184, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!185 = metadata !{i32 786688, metadata !170, metadata !"src", metadata !171, i32 14, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!186 = metadata !{i32 786449, metadata !187, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!187 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memmove.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 786478, metadata !187, metadata !190, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !191, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !194, 
!190 = metadata !{i32 786473, metadata !187}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!191 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!192 = metadata !{metadata !174, metadata !174, metadata !175, metadata !193}
!193 = metadata !{i32 786454, metadata !187, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!195 = metadata !{i32 786689, metadata !189, metadata !"dst", metadata !190, i32 16777228, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!196 = metadata !{i32 786689, metadata !189, metadata !"src", metadata !190, i32 33554444, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!197 = metadata !{i32 786689, metadata !189, metadata !"count", metadata !190, i32 50331660, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!198 = metadata !{i32 786688, metadata !189, metadata !"a", metadata !190, i32 13, metadata !184, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!199 = metadata !{i32 786688, metadata !189, metadata !"b", metadata !190, i32 14, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!200 = metadata !{i32 786449, metadata !201, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!201 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786478, metadata !201, metadata !204, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !205, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !208, 
!204 = metadata !{i32 786473, metadata !201}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/mempcpy.c]
!205 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{metadata !174, metadata !174, metadata !175, metadata !207}
!207 = metadata !{i32 786454, metadata !201, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!209 = metadata !{i32 786689, metadata !203, metadata !"destaddr", metadata !204, i32 16777227, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!210 = metadata !{i32 786689, metadata !203, metadata !"srcaddr", metadata !204, i32 33554443, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!211 = metadata !{i32 786689, metadata !203, metadata !"len", metadata !204, i32 50331659, metadata !207, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!212 = metadata !{i32 786688, metadata !203, metadata !"dest", metadata !204, i32 12, metadata !184, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!213 = metadata !{i32 786688, metadata !203, metadata !"src", metadata !204, i32 13, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!214 = metadata !{i32 786449, metadata !215, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!215 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/memset.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786478, metadata !215, metadata !218, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !222, i32
!218 = metadata !{i32 786473, metadata !215}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memset.c]
!219 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !174, metadata !174, metadata !13, metadata !221}
!221 = metadata !{i32 786454, metadata !215, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226}
!223 = metadata !{i32 786689, metadata !217, metadata !"dst", metadata !218, i32 16777227, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!224 = metadata !{i32 786689, metadata !217, metadata !"s", metadata !218, i32 33554443, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!225 = metadata !{i32 786689, metadata !217, metadata !"count", metadata !218, i32 50331659, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!226 = metadata !{i32 786688, metadata !217, metadata !"a", metadata !218, i32 12, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!228 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!229 = metadata !{i32 786449, metadata !230, i32 1, metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)", i1 true, m
!230 = metadata !{metadata !"/home/user/klee/runtime/Intrinsic/sqrt.c", metadata !"/home/user/klee/build/runtime/Intrinsic"}
!231 = metadata !{metadata !232, metadata !236, metadata !239}
!232 = metadata !{i32 786478, metadata !230, metadata !233, metadata !"klee_internal_sqrt", metadata !"klee_internal_sqrt", metadata !"", i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @klee_internal_sqrt, 
!233 = metadata !{i32 786473, metadata !230}      ; [ DW_TAG_file_type ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/sqrt.c]
!234 = metadata !{metadata !235}
!235 = metadata !{i32 786689, metadata !232, metadata !"d", metadata !233, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 11]
!236 = metadata !{i32 786478, metadata !230, metadata !233, metadata !"klee_internal_sqrtf", metadata !"klee_internal_sqrtf", metadata !"", i32 15, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @klee_internal_sqrtf
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786689, metadata !236, metadata !"f", metadata !233, i32 16777231, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 15]
!239 = metadata !{i32 786478, metadata !230, metadata !233, metadata !"klee_internal_sqrtl", metadata !"klee_internal_sqrtl", metadata !"", i32 20, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (x86_fp80)* @klee_internal
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786689, metadata !239, metadata !"f", metadata !233, i32 16777236, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 20]
!242 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!243 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!244 = metadata !{metadata !"clang version 3.4.2 (https://github.com/llvm-mirror/clang adb6bc4cf0e09a5aca773ab7680bc4c7bf581909) (https://github.com/llvm-mirror/llvm 5c6aa738fb3325ae499454877f1e2926d2368135)"}
!245 = metadata !{i32 48, i32 0, metadata !4, null}
!246 = metadata !{i32 49, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !5, metadata !4, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!248 = metadata !{i32 50, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !5, metadata !247, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!250 = metadata !{i32 51, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !5, metadata !247, i32 51, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!252 = metadata !{i32 52, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !5, metadata !254, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!254 = metadata !{i32 786443, metadata !5, metadata !251, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!255 = metadata !{i32 53, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !5, metadata !253, i32 52, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!257 = metadata !{i32 55, i32 0, metadata !253, null}
!258 = metadata !{i32 56, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !5, metadata !251, i32 56, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!260 = metadata !{i32 57, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !5, metadata !259, i32 56, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!262 = metadata !{i32 58, i32 0, metadata !263, null} ; [ DW_TAG_imported_module ]
!263 = metadata !{i32 786443, metadata !5, metadata !259, i32 58, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!264 = metadata !{i32 59, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !5, metadata !263, i32 58, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!266 = metadata !{i32 60, i32 0, metadata !265, null}
!267 = metadata !{i32 62, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !5, metadata !263, i32 61, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/klee/logic_bombs/fdlibm/./e_acosh.c]
!269 = metadata !{i32 63, i32 0, metadata !268, null}
!270 = metadata !{i32 65, i32 0, metadata !4, null}
!271 = metadata !{i32 71, i32 0, metadata !10, null}
!272 = metadata !{i32 73, i32 0, metadata !10, null}
!273 = metadata !{i32 74, i32 0, metadata !10, null}
!274 = metadata !{i32 12, i32 0, metadata !21, null}
!275 = metadata !{i32 16, i32 0, metadata !25, null}
!276 = metadata !{i32 21, i32 0, metadata !31, null}
!277 = metadata !{i32 34, i32 0, metadata !57, null}
!278 = metadata !{i32 35, i32 0, metadata !57, null}
!279 = metadata !{i32 50, i32 0, metadata !57, null}
!280 = metadata !{i32 53, i32 0, metadata !61, null}
!281 = metadata !{i32 55, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !38, metadata !61, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fenv.c]
!283 = metadata !{i32 56, i32 0, metadata !282, null}
!284 = metadata !{i32 66, i32 0, metadata !282, null}
!285 = metadata !{i32 67, i32 0, metadata !282, null}
!286 = metadata !{i32 69, i32 0, metadata !282, null}
!287 = metadata !{i32 70, i32 0, metadata !282, null}
!288 = metadata !{i32 72, i32 0, metadata !282, null}
!289 = metadata !{i32 73, i32 0, metadata !282, null}
!290 = metadata !{i32 79, i32 0, metadata !61, null}
!291 = metadata !{i32 17, i32 0, metadata !77, null}
!292 = metadata !{i32 22, i32 0, metadata !83, null}
!293 = metadata !{i32 27, i32 0, metadata !88, null}
!294 = metadata !{i32 69, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !67, metadata !93, i32 69, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!296 = metadata !{i32 71, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !67, metadata !295, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!298 = metadata !{i32 73, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !67, metadata !297, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!300 = metadata !{i32 75, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !67, metadata !299, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!302 = metadata !{i32 76, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !67, metadata !301, i32 75, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!304 = metadata !{i32 79, i32 0, metadata !93, null}
!305 = metadata !{i32 84, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !67, metadata !96, i32 84, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!307 = metadata !{i32 86, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !67, metadata !306, i32 86, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!309 = metadata !{i32 88, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !67, metadata !308, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!311 = metadata !{i32 90, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !67, metadata !310, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!313 = metadata !{i32 91, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !67, metadata !312, i32 90, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!315 = metadata !{i32 94, i32 0, metadata !96, null}
!316 = metadata !{i32 100, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !67, metadata !99, i32 100, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!318 = metadata !{i32 102, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !67, metadata !317, i32 102, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!320 = metadata !{i32 104, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !67, metadata !319, i32 104, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!322 = metadata !{i32 106, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !67, metadata !321, i32 106, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!324 = metadata !{i32 107, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !67, metadata !323, i32 106, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/fpclassify.c]
!326 = metadata !{i32 110, i32 0, metadata !99, null}
!327 = metadata !{i32 115, i32 0, metadata !102, null}
!328 = metadata !{i32 120, i32 0, metadata !105, null}
!329 = metadata !{i32 125, i32 0, metadata !108, null}
!330 = metadata !{i32 13, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !112, metadata !114, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_div_zero_check.c]
!332 = metadata !{i32 14, i32 0, metadata !331, null}
!333 = metadata !{i32 15, i32 0, metadata !114, null}
!334 = metadata !{i32 15, i32 0, metadata !124, null}
!335 = metadata !{i32 16, i32 0, metadata !124, null}
!336 = metadata !{metadata !337, metadata !337, i64 0}
!337 = metadata !{metadata !"int", metadata !338, i64 0}
!338 = metadata !{metadata !"omnipotent char", metadata !339, i64 0}
!339 = metadata !{metadata !"Simple C/C++ TBAA"}
!340 = metadata !{i32 21, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !135, metadata !137, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!342 = metadata !{i32 27, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !135, metadata !341, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_overshift_check.c]
!344 = metadata !{i32 29, i32 0, metadata !137, null}
!345 = metadata !{i32 16, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !146, metadata !148, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!347 = metadata !{i32 17, i32 0, metadata !346, null}
!348 = metadata !{i32 19, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !146, metadata !148, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!350 = metadata !{i32 22, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !146, metadata !349, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!352 = metadata !{i32 25, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !146, metadata !351, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!354 = metadata !{i32 26, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !146, metadata !353, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!356 = metadata !{i32 27, i32 0, metadata !355, null}
!357 = metadata !{i32 28, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !146, metadata !353, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_range.c]
!359 = metadata !{i32 29, i32 0, metadata !358, null}
!360 = metadata !{i32 32, i32 0, metadata !351, null}
!361 = metadata !{i32 34, i32 0, metadata !148, null}
!362 = metadata !{i32 19, i32 0, metadata !161, null}
!363 = metadata !{i32 21, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !158, metadata !161, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/klee_set_rounding_mode.c]
!365 = metadata !{i32 23, i32 0, metadata !364, null}
!366 = metadata !{i32 25, i32 0, metadata !364, null}
!367 = metadata !{i32 27, i32 0, metadata !364, null}
!368 = metadata !{i32 29, i32 0, metadata !364, null}
!369 = metadata !{i32 31, i32 0, metadata !364, null}
!370 = metadata !{i32 33, i32 0, metadata !161, null}
!371 = metadata !{i32 16, i32 0, metadata !170, null}
!372 = metadata !{i32 17, i32 0, metadata !170, null}
!373 = metadata !{metadata !373, metadata !374, metadata !375}
!374 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!375 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!376 = metadata !{metadata !338, metadata !338, i64 0}
!377 = metadata !{metadata !377, metadata !374, metadata !375}
!378 = metadata !{i32 18, i32 0, metadata !170, null}
!379 = metadata !{i32 16, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !187, metadata !189, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!381 = metadata !{i32 19, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !187, metadata !189, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!383 = metadata !{i32 20, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !187, metadata !382, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!385 = metadata !{metadata !385, metadata !374, metadata !375}
!386 = metadata !{metadata !386, metadata !374, metadata !375}
!387 = metadata !{i32 22, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !187, metadata !382, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/user/klee/build/runtime/Intrinsic//home/user/klee/runtime/Intrinsic/memmove.c]
!389 = metadata !{i32 24, i32 0, metadata !388, null}
!390 = metadata !{i32 23, i32 0, metadata !388, null}
!391 = metadata !{metadata !391, metadata !374, metadata !375}
!392 = metadata !{metadata !392, metadata !374, metadata !375}
!393 = metadata !{i32 28, i32 0, metadata !189, null}
!394 = metadata !{i32 15, i32 0, metadata !203, null}
!395 = metadata !{i32 16, i32 0, metadata !203, null}
!396 = metadata !{metadata !396, metadata !374, metadata !375}
!397 = metadata !{metadata !397, metadata !374, metadata !375}
!398 = metadata !{i32 17, i32 0, metadata !203, null}
!399 = metadata !{i32 13, i32 0, metadata !217, null}
!400 = metadata !{i32 14, i32 0, metadata !217, null}
!401 = metadata !{i32 15, i32 0, metadata !217, null}
!402 = metadata !{i32 12, i32 0, metadata !232, null}
!403 = metadata !{i32 16, i32 0, metadata !236, null}
!404 = metadata !{i32 21, i32 0, metadata !239, null}
