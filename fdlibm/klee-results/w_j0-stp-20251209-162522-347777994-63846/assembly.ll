; ModuleID = 'w_j0.bc'
source_filename = "./w_j0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fdlib_version = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"a0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @j0(double %x) #0 !dbg !17 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata double* %z, metadata !25, metadata !DIExpression()), !dbg !26
  %0 = load double, double* %x.addr, align 8, !dbg !27
  %call = call double @__ieee754_j0(double %0), !dbg !28
  store double %call, double* %z, align 8, !dbg !26
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !29
  %cmp = icmp eq i32 %1, -1, !dbg !31
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !32

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !33
  %call1 = call i32 @isnan(double %2), !dbg !34
  %tobool = icmp ne i32 %call1, 0, !dbg !34
  br i1 %tobool, label %if.then, label %if.end, !dbg !35

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double, double* %z, align 8, !dbg !36
  store double %3, double* %retval, align 8, !dbg !37
  br label %return, !dbg !37

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %x.addr, align 8, !dbg !38
  %5 = call double @llvm.fabs.f64(double %4), !dbg !40
  %cmp2 = fcmp ogt double %5, 0x434921FB54442D18, !dbg !41
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !42

if.then3:                                         ; preds = %if.end
  %6 = load double, double* %x.addr, align 8, !dbg !43
  %7 = load double, double* %x.addr, align 8, !dbg !45
  %call4 = call double @__kernel_standard(double %6, double %7, i32 34), !dbg !46
  store double %call4, double* %retval, align 8, !dbg !47
  br label %return, !dbg !47

if.else:                                          ; preds = %if.end
  %8 = load double, double* %z, align 8, !dbg !48
  store double %8, double* %retval, align 8, !dbg !49
  br label %return, !dbg !49

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load double, double* %retval, align 8, !dbg !50
  ret double %9, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local double @__ieee754_j0(double) #2

