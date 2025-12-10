; ModuleID = 'e_log.bc'
source_filename = "./e_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_log(double %x) #0 !dbg !38 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %hfsq = alloca double, align 8
  %f = alloca double, align 8
  %s = alloca double, align 8
  %z = alloca double, align 8
  %R = alloca double, align 8
  %w = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %dk = alloca double, align 8
  %k = alloca i32, align 4
  %hx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata double* %hfsq, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata double* %f, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata double* %s, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata double* %z, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata double* %R, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata double* %w, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %t1, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata double* %t2, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata double* %dk, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %k, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %j, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !69, metadata !DIExpression()), !dbg !71
  %0 = bitcast double* %x.addr to i32*, !dbg !72
  %1 = load i32, i32* %0, align 8, !dbg !72
  store i32 %1, i32* %hx, align 4, !dbg !73
  %2 = bitcast double* %x.addr to i32*, !dbg !74
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !74
  %3 = load i32, i32* %add.ptr, align 4, !dbg !74
  store i32 %3, i32* %lx, align 4, !dbg !75
  store i32 0, i32* %k, align 4, !dbg !76
  %4 = load i32, i32* %hx, align 4, !dbg !77
  %cmp = icmp slt i32 %4, 1048576, !dbg !79
  br i1 %cmp, label %if.then, label %if.end8, !dbg !80

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %hx, align 4, !dbg !81
  %and = and i32 %5, 2147483647, !dbg !84
  %6 = load i32, i32* %lx, align 4, !dbg !85
  %or = or i32 %and, %6, !dbg !86
  %cmp1 = icmp eq i32 %or, 0, !dbg !87
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !88

if.then2:                                         ; preds = %if.then
  %7 = load double, double* @zero, align 8, !dbg !89
  %div = fdiv double 0xC350000000000000, %7, !dbg !90
  store double %div, double* %retval, align 8, !dbg !91
  br label %return, !dbg !91

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %hx, align 4, !dbg !92
  %cmp3 = icmp slt i32 %8, 0, !dbg !94
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !95

if.then4:                                         ; preds = %if.end
  %9 = load double, double* %x.addr, align 8, !dbg !96
  %10 = load double, double* %x.addr, align 8, !dbg !97
  %sub = fsub double %9, %10, !dbg !98
  %11 = load double, double* @zero, align 8, !dbg !99
  %div5 = fdiv double %sub, %11, !dbg !100
  store double %div5, double* %retval, align 8, !dbg !101
  br label %return, !dbg !101

if.end6:                                          ; preds = %if.end
  %12 = load i32, i32* %k, align 4, !dbg !102
  %sub7 = sub nsw i32 %12, 54, !dbg !102
  store i32 %sub7, i32* %k, align 4, !dbg !102
  %13 = load double, double* %x.addr, align 8, !dbg !103
  %mul = fmul double %13, 0x4350000000000000, !dbg !103
  store double %mul, double* %x.addr, align 8, !dbg !103
  %14 = bitcast double* %x.addr to i32*, !dbg !104
  %15 = load i32, i32* %14, align 8, !dbg !104
  store i32 %15, i32* %hx, align 4, !dbg !105
  br label %if.end8, !dbg !106

if.end8:                                          ; preds = %if.end6, %entry
  %16 = load i32, i32* %hx, align 4, !dbg !107
  %cmp9 = icmp sge i32 %16, 2146435072, !dbg !109
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !110

if.then10:                                        ; preds = %if.end8
  %17 = load double, double* %x.addr, align 8, !dbg !111
  %18 = load double, double* %x.addr, align 8, !dbg !112
  %add = fadd double %17, %18, !dbg !113
  store double %add, double* %retval, align 8, !dbg !114
  br label %return, !dbg !114

