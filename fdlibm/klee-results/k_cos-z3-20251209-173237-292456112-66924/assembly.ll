; ModuleID = 'k_cos.bc'
source_filename = "./k_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__kernel_cos(double %x, double %y) #0 !dbg !30 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %a = alloca double, align 8
  %hz = alloca double, align 8
  %z = alloca double, align 8
  %r = alloca double, align 8
  %qx = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata double* %a, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata double* %hz, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %z, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata double* %r, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata double* %qx, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = bitcast double* %x.addr to i32*, !dbg !49
  %1 = load i32, i32* %0, align 8, !dbg !49
  %and = and i32 %1, 2147483647, !dbg !50
  store i32 %and, i32* %ix, align 4, !dbg !51
  %2 = load i32, i32* %ix, align 4, !dbg !52
  %cmp = icmp slt i32 %2, 1044381696, !dbg !54
  br i1 %cmp, label %if.then, label %if.end4, !dbg !55

if.then:                                          ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !56
  %conv = fptosi double %3 to i32, !dbg !59
  %cmp1 = icmp eq i32 %conv, 0, !dbg !60
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !61

if.then3:                                         ; preds = %if.then
  store double 1.000000e+00, double* %retval, align 8, !dbg !62
  br label %return, !dbg !62

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !63

if.end4:                                          ; preds = %if.end, %entry
  %4 = load double, double* %x.addr, align 8, !dbg !64
  %5 = load double, double* %x.addr, align 8, !dbg !65
  %mul = fmul double %4, %5, !dbg !66
  store double %mul, double* %z, align 8, !dbg !67
  %6 = load double, double* %z, align 8, !dbg !68
  %7 = load double, double* %z, align 8, !dbg !69
  %8 = load double, double* %z, align 8, !dbg !70
  %9 = load double, double* %z, align 8, !dbg !71
  %10 = load double, double* %z, align 8, !dbg !72
  %11 = load double, double* %z, align 8, !dbg !73
  %mul5 = fmul double %11, 0xBDA8FAE9BE8838D4, !dbg !74
  %add = fadd double 0x3E21EE9EBDB4B1C4, %mul5, !dbg !75
  %mul6 = fmul double %10, %add, !dbg !76
  %add7 = fadd double 0xBE927E4F809C52AD, %mul6, !dbg !77
  %mul8 = fmul double %9, %add7, !dbg !78
  %add9 = fadd double 0x3EFA01A019CB1590, %mul8, !dbg !79
  %mul10 = fmul double %8, %add9, !dbg !80
  %add11 = fadd double 0xBF56C16C16C15177, %mul10, !dbg !81
  %mul12 = fmul double %7, %add11, !dbg !82
  %add13 = fadd double 0x3FA555555555554C, %mul12, !dbg !83
  %mul14 = fmul double %6, %add13, !dbg !84
  store double %mul14, double* %r, align 8, !dbg !85
  %12 = load i32, i32* %ix, align 4, !dbg !86
  %cmp15 = icmp slt i32 %12, 1070805811, !dbg !88
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !89

if.then17:                                        ; preds = %if.end4
  %13 = load double, double* %z, align 8, !dbg !90
  %mul18 = fmul double 5.000000e-01, %13, !dbg !91
  %14 = load double, double* %z, align 8, !dbg !92
  %15 = load double, double* %r, align 8, !dbg !93
  %mul19 = fmul double %14, %15, !dbg !94
  %16 = load double, double* %x.addr, align 8, !dbg !95
  %17 = load double, double* %y.addr, align 8, !dbg !96
  %mul20 = fmul double %16, %17, !dbg !97
  %sub = fsub double %mul19, %mul20, !dbg !98
  %sub21 = fsub double %mul18, %sub, !dbg !99
  %sub22 = fsub double 1.000000e+00, %sub21, !dbg !100
  store double %sub22, double* %retval, align 8, !dbg !101
  br label %return, !dbg !101

if.else:                                          ; preds = %if.end4
  %18 = load i32, i32* %ix, align 4, !dbg !102
  %cmp23 = icmp sgt i32 %18, 1072234496, !dbg !105
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !106

