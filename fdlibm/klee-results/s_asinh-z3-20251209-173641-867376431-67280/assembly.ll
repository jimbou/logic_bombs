; ModuleID = 's_asinh.bc'
source_filename = "./s_asinh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @asinh(double %x) #0 !dbg !22 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %t = alloca double, align 8
  %w = alloca double, align 8
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %t, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata double* %w, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %hx, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = bitcast double* %x.addr to i32*, !dbg !35
  %1 = load i32, i32* %0, align 8, !dbg !35
  store i32 %1, i32* %hx, align 4, !dbg !36
  %2 = load i32, i32* %hx, align 4, !dbg !37
  %and = and i32 %2, 2147483647, !dbg !38
  store i32 %and, i32* %ix, align 4, !dbg !39
  %3 = load i32, i32* %ix, align 4, !dbg !40
  %cmp = icmp sge i32 %3, 2146435072, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8, !dbg !44
  %5 = load double, double* %x.addr, align 8, !dbg !45
  %add = fadd double %4, %5, !dbg !46
  store double %add, double* %retval, align 8, !dbg !47
  br label %return, !dbg !47

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ix, align 4, !dbg !48
  %cmp1 = icmp slt i32 %6, 1043333120, !dbg !50
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !51

if.then2:                                         ; preds = %if.end
  %7 = load double, double* %x.addr, align 8, !dbg !52
  %add3 = fadd double 1.000000e+300, %7, !dbg !55
  %cmp4 = fcmp ogt double %add3, 1.000000e+00, !dbg !56
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !57

if.then5:                                         ; preds = %if.then2
  %8 = load double, double* %x.addr, align 8, !dbg !58
  store double %8, double* %retval, align 8, !dbg !59
  br label %return, !dbg !59

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !60

if.end7:                                          ; preds = %if.end6, %if.end
  %9 = load i32, i32* %ix, align 4, !dbg !61
  %cmp8 = icmp sgt i32 %9, 1102053376, !dbg !63
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !64

if.then9:                                         ; preds = %if.end7
  %10 = load double, double* %x.addr, align 8, !dbg !65
  %11 = call double @llvm.fabs.f64(double %10), !dbg !67
  %call = call double @__ieee754_log(double %11), !dbg !68
  %add10 = fadd double %call, 0x3FE62E42FEFA39EF, !dbg !69
  store double %add10, double* %w, align 8, !dbg !70
  br label %if.end28, !dbg !71

if.else:                                          ; preds = %if.end7
  %12 = load i32, i32* %ix, align 4, !dbg !72
  %cmp11 = icmp sgt i32 %12, 1073741824, !dbg !74
  br i1 %cmp11, label %if.then12, label %if.else19, !dbg !75

if.then12:                                        ; preds = %if.else
  %13 = load double, double* %x.addr, align 8, !dbg !76
  %14 = call double @llvm.fabs.f64(double %13), !dbg !78
  store double %14, double* %t, align 8, !dbg !79
  %15 = load double, double* %t, align 8, !dbg !80
  %mul = fmul double 2.000000e+00, %15, !dbg !81
  %16 = load double, double* %x.addr, align 8, !dbg !82
  %17 = load double, double* %x.addr, align 8, !dbg !83
  %mul13 = fmul double %16, %17, !dbg !84
  %add14 = fadd double %mul13, 1.000000e+00, !dbg !85
  %call15 = call double @sqrt(double %add14) #4, !dbg !86
  %18 = load double, double* %t, align 8, !dbg !87
  %add16 = fadd double %call15, %18, !dbg !88
  %div = fdiv double 1.000000e+00, %add16, !dbg !89
  %add17 = fadd double %mul, %div, !dbg !90
  %call18 = call double @__ieee754_log(double %add17), !dbg !91
  store double %call18, double* %w, align 8, !dbg !92
  br label %if.end27, !dbg !93

if.else19:                                        ; preds = %if.else
  %19 = load double, double* %x.addr, align 8, !dbg !94
  %20 = load double, double* %x.addr, align 8, !dbg !96
  %mul20 = fmul double %19, %20, !dbg !97
  store double %mul20, double* %t, align 8, !dbg !98
  %21 = load double, double* %x.addr, align 8, !dbg !99
  %22 = call double @llvm.fabs.f64(double %21), !dbg !100
  %23 = load double, double* %t, align 8, !dbg !101
  %24 = load double, double* %t, align 8, !dbg !102
  %add21 = fadd double 1.000000e+00, %24, !dbg !103
  %call22 = call double @sqrt(double %add21) #4, !dbg !104
  %add23 = fadd double 1.000000e+00, %call22, !dbg !105
  %div24 = fdiv double %23, %add23, !dbg !106
  %add25 = fadd double %22, %div24, !dbg !107
  %call26 = call double @log1p(double %add25) #4, !dbg !108
  store double %call26, double* %w, align 8, !dbg !109
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then12
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then9
  %25 = load i32, i32* %hx, align 4, !dbg !110
  %cmp29 = icmp sgt i32 %25, 0, !dbg !112
  br i1 %cmp29, label %if.then30, label %if.else31, !dbg !113