if.end11:                                         ; preds = %if.end8
  %19 = load i32, i32* %hx, align 4, !dbg !115
  %shr = ashr i32 %19, 20, !dbg !116
  %sub12 = sub nsw i32 %shr, 1023, !dbg !117
  %20 = load i32, i32* %k, align 4, !dbg !118
  %add13 = add nsw i32 %20, %sub12, !dbg !118
  store i32 %add13, i32* %k, align 4, !dbg !118
  %21 = load i32, i32* %hx, align 4, !dbg !119
  %and14 = and i32 %21, 1048575, !dbg !119
  store i32 %and14, i32* %hx, align 4, !dbg !119
  %22 = load i32, i32* %hx, align 4, !dbg !120
  %add15 = add nsw i32 %22, 614244, !dbg !121
  %and16 = and i32 %add15, 1048576, !dbg !122
  store i32 %and16, i32* %i, align 4, !dbg !123
  %23 = load i32, i32* %hx, align 4, !dbg !124
  %24 = load i32, i32* %i, align 4, !dbg !125
  %xor = xor i32 %24, 1072693248, !dbg !126
  %or17 = or i32 %23, %xor, !dbg !127
  %25 = bitcast double* %x.addr to i32*, !dbg !128
  store i32 %or17, i32* %25, align 8, !dbg !129
  %26 = load i32, i32* %i, align 4, !dbg !130
  %shr18 = ashr i32 %26, 20, !dbg !131
  %27 = load i32, i32* %k, align 4, !dbg !132
  %add19 = add nsw i32 %27, %shr18, !dbg !132
  store i32 %add19, i32* %k, align 4, !dbg !132
  %28 = load double, double* %x.addr, align 8, !dbg !133
  %sub20 = fsub double %28, 1.000000e+00, !dbg !134
  store double %sub20, double* %f, align 8, !dbg !135
  %29 = load i32, i32* %hx, align 4, !dbg !136
  %add21 = add nsw i32 2, %29, !dbg !138
  %and22 = and i32 1048575, %add21, !dbg !139
  %cmp23 = icmp slt i32 %and22, 3, !dbg !140
  br i1 %cmp23, label %if.then24, label %if.end48, !dbg !141

if.then24:                                        ; preds = %if.end11
  %30 = load double, double* %f, align 8, !dbg !142
  %31 = load double, double* @zero, align 8, !dbg !145
  %cmp25 = fcmp oeq double %30, %31, !dbg !146
  br i1 %cmp25, label %if.then26, label %if.end32, !dbg !147

if.then26:                                        ; preds = %if.then24
  %32 = load i32, i32* %k, align 4, !dbg !148
  %cmp27 = icmp eq i32 %32, 0, !dbg !151
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !152

if.then28:                                        ; preds = %if.then26
  %33 = load double, double* @zero, align 8, !dbg !153
  store double %33, double* %retval, align 8, !dbg !155
  br label %return, !dbg !155

if.else:                                          ; preds = %if.then26
  %34 = load i32, i32* %k, align 4, !dbg !156
  %conv = sitofp i32 %34 to double, !dbg !158
  store double %conv, double* %dk, align 8, !dbg !159
  %35 = load double, double* %dk, align 8, !dbg !160
  %mul29 = fmul double %35, 0x3FE62E42FEE00000, !dbg !161
  %36 = load double, double* %dk, align 8, !dbg !162
  %mul30 = fmul double %36, 0x3DEA39EF35793C76, !dbg !163
  %add31 = fadd double %mul29, %mul30, !dbg !164
  store double %add31, double* %retval, align 8, !dbg !165
  br label %return, !dbg !165

if.end32:                                         ; preds = %if.then24
  %37 = load double, double* %f, align 8, !dbg !166
  %38 = load double, double* %f, align 8, !dbg !167
  %mul33 = fmul double %37, %38, !dbg !168
  %39 = load double, double* %f, align 8, !dbg !169
  %mul34 = fmul double 0x3FD5555555555555, %39, !dbg !170
  %sub35 = fsub double 5.000000e-01, %mul34, !dbg !171
  %mul36 = fmul double %mul33, %sub35, !dbg !172
  store double %mul36, double* %R, align 8, !dbg !173
  %40 = load i32, i32* %k, align 4, !dbg !174
  %cmp37 = icmp eq i32 %40, 0, !dbg !176
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !177

if.then39:                                        ; preds = %if.end32
  %41 = load double, double* %f, align 8, !dbg !178
  %42 = load double, double* %R, align 8, !dbg !179
  %sub40 = fsub double %41, %42, !dbg !180
  store double %sub40, double* %retval, align 8, !dbg !181
  br label %return, !dbg !181

if.else41:                                        ; preds = %if.end32
  %43 = load i32, i32* %k, align 4, !dbg !182
  %conv42 = sitofp i32 %43 to double, !dbg !184
  store double %conv42, double* %dk, align 8, !dbg !185
  %44 = load double, double* %dk, align 8, !dbg !186
  %mul43 = fmul double %44, 0x3FE62E42FEE00000, !dbg !187
  %45 = load double, double* %R, align 8, !dbg !188
  %46 = load double, double* %dk, align 8, !dbg !189
  %mul44 = fmul double %46, 0x3DEA39EF35793C76, !dbg !190
  %sub45 = fsub double %45, %mul44, !dbg !191
  %47 = load double, double* %f, align 8, !dbg !192
  %sub46 = fsub double %sub45, %47, !dbg !193
  %sub47 = fsub double %mul43, %sub46, !dbg !194
  store double %sub47, double* %retval, align 8, !dbg !195
  br label %return, !dbg !195

