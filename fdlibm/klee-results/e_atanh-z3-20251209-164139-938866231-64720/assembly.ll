; ModuleID = 'e_atanh.bc'
source_filename = "./e_atanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = internal global double 0.000000e+00, align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_atanh(double %x) #0 !dbg !22 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %lx = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %t, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %lx, metadata !33, metadata !DIExpression()), !dbg !35
  %0 = bitcast double* %x.addr to i32*, !dbg !36
  %1 = load i32, i32* %0, align 8, !dbg !36
  store i32 %1, i32* %hx, align 4, !dbg !37
  %2 = bitcast double* %x.addr to i32*, !dbg !38
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1, !dbg !38
  %3 = load i32, i32* %add.ptr, align 4, !dbg !38
  store i32 %3, i32* %lx, align 4, !dbg !39
  %4 = load i32, i32* %hx, align 4, !dbg !40
  %and = and i32 %4, 2147483647, !dbg !41
  store i32 %and, i32* %ix, align 4, !dbg !42
  %5 = load i32, i32* %ix, align 4, !dbg !43
  %6 = load i32, i32* %lx, align 4, !dbg !45
  %7 = load i32, i32* %lx, align 4, !dbg !46
  %sub = sub i32 0, %7, !dbg !47
  %or = or i32 %6, %sub, !dbg !48
  %shr = lshr i32 %or, 31, !dbg !49
  %or1 = or i32 %5, %shr, !dbg !50
  %cmp = icmp ugt i32 %or1, 1072693248, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %8 = load double, double* %x.addr, align 8, !dbg !53
  %9 = load double, double* %x.addr, align 8, !dbg !54
  %sub2 = fsub double %8, %9, !dbg !55
  %10 = load double, double* %x.addr, align 8, !dbg !56
  %11 = load double, double* %x.addr, align 8, !dbg !57
  %sub3 = fsub double %10, %11, !dbg !58
  %div = fdiv double %sub2, %sub3, !dbg !59
  store double %div, double* %retval, align 8, !dbg !60
  br label %return, !dbg !60

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %ix, align 4, !dbg !61
  %cmp4 = icmp eq i32 %12, 1072693248, !dbg !63
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !64

if.then5:                                         ; preds = %if.end
  %13 = load double, double* %x.addr, align 8, !dbg !65
  %14 = load double, double* @zero, align 8, !dbg !66
  %div6 = fdiv double %13, %14, !dbg !67
  store double %div6, double* %retval, align 8, !dbg !68
  br label %return, !dbg !68

if.end7:                                          ; preds = %if.end
  %15 = load i32, i32* %ix, align 4, !dbg !69
  %cmp8 = icmp slt i32 %15, 1043333120, !dbg !71
  br i1 %cmp8, label %land.lhs.true, label %if.end11, !dbg !72

land.lhs.true:                                    ; preds = %if.end7
  %16 = load double, double* %x.addr, align 8, !dbg !73
  %add = fadd double 1.000000e+300, %16, !dbg !74
  %17 = load double, double* @zero, align 8, !dbg !75
  %cmp9 = fcmp ogt double %add, %17, !dbg !76
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !77

if.then10:                                        ; preds = %land.lhs.true
  %18 = load double, double* %x.addr, align 8, !dbg !78
  store double %18, double* %retval, align 8, !dbg !79
  br label %return, !dbg !79

if.end11:                                         ; preds = %land.lhs.true, %if.end7
  %19 = load i32, i32* %ix, align 4, !dbg !80
  %20 = bitcast double* %x.addr to i32*, !dbg !81
  store i32 %19, i32* %20, align 8, !dbg !82
  %21 = load i32, i32* %ix, align 4, !dbg !83
  %cmp12 = icmp slt i32 %21, 1071644672, !dbg !85
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !86

if.then13:                                        ; preds = %if.end11
  %22 = load double, double* %x.addr, align 8, !dbg !87
  %23 = load double, double* %x.addr, align 8, !dbg !89
  %add14 = fadd double %22, %23, !dbg !90
  store double %add14, double* %t, align 8, !dbg !91
  %24 = load double, double* %t, align 8, !dbg !92
  %25 = load double, double* %t, align 8, !dbg !93
  %26 = load double, double* %x.addr, align 8, !dbg !94
  %mul = fmul double %25, %26, !dbg !95
  %27 = load double, double* %x.addr, align 8, !dbg !96
  %sub15 = fsub double 1.000000e+00, %27, !dbg !97
  %div16 = fdiv double %mul, %sub15, !dbg !98
  %add17 = fadd double %24, %div16, !dbg !99
  %call = call double @log1p(double %add17) #4, !dbg !100
  %mul18 = fmul double 5.000000e-01, %call, !dbg !101
  store double %mul18, double* %t, align 8, !dbg !102
  br label %if.end24, !dbg !103

