; ModuleID = 'e_exp.bc'
source_filename = "./e_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ln2HI = internal constant [2 x double] [double 0x3FE62E42FEE00000, double 0xBFE62E42FEE00000], align 16, !dbg !0
@ln2LO = internal constant [2 x double] [double 0x3DEA39EF35793C76, double 0xBDEA39EF35793C76], align 16, !dbg !34
@halF = internal constant [2 x double] [double 5.000000e-01, double -5.000000e-01], align 16, !dbg !39
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_exp(double %x) #0 !dbg !47 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %hi = alloca double, align 8
  %lo = alloca double, align 8
  %c = alloca double, align 8
  %t = alloca double, align 8
  %k = alloca i32, align 4
  %xsb = alloca i32, align 4
  %hx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata double* %y, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata double* %hi, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %lo, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %c, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata double* %t, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %k, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %xsb, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !66, metadata !DIExpression()), !dbg !68
  %0 = bitcast double* %x.addr to i32*, !dbg !69
  %1 = load i32, i32* %0, align 8, !dbg !69
  store i32 %1, i32* %hx, align 4, !dbg !70
  %2 = load i32, i32* %hx, align 4, !dbg !71
  %shr = lshr i32 %2, 31, !dbg !72
  %and = and i32 %shr, 1, !dbg !73
  store i32 %and, i32* %xsb, align 4, !dbg !74
  %3 = load i32, i32* %hx, align 4, !dbg !75
  %and1 = and i32 %3, 2147483647, !dbg !75
  store i32 %and1, i32* %hx, align 4, !dbg !75
  %4 = load i32, i32* %hx, align 4, !dbg !76
  %cmp = icmp uge i32 %4, 1082535490, !dbg !78
  br i1 %cmp, label %if.then, label %if.end14, !dbg !79

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %hx, align 4, !dbg !80
  %cmp2 = icmp uge i32 %5, 2146435072, !dbg !83
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !84

if.then3:                                         ; preds = %if.then
  %6 = load i32, i32* %hx, align 4, !dbg !85
  %and4 = and i32 %6, 1048575, !dbg !88
  %7 = bitcast double* %x.addr to i32*, !dbg !89
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 1, !dbg !89
  %8 = load i32, i32* %add.ptr, align 4, !dbg !89
  %or = or i32 %and4, %8, !dbg !90
  %cmp5 = icmp ne i32 %or, 0, !dbg !91
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !92

if.then6:                                         ; preds = %if.then3
  %9 = load double, double* %x.addr, align 8, !dbg !93
  %10 = load double, double* %x.addr, align 8, !dbg !94
  %add = fadd double %9, %10, !dbg !95
  store double %add, double* %retval, align 8, !dbg !96
  br label %return, !dbg !96

if.else:                                          ; preds = %if.then3
  %11 = load i32, i32* %xsb, align 4, !dbg !97
  %cmp7 = icmp eq i32 %11, 0, !dbg !98
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !99

cond.true:                                        ; preds = %if.else
  %12 = load double, double* %x.addr, align 8, !dbg !100
  br label %cond.end, !dbg !99

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !99

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %12, %cond.true ], [ 0.000000e+00, %cond.false ], !dbg !99
  store double %cond, double* %retval, align 8, !dbg !101
  br label %return, !dbg !101

if.end:                                           ; preds = %if.then
  %13 = load double, double* %x.addr, align 8, !dbg !102
  %cmp8 = fcmp ogt double %13, 0x40862E42FEFA39EF, !dbg !104
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !105

if.then9:                                         ; preds = %if.end
  store double 0x7FF0000000000000, double* %retval, align 8, !dbg !106
  br label %return, !dbg !106

if.end10:                                         ; preds = %if.end
  %14 = load double, double* %x.addr, align 8, !dbg !107
  %cmp11 = fcmp olt double %14, 0xC0874910D52D3051, !dbg !109
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !110

if.then12:                                        ; preds = %if.end10
  store double 0.000000e+00, double* %retval, align 8, !dbg !111
  br label %return, !dbg !111

if.end13:                                         ; preds = %if.end10
  br label %if.end14, !dbg !112