if.end48:                                         ; preds = %if.end11
  %48 = load double, double* %f, align 8, !dbg !196
  %49 = load double, double* %f, align 8, !dbg !197
  %add49 = fadd double 2.000000e+00, %49, !dbg !198
  %div50 = fdiv double %48, %add49, !dbg !199
  store double %div50, double* %s, align 8, !dbg !200
  %50 = load i32, i32* %k, align 4, !dbg !201
  %conv51 = sitofp i32 %50 to double, !dbg !202
  store double %conv51, double* %dk, align 8, !dbg !203
  %51 = load double, double* %s, align 8, !dbg !204
  %52 = load double, double* %s, align 8, !dbg !205
  %mul52 = fmul double %51, %52, !dbg !206
  store double %mul52, double* %z, align 8, !dbg !207
  %53 = load i32, i32* %hx, align 4, !dbg !208
  %sub53 = sub nsw i32 %53, 398458, !dbg !209
  store i32 %sub53, i32* %i, align 4, !dbg !210
  %54 = load double, double* %z, align 8, !dbg !211
  %55 = load double, double* %z, align 8, !dbg !212
  %mul54 = fmul double %54, %55, !dbg !213
  store double %mul54, double* %w, align 8, !dbg !214
  %56 = load i32, i32* %hx, align 4, !dbg !215
  %sub55 = sub nsw i32 440401, %56, !dbg !216
  store i32 %sub55, i32* %j, align 4, !dbg !217
  %57 = load double, double* %w, align 8, !dbg !218
  %58 = load double, double* %w, align 8, !dbg !219
  %59 = load double, double* %w, align 8, !dbg !220
  %mul56 = fmul double %59, 0x3FC39A09D078C69F, !dbg !221
  %add57 = fadd double 0x3FCC71C51D8E78AF, %mul56, !dbg !222
  %mul58 = fmul double %58, %add57, !dbg !223
  %add59 = fadd double 0x3FD999999997FA04, %mul58, !dbg !224
  %mul60 = fmul double %57, %add59, !dbg !225
  store double %mul60, double* %t1, align 8, !dbg !226
  %60 = load double, double* %z, align 8, !dbg !227
  %61 = load double, double* %w, align 8, !dbg !228
  %62 = load double, double* %w, align 8, !dbg !229
  %63 = load double, double* %w, align 8, !dbg !230
  %mul61 = fmul double %63, 0x3FC2F112DF3E5244, !dbg !231
  %add62 = fadd double 0x3FC7466496CB03DE, %mul61, !dbg !232
  %mul63 = fmul double %62, %add62, !dbg !233
  %add64 = fadd double 0x3FD2492494229359, %mul63, !dbg !234
  %mul65 = fmul double %61, %add64, !dbg !235
  %add66 = fadd double 0x3FE5555555555593, %mul65, !dbg !236
  %mul67 = fmul double %60, %add66, !dbg !237
  store double %mul67, double* %t2, align 8, !dbg !238
  %64 = load i32, i32* %j, align 4, !dbg !239
  %65 = load i32, i32* %i, align 4, !dbg !240
  %or68 = or i32 %65, %64, !dbg !240
  store i32 %or68, i32* %i, align 4, !dbg !240
  %66 = load double, double* %t2, align 8, !dbg !241
  %67 = load double, double* %t1, align 8, !dbg !242
  %add69 = fadd double %66, %67, !dbg !243
  store double %add69, double* %R, align 8, !dbg !244
  %68 = load i32, i32* %i, align 4, !dbg !245
  %cmp70 = icmp sgt i32 %68, 0, !dbg !247
  br i1 %cmp70, label %if.then72, label %if.else91, !dbg !248

if.then72:                                        ; preds = %if.end48
  %69 = load double, double* %f, align 8, !dbg !249
  %mul73 = fmul double 5.000000e-01, %69, !dbg !251
  %70 = load double, double* %f, align 8, !dbg !252
  %mul74 = fmul double %mul73, %70, !dbg !253
  store double %mul74, double* %hfsq, align 8, !dbg !254
  %71 = load i32, i32* %k, align 4, !dbg !255
  %cmp75 = icmp eq i32 %71, 0, !dbg !257
  br i1 %cmp75, label %if.then77, label %if.else82, !dbg !258

if.then77:                                        ; preds = %if.then72
  %72 = load double, double* %f, align 8, !dbg !259
  %73 = load double, double* %hfsq, align 8, !dbg !260
  %74 = load double, double* %s, align 8, !dbg !261
  %75 = load double, double* %hfsq, align 8, !dbg !262
  %76 = load double, double* %R, align 8, !dbg !263
  %add78 = fadd double %75, %76, !dbg !264
  %mul79 = fmul double %74, %add78, !dbg !265
  %sub80 = fsub double %73, %mul79, !dbg !266
  %sub81 = fsub double %72, %sub80, !dbg !267
  store double %sub81, double* %retval, align 8, !dbg !268
  br label %return, !dbg !268

