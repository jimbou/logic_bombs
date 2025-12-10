; ModuleID = 's_tanh.bc'
source_filename = "./s_tanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tanh(double %x) #0 !dbg !22 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %z = alloca double, align 8
  %jx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %t, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata double* %z, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %jx, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = bitcast double* %x.addr to i32*, !dbg !35
  %1 = load i32, i32* %0, align 8, !dbg !35
  store i32 %1, i32* %jx, align 4, !dbg !36
  %2 = load i32, i32* %jx, align 4, !dbg !37
  %and = and i32 %2, 2147483647, !dbg !38
  store i32 %and, i32* %ix, align 4, !dbg !39
  %3 = load i32, i32* %ix, align 4, !dbg !40
  %cmp = icmp sge i32 %3, 2146435072, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %jx, align 4, !dbg !44
  %cmp1 = icmp sge i32 %4, 0, !dbg !47
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !48

if.then2:                                         ; preds = %if.then
  %5 = load double, double* %x.addr, align 8, !dbg !49
  %div = fdiv double 1.000000e+00, %5, !dbg !50
  %add = fadd double %div, 1.000000e+00, !dbg !51
  store double %add, double* %retval, align 8, !dbg !52
  br label %return, !dbg !52

if.else:                                          ; preds = %if.then
  %6 = load double, double* %x.addr, align 8, !dbg !53
  %div3 = fdiv double 1.000000e+00, %6, !dbg !54
  %sub = fsub double %div3, 1.000000e+00, !dbg !55
  store double %sub, double* %retval, align 8, !dbg !56
  br label %return, !dbg !56

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ix, align 4, !dbg !57
  %cmp4 = icmp slt i32 %7, 1077280768, !dbg !59
  br i1 %cmp4, label %if.then5, label %if.else22, !dbg !60

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ix, align 4, !dbg !61
  %cmp6 = icmp slt i32 %8, 1015021568, !dbg !64
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !65

if.then7:                                         ; preds = %if.then5
  %9 = load double, double* %x.addr, align 8, !dbg !66
  %10 = load double, double* %x.addr, align 8, !dbg !67
  %add8 = fadd double 1.000000e+00, %10, !dbg !68
  %mul = fmul double %9, %add8, !dbg !69
  store double %mul, double* %retval, align 8, !dbg !70
  br label %return, !dbg !70

if.end9:                                          ; preds = %if.then5
  %11 = load i32, i32* %ix, align 4, !dbg !71
  %cmp10 = icmp sge i32 %11, 1072693248, !dbg !73
  br i1 %cmp10, label %if.then11, label %if.else16, !dbg !74

if.then11:                                        ; preds = %if.end9
  %12 = load double, double* %x.addr, align 8, !dbg !75
  %13 = call double @llvm.fabs.f64(double %12), !dbg !77
  %mul12 = fmul double 2.000000e+00, %13, !dbg !78
  %call = call double @expm1(double %mul12) #4, !dbg !79
  store double %call, double* %t, align 8, !dbg !80
  %14 = load double, double* %t, align 8, !dbg !81
  %add13 = fadd double %14, 2.000000e+00, !dbg !82
  %div14 = fdiv double 2.000000e+00, %add13, !dbg !83
  %sub15 = fsub double 1.000000e+00, %div14, !dbg !84
  store double %sub15, double* %z, align 8, !dbg !85
  br label %if.end21, !dbg !86

if.else16:                                        ; preds = %if.end9
  %15 = load double, double* %x.addr, align 8, !dbg !87
  %16 = call double @llvm.fabs.f64(double %15), !dbg !89
  %mul17 = fmul double -2.000000e+00, %16, !dbg !90
  %call18 = call double @expm1(double %mul17) #4, !dbg !91
  store double %call18, double* %t, align 8, !dbg !92
  %17 = load double, double* %t, align 8, !dbg !93
  %fneg = fneg double %17, !dbg !94
  %18 = load double, double* %t, align 8, !dbg !95
  %add19 = fadd double %18, 2.000000e+00, !dbg !96
  %div20 = fdiv double %fneg, %add19, !dbg !97
  store double %div20, double* %z, align 8, !dbg !98
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then11
  br label %if.end23, !dbg !99