declare dso_local i32 @isnan(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @__kernel_standard(double, double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @y0(double %x) #0 !dbg !51 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata double* %z, metadata !54, metadata !DIExpression()), !dbg !55
  %0 = load double, double* %x.addr, align 8, !dbg !56
  %call = call double @__ieee754_y0(double %0), !dbg !57
  store double %call, double* %z, align 8, !dbg !58
  %1 = load i32, i32* @_fdlib_version, align 4, !dbg !59
  %cmp = icmp eq i32 %1, -1, !dbg !61
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !62

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !63
  %call1 = call i32 @isnan(double %2), !dbg !64
  %tobool = icmp ne i32 %call1, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double, double* %z, align 8, !dbg !66
  store double %3, double* %retval, align 8, !dbg !67
  br label %return, !dbg !67

if.end:                                           ; preds = %lor.lhs.false
  %4 = load double, double* %x.addr, align 8, !dbg !68
  %cmp2 = fcmp ole double %4, 0.000000e+00, !dbg !70
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !71

if.then3:                                         ; preds = %if.end
  %5 = load double, double* %x.addr, align 8, !dbg !72
  %cmp4 = fcmp oeq double %5, 0.000000e+00, !dbg !75
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !76

if.then5:                                         ; preds = %if.then3
  %6 = load double, double* %x.addr, align 8, !dbg !77
  %7 = load double, double* %x.addr, align 8, !dbg !78
  %call6 = call double @__kernel_standard(double %6, double %7, i32 8), !dbg !79
  store double %call6, double* %retval, align 8, !dbg !80
  br label %return, !dbg !80

if.else:                                          ; preds = %if.then3
  %8 = load double, double* %x.addr, align 8, !dbg !81
  %9 = load double, double* %x.addr, align 8, !dbg !82
  %call7 = call double @__kernel_standard(double %8, double %9, i32 9), !dbg !83
  store double %call7, double* %retval, align 8, !dbg !84
  br label %return, !dbg !84

if.end8:                                          ; preds = %if.end
  %10 = load double, double* %x.addr, align 8, !dbg !85
  %cmp9 = fcmp ogt double %10, 0x434921FB54442D18, !dbg !87
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !88

if.then10:                                        ; preds = %if.end8
  %11 = load double, double* %x.addr, align 8, !dbg !89
  %12 = load double, double* %x.addr, align 8, !dbg !91
  %call11 = call double @__kernel_standard(double %11, double %12, i32 35), !dbg !92
  store double %call11, double* %retval, align 8, !dbg !93
  br label %return, !dbg !93

if.else12:                                        ; preds = %if.end8
  %13 = load double, double* %z, align 8, !dbg !94
  store double %13, double* %retval, align 8, !dbg !95
  br label %return, !dbg !95

return:                                           ; preds = %if.else12, %if.then10, %if.else, %if.then5, %if.then
  %14 = load double, double* %retval, align 8, !dbg !96
  ret double %14, !dbg !96
}

declare dso_local double @__ieee754_y0(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %a0 = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata double* %a0, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = bitcast double* %a0 to i8*, !dbg !102
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !103
  call void @llvm.dbg.declare(metadata double* %r, metadata !104, metadata !DIExpression()), !dbg !105
  %1 = load double, double* %a0, align 8, !dbg !106
  %call = call double @j0(double %1), !dbg !107
  store double %call, double* %r, align 8, !dbg !105
  ret i32 0, !dbg !108
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.1 (https://github.com/llvm/llvm-project.git 75e33f71c2dae584b13a7d1186ae0a038ba98838)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "w_j0.c", directory: "/home/klee/logic_bombs/fdlibm")
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
!17 = distinct !DISubprogram(name: "j0", scope: !18, file: !18, line: 21, type: !19, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!18 = !DIFile(filename: "./w_j0.c", directory: "/home/klee/logic_bombs/fdlibm")
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !18, line: 21, type: !21)
!24 = !DILocation(line: 21, column: 19, scope: !17)
!25 = !DILocalVariable(name: "z", scope: !17, file: !18, line: 30, type: !21)
!26 = !DILocation(line: 30, column: 9, scope: !17)
!27 = !DILocation(line: 30, column: 26, scope: !17)
!28 = !DILocation(line: 30, column: 13, scope: !17)
!29 = !DILocation(line: 31, column: 5, scope: !30)
!30 = distinct !DILexicalBlock(scope: !17, file: !18, line: 31, column: 5)
!31 = !DILocation(line: 31, column: 18, scope: !30)
!32 = !DILocation(line: 31, column: 28, scope: !30)
!33 = !DILocation(line: 31, column: 37, scope: !30)
!34 = !DILocation(line: 31, column: 31, scope: !30)
!35 = !DILocation(line: 31, column: 5, scope: !17)
!36 = !DILocation(line: 31, column: 48, scope: !30)
!37 = !DILocation(line: 31, column: 41, scope: !30)
!38 = !DILocation(line: 32, column: 10, scope: !39)
!39 = distinct !DILexicalBlock(scope: !17, file: !18, line: 32, column: 5)
!40 = !DILocation(line: 32, column: 5, scope: !39)
!41 = !DILocation(line: 32, column: 12, scope: !39)
!42 = !DILocation(line: 32, column: 5, scope: !17)
!43 = !DILocation(line: 33, column: 35, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !18, line: 32, column: 22)
!45 = !DILocation(line: 33, column: 37, scope: !44)
!46 = !DILocation(line: 33, column: 17, scope: !44)
!47 = !DILocation(line: 33, column: 10, scope: !44)
!48 = !DILocation(line: 35, column: 13, scope: !39)
!49 = !DILocation(line: 35, column: 6, scope: !39)
!50 = !DILocation(line: 37, column: 1, scope: !17)
!51 = distinct !DISubprogram(name: "y0", scope: !18, file: !18, line: 40, type: !19, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!52 = !DILocalVariable(name: "x", arg: 1, scope: !51, file: !18, line: 40, type: !21)
!53 = !DILocation(line: 40, column: 19, scope: !51)
!54 = !DILocalVariable(name: "z", scope: !51, file: !18, line: 49, type: !21)
!55 = !DILocation(line: 49, column: 9, scope: !51)
!56 = !DILocation(line: 50, column: 19, scope: !51)
!57 = !DILocation(line: 50, column: 6, scope: !51)
!58 = !DILocation(line: 50, column: 4, scope: !51)
!59 = !DILocation(line: 51, column: 5, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !18, line: 51, column: 5)
!61 = !DILocation(line: 51, column: 18, scope: !60)
!62 = !DILocation(line: 51, column: 28, scope: !60)
!63 = !DILocation(line: 51, column: 37, scope: !60)
!64 = !DILocation(line: 51, column: 31, scope: !60)
!65 = !DILocation(line: 51, column: 5, scope: !51)
!66 = !DILocation(line: 51, column: 49, scope: !60)
!67 = !DILocation(line: 51, column: 42, scope: !60)
!68 = !DILocation(line: 52, column: 12, scope: !69)
!69 = distinct !DILexicalBlock(scope: !51, file: !18, line: 52, column: 12)
!70 = !DILocation(line: 52, column: 14, scope: !69)
!71 = !DILocation(line: 52, column: 12, scope: !51)
!72 = !DILocation(line: 53, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !18, line: 53, column: 20)
!74 = distinct !DILexicalBlock(scope: !69, file: !18, line: 52, column: 21)
!75 = !DILocation(line: 53, column: 21, scope: !73)
!76 = !DILocation(line: 53, column: 20, scope: !74)
!77 = !DILocation(line: 55, column: 46, scope: !73)
!78 = !DILocation(line: 55, column: 48, scope: !73)
!79 = !DILocation(line: 55, column: 28, scope: !73)
!80 = !DILocation(line: 55, column: 21, scope: !73)
!81 = !DILocation(line: 58, column: 46, scope: !73)
!82 = !DILocation(line: 58, column: 48, scope: !73)
!83 = !DILocation(line: 58, column: 28, scope: !73)
!84 = !DILocation(line: 58, column: 21, scope: !73)
!85 = !DILocation(line: 60, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !51, file: !18, line: 60, column: 5)
!87 = !DILocation(line: 60, column: 6, scope: !86)
!88 = !DILocation(line: 60, column: 5, scope: !51)
!89 = !DILocation(line: 61, column: 35, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !18, line: 60, column: 16)
!91 = !DILocation(line: 61, column: 37, scope: !90)
!92 = !DILocation(line: 61, column: 17, scope: !90)
!93 = !DILocation(line: 61, column: 10, scope: !90)
!94 = !DILocation(line: 63, column: 13, scope: !86)
!95 = !DILocation(line: 63, column: 6, scope: !86)
!96 = !DILocation(line: 65, column: 1, scope: !51)
!97 = distinct !DISubprogram(name: "main", scope: !18, file: !18, line: 69, type: !98, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!98 = !DISubroutineType(types: !99)
!99 = !{!5}
!100 = !DILocalVariable(name: "a0", scope: !97, file: !18, line: 70, type: !21)
!101 = !DILocation(line: 70, column: 12, scope: !97)
!102 = !DILocation(line: 71, column: 24, scope: !97)
!103 = !DILocation(line: 71, column: 5, scope: !97)
!104 = !DILocalVariable(name: "r", scope: !97, file: !18, line: 73, type: !21)
!105 = !DILocation(line: 73, column: 12, scope: !97)
!106 = !DILocation(line: 73, column: 19, scope: !97)
!107 = !DILocation(line: 73, column: 16, scope: !97)
!108 = !DILocation(line: 74, column: 5, scope: !97)
