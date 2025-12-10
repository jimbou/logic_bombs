; ModuleID = 's_atan.bc'
source_filename = "./s_atan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atanhi = internal constant [4 x double] [double 0x3FDDAC670561BB4F, double 0x3FE921FB54442D18, double 0x3FEF730BD281F69B, double 0x3FF921FB54442D18], align 16, !dbg !0
@atanlo = internal constant [4 x double] [double 0x3C7A2B7F222F65E2, double 0x3C81A62633145C07, double 0x3C7007887AF0CBBD, double 0x3C91A62633145C07], align 16, !dbg !16
@aT = internal constant [11 x double] [double 0x3FD555555555550D, double 0xBFC999999998EBC4, double 0x3FC24924920083FF, double 0xBFBC71C6FE231671, double 0x3FB745CDC54C206E, double 0xBFB3B0F2AF749A6D, double 0x3FB10D66A0D03D51, double 0xBFADDE2D52DEFD9A, double 0x3FA97B4B24760DEB, double 0xBFA2B4442C6A6C2F, double 0x3F90AD3AE322DA11], align 16, !dbg !21
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atan(double %x) #0 !dbg !32 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %w = alloca double, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  %z = alloca double, align 8
  %ix = alloca i32, align 4
  %hx = alloca i32, align 4
  %id = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata double* %w, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata double* %s1, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %s2, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata double* %z, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %id, metadata !49, metadata !DIExpression()), !dbg !50
  %0 = bitcast double* %x.addr to i32*, !dbg !51
  %1 = load i32, i32* %0, align 8, !dbg !51
  store i32 %1, i32* %hx, align 4, !dbg !52
  %2 = load i32, i32* %hx, align 4, !dbg !53
  %and = and i32 %2, 2147483647, !dbg !54
  store i32 %and, i32* %ix, align 4, !dbg !55
  %3 = load i32, i32* %ix, align 4, !dbg !56
  %cmp = icmp sge i32 %3, 1141899264, !dbg !58
  br i1 %cmp, label %if.then, label %if.end8, !dbg !59

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ix, align 4, !dbg !60
  %cmp1 = icmp sgt i32 %4, 2146435072, !dbg !63
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !64

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* %ix, align 4, !dbg !65
  %cmp2 = icmp eq i32 %5, 2146435072, !dbg !66
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !67

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = bitcast double* %x.addr to i32*, !dbg !68
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 1, !dbg !68
  %7 = load i32, i32* %add.ptr, align 4, !dbg !68
  %cmp3 = icmp ne i32 %7, 0, !dbg !69
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !70

if.then4:                                         ; preds = %land.lhs.true, %if.then
  %8 = load double, double* %x.addr, align 8, !dbg !71
  %9 = load double, double* %x.addr, align 8, !dbg !72
  %add = fadd double %8, %9, !dbg !73
  store double %add, double* %retval, align 8, !dbg !74
  br label %return, !dbg !74

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i32, i32* %hx, align 4, !dbg !75
  %cmp5 = icmp sgt i32 %10, 0, !dbg !77
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !78

if.then6:                                         ; preds = %if.end
  %11 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @atanhi, i64 0, i64 3), align 8, !dbg !79
  %12 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @atanlo, i64 0, i64 3), align 8, !dbg !80
  %add7 = fadd double %11, %12, !dbg !81
  store double %add7, double* %retval, align 8, !dbg !82
  br label %return, !dbg !82

if.else:                                          ; preds = %if.end
  %13 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @atanhi, i64 0, i64 3), align 8, !dbg !83
  %fneg = fneg double %13, !dbg !84
  %14 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @atanlo, i64 0, i64 3), align 8, !dbg !85
  %sub = fsub double %fneg, %14, !dbg !86
  store double %sub, double* %retval, align 8, !dbg !87
  br label %return, !dbg !87

if.end8:                                          ; preds = %entry
  %15 = load i32, i32* %ix, align 4, !dbg !88
  %cmp9 = icmp slt i32 %15, 1071382528, !dbg !90
  br i1 %cmp9, label %if.then10, label %if.else18, !dbg !91

if.then10:                                        ; preds = %if.end8
  %16 = load i32, i32* %ix, align 4, !dbg !92
  %cmp11 = icmp slt i32 %16, 1042284544, !dbg !95
  br i1 %cmp11, label %if.then12, label %if.end17, !dbg !96