if.else22:                                        ; preds = %if.end
  store double 1.000000e+00, double* %z, align 8, !dbg !100
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.end21
  %19 = load i32, i32* %jx, align 4, !dbg !102
  %cmp24 = icmp sge i32 %19, 0, !dbg !103
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !104

cond.true:                                        ; preds = %if.end23
  %20 = load double, double* %z, align 8, !dbg !105
  br label %cond.end, !dbg !104

cond.false:                                       ; preds = %if.end23
  %21 = load double, double* %z, align 8, !dbg !106
  %fneg25 = fneg double %21, !dbg !107
  br label %cond.end, !dbg !104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %20, %cond.true ], [ %fneg25, %cond.false ], !dbg !104
  store double %cond, double* %retval, align 8, !dbg !108
  br label %return, !dbg !108

return:                                           ; preds = %cond.end, %if.then7, %if.else, %if.then2
  %22 = load double, double* %retval, align 8, !dbg !109
  ret double %22, !dbg !109
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @expm1(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !110 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = bitcast double* %a0 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !116
  call void @llvm.dbg.declare(metadata double* %r, metadata !117, metadata !DIExpression()), !dbg !118
  %1 = load double, double* %a0, align 8, !dbg !119
  %call = call double @tanh(double %1) #4, !dbg !120
  store double %call, double* %r, align 8, !dbg !118
  ret i32 0, !dbg !121
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_tanh.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 41, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./s_tanh.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !9, line: 41, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !9, line: 41, type: !10, isLocal: true, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!22 = distinct !DISubprogram(name: "tanh", scope: !9, file: !9, line: 47, type: !23, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !11}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !22, file: !9, line: 47, type: !11)
!26 = !DILocation(line: 47, column: 21, scope: !22)
!27 = !DILocalVariable(name: "t", scope: !22, file: !9, line: 53, type: !11)
!28 = !DILocation(line: 53, column: 9, scope: !22)
!29 = !DILocalVariable(name: "z", scope: !22, file: !9, line: 53, type: !11)
!30 = !DILocation(line: 53, column: 11, scope: !22)
!31 = !DILocalVariable(name: "jx", scope: !22, file: !9, line: 54, type: !5)
!32 = !DILocation(line: 54, column: 6, scope: !22)
!33 = !DILocalVariable(name: "ix", scope: !22, file: !9, line: 54, type: !5)
!34 = !DILocation(line: 54, column: 9, scope: !22)
!35 = !DILocation(line: 57, column: 7, scope: !22)
!36 = !DILocation(line: 57, column: 5, scope: !22)
!37 = !DILocation(line: 58, column: 7, scope: !22)
!38 = !DILocation(line: 58, column: 9, scope: !22)
!39 = !DILocation(line: 58, column: 5, scope: !22)
!40 = !DILocation(line: 61, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !22, file: !9, line: 61, column: 5)
!42 = !DILocation(line: 61, column: 7, scope: !41)
!43 = !DILocation(line: 61, column: 5, scope: !22)
!44 = !DILocation(line: 62, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !9, line: 62, column: 10)
!46 = distinct !DILexicalBlock(scope: !41, file: !9, line: 61, column: 21)
!47 = !DILocation(line: 62, column: 12, scope: !45)
!48 = !DILocation(line: 62, column: 10, scope: !46)
!49 = !DILocation(line: 62, column: 28, scope: !45)
!50 = !DILocation(line: 62, column: 27, scope: !45)
!51 = !DILocation(line: 62, column: 29, scope: !45)
!52 = !DILocation(line: 62, column: 17, scope: !45)
!53 = !DILocation(line: 63, column: 28, scope: !45)
!54 = !DILocation(line: 63, column: 27, scope: !45)
!55 = !DILocation(line: 63, column: 29, scope: !45)
!56 = !DILocation(line: 63, column: 17, scope: !45)
!57 = !DILocation(line: 67, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !22, file: !9, line: 67, column: 6)
!59 = !DILocation(line: 67, column: 9, scope: !58)
!60 = !DILocation(line: 67, column: 6, scope: !22)
!61 = !DILocation(line: 68, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !9, line: 68, column: 10)
!63 = distinct !DILexicalBlock(scope: !58, file: !9, line: 67, column: 23)
!64 = !DILocation(line: 68, column: 12, scope: !62)
!65 = !DILocation(line: 68, column: 10, scope: !63)
!66 = !DILocation(line: 69, column: 10, scope: !62)
!67 = !DILocation(line: 69, column: 17, scope: !62)
!68 = !DILocation(line: 69, column: 16, scope: !62)
!69 = !DILocation(line: 69, column: 11, scope: !62)
!70 = !DILocation(line: 69, column: 3, scope: !62)
!71 = !DILocation(line: 70, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !9, line: 70, column: 10)
!73 = !DILocation(line: 70, column: 12, scope: !72)
!74 = !DILocation(line: 70, column: 10, scope: !63)
!75 = !DILocation(line: 71, column: 22, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !9, line: 70, column: 26)
!77 = !DILocation(line: 71, column: 17, scope: !76)
!78 = !DILocation(line: 71, column: 16, scope: !76)
!79 = !DILocation(line: 71, column: 7, scope: !76)
!80 = !DILocation(line: 71, column: 5, scope: !76)
!81 = !DILocation(line: 72, column: 18, scope: !76)
!82 = !DILocation(line: 72, column: 19, scope: !76)
!83 = !DILocation(line: 72, column: 16, scope: !76)
!84 = !DILocation(line: 72, column: 11, scope: !76)
!85 = !DILocation(line: 72, column: 5, scope: !76)
!86 = !DILocation(line: 73, column: 6, scope: !76)
!87 = !DILocation(line: 74, column: 30, scope: !88)
!88 = distinct !DILexicalBlock(scope: !72, file: !9, line: 73, column: 13)
!89 = !DILocation(line: 74, column: 25, scope: !88)
!90 = !DILocation(line: 74, column: 24, scope: !88)
!91 = !DILocation(line: 74, column: 14, scope: !88)
!92 = !DILocation(line: 74, column: 12, scope: !88)
!93 = !DILocation(line: 75, column: 14, scope: !88)
!94 = !DILocation(line: 75, column: 13, scope: !88)
!95 = !DILocation(line: 75, column: 17, scope: !88)
!96 = !DILocation(line: 75, column: 18, scope: !88)
!97 = !DILocation(line: 75, column: 15, scope: !88)
!98 = !DILocation(line: 75, column: 11, scope: !88)
!99 = !DILocation(line: 78, column: 2, scope: !63)
!100 = !DILocation(line: 79, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !58, file: !9, line: 78, column: 9)
!102 = !DILocation(line: 81, column: 10, scope: !22)
!103 = !DILocation(line: 81, column: 12, scope: !22)
!104 = !DILocation(line: 81, column: 9, scope: !22)
!105 = !DILocation(line: 81, column: 18, scope: !22)
!106 = !DILocation(line: 81, column: 22, scope: !22)
!107 = !DILocation(line: 81, column: 21, scope: !22)
!108 = !DILocation(line: 81, column: 2, scope: !22)
!109 = !DILocation(line: 82, column: 1, scope: !22)
!110 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 86, type: !111, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!111 = !DISubroutineType(types: !112)
!112 = !{!5}
!113 = !DILocalVariable(name: "a0", scope: !110, file: !9, line: 87, type: !11)
!114 = !DILocation(line: 87, column: 12, scope: !110)
!115 = !DILocation(line: 88, column: 24, scope: !110)
!116 = !DILocation(line: 88, column: 5, scope: !110)
!117 = !DILocalVariable(name: "r", scope: !110, file: !9, line: 90, type: !11)
!118 = !DILocation(line: 90, column: 12, scope: !110)
!119 = !DILocation(line: 90, column: 21, scope: !110)
!120 = !DILocation(line: 90, column: 16, scope: !110)
!121 = !DILocation(line: 91, column: 5, scope: !110)