if.else:                                          ; preds = %if.end11
  %28 = load double, double* %x.addr, align 8, !dbg !104
  %29 = load double, double* %x.addr, align 8, !dbg !105
  %add19 = fadd double %28, %29, !dbg !106
  %30 = load double, double* %x.addr, align 8, !dbg !107
  %sub20 = fsub double 1.000000e+00, %30, !dbg !108
  %div21 = fdiv double %add19, %sub20, !dbg !109
  %call22 = call double @log1p(double %div21) #4, !dbg !110
  %mul23 = fmul double 5.000000e-01, %call22, !dbg !111
  store double %mul23, double* %t, align 8, !dbg !112
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then13
  %31 = load i32, i32* %hx, align 4, !dbg !113
  %cmp25 = icmp sge i32 %31, 0, !dbg !115
  br i1 %cmp25, label %if.then26, label %if.else27, !dbg !116

if.then26:                                        ; preds = %if.end24
  %32 = load double, double* %t, align 8, !dbg !117
  store double %32, double* %retval, align 8, !dbg !118
  br label %return, !dbg !118

if.else27:                                        ; preds = %if.end24
  %33 = load double, double* %t, align 8, !dbg !119
  %fneg = fneg double %33, !dbg !120
  store double %fneg, double* %retval, align 8, !dbg !121
  br label %return, !dbg !121

