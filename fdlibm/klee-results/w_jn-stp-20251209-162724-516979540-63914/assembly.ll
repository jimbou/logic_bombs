; ModuleID = 'w_jn.bc'
source_filename = "./w_jn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @jn(i32 %n, double %x) #0 !dbg !19 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata double* %z, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i32, i32* %n.addr, align 4, !dbg !30
  %1 = load double, double* %x.addr, align 8, !dbg !31
  %call = call double @__ieee754_jn(i32 %0, double %1), !dbg !32
  store double %call, double* %z, align 8, !dbg !33
  %2 = load i32, i32* @_fdlib_version, align 4, !dbg !34
  %cmp = icmp eq i32 %2, -1, !dbg !36
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !37

lor.lhs.false:                                    ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !38
  %call1 = call i32 @isnan(double %3), !dbg !39
  %tobool = icmp ne i32 %call1, 0, !dbg !39
  br i1 %tobool, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load double, double* %z, align 8, !dbg !41
  store double %4, double* %retval, align 8, !dbg !42
  br label %return, !dbg !42

if.end:                                           ; preds = %lor.lhs.false
  %5 = load double, double* %x.addr, align 8, !dbg !43
  %6 = call double @llvm.fabs.f64(double %5), !dbg !45
  %cmp2 = fcmp ogt double %6, 0x434921FB54442D18, !dbg !46
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !47

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %n.addr, align 4, !dbg !48
  %conv = sitofp i32 %7 to double, !dbg !50
  %8 = load double, double* %x.addr, align 8, !dbg !51
  %call4 = call double @__kernel_standard(double %conv, double %8, i32 38), !dbg !52
  store double %call4, double* %retval, align 8, !dbg !53
  br label %return, !dbg !53

if.else:                                          ; preds = %if.end
  %9 = load double, double* %z, align 8, !dbg !54
  store double %9, double* %retval, align 8, !dbg !55
  br label %return, !dbg !55

return:                                           ; preds = %if.else, %if.then3, %if.then
  %10 = load double, double* %retval, align 8, !dbg !56
  ret double %10, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_jn(i32, double) #2

declare dso_local i32 @isnan(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @yn(i32 %n, double %x) #0 !dbg !57 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !58, metadata !DIExpression()), !dbg !59
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata double* %z, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i32, i32* %n.addr, align 4, !dbg !64
  %1 = load double, double* %x.addr, align 8, !dbg !65
  %call = call double @__ieee754_yn(i32 %0, double %1), !dbg !66
  store double %call, double* %z, align 8, !dbg !67
  %2 = load i32, i32* @_fdlib_version, align 4, !dbg !68
  %cmp = icmp eq i32 %2, -1, !dbg !70
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !71

lor.lhs.false:                                    ; preds = %entry
  %3 = load double, double* %x.addr, align 8, !dbg !72
  %call1 = call i32 @isnan(double %3), !dbg !73
  %tobool = icmp ne i32 %call1, 0, !dbg !73
  br i1 %tobool, label %if.then, label %if.end, !dbg !74

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load double, double* %z, align 8, !dbg !75
  store double %4, double* %retval, align 8, !dbg !76
  br label %return, !dbg !76

if.end:                                           ; preds = %lor.lhs.false
  %5 = load double, double* %x.addr, align 8, !dbg !77
  %cmp2 = fcmp ole double %5, 0.000000e+00, !dbg !79
  br i1 %cmp2, label %if.then3, label %if.end9, !dbg !80

if.then3:                                         ; preds = %if.end
  %6 = load double, double* %x.addr, align 8, !dbg !81
  %cmp4 = fcmp oeq double %6, 0.000000e+00, !dbg !84
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !85

if.then5:                                         ; preds = %if.then3
  %7 = load i32, i32* %n.addr, align 4, !dbg !86
  %conv = sitofp i32 %7 to double, !dbg !87
  %8 = load double, double* %x.addr, align 8, !dbg !88
  %call6 = call double @__kernel_standard(double %conv, double %8, i32 12), !dbg !89
  store double %call6, double* %retval, align 8, !dbg !90
  br label %return, !dbg !90

if.else:                                          ; preds = %if.then3
  %9 = load i32, i32* %n.addr, align 4, !dbg !91
  %conv7 = sitofp i32 %9 to double, !dbg !92
  %10 = load double, double* %x.addr, align 8, !dbg !93
  %call8 = call double @__kernel_standard(double %conv7, double %10, i32 13), !dbg !94
  store double %call8, double* %retval, align 8, !dbg !95
  br label %return, !dbg !95

if.end9:                                          ; preds = %if.end
  %11 = load double, double* %x.addr, align 8, !dbg !96
  %cmp10 = fcmp ogt double %11, 0x434921FB54442D18, !dbg !98
  br i1 %cmp10, label %if.then12, label %if.else15, !dbg !99

if.then12:                                        ; preds = %if.end9
  %12 = load i32, i32* %n.addr, align 4, !dbg !100
  %conv13 = sitofp i32 %12 to double, !dbg !102
  %13 = load double, double* %x.addr, align 8, !dbg !103
  %call14 = call double @__kernel_standard(double %conv13, double %13, i32 39), !dbg !104
  store double %call14, double* %retval, align 8, !dbg !105
  br label %return, !dbg !105

if.else15:                                        ; preds = %if.end9
  %14 = load double, double* %z, align 8, !dbg !106
  store double %14, double* %retval, align 8, !dbg !107
  br label %return, !dbg !107

return:                                           ; preds = %if.else15, %if.then12, %if.else, %if.then5, %if.then
  %15 = load double, double* %retval, align 8, !dbg !108
  ret double %15, !dbg !108
}

