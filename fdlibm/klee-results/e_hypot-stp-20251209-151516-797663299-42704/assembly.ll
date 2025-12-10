; ModuleID = 'e_hypot.bc'
source_filename = "./e_hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_hypot(double %x, double %y) #0 !dbg !12 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %w = alloca double, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ha = alloca i32, align 4
  %hb = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata double* %a, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = load double, double* %x.addr, align 8, !dbg !23
  store double %0, double* %a, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata double* %b, metadata !24, metadata !DIExpression()), !dbg !25
  %1 = load double, double* %y.addr, align 8, !dbg !26
  store double %1, double* %b, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata double* %t1, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata double* %t2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata double* %y1, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata double* %y2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata double* %w, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %j, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %k, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %ha, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %hb, metadata !43, metadata !DIExpression()), !dbg !44
  %2 = bitcast double* %x.addr to i32*, !dbg !45
  %3 = load i32, i32* %2, align 8, !dbg !45
  %and = and i32 %3, 2147483647, !dbg !46
  store i32 %and, i32* %ha, align 4, !dbg !47
  %4 = bitcast double* %y.addr to i32*, !dbg !48
  %5 = load i32, i32* %4, align 8, !dbg !48
  %and1 = and i32 %5, 2147483647, !dbg !49
  store i32 %and1, i32* %hb, align 4, !dbg !50
  %6 = load i32, i32* %hb, align 4, !dbg !51
  %7 = load i32, i32* %ha, align 4, !dbg !53
  %cmp = icmp sgt i32 %6, %7, !dbg !54
  br i1 %cmp, label %if.then, label %if.else, !dbg !55

if.then:                                          ; preds = %entry
  %8 = load double, double* %y.addr, align 8, !dbg !56
  store double %8, double* %a, align 8, !dbg !58
  %9 = load double, double* %x.addr, align 8, !dbg !59
  store double %9, double* %b, align 8, !dbg !60
  %10 = load i32, i32* %ha, align 4, !dbg !61
  store i32 %10, i32* %j, align 4, !dbg !62
  %11 = load i32, i32* %hb, align 4, !dbg !63
  store i32 %11, i32* %ha, align 4, !dbg !64
  %12 = load i32, i32* %j, align 4, !dbg !65
  store i32 %12, i32* %hb, align 4, !dbg !66
  br label %if.end, !dbg !67

if.else:                                          ; preds = %entry
  %13 = load double, double* %x.addr, align 8, !dbg !68
  store double %13, double* %a, align 8, !dbg !70
  %14 = load double, double* %y.addr, align 8, !dbg !71
  store double %14, double* %b, align 8, !dbg !72
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %ha, align 4, !dbg !73
  %16 = bitcast double* %a to i32*, !dbg !74
  store i32 %15, i32* %16, align 8, !dbg !75
  %17 = load i32, i32* %hb, align 4, !dbg !76
  %18 = bitcast double* %b to i32*, !dbg !77
  store i32 %17, i32* %18, align 8, !dbg !78
  %19 = load i32, i32* %ha, align 4, !dbg !79
  %20 = load i32, i32* %hb, align 4, !dbg !81
  %sub = sub nsw i32 %19, %20, !dbg !82
  %cmp2 = icmp sgt i32 %sub, 62914560, !dbg !83
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !84

if.then3:                                         ; preds = %if.end
  %21 = load double, double* %a, align 8, !dbg !85
  %22 = load double, double* %b, align 8, !dbg !87
  %add = fadd double %21, %22, !dbg !88
  store double %add, double* %retval, align 8, !dbg !89
  br label %return, !dbg !89

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %k, align 4, !dbg !90
  %23 = load i32, i32* %ha, align 4, !dbg !91
  %cmp5 = icmp sgt i32 %23, 1596981248, !dbg !93
  br i1 %cmp5, label %if.then6, label %if.end23, !dbg !94

if.then6:                                         ; preds = %if.end4
  %24 = load i32, i32* %ha, align 4, !dbg !95
  %cmp7 = icmp sge i32 %24, 2146435072, !dbg !98
  br i1 %cmp7, label %if.then8, label %if.end19, !dbg !99