if.else82:                                        ; preds = %if.then72
  %77 = load double, double* %dk, align 8, !dbg !269
  %mul83 = fmul double %77, 0x3FE62E42FEE00000, !dbg !270
  %78 = load double, double* %hfsq, align 8, !dbg !271
  %79 = load double, double* %s, align 8, !dbg !272
  %80 = load double, double* %hfsq, align 8, !dbg !273
  %81 = load double, double* %R, align 8, !dbg !274
  %add84 = fadd double %80, %81, !dbg !275
  %mul85 = fmul double %79, %add84, !dbg !276
  %82 = load double, double* %dk, align 8, !dbg !277
  %mul86 = fmul double %82, 0x3DEA39EF35793C76, !dbg !278
  %add87 = fadd double %mul85, %mul86, !dbg !279
  %sub88 = fsub double %78, %add87, !dbg !280
  %83 = load double, double* %f, align 8, !dbg !281
  %sub89 = fsub double %sub88, %83, !dbg !282
  %sub90 = fsub double %mul83, %sub89, !dbg !283
  store double %sub90, double* %retval, align 8, !dbg !284
  br label %return, !dbg !284

if.else91:                                        ; preds = %if.end48
  %84 = load i32, i32* %k, align 4, !dbg !285
  %cmp92 = icmp eq i32 %84, 0, !dbg !288
  br i1 %cmp92, label %if.then94, label %if.else98, !dbg !289

if.then94:                                        ; preds = %if.else91
  %85 = load double, double* %f, align 8, !dbg !290
  %86 = load double, double* %s, align 8, !dbg !291
  %87 = load double, double* %f, align 8, !dbg !292
  %88 = load double, double* %R, align 8, !dbg !293
  %sub95 = fsub double %87, %88, !dbg !294
  %mul96 = fmul double %86, %sub95, !dbg !295
  %sub97 = fsub double %85, %mul96, !dbg !296
  store double %sub97, double* %retval, align 8, !dbg !297
  br label %return, !dbg !297

if.else98:                                        ; preds = %if.else91
  %89 = load double, double* %dk, align 8, !dbg !298
  %mul99 = fmul double %89, 0x3FE62E42FEE00000, !dbg !299
  %90 = load double, double* %s, align 8, !dbg !300
  %91 = load double, double* %f, align 8, !dbg !301
  %92 = load double, double* %R, align 8, !dbg !302
  %sub100 = fsub double %91, %92, !dbg !303
  %mul101 = fmul double %90, %sub100, !dbg !304
  %93 = load double, double* %dk, align 8, !dbg !305
  %mul102 = fmul double %93, 0x3DEA39EF35793C76, !dbg !306
  %sub103 = fsub double %mul101, %mul102, !dbg !307
  %94 = load double, double* %f, align 8, !dbg !308
  %sub104 = fsub double %sub103, %94, !dbg !309
  %sub105 = fsub double %mul99, %sub104, !dbg !310
  store double %sub105, double* %retval, align 8, !dbg !311
  br label %return, !dbg !311

