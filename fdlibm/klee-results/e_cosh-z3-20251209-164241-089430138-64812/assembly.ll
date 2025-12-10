; ModuleID = 'e_cosh.bc'
source_filename = "./e_cosh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = internal constant double 1.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_cosh(double %x) #0 !dbg !24 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %w = alloca double, align 8
  %ix = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata double* %t, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata double* %w, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = bitcast double* %x.addr to i32*, !dbg !37
  %1 = load i32, i32* %0, align 8, !dbg !37
  store i32 %1, i32* %ix, align 4, !dbg !38
  %2 = load i32, i32* %ix, align 4, !dbg !39
  %and = and i32 %2, 2147483647, !dbg !39
  store i32 %and, i32* %ix, align 4, !dbg !39
  %3 = load i32, i32* %ix, align 4, !dbg !40
  %cmp = icmp sge i32 %3, 2146435072, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !44
  %5 = load double, double* %x.addr, align 8, !dbg !45
  %mul = fmul double %4, %5, !dbg !46
  store double %mul, double* %retval, align 8, !dbg !47
  br label %return, !dbg !47

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ix, align 4, !dbg !48
  %cmp1 = icmp slt i32 %6, 1071001155, !dbg !50
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !51

if.then2:                                         ; preds = %if.end
  %7 = load double, double* %x.addr, align 8, !dbg !52
  %8 = call double @llvm.fabs.f64(double %7), !dbg !54
  %call = call double @expm1(double %8) #4, !dbg !55
  store double %call, double* %t, align 8, !dbg !56
  %9 = load double, double* %t, align 8, !dbg !57
  %add = fadd double 1.000000e+00, %9, !dbg !58
  store double %add, double* %w, align 8, !dbg !59
  %10 = load i32, i32* %ix, align 4, !dbg !60
  %cmp3 = icmp slt i32 %10, 1015021568, !dbg !62
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !63

if.then4:                                         ; preds = %if.then2
  %11 = load double, double* %w, align 8, !dbg !64
  store double %11, double* %retval, align 8, !dbg !65
  br label %return, !dbg !65

if.end5:                                          ; preds = %if.then2
  %12 = load double, double* %t, align 8, !dbg !66
  %13 = load double, double* %t, align 8, !dbg !67
  %mul6 = fmul double %12, %13, !dbg !68
  %14 = load double, double* %w, align 8, !dbg !69
  %15 = load double, double* %w, align 8, !dbg !70
  %add7 = fadd double %14, %15, !dbg !71
  %div = fdiv double %mul6, %add7, !dbg !72
  %add8 = fadd double 1.000000e+00, %div, !dbg !73
  store double %add8, double* %retval, align 8, !dbg !74
  br label %return, !dbg !74

if.end9:                                          ; preds = %if.end
  %16 = load i32, i32* %ix, align 4, !dbg !75
  %cmp10 = icmp slt i32 %16, 1077280768, !dbg !77
  br i1 %cmp10, label %if.then11, label %if.end16, !dbg !78

if.then11:                                        ; preds = %if.end9
  %17 = load double, double* %x.addr, align 8, !dbg !79
  %18 = call double @llvm.fabs.f64(double %17), !dbg !81
  %call12 = call double @__ieee754_exp(double %18), !dbg !82
  store double %call12, double* %t, align 8, !dbg !83
  %19 = load double, double* %t, align 8, !dbg !84
  %mul13 = fmul double 5.000000e-01, %19, !dbg !85
  %20 = load double, double* %t, align 8, !dbg !86
  %div14 = fdiv double 5.000000e-01, %20, !dbg !87
  %add15 = fadd double %mul13, %div14, !dbg !88
  store double %add15, double* %retval, align 8, !dbg !89
  br label %return, !dbg !89

if.end16:                                         ; preds = %if.end9
  %21 = load i32, i32* %ix, align 4, !dbg !90
  %cmp17 = icmp slt i32 %21, 1082535490, !dbg !92
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !93