if.then12:                                        ; preds = %if.then10
  %17 = load double, double* %x.addr, align 8, !dbg !97
  %add13 = fadd double 1.000000e+300, %17, !dbg !100
  %cmp14 = fcmp ogt double %add13, 1.000000e+00, !dbg !101
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !102

if.then15:                                        ; preds = %if.then12
  %18 = load double, double* %x.addr, align 8, !dbg !103
  store double %18, double* %retval, align 8, !dbg !104
  br label %return, !dbg !104

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !105

if.end17:                                         ; preds = %if.end16, %if.then10
  store i32 -1, i32* %id, align 4, !dbg !106
  br label %if.end41, !dbg !107

if.else18:                                        ; preds = %if.end8
  %19 = load double, double* %x.addr, align 8, !dbg !108
  %20 = call double @llvm.fabs.f64(double %19), !dbg !110
  store double %20, double* %x.addr, align 8, !dbg !111
  %21 = load i32, i32* %ix, align 4, !dbg !112
  %cmp19 = icmp slt i32 %21, 1072889856, !dbg !114
  br i1 %cmp19, label %if.then20, label %if.else30, !dbg !115

if.then20:                                        ; preds = %if.else18
  %22 = load i32, i32* %ix, align 4, !dbg !116
  %cmp21 = icmp slt i32 %22, 1072037888, !dbg !119
  br i1 %cmp21, label %if.then22, label %if.else25, !dbg !120

if.then22:                                        ; preds = %if.then20
  store i32 0, i32* %id, align 4, !dbg !121
  %23 = load double, double* %x.addr, align 8, !dbg !123
  %mul = fmul double 2.000000e+00, %23, !dbg !124
  %sub23 = fsub double %mul, 1.000000e+00, !dbg !125
  %24 = load double, double* %x.addr, align 8, !dbg !126
  %add24 = fadd double 2.000000e+00, %24, !dbg !127
  %div = fdiv double %sub23, %add24, !dbg !128
  store double %div, double* %x.addr, align 8, !dbg !129
  br label %if.end29, !dbg !130

if.else25:                                        ; preds = %if.then20
  store i32 1, i32* %id, align 4, !dbg !131
  %25 = load double, double* %x.addr, align 8, !dbg !133
  %sub26 = fsub double %25, 1.000000e+00, !dbg !134
  %26 = load double, double* %x.addr, align 8, !dbg !135
  %add27 = fadd double %26, 1.000000e+00, !dbg !136
  %div28 = fdiv double %sub26, %add27, !dbg !137
  store double %div28, double* %x.addr, align 8, !dbg !138
  br label %if.end29

if.end29:                                         ; preds = %if.else25, %if.then22
  br label %if.end40, !dbg !139

if.else30:                                        ; preds = %if.else18
  %27 = load i32, i32* %ix, align 4, !dbg !140
  %cmp31 = icmp slt i32 %27, 1073971200, !dbg !143
  br i1 %cmp31, label %if.then32, label %if.else37, !dbg !144

if.then32:                                        ; preds = %if.else30
  store i32 2, i32* %id, align 4, !dbg !145
  %28 = load double, double* %x.addr, align 8, !dbg !147
  %sub33 = fsub double %28, 1.500000e+00, !dbg !148
  %29 = load double, double* %x.addr, align 8, !dbg !149
  %mul34 = fmul double 1.500000e+00, %29, !dbg !150
  %add35 = fadd double 1.000000e+00, %mul34, !dbg !151
  %div36 = fdiv double %sub33, %add35, !dbg !152
  store double %div36, double* %x.addr, align 8, !dbg !153
  br label %if.end39, !dbg !154

