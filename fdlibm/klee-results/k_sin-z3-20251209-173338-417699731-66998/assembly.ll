; ModuleID = 'k_sin.bc'
source_filename = "./k_sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__kernel_sin(double %x, double %y, i32 %iy) #0 !dbg !30 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %iy.addr = alloca i32, align 4
  %z = alloca double, align 8
  %r = alloca double, align 8
  %v = alloca double, align 8
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store double %y, double* %y.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %iy, i32* %iy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iy.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata double* %z, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %r, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata double* %v, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = bitcast double* %x.addr to i32*, !dbg !47
  %1 = load i32, i32* %0, align 8, !dbg !47
  %and = and i32 %1, 2147483647, !dbg !48
  store i32 %and, i32* %ix, align 4, !dbg !49
  %2 = load i32, i32* %ix, align 4, !dbg !50
  %cmp = icmp slt i32 %2, 1044381696, !dbg !52
  br i1 %cmp, label %if.then, label %if.end4, !dbg !53

if.then:                                          ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !54
  %conv = fptosi double %3 to i32, !dbg !57
  %cmp1 = icmp eq i32 %conv, 0, !dbg !58
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !59

if.then3:                                         ; preds = %if.then
  %4 = load double, double* %x.addr, align 8, !dbg !60
  store double %4, double* %retval, align 8, !dbg !61
  br label %return, !dbg !61

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !62

if.end4:                                          ; preds = %if.end, %entry
  %5 = load double, double* %x.addr, align 8, !dbg !63
  %6 = load double, double* %x.addr, align 8, !dbg !64
  %mul = fmul double %5, %6, !dbg !65
  store double %mul, double* %z, align 8, !dbg !66
  %7 = load double, double* %z, align 8, !dbg !67
  %8 = load double, double* %x.addr, align 8, !dbg !68
  %mul5 = fmul double %7, %8, !dbg !69
  store double %mul5, double* %v, align 8, !dbg !70
  %9 = load double, double* %z, align 8, !dbg !71
  %10 = load double, double* %z, align 8, !dbg !72
  %11 = load double, double* %z, align 8, !dbg !73
  %12 = load double, double* %z, align 8, !dbg !74
  %mul6 = fmul double %12, 0x3DE5D93A5ACFD57C, !dbg !75
  %add = fadd double 0xBE5AE5E68A2B9CEB, %mul6, !dbg !76
  %mul7 = fmul double %11, %add, !dbg !77
  %add8 = fadd double 0x3EC71DE357B1FE7D, %mul7, !dbg !78
  %mul9 = fmul double %10, %add8, !dbg !79
  %add10 = fadd double 0xBF2A01A019C161D5, %mul9, !dbg !80
  %mul11 = fmul double %9, %add10, !dbg !81
  %add12 = fadd double 0x3F8111111110F8A6, %mul11, !dbg !82
  store double %add12, double* %r, align 8, !dbg !83
  %13 = load i32, i32* %iy.addr, align 4, !dbg !84
  %cmp13 = icmp eq i32 %13, 0, !dbg !86
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !87

if.then15:                                        ; preds = %if.end4
  %14 = load double, double* %x.addr, align 8, !dbg !88
  %15 = load double, double* %v, align 8, !dbg !89
  %16 = load double, double* %z, align 8, !dbg !90
  %17 = load double, double* %r, align 8, !dbg !91
  %mul16 = fmul double %16, %17, !dbg !92
  %add17 = fadd double 0xBFC5555555555549, %mul16, !dbg !93
  %mul18 = fmul double %15, %add17, !dbg !94
  %add19 = fadd double %14, %mul18, !dbg !95
  store double %add19, double* %retval, align 8, !dbg !96
  br label %return, !dbg !96

if.else:                                          ; preds = %if.end4
  %18 = load double, double* %x.addr, align 8, !dbg !97
  %19 = load double, double* %z, align 8, !dbg !98
  %20 = load double, double* %y.addr, align 8, !dbg !99
  %mul20 = fmul double 5.000000e-01, %20, !dbg !100
  %21 = load double, double* %v, align 8, !dbg !101
  %22 = load double, double* %r, align 8, !dbg !102
  %mul21 = fmul double %21, %22, !dbg !103
  %sub = fsub double %mul20, %mul21, !dbg !104
  %mul22 = fmul double %19, %sub, !dbg !105
  %23 = load double, double* %y.addr, align 8, !dbg !106
  %sub23 = fsub double %mul22, %23, !dbg !107
  %24 = load double, double* %v, align 8, !dbg !108
  %mul24 = fmul double %24, 0xBFC5555555555549, !dbg !109
  %sub25 = fsub double %sub23, %mul24, !dbg !110
  %sub26 = fsub double %18, %sub25, !dbg !111
  store double %sub26, double* %retval, align 8, !dbg !112
  br label %return, !dbg !112

