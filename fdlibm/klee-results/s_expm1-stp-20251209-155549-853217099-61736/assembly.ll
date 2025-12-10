; ModuleID = 's_expm1.bc'
source_filename = "./s_expm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @expm1(double %x) #0 !dbg !42 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %hi = alloca double, align 8
  %lo = alloca double, align 8
  %c = alloca double, align 8
  %t = alloca double, align 8
  %e = alloca double, align 8
  %hxs = alloca double, align 8
  %hfx = alloca double, align 8
  %r1 = alloca double, align 8
  %k = alloca i32, align 4
  %xsb = alloca i32, align 4
  %hx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata double* %y, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata double* %hi, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata double* %lo, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata double* %c, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %t, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata double* %e, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata double* %hxs, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata double* %hfx, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata double* %r1, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %k, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %xsb, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !69, metadata !DIExpression()), !dbg !71
  %0 = bitcast double* %x.addr to i32*, !dbg !72
  %1 = load i32, i32* %0, align 8, !dbg !72
  store i32 %1, i32* %hx, align 4, !dbg !73
  %2 = load i32, i32* %hx, align 4, !dbg !74
  %and = and i32 %2, -2147483648, !dbg !75
  store i32 %and, i32* %xsb, align 4, !dbg !76
  %3 = load i32, i32* %xsb, align 4, !dbg !77
  %cmp = icmp eq i32 %3, 0, !dbg !79
  br i1 %cmp, label %if.then, label %if.else, !dbg !80

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !81
  store double %4, double* %y, align 8, !dbg !82
  br label %if.end, !dbg !83

if.else:                                          ; preds = %entry
  %5 = load double, double* %x.addr, align 8, !dbg !84
  %fneg = fneg double %5, !dbg !85
  store double %fneg, double* %y, align 8, !dbg !86
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %hx, align 4, !dbg !87
  %and1 = and i32 %6, 2147483647, !dbg !87
  store i32 %and1, i32* %hx, align 4, !dbg !87
  %7 = load i32, i32* %hx, align 4, !dbg !88
  %cmp2 = icmp uge i32 %7, 1078159482, !dbg !90
  br i1 %cmp2, label %if.then3, label %if.end25, !dbg !91

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %hx, align 4, !dbg !92
  %cmp4 = icmp uge i32 %8, 1082535490, !dbg !95
  br i1 %cmp4, label %if.then5, label %if.end17, !dbg !96

if.then5:                                         ; preds = %if.then3
  %9 = load i32, i32* %hx, align 4, !dbg !97
  %cmp6 = icmp uge i32 %9, 2146435072, !dbg !100
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !101

if.then7:                                         ; preds = %if.then5
  %10 = load i32, i32* %hx, align 4, !dbg !102
  %and8 = and i32 %10, 1048575, !dbg !105
  %11 = bitcast double* %x.addr to i32*, !dbg !106
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 1, !dbg !106
  %12 = load i32, i32* %add.ptr, align 4, !dbg !106
  %or = or i32 %and8, %12, !dbg !107
  %cmp9 = icmp ne i32 %or, 0, !dbg !108
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !109

if.then10:                                        ; preds = %if.then7
  %13 = load double, double* %x.addr, align 8, !dbg !110
  %14 = load double, double* %x.addr, align 8, !dbg !111
  %add = fadd double %13, %14, !dbg !112
  store double %add, double* %retval, align 8, !dbg !113
  br label %return, !dbg !113

if.else11:                                        ; preds = %if.then7
  %15 = load i32, i32* %xsb, align 4, !dbg !114
  %cmp12 = icmp eq i32 %15, 0, !dbg !115
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %if.else11
  %16 = load double, double* %x.addr, align 8, !dbg !117
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %if.else11
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ -1.000000e+00, %cond.false ], !dbg !116
  store double %cond, double* %retval, align 8, !dbg !118
  br label %return, !dbg !118

if.end13:                                         ; preds = %if.then5
  %17 = load double, double* %x.addr, align 8, !dbg !119
  %cmp14 = fcmp ogt double %17, 0x40862E42FEFA39EF, !dbg !121
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !122

if.then15:                                        ; preds = %if.end13
  store double 0x7FF0000000000000, double* %retval, align 8, !dbg !123
  br label %return, !dbg !123

if.end16:                                         ; preds = %if.end13
  br label %if.end17, !dbg !124

if.end17:                                         ; preds = %if.end16, %if.then3
  %18 = load i32, i32* %xsb, align 4, !dbg !125
  %cmp18 = icmp ne i32 %18, 0, !dbg !127
  br i1 %cmp18, label %if.then19, label %if.end24, !dbg !128

if.then19:                                        ; preds = %if.end17
  %19 = load double, double* %x.addr, align 8, !dbg !129
  %add20 = fadd double %19, 1.000000e-300, !dbg !132
  %cmp21 = fcmp olt double %add20, 0.000000e+00, !dbg !133
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !134

if.then22:                                        ; preds = %if.then19
  store double -1.000000e+00, double* %retval, align 8, !dbg !135
  br label %return, !dbg !135

if.end23:                                         ; preds = %if.then19
  br label %if.end24, !dbg !136

if.end24:                                         ; preds = %if.end23, %if.end17
  br label %if.end25, !dbg !137

if.end25:                                         ; preds = %if.end24, %if.end
  %20 = load i32, i32* %hx, align 4, !dbg !138
  %cmp26 = icmp ugt i32 %20, 1071001154, !dbg !140
  br i1 %cmp26, label %if.then27, label %if.else47, !dbg !141

if.then27:                                        ; preds = %if.end25
  %21 = load i32, i32* %hx, align 4, !dbg !142
  %cmp28 = icmp ult i32 %21, 1072734898, !dbg !145
  br i1 %cmp28, label %if.then29, label %if.else35, !dbg !146