if.end14:                                         ; preds = %if.end13, %entry
  %15 = load i32, i32* %hx, align 4, !dbg !113
  %cmp15 = icmp ugt i32 %15, 1071001154, !dbg !115
  br i1 %cmp15, label %if.then16, label %if.else33, !dbg !116

if.then16:                                        ; preds = %if.end14
  %16 = load i32, i32* %hx, align 4, !dbg !117
  %cmp17 = icmp ult i32 %16, 1072734898, !dbg !120
  br i1 %cmp17, label %if.then18, label %if.else23, !dbg !121

if.then18:                                        ; preds = %if.then16
  %17 = load double, double* %x.addr, align 8, !dbg !122
  %18 = load i32, i32* %xsb, align 4, !dbg !124
  %idxprom = sext i32 %18 to i64, !dbg !125
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* @ln2HI, i64 0, i64 %idxprom, !dbg !125
  %19 = load double, double* %arrayidx, align 8, !dbg !125
  %sub = fsub double %17, %19, !dbg !126
  store double %sub, double* %hi, align 8, !dbg !127
  %20 = load i32, i32* %xsb, align 4, !dbg !128
  %idxprom19 = sext i32 %20 to i64, !dbg !129
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* @ln2LO, i64 0, i64 %idxprom19, !dbg !129
  %21 = load double, double* %arrayidx20, align 8, !dbg !129
  store double %21, double* %lo, align 8, !dbg !130
  %22 = load i32, i32* %xsb, align 4, !dbg !131
  %sub21 = sub nsw i32 1, %22, !dbg !132
  %23 = load i32, i32* %xsb, align 4, !dbg !133
  %sub22 = sub nsw i32 %sub21, %23, !dbg !134
  store i32 %sub22, i32* %k, align 4, !dbg !135
  br label %if.end31, !dbg !136

if.else23:                                        ; preds = %if.then16
  %24 = load double, double* %x.addr, align 8, !dbg !137
  %mul = fmul double 0x3FF71547652B82FE, %24, !dbg !139
  %25 = load i32, i32* %xsb, align 4, !dbg !140
  %idxprom24 = sext i32 %25 to i64, !dbg !141
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* @halF, i64 0, i64 %idxprom24, !dbg !141
  %26 = load double, double* %arrayidx25, align 8, !dbg !141
  %add26 = fadd double %mul, %26, !dbg !142
  %conv = fptosi double %add26 to i32, !dbg !143
  store i32 %conv, i32* %k, align 4, !dbg !144
  %27 = load i32, i32* %k, align 4, !dbg !145
  %conv27 = sitofp i32 %27 to double, !dbg !145
  store double %conv27, double* %t, align 8, !dbg !146
  %28 = load double, double* %x.addr, align 8, !dbg !147
  %29 = load double, double* %t, align 8, !dbg !148
  %30 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @ln2HI, i64 0, i64 0), align 16, !dbg !149
  %mul28 = fmul double %29, %30, !dbg !150
  %sub29 = fsub double %28, %mul28, !dbg !151
  store double %sub29, double* %hi, align 8, !dbg !152
  %31 = load double, double* %t, align 8, !dbg !153
  %32 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @ln2LO, i64 0, i64 0), align 16, !dbg !154
  %mul30 = fmul double %31, %32, !dbg !155
  store double %mul30, double* %lo, align 8, !dbg !156
  br label %if.end31

if.end31:                                         ; preds = %if.else23, %if.then18
  %33 = load double, double* %hi, align 8, !dbg !157
  %34 = load double, double* %lo, align 8, !dbg !158
  %sub32 = fsub double %33, %34, !dbg !159
  store double %sub32, double* %x.addr, align 8, !dbg !160
  br label %if.end45, !dbg !161

if.else33:                                        ; preds = %if.end14
  %35 = load i32, i32* %hx, align 4, !dbg !162
  %cmp34 = icmp ult i32 %35, 1043333120, !dbg !164
  br i1 %cmp34, label %if.then36, label %if.else43, !dbg !165

if.then36:                                        ; preds = %if.else33
  %36 = load double, double* %x.addr, align 8, !dbg !166
  %add37 = fadd double 1.000000e+300, %36, !dbg !169
  %cmp38 = fcmp ogt double %add37, 1.000000e+00, !dbg !170
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !171