if.else37:                                        ; preds = %if.else30
  store i32 3, i32* %id, align 4, !dbg !155
  %30 = load double, double* %x.addr, align 8, !dbg !157
  %div38 = fdiv double -1.000000e+00, %30, !dbg !158
  store double %div38, double* %x.addr, align 8, !dbg !159
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end29
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end17
  %31 = load double, double* %x.addr, align 8, !dbg !160
  %32 = load double, double* %x.addr, align 8, !dbg !161
  %mul42 = fmul double %31, %32, !dbg !162
  store double %mul42, double* %z, align 8, !dbg !163
  %33 = load double, double* %z, align 8, !dbg !164
  %34 = load double, double* %z, align 8, !dbg !165
  %mul43 = fmul double %33, %34, !dbg !166
  store double %mul43, double* %w, align 8, !dbg !167
  %35 = load double, double* %z, align 8, !dbg !168
  %36 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 0), align 16, !dbg !169
  %37 = load double, double* %w, align 8, !dbg !170
  %38 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 2), align 16, !dbg !171
  %39 = load double, double* %w, align 8, !dbg !172
  %40 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 4), align 16, !dbg !173
  %41 = load double, double* %w, align 8, !dbg !174
  %42 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 6), align 16, !dbg !175
  %43 = load double, double* %w, align 8, !dbg !176
  %44 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 8), align 16, !dbg !177
  %45 = load double, double* %w, align 8, !dbg !178
  %46 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 10), align 16, !dbg !179
  %mul44 = fmul double %45, %46, !dbg !180
  %add45 = fadd double %44, %mul44, !dbg !181
  %mul46 = fmul double %43, %add45, !dbg !182
  %add47 = fadd double %42, %mul46, !dbg !183
  %mul48 = fmul double %41, %add47, !dbg !184
  %add49 = fadd double %40, %mul48, !dbg !185
  %mul50 = fmul double %39, %add49, !dbg !186
  %add51 = fadd double %38, %mul50, !dbg !187
  %mul52 = fmul double %37, %add51, !dbg !188
  %add53 = fadd double %36, %mul52, !dbg !189
  %mul54 = fmul double %35, %add53, !dbg !190
  store double %mul54, double* %s1, align 8, !dbg !191
  %47 = load double, double* %w, align 8, !dbg !192
  %48 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 1), align 8, !dbg !193
  %49 = load double, double* %w, align 8, !dbg !194
  %50 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 3), align 8, !dbg !195
  %51 = load double, double* %w, align 8, !dbg !196
  %52 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 5), align 8, !dbg !197
  %53 = load double, double* %w, align 8, !dbg !198
  %54 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 7), align 8, !dbg !199
  %55 = load double, double* %w, align 8, !dbg !200
  %56 = load double, double* getelementptr inbounds ([11 x double], [11 x double]* @aT, i64 0, i64 9), align 8, !dbg !201
  %mul55 = fmul double %55, %56, !dbg !202
  %add56 = fadd double %54, %mul55, !dbg !203
  %mul57 = fmul double %53, %add56, !dbg !204
  %add58 = fadd double %52, %mul57, !dbg !205
  %mul59 = fmul double %51, %add58, !dbg !206
  %add60 = fadd double %50, %mul59, !dbg !207
  %mul61 = fmul double %49, %add60, !dbg !208
  %add62 = fadd double %48, %mul61, !dbg !209
  %mul63 = fmul double %47, %add62, !dbg !210
  store double %mul63, double* %s2, align 8, !dbg !211
  %57 = load i32, i32* %id, align 4, !dbg !212
  %cmp64 = icmp slt i32 %57, 0, !dbg !214
  br i1 %cmp64, label %if.then65, label %if.else69, !dbg !215

if.then65:                                        ; preds = %if.end41
  %58 = load double, double* %x.addr, align 8, !dbg !216
  %59 = load double, double* %x.addr, align 8, !dbg !217
  %60 = load double, double* %s1, align 8, !dbg !218
  %61 = load double, double* %s2, align 8, !dbg !219
  %add66 = fadd double %60, %61, !dbg !220
  %mul67 = fmul double %59, %add66, !dbg !221
  %sub68 = fsub double %58, %mul67, !dbg !222
  store double %sub68, double* %retval, align 8, !dbg !223
  br label %return, !dbg !223