return:                                           ; preds = %if.else27, %if.then26, %if.then10, %if.then5, %if.then
  %34 = load double, double* %retval, align 8, !dbg !122
  ret double %34, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local double @log1p(double) #2

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
  %call = call double @__ieee754_atanh(double %1), !dbg !133
  store double %call, double* %r, align 8, !dbg !131
  ret i32 0, !dbg !134
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !11, line: 41, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "e_atanh.c", directory: "/home/klee/logic_bombs/fdlibm")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !14, !0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !11, line: 36, type: !12, isLocal: true, isDefinition: true)
!11 = !DIFile(filename: "./e_atanh.c", directory: "/home/klee/logic_bombs/fdlibm")
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !11, line: 36, type: !12, isLocal: true, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!22 = distinct !DISubprogram(name: "__ieee754_atanh", scope: !11, file: !11, line: 44, type: !23, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!23 = !DISubroutineType(types: !24)
!24 = !{!13, !13}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !22, file: !11, line: 44, type: !13)
!26 = !DILocation(line: 44, column: 32, scope: !22)
!27 = !DILocalVariable(name: "t", scope: !22, file: !11, line: 50, type: !13)
!28 = !DILocation(line: 50, column: 9, scope: !22)
!29 = !DILocalVariable(name: "hx", scope: !22, file: !11, line: 51, type: !7)
!30 = !DILocation(line: 51, column: 6, scope: !22)
!31 = !DILocalVariable(name: "ix", scope: !22, file: !11, line: 51, type: !7)
!32 = !DILocation(line: 51, column: 9, scope: !22)
!33 = !DILocalVariable(name: "lx", scope: !22, file: !11, line: 52, type: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 52, column: 11, scope: !22)
!36 = !DILocation(line: 53, column: 7, scope: !22)
!37 = !DILocation(line: 53, column: 5, scope: !22)
!38 = !DILocation(line: 54, column: 7, scope: !22)
!39 = !DILocation(line: 54, column: 5, scope: !22)
!40 = !DILocation(line: 55, column: 7, scope: !22)
!41 = !DILocation(line: 55, column: 9, scope: !22)
!42 = !DILocation(line: 55, column: 5, scope: !22)
!43 = !DILocation(line: 56, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !22, file: !11, line: 56, column: 6)
!45 = !DILocation(line: 56, column: 12, scope: !44)
!46 = !DILocation(line: 56, column: 17, scope: !44)
!47 = !DILocation(line: 56, column: 16, scope: !44)
!48 = !DILocation(line: 56, column: 14, scope: !44)
!49 = !DILocation(line: 56, column: 21, scope: !44)
!50 = !DILocation(line: 56, column: 9, scope: !44)
!51 = !DILocation(line: 56, column: 27, scope: !44)
!52 = !DILocation(line: 56, column: 6, scope: !22)
!53 = !DILocation(line: 57, column: 14, scope: !44)
!54 = !DILocation(line: 57, column: 16, scope: !44)
!55 = !DILocation(line: 57, column: 15, scope: !44)
!56 = !DILocation(line: 57, column: 20, scope: !44)
!57 = !DILocation(line: 57, column: 22, scope: !44)
!58 = !DILocation(line: 57, column: 21, scope: !44)
!59 = !DILocation(line: 57, column: 18, scope: !44)
!60 = !DILocation(line: 57, column: 6, scope: !44)
!61 = !DILocation(line: 58, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !22, file: !11, line: 58, column: 5)
!63 = !DILocation(line: 58, column: 7, scope: !62)
!64 = !DILocation(line: 58, column: 5, scope: !22)
!65 = !DILocation(line: 59, column: 13, scope: !62)
!66 = !DILocation(line: 59, column: 15, scope: !62)
!67 = !DILocation(line: 59, column: 14, scope: !62)
!68 = !DILocation(line: 59, column: 6, scope: !62)
!69 = !DILocation(line: 60, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !22, file: !11, line: 60, column: 5)
!71 = !DILocation(line: 60, column: 7, scope: !70)
!72 = !DILocation(line: 60, column: 18, scope: !70)
!73 = !DILocation(line: 60, column: 26, scope: !70)
!74 = !DILocation(line: 60, column: 25, scope: !70)
!75 = !DILocation(line: 60, column: 29, scope: !70)
!76 = !DILocation(line: 60, column: 28, scope: !70)
!77 = !DILocation(line: 60, column: 5, scope: !22)
!78 = !DILocation(line: 60, column: 42, scope: !70)
!79 = !DILocation(line: 60, column: 35, scope: !70)
!80 = !DILocation(line: 61, column: 12, scope: !22)
!81 = !DILocation(line: 61, column: 2, scope: !22)
!82 = !DILocation(line: 61, column: 10, scope: !22)
!83 = !DILocation(line: 62, column: 5, scope: !84)
!84 = distinct !DILexicalBlock(scope: !22, file: !11, line: 62, column: 5)
!85 = !DILocation(line: 62, column: 7, scope: !84)
!86 = !DILocation(line: 62, column: 5, scope: !22)
!87 = !DILocation(line: 63, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !11, line: 62, column: 20)
!89 = !DILocation(line: 63, column: 12, scope: !88)
!90 = !DILocation(line: 63, column: 11, scope: !88)
!91 = !DILocation(line: 63, column: 8, scope: !88)
!92 = !DILocation(line: 64, column: 20, scope: !88)
!93 = !DILocation(line: 64, column: 22, scope: !88)
!94 = !DILocation(line: 64, column: 24, scope: !88)
!95 = !DILocation(line: 64, column: 23, scope: !88)
!96 = !DILocation(line: 64, column: 31, scope: !88)
!97 = !DILocation(line: 64, column: 30, scope: !88)
!98 = !DILocation(line: 64, column: 25, scope: !88)
!99 = !DILocation(line: 64, column: 21, scope: !88)
!100 = !DILocation(line: 64, column: 14, scope: !88)
!101 = !DILocation(line: 64, column: 13, scope: !88)
!102 = !DILocation(line: 64, column: 8, scope: !88)
!103 = !DILocation(line: 65, column: 2, scope: !88)
!104 = !DILocation(line: 66, column: 21, scope: !84)
!105 = !DILocation(line: 66, column: 23, scope: !84)
!106 = !DILocation(line: 66, column: 22, scope: !84)
!107 = !DILocation(line: 66, column: 31, scope: !84)
!108 = !DILocation(line: 66, column: 30, scope: !84)
!109 = !DILocation(line: 66, column: 25, scope: !84)
!110 = !DILocation(line: 66, column: 14, scope: !84)
!111 = !DILocation(line: 66, column: 13, scope: !84)
!112 = !DILocation(line: 66, column: 8, scope: !84)
!113 = !DILocation(line: 67, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !22, file: !11, line: 67, column: 5)
!115 = !DILocation(line: 67, column: 7, scope: !114)
!116 = !DILocation(line: 67, column: 5, scope: !22)
!117 = !DILocation(line: 67, column: 19, scope: !114)
!118 = !DILocation(line: 67, column: 12, scope: !114)
!119 = !DILocation(line: 67, column: 35, scope: !114)
!120 = !DILocation(line: 67, column: 34, scope: !114)
!121 = !DILocation(line: 67, column: 27, scope: !114)
!122 = !DILocation(line: 68, column: 1, scope: !22)
!123 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 72, type: !124, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!124 = !DISubroutineType(types: !125)
!125 = !{!7}
!126 = !DILocalVariable(name: "a0", scope: !123, file: !11, line: 73, type: !13)
!127 = !DILocation(line: 73, column: 12, scope: !123)
!128 = !DILocation(line: 74, column: 24, scope: !123)
!129 = !DILocation(line: 74, column: 5, scope: !123)
!130 = !DILocalVariable(name: "r", scope: !123, file: !11, line: 76, type: !13)
!131 = !DILocation(line: 76, column: 12, scope: !123)
!132 = !DILocation(line: 76, column: 32, scope: !123)
!133 = !DILocation(line: 76, column: 16, scope: !123)
!134 = !DILocation(line: 77, column: 5, scope: !123)