if.then8:                                         ; preds = %if.then6
  %25 = load double, double* %a, align 8, !dbg !100
  %26 = load double, double* %b, align 8, !dbg !102
  %add9 = fadd double %25, %26, !dbg !103
  store double %add9, double* %w, align 8, !dbg !104
  %27 = load i32, i32* %ha, align 4, !dbg !105
  %and10 = and i32 %27, 1048575, !dbg !107
  %28 = bitcast double* %a to i32*, !dbg !108
  %add.ptr = getelementptr inbounds i32, i32* %28, i64 1, !dbg !108
  %29 = load i32, i32* %add.ptr, align 4, !dbg !108
  %or = or i32 %and10, %29, !dbg !109
  %cmp11 = icmp eq i32 %or, 0, !dbg !110
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !111

if.then12:                                        ; preds = %if.then8
  %30 = load double, double* %a, align 8, !dbg !112
  store double %30, double* %w, align 8, !dbg !113
  br label %if.end13, !dbg !114

if.end13:                                         ; preds = %if.then12, %if.then8
  %31 = load i32, i32* %hb, align 4, !dbg !115
  %xor = xor i32 %31, 2146435072, !dbg !117
  %32 = bitcast double* %b to i32*, !dbg !118
  %add.ptr14 = getelementptr inbounds i32, i32* %32, i64 1, !dbg !118
  %33 = load i32, i32* %add.ptr14, align 4, !dbg !118
  %or15 = or i32 %xor, %33, !dbg !119
  %cmp16 = icmp eq i32 %or15, 0, !dbg !120
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !121

if.then17:                                        ; preds = %if.end13
  %34 = load double, double* %b, align 8, !dbg !122
  store double %34, double* %w, align 8, !dbg !123
  br label %if.end18, !dbg !124

if.end18:                                         ; preds = %if.then17, %if.end13
  %35 = load double, double* %w, align 8, !dbg !125
  store double %35, double* %retval, align 8, !dbg !126
  br label %return, !dbg !126

if.end19:                                         ; preds = %if.then6
  %36 = load i32, i32* %ha, align 4, !dbg !127
  %sub20 = sub nsw i32 %36, 629145600, !dbg !127
  store i32 %sub20, i32* %ha, align 4, !dbg !127
  %37 = load i32, i32* %hb, align 4, !dbg !128
  %sub21 = sub nsw i32 %37, 629145600, !dbg !128
  store i32 %sub21, i32* %hb, align 4, !dbg !128
  %38 = load i32, i32* %k, align 4, !dbg !129
  %add22 = add nsw i32 %38, 600, !dbg !129
  store i32 %add22, i32* %k, align 4, !dbg !129
  %39 = load i32, i32* %ha, align 4, !dbg !130
  %40 = bitcast double* %a to i32*, !dbg !131
  store i32 %39, i32* %40, align 8, !dbg !132
  %41 = load i32, i32* %hb, align 4, !dbg !133
  %42 = bitcast double* %b to i32*, !dbg !134
  store i32 %41, i32* %42, align 8, !dbg !135
  br label %if.end23, !dbg !136

if.end23:                                         ; preds = %if.end19, %if.end4
  %43 = load i32, i32* %hb, align 4, !dbg !137
  %cmp24 = icmp slt i32 %43, 548405248, !dbg !139
  br i1 %cmp24, label %if.then25, label %if.end40, !dbg !140

if.then25:                                        ; preds = %if.end23
  %44 = load i32, i32* %hb, align 4, !dbg !141
  %cmp26 = icmp sle i32 %44, 1048575, !dbg !144
  br i1 %cmp26, label %if.then27, label %if.else35, !dbg !145

if.then27:                                        ; preds = %if.then25
  %45 = load i32, i32* %hb, align 4, !dbg !146
  %46 = bitcast double* %b to i32*, !dbg !149
  %add.ptr28 = getelementptr inbounds i32, i32* %46, i64 1, !dbg !149
  %47 = load i32, i32* %add.ptr28, align 4, !dbg !149
  %or29 = or i32 %45, %47, !dbg !150
  %cmp30 = icmp eq i32 %or29, 0, !dbg !151
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !152

if.then31:                                        ; preds = %if.then27
  %48 = load double, double* %a, align 8, !dbg !153
  store double %48, double* %retval, align 8, !dbg !154
  br label %return, !dbg !154