if.then29:                                        ; preds = %if.then27
  %22 = load i32, i32* %xsb, align 4, !dbg !147
  %cmp30 = icmp eq i32 %22, 0, !dbg !150
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !151

if.then31:                                        ; preds = %if.then29
  %23 = load double, double* %x.addr, align 8, !dbg !152
  %sub = fsub double %23, 0x3FE62E42FEE00000, !dbg !154
  store double %sub, double* %hi, align 8, !dbg !155
  store double 0x3DEA39EF35793C76, double* %lo, align 8, !dbg !156
  store i32 1, i32* %k, align 4, !dbg !157
  br label %if.end34, !dbg !158

if.else32:                                        ; preds = %if.then29
  %24 = load double, double* %x.addr, align 8, !dbg !159
  %add33 = fadd double %24, 0x3FE62E42FEE00000, !dbg !161
  store double %add33, double* %hi, align 8, !dbg !162
  store double 0xBDEA39EF35793C76, double* %lo, align 8, !dbg !163
  store i32 -1, i32* %k, align 4, !dbg !164
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then31
  br label %if.end43, !dbg !165

if.else35:                                        ; preds = %if.then27
  %25 = load double, double* %x.addr, align 8, !dbg !166
  %mul = fmul double 0x3FF71547652B82FE, %25, !dbg !168
  %26 = load i32, i32* %xsb, align 4, !dbg !169
  %cmp36 = icmp eq i32 %26, 0, !dbg !170
  %27 = zext i1 %cmp36 to i64, !dbg !171
  %cond37 = select i1 %cmp36, double 5.000000e-01, double -5.000000e-01, !dbg !171
  %add38 = fadd double %mul, %cond37, !dbg !172
  %conv = fptosi double %add38 to i32, !dbg !173
  store i32 %conv, i32* %k, align 4, !dbg !174
  %28 = load i32, i32* %k, align 4, !dbg !175
  %conv39 = sitofp i32 %28 to double, !dbg !175
  store double %conv39, double* %t, align 8, !dbg !176
  %29 = load double, double* %x.addr, align 8, !dbg !177
  %30 = load double, double* %t, align 8, !dbg !178
  %mul40 = fmul double %30, 0x3FE62E42FEE00000, !dbg !179
  %sub41 = fsub double %29, %mul40, !dbg !180
  store double %sub41, double* %hi, align 8, !dbg !181
  %31 = load double, double* %t, align 8, !dbg !182
  %mul42 = fmul double %31, 0x3DEA39EF35793C76, !dbg !183
  store double %mul42, double* %lo, align 8, !dbg !184
  br label %if.end43

if.end43:                                         ; preds = %if.else35, %if.end34
  %32 = load double, double* %hi, align 8, !dbg !185
  %33 = load double, double* %lo, align 8, !dbg !186
  %sub44 = fsub double %32, %33, !dbg !187
  store double %sub44, double* %x.addr, align 8, !dbg !188
  %34 = load double, double* %hi, align 8, !dbg !189
  %35 = load double, double* %x.addr, align 8, !dbg !190
  %sub45 = fsub double %34, %35, !dbg !191
  %36 = load double, double* %lo, align 8, !dbg !192
  %sub46 = fsub double %sub45, %36, !dbg !193
  store double %sub46, double* %c, align 8, !dbg !194
  br label %if.end57, !dbg !195

if.else47:                                        ; preds = %if.end25
  %37 = load i32, i32* %hx, align 4, !dbg !196
  %cmp48 = icmp ult i32 %37, 1016070144, !dbg !198
  br i1 %cmp48, label %if.then50, label %if.else55, !dbg !199

if.then50:                                        ; preds = %if.else47
  %38 = load double, double* %x.addr, align 8, !dbg !200
  %add51 = fadd double 1.000000e+300, %38, !dbg !202
  store double %add51, double* %t, align 8, !dbg !203
  %39 = load double, double* %x.addr, align 8, !dbg !204
  %40 = load double, double* %t, align 8, !dbg !205
  %41 = load double, double* %x.addr, align 8, !dbg !206
  %add52 = fadd double 1.000000e+300, %41, !dbg !207
  %sub53 = fsub double %40, %add52, !dbg !208
  %sub54 = fsub double %39, %sub53, !dbg !209
  store double %sub54, double* %retval, align 8, !dbg !210
  br label %return, !dbg !210

if.else55:                                        ; preds = %if.else47
  store i32 0, i32* %k, align 4, !dbg !211
  br label %if.end56

