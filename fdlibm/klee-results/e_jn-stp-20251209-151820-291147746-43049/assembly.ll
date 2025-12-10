; ModuleID = 'e_jn.bc'
source_filename = "./e_jn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_jn(i32 %n, double %x) #0 !dbg !25 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %i = alloca i32, align 4
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %lx = alloca i32, align 4
  %sgn = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %temp = alloca double, align 8
  %di = alloca double, align 8
  %z = alloca double, align 8
  %w = alloca double, align 8
  %t = alloca double, align 8
  %v = alloca double, align 8
  %q0 = alloca double, align 8
  %q1 = alloca double, align 8
  %h = alloca double, align 8
  %tmp = alloca double, align 8
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %sgn, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %a, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %b, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata double* %temp, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata double* %di, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata double* %z, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata double* %w, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = bitcast double* %x.addr to i32*, !dbg !54
  %1 = load i32, i32* %0, align 8, !dbg !54
  store i32 %1, i32* %hx, align 4, !dbg !55
  %2 = load i32, i32* %hx, align 4, !dbg !56
  %and = and i32 2147483647, %2, !dbg !57
  store i32 %and, i32* %ix, align 4, !dbg !58
  %3 = bitcast double* %x.addr to i32*, !dbg !59
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !59
  %4 = load i32, i32* %add.ptr, align 4, !dbg !59
  store i32 %4, i32* %lx, align 4, !dbg !60
  %5 = load i32, i32* %ix, align 4, !dbg !61
  %6 = load i32, i32* %lx, align 4, !dbg !63
  %7 = load i32, i32* %lx, align 4, !dbg !64
  %sub = sub nsw i32 0, %7, !dbg !65
  %or = or i32 %6, %sub, !dbg !66
  %shr = lshr i32 %or, 31, !dbg !67
  %or1 = or i32 %5, %shr, !dbg !68
  %cmp = icmp ugt i32 %or1, 2146435072, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  %8 = load double, double* %x.addr, align 8, !dbg !71
  %9 = load double, double* %x.addr, align 8, !dbg !72
  %add = fadd double %8, %9, !dbg !73
  store double %add, double* %retval, align 8, !dbg !74
  br label %return, !dbg !74

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %n.addr, align 4, !dbg !75
  %cmp2 = icmp slt i32 %10, 0, !dbg !77
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !78

if.then3:                                         ; preds = %if.end
  %11 = load i32, i32* %n.addr, align 4, !dbg !79
  %sub4 = sub nsw i32 0, %11, !dbg !81
  store i32 %sub4, i32* %n.addr, align 4, !dbg !82
  %12 = load double, double* %x.addr, align 8, !dbg !83
  %fneg = fneg double %12, !dbg !84
  store double %fneg, double* %x.addr, align 8, !dbg !85
  %13 = load i32, i32* %hx, align 4, !dbg !86
  %xor = xor i32 %13, -2147483648, !dbg !86
  store i32 %xor, i32* %hx, align 4, !dbg !86
  br label %if.end5, !dbg !87

if.end5:                                          ; preds = %if.then3, %if.end
  %14 = load i32, i32* %n.addr, align 4, !dbg !88
  %cmp6 = icmp eq i32 %14, 0, !dbg !90
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !91

if.then7:                                         ; preds = %if.end5
  %15 = load double, double* %x.addr, align 8, !dbg !92
  %call = call double @__ieee754_j0(double %15), !dbg !93
  store double %call, double* %retval, align 8, !dbg !94
  br label %return, !dbg !94

if.end8:                                          ; preds = %if.end5
  %16 = load i32, i32* %n.addr, align 4, !dbg !95
  %cmp9 = icmp eq i32 %16, 1, !dbg !97
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !98

if.then10:                                        ; preds = %if.end8
  %17 = load double, double* %x.addr, align 8, !dbg !99
  %call11 = call double @__ieee754_j1(double %17), !dbg !100
  store double %call11, double* %retval, align 8, !dbg !101
  br label %return, !dbg !101

if.end12:                                         ; preds = %if.end8
  %18 = load i32, i32* %n.addr, align 4, !dbg !102
  %and13 = and i32 %18, 1, !dbg !103
  %19 = load i32, i32* %hx, align 4, !dbg !104
  %shr14 = ashr i32 %19, 31, !dbg !105
  %and15 = and i32 %and13, %shr14, !dbg !106
  store i32 %and15, i32* %sgn, align 4, !dbg !107
  %20 = load double, double* %x.addr, align 8, !dbg !108
  %21 = call double @llvm.fabs.f64(double %20), !dbg !109
  store double %21, double* %x.addr, align 8, !dbg !110
  %22 = load i32, i32* %ix, align 4, !dbg !111
  %23 = load i32, i32* %lx, align 4, !dbg !113
  %or16 = or i32 %22, %23, !dbg !114
  %cmp17 = icmp eq i32 %or16, 0, !dbg !115
  br i1 %cmp17, label %if.then19, label %lor.lhs.false, !dbg !116

lor.lhs.false:                                    ; preds = %if.end12
  %24 = load i32, i32* %ix, align 4, !dbg !117
  %cmp18 = icmp sge i32 %24, 2146435072, !dbg !118
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !119

if.then19:                                        ; preds = %lor.lhs.false, %if.end12
  %25 = load double, double* @zero, align 8, !dbg !120
  store double %25, double* %b, align 8, !dbg !121
  br label %if.end153, !dbg !122

if.else:                                          ; preds = %lor.lhs.false
  %26 = load i32, i32* %n.addr, align 4, !dbg !123
  %conv = sitofp i32 %26 to double, !dbg !125
  %27 = load double, double* %x.addr, align 8, !dbg !126
  %cmp20 = fcmp ole double %conv, %27, !dbg !127
  br i1 %cmp20, label %if.then22, label %if.else56, !dbg !128

if.then22:                                        ; preds = %if.else
  %28 = load i32, i32* %ix, align 4, !dbg !129
  %cmp23 = icmp sge i32 %28, 1389363200, !dbg !132
  br i1 %cmp23, label %if.then25, label %if.else45, !dbg !133

if.then25:                                        ; preds = %if.then22
  %29 = load i32, i32* %n.addr, align 4, !dbg !134
  %and26 = and i32 %29, 3, !dbg !136
  switch i32 %and26, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb35
    i32 3, label %sw.bb40
  ], !dbg !137

sw.bb:                                            ; preds = %if.then25
  %30 = load double, double* %x.addr, align 8, !dbg !138
  %call27 = call double @cos(double %30) #4, !dbg !140
  %31 = load double, double* %x.addr, align 8, !dbg !141
  %call28 = call double @sin(double %31) #4, !dbg !142
  %add29 = fadd double %call27, %call28, !dbg !143
  store double %add29, double* %temp, align 8, !dbg !144
  br label %sw.epilog, !dbg !145

sw.bb30:                                          ; preds = %if.then25
  %32 = load double, double* %x.addr, align 8, !dbg !146
  %call31 = call double @cos(double %32) #4, !dbg !147
  %fneg32 = fneg double %call31, !dbg !148
  %33 = load double, double* %x.addr, align 8, !dbg !149
  %call33 = call double @sin(double %33) #4, !dbg !150
  %add34 = fadd double %fneg32, %call33, !dbg !151
  store double %add34, double* %temp, align 8, !dbg !152
  br label %sw.epilog, !dbg !153

sw.bb35:                                          ; preds = %if.then25
  %34 = load double, double* %x.addr, align 8, !dbg !154
  %call36 = call double @cos(double %34) #4, !dbg !155
  %fneg37 = fneg double %call36, !dbg !156
  %35 = load double, double* %x.addr, align 8, !dbg !157
  %call38 = call double @sin(double %35) #4, !dbg !158
  %sub39 = fsub double %fneg37, %call38, !dbg !159
  store double %sub39, double* %temp, align 8, !dbg !160
  br label %sw.epilog, !dbg !161

sw.bb40:                                          ; preds = %if.then25
  %36 = load double, double* %x.addr, align 8, !dbg !162
  %call41 = call double @cos(double %36) #4, !dbg !163
  %37 = load double, double* %x.addr, align 8, !dbg !164
  %call42 = call double @sin(double %37) #4, !dbg !165
  %sub43 = fsub double %call41, %call42, !dbg !166
  store double %sub43, double* %temp, align 8, !dbg !167
  br label %sw.epilog, !dbg !168

sw.epilog:                                        ; preds = %if.then25, %sw.bb40, %sw.bb35, %sw.bb30, %sw.bb
  %38 = load double, double* %temp, align 8, !dbg !169
  %mul = fmul double 0x3FE20DD750429B6D, %38, !dbg !170
  %39 = load double, double* %x.addr, align 8, !dbg !171
  %call44 = call double @sqrt(double %39) #4, !dbg !172
  %div = fdiv double %mul, %call44, !dbg !173
  store double %div, double* %b, align 8, !dbg !174
  br label %if.end55, !dbg !175

if.else45:                                        ; preds = %if.then22
  %40 = load double, double* %x.addr, align 8, !dbg !176
  %call46 = call double @__ieee754_j0(double %40), !dbg !178
  store double %call46, double* %a, align 8, !dbg !179
  %41 = load double, double* %x.addr, align 8, !dbg !180
  %call47 = call double @__ieee754_j1(double %41), !dbg !181
  store double %call47, double* %b, align 8, !dbg !182
  store i32 1, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.else45
  %42 = load i32, i32* %i, align 4, !dbg !186
  %43 = load i32, i32* %n.addr, align 4, !dbg !188
  %cmp48 = icmp slt i32 %42, %43, !dbg !189
  br i1 %cmp48, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %44 = load double, double* %b, align 8, !dbg !191
  store double %44, double* %temp, align 8, !dbg !193
  %45 = load double, double* %b, align 8, !dbg !194
  %46 = load i32, i32* %i, align 4, !dbg !195
  %47 = load i32, i32* %i, align 4, !dbg !196
  %add50 = add nsw i32 %46, %47, !dbg !197
  %conv51 = sitofp i32 %add50 to double, !dbg !198
  %48 = load double, double* %x.addr, align 8, !dbg !199
  %div52 = fdiv double %conv51, %48, !dbg !200
  %mul53 = fmul double %45, %div52, !dbg !201
  %49 = load double, double* %a, align 8, !dbg !202
  %sub54 = fsub double %mul53, %49, !dbg !203
  store double %sub54, double* %b, align 8, !dbg !204
  %50 = load double, double* %temp, align 8, !dbg !205
  store double %50, double* %a, align 8, !dbg !206
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !dbg !208
  %inc = add nsw i32 %51, 1, !dbg !208
  store i32 %inc, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  br label %if.end55