if.then25:                                        ; preds = %if.else
  store double 2.812500e-01, double* %qx, align 8, !dbg !107
  br label %if.end28, !dbg !109

if.else26:                                        ; preds = %if.else
  %19 = load i32, i32* %ix, align 4, !dbg !110
  %sub27 = sub nsw i32 %19, 2097152, !dbg !112
  %20 = bitcast double* %qx to i32*, !dbg !113
  store i32 %sub27, i32* %20, align 8, !dbg !114
  %21 = bitcast double* %qx to i32*, !dbg !115
  %add.ptr = getelementptr inbounds i32, i32* %21, i64 1, !dbg !115
  store i32 0, i32* %add.ptr, align 4, !dbg !116
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  %22 = load double, double* %z, align 8, !dbg !117
  %mul29 = fmul double 5.000000e-01, %22, !dbg !118
  %23 = load double, double* %qx, align 8, !dbg !119
  %sub30 = fsub double %mul29, %23, !dbg !120
  store double %sub30, double* %hz, align 8, !dbg !121
  %24 = load double, double* %qx, align 8, !dbg !122
  %sub31 = fsub double 1.000000e+00, %24, !dbg !123
  store double %sub31, double* %a, align 8, !dbg !124
  %25 = load double, double* %a, align 8, !dbg !125
  %26 = load double, double* %hz, align 8, !dbg !126
  %27 = load double, double* %z, align 8, !dbg !127
  %28 = load double, double* %r, align 8, !dbg !128
  %mul32 = fmul double %27, %28, !dbg !129
  %29 = load double, double* %x.addr, align 8, !dbg !130
  %30 = load double, double* %y.addr, align 8, !dbg !131
  %mul33 = fmul double %29, %30, !dbg !132
  %sub34 = fsub double %mul32, %mul33, !dbg !133
  %sub35 = fsub double %26, %sub34, !dbg !134
  %sub36 = fsub double %25, %sub35, !dbg !135
  store double %sub36, double* %retval, align 8, !dbg !136
  br label %return, !dbg !136