if.then18:                                        ; preds = %if.end16
  %22 = load double, double* %x.addr, align 8, !dbg !94
  %23 = call double @llvm.fabs.f64(double %22), !dbg !95
  %call19 = call double @__ieee754_exp(double %23), !dbg !96
  %mul20 = fmul double 5.000000e-01, %call19, !dbg !97
  store double %mul20, double* %retval, align 8, !dbg !98
  br label %return, !dbg !98

if.end21:                                         ; preds = %if.end16
  %24 = load i32, i32* bitcast (double* @one to i32*), align 8, !dbg !99
  %shr = lshr i32 %24, 29, !dbg !100
  %25 = bitcast double* %x.addr to i32*, !dbg !101
  %idx.ext = zext i32 %shr to i64, !dbg !102
  %add.ptr = getelementptr inbounds i32, i32* %25, i64 %idx.ext, !dbg !102
  %26 = load i32, i32* %add.ptr, align 4, !dbg !103
  store i32 %26, i32* %lx, align 4, !dbg !104
  %27 = load i32, i32* %ix, align 4, !dbg !105
  %cmp22 = icmp slt i32 %27, 1082536910, !dbg !107
  br i1 %cmp22, label %if.then25, label %lor.lhs.false, !dbg !108

lor.lhs.false:                                    ; preds = %if.end21
  %28 = load i32, i32* %ix, align 4, !dbg !109
  %cmp23 = icmp eq i32 %28, 1082536910, !dbg !110
  br i1 %cmp23, label %land.lhs.true, label %if.end30, !dbg !111

land.lhs.true:                                    ; preds = %lor.lhs.false
  %29 = load i32, i32* %lx, align 4, !dbg !112
  %cmp24 = icmp ule i32 %29, -1883637635, !dbg !113
  br i1 %cmp24, label %if.then25, label %if.end30, !dbg !114

if.then25:                                        ; preds = %land.lhs.true, %if.end21
  %30 = load double, double* %x.addr, align 8, !dbg !115
  %31 = call double @llvm.fabs.f64(double %30), !dbg !117
  %mul26 = fmul double 5.000000e-01, %31, !dbg !118
  %call27 = call double @__ieee754_exp(double %mul26), !dbg !119
  store double %call27, double* %w, align 8, !dbg !120
  %32 = load double, double* %w, align 8, !dbg !121
  %mul28 = fmul double 5.000000e-01, %32, !dbg !122
  store double %mul28, double* %t, align 8, !dbg !123
  %33 = load double, double* %t, align 8, !dbg !124
  %34 = load double, double* %w, align 8, !dbg !125
  %mul29 = fmul double %33, %34, !dbg !126
  store double %mul29, double* %retval, align 8, !dbg !127
  br label %return, !dbg !127

if.end30:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store double 0x7FF0000000000000, double* %retval, align 8, !dbg !128
  br label %return, !dbg !128