if.end55:                                         ; preds = %for.end, %sw.epilog
  br label %if.end152, !dbg !213

if.else56:                                        ; preds = %if.else
  %52 = load i32, i32* %ix, align 4, !dbg !214
  %cmp57 = icmp slt i32 %52, 1041235968, !dbg !217
  br i1 %cmp57, label %if.then59, label %if.else77, !dbg !218

if.then59:                                        ; preds = %if.else56
  %53 = load i32, i32* %n.addr, align 4, !dbg !219
  %cmp60 = icmp sgt i32 %53, 33, !dbg !222
  br i1 %cmp60, label %if.then62, label %if.else63, !dbg !223

if.then62:                                        ; preds = %if.then59
  %54 = load double, double* @zero, align 8, !dbg !224
  store double %54, double* %b, align 8, !dbg !225
  br label %if.end76, !dbg !226

if.else63:                                        ; preds = %if.then59
  %55 = load double, double* %x.addr, align 8, !dbg !227
  %mul64 = fmul double %55, 5.000000e-01, !dbg !229
  store double %mul64, double* %temp, align 8, !dbg !230
  %56 = load double, double* %temp, align 8, !dbg !231
  store double %56, double* %b, align 8, !dbg !232
  store double 1.000000e+00, double* %a, align 8, !dbg !233
  store i32 2, i32* %i, align 4, !dbg !235
  br label %for.cond65, !dbg !236

for.cond65:                                       ; preds = %for.inc72, %if.else63
  %57 = load i32, i32* %i, align 4, !dbg !237
  %58 = load i32, i32* %n.addr, align 4, !dbg !239
  %cmp66 = icmp sle i32 %57, %58, !dbg !240
  br i1 %cmp66, label %for.body68, label %for.end74, !dbg !241

for.body68:                                       ; preds = %for.cond65
  %59 = load i32, i32* %i, align 4, !dbg !242
  %conv69 = sitofp i32 %59 to double, !dbg !244
  %60 = load double, double* %a, align 8, !dbg !245
  %mul70 = fmul double %60, %conv69, !dbg !245
  store double %mul70, double* %a, align 8, !dbg !245
  %61 = load double, double* %temp, align 8, !dbg !246
  %62 = load double, double* %b, align 8, !dbg !247
  %mul71 = fmul double %62, %61, !dbg !247
  store double %mul71, double* %b, align 8, !dbg !247
  br label %for.inc72, !dbg !248

for.inc72:                                        ; preds = %for.body68
  %63 = load i32, i32* %i, align 4, !dbg !249
  %inc73 = add nsw i32 %63, 1, !dbg !249
  store i32 %inc73, i32* %i, align 4, !dbg !249
  br label %for.cond65, !dbg !250, !llvm.loop !251

for.end74:                                        ; preds = %for.cond65
  %64 = load double, double* %b, align 8, !dbg !253
  %65 = load double, double* %a, align 8, !dbg !254
  %div75 = fdiv double %64, %65, !dbg !255
  store double %div75, double* %b, align 8, !dbg !256
  br label %if.end76

if.end76:                                         ; preds = %for.end74, %if.then62
  br label %if.end151, !dbg !257

if.else77:                                        ; preds = %if.else56
  call void @llvm.dbg.declare(metadata double* %t, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata double* %v, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata double* %q0, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata double* %q1, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata double* %h, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata double* %tmp, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %k, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata i32* %m, metadata !273, metadata !DIExpression()), !dbg !274
  %66 = load i32, i32* %n.addr, align 4, !dbg !275
  %67 = load i32, i32* %n.addr, align 4, !dbg !276
  %add78 = add nsw i32 %66, %67, !dbg !277
  %conv79 = sitofp i32 %add78 to double, !dbg !278
  %68 = load double, double* %x.addr, align 8, !dbg !279
  %div80 = fdiv double %conv79, %68, !dbg !280
  store double %div80, double* %w, align 8, !dbg !281
  %69 = load double, double* %x.addr, align 8, !dbg !282
  %div81 = fdiv double 2.000000e+00, %69, !dbg !283
  store double %div81, double* %h, align 8, !dbg !284
  %70 = load double, double* %w, align 8, !dbg !285
  store double %70, double* %q0, align 8, !dbg !286
  %71 = load double, double* %w, align 8, !dbg !287
  %72 = load double, double* %h, align 8, !dbg !288
  %add82 = fadd double %71, %72, !dbg !289
  store double %add82, double* %z, align 8, !dbg !290
  %73 = load double, double* %w, align 8, !dbg !291
  %74 = load double, double* %z, align 8, !dbg !292
  %mul83 = fmul double %73, %74, !dbg !293
  %sub84 = fsub double %mul83, 1.000000e+00, !dbg !294
  store double %sub84, double* %q1, align 8, !dbg !295
  store i32 1, i32* %k, align 4, !dbg !296
  br label %while.cond, !dbg !297

while.cond:                                       ; preds = %while.body, %if.else77
  %75 = load double, double* %q1, align 8, !dbg !298
  %cmp85 = fcmp olt double %75, 1.000000e+09, !dbg !299
  br i1 %cmp85, label %while.body, label %while.end, !dbg !297

while.body:                                       ; preds = %while.cond
  %76 = load i32, i32* %k, align 4, !dbg !300
  %add87 = add nsw i32 %76, 1, !dbg !300
  store i32 %add87, i32* %k, align 4, !dbg !300
  %77 = load double, double* %h, align 8, !dbg !302
  %78 = load double, double* %z, align 8, !dbg !303
  %add88 = fadd double %78, %77, !dbg !303
  store double %add88, double* %z, align 8, !dbg !303
  %79 = load double, double* %z, align 8, !dbg !304
  %80 = load double, double* %q1, align 8, !dbg !305
  %mul89 = fmul double %79, %80, !dbg !306
  %81 = load double, double* %q0, align 8, !dbg !307
  %sub90 = fsub double %mul89, %81, !dbg !308
  store double %sub90, double* %tmp, align 8, !dbg !309
  %82 = load double, double* %q1, align 8, !dbg !310
  store double %82, double* %q0, align 8, !dbg !311
  %83 = load double, double* %tmp, align 8, !dbg !312
  store double %83, double* %q1, align 8, !dbg !313
  br label %while.cond, !dbg !297, !llvm.loop !314

while.end:                                        ; preds = %while.cond
  %84 = load i32, i32* %n.addr, align 4, !dbg !316
  %85 = load i32, i32* %n.addr, align 4, !dbg !317
  %add91 = add nsw i32 %84, %85, !dbg !318
  store i32 %add91, i32* %m, align 4, !dbg !319
  %86 = load double, double* @zero, align 8, !dbg !320
  store double %86, double* %t, align 8, !dbg !322
  %87 = load i32, i32* %n.addr, align 4, !dbg !323
  %88 = load i32, i32* %k, align 4, !dbg !324
  %add92 = add nsw i32 %87, %88, !dbg !325
  %mul93 = mul nsw i32 2, %add92, !dbg !326
  store i32 %mul93, i32* %i, align 4, !dbg !327
  br label %for.cond94, !dbg !328

for.cond94:                                       ; preds = %for.inc102, %while.end
  %89 = load i32, i32* %i, align 4, !dbg !329
  %90 = load i32, i32* %m, align 4, !dbg !331
  %cmp95 = icmp sge i32 %89, %90, !dbg !332
  br i1 %cmp95, label %for.body97, label %for.end104, !dbg !333

for.body97:                                       ; preds = %for.cond94
  %91 = load i32, i32* %i, align 4, !dbg !334
  %conv98 = sitofp i32 %91 to double, !dbg !334
  %92 = load double, double* %x.addr, align 8, !dbg !335
  %div99 = fdiv double %conv98, %92, !dbg !336
  %93 = load double, double* %t, align 8, !dbg !337
  %sub100 = fsub double %div99, %93, !dbg !338
  %div101 = fdiv double 1.000000e+00, %sub100, !dbg !339
  store double %div101, double* %t, align 8, !dbg !340
  br label %for.inc102, !dbg !341

for.inc102:                                       ; preds = %for.body97
  %94 = load i32, i32* %i, align 4, !dbg !342
  %sub103 = sub nsw i32 %94, 2, !dbg !342
  store i32 %sub103, i32* %i, align 4, !dbg !342
  br label %for.cond94, !dbg !343, !llvm.loop !344

for.end104:                                       ; preds = %for.cond94
  %95 = load double, double* %t, align 8, !dbg !346
  store double %95, double* %a, align 8, !dbg !347
  store double 1.000000e+00, double* %b, align 8, !dbg !348
  %96 = load i32, i32* %n.addr, align 4, !dbg !349
  %conv105 = sitofp i32 %96 to double, !dbg !349
  store double %conv105, double* %tmp, align 8, !dbg !350
  %97 = load double, double* %x.addr, align 8, !dbg !351
  %div106 = fdiv double 2.000000e+00, %97, !dbg !352
  store double %div106, double* %v, align 8, !dbg !353
  %98 = load double, double* %tmp, align 8, !dbg !354
  %99 = load double, double* %v, align 8, !dbg !355
  %100 = load double, double* %tmp, align 8, !dbg !356
  %mul107 = fmul double %99, %100, !dbg !357
  %101 = call double @llvm.fabs.f64(double %mul107), !dbg !358
  %call108 = call double @__ieee754_log(double %101), !dbg !359
  %mul109 = fmul double %98, %call108, !dbg !360
  store double %mul109, double* %tmp, align 8, !dbg !361
  %102 = load double, double* %tmp, align 8, !dbg !362
  %cmp110 = fcmp olt double %102, 0x40862E42FEFA39EF, !dbg !364
  br i1 %cmp110, label %if.then112, label %if.else126, !dbg !365

if.then112:                                       ; preds = %for.end104
  %103 = load i32, i32* %n.addr, align 4, !dbg !366
  %sub113 = sub nsw i32 %103, 1, !dbg !369
  store i32 %sub113, i32* %i, align 4, !dbg !370
  %104 = load i32, i32* %i, align 4, !dbg !371
  %105 = load i32, i32* %i, align 4, !dbg !372
  %add114 = add nsw i32 %104, %105, !dbg !373
  %conv115 = sitofp i32 %add114 to double, !dbg !374
  store double %conv115, double* %di, align 8, !dbg !375
  br label %for.cond116, !dbg !376

