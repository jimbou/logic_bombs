; ModuleID = 'w_j1.bc'
source_filename = "./w_j1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @j1(double %x) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata double* %z, metadata !25, metadata !DIExpression()), !dbg !26
  %0 = load double, double* %x.addr, align 8, !dbg !27
  %call = call double @__ieee754_j1(double %0), !dbg !28
  store double %call, double* %z, align 8, !dbg !29
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !30
  %cmp = icmp eq i32 %1, -1, !dbg !32
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !33

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !34
  %call1 = call i32 @isnan(double %2), !dbg !35
  %tobool = icmp ne i32 %call1, 0, !dbg !35
  br i1 %tobool, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double, double* %z, align 8, !dbg !37
  store double %3, double* %retval, align 8, !dbg !38
  br label %return, !dbg !38

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %x.addr, align 8, !dbg !39
  %5 = call double @llvm.fabs.f64(double %4), !dbg !41
  %cmp2 = fcmp ogt double %5, 0x434921FB54442D18, !dbg !42
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !43

if.then3:                                         ; preds = %if.end
  %6 = load double, double* %x.addr, align 8, !dbg !44
  %7 = load double, double* %x.addr, align 8, !dbg !46
  %call4 = call double @__kernel_standard(double %6, double %7, i32 36), !dbg !47
  store double %call4, double* %retval, align 8, !dbg !48
  br label %return, !dbg !48

if.else:                                          ; preds = %if.end
  %8 = load double, double* %z, align 8, !dbg !49
  store double %8, double* %retval, align 8, !dbg !50
  br label %return, !dbg !50

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load double, double* %retval, align 8, !dbg !51
  ret double %9, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_j1(double) #2

declare dso_local i32 @isnan(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @y1(double %x) #0 !dbg !52 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata double* %z, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load double, double* %x.addr, align 8, !dbg !57
  %call = call double @__ieee754_y1(double %0), !dbg !58
  store double %call, double* %z, align 8, !dbg !59
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !60
  %cmp = icmp eq i32 %1, -1, !dbg !62
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !63

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !64
  %call1 = call i32 @isnan(double %2), !dbg !65
  %tobool = icmp ne i32 %call1, 0, !dbg !65
  br i1 %tobool, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double, double* %z, align 8, !dbg !67
  store double %3, double* %retval, align 8, !dbg !68
  br label %return, !dbg !68

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %x.addr, align 8, !dbg !69
  %cmp2 = fcmp ole double %4, 0.000000e+00, !dbg !71
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !72

if.then3:                                         ; preds = %if.end
  %5 = load double, double* %x.addr, align 8, !dbg !73
  %cmp4 = fcmp oeq double %5, 0.000000e+00, !dbg !76
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !77

if.then5:                                         ; preds = %if.then3
  %6 = load double, double* %x.addr, align 8, !dbg !78
  %7 = load double, double* %x.addr, align 8, !dbg !79
  %call6 = call double @__kernel_standard(double %6, double %7, i32 10), !dbg !80
  store double %call6, double* %retval, align 8, !dbg !81
  br label %return, !dbg !81

if.else:                                          ; preds = %if.then3
  %8 = load double, double* %x.addr, align 8, !dbg !82
  %9 = load double, double* %x.addr, align 8, !dbg !83
  %call7 = call double @__kernel_standard(double %8, double %9, i32 11), !dbg !84
  store double %call7, double* %retval, align 8, !dbg !85
  br label %return, !dbg !85

if.end8:                                          ; preds = %if.end
  %10 = load double, double* %x.addr, align 8, !dbg !86
  %cmp9 = fcmp ogt double %10, 0x434921FB54442D18, !dbg !88
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !89

if.then10:                                        ; preds = %if.end8
  %11 = load double, double* %x.addr, align 8, !dbg !90
  %12 = load double, double* %x.addr, align 8, !dbg !92
  %call11 = call double @__kernel_standard(double %11, double %12, i32 37), !dbg !93
  store double %call11, double* %retval, align 8, !dbg !94
  br label %return, !dbg !94

if.else12:                                        ; preds = %if.end8
  %13 = load double, double* %z, align 8, !dbg !95
  store double %13, double* %retval, align 8, !dbg !96
  br label %return, !dbg !96

return:                                           ; preds = %if.else12, %if.then10, %if.else, %if.then5, %if.then
  %14 = load double, double* %retval, align 8, !dbg !97
  ret double %14, !dbg !97
}