if.else69:                                        ; preds = %if.end41
  %62 = load i32, i32* %id, align 4, !dbg !224
  %idxprom = sext i32 %62 to i64, !dbg !226
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* @atanhi, i64 0, i64 %idxprom, !dbg !226
  %63 = load double, double* %arrayidx, align 8, !dbg !226
  %64 = load double, double* %x.addr, align 8, !dbg !227
  %65 = load double, double* %s1, align 8, !dbg !228
  %66 = load double, double* %s2, align 8, !dbg !229
  %add70 = fadd double %65, %66, !dbg !230
  %mul71 = fmul double %64, %add70, !dbg !231
  %67 = load i32, i32* %id, align 4, !dbg !232
  %idxprom72 = sext i32 %67 to i64, !dbg !233
  %arrayidx73 = getelementptr inbounds [4 x double], [4 x double]* @atanlo, i64 0, i64 %idxprom72, !dbg !233
  %68 = load double, double* %arrayidx73, align 8, !dbg !233
  %sub74 = fsub double %mul71, %68, !dbg !234
  %69 = load double, double* %x.addr, align 8, !dbg !235
  %sub75 = fsub double %sub74, %69, !dbg !236
  %sub76 = fsub double %63, %sub75, !dbg !237
  store double %sub76, double* %z, align 8, !dbg !238
  %70 = load i32, i32* %hx, align 4, !dbg !239
  %cmp77 = icmp slt i32 %70, 0, !dbg !240
  br i1 %cmp77, label %cond.true, label %cond.false, !dbg !241

cond.true:                                        ; preds = %if.else69
  %71 = load double, double* %z, align 8, !dbg !242
  %fneg78 = fneg double %71, !dbg !243
  br label %cond.end, !dbg !241

cond.false:                                       ; preds = %if.else69
  %72 = load double, double* %z, align 8, !dbg !244
  br label %cond.end, !dbg !241

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg78, %cond.true ], [ %72, %cond.false ], !dbg !241
  store double %cond, double* %retval, align 8, !dbg !245
  br label %return, !dbg !245