if.end32:                                         ; preds = %if.then27
  store double 0.000000e+00, double* %t1, align 8, !dbg !155
  %49 = bitcast double* %t1 to i32*, !dbg !156
  store i32 2144337920, i32* %49, align 8, !dbg !157
  %50 = load double, double* %t1, align 8, !dbg !158
  %51 = load double, double* %b, align 8, !dbg !159
  %mul = fmul double %51, %50, !dbg !159
  store double %mul, double* %b, align 8, !dbg !159
  %52 = load double, double* %t1, align 8, !dbg !160
  %53 = load double, double* %a, align 8, !dbg !161
  %mul33 = fmul double %53, %52, !dbg !161
  store double %mul33, double* %a, align 8, !dbg !161
  %54 = load i32, i32* %k, align 4, !dbg !162
  %sub34 = sub nsw i32 %54, 1022, !dbg !162
  store i32 %sub34, i32* %k, align 4, !dbg !162
  br label %if.end39, !dbg !163

if.else35:                                        ; preds = %if.then25
  %55 = load i32, i32* %ha, align 4, !dbg !164
  %add36 = add nsw i32 %55, 629145600, !dbg !164
  store i32 %add36, i32* %ha, align 4, !dbg !164
  %56 = load i32, i32* %hb, align 4, !dbg !166
  %add37 = add nsw i32 %56, 629145600, !dbg !166
  store i32 %add37, i32* %hb, align 4, !dbg !166
  %57 = load i32, i32* %k, align 4, !dbg !167
  %sub38 = sub nsw i32 %57, 600, !dbg !167
  store i32 %sub38, i32* %k, align 4, !dbg !167
  %58 = load i32, i32* %ha, align 4, !dbg !168
  %59 = bitcast double* %a to i32*, !dbg !169
  store i32 %58, i32* %59, align 8, !dbg !170
  %60 = load i32, i32* %hb, align 4, !dbg !171
  %61 = bitcast double* %b to i32*, !dbg !172
  store i32 %60, i32* %61, align 8, !dbg !173
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.end32
  br label %if.end40, !dbg !174

if.end40:                                         ; preds = %if.end39, %if.end23
  %62 = load double, double* %a, align 8, !dbg !175
  %63 = load double, double* %b, align 8, !dbg !176
  %sub41 = fsub double %62, %63, !dbg !177
  store double %sub41, double* %w, align 8, !dbg !178
  %64 = load double, double* %w, align 8, !dbg !179
  %65 = load double, double* %b, align 8, !dbg !181
  %cmp42 = fcmp ogt double %64, %65, !dbg !182
  br i1 %cmp42, label %if.then43, label %if.else51, !dbg !183

if.then43:                                        ; preds = %if.end40
  store double 0.000000e+00, double* %t1, align 8, !dbg !184
  %66 = load i32, i32* %ha, align 4, !dbg !186
  %67 = bitcast double* %t1 to i32*, !dbg !187
  store i32 %66, i32* %67, align 8, !dbg !188
  %68 = load double, double* %a, align 8, !dbg !189
  %69 = load double, double* %t1, align 8, !dbg !190
  %sub44 = fsub double %68, %69, !dbg !191
  store double %sub44, double* %t2, align 8, !dbg !192
  %70 = load double, double* %t1, align 8, !dbg !193
  %71 = load double, double* %t1, align 8, !dbg !194
  %mul45 = fmul double %70, %71, !dbg !195
  %72 = load double, double* %b, align 8, !dbg !196
  %73 = load double, double* %b, align 8, !dbg !197
  %fneg = fneg double %73, !dbg !198
  %mul46 = fmul double %72, %fneg, !dbg !199
  %74 = load double, double* %t2, align 8, !dbg !200
  %75 = load double, double* %a, align 8, !dbg !201
  %76 = load double, double* %t1, align 8, !dbg !202
  %add47 = fadd double %75, %76, !dbg !203
  %mul48 = fmul double %74, %add47, !dbg !204
  %sub49 = fsub double %mul46, %mul48, !dbg !205
  %sub50 = fsub double %mul45, %sub49, !dbg !206
  %call = call double @sqrt(double %sub50) #4, !dbg !207
  store double %call, double* %w, align 8, !dbg !208
  br label %if.end65, !dbg !209