declare dso_local double @__ieee754_y1(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = bitcast double* %a0 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !104
  call void @llvm.dbg.declare(metadata double* %r, metadata !105, metadata !DIExpression()), !dbg !106
  %1 = load double, double* %a0, align 8, !dbg !107
  %call = call double @j1(double %1), !dbg !108
  store double %call, double* %r, align 8, !dbg !106
  ret i32 0, !dbg !109
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_j1.c", directory: "/home/klee/logic_bombs/fdlibm")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fdversion", file: !4, line: 48, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./fdlibm.h", directory: "/home/klee/logic_bombs/fdlibm")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "fdlibm_posix", value: 2)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)"}
!17 = distinct !DISubprogram(name: "j1", scope: !18, file: !18, line: 21, type: !19, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!18 = !DIFile(filename: "./w_j1.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 21, type: !21)
!24 = !DILocation(line: 21, column: 19, scope: !17)
!25 = !DILocalVariable(name: "z", scope: !17, file: !18, line: 30, type: !21)
!26 = !DILocation(line: 30, column: 9, scope: !17)
!27 = !DILocation(line: 31, column: 19, scope: !17)
!28 = !DILocation(line: 31, column: 6, scope: !17)
!29 = !DILocation(line: 31, column: 4, scope: !17)
!30 = !DILocation(line: 32, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !17, file: !18, line: 32, column: 5)
!32 = !DILocation(line: 32, column: 18, scope: !31)
!33 = !DILocation(line: 32, column: 28, scope: !31)
!34 = !DILocation(line: 32, column: 37, scope: !31)
!35 = !DILocation(line: 32, column: 31, scope: !31)
!36 = !DILocation(line: 32, column: 5, scope: !17)
!37 = !DILocation(line: 32, column: 49, scope: !31)
!38 = !DILocation(line: 32, column: 42, scope: !31)
!39 = !DILocation(line: 33, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !18, line: 33, column: 5)
!41 = !DILocation(line: 33, column: 5, scope: !40)
!42 = !DILocation(line: 33, column: 12, scope: !40)
!43 = !DILocation(line: 33, column: 5, scope: !17)
!44 = !DILocation(line: 34, column: 35, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !18, line: 33, column: 22)
!46 = !DILocation(line: 34, column: 37, scope: !45)
!47 = !DILocation(line: 34, column: 17, scope: !45)
!48 = !DILocation(line: 34, column: 10, scope: !45)
!49 = !DILocation(line: 36, column: 13, scope: !40)
!50 = !DILocation(line: 36, column: 6, scope: !40)
!51 = !DILocation(line: 38, column: 1, scope: !17)
!52 = distinct !DISubprogram(name: "y1", scope: !18, file: !18, line: 41, type: !19, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!53 = !DILocalVariable(name: "x", arg: 1, scope: !52, file: !18, line: 41, type: !21)
!54 = !DILocation(line: 41, column: 19, scope: !52)
!55 = !DILocalVariable(name: "z", scope: !52, file: !18, line: 50, type: !21)
!56 = !DILocation(line: 50, column: 9, scope: !52)
!57 = !DILocation(line: 51, column: 19, scope: !52)
!58 = !DILocation(line: 51, column: 6, scope: !52)
!59 = !DILocation(line: 51, column: 4, scope: !52)
!60 = !DILocation(line: 52, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !18, line: 52, column: 5)
!62 = !DILocation(line: 52, column: 18, scope: !61)
!63 = !DILocation(line: 52, column: 28, scope: !61)
!64 = !DILocation(line: 52, column: 37, scope: !61)
!65 = !DILocation(line: 52, column: 31, scope: !61)
!66 = !DILocation(line: 52, column: 5, scope: !52)
!67 = !DILocation(line: 52, column: 49, scope: !61)
!68 = !DILocation(line: 52, column: 42, scope: !61)
!69 = !DILocation(line: 53, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !52, file: !18, line: 53, column: 12)
!71 = !DILocation(line: 53, column: 14, scope: !70)
!72 = !DILocation(line: 53, column: 12, scope: !52)
!73 = !DILocation(line: 54, column: 20, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !18, line: 54, column: 20)
!75 = distinct !DILexicalBlock(scope: !70, file: !18, line: 53, column: 21)
!76 = !DILocation(line: 54, column: 21, scope: !74)
!77 = !DILocation(line: 54, column: 20, scope: !75)
!78 = !DILocation(line: 56, column: 46, scope: !74)
!79 = !DILocation(line: 56, column: 48, scope: !74)
!80 = !DILocation(line: 56, column: 28, scope: !74)
!81 = !DILocation(line: 56, column: 21, scope: !74)
!82 = !DILocation(line: 59, column: 46, scope: !74)
!83 = !DILocation(line: 59, column: 48, scope: !74)
!84 = !DILocation(line: 59, column: 28, scope: !74)
!85 = !DILocation(line: 59, column: 21, scope: !74)
!86 = !DILocation(line: 61, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !52, file: !18, line: 61, column: 5)
!88 = !DILocation(line: 61, column: 6, scope: !87)
!89 = !DILocation(line: 61, column: 5, scope: !52)
!90 = !DILocation(line: 62, column: 35, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !18, line: 61, column: 16)
!92 = !DILocation(line: 62, column: 37, scope: !91)
!93 = !DILocation(line: 62, column: 17, scope: !91)
!94 = !DILocation(line: 62, column: 10, scope: !91)
!95 = !DILocation(line: 64, column: 13, scope: !87)
!96 = !DILocation(line: 64, column: 6, scope: !87)
!97 = !DILocation(line: 66, column: 1, scope: !52)
!98 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 70, type: !99, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!99 = !DISubroutineType(types: !100)
!100 = !{!5}
!101 = !DILocalVariable(name: "a0", scope: !98, file: !18, line: 71, type: !21)
!102 = !DILocation(line: 71, column: 12, scope: !98)
!103 = !DILocation(line: 72, column: 24, scope: !98)
!104 = !DILocation(line: 72, column: 5, scope: !98)
!105 = !DILocalVariable(name: "r", scope: !98, file: !18, line: 74, type: !21)
!106 = !DILocation(line: 74, column: 12, scope: !98)
!107 = !DILocation(line: 74, column: 19, scope: !98)
!108 = !DILocation(line: 74, column: 16, scope: !98)
!109 = !DILocation(line: 75, column: 5, scope: !98)