return:                                           ; preds = %if.end28, %if.then17, %if.then3
  %31 = load double, double* %retval, align 8, !dbg !137
  ret double %31, !dbg !137
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !138 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = bitcast double* %a0 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !144
  call void @llvm.dbg.declare(metadata double* %a1, metadata !145, metadata !DIExpression()), !dbg !146
  %1 = bitcast double* %a1 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !148
  call void @llvm.dbg.declare(metadata double* %r, metadata !149, metadata !DIExpression()), !dbg !150
  %2 = load double, double* %a0, align 8, !dbg !151
  %3 = load double, double* %a1, align 8, !dbg !152
  %call = call double @__kernel_cos(double %2, double %3), !dbg !153
  store double %call, double* %r, align 8, !dbg !150
  ret i32 0, !dbg !154
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "k_cos.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16, !18, !20, !22}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 56, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./k_cos.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4586165620538955084, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "C1", scope: !0, file: !9, line: 57, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 13787419979223748983, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "C2", scope: !0, file: !9, line: 58, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4537941361668330896, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "C3", scope: !0, file: !9, line: 59, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13732177093731308205, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "C4", scope: !0, file: !9, line: 60, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4477121870137962948, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "C5", scope: !0, file: !9, line: 61, type: !10, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13666448951086692564, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "C6", scope: !0, file: !9, line: 62, type: !10, isLocal: true, isDefinition: true)
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!30 = distinct !DISubprogram(name: "__kernel_cos", scope: !9, file: !9, line: 65, type: !31, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!11, !11, !11}
!33 = !DILocalVariable(name: "x", arg: 1, scope: !30, file: !9, line: 65, type: !11)
!34 = !DILocation(line: 65, column: 29, scope: !30)
!35 = !DILocalVariable(name: "y", arg: 2, scope: !30, file: !9, line: 65, type: !11)
!36 = !DILocation(line: 65, column: 39, scope: !30)
!37 = !DILocalVariable(name: "a", scope: !30, file: !9, line: 71, type: !11)
!38 = !DILocation(line: 71, column: 9, scope: !30)
!39 = !DILocalVariable(name: "hz", scope: !30, file: !9, line: 71, type: !11)
!40 = !DILocation(line: 71, column: 11, scope: !30)
!41 = !DILocalVariable(name: "z", scope: !30, file: !9, line: 71, type: !11)
!42 = !DILocation(line: 71, column: 14, scope: !30)
!43 = !DILocalVariable(name: "r", scope: !30, file: !9, line: 71, type: !11)
!44 = !DILocation(line: 71, column: 16, scope: !30)
!45 = !DILocalVariable(name: "qx", scope: !30, file: !9, line: 71, type: !11)
!46 = !DILocation(line: 71, column: 18, scope: !30)
!47 = !DILocalVariable(name: "ix", scope: !30, file: !9, line: 72, type: !5)
!48 = !DILocation(line: 72, column: 6, scope: !30)
!49 = !DILocation(line: 73, column: 7, scope: !30)
!50 = !DILocation(line: 73, column: 14, scope: !30)
!51 = !DILocation(line: 73, column: 5, scope: !30)
!52 = !DILocation(line: 74, column: 5, scope: !53)
!53 = distinct !DILexicalBlock(scope: !30, file: !9, line: 74, column: 5)
!54 = !DILocation(line: 74, column: 7, scope: !53)
!55 = !DILocation(line: 74, column: 5, scope: !30)
!56 = !DILocation(line: 75, column: 15, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !9, line: 75, column: 9)
!58 = distinct !DILexicalBlock(scope: !53, file: !9, line: 74, column: 20)
!59 = !DILocation(line: 75, column: 10, scope: !57)
!60 = !DILocation(line: 75, column: 17, scope: !57)
!61 = !DILocation(line: 75, column: 9, scope: !58)
!62 = !DILocation(line: 75, column: 22, scope: !57)
!63 = !DILocation(line: 76, column: 2, scope: !58)
!64 = !DILocation(line: 77, column: 7, scope: !30)
!65 = !DILocation(line: 77, column: 9, scope: !30)
!66 = !DILocation(line: 77, column: 8, scope: !30)
!67 = !DILocation(line: 77, column: 5, scope: !30)
!68 = !DILocation(line: 78, column: 7, scope: !30)
!69 = !DILocation(line: 78, column: 13, scope: !30)
!70 = !DILocation(line: 78, column: 19, scope: !30)
!71 = !DILocation(line: 78, column: 25, scope: !30)
!72 = !DILocation(line: 78, column: 31, scope: !30)
!73 = !DILocation(line: 78, column: 37, scope: !30)
!74 = !DILocation(line: 78, column: 38, scope: !30)
!75 = !DILocation(line: 78, column: 36, scope: !30)
!76 = !DILocation(line: 78, column: 32, scope: !30)
!77 = !DILocation(line: 78, column: 30, scope: !30)
!78 = !DILocation(line: 78, column: 26, scope: !30)
!79 = !DILocation(line: 78, column: 24, scope: !30)
!80 = !DILocation(line: 78, column: 20, scope: !30)
!81 = !DILocation(line: 78, column: 18, scope: !30)
!82 = !DILocation(line: 78, column: 14, scope: !30)
!83 = !DILocation(line: 78, column: 12, scope: !30)
!84 = !DILocation(line: 78, column: 8, scope: !30)
!85 = !DILocation(line: 78, column: 5, scope: !30)
!86 = !DILocation(line: 79, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !30, file: !9, line: 79, column: 5)
!88 = !DILocation(line: 79, column: 8, scope: !87)
!89 = !DILocation(line: 79, column: 5, scope: !30)
!90 = !DILocation(line: 80, column: 24, scope: !87)
!91 = !DILocation(line: 80, column: 23, scope: !87)
!92 = !DILocation(line: 80, column: 29, scope: !87)
!93 = !DILocation(line: 80, column: 31, scope: !87)
!94 = !DILocation(line: 80, column: 30, scope: !87)
!95 = !DILocation(line: 80, column: 35, scope: !87)
!96 = !DILocation(line: 80, column: 37, scope: !87)
!97 = !DILocation(line: 80, column: 36, scope: !87)
!98 = !DILocation(line: 80, column: 33, scope: !87)
!99 = !DILocation(line: 80, column: 26, scope: !87)
!100 = !DILocation(line: 80, column: 17, scope: !87)
!101 = !DILocation(line: 80, column: 6, scope: !87)
!102 = !DILocation(line: 82, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !9, line: 82, column: 9)
!104 = distinct !DILexicalBlock(scope: !87, file: !9, line: 81, column: 7)
!105 = !DILocation(line: 82, column: 12, scope: !103)
!106 = !DILocation(line: 82, column: 9, scope: !104)
!107 = !DILocation(line: 83, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !9, line: 82, column: 26)
!109 = !DILocation(line: 84, column: 6, scope: !108)
!110 = !DILocation(line: 85, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !9, line: 84, column: 13)
!112 = !DILocation(line: 85, column: 23, scope: !111)
!113 = !DILocation(line: 85, column: 10, scope: !111)
!114 = !DILocation(line: 85, column: 19, scope: !111)
!115 = !DILocation(line: 86, column: 10, scope: !111)
!116 = !DILocation(line: 86, column: 19, scope: !111)
!117 = !DILocation(line: 88, column: 15, scope: !104)
!118 = !DILocation(line: 88, column: 14, scope: !104)
!119 = !DILocation(line: 88, column: 17, scope: !104)
!120 = !DILocation(line: 88, column: 16, scope: !104)
!121 = !DILocation(line: 88, column: 9, scope: !104)
!122 = !DILocation(line: 89, column: 15, scope: !104)
!123 = !DILocation(line: 89, column: 14, scope: !104)
!124 = !DILocation(line: 89, column: 9, scope: !104)
!125 = !DILocation(line: 90, column: 13, scope: !104)
!126 = !DILocation(line: 90, column: 18, scope: !104)
!127 = !DILocation(line: 90, column: 24, scope: !104)
!128 = !DILocation(line: 90, column: 26, scope: !104)
!129 = !DILocation(line: 90, column: 25, scope: !104)
!130 = !DILocation(line: 90, column: 28, scope: !104)
!131 = !DILocation(line: 90, column: 30, scope: !104)
!132 = !DILocation(line: 90, column: 29, scope: !104)
!133 = !DILocation(line: 90, column: 27, scope: !104)
!134 = !DILocation(line: 90, column: 21, scope: !104)
!135 = !DILocation(line: 90, column: 15, scope: !104)
!136 = !DILocation(line: 90, column: 6, scope: !104)
!137 = !DILocation(line: 92, column: 1, scope: !30)
!138 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 96, type: !139, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!139 = !DISubroutineType(types: !140)
!140 = !{!5}
!141 = !DILocalVariable(name: "a0", scope: !138, file: !9, line: 97, type: !11)
!142 = !DILocation(line: 97, column: 12, scope: !138)
!143 = !DILocation(line: 98, column: 24, scope: !138)
!144 = !DILocation(line: 98, column: 5, scope: !138)
!145 = !DILocalVariable(name: "a1", scope: !138, file: !9, line: 99, type: !11)
!146 = !DILocation(line: 99, column: 12, scope: !138)
!147 = !DILocation(line: 100, column: 24, scope: !138)
!148 = !DILocation(line: 100, column: 5, scope: !138)
!149 = !DILocalVariable(name: "r", scope: !138, file: !9, line: 102, type: !11)
!150 = !DILocation(line: 102, column: 12, scope: !138)
!151 = !DILocation(line: 102, column: 29, scope: !138)
!152 = !DILocation(line: 102, column: 33, scope: !138)
!153 = !DILocation(line: 102, column: 16, scope: !138)
!154 = !DILocation(line: 103, column: 5, scope: !138)