if.then40:                                        ; preds = %if.then36
  %37 = load double, double* %x.addr, align 8, !dbg !172
  %add41 = fadd double 1.000000e+00, %37, !dbg !173
  store double %add41, double* %retval, align 8, !dbg !174
  br label %return, !dbg !174

if.end42:                                         ; preds = %if.then36
  br label %if.end44, !dbg !175

if.else43:                                        ; preds = %if.else33
  store i32 0, i32* %k, align 4, !dbg !176
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.end42
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end31
  %38 = load double, double* %x.addr, align 8, !dbg !177
  %39 = load double, double* %x.addr, align 8, !dbg !178
  %mul46 = fmul double %38, %39, !dbg !179
  store double %mul46, double* %t, align 8, !dbg !180
  %40 = load double, double* %x.addr, align 8, !dbg !181
  %41 = load double, double* %t, align 8, !dbg !182
  %42 = load double, double* %t, align 8, !dbg !183
  %43 = load double, double* %t, align 8, !dbg !184
  %44 = load double, double* %t, align 8, !dbg !185
  %45 = load double, double* %t, align 8, !dbg !186
  %mul47 = fmul double %45, 0x3E66376972BEA4D0, !dbg !187
  %add48 = fadd double 0xBEBBBD41C5D26BF1, %mul47, !dbg !188
  %mul49 = fmul double %44, %add48, !dbg !189
  %add50 = fadd double 0x3F11566AAF25DE2C, %mul49, !dbg !190
  %mul51 = fmul double %43, %add50, !dbg !191
  %add52 = fadd double 0xBF66C16C16BEBD93, %mul51, !dbg !192
  %mul53 = fmul double %42, %add52, !dbg !193
  %add54 = fadd double 0x3FC555555555553E, %mul53, !dbg !194
  %mul55 = fmul double %41, %add54, !dbg !195
  %sub56 = fsub double %40, %mul55, !dbg !196
  store double %sub56, double* %c, align 8, !dbg !197
  %46 = load i32, i32* %k, align 4, !dbg !198
  %cmp57 = icmp eq i32 %46, 0, !dbg !200
  br i1 %cmp57, label %if.then59, label %if.else64, !dbg !201

if.then59:                                        ; preds = %if.end45
  %47 = load double, double* %x.addr, align 8, !dbg !202
  %48 = load double, double* %c, align 8, !dbg !203
  %mul60 = fmul double %47, %48, !dbg !204
  %49 = load double, double* %c, align 8, !dbg !205
  %sub61 = fsub double %49, 2.000000e+00, !dbg !206
  %div = fdiv double %mul60, %sub61, !dbg !207
  %50 = load double, double* %x.addr, align 8, !dbg !208
  %sub62 = fsub double %div, %50, !dbg !209
  %sub63 = fsub double 1.000000e+00, %sub62, !dbg !210
  store double %sub63, double* %retval, align 8, !dbg !211
  br label %return, !dbg !211

if.else64:                                        ; preds = %if.end45
  %51 = load double, double* %lo, align 8, !dbg !212
  %52 = load double, double* %x.addr, align 8, !dbg !213
  %53 = load double, double* %c, align 8, !dbg !214
  %mul65 = fmul double %52, %53, !dbg !215
  %54 = load double, double* %c, align 8, !dbg !216
  %sub66 = fsub double 2.000000e+00, %54, !dbg !217
  %div67 = fdiv double %mul65, %sub66, !dbg !218
  %sub68 = fsub double %51, %div67, !dbg !219
  %55 = load double, double* %hi, align 8, !dbg !220
  %sub69 = fsub double %sub68, %55, !dbg !221
  %sub70 = fsub double 1.000000e+00, %sub69, !dbg !222
  store double %sub70, double* %y, align 8, !dbg !223
  br label %if.end71

if.end71:                                         ; preds = %if.else64
  %56 = load i32, i32* %k, align 4, !dbg !224
  %cmp72 = icmp sge i32 %56, -1021, !dbg !226
  br i1 %cmp72, label %if.then74, label %if.else76, !dbg !227