if.else51:                                        ; preds = %if.end40
  %77 = load double, double* %a, align 8, !dbg !210
  %78 = load double, double* %a, align 8, !dbg !212
  %add52 = fadd double %77, %78, !dbg !213
  store double %add52, double* %a, align 8, !dbg !214
  store double 0.000000e+00, double* %y1, align 8, !dbg !215
  %79 = load i32, i32* %hb, align 4, !dbg !216
  %80 = bitcast double* %y1 to i32*, !dbg !217
  store i32 %79, i32* %80, align 8, !dbg !218
  %81 = load double, double* %b, align 8, !dbg !219
  %82 = load double, double* %y1, align 8, !dbg !220
  %sub53 = fsub double %81, %82, !dbg !221
  store double %sub53, double* %y2, align 8, !dbg !222
  store double 0.000000e+00, double* %t1, align 8, !dbg !223
  %83 = load i32, i32* %ha, align 4, !dbg !224
  %add54 = add nsw i32 %83, 1048576, !dbg !225
  %84 = bitcast double* %t1 to i32*, !dbg !226
  store i32 %add54, i32* %84, align 8, !dbg !227
  %85 = load double, double* %a, align 8, !dbg !228
  %86 = load double, double* %t1, align 8, !dbg !229
  %sub55 = fsub double %85, %86, !dbg !230
  store double %sub55, double* %t2, align 8, !dbg !231
  %87 = load double, double* %t1, align 8, !dbg !232
  %88 = load double, double* %y1, align 8, !dbg !233
  %mul56 = fmul double %87, %88, !dbg !234
  %89 = load double, double* %w, align 8, !dbg !235
  %90 = load double, double* %w, align 8, !dbg !236
  %fneg57 = fneg double %90, !dbg !237
  %mul58 = fmul double %89, %fneg57, !dbg !238
  %91 = load double, double* %t1, align 8, !dbg !239
  %92 = load double, double* %y2, align 8, !dbg !240
  %mul59 = fmul double %91, %92, !dbg !241
  %93 = load double, double* %t2, align 8, !dbg !242
  %94 = load double, double* %b, align 8, !dbg !243
  %mul60 = fmul double %93, %94, !dbg !244
  %add61 = fadd double %mul59, %mul60, !dbg !245
  %sub62 = fsub double %mul58, %add61, !dbg !246
  %sub63 = fsub double %mul56, %sub62, !dbg !247
  %call64 = call double @sqrt(double %sub63) #4, !dbg !248
  store double %call64, double* %w, align 8, !dbg !249
  br label %if.end65

if.end65:                                         ; preds = %if.else51, %if.then43
  %95 = load i32, i32* %k, align 4, !dbg !250
  %cmp66 = icmp ne i32 %95, 0, !dbg !252
  br i1 %cmp66, label %if.then67, label %if.else70, !dbg !253

if.then67:                                        ; preds = %if.end65
  store double 1.000000e+00, double* %t1, align 8, !dbg !254
  %96 = load i32, i32* %k, align 4, !dbg !256
  %shl = shl i32 %96, 20, !dbg !257
  %97 = bitcast double* %t1 to i32*, !dbg !258
  %98 = load i32, i32* %97, align 8, !dbg !259
  %add68 = add nsw i32 %98, %shl, !dbg !259
  store i32 %add68, i32* %97, align 8, !dbg !259
  %99 = load double, double* %t1, align 8, !dbg !260
  %100 = load double, double* %w, align 8, !dbg !261
  %mul69 = fmul double %99, %100, !dbg !262
  store double %mul69, double* %retval, align 8, !dbg !263
  br label %return, !dbg !263

if.else70:                                        ; preds = %if.end65
  %101 = load double, double* %w, align 8, !dbg !264
  store double %101, double* %retval, align 8, !dbg !265
  br label %return, !dbg !265

