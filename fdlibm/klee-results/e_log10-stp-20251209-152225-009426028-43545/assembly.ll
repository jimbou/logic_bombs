; ModuleID = 'e_log10.bc'
source_filename = "./e_log10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_log10(double %x) #0 !dbg !27 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %hx = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata double* %y, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata double* %z, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %k, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !42, metadata !DIExpression()), !dbg !43
  %0 = bitcast double* %x.addr to i32*, !dbg !44
  %1 = load i32, i32* %0, align 8, !dbg !44
  store i32 %1, i32* %hx, align 4, !dbg !45
  %2 = bitcast double* %x.addr to i32*, !dbg !46
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !46
  %3 = load i32, i32* %add.ptr, align 4, !dbg !46
  store i32 %3, i32* %lx, align 4, !dbg !47
  store i32 0, i32* %k, align 4, !dbg !48
  %4 = load i32, i32* %hx, align 4, !dbg !49
  %cmp = icmp slt i32 %4, 1048576, !dbg !51
  br i1 %cmp, label %if.then, label %if.end8, !dbg !52

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %hx, align 4, !dbg !53
  %and = and i32 %5, 2147483647, !dbg !56
  %6 = load i32, i32* %lx, align 4, !dbg !57
  %or = or i32 %and, %6, !dbg !58
  %cmp1 = icmp eq i32 %or, 0, !dbg !59
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !60

if.then2:                                         ; preds = %if.then
  %7 = load double, double* @zero, align 8, !dbg !61
  %div = fdiv double 0xC350000000000000, %7, !dbg !62
  store double %div, double* %retval, align 8, !dbg !63
  br label %return, !dbg !63

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %hx, align 4, !dbg !64
  %cmp3 = icmp slt i32 %8, 0, !dbg !66
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !67

if.then4:                                         ; preds = %if.end
  %9 = load double, double* %x.addr, align 8, !dbg !68
  %10 = load double, double* %x.addr, align 8, !dbg !69
  %sub = fsub double %9, %10, !dbg !70
  %11 = load double, double* @zero, align 8, !dbg !71
  %div5 = fdiv double %sub, %11, !dbg !72
  store double %div5, double* %retval, align 8, !dbg !73
  br label %return, !dbg !73

if.end6:                                          ; preds = %if.end
  %12 = load i32, i32* %k, align 4, !dbg !74
  %sub7 = sub nsw i32 %12, 54, !dbg !74
  store i32 %sub7, i32* %k, align 4, !dbg !74
  %13 = load double, double* %x.addr, align 8, !dbg !75
  %mul = fmul double %13, 0x4350000000000000, !dbg !75
  store double %mul, double* %x.addr, align 8, !dbg !75
  %14 = bitcast double* %x.addr to i32*, !dbg !76
  %15 = load i32, i32* %14, align 8, !dbg !76
  store i32 %15, i32* %hx, align 4, !dbg !77
  br label %if.end8, !dbg !78

if.end8:                                          ; preds = %if.end6, %entry
  %16 = load i32, i32* %hx, align 4, !dbg !79
  %cmp9 = icmp sge i32 %16, 2146435072, !dbg !81
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !82

if.then10:                                        ; preds = %if.end8
  %17 = load double, double* %x.addr, align 8, !dbg !83
  %18 = load double, double* %x.addr, align 8, !dbg !84
  %add = fadd double %17, %18, !dbg !85
  store double %add, double* %retval, align 8, !dbg !86
  br label %return, !dbg !86

if.end11:                                         ; preds = %if.end8
  %19 = load i32, i32* %hx, align 4, !dbg !87
  %shr = ashr i32 %19, 20, !dbg !88
  %sub12 = sub nsw i32 %shr, 1023, !dbg !89
  %20 = load i32, i32* %k, align 4, !dbg !90
  %add13 = add nsw i32 %20, %sub12, !dbg !90
  store i32 %add13, i32* %k, align 4, !dbg !90
  %21 = load i32, i32* %k, align 4, !dbg !91
  %and14 = and i32 %21, -2147483648, !dbg !92
  %shr15 = lshr i32 %and14, 31, !dbg !93
  store i32 %shr15, i32* %i, align 4, !dbg !94
  %22 = load i32, i32* %hx, align 4, !dbg !95
  %and16 = and i32 %22, 1048575, !dbg !96
  %23 = load i32, i32* %i, align 4, !dbg !97
  %sub17 = sub nsw i32 1023, %23, !dbg !98
  %shl = shl i32 %sub17, 20, !dbg !99
  %or18 = or i32 %and16, %shl, !dbg !100
  store i32 %or18, i32* %hx, align 4, !dbg !101
  %24 = load i32, i32* %k, align 4, !dbg !102
  %25 = load i32, i32* %i, align 4, !dbg !103
  %add19 = add nsw i32 %24, %25, !dbg !104
  %conv = sitofp i32 %add19 to double, !dbg !105
  store double %conv, double* %y, align 8, !dbg !106
  %26 = load i32, i32* %hx, align 4, !dbg !107
  %27 = bitcast double* %x.addr to i32*, !dbg !108
  store i32 %26, i32* %27, align 8, !dbg !109
  %28 = load double, double* %y, align 8, !dbg !110
  %mul20 = fmul double %28, 0x3D59FEF311F12B36, !dbg !111
  %29 = load double, double* %x.addr, align 8, !dbg !112
  %call = call double @__ieee754_log(double %29), !dbg !113
  %mul21 = fmul double 0x3FDBCB7B1526E50E, %call, !dbg !114
  %add22 = fadd double %mul20, %mul21, !dbg !115
  store double %add22, double* %z, align 8, !dbg !116
  %30 = load double, double* %z, align 8, !dbg !117
  %31 = load double, double* %y, align 8, !dbg !118
  %mul23 = fmul double %31, 0x3FD34413509F6000, !dbg !119
  %add24 = fadd double %30, %mul23, !dbg !120
  store double %add24, double* %retval, align 8, !dbg !121
  br label %return, !dbg !121