if.then74:                                        ; preds = %if.end71
  %57 = load i32, i32* %k, align 4, !dbg !228
  %shl = shl i32 %57, 20, !dbg !230
  %58 = bitcast double* %y to i32*, !dbg !231
  %59 = load i32, i32* %58, align 8, !dbg !232
  %add75 = add nsw i32 %59, %shl, !dbg !232
  store i32 %add75, i32* %58, align 8, !dbg !232
  %60 = load double, double* %y, align 8, !dbg !233
  store double %60, double* %retval, align 8, !dbg !234
  br label %return, !dbg !234

if.else76:                                        ; preds = %if.end71
  %61 = load i32, i32* %k, align 4, !dbg !235
  %add77 = add nsw i32 %61, 1000, !dbg !237
  %shl78 = shl i32 %add77, 20, !dbg !238
  %62 = bitcast double* %y to i32*, !dbg !239
  %63 = load i32, i32* %62, align 8, !dbg !240
  %add79 = add nsw i32 %63, %shl78, !dbg !240
  store i32 %add79, i32* %62, align 8, !dbg !240
  %64 = load double, double* %y, align 8, !dbg !241
  %mul80 = fmul double %64, 0x170000000000000, !dbg !242
  store double %mul80, double* %retval, align 8, !dbg !243
  br label %return, !dbg !243