for.cond116:                                      ; preds = %for.inc124, %if.then112
  %106 = load i32, i32* %i, align 4, !dbg !377
  %cmp117 = icmp sgt i32 %106, 0, !dbg !379
  br i1 %cmp117, label %for.body119, label %for.end125, !dbg !380

for.body119:                                      ; preds = %for.cond116
  %107 = load double, double* %b, align 8, !dbg !381
  store double %107, double* %temp, align 8, !dbg !383
  %108 = load double, double* %di, align 8, !dbg !384
  %109 = load double, double* %b, align 8, !dbg !385
  %mul120 = fmul double %109, %108, !dbg !385
  store double %mul120, double* %b, align 8, !dbg !385
  %110 = load double, double* %b, align 8, !dbg !386
  %111 = load double, double* %x.addr, align 8, !dbg !387
  %div121 = fdiv double %110, %111, !dbg !388
  %112 = load double, double* %a, align 8, !dbg !389
  %sub122 = fsub double %div121, %112, !dbg !390
  store double %sub122, double* %b, align 8, !dbg !391
  %113 = load double, double* %temp, align 8, !dbg !392
  store double %113, double* %a, align 8, !dbg !393
  %114 = load double, double* %di, align 8, !dbg !394
  %sub123 = fsub double %114, 2.000000e+00, !dbg !394
  store double %sub123, double* %di, align 8, !dbg !394
  br label %for.inc124, !dbg !395

for.inc124:                                       ; preds = %for.body119
  %115 = load i32, i32* %i, align 4, !dbg !396
  %dec = add nsw i32 %115, -1, !dbg !396
  store i32 %dec, i32* %i, align 4, !dbg !396
  br label %for.cond116, !dbg !397, !llvm.loop !398

for.end125:                                       ; preds = %for.cond116
  br label %if.end147, !dbg !400

if.else126:                                       ; preds = %for.end104
  %116 = load i32, i32* %n.addr, align 4, !dbg !401
  %sub127 = sub nsw i32 %116, 1, !dbg !404
  store i32 %sub127, i32* %i, align 4, !dbg !405
  %117 = load i32, i32* %i, align 4, !dbg !406
  %118 = load i32, i32* %i, align 4, !dbg !407
  %add128 = add nsw i32 %117, %118, !dbg !408
  %conv129 = sitofp i32 %add128 to double, !dbg !409
  store double %conv129, double* %di, align 8, !dbg !410
  br label %for.cond130, !dbg !411

for.cond130:                                      ; preds = %for.inc144, %if.else126
  %119 = load i32, i32* %i, align 4, !dbg !412
  %cmp131 = icmp sgt i32 %119, 0, !dbg !414
  br i1 %cmp131, label %for.body133, label %for.end146, !dbg !415

for.body133:                                      ; preds = %for.cond130
  %120 = load double, double* %b, align 8, !dbg !416
  store double %120, double* %temp, align 8, !dbg !418
  %121 = load double, double* %di, align 8, !dbg !419
  %122 = load double, double* %b, align 8, !dbg !420
  %mul134 = fmul double %122, %121, !dbg !420
  store double %mul134, double* %b, align 8, !dbg !420
  %123 = load double, double* %b, align 8, !dbg !421
  %124 = load double, double* %x.addr, align 8, !dbg !422
  %div135 = fdiv double %123, %124, !dbg !423
  %125 = load double, double* %a, align 8, !dbg !424
  %sub136 = fsub double %div135, %125, !dbg !425
  store double %sub136, double* %b, align 8, !dbg !426
  %126 = load double, double* %temp, align 8, !dbg !427
  store double %126, double* %a, align 8, !dbg !428
  %127 = load double, double* %di, align 8, !dbg !429
  %sub137 = fsub double %127, 2.000000e+00, !dbg !429
  store double %sub137, double* %di, align 8, !dbg !429
  %128 = load double, double* %b, align 8, !dbg !430
  %cmp138 = fcmp ogt double %128, 1.000000e+100, !dbg !432
  br i1 %cmp138, label %if.then140, label %if.end143, !dbg !433

if.then140:                                       ; preds = %for.body133
  %129 = load double, double* %b, align 8, !dbg !434
  %130 = load double, double* %a, align 8, !dbg !436
  %div141 = fdiv double %130, %129, !dbg !436
  store double %div141, double* %a, align 8, !dbg !436
  %131 = load double, double* %b, align 8, !dbg !437
  %132 = load double, double* %t, align 8, !dbg !438
  %div142 = fdiv double %132, %131, !dbg !438
  store double %div142, double* %t, align 8, !dbg !438
  store double 1.000000e+00, double* %b, align 8, !dbg !439
  br label %if.end143, !dbg !440

if.end143:                                        ; preds = %if.then140, %for.body133
  br label %for.inc144, !dbg !441

for.inc144:                                       ; preds = %if.end143
  %133 = load i32, i32* %i, align 4, !dbg !442
  %dec145 = add nsw i32 %133, -1, !dbg !442
  store i32 %dec145, i32* %i, align 4, !dbg !442
  br label %for.cond130, !dbg !443, !llvm.loop !444

for.end146:                                       ; preds = %for.cond130
  br label %if.end147

if.end147:                                        ; preds = %for.end146, %for.end125
  %134 = load double, double* %t, align 8, !dbg !446
  %135 = load double, double* %x.addr, align 8, !dbg !447
  %call148 = call double @__ieee754_j0(double %135), !dbg !448
  %mul149 = fmul double %134, %call148, !dbg !449
  %136 = load double, double* %b, align 8, !dbg !450
  %div150 = fdiv double %mul149, %136, !dbg !451
  store double %div150, double* %b, align 8, !dbg !452
  br label %if.end151

if.end151:                                        ; preds = %if.end147, %if.end76
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end55
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then19
  %137 = load i32, i32* %sgn, align 4, !dbg !453
  %cmp154 = icmp eq i32 %137, 1, !dbg !455
  br i1 %cmp154, label %if.then156, label %if.else158, !dbg !456

if.then156:                                       ; preds = %if.end153
  %138 = load double, double* %b, align 8, !dbg !457
  %fneg157 = fneg double %138, !dbg !458
  store double %fneg157, double* %retval, align 8, !dbg !459
  br label %return, !dbg !459

if.else158:                                       ; preds = %if.end153
  %139 = load double, double* %b, align 8, !dbg !460
  store double %139, double* %retval, align 8, !dbg !461
  br label %return, !dbg !461

return:                                           ; preds = %if.else158, %if.then156, %if.then10, %if.then7, %if.then
  %140 = load double, double* %retval, align 8, !dbg !462
  ret double %140, !dbg !462
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_j0(double) #2