return:                                           ; preds = %if.end11, %if.then10, %if.then4, %if.then2
  %32 = load double, double* %retval, align 8, !dbg !122
  ret double %32, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_log(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !123 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = bitcast double* %a0 to i8*, !dbg !128
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !129
  call void @llvm.dbg.declare(metadata double* %r, metadata !130, metadata !DIExpression()), !dbg !131
  %1 = load double, double* %a0, align 8, !dbg !132
  %call = call double @__ieee754_log10(double %1), !dbg !133
  store double %call, double* %r, align 8, !dbg !131
  ret i32 0, !dbg !134
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !13, line: 59, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_log10.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !15, !17, !19, !0}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "two54", scope: !2, file: !13, line: 54, type: !14, isLocal: true, isDefinition: true)
!13 = !DIFile(filename: "./e_log10.c", directory: "/home/klee/logic_bombs/fdlibm")
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 4420844829172378422, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "log10_2lo", scope: !2, file: !13, line: 57, type: !14, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 4601495173785380110, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "ivln10", scope: !2, file: !13, line: 55, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 4599094494223097856, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "log10_2hi", scope: !2, file: !13, line: 56, type: !14, isLocal: true, isDefinition: true)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!27 = distinct !DISubprogram(name: "__ieee754_log10", scope: !13, file: !13, line: 62, type: !28, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!9, !9}
!30 = !DILocalVariable(name: "x", arg: 1, scope: !27, file: !13, line: 62, type: !9)
!31 = !DILocation(line: 62, column: 32, scope: !27)
!32 = !DILocalVariable(name: "y", scope: !27, file: !13, line: 68, type: !9)
!33 = !DILocation(line: 68, column: 9, scope: !27)
!34 = !DILocalVariable(name: "z", scope: !27, file: !13, line: 68, type: !9)
!35 = !DILocation(line: 68, column: 11, scope: !27)
!36 = !DILocalVariable(name: "i", scope: !27, file: !13, line: 69, type: !7)
!37 = !DILocation(line: 69, column: 6, scope: !27)
!38 = !DILocalVariable(name: "k", scope: !27, file: !13, line: 69, type: !7)
!39 = !DILocation(line: 69, column: 8, scope: !27)
!40 = !DILocalVariable(name: "hx", scope: !27, file: !13, line: 69, type: !7)
!41 = !DILocation(line: 69, column: 10, scope: !27)
!42 = !DILocalVariable(name: "lx", scope: !27, file: !13, line: 70, type: !8)
!43 = !DILocation(line: 70, column: 11, scope: !27)
!44 = !DILocation(line: 72, column: 7, scope: !27)
!45 = !DILocation(line: 72, column: 5, scope: !27)
!46 = !DILocation(line: 73, column: 7, scope: !27)
!47 = !DILocation(line: 73, column: 5, scope: !27)
!48 = !DILocation(line: 75, column: 10, scope: !27)
!49 = !DILocation(line: 76, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !27, file: !13, line: 76, column: 13)
!51 = !DILocation(line: 76, column: 16, scope: !50)
!52 = !DILocation(line: 76, column: 13, scope: !27)
!53 = !DILocation(line: 77, column: 19, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !13, line: 77, column: 17)
!55 = distinct !DILexicalBlock(scope: !50, file: !13, line: 76, column: 30)
!56 = !DILocation(line: 77, column: 21, scope: !54)
!57 = !DILocation(line: 77, column: 34, scope: !54)
!58 = !DILocation(line: 77, column: 33, scope: !54)
!59 = !DILocation(line: 77, column: 37, scope: !54)
!60 = !DILocation(line: 77, column: 17, scope: !55)
!61 = !DILocation(line: 78, column: 31, scope: !54)
!62 = !DILocation(line: 78, column: 30, scope: !54)
!63 = !DILocation(line: 78, column: 17, scope: !54)
!64 = !DILocation(line: 79, column: 17, scope: !65)
!65 = distinct !DILexicalBlock(scope: !55, file: !13, line: 79, column: 17)
!66 = !DILocation(line: 79, column: 19, scope: !65)
!67 = !DILocation(line: 79, column: 17, scope: !55)
!68 = !DILocation(line: 79, column: 31, scope: !65)
!69 = !DILocation(line: 79, column: 33, scope: !65)
!70 = !DILocation(line: 79, column: 32, scope: !65)
!71 = !DILocation(line: 79, column: 36, scope: !65)
!72 = !DILocation(line: 79, column: 35, scope: !65)
!73 = !DILocation(line: 79, column: 23, scope: !65)
!74 = !DILocation(line: 80, column: 15, scope: !55)
!75 = !DILocation(line: 80, column: 24, scope: !55)
!76 = !DILocation(line: 81, column: 18, scope: !55)
!77 = !DILocation(line: 81, column: 16, scope: !55)
!78 = !DILocation(line: 82, column: 9, scope: !55)
!79 = !DILocation(line: 83, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !27, file: !13, line: 83, column: 6)
!81 = !DILocation(line: 83, column: 9, scope: !80)
!82 = !DILocation(line: 83, column: 6, scope: !27)
!83 = !DILocation(line: 83, column: 31, scope: !80)
!84 = !DILocation(line: 83, column: 33, scope: !80)
!85 = !DILocation(line: 83, column: 32, scope: !80)
!86 = !DILocation(line: 83, column: 24, scope: !80)
!87 = !DILocation(line: 84, column: 8, scope: !27)
!88 = !DILocation(line: 84, column: 10, scope: !27)
!89 = !DILocation(line: 84, column: 15, scope: !27)
!90 = !DILocation(line: 84, column: 4, scope: !27)
!91 = !DILocation(line: 85, column: 18, scope: !27)
!92 = !DILocation(line: 85, column: 19, scope: !27)
!93 = !DILocation(line: 85, column: 31, scope: !27)
!94 = !DILocation(line: 85, column: 5, scope: !27)
!95 = !DILocation(line: 86, column: 15, scope: !27)
!96 = !DILocation(line: 86, column: 17, scope: !27)
!97 = !DILocation(line: 86, column: 38, scope: !27)
!98 = !DILocation(line: 86, column: 37, scope: !27)
!99 = !DILocation(line: 86, column: 40, scope: !27)
!100 = !DILocation(line: 86, column: 29, scope: !27)
!101 = !DILocation(line: 86, column: 12, scope: !27)
!102 = !DILocation(line: 87, column: 23, scope: !27)
!103 = !DILocation(line: 87, column: 25, scope: !27)
!104 = !DILocation(line: 87, column: 24, scope: !27)
!105 = !DILocation(line: 87, column: 14, scope: !27)
!106 = !DILocation(line: 87, column: 12, scope: !27)
!107 = !DILocation(line: 88, column: 19, scope: !27)
!108 = !DILocation(line: 88, column: 9, scope: !27)
!109 = !DILocation(line: 88, column: 17, scope: !27)
!110 = !DILocation(line: 89, column: 7, scope: !27)
!111 = !DILocation(line: 89, column: 8, scope: !27)
!112 = !DILocation(line: 89, column: 42, scope: !27)
!113 = !DILocation(line: 89, column: 28, scope: !27)
!114 = !DILocation(line: 89, column: 27, scope: !27)
!115 = !DILocation(line: 89, column: 19, scope: !27)
!116 = !DILocation(line: 89, column: 5, scope: !27)
!117 = !DILocation(line: 90, column: 10, scope: !27)
!118 = !DILocation(line: 90, column: 12, scope: !27)
!119 = !DILocation(line: 90, column: 13, scope: !27)
!120 = !DILocation(line: 90, column: 11, scope: !27)
!121 = !DILocation(line: 90, column: 2, scope: !27)
!122 = !DILocation(line: 91, column: 1, scope: !27)
!123 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 95, type: !124, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!124 = !DISubroutineType(types: !125)
!125 = !{!7}
!126 = !DILocalVariable(name: "a0", scope: !123, file: !13, line: 96, type: !9)
!127 = !DILocation(line: 96, column: 12, scope: !123)
!128 = !DILocation(line: 97, column: 24, scope: !123)
!129 = !DILocation(line: 97, column: 5, scope: !123)
!130 = !DILocalVariable(name: "r", scope: !123, file: !13, line: 99, type: !9)
!131 = !DILocation(line: 99, column: 12, scope: !123)
!132 = !DILocation(line: 99, column: 32, scope: !123)
!133 = !DILocation(line: 99, column: 16, scope: !123)
!134 = !DILocation(line: 100, column: 5, scope: !123)