return:                                           ; preds = %if.else76, %if.then74, %if.then59, %if.then40, %if.then12, %if.then9, %cond.end, %if.then6
  %65 = load double, double* %retval, align 8, !dbg !244
  ret double %65, !dbg !244
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !245 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = bitcast double* %a0 to i8*, !dbg !250
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !251
  call void @llvm.dbg.declare(metadata double* %r, metadata !252, metadata !DIExpression()), !dbg !253
  %1 = load double, double* %a0, align 8, !dbg !254
  %call = call double @__ieee754_exp(double %1), !dbg !255
  store double %call, double* %r, align 8, !dbg !253
  ret i32 0, !dbg !256
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ln2HI", scope: !2, file: !11, line: 89, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_exp.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !0, !34, !39}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "o_threshold", scope: !2, file: !11, line: 87, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./e_exp.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !11, line: 85, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 13873137513782915153, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "u_threshold", scope: !2, file: !11, line: 88, type: !12, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 103582791429521408, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "twom1000", scope: !2, file: !11, line: 86, type: !12, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4609176140021203710, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "invln2", scope: !2, file: !11, line: 93, type: !12, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !11, line: 83, type: !12, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4595172819793696062, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "P1", scope: !2, file: !11, line: 94, type: !12, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 13791923578850950547, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "P2", scope: !2, file: !11, line: 95, type: !12, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4544508515198557740, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "P3", scope: !2, file: !11, line: 96, type: !12, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 13743786778040626161, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "P4", scope: !2, file: !11, line: 97, type: !12, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4496342204012209360, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "P5", scope: !2, file: !11, line: 98, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "ln2LO", scope: !2, file: !11, line: 91, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 2)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "halF", scope: !2, file: !11, line: 84, type: !36, isLocal: true, isDefinition: true)
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!47 = distinct !DISubprogram(name: "__ieee754_exp", scope: !11, file: !11, line: 102, type: !48, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!13, !13}
!50 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !11, line: 102, type: !13)
!51 = !DILocation(line: 102, column: 30, scope: !47)
!52 = !DILocalVariable(name: "y", scope: !47, file: !11, line: 108, type: !13)
!53 = !DILocation(line: 108, column: 9, scope: !47)
!54 = !DILocalVariable(name: "hi", scope: !47, file: !11, line: 108, type: !13)
!55 = !DILocation(line: 108, column: 11, scope: !47)
!56 = !DILocalVariable(name: "lo", scope: !47, file: !11, line: 108, type: !13)
!57 = !DILocation(line: 108, column: 14, scope: !47)
!58 = !DILocalVariable(name: "c", scope: !47, file: !11, line: 108, type: !13)
!59 = !DILocation(line: 108, column: 17, scope: !47)
!60 = !DILocalVariable(name: "t", scope: !47, file: !11, line: 108, type: !13)
!61 = !DILocation(line: 108, column: 19, scope: !47)
!62 = !DILocalVariable(name: "k", scope: !47, file: !11, line: 109, type: !7)
!63 = !DILocation(line: 109, column: 6, scope: !47)
!64 = !DILocalVariable(name: "xsb", scope: !47, file: !11, line: 109, type: !7)
!65 = !DILocation(line: 109, column: 8, scope: !47)
!66 = !DILocalVariable(name: "hx", scope: !47, file: !11, line: 110, type: !67)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DILocation(line: 110, column: 11, scope: !47)
!69 = !DILocation(line: 112, column: 8, scope: !47)
!70 = !DILocation(line: 112, column: 6, scope: !47)
!71 = !DILocation(line: 113, column: 9, scope: !47)
!72 = !DILocation(line: 113, column: 11, scope: !47)
!73 = !DILocation(line: 113, column: 16, scope: !47)
!74 = !DILocation(line: 113, column: 6, scope: !47)
!75 = !DILocation(line: 114, column: 5, scope: !47)
!76 = !DILocation(line: 117, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !47, file: !11, line: 117, column: 5)
!78 = !DILocation(line: 117, column: 8, scope: !77)
!79 = !DILocation(line: 117, column: 5, scope: !47)
!80 = !DILocation(line: 118, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !11, line: 118, column: 16)
!82 = distinct !DILexicalBlock(scope: !77, file: !11, line: 117, column: 23)
!83 = !DILocation(line: 118, column: 18, scope: !81)
!84 = !DILocation(line: 118, column: 16, scope: !82)
!85 = !DILocation(line: 119, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !11, line: 119, column: 6)
!87 = distinct !DILexicalBlock(scope: !81, file: !11, line: 118, column: 32)
!88 = !DILocation(line: 119, column: 10, scope: !86)
!89 = !DILocation(line: 119, column: 20, scope: !86)
!90 = !DILocation(line: 119, column: 19, scope: !86)
!91 = !DILocation(line: 119, column: 28, scope: !86)
!92 = !DILocation(line: 119, column: 6, scope: !87)
!93 = !DILocation(line: 120, column: 15, scope: !86)
!94 = !DILocation(line: 120, column: 17, scope: !86)
!95 = !DILocation(line: 120, column: 16, scope: !86)
!96 = !DILocation(line: 120, column: 8, scope: !86)
!97 = !DILocation(line: 121, column: 16, scope: !86)
!98 = !DILocation(line: 121, column: 19, scope: !86)
!99 = !DILocation(line: 121, column: 15, scope: !86)
!100 = !DILocation(line: 121, column: 25, scope: !86)
!101 = !DILocation(line: 121, column: 8, scope: !86)
!102 = !DILocation(line: 123, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !82, file: !11, line: 123, column: 9)
!104 = !DILocation(line: 123, column: 11, scope: !103)
!105 = !DILocation(line: 123, column: 9, scope: !82)
!106 = !DILocation(line: 123, column: 26, scope: !103)
!107 = !DILocation(line: 124, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !82, file: !11, line: 124, column: 9)
!109 = !DILocation(line: 124, column: 11, scope: !108)
!110 = !DILocation(line: 124, column: 9, scope: !82)
!111 = !DILocation(line: 124, column: 26, scope: !108)
!112 = !DILocation(line: 125, column: 2, scope: !82)
!113 = !DILocation(line: 128, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !47, file: !11, line: 128, column: 5)
!115 = !DILocation(line: 128, column: 8, scope: !114)
!116 = !DILocation(line: 128, column: 5, scope: !47)
!117 = !DILocation(line: 129, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !11, line: 129, column: 9)
!119 = distinct !DILexicalBlock(scope: !114, file: !11, line: 128, column: 22)
!120 = !DILocation(line: 129, column: 12, scope: !118)
!121 = !DILocation(line: 129, column: 9, scope: !119)
!122 = !DILocation(line: 130, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !11, line: 129, column: 26)
!124 = !DILocation(line: 130, column: 16, scope: !123)
!125 = !DILocation(line: 130, column: 10, scope: !123)
!126 = !DILocation(line: 130, column: 9, scope: !123)
!127 = !DILocation(line: 130, column: 6, scope: !123)
!128 = !DILocation(line: 130, column: 31, scope: !123)
!129 = !DILocation(line: 130, column: 25, scope: !123)
!130 = !DILocation(line: 130, column: 24, scope: !123)
!131 = !DILocation(line: 130, column: 43, scope: !123)
!132 = !DILocation(line: 130, column: 42, scope: !123)
!133 = !DILocation(line: 130, column: 47, scope: !123)
!134 = !DILocation(line: 130, column: 46, scope: !123)
!135 = !DILocation(line: 130, column: 39, scope: !123)
!136 = !DILocation(line: 131, column: 6, scope: !123)
!137 = !DILocation(line: 132, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !118, file: !11, line: 131, column: 13)
!139 = !DILocation(line: 132, column: 20, scope: !138)
!140 = !DILocation(line: 132, column: 28, scope: !138)
!141 = !DILocation(line: 132, column: 23, scope: !138)
!142 = !DILocation(line: 132, column: 22, scope: !138)
!143 = !DILocation(line: 132, column: 8, scope: !138)
!144 = !DILocation(line: 132, column: 6, scope: !138)
!145 = !DILocation(line: 133, column: 8, scope: !138)
!146 = !DILocation(line: 133, column: 6, scope: !138)
!147 = !DILocation(line: 134, column: 8, scope: !138)
!148 = !DILocation(line: 134, column: 12, scope: !138)
!149 = !DILocation(line: 134, column: 14, scope: !138)
!150 = !DILocation(line: 134, column: 13, scope: !138)
!151 = !DILocation(line: 134, column: 10, scope: !138)
!152 = !DILocation(line: 134, column: 6, scope: !138)
!153 = !DILocation(line: 135, column: 8, scope: !138)
!154 = !DILocation(line: 135, column: 10, scope: !138)
!155 = !DILocation(line: 135, column: 9, scope: !138)
!156 = !DILocation(line: 135, column: 6, scope: !138)
!157 = !DILocation(line: 137, column: 11, scope: !119)
!158 = !DILocation(line: 137, column: 16, scope: !119)
!159 = !DILocation(line: 137, column: 14, scope: !119)
!160 = !DILocation(line: 137, column: 9, scope: !119)
!161 = !DILocation(line: 138, column: 2, scope: !119)
!162 = !DILocation(line: 139, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !114, file: !11, line: 139, column: 10)
!164 = !DILocation(line: 139, column: 13, scope: !163)
!165 = !DILocation(line: 139, column: 10, scope: !114)
!166 = !DILocation(line: 140, column: 14, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !11, line: 140, column: 9)
!168 = distinct !DILexicalBlock(scope: !163, file: !11, line: 139, column: 28)
!169 = !DILocation(line: 140, column: 13, scope: !167)
!170 = !DILocation(line: 140, column: 15, scope: !167)
!171 = !DILocation(line: 140, column: 9, scope: !168)
!172 = !DILocation(line: 140, column: 32, scope: !167)
!173 = !DILocation(line: 140, column: 31, scope: !167)
!174 = !DILocation(line: 140, column: 21, scope: !167)
!175 = !DILocation(line: 141, column: 2, scope: !168)
!176 = !DILocation(line: 142, column: 9, scope: !163)
!177 = !DILocation(line: 145, column: 7, scope: !47)
!178 = !DILocation(line: 145, column: 9, scope: !47)
!179 = !DILocation(line: 145, column: 8, scope: !47)
!180 = !DILocation(line: 145, column: 5, scope: !47)
!181 = !DILocation(line: 146, column: 7, scope: !47)
!182 = !DILocation(line: 146, column: 11, scope: !47)
!183 = !DILocation(line: 146, column: 17, scope: !47)
!184 = !DILocation(line: 146, column: 23, scope: !47)
!185 = !DILocation(line: 146, column: 29, scope: !47)
!186 = !DILocation(line: 146, column: 35, scope: !47)
!187 = !DILocation(line: 146, column: 36, scope: !47)
!188 = !DILocation(line: 146, column: 34, scope: !47)
!189 = !DILocation(line: 146, column: 30, scope: !47)
!190 = !DILocation(line: 146, column: 28, scope: !47)
!191 = !DILocation(line: 146, column: 24, scope: !47)
!192 = !DILocation(line: 146, column: 22, scope: !47)
!193 = !DILocation(line: 146, column: 18, scope: !47)
!194 = !DILocation(line: 146, column: 16, scope: !47)
!195 = !DILocation(line: 146, column: 12, scope: !47)
!196 = !DILocation(line: 146, column: 9, scope: !47)
!197 = !DILocation(line: 146, column: 5, scope: !47)
!198 = !DILocation(line: 147, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !47, file: !11, line: 147, column: 5)
!200 = !DILocation(line: 147, column: 6, scope: !199)
!201 = !DILocation(line: 147, column: 5, scope: !47)
!202 = !DILocation(line: 147, column: 25, scope: !199)
!203 = !DILocation(line: 147, column: 27, scope: !199)
!204 = !DILocation(line: 147, column: 26, scope: !199)
!205 = !DILocation(line: 147, column: 31, scope: !199)
!206 = !DILocation(line: 147, column: 32, scope: !199)
!207 = !DILocation(line: 147, column: 29, scope: !199)
!208 = !DILocation(line: 147, column: 38, scope: !199)
!209 = !DILocation(line: 147, column: 37, scope: !199)
!210 = !DILocation(line: 147, column: 22, scope: !199)
!211 = !DILocation(line: 147, column: 12, scope: !199)
!212 = !DILocation(line: 148, column: 19, scope: !199)
!213 = !DILocation(line: 148, column: 23, scope: !199)
!214 = !DILocation(line: 148, column: 25, scope: !199)
!215 = !DILocation(line: 148, column: 24, scope: !199)
!216 = !DILocation(line: 148, column: 33, scope: !199)
!217 = !DILocation(line: 148, column: 32, scope: !199)
!218 = !DILocation(line: 148, column: 27, scope: !199)
!219 = !DILocation(line: 148, column: 21, scope: !199)
!220 = !DILocation(line: 148, column: 37, scope: !199)
!221 = !DILocation(line: 148, column: 36, scope: !199)
!222 = !DILocation(line: 148, column: 16, scope: !199)
!223 = !DILocation(line: 148, column: 11, scope: !199)
!224 = !DILocation(line: 149, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !47, file: !11, line: 149, column: 5)
!226 = !DILocation(line: 149, column: 7, scope: !225)
!227 = !DILocation(line: 149, column: 5, scope: !47)
!228 = !DILocation(line: 150, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !11, line: 149, column: 17)
!230 = !DILocation(line: 150, column: 19, scope: !229)
!231 = !DILocation(line: 150, column: 6, scope: !229)
!232 = !DILocation(line: 150, column: 14, scope: !229)
!233 = !DILocation(line: 151, column: 13, scope: !229)
!234 = !DILocation(line: 151, column: 6, scope: !229)
!235 = !DILocation(line: 153, column: 19, scope: !236)
!236 = distinct !DILexicalBlock(scope: !225, file: !11, line: 152, column: 9)
!237 = !DILocation(line: 153, column: 20, scope: !236)
!238 = !DILocation(line: 153, column: 26, scope: !236)
!239 = !DILocation(line: 153, column: 6, scope: !236)
!240 = !DILocation(line: 153, column: 14, scope: !236)
!241 = !DILocation(line: 154, column: 13, scope: !236)
!242 = !DILocation(line: 154, column: 14, scope: !236)
!243 = !DILocation(line: 154, column: 6, scope: !236)
!244 = !DILocation(line: 156, column: 1, scope: !47)
!245 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 160, type: !246, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!246 = !DISubroutineType(types: !247)
!247 = !{!7}
!248 = !DILocalVariable(name: "a0", scope: !245, file: !11, line: 161, type: !13)
!249 = !DILocation(line: 161, column: 12, scope: !245)
!250 = !DILocation(line: 162, column: 24, scope: !245)
!251 = !DILocation(line: 162, column: 5, scope: !245)
!252 = !DILocalVariable(name: "r", scope: !245, file: !11, line: 164, type: !13)
!253 = !DILocation(line: 164, column: 12, scope: !245)
!254 = !DILocation(line: 164, column: 30, scope: !245)
!255 = !DILocation(line: 164, column: 16, scope: !245)
!256 = !DILocation(line: 165, column: 5, scope: !245)