declare dso_local double @__ieee754_j1(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local double @__ieee754_log(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_yn(i32 %n, double %x) #0 !dbg !463 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %i = alloca i32, align 4
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %lx = alloca i32, align 4
  %sign = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %temp = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata i32* %i, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata double* %a, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata double* %b, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata double* %temp, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = bitcast double* %x.addr to i32*, !dbg !484
  %1 = load i32, i32* %0, align 8, !dbg !484
  store i32 %1, i32* %hx, align 4, !dbg !485
  %2 = load i32, i32* %hx, align 4, !dbg !486
  %and = and i32 2147483647, %2, !dbg !487
  store i32 %and, i32* %ix, align 4, !dbg !488
  %3 = bitcast double* %x.addr to i32*, !dbg !489
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 1, !dbg !489
  %4 = load i32, i32* %add.ptr, align 4, !dbg !489
  store i32 %4, i32* %lx, align 4, !dbg !490
  %5 = load i32, i32* %ix, align 4, !dbg !491
  %6 = load i32, i32* %lx, align 4, !dbg !493
  %7 = load i32, i32* %lx, align 4, !dbg !494
  %sub = sub nsw i32 0, %7, !dbg !495
  %or = or i32 %6, %sub, !dbg !496
  %shr = lshr i32 %or, 31, !dbg !497
  %or1 = or i32 %5, %shr, !dbg !498
  %cmp = icmp ugt i32 %or1, 2146435072, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  %8 = load double, double* %x.addr, align 8, !dbg !501
  %9 = load double, double* %x.addr, align 8, !dbg !502
  %add = fadd double %8, %9, !dbg !503
  store double %add, double* %retval, align 8, !dbg !504
  br label %return, !dbg !504

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %ix, align 4, !dbg !505
  %11 = load i32, i32* %lx, align 4, !dbg !507
  %or2 = or i32 %10, %11, !dbg !508
  %cmp3 = icmp eq i32 %or2, 0, !dbg !509
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !510

if.then4:                                         ; preds = %if.end
  %12 = load double, double* @zero, align 8, !dbg !511
  %div = fdiv double -1.000000e+00, %12, !dbg !512
  store double %div, double* %retval, align 8, !dbg !513
  br label %return, !dbg !513

if.end5:                                          ; preds = %if.end
  %13 = load i32, i32* %hx, align 4, !dbg !514
  %cmp6 = icmp slt i32 %13, 0, !dbg !516
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !517

if.then7:                                         ; preds = %if.end5
  %14 = load double, double* @zero, align 8, !dbg !518
  %15 = load double, double* @zero, align 8, !dbg !519
  %div8 = fdiv double %14, %15, !dbg !520
  store double %div8, double* %retval, align 8, !dbg !521
  br label %return, !dbg !521

if.end9:                                          ; preds = %if.end5
  store i32 1, i32* %sign, align 4, !dbg !522
  %16 = load i32, i32* %n.addr, align 4, !dbg !523
  %cmp10 = icmp slt i32 %16, 0, !dbg !525
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !526

if.then11:                                        ; preds = %if.end9
  %17 = load i32, i32* %n.addr, align 4, !dbg !527
  %sub12 = sub nsw i32 0, %17, !dbg !529
  store i32 %sub12, i32* %n.addr, align 4, !dbg !530
  %18 = load i32, i32* %n.addr, align 4, !dbg !531
  %and13 = and i32 %18, 1, !dbg !532
  %shl = shl i32 %and13, 1, !dbg !533
  %sub14 = sub nsw i32 1, %shl, !dbg !534
  store i32 %sub14, i32* %sign, align 4, !dbg !535
  br label %if.end15, !dbg !536

if.end15:                                         ; preds = %if.then11, %if.end9
  %19 = load i32, i32* %n.addr, align 4, !dbg !537
  %cmp16 = icmp eq i32 %19, 0, !dbg !539
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !540

if.then17:                                        ; preds = %if.end15
  %20 = load double, double* %x.addr, align 8, !dbg !541
  %call = call double @__ieee754_y0(double %20), !dbg !542
  store double %call, double* %retval, align 8, !dbg !543
  br label %return, !dbg !543

if.end18:                                         ; preds = %if.end15
  %21 = load i32, i32* %n.addr, align 4, !dbg !544
  %cmp19 = icmp eq i32 %21, 1, !dbg !546
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !547

if.then20:                                        ; preds = %if.end18
  %22 = load i32, i32* %sign, align 4, !dbg !548
  %conv = sitofp i32 %22 to double, !dbg !548
  %23 = load double, double* %x.addr, align 8, !dbg !549
  %call21 = call double @__ieee754_y1(double %23), !dbg !550
  %mul = fmul double %conv, %call21, !dbg !551
  store double %mul, double* %retval, align 8, !dbg !552
  br label %return, !dbg !552

if.end22:                                         ; preds = %if.end18
  %24 = load i32, i32* %ix, align 4, !dbg !553
  %cmp23 = icmp eq i32 %24, 2146435072, !dbg !555
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !556

if.then25:                                        ; preds = %if.end22
  %25 = load double, double* @zero, align 8, !dbg !557
  store double %25, double* %retval, align 8, !dbg !558
  br label %return, !dbg !558

if.end26:                                         ; preds = %if.end22
  %26 = load i32, i32* %ix, align 4, !dbg !559
  %cmp27 = icmp sge i32 %26, 1389363200, !dbg !561
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !562

if.then29:                                        ; preds = %if.end26
  %27 = load i32, i32* %n.addr, align 4, !dbg !563
  %and30 = and i32 %27, 3, !dbg !565
  switch i32 %and30, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb38
    i32 3, label %sw.bb43
  ], !dbg !566

sw.bb:                                            ; preds = %if.then29
  %28 = load double, double* %x.addr, align 8, !dbg !567
  %call31 = call double @sin(double %28) #4, !dbg !569
  %29 = load double, double* %x.addr, align 8, !dbg !570
  %call32 = call double @cos(double %29) #4, !dbg !571
  %sub33 = fsub double %call31, %call32, !dbg !572
  store double %sub33, double* %temp, align 8, !dbg !573
  br label %sw.epilog, !dbg !574

sw.bb34:                                          ; preds = %if.then29
  %30 = load double, double* %x.addr, align 8, !dbg !575
  %call35 = call double @sin(double %30) #4, !dbg !576
  %fneg = fneg double %call35, !dbg !577
  %31 = load double, double* %x.addr, align 8, !dbg !578
  %call36 = call double @cos(double %31) #4, !dbg !579
  %sub37 = fsub double %fneg, %call36, !dbg !580
  store double %sub37, double* %temp, align 8, !dbg !581
  br label %sw.epilog, !dbg !582

sw.bb38:                                          ; preds = %if.then29
  %32 = load double, double* %x.addr, align 8, !dbg !583
  %call39 = call double @sin(double %32) #4, !dbg !584
  %fneg40 = fneg double %call39, !dbg !585
  %33 = load double, double* %x.addr, align 8, !dbg !586
  %call41 = call double @cos(double %33) #4, !dbg !587
  %add42 = fadd double %fneg40, %call41, !dbg !588
  store double %add42, double* %temp, align 8, !dbg !589
  br label %sw.epilog, !dbg !590

sw.bb43:                                          ; preds = %if.then29
  %34 = load double, double* %x.addr, align 8, !dbg !591
  %call44 = call double @sin(double %34) #4, !dbg !592
  %35 = load double, double* %x.addr, align 8, !dbg !593
  %call45 = call double @cos(double %35) #4, !dbg !594
  %add46 = fadd double %call44, %call45, !dbg !595
  store double %add46, double* %temp, align 8, !dbg !596
  br label %sw.epilog, !dbg !597

sw.epilog:                                        ; preds = %if.then29, %sw.bb43, %sw.bb38, %sw.bb34, %sw.bb
  %36 = load double, double* %temp, align 8, !dbg !598
  %mul47 = fmul double 0x3FE20DD750429B6D, %36, !dbg !599
  %37 = load double, double* %x.addr, align 8, !dbg !600
  %call48 = call double @sqrt(double %37) #4, !dbg !601
  %div49 = fdiv double %mul47, %call48, !dbg !602
  store double %div49, double* %b, align 8, !dbg !603
  br label %if.end61, !dbg !604

if.else:                                          ; preds = %if.end26
  %38 = load double, double* %x.addr, align 8, !dbg !605
  %call50 = call double @__ieee754_y0(double %38), !dbg !607
  store double %call50, double* %a, align 8, !dbg !608
  %39 = load double, double* %x.addr, align 8, !dbg !609
  %call51 = call double @__ieee754_y1(double %39), !dbg !610
  store double %call51, double* %b, align 8, !dbg !611
  store i32 1, i32* %i, align 4, !dbg !612
  br label %for.cond, !dbg !614

for.cond:                                         ; preds = %for.inc, %if.else
  %40 = load i32, i32* %i, align 4, !dbg !615
  %41 = load i32, i32* %n.addr, align 4, !dbg !617
  %cmp52 = icmp slt i32 %40, %41, !dbg !618
  br i1 %cmp52, label %land.rhs, label %land.end, !dbg !619

land.rhs:                                         ; preds = %for.cond
  %42 = bitcast double* %b to i32*, !dbg !620
  %43 = load i32, i32* %42, align 8, !dbg !620
  %cmp54 = icmp ne i32 %43, -1048576, !dbg !621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %44 = phi i1 [ false, %for.cond ], [ %cmp54, %land.rhs ], !dbg !622
  br i1 %44, label %for.body, label %for.end, !dbg !623

for.body:                                         ; preds = %land.end
  %45 = load double, double* %b, align 8, !dbg !624
  store double %45, double* %temp, align 8, !dbg !626
  %46 = load i32, i32* %i, align 4, !dbg !627
  %47 = load i32, i32* %i, align 4, !dbg !628
  %add56 = add nsw i32 %46, %47, !dbg !629
  %conv57 = sitofp i32 %add56 to double, !dbg !630
  %48 = load double, double* %x.addr, align 8, !dbg !631
  %div58 = fdiv double %conv57, %48, !dbg !632
  %49 = load double, double* %b, align 8, !dbg !633
  %mul59 = fmul double %div58, %49, !dbg !634
  %50 = load double, double* %a, align 8, !dbg !635
  %sub60 = fsub double %mul59, %50, !dbg !636
  store double %sub60, double* %b, align 8, !dbg !637
  %51 = load double, double* %temp, align 8, !dbg !638
  store double %51, double* %a, align 8, !dbg !639
  br label %for.inc, !dbg !640

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4, !dbg !641
  %inc = add nsw i32 %52, 1, !dbg !641
  store i32 %inc, i32* %i, align 4, !dbg !641
  br label %for.cond, !dbg !642, !llvm.loop !643

for.end:                                          ; preds = %land.end
  br label %if.end61

if.end61:                                         ; preds = %for.end, %sw.epilog
  %53 = load i32, i32* %sign, align 4, !dbg !645
  %cmp62 = icmp sgt i32 %53, 0, !dbg !647
  br i1 %cmp62, label %if.then64, label %if.else65, !dbg !648

if.then64:                                        ; preds = %if.end61
  %54 = load double, double* %b, align 8, !dbg !649
  store double %54, double* %retval, align 8, !dbg !650
  br label %return, !dbg !650

if.else65:                                        ; preds = %if.end61
  %55 = load double, double* %b, align 8, !dbg !651
  %fneg66 = fneg double %55, !dbg !652
  store double %fneg66, double* %retval, align 8, !dbg !653
  br label %return, !dbg !653

return:                                           ; preds = %if.else65, %if.then64, %if.then25, %if.then20, %if.then17, %if.then7, %if.then4, %if.then
  %56 = load double, double* %retval, align 8, !dbg !654
  ret double %56, !dbg !654
}

declare dso_local double @__ieee754_y0(double) #2