return:                                           ; preds = %if.end30, %if.then25, %if.then18, %if.then11, %if.end5, %if.then4, %if.then
  %35 = load double, double* %retval, align 8, !dbg !129
  ret double %35, !dbg !129
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @expm1(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__ieee754_exp(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !130 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = bitcast double* %a0 to i8*, !dbg !135
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !136
  call void @llvm.dbg.declare(metadata double* %r, metadata !137, metadata !DIExpression()), !dbg !138
  %1 = load double, double* %a0, align 8, !dbg !139
  %call = call double @__ieee754_cosh(double %1), !dbg !140
  store double %call, double* %r, align 8, !dbg !138
  ret i32 0, !dbg !141
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !13, line: 38, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_cosh.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!0, !11, !16}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "half", scope: !2, file: !13, line: 38, type: !14, isLocal: true, isDefinition: true)
!13 = !DIFile(filename: "./e_cosh.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !13, line: 38, type: !14, isLocal: true, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!24 = distinct !DISubprogram(name: "__ieee754_cosh", scope: !13, file: !13, line: 44, type: !25, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{!15, !15}
!27 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !13, line: 44, type: !15)
!28 = !DILocation(line: 44, column: 31, scope: !24)
!29 = !DILocalVariable(name: "t", scope: !24, file: !13, line: 50, type: !15)
!30 = !DILocation(line: 50, column: 9, scope: !24)
!31 = !DILocalVariable(name: "w", scope: !24, file: !13, line: 50, type: !15)
!32 = !DILocation(line: 50, column: 11, scope: !24)
!33 = !DILocalVariable(name: "ix", scope: !24, file: !13, line: 51, type: !7)
!34 = !DILocation(line: 51, column: 6, scope: !24)
!35 = !DILocalVariable(name: "lx", scope: !24, file: !13, line: 52, type: !9)
!36 = !DILocation(line: 52, column: 11, scope: !24)
!37 = !DILocation(line: 55, column: 7, scope: !24)
!38 = !DILocation(line: 55, column: 5, scope: !24)
!39 = !DILocation(line: 56, column: 5, scope: !24)
!40 = !DILocation(line: 59, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !24, file: !13, line: 59, column: 5)
!42 = !DILocation(line: 59, column: 7, scope: !41)
!43 = !DILocation(line: 59, column: 5, scope: !24)
!44 = !DILocation(line: 59, column: 28, scope: !41)
!45 = !DILocation(line: 59, column: 30, scope: !41)
!46 = !DILocation(line: 59, column: 29, scope: !41)
!47 = !DILocation(line: 59, column: 21, scope: !41)
!48 = !DILocation(line: 62, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !24, file: !13, line: 62, column: 5)
!50 = !DILocation(line: 62, column: 7, scope: !49)
!51 = !DILocation(line: 62, column: 5, scope: !24)
!52 = !DILocation(line: 63, column: 21, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !13, line: 62, column: 20)
!54 = !DILocation(line: 63, column: 16, scope: !53)
!55 = !DILocation(line: 63, column: 10, scope: !53)
!56 = !DILocation(line: 63, column: 8, scope: !53)
!57 = !DILocation(line: 64, column: 14, scope: !53)
!58 = !DILocation(line: 64, column: 13, scope: !53)
!59 = !DILocation(line: 64, column: 8, scope: !53)
!60 = !DILocation(line: 65, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !13, line: 65, column: 10)
!62 = !DILocation(line: 65, column: 12, scope: !61)
!63 = !DILocation(line: 65, column: 10, scope: !53)
!64 = !DILocation(line: 65, column: 32, scope: !61)
!65 = !DILocation(line: 65, column: 25, scope: !61)
!66 = !DILocation(line: 66, column: 18, scope: !53)
!67 = !DILocation(line: 66, column: 20, scope: !53)
!68 = !DILocation(line: 66, column: 19, scope: !53)
!69 = !DILocation(line: 66, column: 24, scope: !53)
!70 = !DILocation(line: 66, column: 26, scope: !53)
!71 = !DILocation(line: 66, column: 25, scope: !53)
!72 = !DILocation(line: 66, column: 22, scope: !53)
!73 = !DILocation(line: 66, column: 16, scope: !53)
!74 = !DILocation(line: 66, column: 6, scope: !53)
!75 = !DILocation(line: 70, column: 6, scope: !76)
!76 = distinct !DILexicalBlock(scope: !24, file: !13, line: 70, column: 6)
!77 = !DILocation(line: 70, column: 9, scope: !76)
!78 = !DILocation(line: 70, column: 6, scope: !24)
!79 = !DILocation(line: 71, column: 26, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !13, line: 70, column: 23)
!81 = !DILocation(line: 71, column: 21, scope: !80)
!82 = !DILocation(line: 71, column: 7, scope: !80)
!83 = !DILocation(line: 71, column: 5, scope: !80)
!84 = !DILocation(line: 72, column: 15, scope: !80)
!85 = !DILocation(line: 72, column: 14, scope: !80)
!86 = !DILocation(line: 72, column: 22, scope: !80)
!87 = !DILocation(line: 72, column: 21, scope: !80)
!88 = !DILocation(line: 72, column: 16, scope: !80)
!89 = !DILocation(line: 72, column: 3, scope: !80)
!90 = !DILocation(line: 76, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !24, file: !13, line: 76, column: 6)
!92 = !DILocation(line: 76, column: 9, scope: !91)
!93 = !DILocation(line: 76, column: 6, scope: !24)
!94 = !DILocation(line: 76, column: 55, scope: !91)
!95 = !DILocation(line: 76, column: 50, scope: !91)
!96 = !DILocation(line: 76, column: 36, scope: !91)
!97 = !DILocation(line: 76, column: 35, scope: !91)
!98 = !DILocation(line: 76, column: 24, scope: !91)
!99 = !DILocation(line: 79, column: 13, scope: !24)
!100 = !DILocation(line: 79, column: 30, scope: !24)
!101 = !DILocation(line: 79, column: 39, scope: !24)
!102 = !DILocation(line: 79, column: 37, scope: !24)
!103 = !DILocation(line: 79, column: 7, scope: !24)
!104 = !DILocation(line: 79, column: 5, scope: !24)
!105 = !DILocation(line: 80, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !24, file: !13, line: 80, column: 6)
!107 = !DILocation(line: 80, column: 8, scope: !106)
!108 = !DILocation(line: 80, column: 20, scope: !106)
!109 = !DILocation(line: 81, column: 9, scope: !106)
!110 = !DILocation(line: 81, column: 11, scope: !106)
!111 = !DILocation(line: 81, column: 24, scope: !106)
!112 = !DILocation(line: 81, column: 27, scope: !106)
!113 = !DILocation(line: 81, column: 29, scope: !106)
!114 = !DILocation(line: 80, column: 6, scope: !24)
!115 = !DILocation(line: 82, column: 34, scope: !116)
!116 = distinct !DILexicalBlock(scope: !106, file: !13, line: 81, column: 54)
!117 = !DILocation(line: 82, column: 29, scope: !116)
!118 = !DILocation(line: 82, column: 28, scope: !116)
!119 = !DILocation(line: 82, column: 10, scope: !116)
!120 = !DILocation(line: 82, column: 8, scope: !116)
!121 = !DILocation(line: 83, column: 15, scope: !116)
!122 = !DILocation(line: 83, column: 14, scope: !116)
!123 = !DILocation(line: 83, column: 8, scope: !116)
!124 = !DILocation(line: 84, column: 13, scope: !116)
!125 = !DILocation(line: 84, column: 15, scope: !116)
!126 = !DILocation(line: 84, column: 14, scope: !116)
!127 = !DILocation(line: 84, column: 6, scope: !116)
!128 = !DILocation(line: 88, column: 2, scope: !24)
!129 = !DILocation(line: 89, column: 1, scope: !24)
!130 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 93, type: !131, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!131 = !DISubroutineType(types: !132)
!132 = !{!7}
!133 = !DILocalVariable(name: "a0", scope: !130, file: !13, line: 94, type: !15)
!134 = !DILocation(line: 94, column: 12, scope: !130)
!135 = !DILocation(line: 95, column: 24, scope: !130)
!136 = !DILocation(line: 95, column: 5, scope: !130)
!137 = !DILocalVariable(name: "r", scope: !130, file: !13, line: 97, type: !15)
!138 = !DILocation(line: 97, column: 12, scope: !130)
!139 = !DILocation(line: 97, column: 31, scope: !130)
!140 = !DILocation(line: 97, column: 16, scope: !130)
!141 = !DILocation(line: 98, column: 5, scope: !130)