if.then30:                                        ; preds = %if.end28
  %26 = load double, double* %w, align 8, !dbg !114
  store double %26, double* %retval, align 8, !dbg !115
  br label %return, !dbg !115

if.else31:                                        ; preds = %if.end28
  %27 = load double, double* %w, align 8, !dbg !116
  %fneg = fneg double %27, !dbg !117
  store double %fneg, double* %retval, align 8, !dbg !118
  br label %return, !dbg !118

return:                                           ; preds = %if.else31, %if.then30, %if.then5, %if.then
  %28 = load double, double* %retval, align 8, !dbg !119
  ret double %28, !dbg !119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_log(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare dso_local double @log1p(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !120 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = bitcast double* %a0 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !126
  call void @llvm.dbg.declare(metadata double* %r, metadata !127, metadata !DIExpression()), !dbg !128
  %1 = load double, double* %a0, align 8, !dbg !129
  %call = call double @asinh(double %1) #4, !dbg !130
  store double %call, double* %r, align 8, !dbg !128
  ret i32 0, !dbg !131
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "s_asinh.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !12, !14}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !9, line: 34, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./s_asinh.c", directory: "/home/klee/logic_bombs/fdlibm")
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !9, line: 32, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4604418534313441775, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !9, line: 33, type: !10, isLocal: true, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!22 = distinct !DISubprogram(name: "asinh", scope: !9, file: !9, line: 37, type: !23, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !11}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !22, file: !9, line: 37, type: !11)
!26 = !DILocation(line: 37, column: 22, scope: !22)
!27 = !DILocalVariable(name: "t", scope: !22, file: !9, line: 43, type: !11)
!28 = !DILocation(line: 43, column: 9, scope: !22)
!29 = !DILocalVariable(name: "w", scope: !22, file: !9, line: 43, type: !11)
!30 = !DILocation(line: 43, column: 11, scope: !22)
!31 = !DILocalVariable(name: "hx", scope: !22, file: !9, line: 44, type: !5)
!32 = !DILocation(line: 44, column: 6, scope: !22)
!33 = !DILocalVariable(name: "ix", scope: !22, file: !9, line: 44, type: !5)
!34 = !DILocation(line: 44, column: 9, scope: !22)
!35 = !DILocation(line: 45, column: 7, scope: !22)
!36 = !DILocation(line: 45, column: 5, scope: !22)
!37 = !DILocation(line: 46, column: 7, scope: !22)
!38 = !DILocation(line: 46, column: 9, scope: !22)
!39 = !DILocation(line: 46, column: 5, scope: !22)
!40 = !DILocation(line: 47, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !22, file: !9, line: 47, column: 5)
!42 = !DILocation(line: 47, column: 7, scope: !41)
!43 = !DILocation(line: 47, column: 5, scope: !22)
!44 = !DILocation(line: 47, column: 28, scope: !41)
!45 = !DILocation(line: 47, column: 30, scope: !41)
!46 = !DILocation(line: 47, column: 29, scope: !41)
!47 = !DILocation(line: 47, column: 21, scope: !41)
!48 = !DILocation(line: 48, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !22, file: !9, line: 48, column: 5)
!50 = !DILocation(line: 48, column: 7, scope: !49)
!51 = !DILocation(line: 48, column: 5, scope: !22)
!52 = !DILocation(line: 49, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !9, line: 49, column: 9)
!54 = distinct !DILexicalBlock(scope: !49, file: !9, line: 48, column: 21)
!55 = !DILocation(line: 49, column: 13, scope: !53)
!56 = !DILocation(line: 49, column: 15, scope: !53)
!57 = !DILocation(line: 49, column: 9, scope: !54)
!58 = !DILocation(line: 49, column: 28, scope: !53)
!59 = !DILocation(line: 49, column: 21, scope: !53)
!60 = !DILocation(line: 50, column: 2, scope: !54)
!61 = !DILocation(line: 51, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !22, file: !9, line: 51, column: 5)
!63 = !DILocation(line: 51, column: 7, scope: !62)
!64 = !DILocation(line: 51, column: 5, scope: !22)
!65 = !DILocation(line: 52, column: 29, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !9, line: 51, column: 20)
!67 = !DILocation(line: 52, column: 24, scope: !66)
!68 = !DILocation(line: 52, column: 10, scope: !66)
!69 = !DILocation(line: 52, column: 32, scope: !66)
!70 = !DILocation(line: 52, column: 8, scope: !66)
!71 = !DILocation(line: 53, column: 2, scope: !66)
!72 = !DILocation(line: 53, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !9, line: 53, column: 13)
!74 = !DILocation(line: 53, column: 15, scope: !73)
!75 = !DILocation(line: 53, column: 13, scope: !62)
!76 = !DILocation(line: 54, column: 15, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !9, line: 53, column: 28)
!78 = !DILocation(line: 54, column: 10, scope: !77)
!79 = !DILocation(line: 54, column: 8, scope: !77)
!80 = !DILocation(line: 55, column: 28, scope: !77)
!81 = !DILocation(line: 55, column: 27, scope: !77)
!82 = !DILocation(line: 55, column: 40, scope: !77)
!83 = !DILocation(line: 55, column: 42, scope: !77)
!84 = !DILocation(line: 55, column: 41, scope: !77)
!85 = !DILocation(line: 55, column: 43, scope: !77)
!86 = !DILocation(line: 55, column: 35, scope: !77)
!87 = !DILocation(line: 55, column: 49, scope: !77)
!88 = !DILocation(line: 55, column: 48, scope: !77)
!89 = !DILocation(line: 55, column: 33, scope: !77)
!90 = !DILocation(line: 55, column: 29, scope: !77)
!91 = !DILocation(line: 55, column: 10, scope: !77)
!92 = !DILocation(line: 55, column: 8, scope: !77)
!93 = !DILocation(line: 56, column: 2, scope: !77)
!94 = !DILocation(line: 57, column: 10, scope: !95)
!95 = distinct !DILexicalBlock(scope: !73, file: !9, line: 56, column: 9)
!96 = !DILocation(line: 57, column: 12, scope: !95)
!97 = !DILocation(line: 57, column: 11, scope: !95)
!98 = !DILocation(line: 57, column: 8, scope: !95)
!99 = !DILocation(line: 58, column: 20, scope: !95)
!100 = !DILocation(line: 58, column: 15, scope: !95)
!101 = !DILocation(line: 58, column: 23, scope: !95)
!102 = !DILocation(line: 58, column: 39, scope: !95)
!103 = !DILocation(line: 58, column: 38, scope: !95)
!104 = !DILocation(line: 58, column: 30, scope: !95)
!105 = !DILocation(line: 58, column: 29, scope: !95)
!106 = !DILocation(line: 58, column: 24, scope: !95)
!107 = !DILocation(line: 58, column: 22, scope: !95)
!108 = !DILocation(line: 58, column: 9, scope: !95)
!109 = !DILocation(line: 58, column: 8, scope: !95)
!110 = !DILocation(line: 60, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !22, file: !9, line: 60, column: 5)
!112 = !DILocation(line: 60, column: 7, scope: !111)
!113 = !DILocation(line: 60, column: 5, scope: !22)
!114 = !DILocation(line: 60, column: 18, scope: !111)
!115 = !DILocation(line: 60, column: 11, scope: !111)
!116 = !DILocation(line: 60, column: 34, scope: !111)
!117 = !DILocation(line: 60, column: 33, scope: !111)
!118 = !DILocation(line: 60, column: 26, scope: !111)
!119 = !DILocation(line: 61, column: 1, scope: !22)
!120 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 65, type: !121, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DISubroutineType(types: !122)
!122 = !{!5}
!123 = !DILocalVariable(name: "a0", scope: !120, file: !9, line: 66, type: !11)
!124 = !DILocation(line: 66, column: 12, scope: !120)
!125 = !DILocation(line: 67, column: 24, scope: !120)
!126 = !DILocation(line: 67, column: 5, scope: !120)
!127 = !DILocalVariable(name: "r", scope: !120, file: !9, line: 69, type: !11)
!128 = !DILocation(line: 69, column: 12, scope: !120)
!129 = !DILocation(line: 69, column: 22, scope: !120)
!130 = !DILocation(line: 69, column: 16, scope: !120)
!131 = !DILocation(line: 70, column: 5, scope: !120)