declare dso_local double @__ieee754_yn(i32, double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca i32, align 4
  %a1 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a0, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = bitcast i32* %a0 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !115
  call void @llvm.dbg.declare(metadata double* %a1, metadata !116, metadata !DIExpression()), !dbg !117
  %1 = bitcast double* %a1 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* %1, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !119
  call void @llvm.dbg.declare(metadata double* %r, metadata !120, metadata !DIExpression()), !dbg !121
  %2 = load i32, i32* %a0, align 4, !dbg !122
  %3 = load double, double* %a1, align 8, !dbg !123
  %call = call double @jn(i32 %2, double %3), !dbg !124
  store double %call, double* %r, align 8, !dbg !121
  ret i32 0, !dbg !125
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_jn.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fdversion", file: !4, line: 48, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./fdlibm.h", directory: "/home/klee/logic_bombs/fdlibm")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "fdlibm_posix", value: 2)
!11 = !{!12}
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!19 = distinct !DISubprogram(name: "jn", scope: !20, file: !20, line: 43, type: !21, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!20 = !DIFile(filename: "./w_jn.c", directory: "/home/klee/logic_bombs/fdlibm")
!21 = !DISubroutineType(types: !22)
!22 = !{!12, !5, !12}
!23 = !{}
!24 = !DILocalVariable(name: "n", arg: 1, scope: !19, file: !20, line: 43, type: !5)
!25 = !DILocation(line: 43, column: 16, scope: !19)
!26 = !DILocalVariable(name: "x", arg: 2, scope: !19, file: !20, line: 43, type: !12)
!27 = !DILocation(line: 43, column: 26, scope: !19)
!28 = !DILocalVariable(name: "z", scope: !19, file: !20, line: 52, type: !12)
!29 = !DILocation(line: 52, column: 9, scope: !19)
!30 = !DILocation(line: 53, column: 19, scope: !19)
!31 = !DILocation(line: 53, column: 21, scope: !19)
!32 = !DILocation(line: 53, column: 6, scope: !19)
!33 = !DILocation(line: 53, column: 4, scope: !19)
!34 = !DILocation(line: 54, column: 5, scope: !35)
!35 = distinct !DILexicalBlock(scope: !19, file: !20, line: 54, column: 5)
!36 = !DILocation(line: 54, column: 18, scope: !35)
!37 = !DILocation(line: 54, column: 28, scope: !35)
!38 = !DILocation(line: 54, column: 37, scope: !35)
!39 = !DILocation(line: 54, column: 31, scope: !35)
!40 = !DILocation(line: 54, column: 5, scope: !19)
!41 = !DILocation(line: 54, column: 49, scope: !35)
!42 = !DILocation(line: 54, column: 42, scope: !35)
!43 = !DILocation(line: 55, column: 10, scope: !44)
!44 = distinct !DILexicalBlock(scope: !19, file: !20, line: 55, column: 5)
!45 = !DILocation(line: 55, column: 5, scope: !44)
!46 = !DILocation(line: 55, column: 12, scope: !44)
!47 = !DILocation(line: 55, column: 5, scope: !19)
!48 = !DILocation(line: 56, column: 39, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !20, line: 55, column: 22)
!50 = !DILocation(line: 56, column: 31, scope: !49)
!51 = !DILocation(line: 56, column: 41, scope: !49)
!52 = !DILocation(line: 56, column: 13, scope: !49)
!53 = !DILocation(line: 56, column: 6, scope: !49)
!54 = !DILocation(line: 58, column: 13, scope: !44)
!55 = !DILocation(line: 58, column: 6, scope: !44)
!56 = !DILocation(line: 60, column: 1, scope: !19)
!57 = distinct !DISubprogram(name: "yn", scope: !20, file: !20, line: 63, type: !21, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!58 = !DILocalVariable(name: "n", arg: 1, scope: !57, file: !20, line: 63, type: !5)
!59 = !DILocation(line: 63, column: 16, scope: !57)
!60 = !DILocalVariable(name: "x", arg: 2, scope: !57, file: !20, line: 63, type: !12)
!61 = !DILocation(line: 63, column: 26, scope: !57)
!62 = !DILocalVariable(name: "z", scope: !57, file: !20, line: 72, type: !12)
!63 = !DILocation(line: 72, column: 9, scope: !57)
!64 = !DILocation(line: 73, column: 19, scope: !57)
!65 = !DILocation(line: 73, column: 21, scope: !57)
!66 = !DILocation(line: 73, column: 6, scope: !57)
!67 = !DILocation(line: 73, column: 4, scope: !57)
!68 = !DILocation(line: 74, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !57, file: !20, line: 74, column: 5)
!70 = !DILocation(line: 74, column: 18, scope: !69)
!71 = !DILocation(line: 74, column: 28, scope: !69)
!72 = !DILocation(line: 74, column: 37, scope: !69)
!73 = !DILocation(line: 74, column: 31, scope: !69)
!74 = !DILocation(line: 74, column: 5, scope: !57)
!75 = !DILocation(line: 74, column: 49, scope: !69)
!76 = !DILocation(line: 74, column: 42, scope: !69)
!77 = !DILocation(line: 75, column: 12, scope: !78)
!78 = distinct !DILexicalBlock(scope: !57, file: !20, line: 75, column: 12)
!79 = !DILocation(line: 75, column: 14, scope: !78)
!80 = !DILocation(line: 75, column: 12, scope: !57)
!81 = !DILocation(line: 76, column: 20, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !20, line: 76, column: 20)
!83 = distinct !DILexicalBlock(scope: !78, file: !20, line: 75, column: 21)
!84 = !DILocation(line: 76, column: 21, scope: !82)
!85 = !DILocation(line: 76, column: 20, scope: !83)
!86 = !DILocation(line: 78, column: 54, scope: !82)
!87 = !DILocation(line: 78, column: 46, scope: !82)
!88 = !DILocation(line: 78, column: 56, scope: !82)
!89 = !DILocation(line: 78, column: 28, scope: !82)
!90 = !DILocation(line: 78, column: 21, scope: !82)
!91 = !DILocation(line: 81, column: 54, scope: !82)
!92 = !DILocation(line: 81, column: 46, scope: !82)
!93 = !DILocation(line: 81, column: 56, scope: !82)
!94 = !DILocation(line: 81, column: 28, scope: !82)
!95 = !DILocation(line: 81, column: 21, scope: !82)
!96 = !DILocation(line: 83, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !57, file: !20, line: 83, column: 5)
!98 = !DILocation(line: 83, column: 6, scope: !97)
!99 = !DILocation(line: 83, column: 5, scope: !57)
!100 = !DILocation(line: 84, column: 39, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !20, line: 83, column: 16)
!102 = !DILocation(line: 84, column: 31, scope: !101)
!103 = !DILocation(line: 84, column: 41, scope: !101)
!104 = !DILocation(line: 84, column: 13, scope: !101)
!105 = !DILocation(line: 84, column: 6, scope: !101)
!106 = !DILocation(line: 86, column: 13, scope: !97)
!107 = !DILocation(line: 86, column: 6, scope: !97)
!108 = !DILocation(line: 88, column: 1, scope: !57)
!109 = distinct !DISubprogram(name: "main", scope: !20, file: !20, line: 92, type: !110, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!110 = !DISubroutineType(types: !111)
!111 = !{!5}
!112 = !DILocalVariable(name: "a0", scope: !109, file: !20, line: 93, type: !5)
!113 = !DILocation(line: 93, column: 9, scope: !109)
!114 = !DILocation(line: 94, column: 24, scope: !109)
!115 = !DILocation(line: 94, column: 5, scope: !109)
!116 = !DILocalVariable(name: "a1", scope: !109, file: !20, line: 95, type: !12)
!117 = !DILocation(line: 95, column: 12, scope: !109)
!118 = !DILocation(line: 96, column: 24, scope: !109)
!119 = !DILocation(line: 96, column: 5, scope: !109)
!120 = !DILocalVariable(name: "r", scope: !109, file: !20, line: 98, type: !12)
!121 = !DILocation(line: 98, column: 12, scope: !109)
!122 = !DILocation(line: 98, column: 19, scope: !109)
!123 = !DILocation(line: 98, column: 23, scope: !109)
!124 = !DILocation(line: 98, column: 16, scope: !109)
!125 = !DILocation(line: 99, column: 5, scope: !109)