if.end56:                                         ; preds = %if.else55
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end43
  %42 = load double, double* %x.addr, align 8, !dbg !212
  %mul58 = fmul double 5.000000e-01, %42, !dbg !213
  store double %mul58, double* %hfx, align 8, !dbg !214
  %43 = load double, double* %x.addr, align 8, !dbg !215
  %44 = load double, double* %hfx, align 8, !dbg !216
  %mul59 = fmul double %43, %44, !dbg !217
  store double %mul59, double* %hxs, align 8, !dbg !218
  %45 = load double, double* %hxs, align 8, !dbg !219
  %46 = load double, double* %hxs, align 8, !dbg !220
  %47 = load double, double* %hxs, align 8, !dbg !221
  %48 = load double, double* %hxs, align 8, !dbg !222
  %49 = load double, double* %hxs, align 8, !dbg !223
  %mul60 = fmul double %49, 0xBE8AFDB76E09C32D, !dbg !224
  %add61 = fadd double 0x3ED0CFCA86E65239, %mul60, !dbg !225
  %mul62 = fmul double %48, %add61, !dbg !226
  %add63 = fadd double 0xBF14CE199EAADBB7, %mul62, !dbg !227
  %mul64 = fmul double %47, %add63, !dbg !228
  %add65 = fadd double 0x3F5A01A019FE5585, %mul64, !dbg !229
  %mul66 = fmul double %46, %add65, !dbg !230
  %add67 = fadd double 0xBFA11111111110F4, %mul66, !dbg !231
  %mul68 = fmul double %45, %add67, !dbg !232
  %add69 = fadd double 1.000000e+00, %mul68, !dbg !233
  store double %add69, double* %r1, align 8, !dbg !234
  %50 = load double, double* %r1, align 8, !dbg !235
  %51 = load double, double* %hfx, align 8, !dbg !236
  %mul70 = fmul double %50, %51, !dbg !237
  %sub71 = fsub double 3.000000e+00, %mul70, !dbg !238
  store double %sub71, double* %t, align 8, !dbg !239
  %52 = load double, double* %hxs, align 8, !dbg !240
  %53 = load double, double* %r1, align 8, !dbg !241
  %54 = load double, double* %t, align 8, !dbg !242
  %sub72 = fsub double %53, %54, !dbg !243
  %55 = load double, double* %x.addr, align 8, !dbg !244
  %56 = load double, double* %t, align 8, !dbg !245
  %mul73 = fmul double %55, %56, !dbg !246
  %sub74 = fsub double 6.000000e+00, %mul73, !dbg !247
  %div = fdiv double %sub72, %sub74, !dbg !248
  %mul75 = fmul double %52, %div, !dbg !249
  store double %mul75, double* %e, align 8, !dbg !250
  %57 = load i32, i32* %k, align 4, !dbg !251
  %cmp76 = icmp eq i32 %57, 0, !dbg !253
  br i1 %cmp76, label %if.then78, label %if.else82, !dbg !254

if.then78:                                        ; preds = %if.end57
  %58 = load double, double* %x.addr, align 8, !dbg !255
  %59 = load double, double* %x.addr, align 8, !dbg !256
  %60 = load double, double* %e, align 8, !dbg !257
  %mul79 = fmul double %59, %60, !dbg !258
  %61 = load double, double* %hxs, align 8, !dbg !259
  %sub80 = fsub double %mul79, %61, !dbg !260
  %sub81 = fsub double %58, %sub80, !dbg !261
  store double %sub81, double* %retval, align 8, !dbg !262
  br label %return, !dbg !262

if.else82:                                        ; preds = %if.end57
  %62 = load double, double* %x.addr, align 8, !dbg !263
  %63 = load double, double* %e, align 8, !dbg !265
  %64 = load double, double* %c, align 8, !dbg !266
  %sub83 = fsub double %63, %64, !dbg !267
  %mul84 = fmul double %62, %sub83, !dbg !268
  %65 = load double, double* %c, align 8, !dbg !269
  %sub85 = fsub double %mul84, %65, !dbg !270
  store double %sub85, double* %e, align 8, !dbg !271
  %66 = load double, double* %hxs, align 8, !dbg !272
  %67 = load double, double* %e, align 8, !dbg !273
  %sub86 = fsub double %67, %66, !dbg !273
  store double %sub86, double* %e, align 8, !dbg !273
  %68 = load i32, i32* %k, align 4, !dbg !274
  %cmp87 = icmp eq i32 %68, -1, !dbg !276
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !277

if.then89:                                        ; preds = %if.else82
  %69 = load double, double* %x.addr, align 8, !dbg !278
  %70 = load double, double* %e, align 8, !dbg !279
  %sub90 = fsub double %69, %70, !dbg !280
  %mul91 = fmul double 5.000000e-01, %sub90, !dbg !281
  %sub92 = fsub double %mul91, 5.000000e-01, !dbg !282
  store double %sub92, double* %retval, align 8, !dbg !283
  br label %return, !dbg !283

if.end93:                                         ; preds = %if.else82
  %71 = load i32, i32* %k, align 4, !dbg !284
  %cmp94 = icmp eq i32 %71, 1, !dbg !286
  br i1 %cmp94, label %if.then96, label %if.end107, !dbg !287

if.then96:                                        ; preds = %if.end93
  %72 = load double, double* %x.addr, align 8, !dbg !288
  %cmp97 = fcmp olt double %72, -2.500000e-01, !dbg !291
  br i1 %cmp97, label %if.then99, label %if.else103, !dbg !292

if.then99:                                        ; preds = %if.then96
  %73 = load double, double* %e, align 8, !dbg !293
  %74 = load double, double* %x.addr, align 8, !dbg !295
  %add100 = fadd double %74, 5.000000e-01, !dbg !296
  %sub101 = fsub double %73, %add100, !dbg !297
  %mul102 = fmul double -2.000000e+00, %sub101, !dbg !298
  store double %mul102, double* %retval, align 8, !dbg !299
  br label %return, !dbg !299

if.else103:                                       ; preds = %if.then96
  %75 = load double, double* %x.addr, align 8, !dbg !300
  %76 = load double, double* %e, align 8, !dbg !302
  %sub104 = fsub double %75, %76, !dbg !303
  %mul105 = fmul double 2.000000e+00, %sub104, !dbg !304
  %add106 = fadd double 1.000000e+00, %mul105, !dbg !305
  store double %add106, double* %retval, align 8, !dbg !306
  br label %return, !dbg !306

if.end107:                                        ; preds = %if.end93
  %77 = load i32, i32* %k, align 4, !dbg !307
  %cmp108 = icmp sle i32 %77, -2, !dbg !309
  br i1 %cmp108, label %if.then112, label %lor.lhs.false, !dbg !310

lor.lhs.false:                                    ; preds = %if.end107
  %78 = load i32, i32* %k, align 4, !dbg !311
  %cmp110 = icmp sgt i32 %78, 56, !dbg !312
  br i1 %cmp110, label %if.then112, label %if.end117, !dbg !313