return:                                           ; preds = %cond.end, %if.then65, %if.then15, %if.else, %if.then6, %if.then4
  %73 = load double, double* %retval, align 8, !dbg !246
  ret double %73, !dbg !246
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !247 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = bitcast double* %a0 to i8*, !dbg !252
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !253
  call void @llvm.dbg.declare(metadata double* %r, metadata !254, metadata !DIExpression()), !dbg !255
  %1 = load double, double* %a0, align 8, !dbg !256
  %call = call double @atan(double %1) #3, !dbg !257
  store double %call, double* %r, align 8, !dbg !255
  ret i32 0, !dbg !258
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "atanhi", scope: !2, file: !11, line: 38, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "s_atan.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !0, !16, !21}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !11, line: 83, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./s_atan.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !11, line: 82, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "atanlo", scope: !2, file: !11, line: 49, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "aT", scope: !2, file: !11, line: 60, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 704, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 11)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!32 = distinct !DISubprogram(name: "atan", scope: !11, file: !11, line: 86, type: !33, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!33 = !DISubroutineType(types: !34)
!34 = !{!13, !13}
!35 = !DILocalVariable(name: "x", arg: 1, scope: !32, file: !11, line: 86, type: !13)
!36 = !DILocation(line: 86, column: 21, scope: !32)
!37 = !DILocalVariable(name: "w", scope: !32, file: !11, line: 92, type: !13)
!38 = !DILocation(line: 92, column: 9, scope: !32)
!39 = !DILocalVariable(name: "s1", scope: !32, file: !11, line: 92, type: !13)
!40 = !DILocation(line: 92, column: 11, scope: !32)
!41 = !DILocalVariable(name: "s2", scope: !32, file: !11, line: 92, type: !13)
!42 = !DILocation(line: 92, column: 14, scope: !32)
!43 = !DILocalVariable(name: "z", scope: !32, file: !11, line: 92, type: !13)
!44 = !DILocation(line: 92, column: 17, scope: !32)
!45 = !DILocalVariable(name: "ix", scope: !32, file: !11, line: 93, type: !7)
!46 = !DILocation(line: 93, column: 6, scope: !32)
!47 = !DILocalVariable(name: "hx", scope: !32, file: !11, line: 93, type: !7)
!48 = !DILocation(line: 93, column: 9, scope: !32)
!49 = !DILocalVariable(name: "id", scope: !32, file: !11, line: 93, type: !7)
!50 = !DILocation(line: 93, column: 12, scope: !32)
!51 = !DILocation(line: 95, column: 7, scope: !32)
!52 = !DILocation(line: 95, column: 5, scope: !32)
!53 = !DILocation(line: 96, column: 7, scope: !32)
!54 = !DILocation(line: 96, column: 9, scope: !32)
!55 = !DILocation(line: 96, column: 5, scope: !32)
!56 = !DILocation(line: 97, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !32, file: !11, line: 97, column: 5)
!58 = !DILocation(line: 97, column: 7, scope: !57)
!59 = !DILocation(line: 97, column: 5, scope: !32)
!60 = !DILocation(line: 98, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !11, line: 98, column: 9)
!62 = distinct !DILexicalBlock(scope: !57, file: !11, line: 97, column: 21)
!63 = !DILocation(line: 98, column: 11, scope: !61)
!64 = !DILocation(line: 98, column: 22, scope: !61)
!65 = !DILocation(line: 99, column: 4, scope: !61)
!66 = !DILocation(line: 99, column: 6, scope: !61)
!67 = !DILocation(line: 99, column: 18, scope: !61)
!68 = !DILocation(line: 99, column: 21, scope: !61)
!69 = !DILocation(line: 99, column: 28, scope: !61)
!70 = !DILocation(line: 98, column: 9, scope: !62)
!71 = !DILocation(line: 100, column: 10, scope: !61)
!72 = !DILocation(line: 100, column: 12, scope: !61)
!73 = !DILocation(line: 100, column: 11, scope: !61)
!74 = !DILocation(line: 100, column: 3, scope: !61)
!75 = !DILocation(line: 101, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !62, file: !11, line: 101, column: 9)
!77 = !DILocation(line: 101, column: 11, scope: !76)
!78 = !DILocation(line: 101, column: 9, scope: !62)
!79 = !DILocation(line: 101, column: 23, scope: !76)
!80 = !DILocation(line: 101, column: 33, scope: !76)
!81 = !DILocation(line: 101, column: 32, scope: !76)
!82 = !DILocation(line: 101, column: 15, scope: !76)
!83 = !DILocation(line: 102, column: 23, scope: !76)
!84 = !DILocation(line: 102, column: 22, scope: !76)
!85 = !DILocation(line: 102, column: 33, scope: !76)
!86 = !DILocation(line: 102, column: 32, scope: !76)
!87 = !DILocation(line: 102, column: 15, scope: !76)
!88 = !DILocation(line: 103, column: 8, scope: !89)
!89 = distinct !DILexicalBlock(scope: !32, file: !11, line: 103, column: 8)
!90 = !DILocation(line: 103, column: 11, scope: !89)
!91 = !DILocation(line: 103, column: 8, scope: !32)
!92 = !DILocation(line: 104, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !11, line: 104, column: 10)
!94 = distinct !DILexicalBlock(scope: !89, file: !11, line: 103, column: 25)
!95 = !DILocation(line: 104, column: 13, scope: !93)
!96 = !DILocation(line: 104, column: 10, scope: !94)
!97 = !DILocation(line: 105, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !11, line: 105, column: 6)
!99 = distinct !DILexicalBlock(scope: !93, file: !11, line: 104, column: 27)
!100 = !DILocation(line: 105, column: 10, scope: !98)
!101 = !DILocation(line: 105, column: 12, scope: !98)
!102 = !DILocation(line: 105, column: 6, scope: !99)
!103 = !DILocation(line: 105, column: 25, scope: !98)
!104 = !DILocation(line: 105, column: 18, scope: !98)
!105 = !DILocation(line: 106, column: 6, scope: !99)
!106 = !DILocation(line: 107, column: 9, scope: !94)
!107 = !DILocation(line: 108, column: 2, scope: !94)
!108 = !DILocation(line: 109, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !89, file: !11, line: 108, column: 9)
!110 = !DILocation(line: 109, column: 6, scope: !109)
!111 = !DILocation(line: 109, column: 4, scope: !109)
!112 = !DILocation(line: 110, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !11, line: 110, column: 6)
!114 = !DILocation(line: 110, column: 9, scope: !113)
!115 = !DILocation(line: 110, column: 6, scope: !109)
!116 = !DILocation(line: 111, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !11, line: 111, column: 10)
!118 = distinct !DILexicalBlock(scope: !113, file: !11, line: 110, column: 23)
!119 = !DILocation(line: 111, column: 13, scope: !117)
!120 = !DILocation(line: 111, column: 10, scope: !118)
!121 = !DILocation(line: 112, column: 6, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !11, line: 111, column: 27)
!123 = !DILocation(line: 112, column: 20, scope: !122)
!124 = !DILocation(line: 112, column: 19, scope: !122)
!125 = !DILocation(line: 112, column: 21, scope: !122)
!126 = !DILocation(line: 112, column: 32, scope: !122)
!127 = !DILocation(line: 112, column: 31, scope: !122)
!128 = !DILocation(line: 112, column: 26, scope: !122)
!129 = !DILocation(line: 112, column: 13, scope: !122)
!130 = !DILocation(line: 113, column: 6, scope: !122)
!131 = !DILocation(line: 114, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !117, file: !11, line: 113, column: 13)
!133 = !DILocation(line: 114, column: 17, scope: !132)
!134 = !DILocation(line: 114, column: 18, scope: !132)
!135 = !DILocation(line: 114, column: 25, scope: !132)
!136 = !DILocation(line: 114, column: 26, scope: !132)
!137 = !DILocation(line: 114, column: 23, scope: !132)
!138 = !DILocation(line: 114, column: 14, scope: !132)
!139 = !DILocation(line: 116, column: 2, scope: !118)
!140 = !DILocation(line: 117, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !11, line: 117, column: 10)
!142 = distinct !DILexicalBlock(scope: !113, file: !11, line: 116, column: 9)
!143 = !DILocation(line: 117, column: 13, scope: !141)
!144 = !DILocation(line: 117, column: 10, scope: !142)
!145 = !DILocation(line: 118, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !11, line: 117, column: 27)
!147 = !DILocation(line: 118, column: 17, scope: !146)
!148 = !DILocation(line: 118, column: 18, scope: !146)
!149 = !DILocation(line: 118, column: 33, scope: !146)
!150 = !DILocation(line: 118, column: 32, scope: !146)
!151 = !DILocation(line: 118, column: 28, scope: !146)
!152 = !DILocation(line: 118, column: 23, scope: !146)
!153 = !DILocation(line: 118, column: 14, scope: !146)
!154 = !DILocation(line: 119, column: 6, scope: !146)
!155 = !DILocation(line: 120, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !141, file: !11, line: 119, column: 13)
!157 = !DILocation(line: 120, column: 21, scope: !156)
!158 = !DILocation(line: 120, column: 20, scope: !156)
!159 = !DILocation(line: 120, column: 14, scope: !156)
!160 = !DILocation(line: 124, column: 6, scope: !32)
!161 = !DILocation(line: 124, column: 8, scope: !32)
!162 = !DILocation(line: 124, column: 7, scope: !32)
!163 = !DILocation(line: 124, column: 4, scope: !32)
!164 = !DILocation(line: 125, column: 6, scope: !32)
!165 = !DILocation(line: 125, column: 8, scope: !32)
!166 = !DILocation(line: 125, column: 7, scope: !32)
!167 = !DILocation(line: 125, column: 4, scope: !32)
!168 = !DILocation(line: 127, column: 7, scope: !32)
!169 = !DILocation(line: 127, column: 10, scope: !32)
!170 = !DILocation(line: 127, column: 16, scope: !32)
!171 = !DILocation(line: 127, column: 19, scope: !32)
!172 = !DILocation(line: 127, column: 25, scope: !32)
!173 = !DILocation(line: 127, column: 28, scope: !32)
!174 = !DILocation(line: 127, column: 34, scope: !32)
!175 = !DILocation(line: 127, column: 37, scope: !32)
!176 = !DILocation(line: 127, column: 43, scope: !32)
!177 = !DILocation(line: 127, column: 46, scope: !32)
!178 = !DILocation(line: 127, column: 52, scope: !32)
!179 = !DILocation(line: 127, column: 54, scope: !32)
!180 = !DILocation(line: 127, column: 53, scope: !32)
!181 = !DILocation(line: 127, column: 51, scope: !32)
!182 = !DILocation(line: 127, column: 44, scope: !32)
!183 = !DILocation(line: 127, column: 42, scope: !32)
!184 = !DILocation(line: 127, column: 35, scope: !32)
!185 = !DILocation(line: 127, column: 33, scope: !32)
!186 = !DILocation(line: 127, column: 26, scope: !32)
!187 = !DILocation(line: 127, column: 24, scope: !32)
!188 = !DILocation(line: 127, column: 17, scope: !32)
!189 = !DILocation(line: 127, column: 15, scope: !32)
!190 = !DILocation(line: 127, column: 8, scope: !32)
!191 = !DILocation(line: 127, column: 5, scope: !32)
!192 = !DILocation(line: 128, column: 7, scope: !32)
!193 = !DILocation(line: 128, column: 10, scope: !32)
!194 = !DILocation(line: 128, column: 16, scope: !32)
!195 = !DILocation(line: 128, column: 19, scope: !32)
!196 = !DILocation(line: 128, column: 25, scope: !32)
!197 = !DILocation(line: 128, column: 28, scope: !32)
!198 = !DILocation(line: 128, column: 34, scope: !32)
!199 = !DILocation(line: 128, column: 37, scope: !32)
!200 = !DILocation(line: 128, column: 43, scope: !32)
!201 = !DILocation(line: 128, column: 45, scope: !32)
!202 = !DILocation(line: 128, column: 44, scope: !32)
!203 = !DILocation(line: 128, column: 42, scope: !32)
!204 = !DILocation(line: 128, column: 35, scope: !32)
!205 = !DILocation(line: 128, column: 33, scope: !32)
!206 = !DILocation(line: 128, column: 26, scope: !32)
!207 = !DILocation(line: 128, column: 24, scope: !32)
!208 = !DILocation(line: 128, column: 17, scope: !32)
!209 = !DILocation(line: 128, column: 15, scope: !32)
!210 = !DILocation(line: 128, column: 8, scope: !32)
!211 = !DILocation(line: 128, column: 5, scope: !32)
!212 = !DILocation(line: 129, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !32, file: !11, line: 129, column: 6)
!214 = !DILocation(line: 129, column: 8, scope: !213)
!215 = !DILocation(line: 129, column: 6, scope: !32)
!216 = !DILocation(line: 129, column: 19, scope: !213)
!217 = !DILocation(line: 129, column: 23, scope: !213)
!218 = !DILocation(line: 129, column: 26, scope: !213)
!219 = !DILocation(line: 129, column: 29, scope: !213)
!220 = !DILocation(line: 129, column: 28, scope: !213)
!221 = !DILocation(line: 129, column: 24, scope: !213)
!222 = !DILocation(line: 129, column: 21, scope: !213)
!223 = !DILocation(line: 129, column: 12, scope: !213)
!224 = !DILocation(line: 131, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !11, line: 130, column: 7)
!226 = !DILocation(line: 131, column: 10, scope: !225)
!227 = !DILocation(line: 131, column: 25, scope: !225)
!228 = !DILocation(line: 131, column: 28, scope: !225)
!229 = !DILocation(line: 131, column: 31, scope: !225)
!230 = !DILocation(line: 131, column: 30, scope: !225)
!231 = !DILocation(line: 131, column: 26, scope: !225)
!232 = !DILocation(line: 131, column: 44, scope: !225)
!233 = !DILocation(line: 131, column: 37, scope: !225)
!234 = !DILocation(line: 131, column: 35, scope: !225)
!235 = !DILocation(line: 131, column: 51, scope: !225)
!236 = !DILocation(line: 131, column: 49, scope: !225)
!237 = !DILocation(line: 131, column: 21, scope: !225)
!238 = !DILocation(line: 131, column: 8, scope: !225)
!239 = !DILocation(line: 132, column: 14, scope: !225)
!240 = !DILocation(line: 132, column: 16, scope: !225)
!241 = !DILocation(line: 132, column: 13, scope: !225)
!242 = !DILocation(line: 132, column: 22, scope: !225)
!243 = !DILocation(line: 132, column: 21, scope: !225)
!244 = !DILocation(line: 132, column: 24, scope: !225)
!245 = !DILocation(line: 132, column: 6, scope: !225)
!246 = !DILocation(line: 134, column: 1, scope: !32)
!247 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 138, type: !248, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!248 = !DISubroutineType(types: !249)
!249 = !{!7}
!250 = !DILocalVariable(name: "a0", scope: !247, file: !11, line: 139, type: !13)
!251 = !DILocation(line: 139, column: 12, scope: !247)
!252 = !DILocation(line: 140, column: 24, scope: !247)
!253 = !DILocation(line: 140, column: 5, scope: !247)
!254 = !DILocalVariable(name: "r", scope: !247, file: !11, line: 142, type: !13)
!255 = !DILocation(line: 142, column: 12, scope: !247)
!256 = !DILocation(line: 142, column: 21, scope: !247)
!257 = !DILocation(line: 142, column: 16, scope: !247)
!258 = !DILocation(line: 143, column: 5, scope: !247)