declare dso_local double @__ieee754_y1(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !655 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca i32, align 4
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a0, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = bitcast i32* %a0 to i8*, !dbg !660
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !661
  call void @llvm.dbg.declare(metadata double* %a1, metadata !662, metadata !DIExpression()), !dbg !663
  %1 = bitcast double* %a1 to i8*, !dbg !664
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !665
  call void @llvm.dbg.declare(metadata double* %r, metadata !666, metadata !DIExpression()), !dbg !667
  %2 = load i32, i32* %a0, align 4, !dbg !668
  %3 = load double, double* %a1, align 8, !dbg !669
  %call = call double @__ieee754_jn(i32 %2, double %3), !dbg !670
  store double %call, double* %r, align 8, !dbg !667
  ret i32 0, !dbg !671
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !13, line: 51, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_jn.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !15, !17, !0}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4603256987541740397, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !2, file: !13, line: 47, type: !14, isLocal: true, isDefinition: true)
!13 = !DIFile(filename: "./e_jn.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !13, line: 49, type: !14, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "two", scope: !2, file: !13, line: 48, type: !14, isLocal: true, isDefinition: true)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!25 = distinct !DISubprogram(name: "__ieee754_jn", scope: !13, file: !13, line: 54, type: !26, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{!9, !7, !9}
!28 = !DILocalVariable(name: "n", arg: 1, scope: !25, file: !13, line: 54, type: !7)
!29 = !DILocation(line: 54, column: 26, scope: !25)
!30 = !DILocalVariable(name: "x", arg: 2, scope: !25, file: !13, line: 54, type: !9)
!31 = !DILocation(line: 54, column: 36, scope: !25)
!32 = !DILocalVariable(name: "i", scope: !25, file: !13, line: 60, type: !7)
!33 = !DILocation(line: 60, column: 6, scope: !25)
!34 = !DILocalVariable(name: "hx", scope: !25, file: !13, line: 60, type: !7)
!35 = !DILocation(line: 60, column: 8, scope: !25)
!36 = !DILocalVariable(name: "ix", scope: !25, file: !13, line: 60, type: !7)
!37 = !DILocation(line: 60, column: 11, scope: !25)
!38 = !DILocalVariable(name: "lx", scope: !25, file: !13, line: 60, type: !7)
!39 = !DILocation(line: 60, column: 14, scope: !25)
!40 = !DILocalVariable(name: "sgn", scope: !25, file: !13, line: 60, type: !7)
!41 = !DILocation(line: 60, column: 18, scope: !25)
!42 = !DILocalVariable(name: "a", scope: !25, file: !13, line: 61, type: !9)
!43 = !DILocation(line: 61, column: 9, scope: !25)
!44 = !DILocalVariable(name: "b", scope: !25, file: !13, line: 61, type: !9)
!45 = !DILocation(line: 61, column: 12, scope: !25)
!46 = !DILocalVariable(name: "temp", scope: !25, file: !13, line: 61, type: !9)
!47 = !DILocation(line: 61, column: 15, scope: !25)
!48 = !DILocalVariable(name: "di", scope: !25, file: !13, line: 61, type: !9)
!49 = !DILocation(line: 61, column: 21, scope: !25)
!50 = !DILocalVariable(name: "z", scope: !25, file: !13, line: 62, type: !9)
!51 = !DILocation(line: 62, column: 9, scope: !25)
!52 = !DILocalVariable(name: "w", scope: !25, file: !13, line: 62, type: !9)
!53 = !DILocation(line: 62, column: 12, scope: !25)
!54 = !DILocation(line: 67, column: 7, scope: !25)
!55 = !DILocation(line: 67, column: 5, scope: !25)
!56 = !DILocation(line: 68, column: 18, scope: !25)
!57 = !DILocation(line: 68, column: 17, scope: !25)
!58 = !DILocation(line: 68, column: 5, scope: !25)
!59 = !DILocation(line: 69, column: 7, scope: !25)
!60 = !DILocation(line: 69, column: 5, scope: !25)
!61 = !DILocation(line: 71, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !25, file: !13, line: 71, column: 5)
!63 = !DILocation(line: 71, column: 21, scope: !62)
!64 = !DILocation(line: 71, column: 25, scope: !62)
!65 = !DILocation(line: 71, column: 24, scope: !62)
!66 = !DILocation(line: 71, column: 23, scope: !62)
!67 = !DILocation(line: 71, column: 29, scope: !62)
!68 = !DILocation(line: 71, column: 8, scope: !62)
!69 = !DILocation(line: 71, column: 34, scope: !62)
!70 = !DILocation(line: 71, column: 5, scope: !25)
!71 = !DILocation(line: 71, column: 54, scope: !62)
!72 = !DILocation(line: 71, column: 56, scope: !62)
!73 = !DILocation(line: 71, column: 55, scope: !62)
!74 = !DILocation(line: 71, column: 47, scope: !62)
!75 = !DILocation(line: 72, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !25, file: !13, line: 72, column: 5)
!77 = !DILocation(line: 72, column: 6, scope: !76)
!78 = !DILocation(line: 72, column: 5, scope: !25)
!79 = !DILocation(line: 73, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !13, line: 72, column: 9)
!81 = !DILocation(line: 73, column: 7, scope: !80)
!82 = !DILocation(line: 73, column: 5, scope: !80)
!83 = !DILocation(line: 74, column: 8, scope: !80)
!84 = !DILocation(line: 74, column: 7, scope: !80)
!85 = !DILocation(line: 74, column: 5, scope: !80)
!86 = !DILocation(line: 75, column: 6, scope: !80)
!87 = !DILocation(line: 76, column: 2, scope: !80)
!88 = !DILocation(line: 77, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !25, file: !13, line: 77, column: 5)
!90 = !DILocation(line: 77, column: 6, scope: !89)
!91 = !DILocation(line: 77, column: 5, scope: !25)
!92 = !DILocation(line: 77, column: 31, scope: !89)
!93 = !DILocation(line: 77, column: 18, scope: !89)
!94 = !DILocation(line: 77, column: 11, scope: !89)
!95 = !DILocation(line: 78, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !25, file: !13, line: 78, column: 5)
!97 = !DILocation(line: 78, column: 6, scope: !96)
!98 = !DILocation(line: 78, column: 5, scope: !25)
!99 = !DILocation(line: 78, column: 31, scope: !96)
!100 = !DILocation(line: 78, column: 18, scope: !96)
!101 = !DILocation(line: 78, column: 11, scope: !96)
!102 = !DILocation(line: 79, column: 9, scope: !25)
!103 = !DILocation(line: 79, column: 10, scope: !25)
!104 = !DILocation(line: 79, column: 15, scope: !25)
!105 = !DILocation(line: 79, column: 17, scope: !25)
!106 = !DILocation(line: 79, column: 13, scope: !25)
!107 = !DILocation(line: 79, column: 6, scope: !25)
!108 = !DILocation(line: 80, column: 11, scope: !25)
!109 = !DILocation(line: 80, column: 6, scope: !25)
!110 = !DILocation(line: 80, column: 4, scope: !25)
!111 = !DILocation(line: 81, column: 6, scope: !112)
!112 = distinct !DILexicalBlock(scope: !25, file: !13, line: 81, column: 5)
!113 = !DILocation(line: 81, column: 9, scope: !112)
!114 = !DILocation(line: 81, column: 8, scope: !112)
!115 = !DILocation(line: 81, column: 12, scope: !112)
!116 = !DILocation(line: 81, column: 15, scope: !112)
!117 = !DILocation(line: 81, column: 17, scope: !112)
!118 = !DILocation(line: 81, column: 19, scope: !112)
!119 = !DILocation(line: 81, column: 5, scope: !25)
!120 = !DILocation(line: 82, column: 10, scope: !112)
!121 = !DILocation(line: 82, column: 8, scope: !112)
!122 = !DILocation(line: 82, column: 6, scope: !112)
!123 = !DILocation(line: 83, column: 18, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !13, line: 83, column: 10)
!125 = !DILocation(line: 83, column: 10, scope: !124)
!126 = !DILocation(line: 83, column: 21, scope: !124)
!127 = !DILocation(line: 83, column: 19, scope: !124)
!128 = !DILocation(line: 83, column: 10, scope: !112)
!129 = !DILocation(line: 85, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !13, line: 85, column: 9)
!131 = distinct !DILexicalBlock(scope: !124, file: !13, line: 83, column: 24)
!132 = !DILocation(line: 85, column: 11, scope: !130)
!133 = !DILocation(line: 85, column: 9, scope: !131)
!134 = !DILocation(line: 99, column: 10, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !13, line: 85, column: 25)
!136 = !DILocation(line: 99, column: 11, scope: !135)
!137 = !DILocation(line: 99, column: 3, scope: !135)
!138 = !DILocation(line: 100, column: 27, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !13, line: 99, column: 15)
!140 = !DILocation(line: 100, column: 23, scope: !139)
!141 = !DILocation(line: 100, column: 34, scope: !139)
!142 = !DILocation(line: 100, column: 30, scope: !139)
!143 = !DILocation(line: 100, column: 29, scope: !139)
!144 = !DILocation(line: 100, column: 20, scope: !139)
!145 = !DILocation(line: 100, column: 38, scope: !139)
!146 = !DILocation(line: 101, column: 27, scope: !139)
!147 = !DILocation(line: 101, column: 23, scope: !139)
!148 = !DILocation(line: 101, column: 22, scope: !139)
!149 = !DILocation(line: 101, column: 34, scope: !139)
!150 = !DILocation(line: 101, column: 30, scope: !139)
!151 = !DILocation(line: 101, column: 29, scope: !139)
!152 = !DILocation(line: 101, column: 20, scope: !139)
!153 = !DILocation(line: 101, column: 38, scope: !139)
!154 = !DILocation(line: 102, column: 27, scope: !139)
!155 = !DILocation(line: 102, column: 23, scope: !139)
!156 = !DILocation(line: 102, column: 22, scope: !139)
!157 = !DILocation(line: 102, column: 34, scope: !139)
!158 = !DILocation(line: 102, column: 30, scope: !139)
!159 = !DILocation(line: 102, column: 29, scope: !139)
!160 = !DILocation(line: 102, column: 20, scope: !139)
!161 = !DILocation(line: 102, column: 38, scope: !139)
!162 = !DILocation(line: 103, column: 27, scope: !139)
!163 = !DILocation(line: 103, column: 23, scope: !139)
!164 = !DILocation(line: 103, column: 34, scope: !139)
!165 = !DILocation(line: 103, column: 30, scope: !139)
!166 = !DILocation(line: 103, column: 29, scope: !139)
!167 = !DILocation(line: 103, column: 20, scope: !139)
!168 = !DILocation(line: 103, column: 38, scope: !139)
!169 = !DILocation(line: 105, column: 17, scope: !135)
!170 = !DILocation(line: 105, column: 16, scope: !135)
!171 = !DILocation(line: 105, column: 27, scope: !135)
!172 = !DILocation(line: 105, column: 22, scope: !135)
!173 = !DILocation(line: 105, column: 21, scope: !135)
!174 = !DILocation(line: 105, column: 5, scope: !135)
!175 = !DILocation(line: 106, column: 6, scope: !135)
!176 = !DILocation(line: 107, column: 27, scope: !177)
!177 = distinct !DILexicalBlock(scope: !130, file: !13, line: 106, column: 13)
!178 = !DILocation(line: 107, column: 14, scope: !177)
!179 = !DILocation(line: 107, column: 12, scope: !177)
!180 = !DILocation(line: 108, column: 27, scope: !177)
!181 = !DILocation(line: 108, column: 14, scope: !177)
!182 = !DILocation(line: 108, column: 12, scope: !177)
!183 = !DILocation(line: 109, column: 15, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !13, line: 109, column: 10)
!185 = !DILocation(line: 109, column: 14, scope: !184)
!186 = !DILocation(line: 109, column: 18, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !13, line: 109, column: 10)
!188 = !DILocation(line: 109, column: 20, scope: !187)
!189 = !DILocation(line: 109, column: 19, scope: !187)
!190 = !DILocation(line: 109, column: 10, scope: !184)
!191 = !DILocation(line: 110, column: 14, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !13, line: 109, column: 26)
!193 = !DILocation(line: 110, column: 12, scope: !192)
!194 = !DILocation(line: 111, column: 11, scope: !192)
!195 = !DILocation(line: 111, column: 23, scope: !192)
!196 = !DILocation(line: 111, column: 25, scope: !192)
!197 = !DILocation(line: 111, column: 24, scope: !192)
!198 = !DILocation(line: 111, column: 14, scope: !192)
!199 = !DILocation(line: 111, column: 28, scope: !192)
!200 = !DILocation(line: 111, column: 27, scope: !192)
!201 = !DILocation(line: 111, column: 12, scope: !192)
!202 = !DILocation(line: 111, column: 33, scope: !192)
!203 = !DILocation(line: 111, column: 31, scope: !192)
!204 = !DILocation(line: 111, column: 9, scope: !192)
!205 = !DILocation(line: 112, column: 11, scope: !192)
!206 = !DILocation(line: 112, column: 9, scope: !192)
!207 = !DILocation(line: 113, column: 10, scope: !192)
!208 = !DILocation(line: 109, column: 23, scope: !187)
!209 = !DILocation(line: 109, column: 10, scope: !187)
!210 = distinct !{!210, !190, !211, !212}
!211 = !DILocation(line: 113, column: 10, scope: !184)
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 115, column: 2, scope: !131)
!214 = !DILocation(line: 116, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !13, line: 116, column: 9)
!216 = distinct !DILexicalBlock(scope: !124, file: !13, line: 115, column: 9)
!217 = !DILocation(line: 116, column: 11, scope: !215)
!218 = !DILocation(line: 116, column: 9, scope: !216)
!219 = !DILocation(line: 120, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !13, line: 120, column: 6)
!221 = distinct !DILexicalBlock(scope: !215, file: !13, line: 116, column: 24)
!222 = !DILocation(line: 120, column: 7, scope: !220)
!223 = !DILocation(line: 120, column: 6, scope: !221)
!224 = !DILocation(line: 121, column: 11, scope: !220)
!225 = !DILocation(line: 121, column: 9, scope: !220)
!226 = !DILocation(line: 121, column: 7, scope: !220)
!227 = !DILocation(line: 123, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !13, line: 122, column: 8)
!229 = !DILocation(line: 123, column: 15, scope: !228)
!230 = !DILocation(line: 123, column: 12, scope: !228)
!231 = !DILocation(line: 123, column: 25, scope: !228)
!232 = !DILocation(line: 123, column: 23, scope: !228)
!233 = !DILocation(line: 124, column: 13, scope: !234)
!234 = distinct !DILexicalBlock(scope: !228, file: !13, line: 124, column: 7)
!235 = !DILocation(line: 124, column: 19, scope: !234)
!236 = !DILocation(line: 124, column: 12, scope: !234)
!237 = !DILocation(line: 124, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !13, line: 124, column: 7)
!239 = !DILocation(line: 124, column: 25, scope: !238)
!240 = !DILocation(line: 124, column: 23, scope: !238)
!241 = !DILocation(line: 124, column: 7, scope: !234)
!242 = !DILocation(line: 125, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !13, line: 124, column: 32)
!244 = !DILocation(line: 125, column: 9, scope: !243)
!245 = !DILocation(line: 125, column: 6, scope: !243)
!246 = !DILocation(line: 126, column: 9, scope: !243)
!247 = !DILocation(line: 126, column: 6, scope: !243)
!248 = !DILocation(line: 127, column: 7, scope: !243)
!249 = !DILocation(line: 124, column: 28, scope: !238)
!250 = !DILocation(line: 124, column: 7, scope: !238)
!251 = distinct !{!251, !241, !252, !212}
!252 = !DILocation(line: 127, column: 7, scope: !234)
!253 = !DILocation(line: 128, column: 11, scope: !228)
!254 = !DILocation(line: 128, column: 13, scope: !228)
!255 = !DILocation(line: 128, column: 12, scope: !228)
!256 = !DILocation(line: 128, column: 9, scope: !228)
!257 = !DILocation(line: 130, column: 6, scope: !221)
!258 = !DILocalVariable(name: "t", scope: !259, file: !13, line: 160, type: !9)
!259 = distinct !DILexicalBlock(scope: !215, file: !13, line: 130, column: 13)
!260 = !DILocation(line: 160, column: 10, scope: !259)
!261 = !DILocalVariable(name: "v", scope: !259, file: !13, line: 160, type: !9)
!262 = !DILocation(line: 160, column: 12, scope: !259)
!263 = !DILocalVariable(name: "q0", scope: !259, file: !13, line: 161, type: !9)
!264 = !DILocation(line: 161, column: 10, scope: !259)
!265 = !DILocalVariable(name: "q1", scope: !259, file: !13, line: 161, type: !9)
!266 = !DILocation(line: 161, column: 13, scope: !259)
!267 = !DILocalVariable(name: "h", scope: !259, file: !13, line: 161, type: !9)
!268 = !DILocation(line: 161, column: 16, scope: !259)
!269 = !DILocalVariable(name: "tmp", scope: !259, file: !13, line: 161, type: !9)
!270 = !DILocation(line: 161, column: 18, scope: !259)
!271 = !DILocalVariable(name: "k", scope: !259, file: !13, line: 161, type: !7)
!272 = !DILocation(line: 161, column: 27, scope: !259)
!273 = !DILocalVariable(name: "m", scope: !259, file: !13, line: 161, type: !7)
!274 = !DILocation(line: 161, column: 29, scope: !259)
!275 = !DILocation(line: 162, column: 9, scope: !259)
!276 = !DILocation(line: 162, column: 11, scope: !259)
!277 = !DILocation(line: 162, column: 10, scope: !259)
!278 = !DILocation(line: 162, column: 8, scope: !259)
!279 = !DILocation(line: 162, column: 22, scope: !259)
!280 = !DILocation(line: 162, column: 13, scope: !259)
!281 = !DILocation(line: 162, column: 6, scope: !259)
!282 = !DILocation(line: 162, column: 41, scope: !259)
!283 = !DILocation(line: 162, column: 32, scope: !259)
!284 = !DILocation(line: 162, column: 27, scope: !259)
!285 = !DILocation(line: 163, column: 8, scope: !259)
!286 = !DILocation(line: 163, column: 6, scope: !259)
!287 = !DILocation(line: 163, column: 16, scope: !259)
!288 = !DILocation(line: 163, column: 18, scope: !259)
!289 = !DILocation(line: 163, column: 17, scope: !259)
!290 = !DILocation(line: 163, column: 14, scope: !259)
!291 = !DILocation(line: 163, column: 26, scope: !259)
!292 = !DILocation(line: 163, column: 28, scope: !259)
!293 = !DILocation(line: 163, column: 27, scope: !259)
!294 = !DILocation(line: 163, column: 30, scope: !259)
!295 = !DILocation(line: 163, column: 24, scope: !259)
!296 = !DILocation(line: 163, column: 38, scope: !259)
!297 = !DILocation(line: 164, column: 3, scope: !259)
!298 = !DILocation(line: 164, column: 9, scope: !259)
!299 = !DILocation(line: 164, column: 11, scope: !259)
!300 = !DILocation(line: 165, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !259, file: !13, line: 164, column: 19)
!302 = !DILocation(line: 165, column: 17, scope: !301)
!303 = !DILocation(line: 165, column: 14, scope: !301)
!304 = !DILocation(line: 166, column: 10, scope: !301)
!305 = !DILocation(line: 166, column: 12, scope: !301)
!306 = !DILocation(line: 166, column: 11, scope: !301)
!307 = !DILocation(line: 166, column: 17, scope: !301)
!308 = !DILocation(line: 166, column: 15, scope: !301)
!309 = !DILocation(line: 166, column: 8, scope: !301)
!310 = !DILocation(line: 167, column: 9, scope: !301)
!311 = !DILocation(line: 167, column: 7, scope: !301)
!312 = !DILocation(line: 168, column: 9, scope: !301)
!313 = !DILocation(line: 168, column: 7, scope: !301)
!314 = distinct !{!314, !297, !315, !212}
!315 = !DILocation(line: 169, column: 3, scope: !259)
!316 = !DILocation(line: 170, column: 7, scope: !259)
!317 = !DILocation(line: 170, column: 9, scope: !259)
!318 = !DILocation(line: 170, column: 8, scope: !259)
!319 = !DILocation(line: 170, column: 5, scope: !259)
!320 = !DILocation(line: 171, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !259, file: !13, line: 171, column: 3)
!322 = !DILocation(line: 171, column: 8, scope: !321)
!323 = !DILocation(line: 171, column: 22, scope: !321)
!324 = !DILocation(line: 171, column: 24, scope: !321)
!325 = !DILocation(line: 171, column: 23, scope: !321)
!326 = !DILocation(line: 171, column: 20, scope: !321)
!327 = !DILocation(line: 171, column: 17, scope: !321)
!328 = !DILocation(line: 171, column: 7, scope: !321)
!329 = !DILocation(line: 171, column: 28, scope: !330)
!330 = distinct !DILexicalBlock(scope: !321, file: !13, line: 171, column: 3)
!331 = !DILocation(line: 171, column: 31, scope: !330)
!332 = !DILocation(line: 171, column: 29, scope: !330)
!333 = !DILocation(line: 171, column: 3, scope: !321)
!334 = !DILocation(line: 171, column: 51, scope: !330)
!335 = !DILocation(line: 171, column: 53, scope: !330)
!336 = !DILocation(line: 171, column: 52, scope: !330)
!337 = !DILocation(line: 171, column: 55, scope: !330)
!338 = !DILocation(line: 171, column: 54, scope: !330)
!339 = !DILocation(line: 171, column: 49, scope: !330)
!340 = !DILocation(line: 171, column: 44, scope: !330)
!341 = !DILocation(line: 171, column: 42, scope: !330)
!342 = !DILocation(line: 171, column: 36, scope: !330)
!343 = !DILocation(line: 171, column: 3, scope: !330)
!344 = distinct !{!344, !333, !345, !212}
!345 = !DILocation(line: 171, column: 56, scope: !321)
!346 = !DILocation(line: 172, column: 7, scope: !259)
!347 = !DILocation(line: 172, column: 5, scope: !259)
!348 = !DILocation(line: 173, column: 5, scope: !259)
!349 = !DILocation(line: 182, column: 9, scope: !259)
!350 = !DILocation(line: 182, column: 7, scope: !259)
!351 = !DILocation(line: 183, column: 11, scope: !259)
!352 = !DILocation(line: 183, column: 10, scope: !259)
!353 = !DILocation(line: 183, column: 5, scope: !259)
!354 = !DILocation(line: 184, column: 9, scope: !259)
!355 = !DILocation(line: 184, column: 32, scope: !259)
!356 = !DILocation(line: 184, column: 34, scope: !259)
!357 = !DILocation(line: 184, column: 33, scope: !259)
!358 = !DILocation(line: 184, column: 27, scope: !259)
!359 = !DILocation(line: 184, column: 13, scope: !259)
!360 = !DILocation(line: 184, column: 12, scope: !259)
!361 = !DILocation(line: 184, column: 7, scope: !259)
!362 = !DILocation(line: 185, column: 6, scope: !363)
!363 = distinct !DILexicalBlock(scope: !259, file: !13, line: 185, column: 6)
!364 = !DILocation(line: 185, column: 9, scope: !363)
!365 = !DILocation(line: 185, column: 6, scope: !259)
!366 = !DILocation(line: 186, column: 17, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !13, line: 186, column: 11)
!368 = distinct !DILexicalBlock(scope: !363, file: !13, line: 185, column: 38)
!369 = !DILocation(line: 186, column: 18, scope: !367)
!370 = !DILocation(line: 186, column: 16, scope: !367)
!371 = !DILocation(line: 186, column: 33, scope: !367)
!372 = !DILocation(line: 186, column: 35, scope: !367)
!373 = !DILocation(line: 186, column: 34, scope: !367)
!374 = !DILocation(line: 186, column: 24, scope: !367)
!375 = !DILocation(line: 186, column: 23, scope: !367)
!376 = !DILocation(line: 186, column: 15, scope: !367)
!377 = !DILocation(line: 186, column: 38, scope: !378)
!378 = distinct !DILexicalBlock(scope: !367, file: !13, line: 186, column: 11)
!379 = !DILocation(line: 186, column: 39, scope: !378)
!380 = !DILocation(line: 186, column: 11, scope: !367)
!381 = !DILocation(line: 187, column: 18, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !13, line: 186, column: 46)
!383 = !DILocation(line: 187, column: 16, scope: !382)
!384 = !DILocation(line: 188, column: 9, scope: !382)
!385 = !DILocation(line: 188, column: 6, scope: !382)
!386 = !DILocation(line: 189, column: 9, scope: !382)
!387 = !DILocation(line: 189, column: 11, scope: !382)
!388 = !DILocation(line: 189, column: 10, scope: !382)
!389 = !DILocation(line: 189, column: 15, scope: !382)
!390 = !DILocation(line: 189, column: 13, scope: !382)
!391 = !DILocation(line: 189, column: 7, scope: !382)
!392 = !DILocation(line: 190, column: 15, scope: !382)
!393 = !DILocation(line: 190, column: 13, scope: !382)
!394 = !DILocation(line: 191, column: 7, scope: !382)
!395 = !DILocation(line: 192, column: 12, scope: !382)
!396 = !DILocation(line: 186, column: 43, scope: !378)
!397 = !DILocation(line: 186, column: 11, scope: !378)
!398 = distinct !{!398, !380, !399, !212}
!399 = !DILocation(line: 192, column: 12, scope: !367)
!400 = !DILocation(line: 193, column: 3, scope: !368)
!401 = !DILocation(line: 194, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !13, line: 194, column: 11)
!403 = distinct !DILexicalBlock(scope: !363, file: !13, line: 193, column: 10)
!404 = !DILocation(line: 194, column: 18, scope: !402)
!405 = !DILocation(line: 194, column: 16, scope: !402)
!406 = !DILocation(line: 194, column: 33, scope: !402)
!407 = !DILocation(line: 194, column: 35, scope: !402)
!408 = !DILocation(line: 194, column: 34, scope: !402)
!409 = !DILocation(line: 194, column: 24, scope: !402)
!410 = !DILocation(line: 194, column: 23, scope: !402)
!411 = !DILocation(line: 194, column: 15, scope: !402)
!412 = !DILocation(line: 194, column: 38, scope: !413)
!413 = distinct !DILexicalBlock(scope: !402, file: !13, line: 194, column: 11)
!414 = !DILocation(line: 194, column: 39, scope: !413)
!415 = !DILocation(line: 194, column: 11, scope: !402)
!416 = !DILocation(line: 195, column: 18, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !13, line: 194, column: 46)
!418 = !DILocation(line: 195, column: 16, scope: !417)
!419 = !DILocation(line: 196, column: 9, scope: !417)
!420 = !DILocation(line: 196, column: 6, scope: !417)
!421 = !DILocation(line: 197, column: 9, scope: !417)
!422 = !DILocation(line: 197, column: 11, scope: !417)
!423 = !DILocation(line: 197, column: 10, scope: !417)
!424 = !DILocation(line: 197, column: 15, scope: !417)
!425 = !DILocation(line: 197, column: 13, scope: !417)
!426 = !DILocation(line: 197, column: 7, scope: !417)
!427 = !DILocation(line: 198, column: 15, scope: !417)
!428 = !DILocation(line: 198, column: 13, scope: !417)
!429 = !DILocation(line: 199, column: 7, scope: !417)
!430 = !DILocation(line: 201, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !417, file: !13, line: 201, column: 7)
!432 = !DILocation(line: 201, column: 8, scope: !431)
!433 = !DILocation(line: 201, column: 7, scope: !417)
!434 = !DILocation(line: 202, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !13, line: 201, column: 16)
!436 = !DILocation(line: 202, column: 10, scope: !435)
!437 = !DILocation(line: 203, column: 13, scope: !435)
!438 = !DILocation(line: 203, column: 10, scope: !435)
!439 = !DILocation(line: 204, column: 11, scope: !435)
!440 = !DILocation(line: 205, column: 4, scope: !435)
!441 = !DILocation(line: 206, column: 12, scope: !417)
!442 = !DILocation(line: 194, column: 43, scope: !413)
!443 = !DILocation(line: 194, column: 11, scope: !413)
!444 = distinct !{!444, !415, !445, !212}
!445 = !DILocation(line: 206, column: 12, scope: !402)
!446 = !DILocation(line: 208, column: 12, scope: !259)
!447 = !DILocation(line: 208, column: 27, scope: !259)
!448 = !DILocation(line: 208, column: 14, scope: !259)
!449 = !DILocation(line: 208, column: 13, scope: !259)
!450 = !DILocation(line: 208, column: 30, scope: !259)
!451 = !DILocation(line: 208, column: 29, scope: !259)
!452 = !DILocation(line: 208, column: 9, scope: !259)
!453 = !DILocation(line: 211, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !25, file: !13, line: 211, column: 5)
!455 = !DILocation(line: 211, column: 8, scope: !454)
!456 = !DILocation(line: 211, column: 5, scope: !25)
!457 = !DILocation(line: 211, column: 21, scope: !454)
!458 = !DILocation(line: 211, column: 20, scope: !454)
!459 = !DILocation(line: 211, column: 13, scope: !454)
!460 = !DILocation(line: 211, column: 36, scope: !454)
!461 = !DILocation(line: 211, column: 29, scope: !454)
!462 = !DILocation(line: 212, column: 1, scope: !25)
!463 = distinct !DISubprogram(name: "__ieee754_yn", scope: !13, file: !13, line: 215, type: !26, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!464 = !DILocalVariable(name: "n", arg: 1, scope: !463, file: !13, line: 215, type: !7)
!465 = !DILocation(line: 215, column: 26, scope: !463)
!466 = !DILocalVariable(name: "x", arg: 2, scope: !463, file: !13, line: 215, type: !9)
!467 = !DILocation(line: 215, column: 36, scope: !463)
!468 = !DILocalVariable(name: "i", scope: !463, file: !13, line: 221, type: !7)
!469 = !DILocation(line: 221, column: 6, scope: !463)
!470 = !DILocalVariable(name: "hx", scope: !463, file: !13, line: 221, type: !7)
!471 = !DILocation(line: 221, column: 8, scope: !463)
!472 = !DILocalVariable(name: "ix", scope: !463, file: !13, line: 221, type: !7)
!473 = !DILocation(line: 221, column: 11, scope: !463)
!474 = !DILocalVariable(name: "lx", scope: !463, file: !13, line: 221, type: !7)
!475 = !DILocation(line: 221, column: 14, scope: !463)
!476 = !DILocalVariable(name: "sign", scope: !463, file: !13, line: 222, type: !7)
!477 = !DILocation(line: 222, column: 6, scope: !463)
!478 = !DILocalVariable(name: "a", scope: !463, file: !13, line: 223, type: !9)
!479 = !DILocation(line: 223, column: 9, scope: !463)
!480 = !DILocalVariable(name: "b", scope: !463, file: !13, line: 223, type: !9)
!481 = !DILocation(line: 223, column: 12, scope: !463)
!482 = !DILocalVariable(name: "temp", scope: !463, file: !13, line: 223, type: !9)
!483 = !DILocation(line: 223, column: 15, scope: !463)
!484 = !DILocation(line: 225, column: 7, scope: !463)
!485 = !DILocation(line: 225, column: 5, scope: !463)
!486 = !DILocation(line: 226, column: 18, scope: !463)
!487 = !DILocation(line: 226, column: 17, scope: !463)
!488 = !DILocation(line: 226, column: 5, scope: !463)
!489 = !DILocation(line: 227, column: 7, scope: !463)
!490 = !DILocation(line: 227, column: 5, scope: !463)
!491 = !DILocation(line: 229, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !463, file: !13, line: 229, column: 5)
!493 = !DILocation(line: 229, column: 21, scope: !492)
!494 = !DILocation(line: 229, column: 25, scope: !492)
!495 = !DILocation(line: 229, column: 24, scope: !492)
!496 = !DILocation(line: 229, column: 23, scope: !492)
!497 = !DILocation(line: 229, column: 29, scope: !492)
!498 = !DILocation(line: 229, column: 8, scope: !492)
!499 = !DILocation(line: 229, column: 34, scope: !492)
!500 = !DILocation(line: 229, column: 5, scope: !463)
!501 = !DILocation(line: 229, column: 54, scope: !492)
!502 = !DILocation(line: 229, column: 56, scope: !492)
!503 = !DILocation(line: 229, column: 55, scope: !492)
!504 = !DILocation(line: 229, column: 47, scope: !492)
!505 = !DILocation(line: 230, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !463, file: !13, line: 230, column: 5)
!507 = !DILocation(line: 230, column: 9, scope: !506)
!508 = !DILocation(line: 230, column: 8, scope: !506)
!509 = !DILocation(line: 230, column: 12, scope: !506)
!510 = !DILocation(line: 230, column: 5, scope: !463)
!511 = !DILocation(line: 230, column: 29, scope: !506)
!512 = !DILocation(line: 230, column: 28, scope: !506)
!513 = !DILocation(line: 230, column: 17, scope: !506)
!514 = !DILocation(line: 231, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !463, file: !13, line: 231, column: 5)
!516 = !DILocation(line: 231, column: 7, scope: !515)
!517 = !DILocation(line: 231, column: 5, scope: !463)
!518 = !DILocation(line: 231, column: 18, scope: !515)
!519 = !DILocation(line: 231, column: 23, scope: !515)
!520 = !DILocation(line: 231, column: 22, scope: !515)
!521 = !DILocation(line: 231, column: 11, scope: !515)
!522 = !DILocation(line: 232, column: 7, scope: !463)
!523 = !DILocation(line: 233, column: 5, scope: !524)
!524 = distinct !DILexicalBlock(scope: !463, file: !13, line: 233, column: 5)
!525 = !DILocation(line: 233, column: 6, scope: !524)
!526 = !DILocation(line: 233, column: 5, scope: !463)
!527 = !DILocation(line: 234, column: 8, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !13, line: 233, column: 9)
!529 = !DILocation(line: 234, column: 7, scope: !528)
!530 = !DILocation(line: 234, column: 5, scope: !528)
!531 = !DILocation(line: 235, column: 16, scope: !528)
!532 = !DILocation(line: 235, column: 17, scope: !528)
!533 = !DILocation(line: 235, column: 20, scope: !528)
!534 = !DILocation(line: 235, column: 12, scope: !528)
!535 = !DILocation(line: 235, column: 8, scope: !528)
!536 = !DILocation(line: 236, column: 2, scope: !528)
!537 = !DILocation(line: 237, column: 5, scope: !538)
!538 = distinct !DILexicalBlock(scope: !463, file: !13, line: 237, column: 5)
!539 = !DILocation(line: 237, column: 6, scope: !538)
!540 = !DILocation(line: 237, column: 5, scope: !463)
!541 = !DILocation(line: 237, column: 31, scope: !538)
!542 = !DILocation(line: 237, column: 18, scope: !538)
!543 = !DILocation(line: 237, column: 11, scope: !538)
!544 = !DILocation(line: 238, column: 5, scope: !545)
!545 = distinct !DILexicalBlock(scope: !463, file: !13, line: 238, column: 5)
!546 = !DILocation(line: 238, column: 6, scope: !545)
!547 = !DILocation(line: 238, column: 5, scope: !463)
!548 = !DILocation(line: 238, column: 18, scope: !545)
!549 = !DILocation(line: 238, column: 36, scope: !545)
!550 = !DILocation(line: 238, column: 23, scope: !545)
!551 = !DILocation(line: 238, column: 22, scope: !545)
!552 = !DILocation(line: 238, column: 11, scope: !545)
!553 = !DILocation(line: 239, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !463, file: !13, line: 239, column: 5)
!555 = !DILocation(line: 239, column: 7, scope: !554)
!556 = !DILocation(line: 239, column: 5, scope: !463)
!557 = !DILocation(line: 239, column: 28, scope: !554)
!558 = !DILocation(line: 239, column: 21, scope: !554)
!559 = !DILocation(line: 240, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !463, file: !13, line: 240, column: 5)
!561 = !DILocation(line: 240, column: 7, scope: !560)
!562 = !DILocation(line: 240, column: 5, scope: !463)
!563 = !DILocation(line: 254, column: 10, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !13, line: 240, column: 21)
!565 = !DILocation(line: 254, column: 11, scope: !564)
!566 = !DILocation(line: 254, column: 3, scope: !564)
!567 = !DILocation(line: 255, column: 27, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !13, line: 254, column: 15)
!569 = !DILocation(line: 255, column: 23, scope: !568)
!570 = !DILocation(line: 255, column: 34, scope: !568)
!571 = !DILocation(line: 255, column: 30, scope: !568)
!572 = !DILocation(line: 255, column: 29, scope: !568)
!573 = !DILocation(line: 255, column: 20, scope: !568)
!574 = !DILocation(line: 255, column: 38, scope: !568)
!575 = !DILocation(line: 256, column: 27, scope: !568)
!576 = !DILocation(line: 256, column: 23, scope: !568)
!577 = !DILocation(line: 256, column: 22, scope: !568)
!578 = !DILocation(line: 256, column: 34, scope: !568)
!579 = !DILocation(line: 256, column: 30, scope: !568)
!580 = !DILocation(line: 256, column: 29, scope: !568)
!581 = !DILocation(line: 256, column: 20, scope: !568)
!582 = !DILocation(line: 256, column: 38, scope: !568)
!583 = !DILocation(line: 257, column: 27, scope: !568)
!584 = !DILocation(line: 257, column: 23, scope: !568)
!585 = !DILocation(line: 257, column: 22, scope: !568)
!586 = !DILocation(line: 257, column: 34, scope: !568)
!587 = !DILocation(line: 257, column: 30, scope: !568)
!588 = !DILocation(line: 257, column: 29, scope: !568)
!589 = !DILocation(line: 257, column: 20, scope: !568)
!590 = !DILocation(line: 257, column: 38, scope: !568)
!591 = !DILocation(line: 258, column: 27, scope: !568)
!592 = !DILocation(line: 258, column: 23, scope: !568)
!593 = !DILocation(line: 258, column: 34, scope: !568)
!594 = !DILocation(line: 258, column: 30, scope: !568)
!595 = !DILocation(line: 258, column: 29, scope: !568)
!596 = !DILocation(line: 258, column: 20, scope: !568)
!597 = !DILocation(line: 258, column: 38, scope: !568)
!598 = !DILocation(line: 260, column: 17, scope: !564)
!599 = !DILocation(line: 260, column: 16, scope: !564)
!600 = !DILocation(line: 260, column: 27, scope: !564)
!601 = !DILocation(line: 260, column: 22, scope: !564)
!602 = !DILocation(line: 260, column: 21, scope: !564)
!603 = !DILocation(line: 260, column: 5, scope: !564)
!604 = !DILocation(line: 261, column: 2, scope: !564)
!605 = !DILocation(line: 262, column: 23, scope: !606)
!606 = distinct !DILexicalBlock(scope: !560, file: !13, line: 261, column: 9)
!607 = !DILocation(line: 262, column: 10, scope: !606)
!608 = !DILocation(line: 262, column: 8, scope: !606)
!609 = !DILocation(line: 263, column: 23, scope: !606)
!610 = !DILocation(line: 263, column: 10, scope: !606)
!611 = !DILocation(line: 263, column: 8, scope: !606)
!612 = !DILocation(line: 265, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !606, file: !13, line: 265, column: 6)
!614 = !DILocation(line: 265, column: 10, scope: !613)
!615 = !DILocation(line: 265, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !13, line: 265, column: 6)
!617 = !DILocation(line: 265, column: 16, scope: !616)
!618 = !DILocation(line: 265, column: 15, scope: !616)
!619 = !DILocation(line: 265, column: 17, scope: !616)
!620 = !DILocation(line: 265, column: 20, scope: !616)
!621 = !DILocation(line: 265, column: 28, scope: !616)
!622 = !DILocation(line: 0, scope: !616)
!623 = !DILocation(line: 265, column: 6, scope: !613)
!624 = !DILocation(line: 266, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !13, line: 265, column: 47)
!626 = !DILocation(line: 266, column: 8, scope: !625)
!627 = !DILocation(line: 267, column: 17, scope: !625)
!628 = !DILocation(line: 267, column: 19, scope: !625)
!629 = !DILocation(line: 267, column: 18, scope: !625)
!630 = !DILocation(line: 267, column: 8, scope: !625)
!631 = !DILocation(line: 267, column: 22, scope: !625)
!632 = !DILocation(line: 267, column: 21, scope: !625)
!633 = !DILocation(line: 267, column: 25, scope: !625)
!634 = !DILocation(line: 267, column: 24, scope: !625)
!635 = !DILocation(line: 267, column: 29, scope: !625)
!636 = !DILocation(line: 267, column: 27, scope: !625)
!637 = !DILocation(line: 267, column: 5, scope: !625)
!638 = !DILocation(line: 268, column: 7, scope: !625)
!639 = !DILocation(line: 268, column: 5, scope: !625)
!640 = !DILocation(line: 269, column: 6, scope: !625)
!641 = !DILocation(line: 265, column: 44, scope: !616)
!642 = !DILocation(line: 265, column: 6, scope: !616)
!643 = distinct !{!643, !623, !644, !212}
!644 = !DILocation(line: 269, column: 6, scope: !613)
!645 = !DILocation(line: 271, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !463, file: !13, line: 271, column: 5)
!647 = !DILocation(line: 271, column: 9, scope: !646)
!648 = !DILocation(line: 271, column: 5, scope: !463)
!649 = !DILocation(line: 271, column: 20, scope: !646)
!650 = !DILocation(line: 271, column: 13, scope: !646)
!651 = !DILocation(line: 271, column: 36, scope: !646)
!652 = !DILocation(line: 271, column: 35, scope: !646)
!653 = !DILocation(line: 271, column: 28, scope: !646)
!654 = !DILocation(line: 272, column: 1, scope: !463)
!655 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 276, type: !656, scopeLine: 276, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!656 = !DISubroutineType(types: !657)
!657 = !{!7}
!658 = !DILocalVariable(name: "a0", scope: !655, file: !13, line: 277, type: !7)
!659 = !DILocation(line: 277, column: 9, scope: !655)
!660 = !DILocation(line: 278, column: 24, scope: !655)
!661 = !DILocation(line: 278, column: 5, scope: !655)
!662 = !DILocalVariable(name: "a1", scope: !655, file: !13, line: 279, type: !9)
!663 = !DILocation(line: 279, column: 12, scope: !655)
!664 = !DILocation(line: 280, column: 24, scope: !655)
!665 = !DILocation(line: 280, column: 5, scope: !655)
!666 = !DILocalVariable(name: "r", scope: !655, file: !13, line: 282, type: !9)
!667 = !DILocation(line: 282, column: 12, scope: !655)
!668 = !DILocation(line: 282, column: 29, scope: !655)
!669 = !DILocation(line: 282, column: 33, scope: !655)
!670 = !DILocation(line: 282, column: 16, scope: !655)
!671 = !DILocation(line: 283, column: 5, scope: !655)