if.then112:                                       ; preds = %lor.lhs.false, %if.end107
  %79 = load double, double* %e, align 8, !dbg !314
  %80 = load double, double* %x.addr, align 8, !dbg !316
  %sub113 = fsub double %79, %80, !dbg !317
  %sub114 = fsub double 1.000000e+00, %sub113, !dbg !318
  store double %sub114, double* %y, align 8, !dbg !319
  %81 = load i32, i32* %k, align 4, !dbg !320
  %shl = shl i32 %81, 20, !dbg !321
  %82 = bitcast double* %y to i32*, !dbg !322
  %83 = load i32, i32* %82, align 8, !dbg !323
  %add115 = add nsw i32 %83, %shl, !dbg !323
  store i32 %add115, i32* %82, align 8, !dbg !323
  %84 = load double, double* %y, align 8, !dbg !324
  %sub116 = fsub double %84, 1.000000e+00, !dbg !325
  store double %sub116, double* %retval, align 8, !dbg !326
  br label %return, !dbg !326

if.end117:                                        ; preds = %lor.lhs.false
  store double 1.000000e+00, double* %t, align 8, !dbg !327
  %85 = load i32, i32* %k, align 4, !dbg !328
  %cmp118 = icmp slt i32 %85, 20, !dbg !330
  br i1 %cmp118, label %if.then120, label %if.else126, !dbg !331

if.then120:                                       ; preds = %if.end117
  %86 = load i32, i32* %k, align 4, !dbg !332
  %int_cast_to_i64 = zext i32 %86 to i64, !dbg !334
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !334
  %shr = ashr i32 2097152, %86, !dbg !334, !klee.check.shift !335
  %sub121 = sub nsw i32 1072693248, %shr, !dbg !336
  %87 = bitcast double* %t to i32*, !dbg !337
  store i32 %sub121, i32* %87, align 8, !dbg !338
  %88 = load double, double* %t, align 8, !dbg !339
  %89 = load double, double* %e, align 8, !dbg !340
  %90 = load double, double* %x.addr, align 8, !dbg !341
  %sub122 = fsub double %89, %90, !dbg !342
  %sub123 = fsub double %88, %sub122, !dbg !343
  store double %sub123, double* %y, align 8, !dbg !344
  %91 = load i32, i32* %k, align 4, !dbg !345
  %shl124 = shl i32 %91, 20, !dbg !346
  %92 = bitcast double* %y to i32*, !dbg !347
  %93 = load i32, i32* %92, align 8, !dbg !348
  %add125 = add nsw i32 %93, %shl124, !dbg !348
  store i32 %add125, i32* %92, align 8, !dbg !348
  br label %if.end134, !dbg !349

if.else126:                                       ; preds = %if.end117
  %94 = load i32, i32* %k, align 4, !dbg !350
  %sub127 = sub nsw i32 1023, %94, !dbg !352
  %shl128 = shl i32 %sub127, 20, !dbg !353
  %95 = bitcast double* %t to i32*, !dbg !354
  store i32 %shl128, i32* %95, align 8, !dbg !355
  %96 = load double, double* %x.addr, align 8, !dbg !356
  %97 = load double, double* %e, align 8, !dbg !357
  %98 = load double, double* %t, align 8, !dbg !358
  %add129 = fadd double %97, %98, !dbg !359
  %sub130 = fsub double %96, %add129, !dbg !360
  store double %sub130, double* %y, align 8, !dbg !361
  %99 = load double, double* %y, align 8, !dbg !362
  %add131 = fadd double %99, 1.000000e+00, !dbg !362
  store double %add131, double* %y, align 8, !dbg !362
  %100 = load i32, i32* %k, align 4, !dbg !363
  %shl132 = shl i32 %100, 20, !dbg !364
  %101 = bitcast double* %y to i32*, !dbg !365
  %102 = load i32, i32* %101, align 8, !dbg !366
  %add133 = add nsw i32 %102, %shl132, !dbg !366
  store i32 %add133, i32* %101, align 8, !dbg !366
  br label %if.end134

if.end134:                                        ; preds = %if.else126, %if.then120
  br label %if.end135

if.end135:                                        ; preds = %if.end134
  %103 = load double, double* %y, align 8, !dbg !367
  store double %103, double* %retval, align 8, !dbg !368
  br label %return, !dbg !368

return:                                           ; preds = %if.end135, %if.then112, %if.else103, %if.then99, %if.then89, %if.then78, %if.then50, %if.then22, %if.then15, %cond.end, %if.then10
  %104 = load double, double* %retval, align 8, !dbg !369
  ret double %104, !dbg !369
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !370 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = bitcast double* %a0 to i8*, !dbg !375
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !376
  call void @llvm.dbg.declare(metadata double* %r, metadata !377, metadata !DIExpression()), !dbg !378
  %1 = load double, double* %a0, align 8, !dbg !379
  %call = call double @expm1(double %1) #5, !dbg !380
  store double %call, double* %r, align 8, !dbg !378
  ret i32 0, !dbg !381
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %bitWidth, i64 %shift) #3 !dbg !382 {
entry:
  %bitWidth.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  store i64 %bitWidth, i64* %bitWidth.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %bitWidth.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i64 %shift, i64* %shift.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %shift.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i64, i64* %shift.addr, align 8, !dbg !391
  %1 = load i64, i64* %bitWidth.addr, align 8, !dbg !393
  %cmp = icmp uge i64 %0, %1, !dbg !394
  br i1 %cmp, label %if.then, label %if.end, !dbg !395

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !396
  unreachable, !dbg !396