return:                                           ; preds = %if.else98, %if.then94, %if.else82, %if.then77, %if.else41, %if.then39, %if.else, %if.then28, %if.then10, %if.then4, %if.then2
  %95 = load double, double* %retval, align 8, !dbg !312
  ret double %95, !dbg !312
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !313 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = bitcast double* %a0 to i8*, !dbg !318
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !319
  call void @llvm.dbg.declare(metadata double* %r, metadata !320, metadata !DIExpression()), !dbg !321
  %1 = load double, double* %a0, align 8, !dbg !322
  %call = call double @__ieee754_log(double %1), !dbg !323
  store double %call, double* %r, align 8, !dbg !321
  ret i32 0, !dbg !324
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !12, line: 83, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_log.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !{!10, !14, !16, !18, !20, !22, !24, !26, !28, !30, !0}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "two54", scope: !2, file: !12, line: 74, type: !13, isLocal: true, isDefinition: true)
!12 = !DIFile(filename: "./e_log.c", directory: "/home/klee/logic_bombs/fdlibm")
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4604418534311723008, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "ln2_hi", scope: !2, file: !12, line: 72, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4461442080421002358, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "ln2_lo", scope: !2, file: !12, line: 73, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4600877379321592324, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "Lg2", scope: !2, file: !12, line: 76, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4597174411056806063, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "Lg4", scope: !2, file: !12, line: 78, type: !13, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4594685411790997151, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "Lg6", scope: !2, file: !12, line: 80, type: !13, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4604180019048437139, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "Lg1", scope: !2, file: !12, line: 75, type: !13, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4598818590951641945, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "Lg3", scope: !2, file: !12, line: 77, type: !13, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4595719342595441630, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "Lg5", scope: !2, file: !12, line: 79, type: !13, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4594499633228436036, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "Lg7", scope: !2, file: !12, line: 81, type: !13, isLocal: true, isDefinition: true)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!38 = distinct !DISubprogram(name: "__ieee754_log", scope: !12, file: !12, line: 86, type: !39, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!39 = !DISubroutineType(types: !40)
!40 = !{!8, !8}
!41 = !DILocalVariable(name: "x", arg: 1, scope: !38, file: !12, line: 86, type: !8)
!42 = !DILocation(line: 86, column: 30, scope: !38)
!43 = !DILocalVariable(name: "hfsq", scope: !38, file: !12, line: 92, type: !8)
!44 = !DILocation(line: 92, column: 9, scope: !38)
!45 = !DILocalVariable(name: "f", scope: !38, file: !12, line: 92, type: !8)
!46 = !DILocation(line: 92, column: 14, scope: !38)
!47 = !DILocalVariable(name: "s", scope: !38, file: !12, line: 92, type: !8)
!48 = !DILocation(line: 92, column: 16, scope: !38)
!49 = !DILocalVariable(name: "z", scope: !38, file: !12, line: 92, type: !8)
!50 = !DILocation(line: 92, column: 18, scope: !38)
!51 = !DILocalVariable(name: "R", scope: !38, file: !12, line: 92, type: !8)
!52 = !DILocation(line: 92, column: 20, scope: !38)
!53 = !DILocalVariable(name: "w", scope: !38, file: !12, line: 92, type: !8)
!54 = !DILocation(line: 92, column: 22, scope: !38)
!55 = !DILocalVariable(name: "t1", scope: !38, file: !12, line: 92, type: !8)
!56 = !DILocation(line: 92, column: 24, scope: !38)
!57 = !DILocalVariable(name: "t2", scope: !38, file: !12, line: 92, type: !8)
!58 = !DILocation(line: 92, column: 27, scope: !38)
!59 = !DILocalVariable(name: "dk", scope: !38, file: !12, line: 92, type: !8)
!60 = !DILocation(line: 92, column: 30, scope: !38)
!61 = !DILocalVariable(name: "k", scope: !38, file: !12, line: 93, type: !7)
!62 = !DILocation(line: 93, column: 6, scope: !38)
!63 = !DILocalVariable(name: "hx", scope: !38, file: !12, line: 93, type: !7)
!64 = !DILocation(line: 93, column: 8, scope: !38)
!65 = !DILocalVariable(name: "i", scope: !38, file: !12, line: 93, type: !7)
!66 = !DILocation(line: 93, column: 11, scope: !38)
!67 = !DILocalVariable(name: "j", scope: !38, file: !12, line: 93, type: !7)
!68 = !DILocation(line: 93, column: 13, scope: !38)
!69 = !DILocalVariable(name: "lx", scope: !38, file: !12, line: 94, type: !70)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 94, column: 11, scope: !38)
!72 = !DILocation(line: 96, column: 7, scope: !38)
!73 = !DILocation(line: 96, column: 5, scope: !38)
!74 = !DILocation(line: 97, column: 7, scope: !38)
!75 = !DILocation(line: 97, column: 5, scope: !38)
!76 = !DILocation(line: 99, column: 3, scope: !38)
!77 = !DILocation(line: 100, column: 6, scope: !78)
!78 = distinct !DILexicalBlock(scope: !38, file: !12, line: 100, column: 6)
!79 = !DILocation(line: 100, column: 9, scope: !78)
!80 = !DILocation(line: 100, column: 6, scope: !38)
!81 = !DILocation(line: 101, column: 12, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !12, line: 101, column: 10)
!83 = distinct !DILexicalBlock(scope: !78, file: !12, line: 100, column: 23)
!84 = !DILocation(line: 101, column: 14, scope: !82)
!85 = !DILocation(line: 101, column: 27, scope: !82)
!86 = !DILocation(line: 101, column: 26, scope: !82)
!87 = !DILocation(line: 101, column: 30, scope: !82)
!88 = !DILocation(line: 101, column: 10, scope: !83)
!89 = !DILocation(line: 102, column: 17, scope: !82)
!90 = !DILocation(line: 102, column: 16, scope: !82)
!91 = !DILocation(line: 102, column: 3, scope: !82)
!92 = !DILocation(line: 103, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !83, file: !12, line: 103, column: 10)
!94 = !DILocation(line: 103, column: 12, scope: !93)
!95 = !DILocation(line: 103, column: 10, scope: !83)
!96 = !DILocation(line: 103, column: 24, scope: !93)
!97 = !DILocation(line: 103, column: 26, scope: !93)
!98 = !DILocation(line: 103, column: 25, scope: !93)
!99 = !DILocation(line: 103, column: 29, scope: !93)
!100 = !DILocation(line: 103, column: 28, scope: !93)
!101 = !DILocation(line: 103, column: 16, scope: !93)
!102 = !DILocation(line: 104, column: 8, scope: !83)
!103 = !DILocation(line: 104, column: 17, scope: !83)
!104 = !DILocation(line: 105, column: 11, scope: !83)
!105 = !DILocation(line: 105, column: 9, scope: !83)
!106 = !DILocation(line: 106, column: 2, scope: !83)
!107 = !DILocation(line: 107, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !38, file: !12, line: 107, column: 6)
!109 = !DILocation(line: 107, column: 9, scope: !108)
!110 = !DILocation(line: 107, column: 6, scope: !38)
!111 = !DILocation(line: 107, column: 31, scope: !108)
!112 = !DILocation(line: 107, column: 33, scope: !108)
!113 = !DILocation(line: 107, column: 32, scope: !108)
!114 = !DILocation(line: 107, column: 24, scope: !108)
!115 = !DILocation(line: 108, column: 8, scope: !38)
!116 = !DILocation(line: 108, column: 10, scope: !38)
!117 = !DILocation(line: 108, column: 15, scope: !38)
!118 = !DILocation(line: 108, column: 4, scope: !38)
!119 = !DILocation(line: 109, column: 5, scope: !38)
!120 = !DILocation(line: 110, column: 7, scope: !38)
!121 = !DILocation(line: 110, column: 9, scope: !38)
!122 = !DILocation(line: 110, column: 18, scope: !38)
!123 = !DILocation(line: 110, column: 4, scope: !38)
!124 = !DILocation(line: 111, column: 12, scope: !38)
!125 = !DILocation(line: 111, column: 16, scope: !38)
!126 = !DILocation(line: 111, column: 17, scope: !38)
!127 = !DILocation(line: 111, column: 14, scope: !38)
!128 = !DILocation(line: 111, column: 2, scope: !38)
!129 = !DILocation(line: 111, column: 10, scope: !38)
!130 = !DILocation(line: 112, column: 8, scope: !38)
!131 = !DILocation(line: 112, column: 9, scope: !38)
!132 = !DILocation(line: 112, column: 4, scope: !38)
!133 = !DILocation(line: 113, column: 6, scope: !38)
!134 = !DILocation(line: 113, column: 7, scope: !38)
!135 = !DILocation(line: 113, column: 4, scope: !38)
!136 = !DILocation(line: 114, column: 20, scope: !137)
!137 = distinct !DILexicalBlock(scope: !38, file: !12, line: 114, column: 5)
!138 = !DILocation(line: 114, column: 19, scope: !137)
!139 = !DILocation(line: 114, column: 16, scope: !137)
!140 = !DILocation(line: 114, column: 24, scope: !137)
!141 = !DILocation(line: 114, column: 5, scope: !38)
!142 = !DILocation(line: 115, column: 10, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !12, line: 115, column: 10)
!144 = distinct !DILexicalBlock(scope: !137, file: !12, line: 114, column: 28)
!145 = !DILocation(line: 115, column: 15, scope: !143)
!146 = !DILocation(line: 115, column: 12, scope: !143)
!147 = !DILocation(line: 115, column: 10, scope: !144)
!148 = !DILocation(line: 116, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !12, line: 116, column: 9)
!150 = distinct !DILexicalBlock(scope: !143, file: !12, line: 115, column: 21)
!151 = !DILocation(line: 116, column: 11, scope: !149)
!152 = !DILocation(line: 116, column: 9, scope: !150)
!153 = !DILocation(line: 118, column: 16, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !12, line: 116, column: 17)
!155 = !DILocation(line: 118, column: 9, scope: !154)
!156 = !DILocation(line: 121, column: 23, scope: !157)
!157 = distinct !DILexicalBlock(scope: !149, file: !12, line: 119, column: 12)
!158 = !DILocation(line: 121, column: 14, scope: !157)
!159 = !DILocation(line: 121, column: 12, scope: !157)
!160 = !DILocation(line: 122, column: 16, scope: !157)
!161 = !DILocation(line: 122, column: 19, scope: !157)
!162 = !DILocation(line: 122, column: 30, scope: !157)
!163 = !DILocation(line: 122, column: 33, scope: !157)
!164 = !DILocation(line: 122, column: 28, scope: !157)
!165 = !DILocation(line: 122, column: 9, scope: !157)
!166 = !DILocation(line: 126, column: 10, scope: !144)
!167 = !DILocation(line: 126, column: 12, scope: !144)
!168 = !DILocation(line: 126, column: 11, scope: !144)
!169 = !DILocation(line: 126, column: 39, scope: !144)
!170 = !DILocation(line: 126, column: 38, scope: !144)
!171 = !DILocation(line: 126, column: 18, scope: !144)
!172 = !DILocation(line: 126, column: 13, scope: !144)
!173 = !DILocation(line: 126, column: 8, scope: !144)
!174 = !DILocation(line: 127, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !144, file: !12, line: 127, column: 9)
!176 = !DILocation(line: 127, column: 10, scope: !175)
!177 = !DILocation(line: 127, column: 9, scope: !144)
!178 = !DILocation(line: 127, column: 22, scope: !175)
!179 = !DILocation(line: 127, column: 24, scope: !175)
!180 = !DILocation(line: 127, column: 23, scope: !175)
!181 = !DILocation(line: 127, column: 15, scope: !175)
!182 = !DILocation(line: 127, column: 44, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !12, line: 127, column: 32)
!184 = !DILocation(line: 127, column: 36, scope: !183)
!185 = !DILocation(line: 127, column: 35, scope: !183)
!186 = !DILocation(line: 128, column: 19, scope: !183)
!187 = !DILocation(line: 128, column: 21, scope: !183)
!188 = !DILocation(line: 128, column: 31, scope: !183)
!189 = !DILocation(line: 128, column: 33, scope: !183)
!190 = !DILocation(line: 128, column: 35, scope: !183)
!191 = !DILocation(line: 128, column: 32, scope: !183)
!192 = !DILocation(line: 128, column: 44, scope: !183)
!193 = !DILocation(line: 128, column: 43, scope: !183)
!194 = !DILocation(line: 128, column: 28, scope: !183)
!195 = !DILocation(line: 128, column: 12, scope: !183)
!196 = !DILocation(line: 130, column: 7, scope: !38)
!197 = !DILocation(line: 130, column: 14, scope: !38)
!198 = !DILocation(line: 130, column: 13, scope: !38)
!199 = !DILocation(line: 130, column: 8, scope: !38)
!200 = !DILocation(line: 130, column: 5, scope: !38)
!201 = !DILocation(line: 131, column: 15, scope: !38)
!202 = !DILocation(line: 131, column: 7, scope: !38)
!203 = !DILocation(line: 131, column: 5, scope: !38)
!204 = !DILocation(line: 132, column: 6, scope: !38)
!205 = !DILocation(line: 132, column: 8, scope: !38)
!206 = !DILocation(line: 132, column: 7, scope: !38)
!207 = !DILocation(line: 132, column: 4, scope: !38)
!208 = !DILocation(line: 133, column: 6, scope: !38)
!209 = !DILocation(line: 133, column: 8, scope: !38)
!210 = !DILocation(line: 133, column: 4, scope: !38)
!211 = !DILocation(line: 134, column: 6, scope: !38)
!212 = !DILocation(line: 134, column: 8, scope: !38)
!213 = !DILocation(line: 134, column: 7, scope: !38)
!214 = !DILocation(line: 134, column: 4, scope: !38)
!215 = !DILocation(line: 135, column: 14, scope: !38)
!216 = !DILocation(line: 135, column: 13, scope: !38)
!217 = !DILocation(line: 135, column: 4, scope: !38)
!218 = !DILocation(line: 136, column: 6, scope: !38)
!219 = !DILocation(line: 136, column: 13, scope: !38)
!220 = !DILocation(line: 136, column: 20, scope: !38)
!221 = !DILocation(line: 136, column: 21, scope: !38)
!222 = !DILocation(line: 136, column: 19, scope: !38)
!223 = !DILocation(line: 136, column: 14, scope: !38)
!224 = !DILocation(line: 136, column: 12, scope: !38)
!225 = !DILocation(line: 136, column: 7, scope: !38)
!226 = !DILocation(line: 136, column: 4, scope: !38)
!227 = !DILocation(line: 137, column: 6, scope: !38)
!228 = !DILocation(line: 137, column: 13, scope: !38)
!229 = !DILocation(line: 137, column: 20, scope: !38)
!230 = !DILocation(line: 137, column: 27, scope: !38)
!231 = !DILocation(line: 137, column: 28, scope: !38)
!232 = !DILocation(line: 137, column: 26, scope: !38)
!233 = !DILocation(line: 137, column: 21, scope: !38)
!234 = !DILocation(line: 137, column: 19, scope: !38)
!235 = !DILocation(line: 137, column: 14, scope: !38)
!236 = !DILocation(line: 137, column: 12, scope: !38)
!237 = !DILocation(line: 137, column: 7, scope: !38)
!238 = !DILocation(line: 137, column: 4, scope: !38)
!239 = !DILocation(line: 138, column: 7, scope: !38)
!240 = !DILocation(line: 138, column: 4, scope: !38)
!241 = !DILocation(line: 139, column: 6, scope: !38)
!242 = !DILocation(line: 139, column: 9, scope: !38)
!243 = !DILocation(line: 139, column: 8, scope: !38)
!244 = !DILocation(line: 139, column: 4, scope: !38)
!245 = !DILocation(line: 140, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !38, file: !12, line: 140, column: 5)
!247 = !DILocation(line: 140, column: 6, scope: !246)
!248 = !DILocation(line: 140, column: 5, scope: !38)
!249 = !DILocation(line: 141, column: 15, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !12, line: 140, column: 10)
!251 = !DILocation(line: 141, column: 14, scope: !250)
!252 = !DILocation(line: 141, column: 17, scope: !250)
!253 = !DILocation(line: 141, column: 16, scope: !250)
!254 = !DILocation(line: 141, column: 10, scope: !250)
!255 = !DILocation(line: 142, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !250, file: !12, line: 142, column: 9)
!257 = !DILocation(line: 142, column: 10, scope: !256)
!258 = !DILocation(line: 142, column: 9, scope: !250)
!259 = !DILocation(line: 142, column: 22, scope: !256)
!260 = !DILocation(line: 142, column: 25, scope: !256)
!261 = !DILocation(line: 142, column: 30, scope: !256)
!262 = !DILocation(line: 142, column: 33, scope: !256)
!263 = !DILocation(line: 142, column: 38, scope: !256)
!264 = !DILocation(line: 142, column: 37, scope: !256)
!265 = !DILocation(line: 142, column: 31, scope: !256)
!266 = !DILocation(line: 142, column: 29, scope: !256)
!267 = !DILocation(line: 142, column: 23, scope: !256)
!268 = !DILocation(line: 142, column: 15, scope: !256)
!269 = !DILocation(line: 143, column: 15, scope: !256)
!270 = !DILocation(line: 143, column: 17, scope: !256)
!271 = !DILocation(line: 143, column: 27, scope: !256)
!272 = !DILocation(line: 143, column: 33, scope: !256)
!273 = !DILocation(line: 143, column: 36, scope: !256)
!274 = !DILocation(line: 143, column: 41, scope: !256)
!275 = !DILocation(line: 143, column: 40, scope: !256)
!276 = !DILocation(line: 143, column: 34, scope: !256)
!277 = !DILocation(line: 143, column: 44, scope: !256)
!278 = !DILocation(line: 143, column: 46, scope: !256)
!279 = !DILocation(line: 143, column: 43, scope: !256)
!280 = !DILocation(line: 143, column: 31, scope: !256)
!281 = !DILocation(line: 143, column: 56, scope: !256)
!282 = !DILocation(line: 143, column: 55, scope: !256)
!283 = !DILocation(line: 143, column: 24, scope: !256)
!284 = !DILocation(line: 143, column: 8, scope: !256)
!285 = !DILocation(line: 145, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !12, line: 145, column: 9)
!287 = distinct !DILexicalBlock(scope: !246, file: !12, line: 144, column: 9)
!288 = !DILocation(line: 145, column: 10, scope: !286)
!289 = !DILocation(line: 145, column: 9, scope: !287)
!290 = !DILocation(line: 145, column: 22, scope: !286)
!291 = !DILocation(line: 145, column: 24, scope: !286)
!292 = !DILocation(line: 145, column: 27, scope: !286)
!293 = !DILocation(line: 145, column: 29, scope: !286)
!294 = !DILocation(line: 145, column: 28, scope: !286)
!295 = !DILocation(line: 145, column: 25, scope: !286)
!296 = !DILocation(line: 145, column: 23, scope: !286)
!297 = !DILocation(line: 145, column: 15, scope: !286)
!298 = !DILocation(line: 146, column: 15, scope: !286)
!299 = !DILocation(line: 146, column: 17, scope: !286)
!300 = !DILocation(line: 146, column: 27, scope: !286)
!301 = !DILocation(line: 146, column: 30, scope: !286)
!302 = !DILocation(line: 146, column: 32, scope: !286)
!303 = !DILocation(line: 146, column: 31, scope: !286)
!304 = !DILocation(line: 146, column: 28, scope: !286)
!305 = !DILocation(line: 146, column: 35, scope: !286)
!306 = !DILocation(line: 146, column: 37, scope: !286)
!307 = !DILocation(line: 146, column: 34, scope: !286)
!308 = !DILocation(line: 146, column: 46, scope: !286)
!309 = !DILocation(line: 146, column: 45, scope: !286)
!310 = !DILocation(line: 146, column: 24, scope: !286)
!311 = !DILocation(line: 146, column: 8, scope: !286)
!312 = !DILocation(line: 148, column: 1, scope: !38)
!313 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 152, type: !314, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{!7}
!316 = !DILocalVariable(name: "a0", scope: !313, file: !12, line: 153, type: !8)
!317 = !DILocation(line: 153, column: 12, scope: !313)
!318 = !DILocation(line: 154, column: 24, scope: !313)
!319 = !DILocation(line: 154, column: 5, scope: !313)
!320 = !DILocalVariable(name: "r", scope: !313, file: !12, line: 156, type: !8)
!321 = !DILocation(line: 156, column: 12, scope: !313)
!322 = !DILocation(line: 156, column: 30, scope: !313)
!323 = !DILocation(line: 156, column: 16, scope: !313)
!324 = !DILocation(line: 157, column: 5, scope: !313)