return:                                           ; preds = %if.else, %if.then15, %if.then3
  %25 = load double, double* %retval, align 8, !dbg !113
  ret double %25, !dbg !113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = bitcast double* %a0 to i8*, !dbg !119
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !120
  call void @llvm.dbg.declare(metadata double* %a1, metadata !121, metadata !DIExpression()), !dbg !122
  %1 = bitcast double* %a1 to i8*, !dbg !123
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %a2, metadata !125, metadata !DIExpression()), !dbg !126
  %2 = bitcast i32* %a2 to i8*, !dbg !127
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !128
  call void @llvm.dbg.declare(metadata double* %r, metadata !129, metadata !DIExpression()), !dbg !130
  %3 = load double, double* %a0, align 8, !dbg !131
  %4 = load double, double* %a1, align 8, !dbg !132
  %5 = load i32, i32* %a2, align 4, !dbg !133
  %call = call double @__kernel_sin(double %3, double %4, i32 %5), !dbg !134
  store double %call, double* %r, align 8, !dbg !130
  ret i32 0, !dbg !135
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "k_sin.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14, !16, !18, !20, !22}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4575957461383575718, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "S2", scope: !0, file: !9, line: 51, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./k_sin.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 13774824197404582357, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "S3", scope: !0, file: !9, line: 52, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4523617212983017085, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "S4", scope: !0, file: !9, line: 53, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 13716528393433619691, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "S5", scope: !0, file: !9, line: 54, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4460209850635244924, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "S6", scope: !0, file: !9, line: 55, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13818544856648471881, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "S1", scope: !0, file: !9, line: 50, type: !10, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !9, line: 49, type: !10, isLocal: true, isDefinition: true)
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!30 = distinct !DISubprogram(name: "__kernel_sin", scope: !9, file: !9, line: 58, type: !31, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{!11, !11, !11, !5}
!33 = !DILocalVariable(name: "x", arg: 1, scope: !30, file: !9, line: 58, type: !11)
!34 = !DILocation(line: 58, column: 29, scope: !30)
!35 = !DILocalVariable(name: "y", arg: 2, scope: !30, file: !9, line: 58, type: !11)
!36 = !DILocation(line: 58, column: 39, scope: !30)
!37 = !DILocalVariable(name: "iy", arg: 3, scope: !30, file: !9, line: 58, type: !5)
!38 = !DILocation(line: 58, column: 46, scope: !30)
!39 = !DILocalVariable(name: "z", scope: !30, file: !9, line: 64, type: !11)
!40 = !DILocation(line: 64, column: 9, scope: !30)
!41 = !DILocalVariable(name: "r", scope: !30, file: !9, line: 64, type: !11)
!42 = !DILocation(line: 64, column: 11, scope: !30)
!43 = !DILocalVariable(name: "v", scope: !30, file: !9, line: 64, type: !11)
!44 = !DILocation(line: 64, column: 13, scope: !30)
!45 = !DILocalVariable(name: "ix", scope: !30, file: !9, line: 65, type: !5)
!46 = !DILocation(line: 65, column: 6, scope: !30)
!47 = !DILocation(line: 66, column: 7, scope: !30)
!48 = !DILocation(line: 66, column: 14, scope: !30)
!49 = !DILocation(line: 66, column: 5, scope: !30)
!50 = !DILocation(line: 67, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !30, file: !9, line: 67, column: 5)
!52 = !DILocation(line: 67, column: 7, scope: !51)
!53 = !DILocation(line: 67, column: 5, scope: !30)
!54 = !DILocation(line: 68, column: 14, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !9, line: 68, column: 9)
!56 = distinct !DILexicalBlock(scope: !51, file: !9, line: 68, column: 5)
!57 = !DILocation(line: 68, column: 9, scope: !55)
!58 = !DILocation(line: 68, column: 15, scope: !55)
!59 = !DILocation(line: 68, column: 9, scope: !56)
!60 = !DILocation(line: 68, column: 27, scope: !55)
!61 = !DILocation(line: 68, column: 20, scope: !55)
!62 = !DILocation(line: 68, column: 29, scope: !56)
!63 = !DILocation(line: 69, column: 7, scope: !30)
!64 = !DILocation(line: 69, column: 9, scope: !30)
!65 = !DILocation(line: 69, column: 8, scope: !30)
!66 = !DILocation(line: 69, column: 4, scope: !30)
!67 = !DILocation(line: 70, column: 7, scope: !30)
!68 = !DILocation(line: 70, column: 9, scope: !30)
!69 = !DILocation(line: 70, column: 8, scope: !30)
!70 = !DILocation(line: 70, column: 4, scope: !30)
!71 = !DILocation(line: 71, column: 10, scope: !30)
!72 = !DILocation(line: 71, column: 16, scope: !30)
!73 = !DILocation(line: 71, column: 22, scope: !30)
!74 = !DILocation(line: 71, column: 28, scope: !30)
!75 = !DILocation(line: 71, column: 29, scope: !30)
!76 = !DILocation(line: 71, column: 27, scope: !30)
!77 = !DILocation(line: 71, column: 23, scope: !30)
!78 = !DILocation(line: 71, column: 21, scope: !30)
!79 = !DILocation(line: 71, column: 17, scope: !30)
!80 = !DILocation(line: 71, column: 15, scope: !30)
!81 = !DILocation(line: 71, column: 11, scope: !30)
!82 = !DILocation(line: 71, column: 9, scope: !30)
!83 = !DILocation(line: 71, column: 4, scope: !30)
!84 = !DILocation(line: 72, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !30, file: !9, line: 72, column: 5)
!86 = !DILocation(line: 72, column: 7, scope: !85)
!87 = !DILocation(line: 72, column: 5, scope: !30)
!88 = !DILocation(line: 72, column: 19, scope: !85)
!89 = !DILocation(line: 72, column: 21, scope: !85)
!90 = !DILocation(line: 72, column: 27, scope: !85)
!91 = !DILocation(line: 72, column: 29, scope: !85)
!92 = !DILocation(line: 72, column: 28, scope: !85)
!93 = !DILocation(line: 72, column: 26, scope: !85)
!94 = !DILocation(line: 72, column: 22, scope: !85)
!95 = !DILocation(line: 72, column: 20, scope: !85)
!96 = !DILocation(line: 72, column: 12, scope: !85)
!97 = !DILocation(line: 73, column: 19, scope: !85)
!98 = !DILocation(line: 73, column: 23, scope: !85)
!99 = !DILocation(line: 73, column: 31, scope: !85)
!100 = !DILocation(line: 73, column: 30, scope: !85)
!101 = !DILocation(line: 73, column: 33, scope: !85)
!102 = !DILocation(line: 73, column: 35, scope: !85)
!103 = !DILocation(line: 73, column: 34, scope: !85)
!104 = !DILocation(line: 73, column: 32, scope: !85)
!105 = !DILocation(line: 73, column: 24, scope: !85)
!106 = !DILocation(line: 73, column: 38, scope: !85)
!107 = !DILocation(line: 73, column: 37, scope: !85)
!108 = !DILocation(line: 73, column: 41, scope: !85)
!109 = !DILocation(line: 73, column: 42, scope: !85)
!110 = !DILocation(line: 73, column: 40, scope: !85)
!111 = !DILocation(line: 73, column: 20, scope: !85)
!112 = !DILocation(line: 73, column: 12, scope: !85)
!113 = !DILocation(line: 74, column: 1, scope: !30)
!114 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 78, type: !115, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!115 = !DISubroutineType(types: !116)
!116 = !{!5}
!117 = !DILocalVariable(name: "a0", scope: !114, file: !9, line: 79, type: !11)
!118 = !DILocation(line: 79, column: 12, scope: !114)
!119 = !DILocation(line: 80, column: 24, scope: !114)
!120 = !DILocation(line: 80, column: 5, scope: !114)
!121 = !DILocalVariable(name: "a1", scope: !114, file: !9, line: 81, type: !11)
!122 = !DILocation(line: 81, column: 12, scope: !114)
!123 = !DILocation(line: 82, column: 24, scope: !114)
!124 = !DILocation(line: 82, column: 5, scope: !114)
!125 = !DILocalVariable(name: "a2", scope: !114, file: !9, line: 83, type: !5)
!126 = !DILocation(line: 83, column: 9, scope: !114)
!127 = !DILocation(line: 84, column: 24, scope: !114)
!128 = !DILocation(line: 84, column: 5, scope: !114)
!129 = !DILocalVariable(name: "r", scope: !114, file: !9, line: 86, type: !11)
!130 = !DILocation(line: 86, column: 12, scope: !114)
!131 = !DILocation(line: 86, column: 29, scope: !114)
!132 = !DILocation(line: 86, column: 33, scope: !114)
!133 = !DILocation(line: 86, column: 37, scope: !114)
!134 = !DILocation(line: 86, column: 16, scope: !114)
!135 = !DILocation(line: 87, column: 5, scope: !114)