if.end:                                           ; preds = %entry
  ret void, !dbg !398
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40}
!llvm.ident = !{!41, !41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_expm1.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "o_threshold", scope: !0, file: !9, line: 118, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./s_expm1.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !9, line: 116, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !9, line: 117, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 115, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4604418534311723008, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "ln2_hi", scope: !0, file: !9, line: 119, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4461442080421002358, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "ln2_lo", scope: !0, file: !9, line: 120, type: !10, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4609176140021203710, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "invln2", scope: !0, file: !9, line: 121, type: !10, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 13808336697493098740, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "Q1", scope: !0, file: !9, line: 123, type: !10, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4564962959435912581, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "Q2", scope: !0, file: !9, line: 124, type: !10, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 13768856570209950647, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "Q3", scope: !0, file: !9, line: 125, type: !10, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4526346094260933177, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "Q4", scope: !0, file: !9, line: 126, type: !10, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 13730065378259354413, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "Q5", scope: !0, file: !9, line: 127, type: !10, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C89, file: !35, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp/klee_build130stp_z3/runtime/Intrinsic")
!36 = !{i32 7, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!42 = distinct !DISubprogram(name: "expm1", scope: !9, file: !9, line: 130, type: !43, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!11, !11}
!45 = !DILocalVariable(name: "x", arg: 1, scope: !42, file: !9, line: 130, type: !11)
!46 = !DILocation(line: 130, column: 22, scope: !42)
!47 = !DILocalVariable(name: "y", scope: !42, file: !9, line: 136, type: !11)
!48 = !DILocation(line: 136, column: 9, scope: !42)
!49 = !DILocalVariable(name: "hi", scope: !42, file: !9, line: 136, type: !11)
!50 = !DILocation(line: 136, column: 11, scope: !42)
!51 = !DILocalVariable(name: "lo", scope: !42, file: !9, line: 136, type: !11)
!52 = !DILocation(line: 136, column: 14, scope: !42)
!53 = !DILocalVariable(name: "c", scope: !42, file: !9, line: 136, type: !11)
!54 = !DILocation(line: 136, column: 17, scope: !42)
!55 = !DILocalVariable(name: "t", scope: !42, file: !9, line: 136, type: !11)
!56 = !DILocation(line: 136, column: 19, scope: !42)
!57 = !DILocalVariable(name: "e", scope: !42, file: !9, line: 136, type: !11)
!58 = !DILocation(line: 136, column: 21, scope: !42)
!59 = !DILocalVariable(name: "hxs", scope: !42, file: !9, line: 136, type: !11)
!60 = !DILocation(line: 136, column: 23, scope: !42)
!61 = !DILocalVariable(name: "hfx", scope: !42, file: !9, line: 136, type: !11)
!62 = !DILocation(line: 136, column: 27, scope: !42)
!63 = !DILocalVariable(name: "r1", scope: !42, file: !9, line: 136, type: !11)
!64 = !DILocation(line: 136, column: 31, scope: !42)
!65 = !DILocalVariable(name: "k", scope: !42, file: !9, line: 137, type: !5)
!66 = !DILocation(line: 137, column: 6, scope: !42)
!67 = !DILocalVariable(name: "xsb", scope: !42, file: !9, line: 137, type: !5)
!68 = !DILocation(line: 137, column: 8, scope: !42)
!69 = !DILocalVariable(name: "hx", scope: !42, file: !9, line: 138, type: !70)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 138, column: 11, scope: !42)
!72 = !DILocation(line: 140, column: 8, scope: !42)
!73 = !DILocation(line: 140, column: 6, scope: !42)
!74 = !DILocation(line: 141, column: 8, scope: !42)
!75 = !DILocation(line: 141, column: 10, scope: !42)
!76 = !DILocation(line: 141, column: 6, scope: !42)
!77 = !DILocation(line: 142, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !42, file: !9, line: 142, column: 5)
!79 = !DILocation(line: 142, column: 8, scope: !78)
!80 = !DILocation(line: 142, column: 5, scope: !42)
!81 = !DILocation(line: 142, column: 15, scope: !78)
!82 = !DILocation(line: 142, column: 14, scope: !78)
!83 = !DILocation(line: 142, column: 13, scope: !78)
!84 = !DILocation(line: 142, column: 27, scope: !78)
!85 = !DILocation(line: 142, column: 26, scope: !78)
!86 = !DILocation(line: 142, column: 24, scope: !78)
!87 = !DILocation(line: 143, column: 5, scope: !42)
!88 = !DILocation(line: 146, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !42, file: !9, line: 146, column: 5)
!90 = !DILocation(line: 146, column: 8, scope: !89)
!91 = !DILocation(line: 146, column: 5, scope: !42)
!92 = !DILocation(line: 147, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !9, line: 147, column: 9)
!94 = distinct !DILexicalBlock(scope: !89, file: !9, line: 146, column: 23)
!95 = !DILocation(line: 147, column: 12, scope: !93)
!96 = !DILocation(line: 147, column: 9, scope: !94)
!97 = !DILocation(line: 148, column: 20, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !9, line: 148, column: 20)
!99 = distinct !DILexicalBlock(scope: !93, file: !9, line: 147, column: 27)
!100 = !DILocation(line: 148, column: 22, scope: !98)
!101 = !DILocation(line: 148, column: 20, scope: !99)
!102 = !DILocation(line: 149, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !9, line: 149, column: 10)
!104 = distinct !DILexicalBlock(scope: !98, file: !9, line: 148, column: 36)
!105 = !DILocation(line: 149, column: 14, scope: !103)
!106 = !DILocation(line: 149, column: 24, scope: !103)
!107 = !DILocation(line: 149, column: 23, scope: !103)
!108 = !DILocation(line: 149, column: 32, scope: !103)
!109 = !DILocation(line: 149, column: 10, scope: !104)
!110 = !DILocation(line: 150, column: 19, scope: !103)
!111 = !DILocation(line: 150, column: 21, scope: !103)
!112 = !DILocation(line: 150, column: 20, scope: !103)
!113 = !DILocation(line: 150, column: 12, scope: !103)
!114 = !DILocation(line: 151, column: 20, scope: !103)
!115 = !DILocation(line: 151, column: 23, scope: !103)
!116 = !DILocation(line: 151, column: 19, scope: !103)
!117 = !DILocation(line: 151, column: 29, scope: !103)
!118 = !DILocation(line: 151, column: 12, scope: !103)
!119 = !DILocation(line: 153, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !99, file: !9, line: 153, column: 13)
!121 = !DILocation(line: 153, column: 15, scope: !120)
!122 = !DILocation(line: 153, column: 13, scope: !99)
!123 = !DILocation(line: 153, column: 30, scope: !120)
!124 = !DILocation(line: 154, column: 6, scope: !99)
!125 = !DILocation(line: 155, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !94, file: !9, line: 155, column: 9)
!127 = !DILocation(line: 155, column: 12, scope: !126)
!128 = !DILocation(line: 155, column: 9, scope: !94)
!129 = !DILocation(line: 156, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !9, line: 156, column: 6)
!131 = distinct !DILexicalBlock(scope: !126, file: !9, line: 155, column: 17)
!132 = !DILocation(line: 156, column: 7, scope: !130)
!133 = !DILocation(line: 156, column: 12, scope: !130)
!134 = !DILocation(line: 156, column: 6, scope: !131)
!135 = !DILocation(line: 157, column: 3, scope: !130)
!136 = !DILocation(line: 158, column: 6, scope: !131)
!137 = !DILocation(line: 159, column: 2, scope: !94)
!138 = !DILocation(line: 162, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !42, file: !9, line: 162, column: 5)
!140 = !DILocation(line: 162, column: 8, scope: !139)
!141 = !DILocation(line: 162, column: 5, scope: !42)
!142 = !DILocation(line: 163, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !9, line: 163, column: 9)
!144 = distinct !DILexicalBlock(scope: !139, file: !9, line: 162, column: 22)
!145 = !DILocation(line: 163, column: 12, scope: !143)
!146 = !DILocation(line: 163, column: 9, scope: !144)
!147 = !DILocation(line: 164, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !9, line: 164, column: 6)
!149 = distinct !DILexicalBlock(scope: !143, file: !9, line: 163, column: 26)
!150 = !DILocation(line: 164, column: 9, scope: !148)
!151 = !DILocation(line: 164, column: 6, scope: !149)
!152 = !DILocation(line: 165, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !9, line: 165, column: 7)
!154 = !DILocation(line: 165, column: 15, scope: !153)
!155 = !DILocation(line: 165, column: 11, scope: !153)
!156 = !DILocation(line: 165, column: 28, scope: !153)
!157 = !DILocation(line: 165, column: 42, scope: !153)
!158 = !DILocation(line: 165, column: 47, scope: !153)
!159 = !DILocation(line: 167, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !9, line: 167, column: 7)
!161 = !DILocation(line: 167, column: 15, scope: !160)
!162 = !DILocation(line: 167, column: 11, scope: !160)
!163 = !DILocation(line: 167, column: 28, scope: !160)
!164 = !DILocation(line: 167, column: 42, scope: !160)
!165 = !DILocation(line: 168, column: 6, scope: !149)
!166 = !DILocation(line: 169, column: 15, scope: !167)
!167 = distinct !DILexicalBlock(scope: !143, file: !9, line: 168, column: 13)
!168 = !DILocation(line: 169, column: 14, scope: !167)
!169 = !DILocation(line: 169, column: 19, scope: !167)
!170 = !DILocation(line: 169, column: 22, scope: !167)
!171 = !DILocation(line: 169, column: 18, scope: !167)
!172 = !DILocation(line: 169, column: 16, scope: !167)
!173 = !DILocation(line: 169, column: 8, scope: !167)
!174 = !DILocation(line: 169, column: 6, scope: !167)
!175 = !DILocation(line: 170, column: 8, scope: !167)
!176 = !DILocation(line: 170, column: 6, scope: !167)
!177 = !DILocation(line: 171, column: 8, scope: !167)
!178 = !DILocation(line: 171, column: 12, scope: !167)
!179 = !DILocation(line: 171, column: 13, scope: !167)
!180 = !DILocation(line: 171, column: 10, scope: !167)
!181 = !DILocation(line: 171, column: 6, scope: !167)
!182 = !DILocation(line: 172, column: 8, scope: !167)
!183 = !DILocation(line: 172, column: 9, scope: !167)
!184 = !DILocation(line: 172, column: 6, scope: !167)
!185 = !DILocation(line: 174, column: 11, scope: !144)
!186 = !DILocation(line: 174, column: 16, scope: !144)
!187 = !DILocation(line: 174, column: 14, scope: !144)
!188 = !DILocation(line: 174, column: 9, scope: !144)
!189 = !DILocation(line: 175, column: 12, scope: !144)
!190 = !DILocation(line: 175, column: 15, scope: !144)
!191 = !DILocation(line: 175, column: 14, scope: !144)
!192 = !DILocation(line: 175, column: 18, scope: !144)
!193 = !DILocation(line: 175, column: 17, scope: !144)
!194 = !DILocation(line: 175, column: 9, scope: !144)
!195 = !DILocation(line: 176, column: 2, scope: !144)
!196 = !DILocation(line: 177, column: 10, scope: !197)
!197 = distinct !DILexicalBlock(scope: !139, file: !9, line: 177, column: 10)
!198 = !DILocation(line: 177, column: 13, scope: !197)
!199 = !DILocation(line: 177, column: 10, scope: !139)
!200 = !DILocation(line: 178, column: 15, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !9, line: 177, column: 27)
!202 = !DILocation(line: 178, column: 14, scope: !201)
!203 = !DILocation(line: 178, column: 8, scope: !201)
!204 = !DILocation(line: 179, column: 13, scope: !201)
!205 = !DILocation(line: 179, column: 18, scope: !201)
!206 = !DILocation(line: 179, column: 26, scope: !201)
!207 = !DILocation(line: 179, column: 25, scope: !201)
!208 = !DILocation(line: 179, column: 19, scope: !201)
!209 = !DILocation(line: 179, column: 15, scope: !201)
!210 = !DILocation(line: 179, column: 6, scope: !201)
!211 = !DILocation(line: 181, column: 9, scope: !197)
!212 = !DILocation(line: 184, column: 12, scope: !42)
!213 = !DILocation(line: 184, column: 11, scope: !42)
!214 = !DILocation(line: 184, column: 6, scope: !42)
!215 = !DILocation(line: 185, column: 8, scope: !42)
!216 = !DILocation(line: 185, column: 10, scope: !42)
!217 = !DILocation(line: 185, column: 9, scope: !42)
!218 = !DILocation(line: 185, column: 6, scope: !42)
!219 = !DILocation(line: 186, column: 11, scope: !42)
!220 = !DILocation(line: 186, column: 19, scope: !42)
!221 = !DILocation(line: 186, column: 27, scope: !42)
!222 = !DILocation(line: 186, column: 35, scope: !42)
!223 = !DILocation(line: 186, column: 43, scope: !42)
!224 = !DILocation(line: 186, column: 46, scope: !42)
!225 = !DILocation(line: 186, column: 42, scope: !42)
!226 = !DILocation(line: 186, column: 38, scope: !42)
!227 = !DILocation(line: 186, column: 34, scope: !42)
!228 = !DILocation(line: 186, column: 30, scope: !42)
!229 = !DILocation(line: 186, column: 26, scope: !42)
!230 = !DILocation(line: 186, column: 22, scope: !42)
!231 = !DILocation(line: 186, column: 18, scope: !42)
!232 = !DILocation(line: 186, column: 14, scope: !42)
!233 = !DILocation(line: 186, column: 10, scope: !42)
!234 = !DILocation(line: 186, column: 5, scope: !42)
!235 = !DILocation(line: 187, column: 11, scope: !42)
!236 = !DILocation(line: 187, column: 14, scope: !42)
!237 = !DILocation(line: 187, column: 13, scope: !42)
!238 = !DILocation(line: 187, column: 10, scope: !42)
!239 = !DILocation(line: 187, column: 5, scope: !42)
!240 = !DILocation(line: 188, column: 7, scope: !42)
!241 = !DILocation(line: 188, column: 13, scope: !42)
!242 = !DILocation(line: 188, column: 16, scope: !42)
!243 = !DILocation(line: 188, column: 15, scope: !42)
!244 = !DILocation(line: 188, column: 26, scope: !42)
!245 = !DILocation(line: 188, column: 28, scope: !42)
!246 = !DILocation(line: 188, column: 27, scope: !42)
!247 = !DILocation(line: 188, column: 24, scope: !42)
!248 = !DILocation(line: 188, column: 18, scope: !42)
!249 = !DILocation(line: 188, column: 10, scope: !42)
!250 = !DILocation(line: 188, column: 5, scope: !42)
!251 = !DILocation(line: 189, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !42, file: !9, line: 189, column: 5)
!253 = !DILocation(line: 189, column: 6, scope: !252)
!254 = !DILocation(line: 189, column: 5, scope: !42)
!255 = !DILocation(line: 189, column: 18, scope: !252)
!256 = !DILocation(line: 189, column: 23, scope: !252)
!257 = !DILocation(line: 189, column: 25, scope: !252)
!258 = !DILocation(line: 189, column: 24, scope: !252)
!259 = !DILocation(line: 189, column: 27, scope: !252)
!260 = !DILocation(line: 189, column: 26, scope: !252)
!261 = !DILocation(line: 189, column: 20, scope: !252)
!262 = !DILocation(line: 189, column: 11, scope: !252)
!263 = !DILocation(line: 191, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !9, line: 190, column: 7)
!265 = !DILocation(line: 191, column: 15, scope: !264)
!266 = !DILocation(line: 191, column: 17, scope: !264)
!267 = !DILocation(line: 191, column: 16, scope: !264)
!268 = !DILocation(line: 191, column: 13, scope: !264)
!269 = !DILocation(line: 191, column: 20, scope: !264)
!270 = !DILocation(line: 191, column: 19, scope: !264)
!271 = !DILocation(line: 191, column: 9, scope: !264)
!272 = !DILocation(line: 192, column: 11, scope: !264)
!273 = !DILocation(line: 192, column: 8, scope: !264)
!274 = !DILocation(line: 193, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !264, file: !9, line: 193, column: 9)
!276 = !DILocation(line: 193, column: 10, scope: !275)
!277 = !DILocation(line: 193, column: 9, scope: !264)
!278 = !DILocation(line: 193, column: 29, scope: !275)
!279 = !DILocation(line: 193, column: 31, scope: !275)
!280 = !DILocation(line: 193, column: 30, scope: !275)
!281 = !DILocation(line: 193, column: 27, scope: !275)
!282 = !DILocation(line: 193, column: 33, scope: !275)
!283 = !DILocation(line: 193, column: 17, scope: !275)
!284 = !DILocation(line: 194, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !264, file: !9, line: 194, column: 9)
!286 = !DILocation(line: 194, column: 11, scope: !285)
!287 = !DILocation(line: 194, column: 9, scope: !264)
!288 = !DILocation(line: 195, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !9, line: 195, column: 7)
!290 = distinct !DILexicalBlock(scope: !285, file: !9, line: 194, column: 17)
!291 = !DILocation(line: 195, column: 9, scope: !289)
!292 = !DILocation(line: 195, column: 7, scope: !290)
!293 = !DILocation(line: 196, column: 19, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !9, line: 195, column: 18)
!295 = !DILocation(line: 196, column: 24, scope: !294)
!296 = !DILocation(line: 196, column: 26, scope: !294)
!297 = !DILocation(line: 196, column: 21, scope: !294)
!298 = !DILocation(line: 196, column: 16, scope: !294)
!299 = !DILocation(line: 196, column: 4, scope: !294)
!300 = !DILocation(line: 198, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !289, file: !9, line: 197, column: 10)
!302 = !DILocation(line: 198, column: 28, scope: !301)
!303 = !DILocation(line: 198, column: 26, scope: !301)
!304 = !DILocation(line: 198, column: 21, scope: !301)
!305 = !DILocation(line: 198, column: 15, scope: !301)
!306 = !DILocation(line: 198, column: 4, scope: !301)
!307 = !DILocation(line: 202, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !264, file: !9, line: 202, column: 7)
!309 = !DILocation(line: 202, column: 9, scope: !308)
!310 = !DILocation(line: 202, column: 15, scope: !308)
!311 = !DILocation(line: 202, column: 18, scope: !308)
!312 = !DILocation(line: 202, column: 20, scope: !308)
!313 = !DILocation(line: 202, column: 7, scope: !264)
!314 = !DILocation(line: 204, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !308, file: !9, line: 202, column: 26)
!316 = !DILocation(line: 204, column: 19, scope: !315)
!317 = !DILocation(line: 204, column: 17, scope: !315)
!318 = !DILocation(line: 204, column: 12, scope: !315)
!319 = !DILocation(line: 204, column: 6, scope: !315)
!320 = !DILocation(line: 205, column: 16, scope: !315)
!321 = !DILocation(line: 205, column: 18, scope: !315)
!322 = !DILocation(line: 205, column: 4, scope: !315)
!323 = !DILocation(line: 205, column: 12, scope: !315)
!324 = !DILocation(line: 206, column: 11, scope: !315)
!325 = !DILocation(line: 206, column: 13, scope: !315)
!326 = !DILocation(line: 206, column: 4, scope: !315)
!327 = !DILocation(line: 209, column: 8, scope: !264)
!328 = !DILocation(line: 210, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !264, file: !9, line: 210, column: 9)
!330 = !DILocation(line: 210, column: 10, scope: !329)
!331 = !DILocation(line: 210, column: 9, scope: !264)
!332 = !DILocation(line: 211, column: 44, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !9, line: 210, column: 15)
!334 = !DILocation(line: 211, column: 42, scope: !333)
!335 = !{!"True"}
!336 = !DILocation(line: 211, column: 31, scope: !333)
!337 = !DILocation(line: 211, column: 10, scope: !333)
!338 = !DILocation(line: 211, column: 18, scope: !333)
!339 = !DILocation(line: 212, column: 14, scope: !333)
!340 = !DILocation(line: 212, column: 17, scope: !333)
!341 = !DILocation(line: 212, column: 19, scope: !333)
!342 = !DILocation(line: 212, column: 18, scope: !333)
!343 = !DILocation(line: 212, column: 15, scope: !333)
!344 = !DILocation(line: 212, column: 12, scope: !333)
!345 = !DILocation(line: 213, column: 22, scope: !333)
!346 = !DILocation(line: 213, column: 23, scope: !333)
!347 = !DILocation(line: 213, column: 10, scope: !333)
!348 = !DILocation(line: 213, column: 18, scope: !333)
!349 = !DILocation(line: 214, column: 5, scope: !333)
!350 = !DILocation(line: 215, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !329, file: !9, line: 214, column: 12)
!352 = !DILocation(line: 215, column: 28, scope: !351)
!353 = !DILocation(line: 215, column: 31, scope: !351)
!354 = !DILocation(line: 215, column: 10, scope: !351)
!355 = !DILocation(line: 215, column: 19, scope: !351)
!356 = !DILocation(line: 216, column: 14, scope: !351)
!357 = !DILocation(line: 216, column: 17, scope: !351)
!358 = !DILocation(line: 216, column: 19, scope: !351)
!359 = !DILocation(line: 216, column: 18, scope: !351)
!360 = !DILocation(line: 216, column: 15, scope: !351)
!361 = !DILocation(line: 216, column: 12, scope: !351)
!362 = !DILocation(line: 217, column: 12, scope: !351)
!363 = !DILocation(line: 218, column: 22, scope: !351)
!364 = !DILocation(line: 218, column: 23, scope: !351)
!365 = !DILocation(line: 218, column: 10, scope: !351)
!366 = !DILocation(line: 218, column: 18, scope: !351)
!367 = !DILocation(line: 221, column: 9, scope: !42)
!368 = !DILocation(line: 221, column: 2, scope: !42)
!369 = !DILocation(line: 222, column: 1, scope: !42)
!370 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 226, type: !371, scopeLine: 226, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!371 = !DISubroutineType(types: !372)
!372 = !{!5}
!373 = !DILocalVariable(name: "a0", scope: !370, file: !9, line: 227, type: !11)
!374 = !DILocation(line: 227, column: 12, scope: !370)
!375 = !DILocation(line: 228, column: 24, scope: !370)
!376 = !DILocation(line: 228, column: 5, scope: !370)
!377 = !DILocalVariable(name: "r", scope: !370, file: !9, line: 230, type: !11)
!378 = !DILocation(line: 230, column: 12, scope: !370)
!379 = !DILocation(line: 230, column: 22, scope: !370)
!380 = !DILocation(line: 230, column: 16, scope: !370)
!381 = !DILocation(line: 231, column: 5, scope: !370)
!382 = distinct !DISubprogram(name: "klee_overshift_check", scope: !383, file: !383, line: 20, type: !384, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !2)
!383 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386, !386}
!386 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!387 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !382, file: !383, line: 20, type: !386)
!388 = !DILocation(line: 20, column: 46, scope: !382)
!389 = !DILocalVariable(name: "shift", arg: 2, scope: !382, file: !383, line: 20, type: !386)
!390 = !DILocation(line: 20, column: 75, scope: !382)
!391 = !DILocation(line: 21, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !383, line: 21, column: 7)
!393 = !DILocation(line: 21, column: 16, scope: !392)
!394 = !DILocation(line: 21, column: 13, scope: !392)
!395 = !DILocation(line: 21, column: 7, scope: !382)
!396 = !DILocation(line: 27, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !383, line: 21, column: 26)
!398 = !DILocation(line: 29, column: 1, scope: !382)