return:                                           ; preds = %if.else70, %if.then67, %if.then31, %if.end18, %if.then3
  %102 = load double, double* %retval, align 8, !dbg !266
  ret double %102, !dbg !266
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !267 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = bitcast double* %a0 to i8*, !dbg !272
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !273
  call void @llvm.dbg.declare(metadata double* %a1, metadata !274, metadata !DIExpression()), !dbg !275
  %1 = bitcast double* %a1 to i8*, !dbg !276
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !277
  call void @llvm.dbg.declare(metadata double* %r, metadata !278, metadata !DIExpression()), !dbg !279
  %2 = load double, double* %a0, align 8, !dbg !280
  %3 = load double, double* %a1, align 8, !dbg !281
  %call = call double @__ieee754_hypot(double %2, double %3), !dbg !282
  store double %call, double* %r, align 8, !dbg !279
  ret i32 0, !dbg !283
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "e_hypot.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!12 = distinct !DISubprogram(name: "__ieee754_hypot", scope: !13, file: !13, line: 49, type: !14, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DIFile(filename: "./e_hypot.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !16}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !13, line: 49, type: !16)
!18 = !DILocation(line: 49, column: 32, scope: !12)
!19 = !DILocalVariable(name: "y", arg: 2, scope: !12, file: !13, line: 49, type: !16)
!20 = !DILocation(line: 49, column: 42, scope: !12)
!21 = !DILocalVariable(name: "a", scope: !12, file: !13, line: 55, type: !16)
!22 = !DILocation(line: 55, column: 9, scope: !12)
!23 = !DILocation(line: 55, column: 11, scope: !12)
!24 = !DILocalVariable(name: "b", scope: !12, file: !13, line: 55, type: !16)
!25 = !DILocation(line: 55, column: 13, scope: !12)
!26 = !DILocation(line: 55, column: 15, scope: !12)
!27 = !DILocalVariable(name: "t1", scope: !12, file: !13, line: 55, type: !16)
!28 = !DILocation(line: 55, column: 17, scope: !12)
!29 = !DILocalVariable(name: "t2", scope: !12, file: !13, line: 55, type: !16)
!30 = !DILocation(line: 55, column: 20, scope: !12)
!31 = !DILocalVariable(name: "y1", scope: !12, file: !13, line: 55, type: !16)
!32 = !DILocation(line: 55, column: 23, scope: !12)
!33 = !DILocalVariable(name: "y2", scope: !12, file: !13, line: 55, type: !16)
!34 = !DILocation(line: 55, column: 26, scope: !12)
!35 = !DILocalVariable(name: "w", scope: !12, file: !13, line: 55, type: !16)
!36 = !DILocation(line: 55, column: 29, scope: !12)
!37 = !DILocalVariable(name: "j", scope: !12, file: !13, line: 56, type: !5)
!38 = !DILocation(line: 56, column: 6, scope: !12)
!39 = !DILocalVariable(name: "k", scope: !12, file: !13, line: 56, type: !5)
!40 = !DILocation(line: 56, column: 8, scope: !12)
!41 = !DILocalVariable(name: "ha", scope: !12, file: !13, line: 56, type: !5)
!42 = !DILocation(line: 56, column: 10, scope: !12)
!43 = !DILocalVariable(name: "hb", scope: !12, file: !13, line: 56, type: !5)
!44 = !DILocation(line: 56, column: 13, scope: !12)
!45 = !DILocation(line: 58, column: 7, scope: !12)
!46 = !DILocation(line: 58, column: 14, scope: !12)
!47 = !DILocation(line: 58, column: 5, scope: !12)
!48 = !DILocation(line: 59, column: 7, scope: !12)
!49 = !DILocation(line: 59, column: 14, scope: !12)
!50 = !DILocation(line: 59, column: 5, scope: !12)
!51 = !DILocation(line: 60, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !12, file: !13, line: 60, column: 5)
!53 = !DILocation(line: 60, column: 10, scope: !52)
!54 = !DILocation(line: 60, column: 8, scope: !52)
!55 = !DILocation(line: 60, column: 5, scope: !12)
!56 = !DILocation(line: 60, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !13, line: 60, column: 14)
!58 = !DILocation(line: 60, column: 16, scope: !57)
!59 = !DILocation(line: 60, column: 21, scope: !57)
!60 = !DILocation(line: 60, column: 20, scope: !57)
!61 = !DILocation(line: 60, column: 25, scope: !57)
!62 = !DILocation(line: 60, column: 24, scope: !57)
!63 = !DILocation(line: 60, column: 32, scope: !57)
!64 = !DILocation(line: 60, column: 31, scope: !57)
!65 = !DILocation(line: 60, column: 38, scope: !57)
!66 = !DILocation(line: 60, column: 37, scope: !57)
!67 = !DILocation(line: 60, column: 40, scope: !57)
!68 = !DILocation(line: 60, column: 50, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !13, line: 60, column: 47)
!70 = !DILocation(line: 60, column: 49, scope: !69)
!71 = !DILocation(line: 60, column: 54, scope: !69)
!72 = !DILocation(line: 60, column: 53, scope: !69)
!73 = !DILocation(line: 61, column: 12, scope: !12)
!74 = !DILocation(line: 61, column: 2, scope: !12)
!75 = !DILocation(line: 61, column: 10, scope: !12)
!76 = !DILocation(line: 62, column: 12, scope: !12)
!77 = !DILocation(line: 62, column: 2, scope: !12)
!78 = !DILocation(line: 62, column: 10, scope: !12)
!79 = !DILocation(line: 63, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !12, file: !13, line: 63, column: 5)
!81 = !DILocation(line: 63, column: 9, scope: !80)
!82 = !DILocation(line: 63, column: 8, scope: !80)
!83 = !DILocation(line: 63, column: 12, scope: !80)
!84 = !DILocation(line: 63, column: 5, scope: !12)
!85 = !DILocation(line: 63, column: 32, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !13, line: 63, column: 24)
!87 = !DILocation(line: 63, column: 34, scope: !86)
!88 = !DILocation(line: 63, column: 33, scope: !86)
!89 = !DILocation(line: 63, column: 25, scope: !86)
!90 = !DILocation(line: 64, column: 3, scope: !12)
!91 = !DILocation(line: 65, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !12, file: !13, line: 65, column: 5)
!93 = !DILocation(line: 65, column: 8, scope: !92)
!94 = !DILocation(line: 65, column: 5, scope: !12)
!95 = !DILocation(line: 66, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !13, line: 66, column: 8)
!97 = distinct !DILexicalBlock(scope: !92, file: !13, line: 65, column: 22)
!98 = !DILocation(line: 66, column: 11, scope: !96)
!99 = !DILocation(line: 66, column: 8, scope: !97)
!100 = !DILocation(line: 67, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !13, line: 66, column: 26)
!102 = !DILocation(line: 67, column: 15, scope: !101)
!103 = !DILocation(line: 67, column: 14, scope: !101)
!104 = !DILocation(line: 67, column: 11, scope: !101)
!105 = !DILocation(line: 68, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !13, line: 68, column: 12)
!107 = !DILocation(line: 68, column: 16, scope: !106)
!108 = !DILocation(line: 68, column: 26, scope: !106)
!109 = !DILocation(line: 68, column: 25, scope: !106)
!110 = !DILocation(line: 68, column: 34, scope: !106)
!111 = !DILocation(line: 68, column: 12, scope: !101)
!112 = !DILocation(line: 68, column: 43, scope: !106)
!113 = !DILocation(line: 68, column: 41, scope: !106)
!114 = !DILocation(line: 68, column: 39, scope: !106)
!115 = !DILocation(line: 69, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !101, file: !13, line: 69, column: 12)
!117 = !DILocation(line: 69, column: 16, scope: !116)
!118 = !DILocation(line: 69, column: 29, scope: !116)
!119 = !DILocation(line: 69, column: 28, scope: !116)
!120 = !DILocation(line: 69, column: 37, scope: !116)
!121 = !DILocation(line: 69, column: 12, scope: !101)
!122 = !DILocation(line: 69, column: 46, scope: !116)
!123 = !DILocation(line: 69, column: 44, scope: !116)
!124 = !DILocation(line: 69, column: 42, scope: !116)
!125 = !DILocation(line: 70, column: 16, scope: !101)
!126 = !DILocation(line: 70, column: 9, scope: !101)
!127 = !DILocation(line: 73, column: 8, scope: !97)
!128 = !DILocation(line: 73, column: 26, scope: !97)
!129 = !DILocation(line: 73, column: 43, scope: !97)
!130 = !DILocation(line: 74, column: 15, scope: !97)
!131 = !DILocation(line: 74, column: 5, scope: !97)
!132 = !DILocation(line: 74, column: 13, scope: !97)
!133 = !DILocation(line: 75, column: 15, scope: !97)
!134 = !DILocation(line: 75, column: 5, scope: !97)
!135 = !DILocation(line: 75, column: 13, scope: !97)
!136 = !DILocation(line: 76, column: 2, scope: !97)
!137 = !DILocation(line: 77, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !12, file: !13, line: 77, column: 5)
!139 = !DILocation(line: 77, column: 8, scope: !138)
!140 = !DILocation(line: 77, column: 5, scope: !12)
!141 = !DILocation(line: 78, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !13, line: 78, column: 9)
!143 = distinct !DILexicalBlock(scope: !138, file: !13, line: 77, column: 22)
!144 = !DILocation(line: 78, column: 12, scope: !142)
!145 = !DILocation(line: 78, column: 9, scope: !143)
!146 = !DILocation(line: 79, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !13, line: 79, column: 6)
!148 = distinct !DILexicalBlock(scope: !142, file: !13, line: 78, column: 27)
!149 = !DILocation(line: 79, column: 11, scope: !147)
!150 = !DILocation(line: 79, column: 9, scope: !147)
!151 = !DILocation(line: 79, column: 20, scope: !147)
!152 = !DILocation(line: 79, column: 6, scope: !148)
!153 = !DILocation(line: 79, column: 32, scope: !147)
!154 = !DILocation(line: 79, column: 25, scope: !147)
!155 = !DILocation(line: 80, column: 5, scope: !148)
!156 = !DILocation(line: 81, column: 3, scope: !148)
!157 = !DILocation(line: 81, column: 12, scope: !148)
!158 = !DILocation(line: 82, column: 8, scope: !148)
!159 = !DILocation(line: 82, column: 5, scope: !148)
!160 = !DILocation(line: 83, column: 8, scope: !148)
!161 = !DILocation(line: 83, column: 5, scope: !148)
!162 = !DILocation(line: 84, column: 5, scope: !148)
!163 = !DILocation(line: 85, column: 6, scope: !148)
!164 = !DILocation(line: 86, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !142, file: !13, line: 85, column: 13)
!166 = !DILocation(line: 87, column: 6, scope: !165)
!167 = !DILocation(line: 88, column: 5, scope: !165)
!168 = !DILocation(line: 89, column: 16, scope: !165)
!169 = !DILocation(line: 89, column: 6, scope: !165)
!170 = !DILocation(line: 89, column: 14, scope: !165)
!171 = !DILocation(line: 90, column: 16, scope: !165)
!172 = !DILocation(line: 90, column: 6, scope: !165)
!173 = !DILocation(line: 90, column: 14, scope: !165)
!174 = !DILocation(line: 92, column: 2, scope: !143)
!175 = !DILocation(line: 94, column: 6, scope: !12)
!176 = !DILocation(line: 94, column: 8, scope: !12)
!177 = !DILocation(line: 94, column: 7, scope: !12)
!178 = !DILocation(line: 94, column: 4, scope: !12)
!179 = !DILocation(line: 95, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !12, file: !13, line: 95, column: 6)
!181 = !DILocation(line: 95, column: 8, scope: !180)
!182 = !DILocation(line: 95, column: 7, scope: !180)
!183 = !DILocation(line: 95, column: 6, scope: !12)
!184 = !DILocation(line: 96, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !13, line: 95, column: 11)
!186 = !DILocation(line: 97, column: 17, scope: !185)
!187 = !DILocation(line: 97, column: 6, scope: !185)
!188 = !DILocation(line: 97, column: 15, scope: !185)
!189 = !DILocation(line: 98, column: 11, scope: !185)
!190 = !DILocation(line: 98, column: 13, scope: !185)
!191 = !DILocation(line: 98, column: 12, scope: !185)
!192 = !DILocation(line: 98, column: 9, scope: !185)
!193 = !DILocation(line: 99, column: 16, scope: !185)
!194 = !DILocation(line: 99, column: 19, scope: !185)
!195 = !DILocation(line: 99, column: 18, scope: !185)
!196 = !DILocation(line: 99, column: 23, scope: !185)
!197 = !DILocation(line: 99, column: 27, scope: !185)
!198 = !DILocation(line: 99, column: 26, scope: !185)
!199 = !DILocation(line: 99, column: 24, scope: !185)
!200 = !DILocation(line: 99, column: 30, scope: !185)
!201 = !DILocation(line: 99, column: 34, scope: !185)
!202 = !DILocation(line: 99, column: 36, scope: !185)
!203 = !DILocation(line: 99, column: 35, scope: !185)
!204 = !DILocation(line: 99, column: 32, scope: !185)
!205 = !DILocation(line: 99, column: 29, scope: !185)
!206 = !DILocation(line: 99, column: 21, scope: !185)
!207 = !DILocation(line: 99, column: 11, scope: !185)
!208 = !DILocation(line: 99, column: 9, scope: !185)
!209 = !DILocation(line: 100, column: 2, scope: !185)
!210 = !DILocation(line: 101, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !180, file: !13, line: 100, column: 9)
!212 = !DILocation(line: 101, column: 13, scope: !211)
!213 = !DILocation(line: 101, column: 12, scope: !211)
!214 = !DILocation(line: 101, column: 9, scope: !211)
!215 = !DILocation(line: 102, column: 9, scope: !211)
!216 = !DILocation(line: 103, column: 17, scope: !211)
!217 = !DILocation(line: 103, column: 6, scope: !211)
!218 = !DILocation(line: 103, column: 15, scope: !211)
!219 = !DILocation(line: 104, column: 11, scope: !211)
!220 = !DILocation(line: 104, column: 15, scope: !211)
!221 = !DILocation(line: 104, column: 13, scope: !211)
!222 = !DILocation(line: 104, column: 9, scope: !211)
!223 = !DILocation(line: 105, column: 9, scope: !211)
!224 = !DILocation(line: 106, column: 17, scope: !211)
!225 = !DILocation(line: 106, column: 19, scope: !211)
!226 = !DILocation(line: 106, column: 6, scope: !211)
!227 = !DILocation(line: 106, column: 15, scope: !211)
!228 = !DILocation(line: 107, column: 11, scope: !211)
!229 = !DILocation(line: 107, column: 15, scope: !211)
!230 = !DILocation(line: 107, column: 13, scope: !211)
!231 = !DILocation(line: 107, column: 9, scope: !211)
!232 = !DILocation(line: 108, column: 16, scope: !211)
!233 = !DILocation(line: 108, column: 19, scope: !211)
!234 = !DILocation(line: 108, column: 18, scope: !211)
!235 = !DILocation(line: 108, column: 23, scope: !211)
!236 = !DILocation(line: 108, column: 27, scope: !211)
!237 = !DILocation(line: 108, column: 26, scope: !211)
!238 = !DILocation(line: 108, column: 24, scope: !211)
!239 = !DILocation(line: 108, column: 31, scope: !211)
!240 = !DILocation(line: 108, column: 34, scope: !211)
!241 = !DILocation(line: 108, column: 33, scope: !211)
!242 = !DILocation(line: 108, column: 37, scope: !211)
!243 = !DILocation(line: 108, column: 40, scope: !211)
!244 = !DILocation(line: 108, column: 39, scope: !211)
!245 = !DILocation(line: 108, column: 36, scope: !211)
!246 = !DILocation(line: 108, column: 29, scope: !211)
!247 = !DILocation(line: 108, column: 21, scope: !211)
!248 = !DILocation(line: 108, column: 11, scope: !211)
!249 = !DILocation(line: 108, column: 9, scope: !211)
!250 = !DILocation(line: 110, column: 5, scope: !251)
!251 = distinct !DILexicalBlock(scope: !12, file: !13, line: 110, column: 5)
!252 = !DILocation(line: 110, column: 6, scope: !251)
!253 = !DILocation(line: 110, column: 5, scope: !12)
!254 = !DILocation(line: 111, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !13, line: 110, column: 11)
!256 = !DILocation(line: 112, column: 19, scope: !255)
!257 = !DILocation(line: 112, column: 20, scope: !255)
!258 = !DILocation(line: 112, column: 6, scope: !255)
!259 = !DILocation(line: 112, column: 15, scope: !255)
!260 = !DILocation(line: 113, column: 13, scope: !255)
!261 = !DILocation(line: 113, column: 16, scope: !255)
!262 = !DILocation(line: 113, column: 15, scope: !255)
!263 = !DILocation(line: 113, column: 6, scope: !255)
!264 = !DILocation(line: 114, column: 16, scope: !251)
!265 = !DILocation(line: 114, column: 9, scope: !251)
!266 = !DILocation(line: 115, column: 1, scope: !12)
!267 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 119, type: !268, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!268 = !DISubroutineType(types: !269)
!269 = !{!5}
!270 = !DILocalVariable(name: "a0", scope: !267, file: !13, line: 120, type: !16)
!271 = !DILocation(line: 120, column: 12, scope: !267)
!272 = !DILocation(line: 121, column: 24, scope: !267)
!273 = !DILocation(line: 121, column: 5, scope: !267)
!274 = !DILocalVariable(name: "a1", scope: !267, file: !13, line: 122, type: !16)
!275 = !DILocation(line: 122, column: 12, scope: !267)
!276 = !DILocation(line: 123, column: 24, scope: !267)
!277 = !DILocation(line: 123, column: 5, scope: !267)
!278 = !DILocalVariable(name: "r", scope: !267, file: !13, line: 125, type: !16)
!279 = !DILocation(line: 125, column: 12, scope: !267)
!280 = !DILocation(line: 125, column: 32, scope: !267)
!281 = !DILocation(line: 125, column: 36, scope: !267)
!282 = !DILocation(line: 125, column: 16, scope: !267)
!283 = !DILocation(line: 126, column: 5, scope: !267)
